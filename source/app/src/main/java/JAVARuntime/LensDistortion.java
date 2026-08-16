package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:LensDistortion.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:LensDistortion.class
  classes.dex
 */
@ClassCategory(cat = {"Post processing"})
public class LensDistortion extends Component {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:LensDistortion$Mode.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:LensDistortion$Mode.class
  classes.dex
 */
    public enum Mode {
        Barrel,
        Pincushion;

        public static Mode[] valuesCustom() {
            Mode[] valuesCustom = values();
            int length = valuesCustom.length;
            Mode[] modeArr = new Mode[length];
            java.lang.System.arraycopy(valuesCustom, 0, modeArr, 0, length);
            return modeArr;
        }
    }

    @HideGetSet
    public float getBorder() {
        return 0.0f;
    }

    @HideGetSet
    public Vector2 getCenter() {
        return null;
    }

    @HideGetSet
    public float getIntensity() {
        return 0.0f;
    }

    @HideGetSet
    public Mode getMode() {
        return null;
    }

    @HideGetSet
    public void setBorder(float f10) {
    }

    @HideGetSet
    public void setCenter(Vector2 vector2) {
    }

    @HideGetSet
    public void setIntensity(float f10) {
    }

    @HideGetSet
    public void setMode(Mode mode) {
    }
}
