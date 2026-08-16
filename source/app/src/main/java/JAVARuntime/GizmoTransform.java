package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:GizmoTransform.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:GizmoTransform.class
  classes.dex
 */
@ClassCategory(cat = {"Debug"})
public class GizmoTransform extends GizmoElement {
    private transient Vector3 position;
    private transient Quaternion rotation;
    private transient Vector3 scale;
    private transient float[] matrix;
    private static final ThreadLocal<Matrix4> ltMat4TL = new ThreadLocal<Matrix4>() {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public Matrix4 initialValue() {
            return new Matrix4();
        }
    };

    public GizmoTransform() {
        this.position = new Vector3();
        this.rotation = new Quaternion();
        this.scale = new Vector3(1);
    }

    public GizmoTransform(Vector3 vector3) {
        this.position = new Vector3();
        this.rotation = new Quaternion();
        this.scale = new Vector3(1);
        this.position = vector3;
    }

    public GizmoTransform(Vector3 vector3, Quaternion quaternion) {
        this.position = new Vector3();
        this.rotation = new Quaternion();
        this.scale = new Vector3(1);
        this.position = vector3;
        this.rotation = quaternion;
    }

    public GizmoTransform(Vector3 vector3, Quaternion quaternion, Vector3 vector32) {
        this.position = new Vector3();
        this.rotation = new Quaternion();
        this.scale = new Vector3(1);
        this.position = vector3;
        this.rotation = quaternion;
        this.scale = vector32;
    }

    @HideGetSet
    public Vector3 getPosition() {
        return this.position.copy();
    }

    @HideGetSet
    public void setPosition(Vector3 vector3) {
        if (vector3 == null) {
            throw new NullPointerException("position can't be null");
        }
        this.position.set(vector3);
    }

    public Vector3 getPosition(Vector3 vector3) {
        vector3.set(this.position);
        return vector3;
    }

    public void setPosition(float f10, float f11, float f12) {
        this.position.set(f10, f11, f12);
    }

    public void setPosition(float f10) {
        this.position.set(f10);
    }

    @HideGetSet
    public Quaternion getRotation() {
        return this.rotation.copy();
    }

    @HideGetSet
    public void setRotation(Quaternion quaternion) {
        this.rotation.set(quaternion);
    }

    public void setRotation(float f10, float f11, float f12) {
    }

    public void setRotation(float f10, float f11, float f12, float f13) {
    }

    @HideGetSet
    public Vector3 getScale() {
        return this.scale.copy();
    }

    @HideGetSet
    public void setScale(Vector3 vector3) {
        if (vector3 == null) {
            throw new NullPointerException("scale can't be null");
        }
        this.scale.set(vector3);
    }

    public void setScale(float f10, float f11, float f12) {
        this.scale.set(f10, f11, f12);
    }

    public void setScale(float f10) {
        this.scale.set(f10);
    }

    @Override
    @HideGetSet
    public float[] getMatrix() {
        return null;
    }

    @HideGetSet
    public void setMatrix(float[] fArr) {
    }
}
