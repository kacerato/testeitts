import os, sys, glob, shutil, subprocess, zipfile, re
from pathlib import Path

ROOT = Path(__file__).resolve().parent.parent

def find_android_sdk() -> Path:
    candidates = [
        os.environ.get("ANDROID_SDK_ROOT"),
        os.environ.get("ANDROID_HOME"),
        str(Path.home() / "AppData" / "Local" / "Android" / "Sdk"),
        str(Path.home() / "Android" / "Sdk"),
    ]
    for value in candidates:
        if value and Path(value).is_dir():
            return Path(value)
    raise RuntimeError("Android SDK not found.")

def find_android_jar(sdk: Path) -> Path:
    platforms_dir = sdk / "platforms"
    for name in ["android-36", "android-36.1", "android-35", "android-34"]:
        p = platforms_dir / name / "android.jar"
        if p.is_file():
            return p
    jars = sorted(platforms_dir.glob("*/android.jar"), reverse=True)
    if jars:
        return jars[0]
    raise RuntimeError("android.jar not found.")

def version_key(path: Path):
    parts = []
    for item in re.split(r"[._-]", path.name):
        parts.append(int(item) if item.isdigit() else item)
    return parts

def find_d8(sdk: Path) -> Path:
    root = sdk / "build-tools"
    versions = sorted((p for p in root.iterdir() if p.is_dir()), key=version_key, reverse=True)
    for v in versions:
        d8 = v / ("d8.bat" if os.name == "nt" else "d8")
        if d8.exists():
            return d8
    raise RuntimeError("d8 tool not found in Android build-tools.")

sdk = find_android_sdk()
android_jar = str(find_android_jar(sdk))
d8_bat = str(find_d8(sdk))
work_dir = str(ROOT / "work" / "build_interaction")
stubs_dir = os.path.join(work_dir, "stubs")
classes_dir = os.path.join(work_dir, "classes")
dex_dir = os.path.join(work_dir, "dex")
target_smali10 = str(ROOT / "extracted" / "apktool_base" / "smali_classes10")
apktool_jar = str(ROOT / "tools" / "apktool.jar")

for d in [stubs_dir, classes_dir, dex_dir]:
    os.makedirs(d, exist_ok=True)

def write_stub(rel_path, content):
    p = os.path.join(stubs_dir, rel_path)
    os.makedirs(os.path.dirname(p), exist_ok=True)
    with open(p, "w", encoding="utf-8") as f:
        f.write(content)

# GSON stubs
write_stub("com/google/gson/JsonElement.java", """package com.google.gson;
public abstract class JsonElement {}
""")
write_stub("com/google/gson/JsonObject.java", """package com.google.gson;
public final class JsonObject extends JsonElement {}
""")
write_stub("com/google/gson/Gson.java", """package com.google.gson;
public class Gson {
    public <T> T fromJson(JsonElement json, Class<T> classOfT) { return null; }
}
""")
write_stub("com/google/gson/annotations/Expose.java", """package com.google.gson.annotations;
import java.lang.annotation.*;
@Retention(RetentionPolicy.RUNTIME)
public @interface Expose {}
""")

# X7.a stub (Gson helper)
write_stub("X7/a.java", """package X7;
import com.google.gson.Gson;
public class a {
    public static Gson m() { return new Gson(); }
}
""")

