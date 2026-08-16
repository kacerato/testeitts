.class public abstract Lcom/ardor3d/image/Texture;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/util/export/Savable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ardor3d/image/Texture$DepthTextureMode;,
        Lcom/ardor3d/image/Texture$DepthTextureCompareFunc;,
        Lcom/ardor3d/image/Texture$DepthTextureCompareMode;,
        Lcom/ardor3d/image/Texture$CombinerScale;,
        Lcom/ardor3d/image/Texture$CombinerOperandAlpha;,
        Lcom/ardor3d/image/Texture$CombinerOperandRGB;,
        Lcom/ardor3d/image/Texture$CombinerSource;,
        Lcom/ardor3d/image/Texture$CombinerFunctionAlpha;,
        Lcom/ardor3d/image/Texture$CombinerFunctionRGB;,
        Lcom/ardor3d/image/Texture$EnvironmentalMapMode;,
        Lcom/ardor3d/image/Texture$ApplyMode;,
        Lcom/ardor3d/image/Texture$WrapAxis;,
        Lcom/ardor3d/image/Texture$WrapMode;,
        Lcom/ardor3d/image/Texture$MagnificationFilter;,
        Lcom/ardor3d/image/Texture$MinificationFilter;,
        Lcom/ardor3d/image/Texture$Type;
    }
.end annotation


# static fields
.field public static DEFAULT_STORE_IMAGE:Z = false

.field private static final serialVersionUID:J = -0x328b8278ed0a260aL


# instance fields
.field private _anisotropicFilterPercent:F

.field private _apply:Lcom/ardor3d/image/Texture$ApplyMode;

.field private final _borderColor:Lcom/ardor3d/math/ColorRGBA;

.field private _combineFuncAlpha:Lcom/ardor3d/image/Texture$CombinerFunctionAlpha;

.field private _combineFuncRGB:Lcom/ardor3d/image/Texture$CombinerFunctionRGB;

.field private _combineOp0Alpha:Lcom/ardor3d/image/Texture$CombinerOperandAlpha;

.field private _combineOp0RGB:Lcom/ardor3d/image/Texture$CombinerOperandRGB;

.field private _combineOp1Alpha:Lcom/ardor3d/image/Texture$CombinerOperandAlpha;

.field private _combineOp1RGB:Lcom/ardor3d/image/Texture$CombinerOperandRGB;

.field private _combineOp2Alpha:Lcom/ardor3d/image/Texture$CombinerOperandAlpha;

.field private _combineOp2RGB:Lcom/ardor3d/image/Texture$CombinerOperandRGB;

.field private _combineScaleAlpha:Lcom/ardor3d/image/Texture$CombinerScale;

.field private _combineScaleRGB:Lcom/ardor3d/image/Texture$CombinerScale;

.field private _combineSrc0Alpha:Lcom/ardor3d/image/Texture$CombinerSource;

.field private _combineSrc0RGB:Lcom/ardor3d/image/Texture$CombinerSource;

.field private _combineSrc1Alpha:Lcom/ardor3d/image/Texture$CombinerSource;

.field private _combineSrc1RGB:Lcom/ardor3d/image/Texture$CombinerSource;

.field private _combineSrc2Alpha:Lcom/ardor3d/image/Texture$CombinerSource;

.field private _combineSrc2RGB:Lcom/ardor3d/image/Texture$CombinerSource;

.field private final _constantColor:Lcom/ardor3d/math/ColorRGBA;

.field private _depthCompareFunc:Lcom/ardor3d/image/Texture$DepthTextureCompareFunc;

.field private _depthCompareMode:Lcom/ardor3d/image/Texture$DepthTextureCompareMode;

.field private _depthMode:Lcom/ardor3d/image/Texture$DepthTextureMode;

.field private _envMapMode:Lcom/ardor3d/image/Texture$EnvironmentalMapMode;

.field private _envPlaneQ:Lcom/ardor3d/math/Vector4;

.field private _envPlaneR:Lcom/ardor3d/math/Vector4;

.field private _envPlaneS:Lcom/ardor3d/math/Vector4;

.field private _envPlaneT:Lcom/ardor3d/math/Vector4;

.field private _hasBorder:Z

.field private _image:Lcom/ardor3d/image/Image;

.field private _key:Lcom/ardor3d/util/TextureKey;

.field private _lodBias:F

.field private _magnificationFilter:Lcom/ardor3d/image/Texture$MagnificationFilter;

.field private _minificationFilter:Lcom/ardor3d/image/Texture$MinificationFilter;

.field private _storeFormat:Lcom/ardor3d/image/TextureStoreFormat;

.field private transient _storeImage:Z

