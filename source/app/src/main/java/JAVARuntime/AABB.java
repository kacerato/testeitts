package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:AABB.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:AABB.class
  classes.dex
 */
@ClassCategory(cat = {"Vector"})
public final class AABB {
    public AABB() {
    }

    public AABB(float f10, float f11, float f12, float f13, float f14, float f15) {
    }

    public AABB(float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18) {
    }

    public AABB(Vector3 vector3, Vector3 vector32) {
        this(vector32.getX(), vector32.getY(), vector32.getZ(), vector3.getX(), vector3.getY(), vector3.getZ());
    }

    public AABB(Vector3 vector3, Vector3 vector32, Vector3 vector33) {
        this(vector33.getX(), vector33.getY(), vector33.getZ(), vector3.getX(), vector3.getY(), vector3.getZ(), vector32.getX(), vector32.getY(), vector32.getZ());
    }

    @HideGetSet
    public Vector3 getMin() {
        return null;
    }

    @HideGetSet
    public void setMin(Vector3 vector3) {
    }

    @HideGetSet
    public Vector3 getMax() {
        return null;
    }

    @HideGetSet
    public void setMax(Vector3 vector3) {
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
    public float getXN() {
        return 0.0f;
    }

    @HideGetSet
    public void setXN(float f10) {
    }

    @HideGetSet
    public float getYN() {
        return 0.0f;
    }

    @HideGetSet
    public void setYN(float f10) {
    }

    @HideGetSet
    public float getZN() {
        return 0.0f;
    }

    @HideGetSet
    public void setZN(float f10) {
    }

    public float lengthMax() {
        return 0.0f;
    }

    public float lengthMin() {
        return 0.0f;
    }

    @HideGetSet
    public float getLengthMax() {
        return 0.0f;
    }

    @HideGetSet
    public float getLengthMin() {
        return 0.0f;
    }

    public float maxDistanceFromCenter() {
        return 0.0f;
    }

    @UnimplementedDoc
    public boolean isInside(Vector3 vector3) {
        return false;
    }

    public Vector3 getCenter() {
        return null;
    }

    public AABB copy() {
        return null;
    }
}
