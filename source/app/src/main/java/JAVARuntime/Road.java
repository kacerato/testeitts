package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Road.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Road.class
  classes.dex
 */
@ClassCategory(cat = {"Roads", "Components"})
public final class Road extends Component {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Road$TextureMode.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Road$TextureMode.class
  classes.dex
 */
    public enum TextureMode {
        Vertical,
        Horizontal;

        public static TextureMode[] valuesCustom() {
            TextureMode[] valuesCustom = values();
            int length = valuesCustom.length;
            TextureMode[] textureModeArr = new TextureMode[length];
            java.lang.System.arraycopy(valuesCustom, 0, textureModeArr, 0, length);
            return textureModeArr;
        }
    }

    @HideGetSet
    public float getQuality() {
        return 0.0f;
    }

    @HideGetSet
    public float getRoadBorder() {
        return 0.0f;
    }

    @HideGetSet
    public float getRoadBorderUV() {
        return 0.0f;
    }

    @HideGetSet
    public float getRoadBorderVerticalOffset() {
        return 0.0f;
    }

    @HideGetSet
    public float getTerrainBorder() {
        return 0.0f;
    }

    @HideGetSet
    public TextureMode getTextureMode() {
        return null;
    }

    @HideGetSet
    public float getTextureWidth() {
        return 0.0f;
    }

    @HideGetSet
    public float getVerticalOffset() {
        return 0.0f;
    }

    @HideGetSet
    public float getWidth() {
        return 0.0f;
    }

    public boolean isGenerateCollision() {
        return false;
    }

    @HideGetSet
    public void setGenerateCollision(boolean z10) {
    }

    @HideGetSet
    public void setQuality(float f10) {
    }

    @HideGetSet
    public void setRoadBorder(float f10) {
    }

    @HideGetSet
    public void setRoadBorderUV(float f10) {
    }

    @HideGetSet
    public void setRoadBorderVerticalOffset(float f10) {
    }

    @HideGetSet
    public void setTerrainBorder(float f10) {
    }

    @HideGetSet
    public void setTextureMode(TextureMode textureMode) {
    }

    @HideGetSet
    public void setTextureWidth(float f10) {
    }

    @HideGetSet
    public void setVerticalOffset(float f10) {
    }

    @HideGetSet
    public void setWidth(float f10) {
    }
}
