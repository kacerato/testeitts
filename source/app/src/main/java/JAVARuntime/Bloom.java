package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Bloom.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Bloom.class
  classes.dex
 */
@ClassCategory(cat = {"Post processing"})
public class Bloom extends Component {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Bloom$QualityLevel.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Bloom$QualityLevel.class
  classes.dex
 */
    public enum QualityLevel {
        LOW,
        MEDIUM,
        HIGH,
        ULTRA;

        public static QualityLevel[] valuesCustom() {
            QualityLevel[] valuesCustom = values();
            int length = valuesCustom.length;
            QualityLevel[] qualityLevelArr = new QualityLevel[length];
            java.lang.System.arraycopy(valuesCustom, 0, qualityLevelArr, 0, length);
            return qualityLevelArr;
        }
    }

    @HideGetSet
    public float getChromaticAberration() {
        return 0.0f;
    }

    @HideGetSet
    public int getGhostCount() {
        return 0;
    }

    @HideGetSet
    public float getGhostSpacing() {
        return 0.0f;
    }

    @HideGetSet
    public float getGhostThreshold() {
        return 0.0f;
    }

    @HideGetSet
    public float getHaloRadius() {
        return 0.0f;
    }

    @HideGetSet
    public float getHaloThickness() {
        return 0.0f;
    }

    @HideGetSet
    public float getHaloThreshold() {
        return 0.0f;
    }

    @HideGetSet
    public float getHighlight() {
        return 0.0f;
    }

    @HideGetSet
    public int getLevels() {
        return 0;
    }

    @HideGetSet
    public QualityLevel getQuality() {
        return null;
    }

    @HideGetSet
    public int getResolutionID() {
        return 0;
    }

    @HideGetSet
    public float getStrength() {
        return 0.0f;
    }

    public boolean isLensFlare() {
        return false;
    }

    public boolean isStarburst() {
        return false;
    }

    @HideGetSet
    public void setChromaticAberration(float f10) {
    }

    @HideGetSet
    public void setGhostCount(int i10) {
    }

    @HideGetSet
    public void setGhostSpacing(float f10) {
    }

    @HideGetSet
    public void setGhostThreshold(float f10) {
    }

    @HideGetSet
    public void setHaloRadius(float f10) {
    }

    @HideGetSet
    public void setHaloThickness(float f10) {
    }

    @HideGetSet
    public void setHaloThreshold(float f10) {
    }

    @HideGetSet
    public void setHighlight(float f10) {
    }

    @HideGetSet
    public void setLensFlare(boolean z10) {
    }

    @HideGetSet
    public void setLevels(int i10) {
    }

    @HideGetSet
    public void setQuality(QualityLevel qualityLevel) {
    }

    @HideGetSet
    public void setResolutionID(int i10) {
    }

    @HideGetSet
    public void setStarburst(boolean z10) {
    }

    @HideGetSet
    public void setStrength(float f10) {
    }
}
