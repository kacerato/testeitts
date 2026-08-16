import os, sys, collections, json

ROOT = r"C:\Users\donod\Downloads\itsmaagic\extracted\apktool_base"

# Discover smali folders
smali_folders = sorted([d for d in os.listdir(ROOT)
                        if d.startswith("smali") and os.path.isdir(os.path.join(ROOT, d))])

total = 0
per_dex_counts = {}
top_root_counts = collections.Counter()          # top-level package root (e.g. 'com', 'androidx')
root2_counts = collections.Counter()             # "<root>/<second>" counts
itsmagic_tree = collections.Counter()            # full package path under com.itsmagic.*
short_pkg_counts = collections.Counter()         # obfuscated short packages (1-2 letters)

LIB_ROOTS = {
    'androidx': 'AndroidX',
    'kotlin': 'Kotlin Stdlib',
    'kotlinx': 'KotlinX (coroutines/serialization)',
    'com/google': 'Google (GMS/Firebase/protobuf/gson/ExoPlayer)',
    'com/bumptech/glide': 'Glide (image loader)',
    'com/squareup': 'Square (Retrofit/OkHttp/Moshi)',
    'okhttp3': 'OkHttp 3',
    'okio': 'Okio',
    'io/reactivex': 'RxJava',
    'com/facebook': 'Facebook (Fresco/Reacts/Stetho)',
    'com/airbnb': 'Airbnb (Lottie/Epoxy/MvRx)',
    'org/jetbrains': 'JetBrains (kotlin/annotations)',
    'de/robv/android/xposed': 'Xposed',
    'com/unity3d': 'Unity',
    'com/epicgames': 'Unreal',
    'io/flutter': 'Flutter',
    'com/microsoft': 'Microsoft',
    'com/tencent': 'Tencent',
    'com/alibaba': 'Alibaba',
    'com/taobao': 'Taobao',
    'io/sentry': 'Sentry',
    'com/sentry': 'Sentry',
    'org/apache': 'Apache Commons/Lang/Logging',
    'com/jakewharton': 'Jake Wharton (RxBinding/ButterKnife)',
    'com/github': 'GitHub libs (jcenter)',
    'jp/co': 'jp.co libs (Sga)',
    'com/jme3': 'jMonkeyEngine 3',
    'com/ardor3d': 'Ardor3D',
    'com/karumi/dexter': 'Dexter (runtime permissions)',
    'com/pairip': 'PairIP (Play integrity)',
    'com/firebase': 'Firebase',
    'io/sentry': 'Sentry',
    'com/google/android/material': 'Material Components',
    'com/google/firebase': 'Firebase',
    'com/google/android/gms': 'Google Play Services',
    'com/google/gson': 'Gson',
    'com/google/protobuf': 'Protocol Buffers',
}
detected_libs = collections.Counter()

def is_short_obf(name):
    return len(name) <= 2 and name.isalpha()

for folder in smali_folders:
    fpath = os.path.join(ROOT, folder)
    count = 0
    for dirpath, dirnames, filenames in os.walk(fpath):
        smali_files = [f for f in filenames if f.endswith(".smali")]
        if not smali_files:
            continue
        n = len(smali_files)
        count += n
        rel = os.path.relpath(dirpath, fpath).replace("\\", "/")
        if rel == ".":
            continue
        parts = rel.split("/")
        # top-level root
        top_root_counts[parts[0]] += n
        # root/second
        if len(parts) >= 2:
            root2_counts[parts[0] + "/" + parts[1]] += n
        # obfuscated short top-level
        if is_short_obf(parts[0]):
            short_pkg_counts[rel] += n
        # com/itsmagic full tree
        if (len(parts) >= 3 and parts[0] == "com" and parts[1] == "itsmagic"):
            # full package (exclude leaf class file name; rel is already dir path)
            itsmagic_tree[rel] += n
        # library detection (check prefixes)
        for libroot in LIB_ROOTS:
            if rel == libroot or rel.startswith(libroot + "/") or rel.startswith(libroot):
                # crude: count if equal root
                pass
        # count libs by matching rel prefix against each lib root (multi-segment roots)
        for libroot, libname in LIB_ROOTS.items():
            libroot_parts = libroot.split("/")
            if parts[:len(libroot_parts)] == libroot_parts:
                detected_libs[libname] += n
                break
    per_dex_counts[folder] = count
    total += count