# Vector3 & Quaternion stubs
write_stub("com/itsmagic/engine/Engines/Engine/Vector/Vector3.java", """package com.itsmagic.engine.Engines.Engine.Vector;
import java.io.Serializable;
public class Vector3 implements Serializable {
    public float x, y, z;
    public Vector3() {}
    public Vector3(float x, float y, float z) { this.x = x; this.y = y; this.z = z; }
    public Vector3(Vector3 other) { if (other != null) { this.x = other.x; this.y = other.y; this.z = other.z; } }
    public float getX() { return x; }
    public float getY() { return y; }
    public float getZ() { return z; }
    public Vector3 set(float x, float y, float z) { this.x = x; this.y = y; this.z = z; return this; }
    public Vector3 set(Vector3 other) { if (other != null) { this.x = other.x; this.y = other.y; this.z = other.z; } return this; }
    public void setX(float x) { this.x = x; }
    public void setY(float y) { this.y = y; }
    public void setZ(float z) { this.z = z; }
    public Vector3 d(Vector3 v) { return this; }
    public Vector3 f(Vector3 v) { return this; }
}
""")
write_stub("com/itsmagic/engine/Engines/Engine/Vector/i.java", """package com.itsmagic.engine.Engines.Engine.Vector;
public class i extends Vector3 {
    public Vector3 d(Vector3 v) { return this; }
}
""")
write_stub("com/itsmagic/engine/Engines/Engine/Quaternion/Quaternion.java", """package com.itsmagic.engine.Engines.Engine.Quaternion;
import java.io.Serializable;
public class Quaternion implements Serializable {
    public float x, y, z, w;
    public Quaternion() {}
    public Quaternion(float x, float y, float z, float w) { this.x = x; this.y = y; this.z = z; this.w = w; }
    public Quaternion(Quaternion other) { if (other != null) set(other); }
    public void set(Quaternion other) { if (other != null) { this.x = other.x; this.y = other.y; this.z = other.z; this.w = other.w; } }
    public Quaternion B0() { return this; }
}
""")

# Bullet Physics & JME3 stubs
write_stub("com/jme3/math/Vector3f.java", """package com.jme3.math;
public class Vector3f {
    public float f81611x, f81612y, f81613z;
    public Vector3f() {}
    public Vector3f(float x, float y, float z) { this.f81611x = x; this.f81612y = y; this.f81613z = z; }
    public void set(float x, float y, float z) { this.f81611x = x; this.f81612y = y; this.f81613z = z; }
}
""")
write_stub("com/jme3/bullet/collision/PhysicsCollisionObject.java", """package com.jme3.bullet.collision;
public class PhysicsCollisionObject {
    public Object getUserObject() { return null; }
}
""")
write_stub("com/jme3/bullet/collision/PhysicsRayTestResult.java", """package com.jme3.bullet.collision;
import com.jme3.math.Vector3f;
public class PhysicsRayTestResult {
    public float getHitFraction() { return 0f; }
    public PhysicsCollisionObject getCollisionObject() { return null; }
    public Vector3f getHitNormalLocal(Vector3f out) { return out; }
}
""")
write_stub("com/jme3/bullet/PhysicsSpace.java", """package com.jme3.bullet;
import com.jme3.bullet.collision.PhysicsRayTestResult;
import com.jme3.math.Vector3f;
import java.util.List;
public class PhysicsSpace {
    public void rayTest(Vector3f from, Vector3f to, List<PhysicsRayTestResult> results) {}
}
""")
write_stub("Cc/c.java", """package Cc;
public class c {
    public static final Object f2503k = new Object();
}
""")
write_stub("Cc/a.java", """package Cc;
import com.jme3.bullet.PhysicsSpace;
public class a {
    public PhysicsSpace f2506c;
}
""")

