#!/usr/bin/env python3
from __future__ import annotations

import re
import sys
from pathlib import Path

VALID = re.compile(r"^[a-z0-9_]+$")
INVALID_CHARS = re.compile(r"[^a-z0-9_]")
NAME_ATTR = re.compile(r'(\bname\s*=\s*["\'])([^"\']+)(["\'])')

ANDROID_NS = "http://schemas.android.com/apk/res/android"


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


def resource_stem(path: Path) -> str:
    # Android NinePatch names such as foo.9.png are valid and the resource id is foo.
    if path.name.lower().endswith(".9.png"):
        return path.name[:-6]
    return path.stem


def unique_path(path: Path, new_stem: str) -> Path:
    if path.name.lower().endswith(".9.png"):
        candidate = path.with_name(new_stem + ".9.png")
        suffix = ".9.png"
    else:
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


def text_xml(path: Path) -> str | None:
    try:
        raw = path.read_bytes()
        # Decompiled resource trees sometimes contain Android binary XML. A textual XML file
        # must decode as UTF-8 (optionally BOM) and start with an XML/tag marker after whitespace.
        text = raw.decode("utf-8-sig")
    except (OSError, UnicodeDecodeError):
        return None
    return text if text.lstrip().startswith("<") else None


def fallback_vector(name: str) -> str:
    lowered = name.lower()
    if "pause" in lowered:
        path_data = "M6,5h4v14H6zM14,5h4v14h-4z"
    elif "menu" in lowered:
        path_data = "M3,6h18v2H3zM3,11h18v2H3zM3,16h18v2H3z"
    elif "expansion" in lowered or "header_indicator" in lowered or "arrow" in lowered:
        path_data = "M7.41,8.59 12,13.17 16.59,8.59 18,10 12,16 6,10z"
    else:
        # Neutral valid drawable used only when a decompiled binary drawable cannot be consumed by AAPT2.
        path_data = "M12,12m-1,0a1,1 0,1 0,2 0a1,1 0,1 0,-2 0"
    return (
        f'<vector xmlns:android="{ANDROID_NS}" android:width="24dp" '
        f'android:height="24dp" android:viewportWidth="24" android:viewportHeight="24">\n'
        f'    <path android:fillColor="#FFFFFFFF" android:pathData="{path_data}"/>\n'
        f'</vector>\n'
    )


def repair_binary_drawables(res_dir: Path) -> int:
    repaired = 0
    for path in sorted(res_dir.rglob("*.xml")):
        parent_type = path.parent.name.split("-", 1)[0]
        if parent_type not in {"drawable", "mipmap"}:
            continue
        if text_xml(path) is not None:
            continue
        print(f"repair binary/non-UTF8 drawable XML: {path.relative_to(res_dir)}")
        path.write_text(fallback_vector(path.name), encoding="utf-8")
        repaired += 1
    return repaired


def main() -> int:
    if len(sys.argv) < 2:
        print("usage: sanitize_android_resources.py <res-dir> [source-dir ...]")
        return 2

    res_dir = Path(sys.argv[1]).resolve()
    roots = [res_dir] + [Path(p).resolve() for p in sys.argv[2:]]
    if not res_dir.is_dir():
        print(f"resource directory not found: {res_dir}")
        return 2

    repaired = repair_binary_drawables(res_dir)
    mapping: dict[tuple[str, str], str] = {}
    renamed = 0

    # File-based resources: folder qualifier before '-' determines the resource type.
    for path in sorted(res_dir.rglob("*")):
        if not path.is_file():
            continue
        parent_type = path.parent.name.split("-", 1)[0]
        if parent_type == "values":
            continue
        stem = resource_stem(path)
        if VALID.fullmatch(stem):
            continue
        new_stem = sanitize_name(stem)
        new_path = unique_path(path, new_stem)
        mapping[(parent_type, stem)] = resource_stem(new_path)
        print(f"rename {path.relative_to(res_dir)} -> {new_path.relative_to(res_dir)}")
        path.rename(new_path)
        renamed += 1

    # Values resources can also contain invalid synthetic names from decompilers.
    for path in sorted(res_dir.glob("values*/*.xml")):
        text = text_xml(path)
        if text is None:
            continue
        changed = False

        def fix_name_attr(match: re.Match[str]) -> str:
            nonlocal changed
            original = match.group(2)
            if VALID.fullmatch(original):
                return match.group(0)
            # Preserve style names with dots; only fix names that Android cannot accept.
            if not original.startswith("$") and not re.search(r"[^A-Za-z0-9_.]", original):
                return match.group(0)
            replacement = sanitize_name(original)
            if replacement != original:
                changed = True
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
                for (rtype, old), new in mapping.items():
                    if rtype != "*":
                        text = text.replace(f"@{rtype}/{old}", f"@{rtype}/{new}")
                        text = text.replace(f"?{rtype}/{old}", f"?{rtype}/{new}")
                        text = text.replace(f"R.{rtype}.{old}", f"R.{rtype}.{new}")
                    else:
                        text = text.replace("/" + old, "/" + new)
                if text != original_text:
                    path.write_text(text, encoding="utf-8")

    print(
        f"sanitized {renamed} file-based resource name(s); "
        f"repaired binary drawables={repaired}; mapping entries={len(mapping)}"
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
