package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:MouseMapper.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:MouseMapper.class
  classes.dex
 */
@ClassCategory(cat = {"Input"})
public class MouseMapper extends Component {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:MouseMapper$Button.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:MouseMapper$Button.class
  classes.dex
 */
    public enum Button {
        LEFT,
        RIGHT,
        MIDDLE,
        BACK,
        FORWARD;

        public static Button[] valuesCustom() {
            Button[] valuesCustom = values();
            int length = valuesCustom.length;
            Button[] buttonArr = new Button[length];
            java.lang.System.arraycopy(valuesCustom, 0, buttonArr, 0, length);
            return buttonArr;
        }
    }

    @HideGetSet
    public Button getMouseButton() {
        return null;
    }

    @HideGetSet
    public void setMouseButton(Button button) {
    }

    @HideGetSet
    public String getOutputKey() {
        return null;
    }

    @HideGetSet
    public void setOutputKey(String str) {
    }
}
