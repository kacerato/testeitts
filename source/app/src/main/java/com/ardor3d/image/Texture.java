package com.ardor3d.image;

import F2.i;
import com.ardor3d.math.ColorRGBA;
import com.ardor3d.math.Matrix4;
import com.ardor3d.math.Vector4;
import com.ardor3d.math.type.ReadOnlyColorRGBA;
import com.ardor3d.math.type.ReadOnlyMatrix4;
import com.ardor3d.math.type.ReadOnlyVector4;
import com.ardor3d.util.Constants;
import com.ardor3d.util.TextureKey;
import com.ardor3d.util.TextureManager;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.export.Savable;
import java.io.IOException;

public abstract class Texture implements Savable {
    public static boolean DEFAULT_STORE_IMAGE = Constants.storeSavableImages;
    private static final long serialVersionUID = -3642148179543729674L;
    private float _anisotropicFilterPercent;
    private ApplyMode _apply;
    private final ColorRGBA _borderColor;
    private CombinerFunctionAlpha _combineFuncAlpha;
    private CombinerFunctionRGB _combineFuncRGB;
    private CombinerOperandAlpha _combineOp0Alpha;
    private CombinerOperandRGB _combineOp0RGB;
    private CombinerOperandAlpha _combineOp1Alpha;
    private CombinerOperandRGB _combineOp1RGB;
    private CombinerOperandAlpha _combineOp2Alpha;
    private CombinerOperandRGB _combineOp2RGB;
    private CombinerScale _combineScaleAlpha;
    private CombinerScale _combineScaleRGB;
    private CombinerSource _combineSrc0Alpha;
    private CombinerSource _combineSrc0RGB;
    private CombinerSource _combineSrc1Alpha;
    private CombinerSource _combineSrc1RGB;
    private CombinerSource _combineSrc2Alpha;
    private CombinerSource _combineSrc2RGB;
    private final ColorRGBA _constantColor;
    private DepthTextureCompareFunc _depthCompareFunc;
    private DepthTextureCompareMode _depthCompareMode;
    private DepthTextureMode _depthMode;
    private EnvironmentalMapMode _envMapMode;
    private Vector4 _envPlaneQ;
    private Vector4 _envPlaneR;
    private Vector4 _envPlaneS;
    private Vector4 _envPlaneT;
    private boolean _hasBorder;
    private Image _image = null;
    private TextureKey _key;
    private float _lodBias;
    private MagnificationFilter _magnificationFilter;
    private MinificationFilter _minificationFilter;
    private TextureStoreFormat _storeFormat;
    private transient boolean _storeImage;
    private final Matrix4 _texMatrix;

    public enum ApplyMode {
        Replace,
        Decal,
        Modulate,
        Blend,
        Combine,
        Add
    }

    public enum CombinerFunctionAlpha {
        Replace,
        Modulate,
        Add,
        AddSigned,
        Interpolate,
        Subtract
    }

    public enum CombinerFunctionRGB {
        Replace,
        Modulate,
        Add,
        AddSigned,
        Interpolate,
        Subtract,
        Dot3RGB,
        Dot3RGBA
    }

    public enum CombinerOperandAlpha {
        SourceAlpha,
        OneMinusSourceAlpha
    }

    public enum CombinerOperandRGB {
        SourceColor,
        OneMinusSourceColor,
        SourceAlpha,
        OneMinusSourceAlpha
    }

    public enum CombinerScale {
        One(1.0f),
        Two(2.0f),
        Four(4.0f);

        private float scale;

        CombinerScale(float f10) {
            this.scale = f10;
        }

        public float floatValue() {
            return this.scale;
        }
    }

    public enum CombinerSource {
        Previous,
        Constant,
        PrimaryColor,
        CurrentTexture,
        TextureUnit0,
        TextureUnit1,
        TextureUnit2,
        TextureUnit3,
        TextureUnit4,
        TextureUnit5,
        TextureUnit6,
        TextureUnit7,
        TextureUnit8,
        TextureUnit9,
        TextureUnit10,
        TextureUnit11,
        TextureUnit12,
        TextureUnit13,
        TextureUnit14,
        TextureUnit15,
        TextureUnit16,
        TextureUnit17,
        TextureUnit18,
        TextureUnit19,
        TextureUnit20,
        TextureUnit21,
        TextureUnit22,
        TextureUnit23,
        TextureUnit24,
        TextureUnit25,
        TextureUnit26,
        TextureUnit27,
        TextureUnit28,
        TextureUnit29,
        TextureUnit30,
        TextureUnit31
    }

