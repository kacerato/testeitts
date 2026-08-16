package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:PrecomputedAtmosphereSkybox.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:PrecomputedAtmosphereSkybox.class
  classes.dex
 */
@ClassCategory(cat = {"Post processing"})
public class PrecomputedAtmosphereSkybox extends Component {
    @HideGetSet
    public boolean isAmbientLight() {
        return false;
    }

    @HideGetSet
    public void setAmbientLight(boolean z10) {
    }

    @HideGetSet
    public float getLux() {
        return 0.0f;
    }

    @HideGetSet
    public void setLux(float f10) {
    }

    @HideGetSet
    public Curve getLuxCurve() {
        return null;
    }

    @HideGetSet
    public void setLuxCurve(Curve curve) {
    }

    @HideGetSet
    public int getAmbientLightResolutionID() {
        return 0;
    }

    @HideGetSet
    public void setAmbientLightResolutionID(int i10) {
    }

    @HideGetSet
    public int getMaxResolutionID() {
        return 0;
    }

    @HideGetSet
    public void setMaxResolutionID(int i10) {
    }

    @HideGetSet
    public Color getAmbientLightSkyColorMultiplier() {
        return null;
    }

    @HideGetSet
    public void setAmbientLightSkyColorMultiplier(Color color) {
    }

    @HideGetSet
    public int getTransmittanceLutResolutionID() {
        return 0;
    }

    @HideGetSet
    public void setTransmittanceLutResolutionID(int i10) {
    }

    @HideGetSet
    public int getMsLutResolutionID() {
        return 0;
    }

    @HideGetSet
    public void setMsLutResolutionID(int i10) {
    }

    @HideGetSet
    public int getSkyviewLutResolutionID() {
        return 0;
    }

    @HideGetSet
    public void setSkyviewLutResolutionID(int i10) {
    }

    @HideGetSet
    public Color getSkyLuminanceColor() {
        return null;
    }

    @HideGetSet
    public void setSkyLuminanceColor(Color color) {
    }

    @HideGetSet
    public float getSkyLuminanceScale() {
        return 0.0f;
    }

    @HideGetSet
    public void setSkyLuminanceScale(float f10) {
    }

    @HideGetSet
    public float getSkySaturation() {
        return 0.0f;
    }

    @HideGetSet
    public void setSkySaturation(float f10) {
    }

    @HideGetSet
    public float getSunAngularDiameter() {
        return 0.0f;
    }

    @HideGetSet
    public void setSunAngularDiameter(float f10) {
    }

    @HideGetSet
    public float getSunDiskIntensity() {
        return 0.0f;
    }

    @HideGetSet
    public void setSunDiskIntensity(float f10) {
    }

    @HideGetSet
    public float getGroundRadiusKm() {
        return 0.0f;
    }

    @HideGetSet
    public void setGroundRadiusKm(float f10) {
    }

    @HideGetSet
    public float getAtmosphereThicknessKm() {
        return 0.0f;
    }

    @HideGetSet
    public void setAtmosphereThicknessKm(float f10) {
    }

    @HideGetSet
    public float getMieG() {
        return 0.0f;
    }

    @HideGetSet
    public void setMieG(float f10) {
    }

    @HideGetSet
    public float getMsContribution() {
        return 0.0f;
    }

    @HideGetSet
    public void setMsContribution(float f10) {
    }

    @HideGetSet
    public float getRayleighMaxHeightKm() {
        return 0.0f;
    }

    @HideGetSet
    public void setRayleighMaxHeightKm(float f10) {
    }

    @HideGetSet
    public float getMieMaxHeightKm() {
        return 0.0f;
    }

    @HideGetSet
    public void setMieMaxHeightKm(float f10) {
    }

    @HideGetSet
    public float getOzonePeakAbsorptionHeightKm() {
        return 0.0f;
    }

    @HideGetSet
    public void setOzonePeakAbsorptionHeightKm(float f10) {
    }

    @HideGetSet
    public float getOzoneAbsorptionFalloffKm() {
        return 0.0f;
    }

    @HideGetSet
    public void setOzoneAbsorptionFalloffKm(float f10) {
    }

    @HideGetSet
    public float getTransmittanceOffsetSegmentT() {
        return 0.0f;
    }

    @HideGetSet
    public void setTransmittanceOffsetSegmentT(float f10) {
    }

    @HideGetSet
    public float getMsOffsetSegmentT() {
        return 0.0f;
    }

    @HideGetSet
    public void setMsOffsetSegmentT(float f10) {
    }

    @HideGetSet
    public float getMsOffsetSampleTheta() {
        return 0.0f;
    }

    @HideGetSet
    public void setMsOffsetSampleTheta(float f10) {
    }

    @HideGetSet
    public float getMsOffsetSamplePhi() {
        return 0.0f;
    }

    @HideGetSet
    public void setMsOffsetSamplePhi(float f10) {
    }

    @HideGetSet
    public float getSkyviewMaxRaymarchDistMegaKm() {
        return 0.0f;
    }

    @HideGetSet
    public void setSkyviewMaxRaymarchDistMegaKm(float f10) {
    }

    @HideGetSet
    public float getSkyviewOffsetSegmentT() {
        return 0.0f;
    }

    @HideGetSet
    public void setSkyviewOffsetSegmentT(float f10) {
    }

    @HideGetSet
    public boolean isAutoHeight() {
        return false;
    }

    @HideGetSet
    public void setAutoHeight(boolean z10) {
    }

    @HideGetSet
    public float getEyeHeightKm() {
        return 0.0f;
    }

    @HideGetSet
    public void setEyeHeightKm(float f10) {
    }

    @HideGetSet
    public int getSkyRaymarchSteps() {
        return 0;
    }

    @HideGetSet
    public void setSkyRaymarchSteps(int i10) {
    }

    @HideGetSet
    public int getTransmittanceSteps() {
        return 0;
    }

    @HideGetSet
    public void setTransmittanceSteps(int i10) {
    }

    @HideGetSet
    public int getMsDirSamples() {
        return 0;
    }

    @HideGetSet
    public void setMsDirSamples(int i10) {
    }

    @HideGetSet
    public int getMsRaymarchSteps() {
        return 0;
    }

    @HideGetSet
    public void setMsRaymarchSteps(int i10) {
    }
}
