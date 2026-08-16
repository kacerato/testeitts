import os, subprocess, re

SDK_BUILD_TOOLS = r"C:\Users\donod\AppData\Local\Android\Sdk\build-tools\36.1.0"
ZIPALIGN = os.path.join(SDK_BUILD_TOOLS, "zipalign.exe")
APKSIGNER = os.path.join(SDK_BUILD_TOOLS, "apksigner.bat")
ADB = r"C:\Users\donod\AppData\Local\Android\Sdk\platform-tools\adb.exe"

APKTOOL_JAR = r"C:\Users\donod\Downloads\itsmaagic\tools\apktool.jar"
KEYSTORE = r"C:\Users\donod\Downloads\itsmaagic\tools\debug.keystore"
APKTOOL_BASE = r"C:\Users\donod\Downloads\itsmaagic\extracted\apktool_base"
MANIFEST_PATH = os.path.join(APKTOOL_BASE, "AndroidManifest.xml")

UNSIGNED_APK = r"C:\Users\donod\Downloads\itsmaagic\ITsMagic_unsigned.apk"
ALIGNED_APK = r"C:\Users\donod\Downloads\itsmaagic\ITsMagic_aligned.apk"

print("[1/5] Setting android:extractNativeLibs=\"true\" in AndroidManifest.xml...")
with open(MANIFEST_PATH, "r", encoding="utf-8") as f:
    content = f.read()

content = re.sub(r'android:extractNativeLibs="false"', 'android:extractNativeLibs="true"', content)

with open(MANIFEST_PATH, "w", encoding="utf-8") as f:
    f.write(content)

print("[2/5] Building APK with Apktool...")
if os.path.exists(UNSIGNED_APK):
    os.remove(UNSIGNED_APK)
res_build = subprocess.run(["java", "-jar", APKTOOL_JAR, "b", APKTOOL_BASE, "-o", UNSIGNED_APK], capture_output=True, text=True)
print("Apktool exit:", res_build.returncode)
if res_build.returncode != 0:
    print("Apktool error:", res_build.stderr)
    exit(1)

print(f"[3/5] Zipaligning APK (4-byte alignment with page-alignment for .so)...")
if os.path.exists(ALIGNED_APK):
    os.remove(ALIGNED_APK)
res_align = subprocess.run([ZIPALIGN, "-p", "-f", "4", UNSIGNED_APK, ALIGNED_APK], capture_output=True, text=True)
print("Zipalign exit:", res_align.returncode)
if res_align.returncode != 0:
    print("Zipalign error:", res_align.stderr)
    exit(1)

print("[4/5] Signing APK with apksigner (v2, v3, v4 signatures)...")
cmd_sign = [
    APKSIGNER, "sign",
    "--ks", KEYSTORE,
    "--ks-pass", "pass:android",
    "--key-pass", "pass:android",
    "--ks-key-alias", "androiddebugkey",
    ALIGNED_APK
]
res_sign = subprocess.run(cmd_sign, capture_output=True, text=True)
print("Apksigner exit:", res_sign.returncode)
if res_sign.returncode != 0:
    print("Apksigner error:", res_sign.stderr)
    exit(1)

# Verify apksigner
res_verify = subprocess.run([APKSIGNER, "verify", "--verbose", ALIGNED_APK], capture_output=True, text=True)
print("Apksigner verify output:\n", res_verify.stdout[:300])

print(f"[5/5] Installing via ADB to connected device...")
res_install = subprocess.run([ADB, "install", "-r", "-t", "-d", ALIGNED_APK], capture_output=True, text=True)
print("ADB install output:\n", res_install.stdout)
if res_install.stderr:
    print("ADB stderr:\n", res_install.stderr)

print("PIPELINE EXECUTION COMPLETED!")
