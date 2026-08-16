package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:UIBloom.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:UIBloom.class
  classes.dex
 */
@ClassCategory(cat = {"Post processing"})
public class UIBloom extends Component {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:UIBloom$Quality.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:UIBloom$Quality.class
  classes.dex
 */
    public enum Quality {
        LOW,
        MEDIUM,
        HIGH;

        public static Quality[] valuesCustom() {
            Quality[] valuesCustom = values();
            int length = valuesCustom.length;
            Quality[] qualityArr = new Quality[length];
            java.lang.System.arraycopy(valuesCustom, 0, qualityArr, 0, length);
            return qualityArr;
        }
    }

    @HideGetSet
    public float getIntensity() {
        return 0.0f;
    }

    @HideGetSet
    public float getThreshold() {
        return 0.0f;
    }

    @HideGetSet
    public float getBlurRadius() {
        return 0.0f;
    }

    @HideGetSet
    public Quality getQuality() {
        return null;
    }

    @HideGetSet
    public void setIntensity(float f10) {
    }

    @HideGetSet
    public void setThreshold(float f10) {
    }

    @HideGetSet
    public void setBlurRadius(float f10) {
    }

    @HideGetSet
    public void setQuality(Quality quality) {
    }
}
