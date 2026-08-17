#!/usr/bin/env python3
"""Normalize JADX aliases and javac-stub ABI mismatches in Interaction smali.

The Interaction Java sources are compiled against temporary stubs because the project is
reconstructed from a decompiled APK. JADX aliases and inaccurate stub return types can
therefore produce bytecode descriptors that do not exist in the real engine at runtime.
This pass rewrites only ABI mappings verified against the original engine sources/smali.
"""

from __future__ import annotations

import re
import sys
from pathlib import Path

# Explicit class aliases verified against the original APK smali.
CLASS_ALIASES = {
    "Lfb/AbstractC13203c;": "Lfb/c;",
    "Lfb/C13201a;": "Lfb/a;",
    "Lgb/C13317e;": "Lgb/e;",
    "Lga/EnumC13304B;": "Lga/B;",
}

# The JADX stub declared b(AbstractC13203c), but the real registry accepts fb/b.
COMPONENT_REGISTRY_CALL = (
    "Lfb/C13201a;->b(Lfb/AbstractC13203c;)V",
    "Lfb/a;->b(Lfb/b;)V",
)

VECTOR3 = "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;"
VECTOR3F = "Lcom/jme3/math/Vector3f;"
TRANSFORM = "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;"

# Exact descriptor corrections verified against the decompiled engine implementation.
# These are needed even when callers ignore the return value: return type is part of a
# Dalvik/ART method descriptor, so (FFF)V and (FFF)LVector3; are different methods.
METHOD_DESCRIPTOR_ALIASES = {
    f"{VECTOR3}->set(FFF)V": f"{VECTOR3}->set(FFF){VECTOR3}",
    f"{VECTOR3}->set({VECTOR3})V": f"{VECTOR3}->set({VECTOR3}){VECTOR3}",
    f"{VECTOR3}->setX(F)V": f"{VECTOR3}->setX(F)F",
    f"{VECTOR3}->setY(F)V": f"{VECTOR3}->setY(F)F",
    f"{VECTOR3}->setZ(F)V": f"{VECTOR3}->setZ(F)F",
    f"{VECTOR3F}->set(FFF)V": f"{VECTOR3F}->set(FFF){VECTOR3F}",
    f"{TRANSFORM}->K0({VECTOR3})V": f"{TRANSFORM}->K0({VECTOR3}){VECTOR3}",
}

# JADX renames colliding/obfuscated members as f<id><original> and mo<id><original>.
FIELD_REF_RE = re.compile(r"->f\d+([A-Za-z_$][A-Za-z0-9_$]*)(?=:)")
METHOD_REF_RE = re.compile(r"->mo\d+([A-Za-z_$][A-Za-z0-9_$]*)(?=\()")
METHOD_DECL_RE = re.compile(
    r"^(\s*\.method\b[^\n]*?\s)mo\d+([A-Za-z_$][A-Za-z0-9_$]*)(?=\()",
    re.MULTILINE,
)

FORBIDDEN_CLASS_ALIASES = tuple(CLASS_ALIASES.keys())
FORBIDDEN_METHOD_DESCRIPTORS = tuple(METHOD_DESCRIPTOR_ALIASES.keys())


def is_interaction_smali(path: Path) -> bool:
    if path.suffix != ".smali":
        return False
    return "Interaction" in path.parts


def normalize_text(text: str) -> tuple[str, int]:
    changes = 0

    old_call, new_call = COMPONENT_REGISTRY_CALL
    count = text.count(old_call)
    if count:
        text = text.replace(old_call, new_call)
        changes += count

    # Do exact descriptor rewrites before generic class/member alias rewrites.
    for old, new in METHOD_DESCRIPTOR_ALIASES.items():
        count = text.count(old)
        if count:
            text = text.replace(old, new)
            changes += count

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

    if COMPONENT_REGISTRY_CALL[0] in text:
        errors.append(f"{path}: unresolved component registry call descriptor")

    for descriptor in FORBIDDEN_METHOD_DESCRIPTORS:
        if descriptor in text:
            errors.append(f"{path}: unresolved stub ABI descriptor {descriptor}")

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
        print("ERROR: unresolved JADX/stub ABI aliases remain:", file=sys.stderr)
        for error in validation_errors[:100]:
            print(f"  - {error}", file=sys.stderr)
        if len(validation_errors) > 100:
            print(f"  ... and {len(validation_errors) - 100} more", file=sys.stderr)
        return 1

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
