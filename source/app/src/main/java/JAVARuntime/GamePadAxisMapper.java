package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:GamePadAxisMapper.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:GamePadAxisMapper.class
  classes.dex
 */
@ClassCategory(cat = {"Input"})
public class GamePadAxisMapper extends Component {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:GamePadAxisMapper$Axis.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:GamePadAxisMapper$Axis.class
  classes.dex
 */
    public enum Axis {
        AXIS_X,
        AXIS_Y,
        AXIS_Z,
        AXIS_RX,
        AXIS_RY,
        AXIS_RZ,
        AXIS_HAT_X,
        AXIS_HAT_Y;

        public static Axis[] valuesCustom() {
            Axis[] valuesCustom = values();
            int length = valuesCustom.length;
            Axis[] axisArr = new Axis[length];
            java.lang.System.arraycopy(valuesCustom, 0, axisArr, 0, length);
            return axisArr;
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:GamePadAxisMapper$AxisType.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:GamePadAxisMapper$AxisType.class
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
    public Axis getGamepadAxis() {
        return null;
    }

    @HideGetSet
    public void setGamepadAxis(Axis axis) {
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
