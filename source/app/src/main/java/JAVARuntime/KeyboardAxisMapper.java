package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:KeyboardAxisMapper.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:KeyboardAxisMapper.class
  classes.dex
 */
@ClassCategory(cat = {"Input"})
public class KeyboardAxisMapper extends Component {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:KeyboardAxisMapper$AxisType.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:KeyboardAxisMapper$AxisType.class
  classes.dex
 */
    public enum AxisType {
        HORIZONTAL,
        VERTICAL;

        public static AxisType[] valuesCustom() {
            AxisType[] valuesCustom = values();
            int length = valuesCustom.length;
            AxisType[] axisTypeArr = new AxisType[length];
            java.lang.System.arraycopy(valuesCustom, 0, axisTypeArr, 0, length);
            return axisTypeArr;
        }
    }

    @HideGetSet
    public String getNegativeKeyboardKey() {
        return null;
    }

    @HideGetSet
    public void setNegativeKeyboardKey(String str) {
    }

    @HideGetSet
    public String getPositiveKeyboardKey() {
        return null;
    }

    @HideGetSet
    public void setPositiveKeyboardKey(String str) {
    }

    @HideGetSet
    public AxisType getAxisType() {
        return null;
    }

    @HideGetSet
    public void setAxisType(AxisType axisType) {
    }

    @HideGetSet
    public String getOutputAxis() {
        return null;
    }

    @HideGetSet
    public void setOutputAxis(String str) {
    }
}