.field private final _texMatrix:Lcom/ardor3d/math/Matrix4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/ardor3d/util/Constants;->storeSavableImages:Z

    sput-boolean v0, Lcom/ardor3d/image/Texture;->DEFAULT_STORE_IMAGE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ardor3d/image/Texture;->_image:Lcom/ardor3d/image/Image;

    new-instance v1, Lcom/ardor3d/math/ColorRGBA;

    sget-object v2, Lcom/ardor3d/math/ColorRGBA;->BLACK_NO_ALPHA:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/ColorRGBA;-><init>(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    iput-object v1, p0, Lcom/ardor3d/image/Texture;->_constantColor:Lcom/ardor3d/math/ColorRGBA;

    new-instance v1, Lcom/ardor3d/math/ColorRGBA;

    invoke-direct {v1, v2}, Lcom/ardor3d/math/ColorRGBA;-><init>(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    iput-object v1, p0, Lcom/ardor3d/image/Texture;->_borderColor:Lcom/ardor3d/math/ColorRGBA;

    new-instance v1, Lcom/ardor3d/math/Matrix4;

    invoke-direct {v1}, Lcom/ardor3d/math/Matrix4;-><init>()V

    iput-object v1, p0, Lcom/ardor3d/image/Texture;->_texMatrix:Lcom/ardor3d/math/Matrix4;

    const/4 v1, 0x0

    iput v1, p0, Lcom/ardor3d/image/Texture;->_anisotropicFilterPercent:F

    iput v1, p0, Lcom/ardor3d/image/Texture;->_lodBias:F

    sget-object v1, Lcom/ardor3d/image/Texture$ApplyMode;->Modulate:Lcom/ardor3d/image/Texture$ApplyMode;

    iput-object v1, p0, Lcom/ardor3d/image/Texture;->_apply:Lcom/ardor3d/image/Texture$ApplyMode;

    sget-object v1, Lcom/ardor3d/image/Texture$MinificationFilter;->NearestNeighborNoMipMaps:Lcom/ardor3d/image/Texture$MinificationFilter;

    iput-object v1, p0, Lcom/ardor3d/image/Texture;->_minificationFilter:Lcom/ardor3d/image/Texture$MinificationFilter;

    sget-object v1, Lcom/ardor3d/image/Texture$MagnificationFilter;->Bilinear:Lcom/ardor3d/image/Texture$MagnificationFilter;

    iput-object v1, p0, Lcom/ardor3d/image/Texture;->_magnificationFilter:Lcom/ardor3d/image/Texture$MagnificationFilter;

    sget-object v1, Lcom/ardor3d/image/Texture$EnvironmentalMapMode;->None:Lcom/ardor3d/image/Texture$EnvironmentalMapMode;

    iput-object v1, p0, Lcom/ardor3d/image/Texture;->_envMapMode:Lcom/ardor3d/image/Texture$EnvironmentalMapMode;

    iput-object v0, p0, Lcom/ardor3d/image/Texture;->_envPlaneS:Lcom/ardor3d/math/Vector4;

    iput-object v0, p0, Lcom/ardor3d/image/Texture;->_envPlaneT:Lcom/ardor3d/math/Vector4;

    iput-object v0, p0, Lcom/ardor3d/image/Texture;->_envPlaneR:Lcom/ardor3d/math/Vector4;

    iput-object v0, p0, Lcom/ardor3d/image/Texture;->_envPlaneQ:Lcom/ardor3d/math/Vector4;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ardor3d/image/Texture;->_hasBorder:Z

    sget-object v1, Lcom/ardor3d/image/Texture$CombinerFunctionRGB;->Modulate:Lcom/ardor3d/image/Texture$CombinerFunctionRGB;

    iput-object v1, p0, Lcom/ardor3d/image/Texture;->_combineFuncRGB:Lcom/ardor3d/image/Texture$CombinerFunctionRGB;

    sget-object v1, Lcom/ardor3d/image/Texture$CombinerSource;->CurrentTexture:Lcom/ardor3d/image/Texture$CombinerSource;

    iput-object v1, p0, Lcom/ardor3d/image/Texture;->_combineSrc0RGB:Lcom/ardor3d/image/Texture$CombinerSource;

    sget-object v2, Lcom/ardor3d/image/Texture$CombinerSource;->Previous:Lcom/ardor3d/image/Texture$CombinerSource;

    iput-object v2, p0, Lcom/ardor3d/image/Texture;->_combineSrc1RGB:Lcom/ardor3d/image/Texture$CombinerSource;

    sget-object v3, Lcom/ardor3d/image/Texture$CombinerSource;->Constant:Lcom/ardor3d/image/Texture$CombinerSource;

    iput-object v3, p0, Lcom/ardor3d/image/Texture;->_combineSrc2RGB:Lcom/ardor3d/image/Texture$CombinerSource;

    sget-object v4, Lcom/ardor3d/image/Texture$CombinerOperandRGB;->SourceColor:Lcom/ardor3d/image/Texture$CombinerOperandRGB;

    iput-object v4, p0, Lcom/ardor3d/image/Texture;->_combineOp0RGB:Lcom/ardor3d/image/Texture$CombinerOperandRGB;

    iput-object v4, p0, Lcom/ardor3d/image/Texture;->_combineOp1RGB:Lcom/ardor3d/image/Texture$CombinerOperandRGB;

    sget-object v4, Lcom/ardor3d/image/Texture$CombinerOperandRGB;->SourceAlpha:Lcom/ardor3d/image/Texture$CombinerOperandRGB;

    iput-object v4, p0, Lcom/ardor3d/image/Texture;->_combineOp2RGB:Lcom/ardor3d/image/Texture$CombinerOperandRGB;

    sget-object v4, Lcom/ardor3d/image/Texture$CombinerScale;->One:Lcom/ardor3d/image/Texture$CombinerScale;

    iput-object v4, p0, Lcom/ardor3d/image/Texture;->_combineScaleRGB:Lcom/ardor3d/image/Texture$CombinerScale;

    sget-object v5, Lcom/ardor3d/image/Texture$CombinerFunctionAlpha;->Modulate:Lcom/ardor3d/image/Texture$CombinerFunctionAlpha;

    iput-object v5, p0, Lcom/ardor3d/image/Texture;->_combineFuncAlpha:Lcom/ardor3d/image/Texture$CombinerFunctionAlpha;

    iput-object v1, p0, Lcom/ardor3d/image/Texture;->_combineSrc0Alpha:Lcom/ardor3d/image/Texture$CombinerSource;

    iput-object v2, p0, Lcom/ardor3d/image/Texture;->_combineSrc1Alpha:Lcom/ardor3d/image/Texture$CombinerSource;

    iput-object v3, p0, Lcom/ardor3d/image/Texture;->_combineSrc2Alpha:Lcom/ardor3d/image/Texture$CombinerSource;

    sget-object v1, Lcom/ardor3d/image/Texture$CombinerOperandAlpha;->SourceAlpha:Lcom/ardor3d/image/Texture$CombinerOperandAlpha;

    iput-object v1, p0, Lcom/ardor3d/image/Texture;->_combineOp0Alpha:Lcom/ardor3d/image/Texture$CombinerOperandAlpha;

    iput-object v1, p0, Lcom/ardor3d/image/Texture;->_combineOp1Alpha:Lcom/ardor3d/image/Texture$CombinerOperandAlpha;

    iput-object v1, p0, Lcom/ardor3d/image/Texture;->_combineOp2Alpha:Lcom/ardor3d/image/Texture$CombinerOperandAlpha;

    iput-object v4, p0, Lcom/ardor3d/image/Texture;->_combineScaleAlpha:Lcom/ardor3d/image/Texture$CombinerScale;

    iput-object v0, p0, Lcom/ardor3d/image/Texture;->_key:Lcom/ardor3d/util/TextureKey;

    sget-object v0, Lcom/ardor3d/image/TextureStoreFormat;->RGBA8:Lcom/ardor3d/image/TextureStoreFormat;

    iput-object v0, p0, Lcom/ardor3d/image/Texture;->_storeFormat:Lcom/ardor3d/image/TextureStoreFormat;

    sget-boolean v0, Lcom/ardor3d/image/Texture;->DEFAULT_STORE_IMAGE:Z

    iput-boolean v0, p0, Lcom/ardor3d/image/Texture;->_storeImage:Z

    sget-object v0, Lcom/ardor3d/image/Texture$DepthTextureCompareMode;->None:Lcom/ardor3d/image/Texture$DepthTextureCompareMode;

    iput-object v0, p0, Lcom/ardor3d/image/Texture;->_depthCompareMode:Lcom/ardor3d/image/Texture$DepthTextureCompareMode;

    sget-object v0, Lcom/ardor3d/image/Texture$DepthTextureCompareFunc;->GreaterThanEqual:Lcom/ardor3d/image/Texture$DepthTextureCompareFunc;

    iput-object v0, p0, Lcom/ardor3d/image/Texture;->_depthCompareFunc:Lcom/ardor3d/image/Texture$DepthTextureCompareFunc;

    sget-object v0, Lcom/ardor3d/image/Texture$DepthTextureMode;->Intensity:Lcom/ardor3d/image/Texture$DepthTextureMode;

    iput-object v0, p0, Lcom/ardor3d/image/Texture;->_depthMode:Lcom/ardor3d/image/Texture$DepthTextureMode;

    return-void
.end method


# virtual methods
.method public abstract createSimpleClone()Lcom/ardor3d/image/Texture;
.end method

.method public createSimpleClone(Lcom/ardor3d/image/Texture;)Lcom/ardor3d/image/Texture;
    .locals 1

    .line 1
    iget v0, p0, Lcom/ardor3d/image/Texture;->_anisotropicFilterPercent:F

    invoke-virtual {p1, v0}, Lcom/ardor3d/image/Texture;->setAnisotropicFilterPercent(F)V

    .line 2
    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_apply:Lcom/ardor3d/image/Texture$ApplyMode;

    invoke-virtual {p1, v0}, Lcom/ardor3d/image/Texture;->setApply(Lcom/ardor3d/image/Texture$ApplyMode;)V

    .line 3
    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_constantColor:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {p1, v0}, Lcom/ardor3d/image/Texture;->setConstantColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    .line 4
    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_constantColor:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {p1, v0}, Lcom/ardor3d/image/Texture;->setBorderColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    .line 5
    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_combineFuncAlpha:Lcom/ardor3d/image/Texture$CombinerFunctionAlpha;

    invoke-virtual {p1, v0}, Lcom/ardor3d/image/Texture;->setCombineFuncAlpha(Lcom/ardor3d/image/Texture$CombinerFunctionAlpha;)V

    .line 6
    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_combineFuncRGB:Lcom/ardor3d/image/Texture$CombinerFunctionRGB;

    invoke-virtual {p1, v0}, Lcom/ardor3d/image/Texture;->setCombineFuncRGB(Lcom/ardor3d/image/Texture$CombinerFunctionRGB;)V

    .line 7
    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_combineOp0Alpha:Lcom/ardor3d/image/Texture$CombinerOperandAlpha;

    invoke-virtual {p1, v0}, Lcom/ardor3d/image/Texture;->setCombineOp0Alpha(Lcom/ardor3d/image/Texture$CombinerOperandAlpha;)V

    .line 8
    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_combineOp0RGB:Lcom/ardor3d/image/Texture$CombinerOperandRGB;

    invoke-virtual {p1, v0}, Lcom/ardor3d/image/Texture;->setCombineOp0RGB(Lcom/ardor3d/image/Texture$CombinerOperandRGB;)V

    .line 9
    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_combineOp1Alpha:Lcom/ardor3d/image/Texture$CombinerOperandAlpha;

    invoke-virtual {p1, v0}, Lcom/ardor3d/image/Texture;->setCombineOp1Alpha(Lcom/ardor3d/image/Texture$CombinerOperandAlpha;)V

    .line 10
    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_combineOp1RGB:Lcom/ardor3d/image/Texture$CombinerOperandRGB;

    invoke-virtual {p1, v0}, Lcom/ardor3d/image/Texture;->setCombineOp1RGB(Lcom/ardor3d/image/Texture$CombinerOperandRGB;)V

    .line 11
    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_combineOp2Alpha:Lcom/ardor3d/image/Texture$CombinerOperandAlpha;

    invoke-virtual {p1, v0}, Lcom/ardor3d/image/Texture;->setCombineOp2Alpha(Lcom/ardor3d/image/Texture$CombinerOperandAlpha;)V

    .line 12
    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_combineOp2RGB:Lcom/ardor3d/image/Texture$CombinerOperandRGB;

    invoke-virtual {p1, v0}, Lcom/ardor3d/image/Texture;->setCombineOp2RGB(Lcom/ardor3d/image/Texture$CombinerOperandRGB;)V

    .line 13
    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_combineScaleAlpha:Lcom/ardor3d/image/Texture$CombinerScale;

    invoke-virtual {p1, v0}, Lcom/ardor3d/image/Texture;->setCombineScaleAlpha(Lcom/ardor3d/image/Texture$CombinerScale;)V

    .line 14
    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_combineScaleRGB:Lcom/ardor3d/image/Texture$CombinerScale;

    invoke-virtual {p1, v0}, Lcom/ardor3d/image/Texture;->setCombineScaleRGB(Lcom/ardor3d/image/Texture$CombinerScale;)V

    .line 15
    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_combineSrc0Alpha:Lcom/ardor3d/image/Texture$CombinerSource;

    invoke-virtual {p1, v0}, Lcom/ardor3d/image/Texture;->setCombineSrc0Alpha(Lcom/ardor3d/image/Texture$CombinerSource;)V

    .line 16
    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_combineSrc0RGB:Lcom/ardor3d/image/Texture$CombinerSource;

    invoke-virtual {p1, v0}, Lcom/ardor3d/image/Texture;->setCombineSrc0RGB(Lcom/ardor3d/image/Texture$CombinerSource;)V

    .line 17
    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_combineSrc1Alpha:Lcom/ardor3d/image/Texture$CombinerSource;

    invoke-virtual {p1, v0}, Lcom/ardor3d/image/Texture;->setCombineSrc1Alpha(Lcom/ardor3d/image/Texture$CombinerSource;)V

    .line 18
    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_combineSrc1RGB:Lcom/ardor3d/image/Texture$CombinerSource;

    invoke-virtual {p1, v0}, Lcom/ardor3d/image/Texture;->setCombineSrc1RGB(Lcom/ardor3d/image/Texture$CombinerSource;)V

    .line 19
    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_combineSrc2Alpha:Lcom/ardor3d/image/Texture$CombinerSource;

    invoke-virtual {p1, v0}, Lcom/ardor3d/image/Texture;->setCombineSrc2Alpha(Lcom/ardor3d/image/Texture$CombinerSource;)V

    .line 20
    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_combineSrc2RGB:Lcom/ardor3d/image/Texture$CombinerSource;

    invoke-virtual {p1, v0}, Lcom/ardor3d/image/Texture;->setCombineSrc2RGB(Lcom/ardor3d/image/Texture$CombinerSource;)V

    .line 21
    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_depthCompareFunc:Lcom/ardor3d/image/Texture$DepthTextureCompareFunc;

    invoke-virtual {p1, v0}, Lcom/ardor3d/image/Texture;->setDepthCompareFunc(Lcom/ardor3d/image/Texture$DepthTextureCompareFunc;)V

    .line 22
    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_depthCompareMode:Lcom/ardor3d/image/Texture$DepthTextureCompareMode;

    invoke-virtual {p1, v0}, Lcom/ardor3d/image/Texture;->setDepthCompareMode(Lcom/ardor3d/image/Texture$DepthTextureCompareMode;)V

    .line 23
    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_depthMode:Lcom/ardor3d/image/Texture$DepthTextureMode;

    invoke-virtual {p1, v0}, Lcom/ardor3d/image/Texture;->setDepthMode(Lcom/ardor3d/image/Texture$DepthTextureMode;)V

    .line 24
    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_envMapMode:Lcom/ardor3d/image/Texture$EnvironmentalMapMode;

    invoke-virtual {p1, v0}, Lcom/ardor3d/image/Texture;->setEnvironmentalMapMode(Lcom/ardor3d/image/Texture$EnvironmentalMapMode;)V

    .line 25
    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_envPlaneS:Lcom/ardor3d/math/Vector4;

    invoke-virtual {p1, v0}, Lcom/ardor3d/image/Texture;->setEnvPlaneS(Lcom/ardor3d/math/type/ReadOnlyVector4;)V

    .line 26
    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_envPlaneT:Lcom/ardor3d/math/Vector4;

    invoke-virtual {p1, v0}, Lcom/ardor3d/image/Texture;->setEnvPlaneT(Lcom/ardor3d/math/type/ReadOnlyVector4;)V

    .line 27
    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_envPlaneR:Lcom/ardor3d/math/Vector4;

    invoke-virtual {p1, v0}, Lcom/ardor3d/image/Texture;->setEnvPlaneR(Lcom/ardor3d/math/type/ReadOnlyVector4;)V

    .line 28
    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_envPlaneQ:Lcom/ardor3d/math/Vector4;

    invoke-virtual {p1, v0}, Lcom/ardor3d/image/Texture;->setEnvPlaneQ(Lcom/ardor3d/math/type/ReadOnlyVector4;)V

    .line 29
    iget-boolean v0, p0, Lcom/ardor3d/image/Texture;->_hasBorder:Z

    invoke-virtual {p1, v0}, Lcom/ardor3d/image/Texture;->setHasBorder(Z)V

    .line 30
    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_storeFormat:Lcom/ardor3d/image/TextureStoreFormat;

    invoke-virtual {p1, v0}, Lcom/ardor3d/image/Texture;->setTextureStoreFormat(Lcom/ardor3d/image/TextureStoreFormat;)V

    .line 31
    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_image:Lcom/ardor3d/image/Image;

    invoke-virtual {p1, v0}, Lcom/ardor3d/image/Texture;->setImage(Lcom/ardor3d/image/Image;)V

    .line 32
    iget v0, p0, Lcom/ardor3d/image/Texture;->_lodBias:F

    invoke-virtual {p1, v0}, Lcom/ardor3d/image/Texture;->setLodBias(F)V

    .line 33
    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_minificationFilter:Lcom/ardor3d/image/Texture$MinificationFilter;

    invoke-virtual {p1, v0}, Lcom/ardor3d/image/Texture;->setMinificationFilter(Lcom/ardor3d/image/Texture$MinificationFilter;)V

    .line 34
    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_magnificationFilter:Lcom/ardor3d/image/Texture$MagnificationFilter;

    invoke-virtual {p1, v0}, Lcom/ardor3d/image/Texture;->setMagnificationFilter(Lcom/ardor3d/image/Texture$MagnificationFilter;)V

    .line 35
    iget-boolean v0, p0, Lcom/ardor3d/image/Texture;->_storeImage:Z

    invoke-virtual {p1, v0}, Lcom/ardor3d/image/Texture;->setStoreImage(Z)V

    .line 36
    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_texMatrix:Lcom/ardor3d/math/Matrix4;

    invoke-virtual {p1, v0}, Lcom/ardor3d/image/Texture;->setTextureMatrix(Lcom/ardor3d/math/type/ReadOnlyMatrix4;)V

    .line 37
    invoke-virtual {p0}, Lcom/ardor3d/image/Texture;->getTextureKey()Lcom/ardor3d/util/TextureKey;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/ardor3d/image/Texture;->getTextureKey()Lcom/ardor3d/util/TextureKey;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ardor3d/image/Texture;->setTextureKey(Lcom/ardor3d/util/TextureKey;)V

    :cond_0
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/ardor3d/image/Texture;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/ardor3d/image/Texture;

    invoke-virtual {p0}, Lcom/ardor3d/image/Texture;->getImage()Lcom/ardor3d/image/Image;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/ardor3d/image/Texture;->getImage()Lcom/ardor3d/image/Image;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ardor3d/image/Texture;->getImage()Lcom/ardor3d/image/Image;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/ardor3d/image/Image;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/ardor3d/image/Texture;->getImage()Lcom/ardor3d/image/Image;

    move-result-object v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/ardor3d/image/Texture;->getImage()Lcom/ardor3d/image/Image;

    move-result-object v1

    if-eqz v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/ardor3d/image/Texture;->getAnisotropicFilterPercent()F

    move-result v1

    invoke-virtual {p1}, Lcom/ardor3d/image/Texture;->getAnisotropicFilterPercent()F

    move-result v3

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/ardor3d/image/Texture;->getApply()Lcom/ardor3d/image/Texture$ApplyMode;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ardor3d/image/Texture;->getApply()Lcom/ardor3d/image/Texture$ApplyMode;

    move-result-object v3

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/ardor3d/image/Texture;->getCombineFuncAlpha()Lcom/ardor3d/image/Texture$CombinerFunctionAlpha;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ardor3d/image/Texture;->getCombineFuncAlpha()Lcom/ardor3d/image/Texture$CombinerFunctionAlpha;

    move-result-object v3

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/ardor3d/image/Texture;->getCombineFuncRGB()Lcom/ardor3d/image/Texture$CombinerFunctionRGB;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ardor3d/image/Texture;->getCombineFuncRGB()Lcom/ardor3d/image/Texture$CombinerFunctionRGB;

    move-result-object v3

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    invoke-virtual {p0}, Lcom/ardor3d/image/Texture;->getCombineOp0Alpha()Lcom/ardor3d/image/Texture$CombinerOperandAlpha;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ardor3d/image/Texture;->getCombineOp0Alpha()Lcom/ardor3d/image/Texture$CombinerOperandAlpha;

    move-result-object v3

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    invoke-virtual {p0}, Lcom/ardor3d/image/Texture;->getCombineOp1RGB()Lcom/ardor3d/image/Texture$CombinerOperandRGB;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ardor3d/image/Texture;->getCombineOp1RGB()Lcom/ardor3d/image/Texture$CombinerOperandRGB;

    move-result-object v3

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    invoke-virtual {p0}, Lcom/ardor3d/image/Texture;->getCombineOp2Alpha()Lcom/ardor3d/image/Texture$CombinerOperandAlpha;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ardor3d/image/Texture;->getCombineOp2Alpha()Lcom/ardor3d/image/Texture$CombinerOperandAlpha;

    move-result-object v3

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/ardor3d/image/Texture;->getCombineOp2RGB()Lcom/ardor3d/image/Texture$CombinerOperandRGB;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ardor3d/image/Texture;->getCombineOp2RGB()Lcom/ardor3d/image/Texture$CombinerOperandRGB;

    move-result-object v3

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    invoke-virtual {p0}, Lcom/ardor3d/image/Texture;->getCombineScaleAlpha()Lcom/ardor3d/image/Texture$CombinerScale;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ardor3d/image/Texture;->getCombineScaleAlpha()Lcom/ardor3d/image/Texture$CombinerScale;

    move-result-object v3

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    invoke-virtual {p0}, Lcom/ardor3d/image/Texture;->getCombineScaleRGB()Lcom/ardor3d/image/Texture$CombinerScale;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ardor3d/image/Texture;->getCombineScaleRGB()Lcom/ardor3d/image/Texture$CombinerScale;

    move-result-object v3

    if-eq v1, v3, :cond_d

    return v2

    :cond_d
    invoke-virtual {p0}, Lcom/ardor3d/image/Texture;->getCombineSrc0Alpha()Lcom/ardor3d/image/Texture$CombinerSource;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ardor3d/image/Texture;->getCombineSrc0Alpha()Lcom/ardor3d/image/Texture$CombinerSource;

    move-result-object v3

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    invoke-virtual {p0}, Lcom/ardor3d/image/Texture;->getCombineSrc0RGB()Lcom/ardor3d/image/Texture$CombinerSource;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ardor3d/image/Texture;->getCombineSrc0RGB()Lcom/ardor3d/image/Texture$CombinerSource;

    move-result-object v3

    if-eq v1, v3, :cond_f

    return v2

    :cond_f
    invoke-virtual {p0}, Lcom/ardor3d/image/Texture;->getCombineSrc1Alpha()Lcom/ardor3d/image/Texture$CombinerSource;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ardor3d/image/Texture;->getCombineSrc1Alpha()Lcom/ardor3d/image/Texture$CombinerSource;

    move-result-object v3

    if-eq v1, v3, :cond_10

    return v2

    :cond_10
    invoke-virtual {p0}, Lcom/ardor3d/image/Texture;->getCombineSrc1RGB()Lcom/ardor3d/image/Texture$CombinerSource;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ardor3d/image/Texture;->getCombineSrc1RGB()Lcom/ardor3d/image/Texture$CombinerSource;

    move-result-object v3

    if-eq v1, v3, :cond_11

    return v2

    :cond_11
    invoke-virtual {p0}, Lcom/ardor3d/image/Texture;->getCombineSrc2Alpha()Lcom/ardor3d/image/Texture$CombinerSource;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ardor3d/image/Texture;->getCombineSrc2Alpha()Lcom/ardor3d/image/Texture$CombinerSource;

    move-result-object v3

    if-eq v1, v3, :cond_12

    return v2

    :cond_12
    invoke-virtual {p0}, Lcom/ardor3d/image/Texture;->getCombineSrc2RGB()Lcom/ardor3d/image/Texture$CombinerSource;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ardor3d/image/Texture;->getCombineSrc2RGB()Lcom/ardor3d/image/Texture$CombinerSource;

    move-result-object v3

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    invoke-virtual {p0}, Lcom/ardor3d/image/Texture;->getEnvironmentalMapMode()Lcom/ardor3d/image/Texture$EnvironmentalMapMode;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ardor3d/image/Texture;->getEnvironmentalMapMode()Lcom/ardor3d/image/Texture$EnvironmentalMapMode;

    move-result-object v3

    if-eq v1, v3, :cond_14

    return v2

    :cond_14
    invoke-virtual {p0}, Lcom/ardor3d/image/Texture;->getMagnificationFilter()Lcom/ardor3d/image/Texture$MagnificationFilter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ardor3d/image/Texture;->getMagnificationFilter()Lcom/ardor3d/image/Texture$MagnificationFilter;

    move-result-object v3

    if-eq v1, v3, :cond_15

    return v2

    :cond_15
    invoke-virtual {p0}, Lcom/ardor3d/image/Texture;->getMinificationFilter()Lcom/ardor3d/image/Texture$MinificationFilter;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ardor3d/image/Texture;->getMinificationFilter()Lcom/ardor3d/image/Texture$MinificationFilter;

    move-result-object v3

    if-eq v1, v3, :cond_16

    return v2

    :cond_16
    iget-object v1, p0, Lcom/ardor3d/image/Texture;->_constantColor:Lcom/ardor3d/math/ColorRGBA;

    iget-object v3, p1, Lcom/ardor3d/image/Texture;->_constantColor:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v1, v3}, Lcom/ardor3d/math/ColorRGBA;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lcom/ardor3d/image/Texture;->_borderColor:Lcom/ardor3d/math/ColorRGBA;

    iget-object p1, p1, Lcom/ardor3d/image/Texture;->_borderColor:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v1, p1}, Lcom/ardor3d/math/ColorRGBA;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    return v2

    :cond_18
    return v0
