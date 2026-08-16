package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:ToneMapper.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:ToneMapper.class
  classes.dex
 */
@ClassCategory(cat = {"Post processing"})
public class ToneMapper extends Component {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:ToneMapper$Quality.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:ToneMapper$Quality.class
  classes.dex
 */
    public enum Quality {
        Low,
        Medium,
        High,
        Ultra;

        public static Quality[] valuesCustom() {
            Quality[] valuesCustom = values();
            int length = valuesCustom.length;
            Quality[] qualityArr = new Quality[length];
            java.lang.System.arraycopy(valuesCustom, 0, qualityArr, 0, length);
            return qualityArr;
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:ToneMapper$Type.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:ToneMapper$Type.class
  classes.dex
 */
    public enum Type {
        Generic,
        Linear,
        Filmic,
        ACES,
        AGX;

        public static Type[] valuesCustom() {
            Type[] valuesCustom = values();
            int length = valuesCustom.length;
            Type[] typeArr = new Type[length];
            java.lang.System.arraycopy(valuesCustom, 0, typeArr, 0, length);
            return typeArr;
        }
    }

    @HideGetSet
    public Type getTonnemapType() {
        return null;
    }

    @HideGetSet
    public void setTonnemapType(Type type) {
    }

    @HideGetSet
    public Quality getQuality() {
        return null;
    }

    @HideGetSet
    public void setQuality(Quality quality) {
    }
}
