#!/usr/bin/env python3
"""Verify generated Interaction smali references against the APK's real DEX ABI.

This catches the class of runtime failures that javac stubs can hide, such as compiling
Vector3.set(float,float,float) as returning void when the real engine returns Vector3.
The verifier resolves methods/fields through superclasses and interfaces before the APK
is rebuilt, so a missing descriptor fails the build instead of crashing on-device.
"""

from __future__ import annotations

import argparse
import re
import sys
from dataclasses import dataclass
from pathlib import Path

TYPE = r"(?:\[*[VZBSCIJFD]|\[*L[^;]+;)"
CLASS_RE = re.compile(r"^\.class\b[^\n]*\s(L[^;]+;)\s*$", re.MULTILINE)
SUPER_RE = re.compile(r"^\.super\s+(L[^;]+;)\s*$", re.MULTILINE)
IMPLEMENTS_RE = re.compile(r"^\.implements\s+(L[^;]+;)\s*$", re.MULTILINE)
METHOD_DECL_RE = re.compile(
    rf"^\.method\b[^\n]*\s([^\s(]+)(\([^)]*\){TYPE})\s*$", re.MULTILINE
)
FIELD_DECL_RE = re.compile(rf"^\.field\b[^\n]*\s([^\s:]+):({TYPE})", re.MULTILINE)
METHOD_REF_RE = re.compile(rf"(L[^;\s]+;)->([^\s(]+)(\([^)]*\){TYPE})")
FIELD_REF_RE = re.compile(rf"(L[^;\s]+;)->([^\s:]+):({TYPE})")

SYSTEM_PREFIXES = (
    "Ljava/",
    "Ljavax/",
    "Landroid/",
    "Landroidx/",
    "Ldalvik/",
    "Lsun/",
    "Llibcore/",
    "Lorg/w3c/",
    "Lorg/xml/",
)


@dataclass(frozen=True)
class MethodRef:
    owner: str
    name: str
    desc: str
    source: Path


@dataclass(frozen=True)
class FieldRef:
    owner: str
    name: str
    desc: str
    source: Path


@dataclass
class ClassInfo:
    descriptor: str
    superclass: str | None
    interfaces: tuple[str, ...]
    methods: set[tuple[str, str]]
    fields: set[tuple[str, str]]
    path: Path


def is_interaction_smali(path: Path) -> bool:
    return path.suffix == ".smali" and "Interaction" in path.parts


def class_descriptor_from_file(path: Path) -> str | None:
    try:
        with path.open("r", encoding="utf-8", errors="ignore") as handle:
            for _ in range(12):
                line = handle.readline()
                if not line:
                    break
                if line.startswith(".class "):
                    match = re.search(r"(L[^;]+;)\s*$", line.strip())
                    return match.group(1) if match else None
    except OSError:
        return None
    return None


def build_class_index(apktool_root: Path) -> dict[str, Path]:
    index: dict[str, Path] = {}
    smali_roots = sorted(p for p in apktool_root.iterdir() if p.is_dir() and p.name.startswith("smali"))
    for smali_root in smali_roots:
        for path in smali_root.rglob("*.smali"):
            descriptor = class_descriptor_from_file(path)
            if descriptor and descriptor not in index:
                index[descriptor] = path
    return index


def parse_class(path: Path) -> ClassInfo:
    text = path.read_text(encoding="utf-8", errors="ignore")
    class_match = CLASS_RE.search(text)
    if not class_match:
        raise ValueError(f"No .class descriptor in {path}")
    super_match = SUPER_RE.search(text)
    return ClassInfo(
        descriptor=class_match.group(1),
        superclass=super_match.group(1) if super_match else None,
        interfaces=tuple(IMPLEMENTS_RE.findall(text)),
        methods={(m.group(1), m.group(2)) for m in METHOD_DECL_RE.finditer(text)},
        fields={(m.group(1), m.group(2)) for m in FIELD_DECL_RE.finditer(text)},
        path=path,
    )