# Engine ObjectOriented stubs
write_stub("com/itsmagic/engine/Engines/Engine/ObjectOriented/Components/Component.java", """package com.itsmagic.engine.Engines.Engine.ObjectOriented.Components;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import java.io.Serializable;
public class Component implements Serializable {
    public GameObject f79250n;
    public Component() {}
    public Component(String title) {}
    public void preUpdate(GameObject gameObject, boolean isEditor) {}
    public void start(GameObject gameObject) {}
    public void onDetach() {}
    public String getTitle() { return ""; }
    public String getDisplayableTitle() { return ""; }
    public Component mo1248clone() { return null; }
}
""")
write_stub("com/itsmagic/engine/Engines/Engine/ObjectOriented/Transform/Transform.java", """package com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform;
import com.itsmagic.engine.Engines.Engine.Quaternion.Quaternion;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Engine.Vector.i;
import java.io.Serializable;
public class Transform implements Serializable {
    public i f79321B = new i();
    public Vector3 f79337l = new Vector3();
    public Quaternion f79322C = new Quaternion();
    public Vector3 J0() { return new Vector3(); }
    public Vector3 K0(Vector3 out) { return out != null ? out : new Vector3(); }
    public Vector3 forward() { return new Vector3(0, 0, 1); }
    public Vector3 u0(Vector3 out) { return out; }
    public void p3(Vector3 pos) {}
    public void setPosition(float x, float y, float z) {}
    public void setRotation(float x, float y, float z) {}
    public void setRotation(Vector3 rot) {}
    public float getRotationY() { return 0f; }
}
""")
write_stub("com/itsmagic/engine/Engines/Engine/ObjectOriented/GameObject/GameObject.java", """package com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import java.io.Serializable;
import java.util.List;
public class GameObject implements Serializable {
    public List<Component> f79286b;
    public GameObject f79294k;
    public Transform J0() { return new Transform(); }
    public GameObject h0() { return null; }
    public String P0() { return ""; }
    public String getName() { return ""; }
    public int D() { return 0; }
    public GameObject C(int index) { return null; }
    public int N() { return f79286b != null ? f79286b.size() : 0; }
    public Component L(int index) { return f79286b != null && index < f79286b.size() ? f79286b.get(index) : null; }
}
""")
write_stub("com/itsmagic/engine/Engines/Engine/World/World.java", """package com.itsmagic.engine.Engines.Engine.World;
import java.io.Serializable;
public class World implements Serializable {}
""")
write_stub("com/itsmagic/engine/Engines/Engine/ComponentsV2/Camera/Camera.java", """package com.itsmagic.engine.Engines.Engine.ComponentsV2.Camera;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
public class Camera extends Component {
    public static Camera mainCamera() { return null; }
    public static Camera mainCameraAllowEditor() { return null; }
}
""")
write_stub("com/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/PhysicsComponent.java", """package com.itsmagic.engine.Engines.Engine.ComponentsV2.Physics;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
public class PhysicsComponent extends Component {
    public GameObject getGameObjectForPhysics() { return f79250n; }
}
""")
write_stub("com/itsmagic/engine/Engines/Engine/ComponentsV2/Physics/Rigidbody.java", """package com.itsmagic.engine.Engines.Engine.ComponentsV2.Physics;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
public class Rigidbody extends Component {
    public boolean useGravity = true;
    public Vector3 getVelocity() { return new Vector3(); }
    public void setVelocity(Vector3 velocity) {}
}
""")

# Component Registry stubs
write_stub("fb/AbstractC13203c.java", """package fb;
public abstract class AbstractC13203c {
    public abstract Class b();
    public abstract String c();
    public abstract String e();
    public abstract String h(boolean translate);
}
""")
write_stub("fb/C13201a.java", """package fb;
public class C13201a {
    public static void b(AbstractC13203c factory) {}
}
""")

# Engine Utils stubs
write_stub("gb/C13317e.java", """package gb;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
public class C13317e {
    public static boolean J(GameObject go) { return go != null; }
}
""")
write_stub("K8/d.java", """package K8;
public class d {
    public static float d() { return 0.0166f; }
}
""")
write_stub("K8/a.java", """package K8;
public class a {
    public static Cc.a f10984o = new Cc.a();
}
""")

