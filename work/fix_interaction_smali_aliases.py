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

CLASS_ALIASES = {
    "Lfb/AbstractC13203c;": "Lfb/c;",
    "Lfb/C13201a;": "Lfb/a;",
    "Lgb/C13317e;": "Lgb/e;",
    "Lga/EnumC13304B;": "Lga/B;",
}

COMPONENT_REGISTRY_CALL = (
    "Lfb/C13201a;->b(Lfb/AbstractC13203c;)V",
    "Lfb/a;->b(Lfb/b;)V",
)

VECTOR3 = "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;"
VECTOR_I = "Lcom/itsmagic/engine/Engines/Engine/Vector/i;"
VECTOR3F = "Lcom/jme3/math/Vector3f;"
TRANSFORM = "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;"
DOOR_SERVICE = "Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService;"
DOOR_SESSION = "Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorSession;"
DOOR_MODE = "Lcom/itsmagic/engine/Engines/Engine/NoCode/Interaction/Runtime/DoorService$DoorMode;"
GAME_OBJECT = "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject;"

# Return type is part of a Dalvik/ART method descriptor. Calls may ignore a non-void
# result, but they still must reference the real return descriptor.
METHOD_DESCRIPTOR_ALIASES = {
    f"{VECTOR3}->set(FFF)V": f"{VECTOR3}->set(FFF){VECTOR3}",
    f"{VECTOR3}->set({VECTOR3})V": f"{VECTOR3}->set({VECTOR3}){VECTOR3}",
    f"{VECTOR3}->setX(F)V": f"{VECTOR3}->setX(F)F",
    f"{VECTOR3}->setY(F)V": f"{VECTOR3}->setY(F)F",
    f"{VECTOR3}->setZ(F)V": f"{VECTOR3}->setZ(F)F",
    # Vector/i overrides setX/Y/Z and inherits set(...); javac resolves calls using i as
    # the owner in several generated Interaction classes.
    f"{VECTOR_I}->setX(F)V": f"{VECTOR_I}->setX(F)F",
    f"{VECTOR_I}->setY(F)V": f"{VECTOR_I}->setY(F)F",
    f"{VECTOR_I}->setZ(F)V": f"{VECTOR_I}->setZ(F)F",
    f"{VECTOR_I}->set(FFF)V": f"{VECTOR_I}->set(FFF){VECTOR3}",
    f"{VECTOR_I}->set({VECTOR3})V": f"{VECTOR_I}->set({VECTOR3}){VECTOR3}",
    f"{VECTOR3F}->set(FFF)V": f"{VECTOR3F}->set(FFF){VECTOR3F}",
    f"{TRANSFORM}->K0({VECTOR3})V": f"{TRANSFORM}->K0({VECTOR3}){VECTOR3}",
}

FIELD_REF_RE = re.compile(r"->f\d+([A-Za-z_$][A-Za-z0-9_$]*)(?=:)")
METHOD_REF_RE = re.compile(r"->mo\d+([A-Za-z_$][A-Za-z0-9_$]*)(?=\()")
METHOD_DECL_RE = re.compile(
    r"^(\s*\.method\b[^\n]*?\s)mo\d+([A-Za-z_$][A-Za-z0-9_$]*)(?=\()",
    re.MULTILINE,
)
DOOR_APPLY_RE = re.compile(
    rf"\.method private static applyTransform\({re.escape(DOOR_SESSION)}\)V.*?^\.end method",
    re.MULTILINE | re.DOTALL,
)

FORBIDDEN_CLASS_ALIASES = tuple(CLASS_ALIASES.keys())
FORBIDDEN_METHOD_DESCRIPTORS = tuple(METHOD_DESCRIPTOR_ALIASES.keys())

