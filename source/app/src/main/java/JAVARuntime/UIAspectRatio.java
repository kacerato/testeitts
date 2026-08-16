package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:UIAspectRatio.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:UIAspectRatio.class
  classes.dex
 */
@ClassCategory(cat = {"UI", "Components"})
public class UIAspectRatio extends Component {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:UIAspectRatio$Mode.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:UIAspectRatio$Mode.class
  classes.dex
 */
    public enum Mode {
        None,
        WidthControlsHeight,
        HeightControlsWidth;

        public static Mode[] valuesCustom() {
            Mode[] valuesCustom = values();
            int length = valuesCustom.length;
            Mode[] modeArr = new Mode[length];
            java.lang.System.arraycopy(valuesCustom, 0, modeArr, 0, length);
            return modeArr;
        }
    }

    @HideGetSet
    public Mode getMode() {
        return null;
    }

    @HideGetSet
    public float getProportion() {
        return 0.0f;
    }

    @HideGetSet
    public void setMode(Mode mode) {
    }

    @HideGetSet
    public void setProportion(float f10) {
    }
}