.end method

.method public getAnisotropicFilterPercent()F
    .locals 1

    iget v0, p0, Lcom/ardor3d/image/Texture;->_anisotropicFilterPercent:F

    return v0
.end method

.method public getApply()Lcom/ardor3d/image/Texture$ApplyMode;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_apply:Lcom/ardor3d/image/Texture$ApplyMode;

    return-object v0
.end method

.method public getBorderColor()Lcom/ardor3d/math/type/ReadOnlyColorRGBA;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_borderColor:Lcom/ardor3d/math/ColorRGBA;

    return-object v0
.end method

.method public getClassTag()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/ardor3d/image/Texture;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public getCombineFuncAlpha()Lcom/ardor3d/image/Texture$CombinerFunctionAlpha;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_combineFuncAlpha:Lcom/ardor3d/image/Texture$CombinerFunctionAlpha;

    return-object v0
.end method

.method public getCombineFuncRGB()Lcom/ardor3d/image/Texture$CombinerFunctionRGB;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_combineFuncRGB:Lcom/ardor3d/image/Texture$CombinerFunctionRGB;

    return-object v0
.end method

.method public getCombineOp0Alpha()Lcom/ardor3d/image/Texture$CombinerOperandAlpha;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_combineOp0Alpha:Lcom/ardor3d/image/Texture$CombinerOperandAlpha;

    return-object v0
