package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:ParticleEmitter.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:ParticleEmitter.class
  classes.dex
 */
@ClassCategory(cat = {"Particles"})
public final class ParticleEmitter extends Component {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:ParticleEmitter$AlphaBased.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:ParticleEmitter$AlphaBased.class
  classes.dex
 */
    public enum AlphaBased {
        None,
        AlphaOverLifetime,
        BySpeed;

        public static AlphaBased[] valuesCustom() {
            AlphaBased[] valuesCustom = values();
            int length = valuesCustom.length;
            AlphaBased[] alphaBasedArr = new AlphaBased[length];
            java.lang.System.arraycopy(valuesCustom, 0, alphaBasedArr, 0, length);
            return alphaBasedArr;
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:ParticleEmitter$ColorBased.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:ParticleEmitter$ColorBased.class
  classes.dex
 */
    public enum ColorBased {
        Constant,
        ColorOverLifetime,
        BySpeed;

        public static ColorBased[] valuesCustom() {
            ColorBased[] valuesCustom = values();
            int length = valuesCustom.length;
            ColorBased[] colorBasedArr = new ColorBased[length];
            java.lang.System.arraycopy(valuesCustom, 0, colorBasedArr, 0, length);
            return colorBasedArr;
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:ParticleEmitter$ColorMode.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:ParticleEmitter$ColorMode.class
  classes.dex
 */
    public enum ColorMode {
        Normal,
        Multiply,
        Additive,
        Fade;

        public static ColorMode[] valuesCustom() {
            ColorMode[] valuesCustom = values();
            int length = valuesCustom.length;
            ColorMode[] colorModeArr = new ColorMode[length];
            java.lang.System.arraycopy(valuesCustom, 0, colorModeArr, 0, length);
            return colorModeArr;
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:ParticleEmitter$EmissionShape.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:ParticleEmitter$EmissionShape.class
  classes.dex
 */
    public enum EmissionShape {
        Sphere,
        Cone,
        Rectangle;

        public static EmissionShape[] valuesCustom() {
            EmissionShape[] valuesCustom = values();
            int length = valuesCustom.length;
            EmissionShape[] emissionShapeArr = new EmissionShape[length];
            java.lang.System.arraycopy(valuesCustom, 0, emissionShapeArr, 0, length);
            return emissionShapeArr;
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:ParticleEmitter$EmissiveBased.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:ParticleEmitter$EmissiveBased.class
  classes.dex
 */
    public enum EmissiveBased {
        Constant,
        EmissiveOverLifetime,
        BySpeed;

        public static EmissiveBased[] valuesCustom() {
            EmissiveBased[] valuesCustom = values();
            int length = valuesCustom.length;
            EmissiveBased[] emissiveBasedArr = new EmissiveBased[length];
            java.lang.System.arraycopy(valuesCustom, 0, emissiveBasedArr, 0, length);
            return emissiveBasedArr;
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:ParticleEmitter$SizeBased.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:ParticleEmitter$SizeBased.class
  classes.dex
 */
    public enum SizeBased {
        SizeOverLifetime,
        Constant,
        BySpeed;

        public static SizeBased[] valuesCustom() {
            SizeBased[] valuesCustom = values();
            int length = valuesCustom.length;
            SizeBased[] sizeBasedArr = new SizeBased[length];
            java.lang.System.arraycopy(valuesCustom, 0, sizeBasedArr, 0, length);
            return sizeBasedArr;
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:ParticleEmitter$TransparencyBased.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:ParticleEmitter$TransparencyBased.class
  classes.dex
 */
    public enum TransparencyBased {
        Disabled,
        Alpha,
        GreyScale;

        public static TransparencyBased[] valuesCustom() {
            TransparencyBased[] valuesCustom = values();
            int length = valuesCustom.length;
            TransparencyBased[] transparencyBasedArr = new TransparencyBased[length];
            java.lang.System.arraycopy(valuesCustom, 0, transparencyBasedArr, 0, length);
            return transparencyBasedArr;
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:ParticleEmitter$WorldSpace.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:ParticleEmitter$WorldSpace.class
  classes.dex
 */
    public enum WorldSpace {
        Global,
        Local;

        public static WorldSpace[] valuesCustom() {
            WorldSpace[] valuesCustom = values();
            int length = valuesCustom.length;
            WorldSpace[] worldSpaceArr = new WorldSpace[length];
            java.lang.System.arraycopy(valuesCustom, 0, worldSpaceArr, 0, length);
            return worldSpaceArr;
        }
    }

    public Particle emit(Vector3 vector3, Vector3 vector32) {
        return null;
    }

    @HideGetSet
    @UnimplementedDoc
    public boolean isAllowEmission() {
        return false;
    }

    @HideGetSet
    @UnimplementedDoc
    public void setAllowEmission(boolean z10) {
    }

    @HideGetSet
    public AlphaBased getAlphaBased() {
        return null;
    }

    @HideGetSet
    public void setAlphaBased(AlphaBased alphaBased) {
    }

    @HideGetSet
    public Curve getAlphaOverLifeTimeCurve() {
        return null;
    }

    @HideGetSet
    public void setAlphaOverLifeTimeCurve(Curve curve) {
    }

    @HideGetSet
    public Color getColor() {
        return null;
    }

    @HideGetSet
    public void setColor(Color color) {
    }

    @HideGetSet
    public ColorGradient getColorGradient() {
        return null;
    }

    @HideGetSet
    public void setColorGradient(ColorGradient colorGradient) {
    }

    @HideGetSet
    public Color getEmissive() {
        return null;
    }

    @HideGetSet
    public void setEmissive(Color color) {
    }

    @HideGetSet
    public ColorGradient getEmissiveGradient() {
        return null;
    }

    @HideGetSet
    public void setEmissiveGradient(ColorGradient colorGradient) {
    }

    @HideGetSet
    public EmissiveBased getEmissiveBased() {
        return null;
    }

    @HideGetSet
    public void setEmissiveBased(EmissiveBased emissiveBased) {
    }

    @HideGetSet
    public ColorBased getColorBased() {
        return null;
    }

    @HideGetSet
    public void setColorBased(ColorBased colorBased) {
    }

    @HideGetSet
    public ColorMode getColorMode() {
        return null;
    }

    @HideGetSet
    public void setColorMode(ColorMode colorMode) {
    }

    @HideGetSet
    public ParticleConeShapeOptions getConeShapeOptions() {
        return null;
    }

    @HideGetSet
    public ParticleSphereShapeOptions getSphereShapeOptions() {
        return null;
    }

    @HideGetSet
    public ParticleRectangleShapeOptions getRectangleShapeOptions() {
        return null;
    }

    @HideGetSet
    public EmissionShape getEmissionShape() {
        return null;
    }

    @HideGetSet
    public void setEmissionShape(EmissionShape emissionShape) {
    }

    @HideGetSet
    public boolean isEnableEmission() {
        return false;
    }

    @HideGetSet
    public void setEnableEmission(boolean z10) {
    }

    @HideGetSet
    public float getEmissionsPerSecond() {
        return 0.0f;
    }

    @HideGetSet
    public void setEmissionsPerSecond(float f10) {
    }

    @HideGetSet
    public float getEmissionPeriod() {
        return 0.0f;
    }

    @HideGetSet
    public void setEmissionPeriod(float f10) {
    }

    @HideGetSet
    public Curve getEmissionsOverPeriod() {
        return null;
    }

    @HideGetSet
    public void setEmissionsOverPeriod(Curve curve) {
    }

    @HideGetSet
    public float getGravityMultiplier() {
        return 0.0f;
    }

    @HideGetSet
    public void setGravityMultiplier(float f10) {
    }

    @HideGetSet
    public int getLayer() {
        return 0;
    }

    @HideGetSet
    public void setLayer(int i10) {
    }

    @HideGetSet
    public float getMaxLifeSeconds() {
        return 0.0f;
    }

    @HideGetSet
    public void setMaxLifeSeconds(float f10) {
    }

    @HideGetSet
    public WorldSpace getWorldSpace() {
        return null;
    }

    @HideGetSet
    public void setWorldSpace(WorldSpace worldSpace) {
    }

    @HideGetSet
    public SizeBased getSizeBased() {
        return null;
    }

    @HideGetSet
    public void setSizeBased(SizeBased sizeBased) {
    }

    @HideGetSet
    public Curve getSizeOverLifeTimeCurve() {
        return null;
    }

    @HideGetSet
    public void setSizeOverLifeTimeCurve(Curve curve) {
    }

    @HideGetSet
    public float getStartSize() {
        return 0.0f;
    }

    @HideGetSet
    public void setStartSize(float f10) {
    }

    @HideGetSet
    public float getStartSpeed() {
        return 0.0f;
    }

    @HideGetSet
    public void setStartSpeed(float f10) {
    }

    @HideGetSet
    public float getMaxSpeed() {
        return 0.0f;
    }

    @HideGetSet
    public void setMaxSpeed(float f10) {
    }

    @HideGetSet
    public Texture getTextureInstance() {
        return null;
    }

    @HideGetSet
    public void setTextureInstance(Texture texture) {
    }

    @HideGetSet
    public String getTextureFile() {
        return null;
    }

    @HideGetSet
    public void setTextureFile(String str) {
    }

    @HideGetSet
    public TransparencyBased getTransparencyBased() {
        return null;
    }

    @HideGetSet
    public void setTransparencyBased(TransparencyBased transparencyBased) {
    }

    @HideGetSet
    public boolean isFullWhite() {
        return false;
    }

    @HideGetSet
    public void setFullWhite(boolean z10) {
    }

    @HideGetSet
    public boolean isReceiveLight() {
        return false;
    }

    @HideGetSet
    public void setReceiveLight(boolean z10) {
    }

    @HideGetSet
    public boolean isCastShadows() {
        return false;
    }

    @HideGetSet
    public void setCastShadows(boolean z10) {
    }

    @HideGetSet
    public boolean isReceiveShadows() {
        return false;
    }

    @HideGetSet
    public void setReceiveShadows(boolean z10) {
    }
}
