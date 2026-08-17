#!/usr/bin/env python3
"""Rewrite generated Interaction writes to the fake Transform position-cache stub.

The javac stub exposed Transform.f79337l as Vector3 and Interaction code then emitted:

    iget-object <cache>, <transform>, Transform->f79337l:Vector3
    ... build a Vector3 ...
    invoke-virtual {<cache>, <vector>}, Vector3->f(Vector3)V

In the real APK, that field is an internal cache object (ib/d), not Vector3. The public
engine API for assigning a position vector is Transform.p3(Vector3). This pass converts
that bytecode shape before alias normalization and fails if an unsafe/unhandled raw
position-field reference remains.
"""

from __future__ import annotations

import re
import sys
from pathlib import Path

VECTOR3 = "Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;"
TRANSFORM = "Lcom/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform;"

RAW_POSITION_WRITE_RE = re.compile(
    rf"(?P<field>iget-object\s+(?P<cache>[vp]\d+),\s+(?P<transform>[vp]\d+),\s+"
    rf"{re.escape(TRANSFORM)}->(?:f79337l|l):{re.escape(VECTOR3)}\s*\n)"
    rf"(?P<body>.*?)"
    rf"(?P<invoke>invoke-virtual\s+\{{(?P=cache),\s+(?P<vector>[vp]\d+)\}},\s+"
    rf"{re.escape(VECTOR3)}->f\({re.escape(VECTOR3)}\)V)",
    re.DOTALL,
)

RAW_FIELD_RE = re.compile(
    rf"{re.escape(TRANSFORM)}->(?:f79337l|l):{re.escape(VECTOR3)}"
)


def is_interaction_smali(path: Path) -> bool:
    return path.suffix == ".smali" and "Interaction" in path.parts


def register_used(register: str, text: str) -> bool:
    return re.search(rf"(?<![A-Za-z0-9_]){re.escape(register)}(?![A-Za-z0-9_])", text) is not None


def rewrite_text(text: str) -> tuple[str, int, list[str]]:
    changes = 0
    warnings: list[str] = []

    def replace(match: re.Match[str]) -> str:
        nonlocal changes
        cache = match.group("cache")
        transform = match.group("transform")
        vector = match.group("vector")
        body = match.group("body")

        # Never cross method boundaries and never remove a cache register that is used
        # for another purpose before the final write.
        if ".method" in body or ".end method" in body:
            warnings.append("candidate crossed method boundary")
            return match.group(0)
        if register_used(cache, body):
            warnings.append(f"cache register {cache} reused before position write")
            return match.group(0)

        changes += 1
        replacement_call = (
            f"invoke-virtual {{{transform}, {vector}}}, "
            f"{TRANSFORM}->p3({VECTOR3})V"
        )
        return body + replacement_call

    text = RAW_POSITION_WRITE_RE.sub(replace, text)
    return text, changes, warnings


def main() -> int:
    if len(sys.argv) != 2:
        print("usage: fix_interaction_transform_position_smali.py <smali-root>", file=sys.stderr)
        return 2

    root = Path(sys.argv[1]).resolve()
    if not root.is_dir():
        print(f"smali root not found: {root}", file=sys.stderr)
        return 2

    scanned = 0
    changed_files = 0
    replacements = 0
    problems: list[str] = []

    for path in sorted(root.rglob("*.smali")):
        if not is_interaction_smali(path):
            continue
        scanned += 1
        original = path.read_text(encoding="utf-8")
        rewritten, count, warnings = rewrite_text(original)
        if rewritten != original:
            path.write_text(rewritten, encoding="utf-8")
            changed_files += 1
            replacements += count

        if warnings:
            problems.extend(f"{path}: {warning}" for warning in warnings)
        if RAW_FIELD_RE.search(rewritten):
            problems.append(f"{path}: unresolved raw Transform position field reference")

    print(
        f"Transform position ABI rewrite: scanned={scanned}, "
        f"changed_files={changed_files}, replacements={replacements}"
    )

    if scanned == 0:
        print("ERROR: no Interaction smali files found", file=sys.stderr)
        return 1

    if problems:
        print("ERROR: unsafe Transform position references remain:", file=sys.stderr)
        for problem in problems[:100]:
            print(f"  - {problem}", file=sys.stderr)
        return 1

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
