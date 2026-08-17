#!/usr/bin/env python3
from __future__ import annotations

import re
import sys
from pathlib import Path

VALID = re.compile(r"^[a-z0-9_]+$")
INVALID_CHARS = re.compile(r"[^a-z0-9_]")
RESOURCE_REF = re.compile(r"([@?])([a-zA-Z0-9_]+)/(\$?[A-Za-z0-9_.$-]+)")
NAME_ATTR = re.compile(r'(\bname\s*=\s*["\'])([^"\']+)(["\'])')


def sanitize_name(name: str) -> str:
    value = name.lower()
    value = value.lstrip("$")
    value = INVALID_CHARS.sub("_", value)
    value = re.sub(r"_+", "_", value).strip("_")
    if not value:
        value = "resource"
    if value[0].isdigit():
        value = "r_" + value
    return value


def unique_path(path: Path, new_stem: str) -> Path:
    suffix = path.suffix.lower()
    candidate = path.with_name(new_stem + suffix)
    if candidate == path or not candidate.exists():
        return candidate
    index = 1
    while True:
        candidate = path.with_name(f"{new_stem}_san{index}{suffix}")
        if not candidate.exists():
            return candidate
        index += 1


def main() -> int:
    if len(sys.argv) < 2:
        print("usage: sanitize_android_resources.py <res-dir> [source-dir ...]")
        return 2

    res_dir = Path(sys.argv[1]).resolve()
    roots = [res_dir] + [Path(p).resolve() for p in sys.argv[2:]]
    if not res_dir.is_dir():
        print(f"resource directory not found: {res_dir}")
        return 2

    mapping: dict[tuple[str, str], str] = {}
    renamed = 0

    # File-based resources: folder qualifier before '-' determines the resource type.
    for path in sorted(res_dir.rglob("*")):
        if not path.is_file():
            continue
        parent_type = path.parent.name.split("-", 1)[0]
        if parent_type == "values":
            continue
        stem = path.stem
        if VALID.fullmatch(stem):
            continue
        new_stem = sanitize_name(stem)
        new_path = unique_path(path, new_stem)
        mapping[(parent_type, stem)] = new_path.stem
        print(f"rename {path.relative_to(res_dir)} -> {new_path.relative_to(res_dir)}")
        path.rename(new_path)
        renamed += 1

    # Values resources can also contain invalid synthetic names from decompilers.
    for path in sorted(res_dir.glob("values*/*.xml")):
        try:
            text = path.read_text(encoding="utf-8")
        except UnicodeDecodeError:
            continue
        changed = False

        def fix_name_attr(match: re.Match[str]) -> str:
            nonlocal changed
            original = match.group(2)
            if VALID.fullmatch(original):
                return match.group(0)
            # Only touch synthetic/invalid identifiers; preserve style names containing dots.
            if not original.startswith("$") and not re.search(r"[^A-Za-z0-9_.]", original):
                return match.group(0)
            replacement = sanitize_name(original)
            if replacement != original:
                changed = True
                # Type is unknown here, so add a wildcard-style mapping for textual replacement below.
                mapping.setdefault(("*", original), replacement)
                return match.group(1) + replacement + match.group(3)
            return match.group(0)

        new_text = NAME_ATTR.sub(fix_name_attr, text)
        if changed:
            path.write_text(new_text, encoding="utf-8")

    if mapping:
        text_suffixes = {".xml", ".java", ".kt", ".gradle", ".properties", ".txt", ".json"}
        for root in roots:
            if not root.exists():
                continue
            for path in root.rglob("*"):
                if not path.is_file() or path.suffix.lower() not in text_suffixes:
                    continue
                try:
                    text = path.read_text(encoding="utf-8")
                except (UnicodeDecodeError, OSError):
                    continue
                original_text = text

                # Android XML references: @drawable/$foo, @mipmap/$bar, etc.
                for (rtype, old), new in mapping.items():
                    if rtype != "*":
                        text = text.replace(f"@{rtype}/{old}", f"@{rtype}/{new}")
                        text = text.replace(f"?{rtype}/{old}", f"?{rtype}/{new}")
                        text = text.replace(f"R.{rtype}.{old}", f"R.{rtype}.{new}")
                    else:
                        # Synthetic values identifiers can be referenced from multiple resource types.
                        text = text.replace("/" + old, "/" + new)

                if text != original_text:
                    path.write_text(text, encoding="utf-8")

    print(f"sanitized {renamed} file-based resource name(s); mapping entries={len(mapping)}")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