    public enum DepthTextureCompareFunc {
        LessThanEqual,
        GreaterThanEqual
    }

    public enum DepthTextureCompareMode {
        None,
        RtoTexture
    }

    public enum DepthTextureMode {
        Luminance,
        Alpha,
        Intensity
    }

    public enum EnvironmentalMapMode {
        None,
        EyeLinear,
        ObjectLinear,
        SphereMap,
        NormalMap,
        ReflectionMap
    }

    public enum MagnificationFilter {
        NearestNeighbor,
        Bilinear
    }

    public enum MinificationFilter {
        NearestNeighborNoMipMaps(false),
        BilinearNoMipMaps(false),
        NearestNeighborNearestMipMap(true),
        BilinearNearestMipMap(true),
        NearestNeighborLinearMipMap(true),
        Trilinear(true);

        private boolean _usesMipMapLevels;

        MinificationFilter(boolean z10) {
            this._usesMipMapLevels = z10;
        }

        public boolean usesMipMapLevels() {
            return this._usesMipMapLevels;
        }
    }

    public enum Type {
        OneDimensional,
        TwoDimensional,
        ThreeDimensional,
        CubeMap,
        Rectangle
    }

    public enum WrapAxis {
        S,
        T,
        R
    }

    public enum WrapMode {
        Repeat,
        MirroredRepeat,
        Clamp,
        MirrorClamp,
        BorderClamp,
        MirrorBorderClamp,
        EdgeClamp,
        MirrorEdgeClamp
    }

    public Texture() {
        ReadOnlyColorRGBA readOnlyColorRGBA = ColorRGBA.BLACK_NO_ALPHA;
        this._constantColor = new ColorRGBA(readOnlyColorRGBA);
        this._borderColor = new ColorRGBA(readOnlyColorRGBA);
        this._texMatrix = new Matrix4();
        this._anisotropicFilterPercent = 0.0f;
        this._lodBias = 0.0f;
        this._apply = ApplyMode.Modulate;
        this._minificationFilter = MinificationFilter.NearestNeighborNoMipMaps;
        this._magnificationFilter = MagnificationFilter.Bilinear;
        this._envMapMode = EnvironmentalMapMode.None;
        this._envPlaneS = null;
        this._envPlaneT = null;
        this._envPlaneR = null;
        this._envPlaneQ = null;
        this._hasBorder = false;
        this._combineFuncRGB = CombinerFunctionRGB.Modulate;
        CombinerSource combinerSource = CombinerSource.CurrentTexture;
        this._combineSrc0RGB = combinerSource;
        CombinerSource combinerSource2 = CombinerSource.Previous;
        this._combineSrc1RGB = combinerSource2;
        CombinerSource combinerSource3 = CombinerSource.Constant;
        this._combineSrc2RGB = combinerSource3;
        CombinerOperandRGB combinerOperandRGB = CombinerOperandRGB.SourceColor;
        this._combineOp0RGB = combinerOperandRGB;
        this._combineOp1RGB = combinerOperandRGB;
        this._combineOp2RGB = CombinerOperandRGB.SourceAlpha;
        CombinerScale combinerScale = CombinerScale.One;
        this._combineScaleRGB = combinerScale;
        this._combineFuncAlpha = CombinerFunctionAlpha.Modulate;
        this._combineSrc0Alpha = combinerSource;
        this._combineSrc1Alpha = combinerSource2;
        this._combineSrc2Alpha = combinerSource3;
        CombinerOperandAlpha combinerOperandAlpha = CombinerOperandAlpha.SourceAlpha;
        this._combineOp0Alpha = combinerOperandAlpha;
        this._combineOp1Alpha = combinerOperandAlpha;
        this._combineOp2Alpha = combinerOperandAlpha;
        this._combineScaleAlpha = combinerScale;
        this._key = null;
        this._storeFormat = TextureStoreFormat.RGBA8;
        this._storeImage = DEFAULT_STORE_IMAGE;
        this._depthCompareMode = DepthTextureCompareMode.None;
        this._depthCompareFunc = DepthTextureCompareFunc.GreaterThanEqual;
        this._depthMode = DepthTextureMode.Intensity;
    }

    public abstract Texture createSimpleClone();

