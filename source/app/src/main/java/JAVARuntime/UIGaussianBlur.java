package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:UIGaussianBlur.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:UIGaussianBlur.class
  classes.dex
 */
@ClassCategory(cat = {"Post processing"})
public class UIGaussianBlur extends Component {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:UIGaussianBlur$Quality.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:UIGaussianBlur$Quality.class
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
    public float getBlurRadius() {
        return 0.0f;
    }

    @HideGetSet
    public Quality getQuality() {
        return null;
    }

    @HideGetSet
    public void setBlurRadius(float f10) {
    }

    @HideGetSet
    public void setQuality(Quality quality) {
    }
}