.end method

.method public getCombineOp0RGB()Lcom/ardor3d/image/Texture$CombinerOperandRGB;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_combineOp0RGB:Lcom/ardor3d/image/Texture$CombinerOperandRGB;

    return-object v0
.end method

.method public getCombineOp1Alpha()Lcom/ardor3d/image/Texture$CombinerOperandAlpha;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_combineOp1Alpha:Lcom/ardor3d/image/Texture$CombinerOperandAlpha;

    return-object v0
.end method

.method public getCombineOp1RGB()Lcom/ardor3d/image/Texture$CombinerOperandRGB;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_combineOp1RGB:Lcom/ardor3d/image/Texture$CombinerOperandRGB;

    return-object v0
.end method

.method public getCombineOp2Alpha()Lcom/ardor3d/image/Texture$CombinerOperandAlpha;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_combineOp2Alpha:Lcom/ardor3d/image/Texture$CombinerOperandAlpha;

    return-object v0
.end method

.method public getCombineOp2RGB()Lcom/ardor3d/image/Texture$CombinerOperandRGB;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_combineOp2RGB:Lcom/ardor3d/image/Texture$CombinerOperandRGB;

    return-object v0
.end method

.method public getCombineScaleAlpha()Lcom/ardor3d/image/Texture$CombinerScale;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_combineScaleAlpha:Lcom/ardor3d/image/Texture$CombinerScale;

    return-object v0
.end method

.method public getCombineScaleRGB()Lcom/ardor3d/image/Texture$CombinerScale;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_combineScaleRGB:Lcom/ardor3d/image/Texture$CombinerScale;

    return-object v0
.end method

.method public getCombineSrc0Alpha()Lcom/ardor3d/image/Texture$CombinerSource;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_combineSrc0Alpha:Lcom/ardor3d/image/Texture$CombinerSource;

    return-object v0
.end method

.method public getCombineSrc0RGB()Lcom/ardor3d/image/Texture$CombinerSource;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_combineSrc0RGB:Lcom/ardor3d/image/Texture$CombinerSource;

    return-object v0
.end method

.method public getCombineSrc1Alpha()Lcom/ardor3d/image/Texture$CombinerSource;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_combineSrc1Alpha:Lcom/ardor3d/image/Texture$CombinerSource;

    return-object v0
.end method

.method public getCombineSrc1RGB()Lcom/ardor3d/image/Texture$CombinerSource;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_combineSrc1RGB:Lcom/ardor3d/image/Texture$CombinerSource;

    return-object v0
.end method

.method public getCombineSrc2Alpha()Lcom/ardor3d/image/Texture$CombinerSource;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_combineSrc2Alpha:Lcom/ardor3d/image/Texture$CombinerSource;

    return-object v0
.end method

.method public getCombineSrc2RGB()Lcom/ardor3d/image/Texture$CombinerSource;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_combineSrc2RGB:Lcom/ardor3d/image/Texture$CombinerSource;

    return-object v0
.end method

.method public getConstantColor()Lcom/ardor3d/math/type/ReadOnlyColorRGBA;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_constantColor:Lcom/ardor3d/math/ColorRGBA;

    return-object v0
.end method

.method public getDepthCompareFunc()Lcom/ardor3d/image/Texture$DepthTextureCompareFunc;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_depthCompareFunc:Lcom/ardor3d/image/Texture$DepthTextureCompareFunc;

    return-object v0
.end method

.method public getDepthCompareMode()Lcom/ardor3d/image/Texture$DepthTextureCompareMode;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_depthCompareMode:Lcom/ardor3d/image/Texture$DepthTextureCompareMode;

    return-object v0
.end method

.method public getDepthMode()Lcom/ardor3d/image/Texture$DepthTextureMode;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_depthMode:Lcom/ardor3d/image/Texture$DepthTextureMode;

    return-object v0
.end method

.method public getEnvPlaneQ()Lcom/ardor3d/math/type/ReadOnlyVector4;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_envPlaneQ:Lcom/ardor3d/math/Vector4;

    return-object v0
.end method

.method public getEnvPlaneR()Lcom/ardor3d/math/type/ReadOnlyVector4;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_envPlaneR:Lcom/ardor3d/math/Vector4;

    return-object v0
.end method

.method public getEnvPlaneS()Lcom/ardor3d/math/type/ReadOnlyVector4;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_envPlaneS:Lcom/ardor3d/math/Vector4;

    return-object v0
.end method

.method public getEnvPlaneT()Lcom/ardor3d/math/type/ReadOnlyVector4;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_envPlaneT:Lcom/ardor3d/math/Vector4;

    return-object v0
.end method

.method public getEnvironmentalMapMode()Lcom/ardor3d/image/Texture$EnvironmentalMapMode;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_envMapMode:Lcom/ardor3d/image/Texture$EnvironmentalMapMode;

    return-object v0
.end method

.method public getImage()Lcom/ardor3d/image/Image;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_image:Lcom/ardor3d/image/Image;

    return-object v0
.end method

.method public getLodBias()F
    .locals 1

    iget v0, p0, Lcom/ardor3d/image/Texture;->_lodBias:F

    return v0
.end method

.method public getMagnificationFilter()Lcom/ardor3d/image/Texture$MagnificationFilter;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_magnificationFilter:Lcom/ardor3d/image/Texture$MagnificationFilter;

    return-object v0
.end method