def collect_references(interaction_root: Path) -> tuple[set[MethodRef], set[FieldRef], list[Path]]:
    methods: set[MethodRef] = set()
    fields: set[FieldRef] = set()
    files = sorted(path for path in interaction_root.rglob("*.smali") if is_interaction_smali(path))
    for path in files:
        text = path.read_text(encoding="utf-8", errors="ignore")
        for match in METHOD_REF_RE.finditer(text):
            methods.add(MethodRef(match.group(1), match.group(2), match.group(3), path))
        for match in FIELD_REF_RE.finditer(text):
            fields.add(FieldRef(match.group(1), match.group(2), match.group(3), path))
    return methods, fields, files


def is_system_class(descriptor: str) -> bool:
    return descriptor.startswith(SYSTEM_PREFIXES)


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("apktool_root", type=Path)
    parser.add_argument("--interaction-root", type=Path, default=None)
    parser.add_argument("--report", type=Path, default=None)
    args = parser.parse_args()

    apktool_root = args.apktool_root.resolve()
    interaction_root = (
        args.interaction_root.resolve()
        if args.interaction_root
        else apktool_root / "smali_classes10"
    )

    if not apktool_root.is_dir() or not interaction_root.is_dir():
        print("Invalid apktool/Interaction smali root", file=sys.stderr)
        return 2

    method_refs, field_refs, interaction_files = collect_references(interaction_root)
    if not interaction_files:
        print("No Interaction smali files found", file=sys.stderr)
        return 2

    print(
        f"ABI audit input: interaction_files={len(interaction_files)}, "
        f"method_refs={len(method_refs)}, field_refs={len(field_refs)}"
    )
    print("Indexing APK smali classes...")
    class_index = build_class_index(apktool_root)
    print(f"Indexed {len(class_index)} classes")

    cache: dict[str, ClassInfo | None] = {}

    def get_info(descriptor: str) -> ClassInfo | None:
        if descriptor in cache:
            return cache[descriptor]
        path = class_index.get(descriptor)
        if path is None:
            cache[descriptor] = None
            return None
        try:
            info = parse_class(path)
        except Exception as exc:
            print(f"Warning: failed to parse {path}: {exc}", file=sys.stderr)
            info = None
        cache[descriptor] = info
        return info

    def hierarchy_has_method(owner: str, name: str, desc: str, seen: set[str] | None = None) -> bool:
        if seen is None:
            seen = set()
        if owner in seen:
            return False
        seen.add(owner)
        info = get_info(owner)
        if info is None:
            return is_system_class(owner)
        if (name, desc) in info.methods:
            return True
        if name == "<init>":
            return False
        if info.superclass and hierarchy_has_method(info.superclass, name, desc, seen):
            return True
        return any(hierarchy_has_method(interface, name, desc, seen) for interface in info.interfaces)

    def hierarchy_has_field(owner: str, name: str, desc: str, seen: set[str] | None = None) -> bool:
        if seen is None:
            seen = set()
        if owner in seen:
            return False
        seen.add(owner)
        info = get_info(owner)
        if info is None:
            return is_system_class(owner)
        if (name, desc) in info.fields:
            return True
        if info.superclass and hierarchy_has_field(info.superclass, name, desc, seen):
            return True
        return any(hierarchy_has_field(interface, name, desc, seen) for interface in info.interfaces)

    errors: list[str] = []
    for ref in sorted(method_refs, key=lambda r: (r.owner, r.name, r.desc, str(r.source))):
        if not hierarchy_has_method(ref.owner, ref.name, ref.desc):
            errors.append(
                f"MISSING METHOD {ref.owner}->{ref.name}{ref.desc} referenced by {ref.source.relative_to(apktool_root)}"
            )

    for ref in sorted(field_refs, key=lambda r: (r.owner, r.name, r.desc, str(r.source))):
        if not hierarchy_has_field(ref.owner, ref.name, ref.desc):
            errors.append(
                f"MISSING FIELD {ref.owner}->{ref.name}:{ref.desc} referenced by {ref.source.relative_to(apktool_root)}"
            )

    report_lines = [
        "Interaction Smali ABI Audit",
        f"interaction_files={len(interaction_files)}",
        f"method_refs={len(method_refs)}",
        f"field_refs={len(field_refs)}",
        f"indexed_classes={len(class_index)}",
        f"errors={len(errors)}",
        "",
    ] + errors
    report = "\n".join(report_lines) + "\n"

    if args.report:
        args.report.write_text(report, encoding="utf-8")
    print(report)

    return 1 if errors else 0


if __name__ == "__main__":
    raise SystemExit(main())