# DoorService used stub-only raw Transform fields for movement. Replace that method with
# bytecode calling the real public Transform API. This mirrors DoorService.java and
# avoids coupling Interaction runtime to private cached Transform internals.
DOOR_APPLY_METHOD = f""".method private static applyTransform({DOOR_SESSION})V
    .locals 7

    iget-object v0, p0, {DOOR_SESSION}->door:{GAME_OBJECT}
    invoke-virtual {{v0}}, {GAME_OBJECT}->J0(){TRANSFORM}
    move-result-object v0

    if-nez v0, :door_have_transform
    return-void

    :door_have_transform
    iget v1, p0, {DOOR_SESSION}->currentOpenAmount:F
    iget-object v2, p0, {DOOR_SESSION}->mode:{DOOR_MODE}
    invoke-virtual {{v2}}, {DOOR_MODE}->ordinal()I
    move-result v2

    packed-switch v2, :door_switch_data

    # Hinged/default: use public Euler rotation setter.
    iget v2, p0, {DOOR_SESSION}->initialEulerY:F
    iget v3, p0, {DOOR_SESSION}->directionSign:I
    int-to-float v3, v3
    mul-float v3, v3, v1
    iget v4, p0, {DOOR_SESSION}->maxAngleDeg:F
    mul-float v3, v3, v4
    add-float/2addr v2, v3
    const/4 v3, 0x0
    invoke-virtual {{v0, v3, v2, v3}}, {TRANSFORM}->setRotation(FFF)V
    goto :door_done

    # Sliding (ordinal 1): X movement.
    :door_sliding
    iget v2, p0, {DOOR_SESSION}->initialX:F
    iget v3, p0, {DOOR_SESSION}->directionSign:I
    int-to-float v3, v3
    iget v4, p0, {DOOR_SESSION}->travelDistance:F
    mul-float v3, v3, v4
    mul-float v3, v3, v1
    add-float/2addr v2, v3
    iget v3, p0, {DOOR_SESSION}->initialY:F
    iget v4, p0, {DOOR_SESSION}->initialZ:F
    invoke-virtual {{v0, v2, v3, v4}}, {TRANSFORM}->setPosition(FFF)V
    goto :door_done

    # Vertical/Garage (ordinals 2 and 4): Y movement.
    :door_vertical
    iget v2, p0, {DOOR_SESSION}->initialX:F
    iget v3, p0, {DOOR_SESSION}->initialY:F
    iget v4, p0, {DOOR_SESSION}->travelDistance:F
    mul-float v4, v4, v1
    add-float/2addr v3, v4
    iget v4, p0, {DOOR_SESSION}->initialZ:F
    invoke-virtual {{v0, v2, v3, v4}}, {TRANSFORM}->setPosition(FFF)V
    goto :door_done

    # Drawer (ordinal 3): Z movement.
    :door_drawer
    iget v2, p0, {DOOR_SESSION}->initialX:F
    iget v3, p0, {DOOR_SESSION}->initialY:F
    iget v4, p0, {DOOR_SESSION}->initialZ:F
    iget v5, p0, {DOOR_SESSION}->directionSign:I
    int-to-float v5, v5
    iget v6, p0, {DOOR_SESSION}->travelDistance:F
    mul-float v5, v5, v6
    mul-float v5, v5, v1
    add-float/2addr v4, v5
    invoke-virtual {{v0, v2, v3, v4}}, {TRANSFORM}->setPosition(FFF)V

    :door_done
    return-void

    :door_switch_data
    .packed-switch 0x1
        :door_sliding
        :door_vertical
        :door_drawer
        :door_vertical
    .end packed-switch
.end method"""


def is_interaction_smali(path: Path) -> bool:
    return path.suffix == ".smali" and "Interaction" in path.parts


def normalize_text(text: str) -> tuple[str, int]:
    changes = 0

    # Apply the structural DoorService patch before generic alias cleanup.
    if f".class public final {DOOR_SERVICE}" in text:
        text, count = DOOR_APPLY_RE.subn(DOOR_APPLY_METHOD, text, count=1)
        changes += count

    old_call, new_call = COMPONENT_REGISTRY_CALL
    count = text.count(old_call)
    if count:
        text = text.replace(old_call, new_call)
        changes += count

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

    # Door movement must not regress to the old stub-only raw position field access.
    if f".class public final {DOOR_SERVICE}" in text:
        if f"{TRANSFORM}->l:{VECTOR3}" in text or f"{TRANSFORM}->f79337l:{VECTOR3}" in text:
            errors.append(f"{path}: DoorService still references stub-only Transform position cache")

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
