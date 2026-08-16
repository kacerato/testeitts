package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:UIProgressBar.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:UIProgressBar.class
  classes.dex
 */
@ClassCategory(cat = {"UI"})
public class UIProgressBar extends Component {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:UIProgressBar$Orientation.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:UIProgressBar$Orientation.class
  classes.dex
 */
    public enum Orientation {
        Vertical,
        Horizontal;

        public static Orientation[] valuesCustom() {
            Orientation[] valuesCustom = values();
            int length = valuesCustom.length;
            Orientation[] orientationArr = new Orientation[length];
            java.lang.System.arraycopy(valuesCustom, 0, orientationArr, 0, length);
            return orientationArr;
        }
    }

    @HideGetSet
    public Color getBackgroundColor() {
        return null;
    }

    @HideGetSet
    public Texture getBackgroundTexture() {
        return null;
    }

    @HideGetSet
    public int getBackgroundSpriteIndex() {
        return 0;
    }

    @HideGetSet
    public float getBorder() {
        return 0.0f;
    }

    @HideGetSet
    public Color getHandlerColor() {
        return null;
    }

    @HideGetSet
    public Texture getHandlerTexture() {
        return null;
    }

    @HideGetSet
    public int getHandlerSpriteIndex() {
        return 0;
    }

    @HideGetSet
    public int getJRPaddingBottom() {
        return 0;
    }

    @HideGetSet
    public int getJRPaddingLeft() {
        return 0;
    }

    @HideGetSet
    public int getJRPaddingRight() {
        return 0;
    }

    @HideGetSet
    public int getJRPaddingTop() {
        return 0;
    }

    @HideGetSet
    public Orientation getOrientation() {
        return null;
    }

    @HideGetSet
    public boolean isReverse() {
        return false;
    }

    @HideGetSet
    public float getValue() {
        return 0.0f;
    }

    @HideGetSet
    public void setBackgroundColor(Color color) {
    }

    @HideGetSet
    public void setBackgroundTexture(Texture texture) {
    }

    @HideGetSet
    public void setBackgroundSpriteIndex(int i10) {
    }

    @HideGetSet
    public void setBorder(float f10) {
    }

    @HideGetSet
    public void setHandlerColor(Color color) {
    }

    @HideGetSet
    public void setHandlerTexture(Texture texture) {
    }

    @HideGetSet
    public void setHandlerSpriteIndex(int i10) {
    }

    @HideGetSet
    public void setJRPaddingBottom(int i10) {
    }

    @HideGetSet
    public void setJRPaddingLeft(int i10) {
    }

    @HideGetSet
    public void setJRPaddingRight(int i10) {
    }

    @HideGetSet
    public void setJRPaddingTop(int i10) {
    }

    @HideGetSet
    public void setOrientation(Orientation orientation) {
    }

    @HideGetSet
    public void setReverse(boolean z10) {
    }

    @HideGetSet
    public void setValue(float f10) {
    }
}
