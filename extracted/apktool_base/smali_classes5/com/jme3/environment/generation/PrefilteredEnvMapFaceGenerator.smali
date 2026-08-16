.class public Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;
.super Lcom/jme3/environment/generation/RunnableWithProgress;
.source "SourceFile"


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field H:Lcom/jme3/math/Vector3f;

.field Xi:Lcom/jme3/math/Vector4f;

.field private final app:Lcom/jme3/app/Application;

.field c:Lcom/jme3/math/ColorRGBA;

.field private face:I

.field private fixSeamsMethod:Lcom/jme3/environment/util/EnvMapUtils$FixSeamsMethod;

.field private genType:Lcom/jme3/environment/util/EnvMapUtils$GenerationType;

.field private sourceMap:Lcom/jme3/texture/TextureCubeMap;

.field private store:Lcom/jme3/texture/TextureCubeMap;

.field private targetMapSize:I

.field tmp:Lcom/jme3/math/Vector3f;

.field tmp1:Lcom/jme3/math/Vector3f;

.field tmp2:Lcom/jme3/math/Vector3f;

.field tmp3:Lcom/jme3/math/Vector3f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/app/Application;ILcom/jme3/environment/generation/JobProgressListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/app/Application;",
            "I",
            "Lcom/jme3/environment/generation/JobProgressListener<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/jme3/environment/generation/RunnableWithProgress;-><init>(Lcom/jme3/environment/generation/JobProgressListener;)V

    const/4 p3, 0x0

    iput p3, p0, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->face:I

    new-instance p3, Lcom/jme3/math/Vector4f;

    invoke-direct {p3}, Lcom/jme3/math/Vector4f;-><init>()V

    iput-object p3, p0, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->Xi:Lcom/jme3/math/Vector4f;

    new-instance p3, Lcom/jme3/math/Vector3f;

    invoke-direct {p3}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object p3, p0, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->H:Lcom/jme3/math/Vector3f;

    new-instance p3, Lcom/jme3/math/Vector3f;

    invoke-direct {p3}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object p3, p0, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->tmp:Lcom/jme3/math/Vector3f;

    new-instance p3, Lcom/jme3/math/ColorRGBA;

    invoke-direct {p3}, Lcom/jme3/math/ColorRGBA;-><init>()V

    iput-object p3, p0, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->c:Lcom/jme3/math/ColorRGBA;

    new-instance p3, Lcom/jme3/math/Vector3f;

    invoke-direct {p3}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object p3, p0, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->tmp1:Lcom/jme3/math/Vector3f;

    new-instance p3, Lcom/jme3/math/Vector3f;

    invoke-direct {p3}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object p3, p0, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->tmp2:Lcom/jme3/math/Vector3f;

    new-instance p3, Lcom/jme3/math/Vector3f;

    invoke-direct {p3}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object p3, p0, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->tmp3:Lcom/jme3/math/Vector3f;

    iput-object p1, p0, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->app:Lcom/jme3/app/Application;

    iput p2, p0, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->face:I

    return-void
.end method

.method public static synthetic access$000(Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;)I
    .locals 0

    iget p0, p0, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->face:I

    return p0
.end method

.method private computeMipLevel(FIFF)F
    .locals 5

    const v0, 0x3727c5ac    # 1.0E-5f

    add-float/2addr v0, p4

    invoke-direct {p0, v0, p1}, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->ggx(FF)F

    move-result p1

    mul-float/2addr p1, v0

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr p4, v0

    div-float/2addr p1, p4

    int-to-float p2, p2

    mul-float/2addr p2, p1

    const/high16 p1, 0x3f800000    # 1.0f

    div-float p2, p1, p2

    const/high16 p4, 0x40c00000    # 6.0f

    mul-float/2addr p4, p3

    mul-float/2addr p4, p3

    const v0, 0x41490fdb

    div-float/2addr v0, p4

    float-to-double p3, p3

    invoke-static {p3, p4}, Ljava/lang/Math;->log(D)D

    move-result-wide p3

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    div-double/2addr p3, v3

    div-float/2addr p2, v0

    float-to-double v3, p2

    invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    div-double/2addr v3, v0

    const/high16 p2, 0x3f000000    # 0.5f

    double-to-float v0, v3

    mul-float/2addr v0, p2

    add-float/2addr v0, p1

    const/4 p1, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    double-to-float p2, p3

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1
.end method

