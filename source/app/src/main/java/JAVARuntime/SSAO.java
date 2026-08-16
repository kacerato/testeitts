package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:SSAO.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:SSAO.class
  classes.dex
 */
@ClassCategory(cat = {"Post processing"})
public class SSAO extends Component {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:SSAO$QualityLevel.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:SSAO$QualityLevel.class
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
    public float getBias() {
        return 0.0f;
    }

    @HideGetSet
    public float getBilateralThreshold() {
        return 0.0f;
    }

    @HideGetSet
    public float getIntensity() {
        return 0.0f;
    }

    @HideGetSet
    public QualityLevel getLowPassFilter() {
        return null;
    }

    @HideGetSet
    public float getMinHorizonAngleRad() {
        return 0.0f;
    }

    @HideGetSet
    public float getPower() {
        return 0.0f;
    }

    @HideGetSet
    public QualityLevel getQuality() {
        return null;
    }

    @HideGetSet
    public float getRadius() {
        return 0.0f;
    }

    @HideGetSet
    public QualityLevel getUpsampling() {
        return null;
    }

    @HideGetSet
    public void setBias(float f10) {
    }

    @HideGetSet
    public void setBilateralThreshold(float f10) {
    }

    @HideGetSet
    public void setIntensity(float f10) {
    }

    @HideGetSet
    public void setLowPassFilter(QualityLevel qualityLevel) {
    }

    @HideGetSet
    public void setMinHorizonAngleRad(float f10) {
    }

    @HideGetSet
    public void setPower(float f10) {
    }

    @HideGetSet
    public void setQuality(QualityLevel qualityLevel) {
    }

    @HideGetSet
    public void setRadius(float f10) {
    }

    @HideGetSet
    public void setUpsampling(QualityLevel qualityLevel) {
    }
}