# NoCode Core stubs
write_stub("ga/H.java", """package ga;
public enum H {
    BRANCH, GAME_OBJECT, TEXT, NUMBER, NUMBER01, BOOLEAN, FLOAT3, DIRECTION, DYNAMIC
}
""")
write_stub("ga/EnumC13304B.java", """package ga;
public enum EnumC13304B {
    BOTH, RUNTIME_ONLY, EDITOR_ONLY
}
""")
write_stub("ga/F.java", """package ga;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
public interface F {
    NoCodeSlot[] F();
    NoCodeSlot[] J();
}
""")
write_stub("ga/p.java", """package ga;
import com.google.gson.JsonObject;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
public interface p {
    NoCodeNode a();
    Class<? extends NoCodeNode> b();
    String c();
    NoCodeNode d(JsonObject json);
    String e();
    String f();
    boolean g();
}
""")
write_stub("ga/o.java", """package ga;
public class o {
    public static void a(p factory) {}
}
""")
write_stub("ga/D.java", """package ga;
public class D {}
""")
write_stub("ga/m.java", """package ga;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
public class m {
    public static float V(Object val) { return 0f; }
    public static boolean S(Object val) { return false; }
    public static String Y(Object val) { return ""; }
    public static Vector3 Z(Object val) { return null; }
}
""")
write_stub("com/itsmagic/engine/Engines/Engine/NoCode/NoCodeSlot.java", """package com.itsmagic.engine.Engines.Engine.NoCode;
import ga.H;
import java.io.Serializable;
public class NoCodeSlot implements Serializable {
    public NoCodeSlot(String name, H type) {}
    public NoCodeSlot c(String title) { return this; }
}
""")
write_stub("com/itsmagic/engine/Engines/Engine/NoCode/NoCodeData.java", """package com.itsmagic.engine.Engines.Engine.NoCode;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import java.io.Serializable;
public class NoCodeData implements Serializable {
    public GameObject h0() { return null; }
    public boolean o0(NoCodeNode node, NoCodeSlot slot) { return true; }
    public void Y0(GameObject go, Object exec) {}
    public void h1() {}
}
""")
write_stub("com/itsmagic/engine/Engines/Engine/NoCode/NoCodeNode.java", """package com.itsmagic.engine.Engines.Engine.NoCode;
import ga.D;
import ga.EnumC13304B;
import ga.H;
import java.io.Serializable;
public class NoCodeNode implements Serializable {
    public NoCodeData f79021a;
    public String serializedNodeType;
    public NoCodeSlot[] F() { return null; }
    public NoCodeSlot[] J() { return null; }
    public void m0() {}
    public void l0() {}
    public void k0() {}
    public void u(NoCodeSlot slot) {}
    public void y0(NoCodeSlot slot, Object value) {}
    public Object Q(NoCodeSlot slot) { return null; }
    public EnumC13304B M() { return null; }
    public String N(NoCodeData data) { return ""; }
    public String x(NoCodeData data) { return ""; }
    public String a(int idx, H type) { return ""; }
    public H t0(int idx, D resolver) { return null; }
}
""")
write_stub("Fa/a.java", """package Fa;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
public class a extends NoCodeNode {}
""")
write_stub("Aa/b.java", """package Aa;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeData;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeNode;
import com.itsmagic.engine.Engines.Engine.NoCode.NoCodeSlot;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
public class b {
    public static GameObject b(NoCodeNode node, NoCodeData data, NoCodeSlot slot) { return null; }
}
""")

# Collect all interaction source files
src_root = str(ROOT / "source" / "app" / "src" / "main" / "java")
interaction_files = []
for r, d, files in os.walk(os.path.join(src_root, "com", "itsmagic", "engine", "Engines", "Engine", "NoCode", "Interaction")):
    for f in files:
        if f.endswith(".java"):
            interaction_files.append(os.path.join(r, f))

for r, d, files in os.walk(os.path.join(src_root, "com", "itsmagic", "engine", "Engines", "Engine", "NoCode", "Nodes")):
    for f in files:
        if f.endswith(".java") and "Interaction" in r:
            interaction_files.append(os.path.join(r, f))

stub_files = []
for r, d, files in os.walk(stubs_dir):
    for f in files:
        if f.endswith(".java"):
            stub_files.append(os.path.join(r, f))

all_srcs = stub_files + interaction_files

print(f"[1/4] Compiling {len(interaction_files)} Interaction files + {len(stub_files)} stubs with javac...")
shutil.rmtree(classes_dir, ignore_errors=True)
os.makedirs(classes_dir, exist_ok=True)

cmd_javac = [
    "javac",
    "-source", "1.8",
    "-target", "1.8",
    "-encoding", "UTF-8",
    "-cp", android_jar,
    "-d", classes_dir
] + all_srcs

