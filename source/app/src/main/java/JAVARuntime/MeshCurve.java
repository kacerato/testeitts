package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:MeshCurve.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:MeshCurve.class
  classes.dex
 */
@ClassCategory(cat = {"Roads", "Components"})
public final class MeshCurve extends Component {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:MeshCurve$ForwardAxis.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:MeshCurve$ForwardAxis.class
  classes.dex
 */
    public enum ForwardAxis {
        X,
        Y,
        Z;

        public static ForwardAxis[] valuesCustom() {
            ForwardAxis[] valuesCustom = values();
            int length = valuesCustom.length;
            ForwardAxis[] forwardAxisArr = new ForwardAxis[length];
            java.lang.System.arraycopy(valuesCustom, 0, forwardAxisArr, 0, length);
            return forwardAxisArr;
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:MeshCurve$UpMode.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:MeshCurve$UpMode.class
  classes.dex
 */
    public enum UpMode {
        AlignToCurve,
        FixX,
        FixY,
        FixZ;

        public static UpMode[] valuesCustom() {
            UpMode[] valuesCustom = values();
            int length = valuesCustom.length;
            UpMode[] upModeArr = new UpMode[length];
            java.lang.System.arraycopy(valuesCustom, 0, upModeArr, 0, length);
            return upModeArr;
        }
    }

    @HideGetSet
    public float getSpacing() {
        return 0.0f;
    }

    @HideGetSet
    public void setSpacing(float f10) {
    }

    @HideGetSet
    public float getStartOffset() {
        return 0.0f;
    }

    @HideGetSet
    public void setStartOffset(float f10) {
    }

    @HideGetSet
    public float getCurveQuality() {
        return 0.0f;
    }

    @HideGetSet
    public void setCurveQuality(float f10) {
    }

    @HideGetSet
    public Vector3 getOffset() {
        return null;
    }

    @HideGetSet
    public void setOffset(Vector3 vector3) {
    }

    @HideGetSet
    public Vector3 getScale() {
        return null;
    }

    @HideGetSet
    public void setScale(Vector3 vector3) {
    }

    public ForwardAxis getForwardAxis() {
        return null;
    }

    @HideGetSet
    public void setForwardAxis(ForwardAxis forwardAxis) {
    }

    public UpMode getUpMode() {
        return null;
    }

    @HideGetSet
    public void setUpMode(UpMode upMode) {
    }
}