.method private generatePrefilteredEnvMap(Lcom/jme3/texture/TextureCubeMap;ILcom/jme3/environment/util/EnvMapUtils$FixSeamsMethod;Lcom/jme3/texture/TextureCubeMap;)Lcom/jme3/texture/TextureCubeMap;
    .locals 22

    move-object/from16 v8, p0

    move-object/from16 v0, p4

    :try_start_0
    invoke-virtual/range {p4 .. p4}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/texture/Image;->getMipMapSizes()[I

    move-result-object v1

    array-length v9, v1

    invoke-virtual {v8, v9}, Lcom/jme3/environment/generation/RunnableWithProgress;->setEnd(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/texture/Image;->hasMipmaps()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/texture/Image;->getMipMapSizes()[I

    move-result-object v1

    array-length v1, v1

    if-lt v1, v9, :cond_3

    new-instance v10, Lcom/jme3/environment/util/CubeMapWrapper;

    move-object/from16 v1, p1

    invoke-direct {v10, v1}, Lcom/jme3/environment/util/CubeMapWrapper;-><init>(Lcom/jme3/texture/TextureCubeMap;)V

    new-instance v11, Lcom/jme3/environment/util/CubeMapWrapper;

    invoke-direct {v11, v0}, Lcom/jme3/environment/util/CubeMapWrapper;-><init>(Lcom/jme3/texture/TextureCubeMap;)V

    new-instance v12, Lcom/jme3/math/Vector3f;

    invoke-direct {v12}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v13, Lcom/jme3/math/Vector3f;

    invoke-direct {v13}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v14, Lcom/jme3/math/ColorRGBA;

    invoke-direct {v14}, Lcom/jme3/math/ColorRGBA;-><init>()V

    const/4 v15, 0x0

    move/from16 v7, p2

    move v6, v15

    :goto_0
    if-ge v6, v9, :cond_2

    invoke-static {v6, v9}, Lcom/jme3/environment/util/EnvMapUtils;->getRoughnessFromMip(II)F

    move-result v16

    invoke-static {v6, v9}, Lcom/jme3/environment/util/EnvMapUtils;->getSampleFromMip(II)I

    move-result v17

    move v5, v15

    :goto_1
    if-ge v5, v7, :cond_1

    move v4, v15

    :goto_2
    if-ge v4, v7, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v13, v1, v1, v1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    iget v3, v8, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->face:I

    move v1, v4

    move v2, v5

    move/from16 v18, v3

    move v3, v7

    move/from16 v19, v4

    move/from16 v4, v18

    move/from16 v18, v5

    move-object v5, v12

    move/from16 v20, v6

    move-object/from16 v6, p3

    invoke-static/range {v1 .. v6}, Lcom/jme3/environment/util/EnvMapUtils;->getVectorFromCubemapFaceTexCoord(IIIILcom/jme3/math/Vector3f;Lcom/jme3/environment/util/EnvMapUtils$FixSeamsMethod;)Lcom/jme3/math/Vector3f;

    move-object/from16 v1, p0

    move-object v2, v10

    move/from16 v3, v16

    move-object v4, v12

    move/from16 v5, v17

    move/from16 v6, v20

    move/from16 v21, v7

    move-object v7, v13

    invoke-direct/range {v1 .. v7}, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->prefilterEnvMapTexel(Lcom/jme3/environment/util/CubeMapWrapper;FLcom/jme3/math/Vector3f;IILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget v1, v13, Lcom/jme3/math/Vector3f;->x:F

    const v2, 0x38d1b717    # 1.0E-4f

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v3, v13, Lcom/jme3/math/Vector3f;->y:F

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget v4, v13, Lcom/jme3/math/Vector3f;->z:F

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v14, v1, v3, v2, v4}, Lcom/jme3/math/ColorRGBA;->set(FFFF)Lcom/jme3/math/ColorRGBA;

    iget v4, v8, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->face:I

    move-object v1, v11

    move/from16 v2, v19

    move/from16 v3, v18

    move/from16 v5, v20

    move-object v6, v14

    invoke-virtual/range {v1 .. v6}, Lcom/jme3/environment/util/CubeMapWrapper;->setPixel(IIIILcom/jme3/math/ColorRGBA;)V

    add-int/lit8 v4, v19, 0x1

    move/from16 v5, v18

    move/from16 v6, v20

    move/from16 v7, v21

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_0
    move/from16 v18, v5

    move/from16 v20, v6

    move/from16 v21, v7

    add-int/lit8 v5, v18, 0x1

    goto :goto_1

    :cond_1
    move/from16 v20, v6

    move/from16 v21, v7

    div-int/lit8 v7, v21, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/environment/generation/RunnableWithProgress;->progress()V

    add-int/lit8 v6, v20, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The input cube map must have at least "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "mip maps"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    throw v0
.end method

.method private ggx(FF)F
    .locals 2

    mul-float/2addr p1, p1

    mul-float v0, p2, p2

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    mul-float/2addr p1, v0

    add-float/2addr p1, v1

    div-float/2addr p2, p1

    mul-float/2addr p2, p2

    const p1, 0x3ea2f983

    mul-float/2addr p2, p1

    return p2
.end method

.method private init()V
    .locals 3

    iget-object v0, p0, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->Xi:Lcom/jme3/math/Vector4f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/jme3/math/Vector4f;->set(FFFF)Lcom/jme3/math/Vector4f;

    iget-object v0, p0, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->H:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->tmp:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->c:Lcom/jme3/math/ColorRGBA;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/jme3/math/ColorRGBA;->set(FFFF)Lcom/jme3/math/ColorRGBA;

    iget-object v0, p0, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->tmp1:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->tmp2:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->tmp3:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    invoke-virtual {p0}, Lcom/jme3/environment/generation/RunnableWithProgress;->reset()V

    return-void
.end method

.method private prefilterEnvMapTexel(Lcom/jme3/environment/util/CubeMapWrapper;FLcom/jme3/math/Vector3f;IILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 27

    move-object/from16 v6, p0

    move/from16 v7, p2

    move-object/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    iget-object v0, v6, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->genType:Lcom/jme3/environment/util/EnvMapUtils$GenerationType;

    sget-object v1, Lcom/jme3/environment/util/EnvMapUtils$GenerationType;->HighQuality:Lcom/jme3/environment/util/EnvMapUtils$GenerationType;

    const/4 v12, 0x1

    if-ne v0, v1, :cond_1

    if-ne v9, v12, :cond_0

    move v0, v12

    goto :goto_0

    :cond_0
    const/16 v0, 0x12

    :goto_0
    move v13, v0

    goto :goto_1

    :cond_1
    move v13, v12

    :goto_1
    int-to-float v0, v13

    const v1, 0x40c90fdb

    div-float v14, v1, v0

    iget v0, v8, Lcom/jme3/math/Vector3f;->z:F

    iget v2, v8, Lcom/jme3/math/Vector3f;->x:F

    add-float/2addr v0, v2

    invoke-static {v0}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v0

    float-to-double v2, v0

    const-wide/high16 v4, 0x4070000000000000L    # 256.0

    mul-double/2addr v2, v4

    double-to-float v0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v0, v2

    rem-float/2addr v0, v1

    invoke-static {v0}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v2

    mul-float v15, v14, v0

    mul-float v0, v7, v7

    mul-float v5, v0, v0

    sget-object v0, Lcom/jme3/math/Vector3f;->UNIT_X:Lcom/jme3/math/Vector3f;

    iget v1, v8, Lcom/jme3/math/Vector3f;->z:F

    invoke-static {v1}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3feff7ced916872bL    # 0.999

    cmpg-double v1, v1, v3

    if-gez v1, :cond_2

    sget-object v0, Lcom/jme3/math/Vector3f;->UNIT_Y:Lcom/jme3/math/Vector3f;

    :cond_2
    iget-object v1, v6, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->tmp1:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/jme3/math/Vector3f;->crossLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    move-result-object v4

    iget-object v0, v6, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->tmp2:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v8}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/jme3/math/Vector3f;->crossLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v16

    new-instance v3, Lcom/jme3/math/Vector3f;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v3, v2, v2, v0}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    const/4 v0, 0x0

    move v12, v2

    :goto_2
    if-ge v0, v9, :cond_5

    iget-object v2, v6, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->Xi:Lcom/jme3/math/Vector4f;

    invoke-static {v0, v9, v2}, Lcom/jme3/environment/util/EnvMapUtils;->getHammersleyPoint(IILcom/jme3/math/Vector4f;)Lcom/jme3/math/Vector4f;

    move-result-object v2

    iput-object v2, v6, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->Xi:Lcom/jme3/math/Vector4f;

    move/from16 v18, v0

    iget-object v0, v6, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->H:Lcom/jme3/math/Vector3f;

    invoke-virtual {v6, v2, v5, v0}, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->importanceSampleGGX(Lcom/jme3/math/Vector4f;FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iput-object v0, v6, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->H:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    iget-object v0, v6, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->H:Lcom/jme3/math/Vector3f;

    iget v2, v0, Lcom/jme3/math/Vector3f;->z:F

    const/high16 v19, 0x40000000    # 2.0f

    move-object/from16 v20, v1

    mul-float v1, v2, v19

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget v0, v1, Lcom/jme3/math/Vector3f;->z:F

    move/from16 v19, v0

    int-to-float v0, v10

    if-eqz v10, :cond_3

    iget v0, v6, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->targetMapSize:I

    int-to-float v0, v0

    invoke-direct {v6, v7, v9, v0, v2}, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->computeMipLevel(FIFF)F

    move-result v0

    :cond_3
    move/from16 v21, v19

    move/from16 v19, v18

    move/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v2, v20

    move-object/from16 v20, v1

    move-object/from16 v22, v2

    const/16 v17, 0x0

    move-object/from16 v2, p3

    move-object/from16 v23, v3

    move-object v3, v4

    move-object/from16 v24, v4

    move-object/from16 v4, v16

    move/from16 v25, v5

    move-object/from16 v5, v22

    invoke-direct/range {v0 .. v5}, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->toWorld(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move/from16 v3, v21

    move/from16 v4, v18

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->samplePixel(Lcom/jme3/environment/util/CubeMapWrapper;Lcom/jme3/math/Vector3f;FFLcom/jme3/math/Vector3f;)F

    move-result v0

    add-float/2addr v12, v0

    const/4 v5, 0x1

    :goto_3
    if-ge v5, v13, :cond_4

    int-to-float v0, v5

    mul-float/2addr v0, v14

    add-float/2addr v0, v15

    move-object/from16 v3, v20

    move-object/from16 v4, v22

    invoke-direct {v6, v0, v3, v4}, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->rotateDirection(FLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v4}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, p3

    move-object/from16 v3, v24

    move-object/from16 v4, v16

    move/from16 v26, v5

    move-object/from16 v5, v22

    invoke-direct/range {v0 .. v5}, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->toWorld(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move/from16 v3, v21

    move/from16 v4, v18

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->samplePixel(Lcom/jme3/environment/util/CubeMapWrapper;Lcom/jme3/math/Vector3f;FFLcom/jme3/math/Vector3f;)F

    move-result v0

    add-float/2addr v12, v0

    add-int/lit8 v5, v26, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v19, 0x1

    move/from16 v2, v17

    move-object/from16 v1, v22

    move-object/from16 v3, v23

    move-object/from16 v4, v24

    move/from16 v5, v25

    goto/16 :goto_2

    :cond_5
    move/from16 v17, v2

    cmpl-float v0, v12, v17

    if-lez v0, :cond_6

    invoke-virtual {v11, v12}, Lcom/jme3/math/Vector3f;->divideLocal(F)Lcom/jme3/math/Vector3f;

    :cond_6
    return-object v11
.end method

.method private rotateDirection(FLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 5

    invoke-static {p1}, Lcom/jme3/math/FastMath;->sin(F)F

    move-result v0

    invoke-static {p1}, Lcom/jme3/math/FastMath;->cos(F)F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    iget v2, p2, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v2, p1

    iget v3, p2, Lcom/jme3/math/Vector3f;->y:F

    mul-float v4, v3, v0

    add-float/2addr v2, v4

    iput v2, p3, Lcom/jme3/math/Vector3f;->x:F

    iget v2, p2, Lcom/jme3/math/Vector3f;->x:F

    neg-float v2, v2

    mul-float/2addr v2, v0

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    iput v2, p3, Lcom/jme3/math/Vector3f;->y:F

    iget p2, p2, Lcom/jme3/math/Vector3f;->z:F

    add-float/2addr v1, p1

    mul-float/2addr p2, v1

    iput p2, p3, Lcom/jme3/math/Vector3f;->z:F

    return-object p3
.end method

.method private samplePixel(Lcom/jme3/environment/util/CubeMapWrapper;Lcom/jme3/math/Vector3f;FFLcom/jme3/math/Vector3f;)F
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p3, v0

    if-gtz v1, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->c:Lcom/jme3/math/ColorRGBA;

    invoke-virtual {p1, p2, p4, v0}, Lcom/jme3/environment/util/CubeMapWrapper;->getPixel(Lcom/jme3/math/Vector3f;FLcom/jme3/math/ColorRGBA;)Lcom/jme3/math/ColorRGBA;

    iget p1, p5, Lcom/jme3/math/Vector3f;->x:F

    iget-object p2, p0, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->c:Lcom/jme3/math/ColorRGBA;

    iget p2, p2, Lcom/jme3/math/ColorRGBA;->r:F

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    invoke-virtual {p5, p1}, Lcom/jme3/math/Vector3f;->setX(F)Lcom/jme3/math/Vector3f;

    iget p1, p5, Lcom/jme3/math/Vector3f;->y:F

    iget-object p2, p0, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->c:Lcom/jme3/math/ColorRGBA;

    iget p2, p2, Lcom/jme3/math/ColorRGBA;->g:F

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    invoke-virtual {p5, p1}, Lcom/jme3/math/Vector3f;->setY(F)Lcom/jme3/math/Vector3f;

    iget p1, p5, Lcom/jme3/math/Vector3f;->z:F

    iget-object p2, p0, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->c:Lcom/jme3/math/ColorRGBA;

    iget p2, p2, Lcom/jme3/math/ColorRGBA;->b:F

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    invoke-virtual {p5, p1}, Lcom/jme3/math/Vector3f;->setZ(F)Lcom/jme3/math/Vector3f;

    return p3
.end method

.method private toWorld(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 1

    invoke-virtual {p5, p3}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p3

    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {p3, v0}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    iget-object p3, p0, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->tmp:Lcom/jme3/math/Vector3f;

    invoke-virtual {p3, p4}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p3

    iget p4, p1, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {p3, p4}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    iget-object p3, p0, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->tmp:Lcom/jme3/math/Vector3f;

    invoke-virtual {p5, p3}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p3, p0, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->tmp:Lcom/jme3/math/Vector3f;

    invoke-virtual {p3, p2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p2, p1}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->tmp:Lcom/jme3/math/Vector3f;

    invoke-virtual {p5, p1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
.end method


# virtual methods
.method public importanceSampleGGX(Lcom/jme3/math/Vector4f;FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 3

    if-nez p3, :cond_0

    new-instance p3, Lcom/jme3/math/Vector3f;

    invoke-direct {p3}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    iget v0, p1, Lcom/jme3/math/Vector4f;->x:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, v0

    sub-float/2addr p2, v1

    mul-float/2addr p2, v0

    add-float/2addr p2, v1

    div-float/2addr v2, p2

    invoke-static {v2}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result p2

    mul-float v0, p2, p2

    sub-float/2addr v1, v0

    invoke-static {v1}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v0

    iget v1, p1, Lcom/jme3/math/Vector4f;->z:F

    mul-float/2addr v1, v0

    iget p1, p1, Lcom/jme3/math/Vector4f;->w:F

    mul-float/2addr v0, p1

    iput v1, p3, Lcom/jme3/math/Vector3f;->x:F

    iput v0, p3, Lcom/jme3/math/Vector3f;->y:F

    iput p2, p3, Lcom/jme3/math/Vector3f;->z:F

    return-object p3
.end method

.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->app:Lcom/jme3/app/Application;

    new-instance v1, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator$1;

    invoke-direct {v1, p0}, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator$1;-><init>(Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;)V

    invoke-interface {v0, v1}, Lcom/jme3/app/Application;->enqueue(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    iget-object v0, p0, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->sourceMap:Lcom/jme3/texture/TextureCubeMap;

    iget v1, p0, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->targetMapSize:I

    iget-object v2, p0, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->fixSeamsMethod:Lcom/jme3/environment/util/EnvMapUtils$FixSeamsMethod;

    iget-object v3, p0, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->store:Lcom/jme3/texture/TextureCubeMap;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->generatePrefilteredEnvMap(Lcom/jme3/texture/TextureCubeMap;ILcom/jme3/environment/util/EnvMapUtils$FixSeamsMethod;Lcom/jme3/texture/TextureCubeMap;)Lcom/jme3/texture/TextureCubeMap;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->store:Lcom/jme3/texture/TextureCubeMap;

    iget-object v0, p0, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->app:Lcom/jme3/app/Application;

    new-instance v1, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator$2;

    invoke-direct {v1, p0}, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator$2;-><init>(Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;)V

    invoke-interface {v0, v1}, Lcom/jme3/app/Application;->enqueue(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public setGenerationParam(Lcom/jme3/texture/TextureCubeMap;ILcom/jme3/environment/util/EnvMapUtils$FixSeamsMethod;Lcom/jme3/environment/util/EnvMapUtils$GenerationType;Lcom/jme3/texture/TextureCubeMap;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->sourceMap:Lcom/jme3/texture/TextureCubeMap;

    iput p2, p0, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->targetMapSize:I

    iput-object p3, p0, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->fixSeamsMethod:Lcom/jme3/environment/util/EnvMapUtils$FixSeamsMethod;

    iput-object p5, p0, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->store:Lcom/jme3/texture/TextureCubeMap;

    iput-object p4, p0, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->genType:Lcom/jme3/environment/util/EnvMapUtils$GenerationType;

    invoke-direct {p0}, Lcom/jme3/environment/generation/PrefilteredEnvMapFaceGenerator;->init()V

    return-void
.end method
