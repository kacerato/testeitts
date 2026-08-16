.class public Lub/j;
.super Lub/n;
.source "SourceFile"


# instance fields
.field public final p:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "noiseData"
        }
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->s:[I

    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->textureConfig:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    iget v2, v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->maxResolutionID:I

    aget v0, v0, v2

    const/4 v2, 0x1

    invoke-direct {p0, v0, v0, v1, v2}, Lub/n;-><init>(IILcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;Z)V

    iput-object p1, p0, Lub/j;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    return-void
.end method

.method public static z0(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "inProjectFile"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->textureConfig:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    new-instance v1, Lub/j;

    invoke-direct {v1, p0}, Lub/j;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;)V

    invoke-virtual {v1}, Lub/j;->U0()V

    invoke-virtual {v1}, Lub/p;->getWidth()I

    move-result p0

    invoke-virtual {v1}, Lub/p;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v1}, Lub/p;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Lub/p;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_1

    move v6, v4

    :goto_1
    if-ge v6, v3, :cond_0

    invoke-virtual {v1, v5, v6}, Lub/n;->i(II)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v7

    iget v7, v7, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    invoke-virtual {p0, v5, v6, v7}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, LTc/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".texture"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->R()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->y()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->s()I

    move-result v0

    invoke-virtual {p0, v1, v0, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->s()I

    move-result v0

    invoke-virtual {p0, v1, v0, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catch_0
    move-exception p0

    goto :goto_5

    :goto_3
    :try_start_3
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_6
    return-void
.end method


# virtual methods
.method public B0()Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;
    .locals 1

    iget-object v0, p0, Lub/j;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mCellularDistanceFunction:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;

    return-object v0
.end method

.method public C0()F
    .locals 1

    iget-object v0, p0, Lub/j;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mCellularJitterModifier:F

    return v0
.end method

.method public D0()Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularReturnType;
    .locals 1

    iget-object v0, p0, Lub/j;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mCellularReturnType:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularReturnType;

    return-object v0
.end method

.method public E0()F
    .locals 1

    iget-object v0, p0, Lub/j;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mDomainWarpAmp:F

    return v0
.end method

.method public F0()Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$DomainWarpType;
    .locals 1

    iget-object v0, p0, Lub/j;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mDomainWarpType:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$DomainWarpType;

    return-object v0
.end method

.method public G0()F
    .locals 1

    iget-object v0, p0, Lub/j;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mFractalBounding:F

    return v0
.end method

.method public H0()Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$FractalType;
    .locals 1

    iget-object v0, p0, Lub/j;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mFractalType:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$FractalType;

    return-object v0
.end method

.method public I0()F
    .locals 1

    iget-object v0, p0, Lub/j;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mFrequency:F

    return v0
.end method

.method public J0()F
    .locals 1

    iget-object v0, p0, Lub/j;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mGain:F

    return v0
.end method

.method public K0()F
    .locals 1

    iget-object v0, p0, Lub/j;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mLacunarity:F

    return v0
.end method

.method public L0()Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;
    .locals 1

    iget-object v0, p0, Lub/j;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    return-object v0
.end method

.method public M0()Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;
    .locals 1

    iget-object v0, p0, Lub/j;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mNoiseType:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;

    return-object v0
.end method

.method public N0()I
    .locals 1

    iget-object v0, p0, Lub/j;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mOctaves:I

    return v0
.end method

.method public O0()F
    .locals 1

    iget-object v0, p0, Lub/j;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mPingPongStrength:F

    return v0
.end method

.method public P0()Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$RotationType3D;
    .locals 1

    iget-object v0, p0, Lub/j;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    iget-object v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mRotationType3D:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$RotationType3D;

    return-object v0
.end method

.method public Q0()I
    .locals 1

    iget-object v0, p0, Lub/j;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mSeed:I

    return v0
.end method

.method public R0()F
    .locals 1

    iget-object v0, p0, Lub/j;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    iget v0, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mWeightedStrength:F

    return v0
.end method

.method public U0()V
    .locals 14

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite;-><init>()V

    const-class v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    const-class v6, Lcom/google/gson/annotations/Expose;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {v5, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    const-class v7, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    iget-object v6, p0, Lub/j;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v7, v0, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    :catch_1
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lub/p;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lub/p;->getHeight()I

    move-result v2

    new-instance v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$a;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$a;-><init>(FF)V

    new-instance v6, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$a;

    invoke-direct {v6, v5, v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$a;-><init>(FF)V

    new-instance v7, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite;

    invoke-direct {v7}, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite;-><init>()V

    iget-object v8, p0, Lub/j;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    iget-object v8, v8, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->domainWarpFractalType:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$FractalType;

    invoke-virtual {v7, v8}, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite;->SetFractalType(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$FractalType;)V

    iget-object v8, p0, Lub/j;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    iget v8, v8, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->dw_gain:F

    invoke-virtual {v7, v8}, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite;->SetFractalGain(F)V

    iget-object v8, p0, Lub/j;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    iget v8, v8, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->dw_lacunarity:F

    invoke-virtual {v7, v8}, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite;->SetFractalLacunarity(F)V

    iget-object v8, p0, Lub/j;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    iget v8, v8, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->dw_octaves:I

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite;->SetFractalLacunarity(F)V

    move v8, v3

    :goto_2
    if-ge v8, v1, :cond_4

    move v9, v3

    :goto_3
    if-ge v9, v2, :cond_3

    int-to-float v10, v8

    int-to-float v11, v1

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v11, v12

    div-float/2addr v10, v11

    int-to-float v11, v9

    int-to-float v13, v2

    sub-float/2addr v13, v12

    div-float/2addr v11, v13

    iput v10, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$a;->a:F

    iput v11, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$a;->b:F

    iget-object v13, p0, Lub/j;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    iget-boolean v13, v13, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->enableDomainWarp:Z

    if-eqz v13, :cond_2

    new-instance v13, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$a;

    invoke-direct {v13, v10, v11}, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$a;-><init>(FF)V

    invoke-virtual {v0, v13}, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite;->DomainWarp(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$a;)V

    iget v10, v13, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$a;->a:F

    iget v11, v13, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$a;->b:F

    invoke-virtual {v7, v10, v11}, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite;->GetNoise(FF)F

    move-result v10

    iget-object v11, p0, Lub/j;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    iget v11, v11, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->dw_frequency:F

    mul-float v13, v10, v11

    iput v13, v6, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$a;->a:F

    mul-float/2addr v10, v11

    iput v10, v6, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$a;->b:F

    goto :goto_4

    :cond_2
    iput v5, v6, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$a;->a:F

    iput v5, v6, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$a;->b:F

    :goto_4
    iget v10, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$a;->a:F

    iget v11, v6, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$a;->a:F

    add-float/2addr v10, v11

    iget v11, v4, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$a;->b:F

    iget v13, v6, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$a;->b:F

    add-float/2addr v11, v13

    invoke-virtual {v0, v10, v11}, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite;->GetNoise(FF)F

    move-result v10

    add-float/2addr v10, v12

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    iget-object v11, p0, Lub/j;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    invoke-virtual {v11}, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->getColoRamp()Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/itsmagic/engine/Engines/Engine/Gradient/Gradient;->k(F)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v10

    invoke-super {p0, v8, v9, v10}, Lub/n;->Y(IILcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public V0(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mCellularDistanceFunction"
        }
    .end annotation

    iget-object v0, p0, Lub/j;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mCellularDistanceFunction:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularDistanceFunction;

    return-void
.end method

.method public W0(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mCellularJitterModifier"
        }
    .end annotation

    iget-object v0, p0, Lub/j;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mCellularJitterModifier:F

    return-void
.end method

.method public X0(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularReturnType;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mCellularReturnType"
        }
    .end annotation

    iget-object v0, p0, Lub/j;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mCellularReturnType:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$CellularReturnType;

    return-void
.end method

.method public Y0(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mDomainWarpAmp"
        }
    .end annotation

    iget-object v0, p0, Lub/j;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mDomainWarpAmp:F

    return-void
.end method

.method public Z0(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$DomainWarpType;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mDomainWarpType"
        }
    .end annotation

    iget-object v0, p0, Lub/j;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mDomainWarpType:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$DomainWarpType;

    return-void
.end method

.method public a1(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mFractalBounding"
        }
    .end annotation

    iget-object v0, p0, Lub/j;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mFractalBounding:F

    return-void
.end method

.method public b1(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$FractalType;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mFractalType"
        }
    .end annotation

    iget-object v0, p0, Lub/j;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mFractalType:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$FractalType;

    return-void
.end method

.method public c1(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mFrequency"
        }
    .end annotation

    iget-object v0, p0, Lub/j;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mFrequency:F

    return-void
.end method

.method public d1(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mGain"
        }
    .end annotation

    iget-object v0, p0, Lub/j;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mGain:F

    return-void
.end method

.method public e1(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mLacunarity"
        }
    .end annotation

    iget-object v0, p0, Lub/j;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mLacunarity:F

    return-void
.end method

.method public f1(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mNoiseType"
        }
    .end annotation

    iget-object v0, p0, Lub/j;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mNoiseType:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$NoiseType;

    return-void
.end method

.method public g1(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mOctaves"
        }
    .end annotation

    iget-object v0, p0, Lub/j;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mOctaves:I

    return-void
.end method

.method public h1(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mPingPongStrength"
        }
    .end annotation

    iget-object v0, p0, Lub/j;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mPingPongStrength:F

    return-void
.end method

.method public i1(Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$RotationType3D;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mRotationType3D"
        }
    .end annotation

    iget-object v0, p0, Lub/j;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    iput-object p1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mRotationType3D:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/FastNoiseLite$RotationType3D;

    return-void
.end method

.method public j1(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mSeed"
        }
    .end annotation

    iget-object v0, p0, Lub/j;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mSeed:I

    return-void
.end method

.method public k1(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mWeightedStrength"
        }
    .end annotation

    iget-object v0, p0, Lub/j;->p:Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;

    iput p1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Noise/NoiseData;->mWeightedStrength:F

    return-void
.end method
