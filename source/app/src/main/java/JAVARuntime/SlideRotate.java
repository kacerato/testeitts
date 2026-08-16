package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:SlideRotate.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:SlideRotate.class
  classes.dex
 */
@ClassCategory(cat = {"Prototyping", "Components"})
public final class SlideRotate extends Component {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:SlideRotate$Direction.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:SlideRotate$Direction.class
  classes.dex
 */
    public enum Direction {
        Vertical,
        Horizontal;

        public static Direction[] valuesCustom() {
            Direction[] valuesCustom = values();
            int length = valuesCustom.length;
            Direction[] directionArr = new Direction[length];
            java.lang.System.arraycopy(valuesCustom, 0, directionArr, 0, length);
            return directionArr;
        }
    }

    @HideGetSet
    public String getAxisName() {
        return null;
    }

    @HideGetSet
    public float getCurrentAngle() {
        return 0.0f;
    }

    @HideGetSet
    public Direction getDirection() {
        return null;
    }

    @HideGetSet
    public float getMaxAngle() {
        return 0.0f;
    }

    @HideGetSet
    public float getMinAngle() {
        return 0.0f;
    }

    @HideGetSet
    public float getSensibility() {
        return 0.0f;
    }

    public boolean isUseMouse() {
        return false;
    }

    public boolean isLimited() {
        return false;
    }

    public void setUseMouse(boolean z10) {
    }

    @HideGetSet
    public void setAxisName(String str) {
    }

    @HideGetSet
    public void setCurrentAngle(float f10) {
    }

    @HideGetSet
    public void setDirection(Direction direction) {
    }

    @HideGetSet
    public void setLimited(boolean z10) {
    }

    @HideGetSet
    public void setMaxAngle(float f10) {
    }

    @HideGetSet
    public void setMinAngle(float f10) {
    }

    @HideGetSet
    public void setSensibility(float f10) {
    }

    public float getMouseSensibility() {
        return 0.0f;
    }

    public void setMouseSensibility(float f10) {
    }

    @HideGetSet
    public float getLerp() {
        return 0.0f;
    }

    @HideGetSet
    public void setLerp(float f10) {
    }
}
