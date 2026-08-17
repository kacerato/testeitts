#!/usr/bin/env python3
"""Normalize JADX/decompiler aliases emitted by javac+d8 back to real DEX names.

The Java sources in this repository were produced by JADX. Some identifiers are aliases
created only for decompiled Java readability (for example fb.AbstractC13203c and
Component.f79250n). Those aliases do not exist in the original APK runtime, whose real
DEX names are fb/c and field n.

Interaction Java is compiled through temporary stubs, so the generated smali must be
normalized before it is copied/rebuilt into the APK.
"""

from __future__ import annotations

import re
import sys
from pathlib import Path

# Explicit class aliases that are known to be JADX names, verified against the original
# smali shipped in extracted/apktool_base.
CLASS_ALIASES = {
    "Lfb/AbstractC13203c;": "Lfb/c;",
    "Lfb/C13201a;": "Lfb/a;",
    "Lgb/C13317e;": "Lgb/e;",
    "Lga/EnumC13304B;": "Lga/B;",
}

# JADX renames colliding/obfuscated members as f<id><original> and mo<id><original>.
# Examples from this project:
#   f79250n  -> n
#   f79294k  -> k
#   f79321B  -> B
#   f81611x  -> x
#   mo1248clone -> clone
FIELD_REF_RE = re.compile(r"->f\d+([A-Za-z_$][A-Za-z0-9_$]*)(?=:)")
METHOD_REF_RE = re.compile(r"->mo\d+([A-Za-z_$][A-Za-z0-9_$]*)(?=\()")
METHOD_DECL_RE = re.compile(
    r"^(\s*\.method\b[^\n]*?\s)mo\d+([A-Za-z_$][A-Za-z0-9_$]*)(?=\()",
    re.MULTILINE,
)

# These must never survive in Interaction smali after normalization.
FORBIDDEN_CLASS_ALIASES = tuple(CLASS_ALIASES.keys())


def is_interaction_smali(path: Path) -> bool:
    if path.suffix != ".smali":
        return False
    # Covers both:
    #   .../NoCode/Interaction/...
    #   .../NoCode/Nodes/.../Interaction/...
    return "Interaction" in path.parts


def normalize_text(text: str) -> tuple[str, int]:
    changes = 0

    for old, new in CLASS_ALIASES.items():
        count = text.count(old)
        if count:
            text = text.replace(old, new)
            changes += count

    text, count = FIELD_REF_RE.subn(r"->\1", text)
    changes += count

    text, count = METHOD_REF_RE.subn(r"->\1", text)
    changes += count

    def rename_method_decl(match: re.Match[str]) -> str:
        return match.group(1) + match.group(2)

    text, count = METHOD_DECL_RE.subn(rename_method_decl, text)
    changes += count

    return text, changes


def validate_text(path: Path, text: str) -> list[str]:
    errors: list[str] = []
    for alias in FORBIDDEN_CLASS_ALIASES:
        if alias in text:
            errors.append(f"{path}: unresolved class alias {alias}")

    # Any remaining JADX member aliases in generated Interaction code are dangerous:
    # they normally point to members that do not exist in the original DEX.
    if re.search(r"->f\d+[A-Za-z_$][A-Za-z0-9_$]*:", text):
        errors.append(f"{path}: unresolved JADX field alias")
    if re.search(r"->mo\d+[A-Za-z_$][A-Za-z0-9_$]*\(", text):
        errors.append(f"{path}: unresolved JADX method alias")
    if re.search(r"^\s*\.method\b[^\n]*\smo\d+[A-Za-z_$][A-Za-z0-9_$]*\(", text, re.MULTILINE):
        errors.append(f"{path}: unresolved JADX method declaration alias")

    return errors


def main() -> int:
    if len(sys.argv) > 2:
        print("usage: fix_interaction_smali_aliases.py [smali-root]", file=sys.stderr)
        return 2

    if len(sys.argv) == 2:
        root = Path(sys.argv[1]).resolve()
    else:
        repo_root = Path(__file__).resolve().parent.parent
        root = repo_root / "extracted" / "apktool_base" / "smali_classes10"

    if not root.is_dir():
        print(f"smali root not found: {root}", file=sys.stderr)
        return 2

    scanned = 0
    changed_files = 0
    total_changes = 0
    validation_errors: list[str] = []

    for path in sorted(root.rglob("*.smali")):
        if not is_interaction_smali(path):
            continue

        scanned += 1
        original = path.read_text(encoding="utf-8")
        normalized, changes = normalize_text(original)

        if normalized != original:
            path.write_text(normalized, encoding="utf-8")
            changed_files += 1
            total_changes += changes

        validation_errors.extend(validate_text(path, normalized))

    print(
        f"Interaction smali normalization: scanned={scanned}, "
        f"changed_files={changed_files}, replacements={total_changes}"
    )

    if scanned == 0:
        print("ERROR: no Interaction smali files were found", file=sys.stderr)
        return 1

    if validation_errors:
        print("ERROR: unresolved JADX aliases remain:", file=sys.stderr)
        for error in validation_errors[:100]:
            print(f"  - {error}", file=sys.stderr)
        if len(validation_errors) > 100:
            print(f"  ... and {len(validation_errors) - 100} more", file=sys.stderr)
        return 1

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
