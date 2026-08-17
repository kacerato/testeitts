from __future__ import annotations

import os
import re
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent
WORK = ROOT / "work"
APKTOOL_BASE = ROOT / "extracted" / "apktool_base"
MANIFEST_PATH = APKTOOL_BASE / "AndroidManifest.xml"
APKTOOL_JAR = ROOT / "tools" / "apktool.jar"
KEYSTORE = ROOT / "tools" / "debug.keystore"
FIX_INTERACTION_SMALI = WORK / "fix_interaction_smali_aliases.py"
VERIFY_INTERACTION_ABI = WORK / "verify_interaction_smali_abi.py"
ABI_REPORT = ROOT / "interaction-abi-report.txt"

UNSIGNED_APK = ROOT / "ITsMagic_unsigned.apk"
ALIGNED_APK = ROOT / "ITsMagic_aligned.apk"


def find_android_sdk() -> Path:
    candidates = [
        os.environ.get("ANDROID_SDK_ROOT"),
        os.environ.get("ANDROID_HOME"),
        str(Path.home() / "AppData" / "Local" / "Android" / "Sdk"),
        str(Path.home() / "Android" / "Sdk"),
    ]
    for value in candidates:
        if value and Path(value).is_dir():
            return Path(value)
    raise RuntimeError(
        "Android SDK not found. Set ANDROID_SDK_ROOT or ANDROID_HOME before running this script."
    )


def version_key(path: Path):
    parts = []
    for item in re.split(r"[._-]", path.name):
        parts.append(int(item) if item.isdigit() else item)
    return parts


def find_build_tools(sdk: Path) -> Path:
    root = sdk / "build-tools"
    if not root.is_dir():
        raise RuntimeError(f"Android build-tools directory not found: {root}")
    versions = sorted((p for p in root.iterdir() if p.is_dir()), key=version_key, reverse=True)
    for version in versions:
        zipalign = version / ("zipalign.exe" if os.name == "nt" else "zipalign")
        apksigner = version / ("apksigner.bat" if os.name == "nt" else "apksigner")
        if zipalign.exists() and apksigner.exists():
            return version
    raise RuntimeError(f"No usable Android build-tools found under {root}")


def run_checked(cmd, label: str, capture: bool = True):
    print(f"\n== {label} ==")
    printable = " ".join(str(x) for x in cmd)
    print(printable)
    result = subprocess.run(
        [str(x) for x in cmd],
        capture_output=capture,
        text=True,
    )
    if capture:
        if result.stdout:
            print(result.stdout)
        if result.stderr:
            print(result.stderr, file=sys.stderr)
    if result.returncode != 0:
        raise RuntimeError(f"{label} failed with exit code {result.returncode}")
    return result


def main() -> int:
    sdk = find_android_sdk()
    build_tools = find_build_tools(sdk)
    zipalign = build_tools / ("zipalign.exe" if os.name == "nt" else "zipalign")
    apksigner = build_tools / ("apksigner.bat" if os.name == "nt" else "apksigner")
    adb = sdk / "platform-tools" / ("adb.exe" if os.name == "nt" else "adb")

    required = [
        APKTOOL_BASE,
        MANIFEST_PATH,
        APKTOOL_JAR,
        KEYSTORE,
        FIX_INTERACTION_SMALI,
        VERIFY_INTERACTION_ABI,
    ]
    missing = [str(path) for path in required if not path.exists()]
    if missing:
        raise RuntimeError("Required build input(s) missing:\n  - " + "\n  - ".join(missing))

    print("[1/8] Normalizing JADX aliases and stub ABI descriptors in Interaction smali...")
    run_checked(
        [sys.executable, FIX_INTERACTION_SMALI, APKTOOL_BASE / "smali_classes10"],
        "Interaction smali normalization",
    )

    print("[2/8] Verifying Interaction calls against the real APK DEX ABI...")
    run_checked(
        [sys.executable, VERIFY_INTERACTION_ABI, APKTOOL_BASE, "--report", ABI_REPORT],
        "Interaction smali ABI verification",
    )

    print('[3/8] Setting android:extractNativeLibs="true" in AndroidManifest.xml...')
    content = MANIFEST_PATH.read_text(encoding="utf-8")
    content = re.sub(
        r'android:extractNativeLibs="false"',
        'android:extractNativeLibs="true"',
        content,
    )
    MANIFEST_PATH.write_text(content, encoding="utf-8")

    print("[4/8] Building APK with Apktool...")
    if UNSIGNED_APK.exists():
        UNSIGNED_APK.unlink()
    run_checked(
        ["java", "-jar", APKTOOL_JAR, "b", APKTOOL_BASE, "-o", UNSIGNED_APK],
        "Apktool build",
    )

    print("[5/8] Zipaligning APK...")
    if ALIGNED_APK.exists():
        ALIGNED_APK.unlink()
    run_checked(
        [zipalign, "-p", "-f", "4", UNSIGNED_APK, ALIGNED_APK],
        "zipalign",
    )

    print("[6/8] Signing APK with debug keystore...")
    run_checked(
        [
            apksigner,
            "sign",
            "--ks",
            KEYSTORE,
            "--ks-pass",
            "pass:android",
            "--key-pass",
            "pass:android",
            "--ks-key-alias",
            "androiddebugkey",
            ALIGNED_APK,
        ],
        "apksigner sign",
    )

    print("[7/8] Verifying APK signature...")
    verify = run_checked([apksigner, "verify", "--verbose", ALIGNED_APK], "apksigner verify")
    if "Verified" not in verify.stdout and "Verifies" not in verify.stdout:
        print("Warning: apksigner returned success but no textual verification marker was found.")

    print("[8/8] Optional ADB install...")
    if adb.exists():
        devices = subprocess.run([str(adb), "devices"], capture_output=True, text=True)
        connected = []
        for line in devices.stdout.splitlines()[1:]:
            cols = line.split()
            if len(cols) >= 2 and cols[1] == "device":
                connected.append(cols[0])
        if connected:
            run_checked([adb, "install", "-r", "-t", "-d", ALIGNED_APK], "ADB install")
        else:
            print("No authorized Android device connected; APK generation is still successful.")
    else:
        print("adb not found; skipping install.")

    print("\nPIPELINE EXECUTION COMPLETED!")
    print(f"ABI report: {ABI_REPORT}")
    print(f"APK: {ALIGNED_APK}")
    return 0


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except Exception as exc:
        print(f"BUILD FAILED: {exc}", file=sys.stderr)
        raise SystemExit(1)