    public Texture createSimpleClone(Texture texture) {
        texture.setAnisotropicFilterPercent(this._anisotropicFilterPercent);
        texture.setApply(this._apply);
        texture.setConstantColor(this._constantColor);
        texture.setBorderColor(this._constantColor);
        texture.setCombineFuncAlpha(this._combineFuncAlpha);
        texture.setCombineFuncRGB(this._combineFuncRGB);
        texture.setCombineOp0Alpha(this._combineOp0Alpha);
        texture.setCombineOp0RGB(this._combineOp0RGB);
        texture.setCombineOp1Alpha(this._combineOp1Alpha);
        texture.setCombineOp1RGB(this._combineOp1RGB);
        texture.setCombineOp2Alpha(this._combineOp2Alpha);
        texture.setCombineOp2RGB(this._combineOp2RGB);
        texture.setCombineScaleAlpha(this._combineScaleAlpha);
        texture.setCombineScaleRGB(this._combineScaleRGB);
        texture.setCombineSrc0Alpha(this._combineSrc0Alpha);
        texture.setCombineSrc0RGB(this._combineSrc0RGB);
        texture.setCombineSrc1Alpha(this._combineSrc1Alpha);
        texture.setCombineSrc1RGB(this._combineSrc1RGB);
        texture.setCombineSrc2Alpha(this._combineSrc2Alpha);
        texture.setCombineSrc2RGB(this._combineSrc2RGB);
        texture.setDepthCompareFunc(this._depthCompareFunc);
        texture.setDepthCompareMode(this._depthCompareMode);
        texture.setDepthMode(this._depthMode);
        texture.setEnvironmentalMapMode(this._envMapMode);
        texture.setEnvPlaneS(this._envPlaneS);
        texture.setEnvPlaneT(this._envPlaneT);
        texture.setEnvPlaneR(this._envPlaneR);
        texture.setEnvPlaneQ(this._envPlaneQ);
        texture.setHasBorder(this._hasBorder);
        texture.setTextureStoreFormat(this._storeFormat);
        texture.setImage(this._image);
        texture.setLodBias(this._lodBias);
        texture.setMinificationFilter(this._minificationFilter);
        texture.setMagnificationFilter(this._magnificationFilter);
        texture.setStoreImage(this._storeImage);
        texture.setTextureMatrix(this._texMatrix);
        if (getTextureKey() != null) {
            texture.setTextureKey(getTextureKey());
        }
        return texture;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Texture)) {
            return false;
        }
        Texture texture = (Texture) obj;
        if (getImage() == null || getImage().equals(texture.getImage())) {
            return (getImage() != null || texture.getImage() == null) && getAnisotropicFilterPercent() == texture.getAnisotropicFilterPercent() && getApply() == texture.getApply() && getCombineFuncAlpha() == texture.getCombineFuncAlpha() && getCombineFuncRGB() == texture.getCombineFuncRGB() && getCombineOp0Alpha() == texture.getCombineOp0Alpha() && getCombineOp1RGB() == texture.getCombineOp1RGB() && getCombineOp2Alpha() == texture.getCombineOp2Alpha() && getCombineOp2RGB() == texture.getCombineOp2RGB() && getCombineScaleAlpha() == texture.getCombineScaleAlpha() && getCombineScaleRGB() == texture.getCombineScaleRGB() && getCombineSrc0Alpha() == texture.getCombineSrc0Alpha() && getCombineSrc0RGB() == texture.getCombineSrc0RGB() && getCombineSrc1Alpha() == texture.getCombineSrc1Alpha() && getCombineSrc1RGB() == texture.getCombineSrc1RGB() && getCombineSrc2Alpha() == texture.getCombineSrc2Alpha() && getCombineSrc2RGB() == texture.getCombineSrc2RGB() && getEnvironmentalMapMode() == texture.getEnvironmentalMapMode() && getMagnificationFilter() == texture.getMagnificationFilter() && getMinificationFilter() == texture.getMinificationFilter() && this._constantColor.equals(texture._constantColor) && this._borderColor.equals(texture._borderColor);
        }
        return false;
    }

    public float getAnisotropicFilterPercent() {
        return this._anisotropicFilterPercent;
    }

    public ApplyMode getApply() {
        return this._apply;
    }

    public ReadOnlyColorRGBA getBorderColor() {
        return this._borderColor;
    }

    @Override
    public Class<? extends Texture> getClassTag() {
        return getClass();
    }

    public CombinerFunctionAlpha getCombineFuncAlpha() {
        return this._combineFuncAlpha;
    }

    public CombinerFunctionRGB getCombineFuncRGB() {
        return this._combineFuncRGB;
    }

    public CombinerOperandAlpha getCombineOp0Alpha() {
        return this._combineOp0Alpha;
    }

    public CombinerOperandRGB getCombineOp0RGB() {
        return this._combineOp0RGB;
    }

    public CombinerOperandAlpha getCombineOp1Alpha() {
        return this._combineOp1Alpha;
    }

    public CombinerOperandRGB getCombineOp1RGB() {
        return this._combineOp1RGB;
    }

    public CombinerOperandAlpha getCombineOp2Alpha() {
        return this._combineOp2Alpha;
    }

    public CombinerOperandRGB getCombineOp2RGB() {
        return this._combineOp2RGB;
    }

    public CombinerScale getCombineScaleAlpha() {
        return this._combineScaleAlpha;
    }

    public CombinerScale getCombineScaleRGB() {
        return this._combineScaleRGB;
    }

    public CombinerSource getCombineSrc0Alpha() {
        return this._combineSrc0Alpha;
    }

    public CombinerSource getCombineSrc0RGB() {
        return this._combineSrc0RGB;
    }

    public CombinerSource getCombineSrc1Alpha() {
        return this._combineSrc1Alpha;
    }

    public CombinerSource getCombineSrc1RGB() {
        return this._combineSrc1RGB;
    }

    public CombinerSource getCombineSrc2Alpha() {
        return this._combineSrc2Alpha;
    }

    public CombinerSource getCombineSrc2RGB() {
        return this._combineSrc2RGB;
    }

    public ReadOnlyColorRGBA getConstantColor() {
        return this._constantColor;
    }

    public DepthTextureCompareFunc getDepthCompareFunc() {
        return this._depthCompareFunc;
    }

    public DepthTextureCompareMode getDepthCompareMode() {
        return this._depthCompareMode;
    }

    public DepthTextureMode getDepthMode() {
        return this._depthMode;
    }

    public ReadOnlyVector4 getEnvPlaneQ() {
        return this._envPlaneQ;
    }

    public ReadOnlyVector4 getEnvPlaneR() {
        return this._envPlaneR;
    }

    public ReadOnlyVector4 getEnvPlaneS() {
        return this._envPlaneS;
    }

    public ReadOnlyVector4 getEnvPlaneT() {
        return this._envPlaneT;
    }

    public EnvironmentalMapMode getEnvironmentalMapMode() {
        return this._envMapMode;
    }

    public Image getImage() {
        return this._image;
    }

    public float getLodBias() {
        return this._lodBias;
    }

    public MagnificationFilter getMagnificationFilter() {
        return this._magnificationFilter;
    }

    public MinificationFilter getMinificationFilter() {
        return this._minificationFilter;
    }

    public int getTextureIdForContext(Object obj) {
        return this._key.getTextureIdForContext(obj);
    }

    public TextureKey getTextureKey() {
        return this._key;
    }

    public ReadOnlyMatrix4 getTextureMatrix() {
        return this._texMatrix;
    }

    public TextureStoreFormat getTextureStoreFormat() {
        return this._storeFormat;
    }

    public abstract Type getType();

    public abstract WrapMode getWrap(WrapAxis wrapAxis);

    public boolean hasBorder() {
        return this._hasBorder;
    }

    public boolean isDirty(Object obj) {
        return this._key.isDirty(obj);
    }

    public boolean isStoreImage() {
        return this._storeImage;
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        this._minificationFilter = (MinificationFilter) inputCapsule.readEnum("minificationFilter", MinificationFilter.class, MinificationFilter.NearestNeighborNoMipMaps);
        Image image = (Image) inputCapsule.readSavable(i.f6419n, null);
        this._image = image;
        if (image == null) {
            TextureKey textureKey = (TextureKey) inputCapsule.readSavable("textureKey", null);
            TextureKey key = TextureKey.getKey(textureKey.getSource(), textureKey.isFlipped(), textureKey.getFormat(), textureKey.getMinificationFilter());
            this._key = key;
            if (key != null && key.getSource() != null) {
                TextureManager.loadFromKey(this._key, null, this);
            }
        }
        ColorRGBA colorRGBA = this._constantColor;
        ReadOnlyColorRGBA readOnlyColorRGBA = ColorRGBA.BLACK_NO_ALPHA;
        colorRGBA.set((ColorRGBA) inputCapsule.readSavable("constantColor", new ColorRGBA(readOnlyColorRGBA)));
        this._borderColor.set((ColorRGBA) inputCapsule.readSavable("borderColor", new ColorRGBA(readOnlyColorRGBA)));
        this._texMatrix.set((Matrix4) inputCapsule.readSavable("texMatrix", new Matrix4(Matrix4.IDENTITY)));
        this._hasBorder = inputCapsule.readBoolean("hasBorder", false);
        this._anisotropicFilterPercent = inputCapsule.readFloat("anisotropicFilterPercent", 0.0f);
        this._lodBias = inputCapsule.readFloat("lodBias", 0.0f);
        this._magnificationFilter = (MagnificationFilter) inputCapsule.readEnum("magnificationFilter", MagnificationFilter.class, MagnificationFilter.Bilinear);
        this._apply = (ApplyMode) inputCapsule.readEnum("apply", ApplyMode.class, ApplyMode.Modulate);
        this._envMapMode = (EnvironmentalMapMode) inputCapsule.readEnum("envMapMode", EnvironmentalMapMode.class, EnvironmentalMapMode.None);
        this._envPlaneS = (Vector4) inputCapsule.readSavable("envPlaneS", null);
        this._envPlaneT = (Vector4) inputCapsule.readSavable("envPlaneT", null);
        this._envPlaneR = (Vector4) inputCapsule.readSavable("envPlaneR", null);
        this._envPlaneQ = (Vector4) inputCapsule.readSavable("envPlaneQ", null);
        this._combineFuncRGB = (CombinerFunctionRGB) inputCapsule.readEnum("combineFuncRGB", CombinerFunctionRGB.class, CombinerFunctionRGB.Replace);
        this._combineFuncAlpha = (CombinerFunctionAlpha) inputCapsule.readEnum("combineFuncAlpha", CombinerFunctionAlpha.class, CombinerFunctionAlpha.Replace);
        CombinerSource combinerSource = CombinerSource.CurrentTexture;
        this._combineSrc0RGB = (CombinerSource) inputCapsule.readEnum("combineSrc0RGB", CombinerSource.class, combinerSource);
        CombinerSource combinerSource2 = CombinerSource.Previous;
        this._combineSrc1RGB = (CombinerSource) inputCapsule.readEnum("combineSrc1RGB", CombinerSource.class, combinerSource2);
        CombinerSource combinerSource3 = CombinerSource.Constant;
        this._combineSrc2RGB = (CombinerSource) inputCapsule.readEnum("combineSrc2RGB", CombinerSource.class, combinerSource3);
        this._combineSrc0Alpha = (CombinerSource) inputCapsule.readEnum("combineSrc0Alpha", CombinerSource.class, combinerSource);
        this._combineSrc1Alpha = (CombinerSource) inputCapsule.readEnum("combineSrc1Alpha", CombinerSource.class, combinerSource2);
        this._combineSrc2Alpha = (CombinerSource) inputCapsule.readEnum("combineSrc2Alpha", CombinerSource.class, combinerSource3);
        CombinerOperandRGB combinerOperandRGB = CombinerOperandRGB.SourceColor;
        this._combineOp0RGB = (CombinerOperandRGB) inputCapsule.readEnum("combineOp0RGB", CombinerOperandRGB.class, combinerOperandRGB);
        this._combineOp1RGB = (CombinerOperandRGB) inputCapsule.readEnum("combineOp1RGB", CombinerOperandRGB.class, combinerOperandRGB);
        this._combineOp2RGB = (CombinerOperandRGB) inputCapsule.readEnum("combineOp2RGB", CombinerOperandRGB.class, CombinerOperandRGB.SourceAlpha);
        CombinerOperandAlpha combinerOperandAlpha = CombinerOperandAlpha.SourceAlpha;
        this._combineOp0Alpha = (CombinerOperandAlpha) inputCapsule.readEnum("combineOp0Alpha", CombinerOperandAlpha.class, combinerOperandAlpha);
        this._combineOp1Alpha = (CombinerOperandAlpha) inputCapsule.readEnum("combineOp1Alpha", CombinerOperandAlpha.class, combinerOperandAlpha);
        this._combineOp2Alpha = (CombinerOperandAlpha) inputCapsule.readEnum("combineOp2Alpha", CombinerOperandAlpha.class, combinerOperandAlpha);
        CombinerScale combinerScale = CombinerScale.One;
        this._combineScaleRGB = (CombinerScale) inputCapsule.readEnum("combineScaleRGB", CombinerScale.class, combinerScale);
        this._combineScaleAlpha = (CombinerScale) inputCapsule.readEnum("combineScaleAlpha", CombinerScale.class, combinerScale);
        this._storeFormat = (TextureStoreFormat) inputCapsule.readEnum("storeFormat", TextureStoreFormat.class, TextureStoreFormat.RGBA8);
    }

    public void removeFromIdCache(Object obj) {
        this._key.removeFromIdCache(obj);
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x000b, code lost:
    
        if (r3 < 0.0f) goto L4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void setAnisotropicFilterPercent(float f10) {
        float f11 = f10 <= 1.0f ? 0.0f : 1.0f;
        f10 = f11;
        this._anisotropicFilterPercent = f10;
    }

    public void setApply(ApplyMode applyMode) {
        if (applyMode == null) {
            throw new IllegalArgumentException("apply can not be null.");
        }
        this._apply = applyMode;
    }

    public void setBorderColor(ReadOnlyColorRGBA readOnlyColorRGBA) {
        this._borderColor.set(readOnlyColorRGBA);
    }

    public void setCombineFuncAlpha(CombinerFunctionAlpha combinerFunctionAlpha) {
        if (combinerFunctionAlpha == null) {
            throw new IllegalArgumentException("invalid CombinerFunctionAlpha: null");
        }
        this._combineFuncAlpha = combinerFunctionAlpha;
    }

    public void setCombineFuncRGB(CombinerFunctionRGB combinerFunctionRGB) {
        if (combinerFunctionRGB == null) {
            throw new IllegalArgumentException("invalid CombinerFunctionRGB: null");
        }
        this._combineFuncRGB = combinerFunctionRGB;
    }

    public void setCombineOp0Alpha(CombinerOperandAlpha combinerOperandAlpha) {
        if (combinerOperandAlpha == null) {
            throw new IllegalArgumentException("invalid CombinerOperandAlpha: null");
        }
        this._combineOp0Alpha = combinerOperandAlpha;
    }

    public void setCombineOp0RGB(CombinerOperandRGB combinerOperandRGB) {
        if (combinerOperandRGB == null) {
            throw new IllegalArgumentException("invalid CombinerOperandRGB: null");
        }
        this._combineOp0RGB = combinerOperandRGB;
    }

    public void setCombineOp1Alpha(CombinerOperandAlpha combinerOperandAlpha) {
        if (combinerOperandAlpha == null) {
            throw new IllegalArgumentException("invalid CombinerOperandAlpha: null");
        }
        this._combineOp1Alpha = combinerOperandAlpha;
    }

    public void setCombineOp1RGB(CombinerOperandRGB combinerOperandRGB) {
        if (combinerOperandRGB == null) {
            throw new IllegalArgumentException("invalid CombinerOperandRGB: null");
        }
        this._combineOp1RGB = combinerOperandRGB;
    }

    public void setCombineOp2Alpha(CombinerOperandAlpha combinerOperandAlpha) {
        if (combinerOperandAlpha == null) {
            throw new IllegalArgumentException("invalid CombinerOperandAlpha: null");
        }
        this._combineOp2Alpha = combinerOperandAlpha;
    }

    public void setCombineOp2RGB(CombinerOperandRGB combinerOperandRGB) {
        if (combinerOperandRGB == null) {
            throw new IllegalArgumentException("invalid CombinerOperandRGB: null");
        }
        this._combineOp2RGB = combinerOperandRGB;
    }

    public void setCombineScaleAlpha(CombinerScale combinerScale) {
        if (combinerScale == null) {
            throw new IllegalArgumentException("invalid CombinerScale: null");
        }
        this._combineScaleAlpha = combinerScale;
    }

    public void setCombineScaleRGB(CombinerScale combinerScale) {
        if (combinerScale == null) {
            throw new IllegalArgumentException("invalid CombinerScale: null");
        }
        this._combineScaleRGB = combinerScale;
    }

    public void setCombineSrc0Alpha(CombinerSource combinerSource) {
        if (combinerSource == null) {
            throw new IllegalArgumentException("invalid CombinerSource: null");
        }
        this._combineSrc0Alpha = combinerSource;
    }

    public void setCombineSrc0RGB(CombinerSource combinerSource) {
        if (combinerSource == null) {
            throw new IllegalArgumentException("invalid CombinerSource: null");
        }
        this._combineSrc0RGB = combinerSource;
    }

    public void setCombineSrc1Alpha(CombinerSource combinerSource) {
        if (combinerSource == null) {
            throw new IllegalArgumentException("invalid CombinerSource: null");
        }
        this._combineSrc1Alpha = combinerSource;
    }

    public void setCombineSrc1RGB(CombinerSource combinerSource) {
        if (combinerSource == null) {
            throw new IllegalArgumentException("invalid CombinerSource: null");
        }
        this._combineSrc1RGB = combinerSource;
    }

    public void setCombineSrc2Alpha(CombinerSource combinerSource) {
        if (combinerSource == null) {
            throw new IllegalArgumentException("invalid CombinerSource: null");
        }
        this._combineSrc2Alpha = combinerSource;
    }

    public void setCombineSrc2RGB(CombinerSource combinerSource) {
        if (combinerSource == null) {
            throw new IllegalArgumentException("invalid CombinerSource: null");
        }
        this._combineSrc2RGB = combinerSource;
    }

    public void setConstantColor(ReadOnlyColorRGBA readOnlyColorRGBA) {
        this._constantColor.set(readOnlyColorRGBA);
    }

    public void setDepthCompareFunc(DepthTextureCompareFunc depthTextureCompareFunc) {
        this._depthCompareFunc = depthTextureCompareFunc;
    }

    public void setDepthCompareMode(DepthTextureCompareMode depthTextureCompareMode) {
        this._depthCompareMode = depthTextureCompareMode;
    }

    public void setDepthMode(DepthTextureMode depthTextureMode) {
        this._depthMode = depthTextureMode;
    }

    public void setDirty() {
        TextureKey textureKey = this._key;
        if (textureKey != null) {
            textureKey.setDirty();
        }
    }

    public void setEnvPlaneQ(ReadOnlyVector4 readOnlyVector4) {
        if (readOnlyVector4 == null) {
            this._envPlaneQ = null;
            return;
        }
        Vector4 vector4 = this._envPlaneQ;
        if (vector4 == null) {
            this._envPlaneQ = new Vector4(readOnlyVector4);
        } else {
            vector4.set(readOnlyVector4);
        }
    }

    public void setEnvPlaneR(ReadOnlyVector4 readOnlyVector4) {
        if (readOnlyVector4 == null) {
            this._envPlaneR = null;
            return;
        }
        Vector4 vector4 = this._envPlaneR;
        if (vector4 == null) {
            this._envPlaneR = new Vector4(readOnlyVector4);
        } else {
            vector4.set(readOnlyVector4);
        }
    }

    public void setEnvPlaneS(ReadOnlyVector4 readOnlyVector4) {
        if (readOnlyVector4 == null) {
            this._envPlaneS = null;
            return;
        }
        Vector4 vector4 = this._envPlaneS;
        if (vector4 == null) {
            this._envPlaneS = new Vector4(readOnlyVector4);
        } else {
            vector4.set(readOnlyVector4);
        }
    }

    public void setEnvPlaneT(ReadOnlyVector4 readOnlyVector4) {
        if (readOnlyVector4 == null) {
            this._envPlaneT = null;
            return;
        }
        Vector4 vector4 = this._envPlaneT;
        if (vector4 == null) {
            this._envPlaneT = new Vector4(readOnlyVector4);
        } else {
            vector4.set(readOnlyVector4);
        }
    }

    public void setEnvironmentalMapMode(EnvironmentalMapMode environmentalMapMode) {
        if (environmentalMapMode == null) {
            throw new IllegalArgumentException("invalid EnvironmentalMapMode: null");
        }
        this._envMapMode = environmentalMapMode;
    }

    public void setHasBorder(boolean z10) {
        this._hasBorder = z10;
    }

    public void setImage(Image image) {
        this._image = image;
        setDirty();
    }

    public void setLodBias(float f10) {
        this._lodBias = f10;
    }

    public void setMagnificationFilter(MagnificationFilter magnificationFilter) {
        if (magnificationFilter == null) {
            throw new IllegalArgumentException("magnificationFilter can not be null.");
        }
        this._magnificationFilter = magnificationFilter;
    }

    public void setMinificationFilter(MinificationFilter minificationFilter) {
        if (minificationFilter == null) {
            throw new IllegalArgumentException("minificationFilter can not be null.");
        }
        this._minificationFilter = minificationFilter;
    }

    public void setStoreImage(boolean z10) {
        this._storeImage = z10;
    }

    public void setTextureIdForContext(Object obj, int i10) {
        this._key.setTextureIdForContext(obj, i10);
    }

    public void setTextureKey(TextureKey textureKey) {
        this._key = textureKey;
    }

    public void setTextureMatrix(ReadOnlyMatrix4 readOnlyMatrix4) {
        this._texMatrix.set(readOnlyMatrix4);
    }

    public void setTextureStoreFormat(TextureStoreFormat textureStoreFormat) {
        this._storeFormat = textureStoreFormat;
    }

    public abstract void setWrap(WrapAxis wrapAxis, WrapMode wrapMode);

    public abstract void setWrap(WrapMode wrapMode);

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        if (this._storeImage) {
            outputCapsule.write(this._image, i.f6419n, (Savable) null);
        }
        ColorRGBA colorRGBA = this._constantColor;
        ReadOnlyColorRGBA readOnlyColorRGBA = ColorRGBA.BLACK_NO_ALPHA;
        outputCapsule.write(colorRGBA, "constantColor", new ColorRGBA(readOnlyColorRGBA));
        outputCapsule.write(this._borderColor, "borderColor", new ColorRGBA(readOnlyColorRGBA));
        outputCapsule.write(this._texMatrix, "texMatrix", new Matrix4(Matrix4.IDENTITY));
        outputCapsule.write(this._hasBorder, "hasBorder", false);
        outputCapsule.write(this._anisotropicFilterPercent, "anisotropicFilterPercent", 0.0f);
        outputCapsule.write(this._lodBias, "lodBias", 0.0f);
        outputCapsule.write(this._minificationFilter, "minificationFilter", MinificationFilter.NearestNeighborNoMipMaps);
        outputCapsule.write(this._magnificationFilter, "magnificationFilter", MagnificationFilter.Bilinear);
        outputCapsule.write(this._apply, "apply", ApplyMode.Modulate);
        outputCapsule.write(this._envMapMode, "envMapMode", EnvironmentalMapMode.None);
        outputCapsule.write(this._envPlaneS, "envPlaneS", (Savable) null);
        outputCapsule.write(this._envPlaneT, "envPlaneT", (Savable) null);
        outputCapsule.write(this._envPlaneR, "envPlaneR", (Savable) null);
        outputCapsule.write(this._envPlaneQ, "envPlaneQ", (Savable) null);
        outputCapsule.write(this._combineFuncRGB, "combineFuncRGB", CombinerFunctionRGB.Replace);
        outputCapsule.write(this._combineFuncAlpha, "combineFuncAlpha", CombinerFunctionAlpha.Replace);
        CombinerSource combinerSource = this._combineSrc0RGB;
        CombinerSource combinerSource2 = CombinerSource.CurrentTexture;
        outputCapsule.write(combinerSource, "combineSrc0RGB", combinerSource2);
        CombinerSource combinerSource3 = this._combineSrc1RGB;
        CombinerSource combinerSource4 = CombinerSource.Previous;
        outputCapsule.write(combinerSource3, "combineSrc1RGB", combinerSource4);
        CombinerSource combinerSource5 = this._combineSrc2RGB;
        CombinerSource combinerSource6 = CombinerSource.Constant;
        outputCapsule.write(combinerSource5, "combineSrc2RGB", combinerSource6);
        outputCapsule.write(this._combineSrc0Alpha, "combineSrc0Alpha", combinerSource2);
        outputCapsule.write(this._combineSrc1Alpha, "combineSrc1Alpha", combinerSource4);
        outputCapsule.write(this._combineSrc2Alpha, "combineSrc2Alpha", combinerSource6);
        CombinerOperandRGB combinerOperandRGB = this._combineOp0RGB;
        CombinerOperandRGB combinerOperandRGB2 = CombinerOperandRGB.SourceColor;
        outputCapsule.write(combinerOperandRGB, "combineOp0RGB", combinerOperandRGB2);
        outputCapsule.write(this._combineOp1RGB, "combineOp1RGB", combinerOperandRGB2);
        outputCapsule.write(this._combineOp2RGB, "combineOp2RGB", CombinerOperandRGB.SourceAlpha);
        CombinerOperandAlpha combinerOperandAlpha = this._combineOp0Alpha;
        CombinerOperandAlpha combinerOperandAlpha2 = CombinerOperandAlpha.SourceAlpha;
        outputCapsule.write(combinerOperandAlpha, "combineOp0Alpha", combinerOperandAlpha2);
        outputCapsule.write(this._combineOp1Alpha, "combineOp1Alpha", combinerOperandAlpha2);
        outputCapsule.write(this._combineOp2Alpha, "combineOp2Alpha", combinerOperandAlpha2);
        CombinerScale combinerScale = this._combineScaleRGB;
        CombinerScale combinerScale2 = CombinerScale.One;
        outputCapsule.write(combinerScale, "combineScaleRGB", combinerScale2);
        outputCapsule.write(this._combineScaleAlpha, "combineScaleAlpha", combinerScale2);
        outputCapsule.write(this._storeFormat, "storeFormat", TextureStoreFormat.RGBA8);
        if (this._storeImage) {
            return;
        }
        outputCapsule.write(this._key, "textureKey", (Savable) null);
    }

    public void setBorderColor(float f10, float f11, float f12, float f13) {
        this._borderColor.set(f10, f11, f12, f13);
    }

    public void setConstantColor(float f10, float f11, float f12, float f13) {
        this._constantColor.set(f10, f11, f12, f13);
    }
}
