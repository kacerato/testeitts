.class public Lcom/ardor3d/renderer/state/record/TextureUnitRecord;
.super Lcom/ardor3d/renderer/state/record/StateRecord;
.source "SourceFile"


# instance fields
.field public alphaCombineFunc:Lcom/ardor3d/image/Texture$CombinerFunctionAlpha;

.field public blendColor:Lcom/ardor3d/math/ColorRGBA;

.field public boundTexture:I

.field public combOpAlpha0:Lcom/ardor3d/image/Texture$CombinerOperandAlpha;

.field public combOpAlpha1:Lcom/ardor3d/image/Texture$CombinerOperandAlpha;

.field public combOpAlpha2:Lcom/ardor3d/image/Texture$CombinerOperandAlpha;

.field public combOpRGB0:Lcom/ardor3d/image/Texture$CombinerOperandRGB;

.field public combOpRGB1:Lcom/ardor3d/image/Texture$CombinerOperandRGB;

.field public combOpRGB2:Lcom/ardor3d/image/Texture$CombinerOperandRGB;

.field public combSrcAlpha0:Lcom/ardor3d/image/Texture$CombinerSource;

.field public combSrcAlpha1:Lcom/ardor3d/image/Texture$CombinerSource;

.field public combSrcAlpha2:Lcom/ardor3d/image/Texture$CombinerSource;

.field public combSrcRGB0:Lcom/ardor3d/image/Texture$CombinerSource;

.field public combSrcRGB1:Lcom/ardor3d/image/Texture$CombinerSource;

.field public combSrcRGB2:Lcom/ardor3d/image/Texture$CombinerSource;

