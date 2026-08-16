package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Quaternion.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Quaternion.class
  classes.dex
 */
@ClassCategory(cat = {"Vector"})
public final class Quaternion implements MulOperator, MulEqualOperator, EqualsComparator, JsonSerializer {
    public Quaternion() {
    }

    public Quaternion(float f10, float f11, float f12, float f13) {
    }

    @HideGetSet
    public float getX() {
        return 0.0f;
    }

    @HideGetSet
    public void setX(float f10) {
    }

    @HideGetSet
    public float getY() {
        return 0.0f;
    }

    @HideGetSet
    public void setY(float f10) {
    }

    @HideGetSet
    public float getZ() {
        return 0.0f;
    }

    @HideGetSet
    public void setZ(float f10) {
    }

    @HideGetSet
    public float getQX() {
        return 0.0f;
    }

    @HideGetSet
    public void setQX(float f10) {
    }

    @HideGetSet
    public float getQY() {
        return 0.0f;
    }

    @HideGetSet
    public void setQY(float f10) {
    }

    @HideGetSet
    public float getQZ() {
        return 0.0f;
    }

    @HideGetSet
    public void setQZ(float f10) {
    }

    @HideGetSet
    public float getQW() {
        return 0.0f;
    }

    @HideGetSet
    public void setQW(float f10) {
    }

    public void increment(float f10, float f11, float f12) {
        mulLocal(fromEuler(f10, f11, f12));
    }

    public Quaternion mul(Quaternion quaternion) {
        return null;
    }

    public Quaternion mul(float f10, float f11, float f12, float f13) {
        return null;
    }

    public void mulLocal(Quaternion quaternion) {
    }

    public void mulLocal(float f10, float f11, float f12, float f13) {
    }

    public Quaternion multiply(Quaternion quaternion) {
        return null;
    }

    public Quaternion multiply(float f10, float f11, float f12, float f13) {
        return null;
    }

    public Quaternion sum(Quaternion quaternion) {
        return mul(quaternion);
    }

    public Quaternion sum(float f10, float f11, float f12, float f13) {
        return mul(f10, f11, f12, f13);
    }

    public void sumLocal(Quaternion quaternion) {
        mulLocal(quaternion);
    }

    public void sumLocal(float f10, float f11, float f12, float f13) {
        mulLocal(f10, f11, f12, f13);
    }

    public Quaternion add(Quaternion quaternion) {
        return mul(quaternion);
    }

    public Quaternion add(float f10, float f11, float f12, float f13) {
        return mul(f10, f11, f12, f13);
    }

    public Quaternion normalize() {
        return null;
    }

    public void normalizeLocal() {
    }

    public boolean equals(Quaternion quaternion) {
        return false;
    }

    public boolean equals(float f10, float f11, float f12, float f13) {
        return false;
    }

    public boolean equals(float f10) {
        return false;
    }

    public Quaternion blend(Quaternion quaternion, float f10) {
        return null;
    }

    public void blendLocal(Quaternion quaternion, float f10) {
    }

    public void selfLookTo(Vector3 vector3) {
    }

    public void selfLookTo(Vector3 vector3, Vector3 vector32) {
    }

    public void localLookTo(Vector3 vector3) {
    }

    public void localLookTo(Vector3 vector3, Vector3 vector32) {
    }

    public void lookTo(Vector3 vector3) {
    }

    public void lookTo(Vector3 vector3, Vector3 vector32) {
    }

    public void lookTo(Vector3 vector3, Vector3 vector32, Vector3 vector33) {
    }

    public void lookToLocal(Vector3 vector3) {
    }

    public void lookToLocal(Vector3 vector3, Vector3 vector32) {
    }

    public void lookToLocal(Vector3 vector3, boolean z10, boolean z11) {
    }

    public void lookToLocal(Vector3 vector3, Vector3 vector32, boolean z10, boolean z11) {
    }

    public Quaternion slerp(Quaternion quaternion, float f10) {
        return null;
    }

    public void slerpLocal(Quaternion quaternion, float f10) {
    }

    public void slerpLocal(Quaternion quaternion, Quaternion quaternion2, float f10) {
    }

    public void set(Quaternion quaternion) {
    }

    public void set(float f10, float f11, float f12, float f13) {
    }

    public void set(float f10) {
    }

    public void setIdentity() {
    }

    public void setFromEuler(float f10, float f11, float f12) {
    }

    public void setFromEuler(Vector3 vector3) {
    }

    public Vector3 toEuler() {
        return null;
    }

    public Quaternion copy() {
        return null;
    }

    public Vector3 rotateVector(Vector3 vector3) {
        return null;
    }

    public Vector3 rotateVector(Vector3 vector3, Vector3 vector32) {
        return null;
    }

    public static Quaternion fromEuler(Vector3 vector3) {
        return null;
    }

    public static Quaternion fromEuler(float f10, float f11, float f12) {
        return null;
    }

    public static Quaternion createFromEuler(Vector3 vector3) {
        return null;
    }

    public static Quaternion createFromEuler(float f10, float f11, float f12) {
        return null;
    }

    public static Quaternion zero() {
        return null;
    }

    public static Quaternion slerp(Quaternion quaternion, Quaternion quaternion2, float f10) {
        return null;
    }

    public static Quaternion lookAt(Vector3 vector3, Vector3 vector32) {
        return null;
    }

    public static Quaternion lookAt(Vector3 vector3, Vector3 vector32, Vector3 vector33) {
        return null;
    }

    public static Quaternion angleAxis(float f10, Vector3 vector3) {
        return null;
    }

    public static Quaternion angleAxis(float f10, float f11, float f12, float f13) {
        return null;
    }

    public static Quaternion lookRotation(Vector3 vector3) {
        return null;
    }

    public static Quaternion lookRotation(Vector3 vector3, Vector3 vector32) {
        return null;
    }

    @Override
    public boolean equals(Object obj) {
        return false;
    }

    @Override
    public boolean pointerEquals(Object obj) {
        return false;
    }

    @Override
    public boolean notEquals(Object obj) {
        return false;
    }

    public static boolean isNull(Object obj) {
        return false;
    }

    @Override
    public <T> T mul(Object obj) {
        return null;
    }

    @Override
    public void mulEqual(Object obj) {
    }

    @Override
    public String serializeToString() {
        return null;
    }

    @Override
    public void deserializeLocal(String str) {
    }
}