.method public getMinificationFilter()Lcom/ardor3d/image/Texture$MinificationFilter;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_minificationFilter:Lcom/ardor3d/image/Texture$MinificationFilter;

    return-object v0
.end method

.method public getTextureIdForContext(Ljava/lang/Object;)I
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_key:Lcom/ardor3d/util/TextureKey;

    invoke-virtual {v0, p1}, Lcom/ardor3d/util/TextureKey;->getTextureIdForContext(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getTextureKey()Lcom/ardor3d/util/TextureKey;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_key:Lcom/ardor3d/util/TextureKey;

    return-object v0
.end method

.method public getTextureMatrix()Lcom/ardor3d/math/type/ReadOnlyMatrix4;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_texMatrix:Lcom/ardor3d/math/Matrix4;

    return-object v0
.end method

.method public getTextureStoreFormat()Lcom/ardor3d/image/TextureStoreFormat;
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_storeFormat:Lcom/ardor3d/image/TextureStoreFormat;

    return-object v0
.end method

.method public abstract getType()Lcom/ardor3d/image/Texture$Type;
.end method

.method public abstract getWrap(Lcom/ardor3d/image/Texture$WrapAxis;)Lcom/ardor3d/image/Texture$WrapMode;
.end method

.method public hasBorder()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/image/Texture;->_hasBorder:Z

    return v0
.end method

.method public isDirty(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_key:Lcom/ardor3d/util/TextureKey;

    invoke-virtual {v0, p1}, Lcom/ardor3d/util/TextureKey;->isDirty(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isStoreImage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ardor3d/image/Texture;->_storeImage:Z

    return v0
.end method

.method public read(Lcom/ardor3d/util/export/InputCapsule;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Lcom/ardor3d/image/Texture$MinificationFilter;

    sget-object v1, Lcom/ardor3d/image/Texture$MinificationFilter;->NearestNeighborNoMipMaps:Lcom/ardor3d/image/Texture$MinificationFilter;

    const-string v2, "minificationFilter"

    invoke-interface {p1, v2, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/image/Texture$MinificationFilter;

    iput-object v0, p0, Lcom/ardor3d/image/Texture;->_minificationFilter:Lcom/ardor3d/image/Texture$MinificationFilter;

    const-string v0, "image"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/image/Image;

    iput-object v0, p0, Lcom/ardor3d/image/Texture;->_image:Lcom/ardor3d/image/Image;

    if-nez v0, :cond_0

    const-string v0, "textureKey"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/util/TextureKey;

    invoke-virtual {v0}, Lcom/ardor3d/util/TextureKey;->getSource()Lcom/ardor3d/util/resource/ResourceSource;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ardor3d/util/TextureKey;->isFlipped()Z

    move-result v3

    invoke-virtual {v0}, Lcom/ardor3d/util/TextureKey;->getFormat()Lcom/ardor3d/image/TextureStoreFormat;

    move-result-object v4

    invoke-virtual {v0}, Lcom/ardor3d/util/TextureKey;->getMinificationFilter()Lcom/ardor3d/image/Texture$MinificationFilter;

    move-result-object v0

    invoke-static {v2, v3, v4, v0}, Lcom/ardor3d/util/TextureKey;->getKey(Lcom/ardor3d/util/resource/ResourceSource;ZLcom/ardor3d/image/TextureStoreFormat;Lcom/ardor3d/image/Texture$MinificationFilter;)Lcom/ardor3d/util/TextureKey;

    move-result-object v0

    iput-object v0, p0, Lcom/ardor3d/image/Texture;->_key:Lcom/ardor3d/util/TextureKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ardor3d/util/TextureKey;->getSource()Lcom/ardor3d/util/resource/ResourceSource;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_key:Lcom/ardor3d/util/TextureKey;

    invoke-static {v0, v1, p0}, Lcom/ardor3d/util/TextureManager;->loadFromKey(Lcom/ardor3d/util/TextureKey;Lcom/ardor3d/image/Image;Lcom/ardor3d/image/Texture;)Lcom/ardor3d/image/Texture;

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_constantColor:Lcom/ardor3d/math/ColorRGBA;

    new-instance v2, Lcom/ardor3d/math/ColorRGBA;

    sget-object v3, Lcom/ardor3d/math/ColorRGBA;->BLACK_NO_ALPHA:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    invoke-direct {v2, v3}, Lcom/ardor3d/math/ColorRGBA;-><init>(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    const-string v4, "constantColor"

    invoke-interface {p1, v4, v2}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v2

    check-cast v2, Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, v2}, Lcom/ardor3d/math/ColorRGBA;->set(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_borderColor:Lcom/ardor3d/math/ColorRGBA;

    new-instance v2, Lcom/ardor3d/math/ColorRGBA;

    invoke-direct {v2, v3}, Lcom/ardor3d/math/ColorRGBA;-><init>(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    const-string v3, "borderColor"

    invoke-interface {p1, v3, v2}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v2

    check-cast v2, Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, v2}, Lcom/ardor3d/math/ColorRGBA;->set(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_texMatrix:Lcom/ardor3d/math/Matrix4;

    new-instance v2, Lcom/ardor3d/math/Matrix4;

    sget-object v3, Lcom/ardor3d/math/Matrix4;->IDENTITY:Lcom/ardor3d/math/type/ReadOnlyMatrix4;

    invoke-direct {v2, v3}, Lcom/ardor3d/math/Matrix4;-><init>(Lcom/ardor3d/math/type/ReadOnlyMatrix4;)V

    const-string v3, "texMatrix"

    invoke-interface {p1, v3, v2}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v2

    check-cast v2, Lcom/ardor3d/math/Matrix4;

    invoke-virtual {v0, v2}, Lcom/ardor3d/math/Matrix4;->set(Lcom/ardor3d/math/type/ReadOnlyMatrix4;)Lcom/ardor3d/math/Matrix4;

    const-string v0, "hasBorder"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Lcom/ardor3d/util/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ardor3d/image/Texture;->_hasBorder:Z

    const-string v0, "anisotropicFilterPercent"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Lcom/ardor3d/util/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/ardor3d/image/Texture;->_anisotropicFilterPercent:F

    const-string v0, "lodBias"

    invoke-interface {p1, v0, v2}, Lcom/ardor3d/util/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/ardor3d/image/Texture;->_lodBias:F

    const-class v0, Lcom/ardor3d/image/Texture$MagnificationFilter;

    sget-object v2, Lcom/ardor3d/image/Texture$MagnificationFilter;->Bilinear:Lcom/ardor3d/image/Texture$MagnificationFilter;

    const-string v3, "magnificationFilter"

    invoke-interface {p1, v3, v0, v2}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/image/Texture$MagnificationFilter;

    iput-object v0, p0, Lcom/ardor3d/image/Texture;->_magnificationFilter:Lcom/ardor3d/image/Texture$MagnificationFilter;

    const-class v0, Lcom/ardor3d/image/Texture$ApplyMode;

    sget-object v2, Lcom/ardor3d/image/Texture$ApplyMode;->Modulate:Lcom/ardor3d/image/Texture$ApplyMode;

    const-string v3, "apply"

    invoke-interface {p1, v3, v0, v2}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/image/Texture$ApplyMode;

    iput-object v0, p0, Lcom/ardor3d/image/Texture;->_apply:Lcom/ardor3d/image/Texture$ApplyMode;

    const-class v0, Lcom/ardor3d/image/Texture$EnvironmentalMapMode;

    sget-object v2, Lcom/ardor3d/image/Texture$EnvironmentalMapMode;->None:Lcom/ardor3d/image/Texture$EnvironmentalMapMode;

    const-string v3, "envMapMode"

    invoke-interface {p1, v3, v0, v2}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/image/Texture$EnvironmentalMapMode;

    iput-object v0, p0, Lcom/ardor3d/image/Texture;->_envMapMode:Lcom/ardor3d/image/Texture$EnvironmentalMapMode;

    const-string v0, "envPlaneS"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/Vector4;

    iput-object v0, p0, Lcom/ardor3d/image/Texture;->_envPlaneS:Lcom/ardor3d/math/Vector4;

    const-string v0, "envPlaneT"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/Vector4;

    iput-object v0, p0, Lcom/ardor3d/image/Texture;->_envPlaneT:Lcom/ardor3d/math/Vector4;

    const-string v0, "envPlaneR"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/Vector4;

    iput-object v0, p0, Lcom/ardor3d/image/Texture;->_envPlaneR:Lcom/ardor3d/math/Vector4;

    const-string v0, "envPlaneQ"

    invoke-interface {p1, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)Lcom/ardor3d/util/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/math/Vector4;

    iput-object v0, p0, Lcom/ardor3d/image/Texture;->_envPlaneQ:Lcom/ardor3d/math/Vector4;

    const-class v0, Lcom/ardor3d/image/Texture$CombinerFunctionRGB;

    sget-object v1, Lcom/ardor3d/image/Texture$CombinerFunctionRGB;->Replace:Lcom/ardor3d/image/Texture$CombinerFunctionRGB;

    const-string v2, "combineFuncRGB"

    invoke-interface {p1, v2, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/image/Texture$CombinerFunctionRGB;

    iput-object v0, p0, Lcom/ardor3d/image/Texture;->_combineFuncRGB:Lcom/ardor3d/image/Texture$CombinerFunctionRGB;

    const-class v0, Lcom/ardor3d/image/Texture$CombinerFunctionAlpha;

    sget-object v1, Lcom/ardor3d/image/Texture$CombinerFunctionAlpha;->Replace:Lcom/ardor3d/image/Texture$CombinerFunctionAlpha;

    const-string v2, "combineFuncAlpha"

    invoke-interface {p1, v2, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/image/Texture$CombinerFunctionAlpha;

    iput-object v0, p0, Lcom/ardor3d/image/Texture;->_combineFuncAlpha:Lcom/ardor3d/image/Texture$CombinerFunctionAlpha;

    sget-object v0, Lcom/ardor3d/image/Texture$CombinerSource;->CurrentTexture:Lcom/ardor3d/image/Texture$CombinerSource;

    const-string v1, "combineSrc0RGB"

    const-class v2, Lcom/ardor3d/image/Texture$CombinerSource;

    invoke-interface {p1, v1, v2, v0}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/image/Texture$CombinerSource;

    iput-object v1, p0, Lcom/ardor3d/image/Texture;->_combineSrc0RGB:Lcom/ardor3d/image/Texture$CombinerSource;

    sget-object v1, Lcom/ardor3d/image/Texture$CombinerSource;->Previous:Lcom/ardor3d/image/Texture$CombinerSource;

    const-string v3, "combineSrc1RGB"

    invoke-interface {p1, v3, v2, v1}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v3

    check-cast v3, Lcom/ardor3d/image/Texture$CombinerSource;

    iput-object v3, p0, Lcom/ardor3d/image/Texture;->_combineSrc1RGB:Lcom/ardor3d/image/Texture$CombinerSource;

    sget-object v3, Lcom/ardor3d/image/Texture$CombinerSource;->Constant:Lcom/ardor3d/image/Texture$CombinerSource;

    const-string v4, "combineSrc2RGB"

    invoke-interface {p1, v4, v2, v3}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v4

    check-cast v4, Lcom/ardor3d/image/Texture$CombinerSource;

    iput-object v4, p0, Lcom/ardor3d/image/Texture;->_combineSrc2RGB:Lcom/ardor3d/image/Texture$CombinerSource;

    const-string v4, "combineSrc0Alpha"

    invoke-interface {p1, v4, v2, v0}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/image/Texture$CombinerSource;

    iput-object v0, p0, Lcom/ardor3d/image/Texture;->_combineSrc0Alpha:Lcom/ardor3d/image/Texture$CombinerSource;

    const-string v0, "combineSrc1Alpha"

    invoke-interface {p1, v0, v2, v1}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/image/Texture$CombinerSource;

    iput-object v0, p0, Lcom/ardor3d/image/Texture;->_combineSrc1Alpha:Lcom/ardor3d/image/Texture$CombinerSource;

    const-string v0, "combineSrc2Alpha"

    invoke-interface {p1, v0, v2, v3}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/image/Texture$CombinerSource;

    iput-object v0, p0, Lcom/ardor3d/image/Texture;->_combineSrc2Alpha:Lcom/ardor3d/image/Texture$CombinerSource;

    sget-object v0, Lcom/ardor3d/image/Texture$CombinerOperandRGB;->SourceColor:Lcom/ardor3d/image/Texture$CombinerOperandRGB;

    const-string v1, "combineOp0RGB"

    const-class v2, Lcom/ardor3d/image/Texture$CombinerOperandRGB;

    invoke-interface {p1, v1, v2, v0}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/image/Texture$CombinerOperandRGB;

    iput-object v1, p0, Lcom/ardor3d/image/Texture;->_combineOp0RGB:Lcom/ardor3d/image/Texture$CombinerOperandRGB;

    const-string v1, "combineOp1RGB"

    invoke-interface {p1, v1, v2, v0}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/image/Texture$CombinerOperandRGB;

    iput-object v0, p0, Lcom/ardor3d/image/Texture;->_combineOp1RGB:Lcom/ardor3d/image/Texture$CombinerOperandRGB;

    const-string v0, "combineOp2RGB"

    sget-object v1, Lcom/ardor3d/image/Texture$CombinerOperandRGB;->SourceAlpha:Lcom/ardor3d/image/Texture$CombinerOperandRGB;

    invoke-interface {p1, v0, v2, v1}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/image/Texture$CombinerOperandRGB;

    iput-object v0, p0, Lcom/ardor3d/image/Texture;->_combineOp2RGB:Lcom/ardor3d/image/Texture$CombinerOperandRGB;

    sget-object v0, Lcom/ardor3d/image/Texture$CombinerOperandAlpha;->SourceAlpha:Lcom/ardor3d/image/Texture$CombinerOperandAlpha;

    const-string v1, "combineOp0Alpha"

    const-class v2, Lcom/ardor3d/image/Texture$CombinerOperandAlpha;

    invoke-interface {p1, v1, v2, v0}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/image/Texture$CombinerOperandAlpha;

    iput-object v1, p0, Lcom/ardor3d/image/Texture;->_combineOp0Alpha:Lcom/ardor3d/image/Texture$CombinerOperandAlpha;

    const-string v1, "combineOp1Alpha"

    invoke-interface {p1, v1, v2, v0}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/image/Texture$CombinerOperandAlpha;

    iput-object v1, p0, Lcom/ardor3d/image/Texture;->_combineOp1Alpha:Lcom/ardor3d/image/Texture$CombinerOperandAlpha;

    const-string v1, "combineOp2Alpha"

    invoke-interface {p1, v1, v2, v0}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/image/Texture$CombinerOperandAlpha;

    iput-object v0, p0, Lcom/ardor3d/image/Texture;->_combineOp2Alpha:Lcom/ardor3d/image/Texture$CombinerOperandAlpha;

    sget-object v0, Lcom/ardor3d/image/Texture$CombinerScale;->One:Lcom/ardor3d/image/Texture$CombinerScale;

    const-string v1, "combineScaleRGB"

    const-class v2, Lcom/ardor3d/image/Texture$CombinerScale;

    invoke-interface {p1, v1, v2, v0}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/image/Texture$CombinerScale;

    iput-object v1, p0, Lcom/ardor3d/image/Texture;->_combineScaleRGB:Lcom/ardor3d/image/Texture$CombinerScale;

    const-string v1, "combineScaleAlpha"

    invoke-interface {p1, v1, v2, v0}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ardor3d/image/Texture$CombinerScale;

    iput-object v0, p0, Lcom/ardor3d/image/Texture;->_combineScaleAlpha:Lcom/ardor3d/image/Texture$CombinerScale;

    const-class v0, Lcom/ardor3d/image/TextureStoreFormat;

    sget-object v1, Lcom/ardor3d/image/TextureStoreFormat;->RGBA8:Lcom/ardor3d/image/TextureStoreFormat;

    const-string v2, "storeFormat"

    invoke-interface {p1, v2, v0, v1}, Lcom/ardor3d/util/export/InputCapsule;->readEnum(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Enum;)Ljava/lang/Enum;

    move-result-object p1

    check-cast p1, Lcom/ardor3d/image/TextureStoreFormat;

    iput-object p1, p0, Lcom/ardor3d/image/Texture;->_storeFormat:Lcom/ardor3d/image/TextureStoreFormat;

    return-void
.end method

.method public removeFromIdCache(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_key:Lcom/ardor3d/util/TextureKey;

    invoke-virtual {v0, p1}, Lcom/ardor3d/util/TextureKey;->removeFromIdCache(Ljava/lang/Object;)V

    return-void
.end method

.method public setAnisotropicFilterPercent(F)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    :goto_0
    move p1, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    iput p1, p0, Lcom/ardor3d/image/Texture;->_anisotropicFilterPercent:F

    return-void
.end method

.method public setApply(Lcom/ardor3d/image/Texture$ApplyMode;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ardor3d/image/Texture;->_apply:Lcom/ardor3d/image/Texture$ApplyMode;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "apply can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setBorderColor(FFFF)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_borderColor:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ardor3d/math/ColorRGBA;->set(FFFF)Lcom/ardor3d/math/ColorRGBA;

    return-void
.end method

.method public setBorderColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_borderColor:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/ColorRGBA;->set(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    return-void
.end method

.method public setCombineFuncAlpha(Lcom/ardor3d/image/Texture$CombinerFunctionAlpha;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ardor3d/image/Texture;->_combineFuncAlpha:Lcom/ardor3d/image/Texture$CombinerFunctionAlpha;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid CombinerFunctionAlpha: null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCombineFuncRGB(Lcom/ardor3d/image/Texture$CombinerFunctionRGB;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ardor3d/image/Texture;->_combineFuncRGB:Lcom/ardor3d/image/Texture$CombinerFunctionRGB;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid CombinerFunctionRGB: null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCombineOp0Alpha(Lcom/ardor3d/image/Texture$CombinerOperandAlpha;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ardor3d/image/Texture;->_combineOp0Alpha:Lcom/ardor3d/image/Texture$CombinerOperandAlpha;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid CombinerOperandAlpha: null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCombineOp0RGB(Lcom/ardor3d/image/Texture$CombinerOperandRGB;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ardor3d/image/Texture;->_combineOp0RGB:Lcom/ardor3d/image/Texture$CombinerOperandRGB;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid CombinerOperandRGB: null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCombineOp1Alpha(Lcom/ardor3d/image/Texture$CombinerOperandAlpha;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ardor3d/image/Texture;->_combineOp1Alpha:Lcom/ardor3d/image/Texture$CombinerOperandAlpha;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid CombinerOperandAlpha: null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCombineOp1RGB(Lcom/ardor3d/image/Texture$CombinerOperandRGB;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ardor3d/image/Texture;->_combineOp1RGB:Lcom/ardor3d/image/Texture$CombinerOperandRGB;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid CombinerOperandRGB: null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCombineOp2Alpha(Lcom/ardor3d/image/Texture$CombinerOperandAlpha;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ardor3d/image/Texture;->_combineOp2Alpha:Lcom/ardor3d/image/Texture$CombinerOperandAlpha;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid CombinerOperandAlpha: null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCombineOp2RGB(Lcom/ardor3d/image/Texture$CombinerOperandRGB;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ardor3d/image/Texture;->_combineOp2RGB:Lcom/ardor3d/image/Texture$CombinerOperandRGB;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid CombinerOperandRGB: null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCombineScaleAlpha(Lcom/ardor3d/image/Texture$CombinerScale;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ardor3d/image/Texture;->_combineScaleAlpha:Lcom/ardor3d/image/Texture$CombinerScale;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid CombinerScale: null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCombineScaleRGB(Lcom/ardor3d/image/Texture$CombinerScale;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ardor3d/image/Texture;->_combineScaleRGB:Lcom/ardor3d/image/Texture$CombinerScale;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid CombinerScale: null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCombineSrc0Alpha(Lcom/ardor3d/image/Texture$CombinerSource;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ardor3d/image/Texture;->_combineSrc0Alpha:Lcom/ardor3d/image/Texture$CombinerSource;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid CombinerSource: null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCombineSrc0RGB(Lcom/ardor3d/image/Texture$CombinerSource;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ardor3d/image/Texture;->_combineSrc0RGB:Lcom/ardor3d/image/Texture$CombinerSource;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid CombinerSource: null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCombineSrc1Alpha(Lcom/ardor3d/image/Texture$CombinerSource;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ardor3d/image/Texture;->_combineSrc1Alpha:Lcom/ardor3d/image/Texture$CombinerSource;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid CombinerSource: null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCombineSrc1RGB(Lcom/ardor3d/image/Texture$CombinerSource;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ardor3d/image/Texture;->_combineSrc1RGB:Lcom/ardor3d/image/Texture$CombinerSource;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid CombinerSource: null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCombineSrc2Alpha(Lcom/ardor3d/image/Texture$CombinerSource;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ardor3d/image/Texture;->_combineSrc2Alpha:Lcom/ardor3d/image/Texture$CombinerSource;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid CombinerSource: null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCombineSrc2RGB(Lcom/ardor3d/image/Texture$CombinerSource;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ardor3d/image/Texture;->_combineSrc2RGB:Lcom/ardor3d/image/Texture$CombinerSource;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid CombinerSource: null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setConstantColor(FFFF)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_constantColor:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ardor3d/math/ColorRGBA;->set(FFFF)Lcom/ardor3d/math/ColorRGBA;

    return-void
.end method

.method public setConstantColor(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_constantColor:Lcom/ardor3d/math/ColorRGBA;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/ColorRGBA;->set(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)Lcom/ardor3d/math/ColorRGBA;

    return-void
.end method

.method public setDepthCompareFunc(Lcom/ardor3d/image/Texture$DepthTextureCompareFunc;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/image/Texture;->_depthCompareFunc:Lcom/ardor3d/image/Texture$DepthTextureCompareFunc;

    return-void
.end method

.method public setDepthCompareMode(Lcom/ardor3d/image/Texture$DepthTextureCompareMode;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/image/Texture;->_depthCompareMode:Lcom/ardor3d/image/Texture$DepthTextureCompareMode;

    return-void
.end method

.method public setDepthMode(Lcom/ardor3d/image/Texture$DepthTextureMode;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/image/Texture;->_depthMode:Lcom/ardor3d/image/Texture$DepthTextureMode;

    return-void
.end method

.method public setDirty()V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_key:Lcom/ardor3d/util/TextureKey;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ardor3d/util/TextureKey;->setDirty()V

    :cond_0
    return-void
.end method

.method public setEnvPlaneQ(Lcom/ardor3d/math/type/ReadOnlyVector4;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ardor3d/image/Texture;->_envPlaneQ:Lcom/ardor3d/math/Vector4;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_envPlaneQ:Lcom/ardor3d/math/Vector4;

    if-nez v0, :cond_1

    new-instance v0, Lcom/ardor3d/math/Vector4;

    invoke-direct {v0, p1}, Lcom/ardor3d/math/Vector4;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector4;)V

    iput-object v0, p0, Lcom/ardor3d/image/Texture;->_envPlaneQ:Lcom/ardor3d/math/Vector4;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector4;->set(Lcom/ardor3d/math/type/ReadOnlyVector4;)Lcom/ardor3d/math/Vector4;

    :goto_0
    return-void
.end method

.method public setEnvPlaneR(Lcom/ardor3d/math/type/ReadOnlyVector4;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ardor3d/image/Texture;->_envPlaneR:Lcom/ardor3d/math/Vector4;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_envPlaneR:Lcom/ardor3d/math/Vector4;

    if-nez v0, :cond_1

    new-instance v0, Lcom/ardor3d/math/Vector4;

    invoke-direct {v0, p1}, Lcom/ardor3d/math/Vector4;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector4;)V

    iput-object v0, p0, Lcom/ardor3d/image/Texture;->_envPlaneR:Lcom/ardor3d/math/Vector4;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector4;->set(Lcom/ardor3d/math/type/ReadOnlyVector4;)Lcom/ardor3d/math/Vector4;

    :goto_0
    return-void
.end method

.method public setEnvPlaneS(Lcom/ardor3d/math/type/ReadOnlyVector4;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ardor3d/image/Texture;->_envPlaneS:Lcom/ardor3d/math/Vector4;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_envPlaneS:Lcom/ardor3d/math/Vector4;

    if-nez v0, :cond_1

    new-instance v0, Lcom/ardor3d/math/Vector4;

    invoke-direct {v0, p1}, Lcom/ardor3d/math/Vector4;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector4;)V

    iput-object v0, p0, Lcom/ardor3d/image/Texture;->_envPlaneS:Lcom/ardor3d/math/Vector4;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector4;->set(Lcom/ardor3d/math/type/ReadOnlyVector4;)Lcom/ardor3d/math/Vector4;

    :goto_0
    return-void
.end method

.method public setEnvPlaneT(Lcom/ardor3d/math/type/ReadOnlyVector4;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ardor3d/image/Texture;->_envPlaneT:Lcom/ardor3d/math/Vector4;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_envPlaneT:Lcom/ardor3d/math/Vector4;

    if-nez v0, :cond_1

    new-instance v0, Lcom/ardor3d/math/Vector4;

    invoke-direct {v0, p1}, Lcom/ardor3d/math/Vector4;-><init>(Lcom/ardor3d/math/type/ReadOnlyVector4;)V

    iput-object v0, p0, Lcom/ardor3d/image/Texture;->_envPlaneT:Lcom/ardor3d/math/Vector4;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Vector4;->set(Lcom/ardor3d/math/type/ReadOnlyVector4;)Lcom/ardor3d/math/Vector4;

    :goto_0
    return-void
.end method

.method public setEnvironmentalMapMode(Lcom/ardor3d/image/Texture$EnvironmentalMapMode;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ardor3d/image/Texture;->_envMapMode:Lcom/ardor3d/image/Texture$EnvironmentalMapMode;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid EnvironmentalMapMode: null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setHasBorder(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/image/Texture;->_hasBorder:Z

    return-void
.end method

.method public setImage(Lcom/ardor3d/image/Image;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/image/Texture;->_image:Lcom/ardor3d/image/Image;

    invoke-virtual {p0}, Lcom/ardor3d/image/Texture;->setDirty()V

    return-void
.end method

.method public setLodBias(F)V
    .locals 0

    iput p1, p0, Lcom/ardor3d/image/Texture;->_lodBias:F

    return-void
.end method

.method public setMagnificationFilter(Lcom/ardor3d/image/Texture$MagnificationFilter;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ardor3d/image/Texture;->_magnificationFilter:Lcom/ardor3d/image/Texture$MagnificationFilter;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "magnificationFilter can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMinificationFilter(Lcom/ardor3d/image/Texture$MinificationFilter;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/ardor3d/image/Texture;->_minificationFilter:Lcom/ardor3d/image/Texture$MinificationFilter;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "minificationFilter can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setStoreImage(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ardor3d/image/Texture;->_storeImage:Z

    return-void
.end method

.method public setTextureIdForContext(Ljava/lang/Object;I)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_key:Lcom/ardor3d/util/TextureKey;

    invoke-virtual {v0, p1, p2}, Lcom/ardor3d/util/TextureKey;->setTextureIdForContext(Ljava/lang/Object;I)V

    return-void
.end method

.method public setTextureKey(Lcom/ardor3d/util/TextureKey;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/image/Texture;->_key:Lcom/ardor3d/util/TextureKey;

    return-void
.end method

.method public setTextureMatrix(Lcom/ardor3d/math/type/ReadOnlyMatrix4;)V
    .locals 1

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_texMatrix:Lcom/ardor3d/math/Matrix4;

    invoke-virtual {v0, p1}, Lcom/ardor3d/math/Matrix4;->set(Lcom/ardor3d/math/type/ReadOnlyMatrix4;)Lcom/ardor3d/math/Matrix4;

    return-void
.end method

.method public setTextureStoreFormat(Lcom/ardor3d/image/TextureStoreFormat;)V
    .locals 0

    iput-object p1, p0, Lcom/ardor3d/image/Texture;->_storeFormat:Lcom/ardor3d/image/TextureStoreFormat;

    return-void
.end method

.method public abstract setWrap(Lcom/ardor3d/image/Texture$WrapAxis;Lcom/ardor3d/image/Texture$WrapMode;)V
.end method

.method public abstract setWrap(Lcom/ardor3d/image/Texture$WrapMode;)V
.end method

.method public write(Lcom/ardor3d/util/export/OutputCapsule;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/ardor3d/image/Texture;->_storeImage:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_image:Lcom/ardor3d/image/Image;

    const-string v2, "image"

    invoke-interface {p1, v0, v2, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_constantColor:Lcom/ardor3d/math/ColorRGBA;

    new-instance v2, Lcom/ardor3d/math/ColorRGBA;

    sget-object v3, Lcom/ardor3d/math/ColorRGBA;->BLACK_NO_ALPHA:Lcom/ardor3d/math/type/ReadOnlyColorRGBA;

    invoke-direct {v2, v3}, Lcom/ardor3d/math/ColorRGBA;-><init>(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    const-string v4, "constantColor"

    invoke-interface {p1, v0, v4, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_borderColor:Lcom/ardor3d/math/ColorRGBA;

    new-instance v2, Lcom/ardor3d/math/ColorRGBA;

    invoke-direct {v2, v3}, Lcom/ardor3d/math/ColorRGBA;-><init>(Lcom/ardor3d/math/type/ReadOnlyColorRGBA;)V

    const-string v3, "borderColor"

    invoke-interface {p1, v0, v3, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_texMatrix:Lcom/ardor3d/math/Matrix4;

    new-instance v2, Lcom/ardor3d/math/Matrix4;

    sget-object v3, Lcom/ardor3d/math/Matrix4;->IDENTITY:Lcom/ardor3d/math/type/ReadOnlyMatrix4;

    invoke-direct {v2, v3}, Lcom/ardor3d/math/Matrix4;-><init>(Lcom/ardor3d/math/type/ReadOnlyMatrix4;)V

    const-string v3, "texMatrix"

    invoke-interface {p1, v0, v3, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-boolean v0, p0, Lcom/ardor3d/image/Texture;->_hasBorder:Z

    const-string v2, "hasBorder"

    const/4 v3, 0x0

    invoke-interface {p1, v0, v2, v3}, Lcom/ardor3d/util/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget v0, p0, Lcom/ardor3d/image/Texture;->_anisotropicFilterPercent:F

    const-string v2, "anisotropicFilterPercent"

    const/4 v3, 0x0

    invoke-interface {p1, v0, v2, v3}, Lcom/ardor3d/util/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/ardor3d/image/Texture;->_lodBias:F

    const-string v2, "lodBias"

    invoke-interface {p1, v0, v2, v3}, Lcom/ardor3d/util/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_minificationFilter:Lcom/ardor3d/image/Texture$MinificationFilter;

    const-string v2, "minificationFilter"

    sget-object v3, Lcom/ardor3d/image/Texture$MinificationFilter;->NearestNeighborNoMipMaps:Lcom/ardor3d/image/Texture$MinificationFilter;

    invoke-interface {p1, v0, v2, v3}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_magnificationFilter:Lcom/ardor3d/image/Texture$MagnificationFilter;

    const-string v2, "magnificationFilter"

    sget-object v3, Lcom/ardor3d/image/Texture$MagnificationFilter;->Bilinear:Lcom/ardor3d/image/Texture$MagnificationFilter;

    invoke-interface {p1, v0, v2, v3}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_apply:Lcom/ardor3d/image/Texture$ApplyMode;

    const-string v2, "apply"

    sget-object v3, Lcom/ardor3d/image/Texture$ApplyMode;->Modulate:Lcom/ardor3d/image/Texture$ApplyMode;

    invoke-interface {p1, v0, v2, v3}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_envMapMode:Lcom/ardor3d/image/Texture$EnvironmentalMapMode;

    const-string v2, "envMapMode"

    sget-object v3, Lcom/ardor3d/image/Texture$EnvironmentalMapMode;->None:Lcom/ardor3d/image/Texture$EnvironmentalMapMode;

    invoke-interface {p1, v0, v2, v3}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_envPlaneS:Lcom/ardor3d/math/Vector4;

    const-string v2, "envPlaneS"

    invoke-interface {p1, v0, v2, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_envPlaneT:Lcom/ardor3d/math/Vector4;

    const-string v2, "envPlaneT"

    invoke-interface {p1, v0, v2, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_envPlaneR:Lcom/ardor3d/math/Vector4;

    const-string v2, "envPlaneR"

    invoke-interface {p1, v0, v2, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_envPlaneQ:Lcom/ardor3d/math/Vector4;

    const-string v2, "envPlaneQ"

    invoke-interface {p1, v0, v2, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_combineFuncRGB:Lcom/ardor3d/image/Texture$CombinerFunctionRGB;

    const-string v2, "combineFuncRGB"

    sget-object v3, Lcom/ardor3d/image/Texture$CombinerFunctionRGB;->Replace:Lcom/ardor3d/image/Texture$CombinerFunctionRGB;

    invoke-interface {p1, v0, v2, v3}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_combineFuncAlpha:Lcom/ardor3d/image/Texture$CombinerFunctionAlpha;

    const-string v2, "combineFuncAlpha"

    sget-object v3, Lcom/ardor3d/image/Texture$CombinerFunctionAlpha;->Replace:Lcom/ardor3d/image/Texture$CombinerFunctionAlpha;

    invoke-interface {p1, v0, v2, v3}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_combineSrc0RGB:Lcom/ardor3d/image/Texture$CombinerSource;

    sget-object v2, Lcom/ardor3d/image/Texture$CombinerSource;->CurrentTexture:Lcom/ardor3d/image/Texture$CombinerSource;

    const-string v3, "combineSrc0RGB"

    invoke-interface {p1, v0, v3, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_combineSrc1RGB:Lcom/ardor3d/image/Texture$CombinerSource;

    sget-object v3, Lcom/ardor3d/image/Texture$CombinerSource;->Previous:Lcom/ardor3d/image/Texture$CombinerSource;

    const-string v4, "combineSrc1RGB"

    invoke-interface {p1, v0, v4, v3}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_combineSrc2RGB:Lcom/ardor3d/image/Texture$CombinerSource;

    sget-object v4, Lcom/ardor3d/image/Texture$CombinerSource;->Constant:Lcom/ardor3d/image/Texture$CombinerSource;

    const-string v5, "combineSrc2RGB"

    invoke-interface {p1, v0, v5, v4}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_combineSrc0Alpha:Lcom/ardor3d/image/Texture$CombinerSource;

    const-string v5, "combineSrc0Alpha"

    invoke-interface {p1, v0, v5, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_combineSrc1Alpha:Lcom/ardor3d/image/Texture$CombinerSource;

    const-string v2, "combineSrc1Alpha"

    invoke-interface {p1, v0, v2, v3}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_combineSrc2Alpha:Lcom/ardor3d/image/Texture$CombinerSource;

    const-string v2, "combineSrc2Alpha"

    invoke-interface {p1, v0, v2, v4}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_combineOp0RGB:Lcom/ardor3d/image/Texture$CombinerOperandRGB;

    sget-object v2, Lcom/ardor3d/image/Texture$CombinerOperandRGB;->SourceColor:Lcom/ardor3d/image/Texture$CombinerOperandRGB;

    const-string v3, "combineOp0RGB"

    invoke-interface {p1, v0, v3, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_combineOp1RGB:Lcom/ardor3d/image/Texture$CombinerOperandRGB;

    const-string v3, "combineOp1RGB"

    invoke-interface {p1, v0, v3, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_combineOp2RGB:Lcom/ardor3d/image/Texture$CombinerOperandRGB;

    const-string v2, "combineOp2RGB"

    sget-object v3, Lcom/ardor3d/image/Texture$CombinerOperandRGB;->SourceAlpha:Lcom/ardor3d/image/Texture$CombinerOperandRGB;

    invoke-interface {p1, v0, v2, v3}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_combineOp0Alpha:Lcom/ardor3d/image/Texture$CombinerOperandAlpha;

    sget-object v2, Lcom/ardor3d/image/Texture$CombinerOperandAlpha;->SourceAlpha:Lcom/ardor3d/image/Texture$CombinerOperandAlpha;

    const-string v3, "combineOp0Alpha"

    invoke-interface {p1, v0, v3, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_combineOp1Alpha:Lcom/ardor3d/image/Texture$CombinerOperandAlpha;

    const-string v3, "combineOp1Alpha"

    invoke-interface {p1, v0, v3, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_combineOp2Alpha:Lcom/ardor3d/image/Texture$CombinerOperandAlpha;

    const-string v3, "combineOp2Alpha"

    invoke-interface {p1, v0, v3, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_combineScaleRGB:Lcom/ardor3d/image/Texture$CombinerScale;

    sget-object v2, Lcom/ardor3d/image/Texture$CombinerScale;->One:Lcom/ardor3d/image/Texture$CombinerScale;

    const-string v3, "combineScaleRGB"

    invoke-interface {p1, v0, v3, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_combineScaleAlpha:Lcom/ardor3d/image/Texture$CombinerScale;

    const-string v3, "combineScaleAlpha"

    invoke-interface {p1, v0, v3, v2}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_storeFormat:Lcom/ardor3d/image/TextureStoreFormat;

    const-string v2, "storeFormat"

    sget-object v3, Lcom/ardor3d/image/TextureStoreFormat;->RGBA8:Lcom/ardor3d/image/TextureStoreFormat;

    invoke-interface {p1, v0, v2, v3}, Lcom/ardor3d/util/export/OutputCapsule;->write(Ljava/lang/Enum;Ljava/lang/String;Ljava/lang/Enum;)V

    iget-boolean v0, p0, Lcom/ardor3d/image/Texture;->_storeImage:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ardor3d/image/Texture;->_key:Lcom/ardor3d/util/TextureKey;

    const-string v2, "textureKey"

    invoke-interface {p1, v0, v2, v1}, Lcom/ardor3d/util/export/OutputCapsule;->write(Lcom/ardor3d/util/export/Savable;Ljava/lang/String;Lcom/ardor3d/util/export/Savable;)V

    :cond_1
    return-void
.end method
