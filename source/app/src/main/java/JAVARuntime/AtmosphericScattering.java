package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:AtmosphericScattering.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:AtmosphericScattering.class
  classes.dex
 */
@ClassCategory(cat = {"Post processing"})
public class AtmosphericScattering extends Component {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:AtmosphericScattering$CloudType.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:AtmosphericScattering$CloudType.class
  classes.dex
 */
    public enum CloudType {
        Disabled,
        Simple,
        Advanced;

        public static CloudType[] valuesCustom() {
            CloudType[] valuesCustom = values();
            int length = valuesCustom.length;
            CloudType[] cloudTypeArr = new CloudType[length];
            java.lang.System.arraycopy(valuesCustom, 0, cloudTypeArr, 0, length);
            return cloudTypeArr;
        }
    }

    @HideGetSet
    public int getAmbientLightResolutionID() {
        return 0;
    }

    @HideGetSet
    public float getAtmosphereDensity() {
        return 0.0f;
    }

    @HideGetSet
    public float getAtmosphereDensityFalloff() {
        return 0.0f;
    }

    @HideGetSet
    public float getAtmosphereExtent() {
        return 0.0f;
    }

    @HideGetSet
    public CloudType getCirrusClouds() {
        return null;
    }

    @HideGetSet
    public CloudType getCumulusClouds() {
        return null;
    }

    @HideGetSet
    public Color getGroundColor() {
        return null;
    }

    @HideGetSet
    public float getLux() {
        return 0.0f;
    }

    @HideGetSet
    public int getMaxResolutionID() {
        return 0;
    }

    @HideGetSet
    public Color getRayLeigh() {
        return null;
    }

    @HideGetSet
    public float getSkyboxSimulationSpeed() {
        return 0.0f;
    }

    @HideGetSet
    public float getWetness() {
        return 0.0f;
    }

    public boolean isAmbientLight() {
        return false;
    }

    public boolean isEnableMoonball() {
        return false;
    }

    public boolean isEnableSunball() {
        return false;
    }

    @HideGetSet
    public void setAmbientLight(boolean z10) {
    }

    @HideGetSet
    public void setAmbientLightResolutionID(int i10) {
    }

    @HideGetSet
    public void setAtmosphereDensity(float f10) {
    }

    @HideGetSet
    public void setAtmosphereDensityFalloff(float f10) {
    }

    @HideGetSet
    public void setAtmosphereExtent(float f10) {
    }

    @HideGetSet
    public void setCirrusClouds(CloudType cloudType) {
    }

    @HideGetSet
    public void setCumulusClouds(CloudType cloudType) {
    }

    @HideGetSet
    public void setEnableMoonball(boolean z10) {
    }

    @HideGetSet
    public void setEnableSunball(boolean z10) {
    }

    @HideGetSet
    public void setGroundColor(Color color) {
    }

    @HideGetSet
    public void setLux(float f10) {
    }

    @HideGetSet
    public void setMaxResolutionID(int i10) {
    }

    @HideGetSet
    public void setRayLeigh(Color color) {
    }

    @HideGetSet
    public void setSkyboxSimulationSpeed(float f10) {
    }

    @HideGetSet
    public void setWetness(float f10) {
    }
}