.field public enabled:[Z

.field public envAlphaScale:Lcom/ardor3d/image/Texture$CombinerScale;

.field public envMode:Lcom/ardor3d/image/Texture$ApplyMode;

.field public envRGBScale:Lcom/ardor3d/image/Texture$CombinerScale;

.field public identityMatrix:Z

.field public lodBias:F

.field public rgbCombineFunc:Lcom/ardor3d/image/Texture$CombinerFunctionRGB;

.field public texMatrix:Lcom/ardor3d/math/Matrix4;

.field public texScale:Lcom/ardor3d/math/Vector3;

.field public textureGenQ:Z

.field public textureGenQMode:I

.field public textureGenR:Z

.field public textureGenRMode:I

.field public textureGenS:Z

.field public textureGenSMode:I

.field public textureGenT:Z

.field public textureGenTMode:I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/ardor3d/renderer/state/record/StateRecord;-><init>()V

    invoke-static {}, Lcom/ardor3d/image/Texture$Type;->values()[Lcom/ardor3d/image/Texture$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->enabled:[Z

    new-instance v0, Lcom/ardor3d/math/Matrix4;

    invoke-direct {v0}, Lcom/ardor3d/math/Matrix4;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->texMatrix:Lcom/ardor3d/math/Matrix4;

    new-instance v0, Lcom/ardor3d/math/Vector3;

    invoke-direct {v0}, Lcom/ardor3d/math/Vector3;-><init>()V

    iput-object v0, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->texScale:Lcom/ardor3d/math/Vector3;

    const/4 v0, -0x1

    iput v0, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->boundTexture:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->envMode:Lcom/ardor3d/image/Texture$ApplyMode;

    iput-object v1, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->envRGBScale:Lcom/ardor3d/image/Texture$CombinerScale;

    iput-object v1, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->envAlphaScale:Lcom/ardor3d/image/Texture$CombinerScale;

    new-instance v2, Lcom/ardor3d/math/ColorRGBA;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-direct {v2, v3, v3, v3, v3}, Lcom/ardor3d/math/ColorRGBA;-><init>(FFFF)V

    iput-object v2, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->blendColor:Lcom/ardor3d/math/ColorRGBA;

    iput-object v1, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->rgbCombineFunc:Lcom/ardor3d/image/Texture$CombinerFunctionRGB;

    iput-object v1, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->alphaCombineFunc:Lcom/ardor3d/image/Texture$CombinerFunctionAlpha;

    iput-object v1, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->combSrcRGB0:Lcom/ardor3d/image/Texture$CombinerSource;

    iput-object v1, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->combSrcRGB1:Lcom/ardor3d/image/Texture$CombinerSource;

    iput-object v1, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->combSrcRGB2:Lcom/ardor3d/image/Texture$CombinerSource;

    iput-object v1, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->combOpRGB0:Lcom/ardor3d/image/Texture$CombinerOperandRGB;

    iput-object v1, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->combOpRGB1:Lcom/ardor3d/image/Texture$CombinerOperandRGB;

    iput-object v1, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->combOpRGB2:Lcom/ardor3d/image/Texture$CombinerOperandRGB;

    iput-object v1, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->combSrcAlpha0:Lcom/ardor3d/image/Texture$CombinerSource;

    iput-object v1, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->combSrcAlpha1:Lcom/ardor3d/image/Texture$CombinerSource;

    iput-object v1, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->combSrcAlpha2:Lcom/ardor3d/image/Texture$CombinerSource;

    iput-object v1, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->combOpAlpha0:Lcom/ardor3d/image/Texture$CombinerOperandAlpha;

    iput-object v1, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->combOpAlpha1:Lcom/ardor3d/image/Texture$CombinerOperandAlpha;

    iput-object v1, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->combOpAlpha2:Lcom/ardor3d/image/Texture$CombinerOperandAlpha;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->identityMatrix:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->lodBias:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->textureGenQ:Z

    iput-boolean v1, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->textureGenR:Z

    iput-boolean v1, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->textureGenS:Z

    iput-boolean v1, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->textureGenT:Z

    iput v0, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->textureGenQMode:I

    iput v0, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->textureGenRMode:I

    iput v0, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->textureGenSMode:I

    iput v0, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->textureGenTMode:I

    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 5

    invoke-super {p0}, Lcom/ardor3d/renderer/state/record/StateRecord;->invalidate()V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->enabled:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    iget-object v0, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->texMatrix:Lcom/ardor3d/math/Matrix4;

    invoke-virtual {v0}, Lcom/ardor3d/math/Matrix4;->setIdentity()Lcom/ardor3d/math/Matrix4;

    iget-object v0, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->texScale:Lcom/ardor3d/math/Vector3;

    invoke-virtual {v0}, Lcom/ardor3d/math/Vector3;->zero()Lcom/ardor3d/math/Vector3;

    const/4 v0, -0x1

    iput v0, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->boundTexture:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->lodBias:F

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->envMode:Lcom/ardor3d/image/Texture$ApplyMode;

    iput-object v2, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->envRGBScale:Lcom/ardor3d/image/Texture$CombinerScale;

    iput-object v2, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->envAlphaScale:Lcom/ardor3d/image/Texture$CombinerScale;

    iget-object v3, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->blendColor:Lcom/ardor3d/math/ColorRGBA;

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v3, v4, v4, v4, v4}, Lcom/ardor3d/math/ColorRGBA;->set(FFFF)Lcom/ardor3d/math/ColorRGBA;

    iput-object v2, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->rgbCombineFunc:Lcom/ardor3d/image/Texture$CombinerFunctionRGB;

    iput-object v2, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->alphaCombineFunc:Lcom/ardor3d/image/Texture$CombinerFunctionAlpha;

    iput-object v2, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->combSrcRGB0:Lcom/ardor3d/image/Texture$CombinerSource;

    iput-object v2, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->combSrcRGB1:Lcom/ardor3d/image/Texture$CombinerSource;

    iput-object v2, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->combSrcRGB2:Lcom/ardor3d/image/Texture$CombinerSource;

    iput-object v2, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->combOpRGB0:Lcom/ardor3d/image/Texture$CombinerOperandRGB;

    iput-object v2, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->combOpRGB1:Lcom/ardor3d/image/Texture$CombinerOperandRGB;

    iput-object v2, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->combOpRGB2:Lcom/ardor3d/image/Texture$CombinerOperandRGB;

    iput-object v2, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->combSrcAlpha0:Lcom/ardor3d/image/Texture$CombinerSource;

    iput-object v2, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->combSrcAlpha1:Lcom/ardor3d/image/Texture$CombinerSource;

    iput-object v2, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->combSrcAlpha2:Lcom/ardor3d/image/Texture$CombinerSource;

    iput-object v2, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->combOpAlpha0:Lcom/ardor3d/image/Texture$CombinerOperandAlpha;

    iput-object v2, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->combOpAlpha1:Lcom/ardor3d/image/Texture$CombinerOperandAlpha;

    iput-object v2, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->combOpAlpha2:Lcom/ardor3d/image/Texture$CombinerOperandAlpha;

    iput-boolean v1, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->identityMatrix:Z

    iput-boolean v1, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->textureGenQ:Z

    iput-boolean v1, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->textureGenR:Z

    iput-boolean v1, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->textureGenS:Z

    iput-boolean v1, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->textureGenT:Z

    iput v0, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->textureGenQMode:I

    iput v0, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->textureGenRMode:I

    iput v0, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->textureGenSMode:I

    iput v0, p0, Lcom/ardor3d/renderer/state/record/TextureUnitRecord;->textureGenTMode:I

    return-void
.end method