# Collapse detected_libs (some overlap like Google/Firebase). Keep hierarchical detection:
# Re-detect more precisely using root2 + specific paths.
specific_libs = collections.Counter()
for root2, n in root2_counts.items():
    # known specific roots
    mapping = {
        'com/bumptech': 'Glide',
        'com/squareup': 'Square (Retrofit/OkHttp/Moshi)',
        'com/airbnb': 'Airbnb (Lottie)',
        'com/facebook': 'Facebook',
        'com/github': 'GitHub libs',
        'com/jme3': 'jMonkeyEngine 3',
        'com/ardor3d': 'Ardor3D',
        'com/karumi': 'Dexter',
        'com/pairip': 'PairIP (Play integrity)',
        'com/firebase': 'Firebase',
        'com/unity3d': 'Unity',
        'io/flutter': 'Flutter',
        'io/reactivex': 'RxJava',
        'io/sentry': 'Sentry',
        'io/grpc': 'gRPC',
        'io/opencensus': 'OpenCensus',
        'io/perfmark': 'PerfMark',
        'io/noties': 'Markwon (markdown)',
        'io/coil': 'Coil',
        'com/squareup': 'Square',
        'com/darth): ': '',
        'okhttp3': 'OkHttp3',
        'okio': 'Okio',
        'androidx': 'AndroidX',
        'kotlin': 'Kotlin Stdlib',
        'kotlinx': 'KotlinX',
        'org/apache': 'Apache (commons/logging)',
        'org/jsoup': 'Jsoup',
        'org/jetbrains': 'JetBrains',
        'org/bouncycastle': 'BouncyCastle (crypto)',
        'org/commonmark': 'CommonMark (markdown)',
        'org/luaj': 'LuaJ (Lua scripting)',
        'org/eclipse': 'Eclipse JDT (Java compiler)',
        'org/graalvm': 'GraalVM',
        'com/google/firebase': 'Firebase',
        'com/google/android/gms': 'Google Play Services',
        'com/google/android/material': 'Material Components',
        'com/google/gson': 'Gson',
        'com/google/protobuf': 'Protocol Buffers',
        'com/google/android/exoplayer2': 'ExoPlayer 2',
        'com/google/zxing': 'ZXing (barcodes)',
        'com/itsmagic': 'ITsMagic engine2 (app core)',
        'com/microsoft': 'Microsoft',
        'com/tencent': 'Tencent',
        'com/alibaba': 'Alibaba',
        'com/taobao': 'Taobao',
        'JAVARuntime': 'Bundled Java Runtime (on-device JDK classes)',
        'com/jakewharton': 'Jake Wharton libs',
        'sun': 'Sun/JDK internal classes (reflections)',
        'java': 'java.* runtime classes (static reflection)',
        'jdk': 'JDK internal classes',
    }
    if root2 in mapping:
        specific_libs[mapping[root2]] += n

# Print report
print("="*70)
print("SMALI STRUCTURE REPORT — ITsMagic 2.0 (com.itsmagic.engine2)")
print("="*70)
print("\n### A) Total class count & per-DEX breakdown")
print(f"TOTAL .smali files (classes): {total:,}")
for k, v in per_dex_counts.items():
    print(f"  {k}: {v:,}")

print("\n### B) Top-level package roots (aggregated across all DEX)")
for root, n in top_root_counts.most_common():
    print(f"  {root:30s} {n:>7,}")

print("\n### C) com.itsmagic.* package tree (core app code)")
# Build nested dict for tree
tree = {}
for pkg, n in itsmagic_tree.items():
    parts = pkg.split("/")
    node = tree
    for p in parts[2:]:  # skip com/itsmagic
        node = node.setdefault(p, {"__count__": 0, "__sub__": {}})
        node["__count__"] += n

def render(node, prefix="", depth=0, maxdepth=4):
    items = sorted(node.items(), key=lambda kv: -(kv[1].get("__count__",0) if isinstance(kv[1],dict) else 0))
    for name, val in items:
        if name.startswith("__"):
            continue
        if isinstance(val, dict):
            c = val.get("__count__", 0)
            print(f"{prefix}{name}/  ({c:,})")
            if depth < maxdepth and val.get("__sub__"):
                render(val, prefix + "  ", depth+1, maxdepth)
        else:
            print(f"{prefix}{name}")

render(tree, maxdepth=5)

print("\n### D) Top-level second-segment package roots (root/X) — top 60 by class count")
for root2, n in root2_counts.most_common(60):
    print(f"  {root2:45s} {n:>7,}")

print("\n### E) Detected third-party libraries (by root-package aggregation, top 50)")
for lib, n in specific_libs.most_common(50):
    print(f"  {lib:50s} {n:>7,}")

print("\n### F) Obfuscation: short top-level packages (1-2 letter names), top 40")
short_total = sum(short_pkg_counts.values())
print(f"  Total classes under short-name (obfuscated) roots: {short_total:,}")
for pkg, n in short_pkg_counts.most_common(40):
    print(f"  {pkg:50s} {n:>7,}")
print("="*70)
print("DONE")
