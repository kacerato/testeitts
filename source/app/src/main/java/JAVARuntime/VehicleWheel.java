package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:VehicleWheel.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:VehicleWheel.class
  classes.dex
 */
@ClassCategory(cat = {"Physics", "Components"})
public final class VehicleWheel extends Component {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:VehicleWheel$Type.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:VehicleWheel$Type.class
  classes.dex
 */
    public enum Type {
        ContactPoint,
        Model;

        public static Type[] valuesCustom() {
            Type[] valuesCustom = values();
            int length = valuesCustom.length;
            Type[] typeArr = new Type[length];
            java.lang.System.arraycopy(valuesCustom, 0, typeArr, 0, length);
            return typeArr;
        }
    }

    @HideGetSet
    public float getRadius() {
        return 0.0f;
    }

    @HideGetSet
    public void setRadius(float f10) {
    }

    @HideGetSet
    public float getSkidding() {
        return 0.0f;
    }

    @HideGetSet
    public float getSuspensionRestLength() {
        return 0.0f;
    }

    @HideGetSet
    public void setSuspensionRestLength(float f10) {
    }

    @HideGetSet
    public float getFrictionSlip() {
        return 0.0f;
    }

    @HideGetSet
    public void setFrictionSlip(float f10) {
    }

    @HideGetSet
    @Deprecated
    public boolean getPosPhysicsFunctionEnabled() {
        return false;
    }

    @HideGetSet
    @Deprecated
    public void setPosPhysicsFunctionEnabled(boolean z10) {
    }

    @HideGetSet
    public void setBlockRotation(float f10) {
    }

    @Deprecated
    public boolean isGrounded() {
        return false;
    }

    @HideGetSet
    public float getRotation() {
        return 0.0f;
    }

    @HideGetSet
    public void setRotation(float f10) {
    }

    public void incrementRotation(float f10) {
    }

    @HideGetSet
    public Vector3 getModelPosition() {
        return null;
    }

    @HideGetSet
    public Quaternion getModelRotation() {
        return null;
    }

    public void setTorque(float f10) {
    }

    public void setBrake(float f10) {
    }

    public void setSteer(float f10) {
    }

    @HideGetSet
    public float getSuspensionTravelPercentage() {
        return 0.0f;
    }

    @HideGetSet
    public float getCamber() {
        return 0.0f;
    }

    @HideGetSet
    public void setCamber(float f10) {
    }
}
