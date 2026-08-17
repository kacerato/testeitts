#!/usr/bin/env python3
"""Run the legacy Interaction Java->DEX compiler and normalize JADX aliases afterwards."""

from __future__ import annotations

import subprocess
import sys
from pathlib import Path

HERE = Path(__file__).resolve().parent
RECOMPILE = HERE / "recompile_interaction_dex.py"
FIXER = HERE / "fix_interaction_smali_aliases.py"
ROOT = HERE.parent
SMALI_ROOT = ROOT / "extracted" / "apktool_base" / "smali_classes10"


def run(cmd, label: str) -> None:
    print(f"\n== {label} ==")
    result = subprocess.run([str(x) for x in cmd])
    if result.returncode != 0:
        raise SystemExit(result.returncode)


def main() -> int:
    if not RECOMPILE.exists():
        print(f"Missing compiler script: {RECOMPILE}", file=sys.stderr)
        return 2
    if not FIXER.exists():
        print(f"Missing alias fixer: {FIXER}", file=sys.stderr)
        return 2

    run([sys.executable, RECOMPILE], "Compile Interaction Java to smali")
    run([sys.executable, FIXER, SMALI_ROOT], "Normalize JADX aliases")
    print("\nSAFE INTERACTION RECOMPILE COMPLETED")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
