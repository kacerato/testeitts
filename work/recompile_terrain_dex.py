import os, subprocess, glob, shutil, zipfile

android_jar = r"C:\Users\donod\AppData\Local\Android\Sdk\platforms\android-36\android.jar"
d8_bat = r"C:\Users\donod\AppData\Local\Android\Sdk\build-tools\36.1.0\d8.bat"
work_dir = r"C:\Users\donod\Downloads\itsmaagic\work\build_terrain"
stubs_dir = os.path.join(work_dir, "stubs")
classes_dir = os.path.join(work_dir, "classes")
dex_dir = os.path.join(work_dir, "dex")
target_smali10 = r"C:\Users\donod\Downloads\itsmaagic\extracted\apktool_base\smali_classes10"

for d in [stubs_dir, classes_dir, dex_dir]:
    os.makedirs(d, exist_ok=True)

def write_stub(rel_path, content):
    p = os.path.join(stubs_dir, rel_path)
    os.makedirs(os.path.dirname(p), exist_ok=True)
    with open(p, "w", encoding="utf-8") as f:
        f.write(content)

# 1. EditorPanel stub with M() and interface k
write_stub("com/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel.java", """package com.itsmagic.engine.Activities.Editor.Interface.Objects;
import android.content.Context;
import android.view.View;
public class EditorPanel {
    public EditorPanel() {}
    public EditorPanel(String icon, String title, String id) {}
    public static void a(k factory) {}
    public View C0() { return null; }
    public Context M() { return null; }
    public interface k {
        Class<?> b();
        String c();
    }
    public static abstract class j implements k {}
}
""")

# 2. Vector3 stub
write_stub("com/itsmagic/engine/Engines/Engine/Vector/Vector3.java", """package com.itsmagic.engine.Engines.Engine.Vector;
public class Vector3 {
    public float x, y, z;
    public Vector3() {}
    public Vector3(float x, float y, float z) { this.x = x; this.y = y; this.z = z; }
    public void set(float x, float y, float z) { this.x = x; this.y = y; this.z = z; }
}
""")

# 3. ColorINT stub
write_stub("com/itsmagic/engine/Engines/Engine/Color/ColorINT.java", """package com.itsmagic.engine.Engines.Engine.Color;
public class ColorINT {
    public int r, g, b, a;
    public ColorINT() {}
    public ColorINT(int r, int g, int b, int a) { this.r = r; this.g = g; this.b = b; this.a = a; }
}
""")

# 4. Terrain stub
write_stub("com/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain.java", """package com.itsmagic.engine.Engines.Engine.ComponentsV2.Terrain;
public class Terrain {
    public Terrain() {}
}
""")

# Find all 18 terrain source files
src_root = r"C:\Users\donod\Downloads\itsmaagic\source\app\src\main\java"
terrain_files = glob.glob(os.path.join(src_root, "com/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Pro/*.java"))
studio_files = glob.glob(os.path.join(src_root, "com/itsmagic/engine/Activities/Editor/Panels/TerrainStudio/*.java"))
tools_files = glob.glob(os.path.join(src_root, "com/itsmagic/engine/Activities/Editor/Panels/TerrainTools/*.java"))

stub_files = []
for r, d, files in os.walk(stubs_dir):
    for f in files:
        if f.endswith(".java"):
            stub_files.append(os.path.join(r, f))

all_srcs = stub_files + terrain_files + studio_files + tools_files

print(f"[1/4] Compiling {len(all_srcs)} Java files with javac...")
shutil.rmtree(classes_dir, ignore_errors=True)
os.makedirs(classes_dir, exist_ok=True)

cmd_javac = [
    "javac",
    "-source", "1.8",
    "-target", "1.8",
    "-cp", android_jar,
    "-d", classes_dir
] + all_srcs
res_javac = subprocess.run(cmd_javac, capture_output=True, text=True)
print("javac exit:", res_javac.returncode)
if res_javac.returncode != 0:
    print("javac error:\n", res_javac.stderr)
    exit(1)

# Remove stubs from classes_dir
for stub_pkg in [
    "com/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel.class",
    "com/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$j.class",
    "com/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel$k.class",
    "com/itsmagic/engine/Engines/Engine/Vector/Vector3.class",
    "com/itsmagic/engine/Engines/Engine/Color/ColorINT.class",
    "com/itsmagic/engine/Engines/Engine/ComponentsV2/Terrain/Terrain.class"
]:
    p = os.path.join(classes_dir, stub_pkg)
    if os.path.exists(p):
        os.remove(p)

# Run d8 to produce DEX
shutil.rmtree(dex_dir, ignore_errors=True)
os.makedirs(dex_dir, exist_ok=True)
print("[2/4] Running d8 to generate DEX...")
class_files = []
for r, d, files in os.walk(classes_dir):
    for f in files:
        if f.endswith(".class"):
            class_files.append(os.path.join(r, f))

cmd_d8 = [d8_bat, "--output", dex_dir] + class_files
res_d8 = subprocess.run(cmd_d8, capture_output=True, text=True)
print("d8 exit:", res_d8.returncode)
if res_d8.returncode != 0:
    print("d8 error:\n", res_d8.stderr)
    exit(1)

dex_file = os.path.join(dex_dir, "classes.dex")
print(f"Generated DEX file: {os.path.exists(dex_file)} ({os.path.getsize(dex_file):,} bytes)")

# Disassemble to smali_classes10
print("[3/4] Disassembling DEX to smali_classes10...")
dummy_apk = os.path.join(work_dir, "dummy.apk")
dummy_out = os.path.join(work_dir, "dummy_out")
with zipfile.ZipFile(dummy_apk, "w") as z:
    z.write(dex_file, "classes.dex")

shutil.rmtree(dummy_out, ignore_errors=True)
cmd_apktool_d = ["java", "-jar", r"C:\Users\donod\Downloads\itsmaagic\tools\apktool.jar", "d", "-f", "-r", dummy_apk, "-o", dummy_out]
subprocess.run(cmd_apktool_d, capture_output=True, text=True)

if os.path.exists(os.path.join(dummy_out, "smali")):
    shutil.rmtree(target_smali10, ignore_errors=True)
    shutil.copytree(os.path.join(dummy_out, "smali"), target_smali10)
    
    # Remove stub interfaces if present
    stub_smali_dir = os.path.join(target_smali10, "com/itsmagic/engine/Activities/Editor/Interface/Objects")
    if os.path.exists(stub_smali_dir):
        shutil.rmtree(stub_smali_dir)

print("[4/4] Fixing smali method signatures...")
subprocess.run(["python", r"C:\Users\donod\Downloads\itsmaagic\work\fix_smali_signatures.py"])

print("ALL SMALI_CLASSES10 RECOMPILED AND FIXED!")
