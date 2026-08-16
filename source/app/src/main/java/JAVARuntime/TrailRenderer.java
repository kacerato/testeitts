package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:TrailRenderer.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:TrailRenderer.class
  classes.dex
 */
@ClassCategory(cat = {"Particles"})
public final class TrailRenderer extends Component {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:TrailRenderer$Alignment.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:TrailRenderer$Alignment.class
  classes.dex
 */
    public enum Alignment {
        Billboard,
        Movement;

        public static Alignment[] valuesCustom() {
            Alignment[] valuesCustom = values();
            int length = valuesCustom.length;
            Alignment[] alignmentArr = new Alignment[length];
            java.lang.System.arraycopy(valuesCustom, 0, alignmentArr, 0, length);
            return alignmentArr;
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:TrailRenderer$AlphaBased.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:TrailRenderer$AlphaBased.class
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
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:TrailRenderer$ColorBased.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:TrailRenderer$ColorBased.class
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
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:TrailRenderer$ColorMode.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:TrailRenderer$ColorMode.class
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
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:TrailRenderer$SizeBased.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:TrailRenderer$SizeBased.class
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
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:TrailRenderer$TransparencyBased.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:TrailRenderer$TransparencyBased.class
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
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:TrailRenderer$UVMode.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:TrailRenderer$UVMode.class
  classes.dex
 */
    public enum UVMode {
        LengthBased,
        PointBased;

        public static UVMode[] valuesCustom() {
            UVMode[] valuesCustom = values();
            int length = valuesCustom.length;
            UVMode[] uVModeArr = new UVMode[length];
            java.lang.System.arraycopy(valuesCustom, 0, uVModeArr, 0, length);
            return uVModeArr;
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:TrailRenderer$WorldSpace.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:TrailRenderer$WorldSpace.class
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

    @HideGetSet
    public boolean isEnableEmission() {
        return false;
    }

    @HideGetSet
    public void setEnableEmission(boolean z10) {
    }

    @HideGetSet
    public float getPointsPerSecond() {
        return 0.0f;
    }

    @HideGetSet
    public void setPointsPerSecond(float f10) {
    }

    @HideGetSet
    public float getMinPointDistance() {
        return 0.0f;
    }

    @HideGetSet
    public void setMinPointDistance(float f10) {
    }

    @HideGetSet
    public float getMaxLifeSeconds() {
        return 0.0f;
    }

    @HideGetSet
    public void setMaxLifeSeconds(float f10) {
    }

    @HideGetSet
    public float getMaxLength() {
        return 0.0f;
    }

    @HideGetSet
    public void setMaxLength(float f10) {
    }

    @HideGetSet
    public float getMaxSpeed() {
        return 0.0f;
    }

    @HideGetSet
    public void setMaxSpeed(float f10) {
    }

    @HideGetSet
    public float getStartSize() {
        return 0.0f;
    }

    @HideGetSet
    public void setStartSize(float f10) {
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

    @HideGetSet
    public Alignment getAlignment() {
        return null;
    }

    @HideGetSet
    public void setAlignment(Alignment alignment) {
    }

    @HideGetSet
    public UVMode getUvMode() {
        return null;
    }

    @HideGetSet
    public void setUvMode(UVMode uVMode) {
    }

    @HideGetSet
    public boolean isRotateUV90() {
        return false;
    }

    @HideGetSet
    public void setRotateUV90(boolean z10) {
    }

    @HideGetSet
    public WorldSpace getWorldSpace() {
        return null;
    }

    @HideGetSet
    public void setWorldSpace(WorldSpace worldSpace) {
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
}