res_javac = subprocess.run(cmd_javac, capture_output=True, text=True)
print("javac exit code:", res_javac.returncode)
if res_javac.returncode != 0:
    print("javac error:\n", res_javac.stderr)
    sys.exit(1)

# Remove stubs from classes_dir so only genuine interaction classes remain
for r, d, files in os.walk(stubs_dir):
    for f in files:
        if f.endswith(".java"):
            rel = os.path.relpath(os.path.join(r, f), stubs_dir)
            cls_rel = os.path.splitext(rel)[0] + ".class"
            cls_path = os.path.join(classes_dir, cls_rel)
            if os.path.exists(cls_path):
                os.remove(cls_path)
            # Inner classes
            inner_pat = os.path.join(classes_dir, os.path.splitext(rel)[0] + "$*.class")
            for inner in glob.glob(inner_pat):
                os.remove(inner)

# Also remove stub packages if empty
for stub_pkg in ["com/google", "X7", "Fa", "Aa", "ga", "gb", "K8", "Cc", "com/jme3", "fb"]:
    p = os.path.join(classes_dir, stub_pkg)
    if os.path.exists(p):
        shutil.rmtree(p, ignore_errors=True)

# Count compiled class files
compiled_classes = []
for r, d, files in os.walk(classes_dir):
    for f in files:
        if f.endswith(".class"):
            compiled_classes.append(os.path.join(r, f))

print(f"Compiled genuine classes: {len(compiled_classes)}")

# [2/4] Run d8 to produce DEX
shutil.rmtree(dex_dir, ignore_errors=True)
os.makedirs(dex_dir, exist_ok=True)
print("[2/4] Running d8 to generate DEX...")

compiled_jar = os.path.join(work_dir, "interaction_classes.jar")
with zipfile.ZipFile(compiled_jar, "w", zipfile.ZIP_DEFLATED) as z:
    for r, d, files in os.walk(classes_dir):
        for f in files:
            if f.endswith(".class"):
                p = os.path.join(r, f)
                rel = os.path.relpath(p, classes_dir)
                z.write(p, rel)

cmd_d8 = [d8_bat, "--output", dex_dir, compiled_jar]
res_d8 = subprocess.run(cmd_d8, capture_output=True, text=True)
print("d8 exit code:", res_d8.returncode)
if res_d8.returncode != 0:
    print("d8 error:\n", res_d8.stderr)
    sys.exit(1)

dex_file = os.path.join(dex_dir, "classes.dex")
print(f"Generated DEX file: {os.path.exists(dex_file)} ({os.path.getsize(dex_file):,} bytes)")

# [3/4] Disassemble DEX to smali
print("[3/4] Disassembling DEX to smali...")
dummy_apk = os.path.join(work_dir, "dummy_interaction.apk")
dummy_out = os.path.join(work_dir, "dummy_out")
with zipfile.ZipFile(dummy_apk, "w") as z:
    z.write(dex_file, "classes.dex")

shutil.rmtree(dummy_out, ignore_errors=True)
cmd_apktool_d = ["java", "-jar", apktool_jar, "d", "-f", "-r", dummy_apk, "-o", dummy_out]
subprocess.run(cmd_apktool_d, capture_output=True, text=True)

smali_out_dir = os.path.join(dummy_out, "smali")
if os.path.exists(smali_out_dir):
    # Copy all smali to target_smali10
    copied = 0
    for r, d, files in os.walk(smali_out_dir):
        for f in files:
            if f.endswith(".smali"):
                src_path = os.path.join(r, f)
                rel_path = os.path.relpath(src_path, smali_out_dir)
                dst_path = os.path.join(target_smali10, rel_path)
                os.makedirs(os.path.dirname(dst_path), exist_ok=True)
                shutil.copy2(src_path, dst_path)
                copied += 1
    print(f"Copied {copied} smali files to smali_classes10!")

print("[4/4] Smali files integrated into smali_classes10 successfully!")
print("ALL INTERACTION CLASSES COMPILED AND PACKAGED INTO SMALI!")
