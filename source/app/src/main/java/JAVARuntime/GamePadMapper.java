package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:GamePadMapper.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:GamePadMapper.class
  classes.dex
 */
@ClassCategory(cat = {"Input"})
public class GamePadMapper extends Component {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:GamePadMapper$Button.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:GamePadMapper$Button.class
  classes.dex
 */
    public enum Button {
        A,
        B,
        X,
        Y,
        L1,
        L2,
        R1,
        R2,
        START,
        SELECT,
        C,
        Z,
        THUMBL,
        THUMBR,
        MODE,
        DPAD_UP,
        DPAD_DOWN,
        DPAD_LEFT,
        DPAD_RIGHT,
        DPAD_CENTER;

        public static Button[] valuesCustom() {
            Button[] valuesCustom = values();
            int length = valuesCustom.length;
            Button[] buttonArr = new Button[length];
            java.lang.System.arraycopy(valuesCustom, 0, buttonArr, 0, length);
            return buttonArr;
        }
    }

    @HideGetSet
    public Button getGamepadButton() {
        return null;
    }

    @HideGetSet
    public void setGamepadButton(Button button) {
    }

    @HideGetSet
    public String getOutputKey() {
        return null;
    }

    @HideGetSet
    public void setOutputKey(String str) {
    }
}
