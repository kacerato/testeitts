package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:UIController.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:UIController.class
  classes.dex
 */
@ClassCategory(cat = {"UI", "Components"})
public class UIController extends Component {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:UIController$ResolutionMode.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:UIController$ResolutionMode.class
  classes.dex
 */
    public enum ResolutionMode {
        Percentage,
        FixedResolution,
        FreeAspectResolution;

        public static ResolutionMode[] valuesCustom() {
            ResolutionMode[] valuesCustom = values();
            int length = valuesCustom.length;
            ResolutionMode[] resolutionModeArr = new ResolutionMode[length];
            java.lang.System.arraycopy(valuesCustom, 0, resolutionModeArr, 0, length);
            return resolutionModeArr;
        }
    }

    public Touch emitVirtualTouch() {
        return null;
    }

    @HideGetSet
    public int getFixedResolutionPixelsHeight() {
        return 0;
    }

    @HideGetSet
    public int getFixedResolutionPixelsWidth() {
        return 0;
    }

    @HideGetSet
    public FrameBuffer getFrameBuffer() {
        return null;
    }

    @HideGetSet
    public int getFrameBufferH() {
        return 0;
    }

    @HideGetSet
    public int getFrameBufferW() {
        return 0;
    }

    @HideGetSet
    public int getFreeResolutionPixels() {
        return 0;
    }

    @HideGetSet
    public float getImageRatio() {
        return 0.0f;
    }

    @HideGetSet
    public float getPxSize() {
        return 0.0f;
    }

    @HideGetSet
    public String getRenderTextureFile() {
        return null;
    }

    @HideGetSet
    public ResolutionMode getResolutionMode() {
        return null;
    }

    @HideGetSet
    public float getResolutionPercentage() {
        return 0.0f;
    }

    public Vector2 getTouchPos(Touch touch) {
        return null;
    }

    public Touch getVirtualToucheAt(int i10) {
        return null;
    }

    @HideGetSet
    public boolean isAllowScreenTouch() {
        return false;
    }

    @HideGetSet
    public boolean isDrawToScreen() {
        return false;
    }

    public float pxToDP(float f10) {
        return 0.0f;
    }

    public int pxToDP(int i10) {
        return 0;
    }

    public void releaseVirtualTouch(Touch touch) {
    }

    @HideGetSet
    public void setAllowScreenTouch(boolean z10) {
    }

    @HideGetSet
    public void setDrawToScreen(boolean z10) {
    }

    @HideGetSet
    public void setFixedResolutionPixelsHeight(int i10) {
    }

    @HideGetSet
    public void setFixedResolutionPixelsWidth(int i10) {
    }

    @HideGetSet
    public void setFreeResolutionPixels(int i10) {
    }

    @HideGetSet
    public void setPxSize(float f10) {
    }

    @HideGetSet
    public void setRenderTextureFile(String str) {
    }

    @HideGetSet
    public void setResolutionMode(ResolutionMode resolutionMode) {
    }

    @HideGetSet
    public void setResolutionPercentage(float f10) {
    }

    public int virtualTouchsCount() {
        return 0;
    }
}
