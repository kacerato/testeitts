package JAVARuntime;

import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Transform.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Transform.class
  classes.dex
 */
@ClassCategory(cat = {"Object"})
public final class Transform {
    public static final int STATE_DYNAMIC = 0;
    public static final int STATE_STATIC = 1;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$itsmagic$engine$Engines$Engine$ObjectOriented$Transform$Transform$State;

        static {
            int[] iArr = new int[Transform.G.values().length];
            $SwitchMap$com$itsmagic$engine$Engines$Engine$ObjectOriented$Transform$Transform$State = iArr;
            try {
                iArr[Transform.G.DYNAMIC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$itsmagic$engine$Engines$Engine$ObjectOriented$Transform$Transform$State[Transform.G.STATIC.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    @HideGetSet
    public Vector3 getPosition() {
        return null;
    }

    @HideGetSet
    public void setPosition(Vector3 vector3) {
    }

    public void setPosition(float f10, float f11, float f12) {
    }

    public void setPositionX(float f10) {
    }

    public void setPositionY(float f10) {
    }

    public void setPositionZ(float f10) {
    }

    @HideGetSet
    public Quaternion getRotation() {
        return null;
    }

    @HideGetSet
    public void setRotation(Quaternion quaternion) {
    }

    public void setRotation(float f10, float f11, float f12) {
    }

    public void setRotation(float f10, float f11, float f12, float f13) {
    }

    @HideGetSet
    public Vector3 getScale() {
        return null;
    }

    @HideGetSet
    public void setScale(Vector3 vector3) {
    }

    public void setScale(float f10, float f11, float f12) {
    }

    public void setScale(float f10) {
    }

    @HideGetSet
    public Vector3 getGlobalPosition() {
        return null;
    }

    public Vector3 getGlobalPosition(Vector3 vector3) {
        return null;
    }

    @HideGetSet
    public void setGlobalPosition(Vector3 vector3) {
    }

    @HideGetSet
    public Quaternion getGlobalRotation() {
        return null;
    }

    public Quaternion getGlobalRotation(Quaternion quaternion) {
        return null;
    }

    @HideGetSet
    public void setGlobalRotation(Quaternion quaternion) {
    }

    @HideGetSet
    public Vector3 getGlobalScale() {
        return null;
    }

    public Vector3 getGlobalScale(Vector3 vector3) {
        return null;
    }

    @HideGetSet
    public void setGlobalScale(Vector3 vector3) {
    }

    public void translate(float f10, float f11, float f12) {
    }

    public void move(float f10, float f11, float f12) {
    }

    public void rotate(float f10, float f11, float f12) {
    }

    public void translateInSeconds(float f10, float f11, float f12) {
    }

    public void moveInSeconds(float f10, float f11, float f12) {
    }

    public void rotateInSeconds(float f10, float f11, float f12) {
    }

    public void lookTo(SpatialObject spatialObject) {
    }

    public void lookTo(Vector3 vector3) {
    }

    public void lookTo(float f10, float f11, float f12) {
    }

    public void lookTo(SpatialObject spatialObject, boolean z10, boolean z11) {
    }

    public void lookTo(Vector3 vector3, boolean z10, boolean z11) {
    }

    public void lookTo(float f10, float f11, float f12, boolean z10, boolean z11) {
    }

    public void lookToIgnoreY(SpatialObject spatialObject) {
    }

    public void lookToIgnoreY(Vector3 vector3) {
    }

    public void teleportTo(SpatialObject spatialObject) {
    }

    public void teleportTo(Vector3 vector3) {
    }

    public void smoothLookTo(SpatialObject spatialObject, float f10) {
    }

    public void smoothLookTo(Vector3 vector3, float f10) {
    }

    public void lerpLookTo(SpatialObject spatialObject, float f10) {
    }

    public void lerpLookTo(Vector3 vector3, float f10) {
    }

    public void lerpLookToIgnoreY(SpatialObject spatialObject, float f10) {
    }

    public void lerpLookToIgnoreY(Vector3 vector3, float f10) {
    }

    public Vector3 transformPoint(Vector3 vector3) {
        return null;
    }

    public void transformPoint(Vector3 vector3, Vector3 vector32) {
    }

    public Vector3 inverseTransformPoint(Vector3 vector3) {
        return null;
    }

    public void inverseTransformPoint(Vector3 vector3, Vector3 vector32) {
    }

    public Vector3 transformDirection(Vector3 vector3) {
        return null;
    }

    public void transformDirection(Vector3 vector3, Vector3 vector32) {
    }

    public Vector3 inverseTransformDirection(Vector3 vector3) {
        return null;
    }

    public void inverseTransformDirection(Vector3 vector3, Vector3 vector32) {
    }

    public Vector3 forward() {
        return null;
    }

    public Vector3 back() {
        return null;
    }

    public Vector3 right() {
        return null;
    }

    public Vector3 left() {
        return null;
    }

    public Vector3 up() {
        return null;
    }

    public Vector3 down() {
        return null;
    }

    public Vector3 forward(Vector3 vector3) {
        return null;
    }

    public Vector3 back(Vector3 vector3) {
        return null;
    }

    public Vector3 right(Vector3 vector3) {
        return null;
    }

    public Vector3 left(Vector3 vector3) {
        return null;
    }

    public Vector3 up(Vector3 vector3) {
        return null;
    }

    public Vector3 down(Vector3 vector3) {
        return null;
    }

    public float globalDistance(SpatialObject spatialObject) {
        return 0.0f;
    }

    public float globalDistance(Transform transform) {
        return 0.0f;
    }

    public float globalDistance(Vector3 vector3) {
        return 0.0f;
    }

    public float globalSqrtDistance(SpatialObject spatialObject) {
        return 0.0f;
    }

    public float globalSqrtDistance(Transform transform) {
        return 0.0f;
    }

    public float globalSqrtDistance(Vector3 vector3) {
        return 0.0f;
    }

    @HideGetSet
    public boolean isIgnoreParent() {
        return false;
    }

    @HideGetSet
    public void setIgnoreParent(boolean z10) {
    }

    @HideGetSet
    public boolean isStatic() {
        return false;
    }

    @HideGetSet
    public void setStatic(boolean z10) {
    }

    public int getState() {
        return 0;
    }

    public void setState(int i10) {
    }

    public float[] getGlobalMatrix() {
        return null;
    }

    public float[] getGlobalMatrix(float[] fArr) {
        return null;
    }

    public float[] getLocalMatrix() {
        return null;
    }

    public float[] getLocalMatrix(float[] fArr) {
        return null;
    }

    public Vector3 mulGlobalVector3(Vector3 vector3) {
        return null;
    }

    public Vector3 mulLocalVector3(Vector3 vector3) {
        return null;
    }

    public void recalculateMatrices() {
    }
}
