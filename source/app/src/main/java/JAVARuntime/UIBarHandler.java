package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:UIBarHandler.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:UIBarHandler.class
  classes.dex
 */
@ClassCategory(cat = {"UI", "Components"})
public class UIBarHandler extends Component {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:UIBarHandler$Align.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:UIBarHandler$Align.class
  classes.dex
 */
    public enum Align {
        Center,
        End;

        public static Align[] valuesCustom() {
            Align[] valuesCustom = values();
            int length = valuesCustom.length;
            Align[] alignArr = new Align[length];
            java.lang.System.arraycopy(valuesCustom, 0, alignArr, 0, length);
            return alignArr;
        }
    }

    @HideGetSet
    public Align getAlign() {
        return null;
    }

    @HideGetSet
    public void setAlign(Align align) {
    }
}
