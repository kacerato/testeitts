.class public Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCEncoderNative;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "native-astcenc"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bitmap",
            "config"
        }
    .end annotation

    if-eqz p0, :cond_8

    if-eqz p1, :cond_7

    iget-object v0, p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->compressionFormat:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCEncoderNative;->d(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;)I

    move-result v5

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->j()I

    move-result v9

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v11, v2

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Failed to convert bitmap to ARGB_8888"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    move-object v0, p0

    goto :goto_0

    :goto_1
    :try_start_0
    new-instance v12, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2, v5, v5, v9}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCEncoderNative;->f(IIIII)I

    move-result v1

    invoke-direct {v12, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;-><init>(I)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v1, p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->compressionFormat:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCEncoderNative;->g(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;)Z

    move-result v6

    invoke-static {p1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCEncoderNative;->e(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)F

    move-result v7

    iget-boolean v8, p1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->gammaCorrection:Z

    move-object v1, v0

    move v4, v5

    move-object v10, v12

    invoke-static/range {v1 .. v10}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCEncoderNative;->nativeEncodeRGBA(Landroid/graphics/Bitmap;IIIIZFZILcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v12}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->capacity()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz p1, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v11, :cond_3

    if-eq v0, p0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    return-object v12

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_4
    :goto_2
    :try_start_1
    invoke-virtual {v12}, Lcom/itsmagic/engine/Engines/Native/Base/a;->isGarbage()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {v12}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->destroyImmediate()V

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "ASTC encoding failed"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    if-eqz v11, :cond_6

    if-eq v0, p0, :cond_6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_6

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_6
    throw p1

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "config can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bitmap can\'t be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;IIIILcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rgbaBuffer",
            "sourceWidth",
            "sourceHeight",
            "targetWidth",
            "targetHeight",
            "config"
        }
    .end annotation

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v0, p5

    if-eqz p0, :cond_6

    if-eqz v0, :cond_5

    if-lez p1, :cond_4

    if-lez p2, :cond_4

    if-lez v3, :cond_3

    if-lez v4, :cond_3

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->compressionFormat:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCEncoderNative;->d(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;)I

    move-result v6

    invoke-virtual/range {p5 .. p5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->j()I

    move-result v10

    new-instance v12, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-static {v3, v4, v6, v6, v10}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCEncoderNative;->f(IIIII)I

    move-result v1

    invoke-direct {v12, v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;-><init>(I)V

    iget-object v1, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->compressionFormat:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;

    invoke-static {v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCEncoderNative;->g(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;)Z

    move-result v7

    invoke-static/range {p5 .. p5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCEncoderNative;->e(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)F

    move-result v8

    iget-boolean v9, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->gammaCorrection:Z

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move v5, v6

    move-object v11, v12

    invoke-static/range {v0 .. v11}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCEncoderNative;->nativeEncodeRGBAFromBuffer(Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;IIIIIIZFZILcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v12}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->capacity()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v12

    :cond_1
    :goto_0
    invoke-virtual {v12}, Lcom/itsmagic/engine/Engines/Native/Base/a;->isGarbage()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v12}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->destroyImmediate()V

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ASTC encoding failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "targetWidth and targetHeight must be greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sourceWidth and sourceHeight must be greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "config can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "rgbaBuffer can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;IILcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rgbaBuffer",
            "width",
            "height",
            "config"
        }
    .end annotation

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCEncoderNative;->b(Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;IIIILcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "compressionFormat"
        }
    .end annotation

    const/4 v0, 0x6

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCEncoderNative$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    const/16 p0, 0xc

    return p0

    :pswitch_1
    const/16 p0, 0xa

    return p0

    :pswitch_2
    const/16 p0, 0x8

    return p0

    :cond_1
    const/4 p0, 0x4

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static e(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    iget-object p0, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->compressionEffort:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

    if-nez p0, :cond_0

    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;->Fast:Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;->b()I

    move-result p0

    :goto_0
    int-to-float p0, p0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$a;->b()I

    move-result p0

    goto :goto_0
.end method

.method public static f(IIIII)I
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "width",
            "height",
            "blockX",
            "blockY",
            "mipmapLevels"
        }
    .end annotation

    add-int/lit8 v0, p4, 0x1

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x20

    const/4 v2, 0x0

    invoke-static {v2, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    :goto_0
    if-gt v2, p4, :cond_1

    add-int v3, p0, p2

    sub-int/2addr v3, v1

    div-int/2addr v3, p2

    add-int v4, p1, p3

    sub-int/2addr v4, v1

    div-int/2addr v4, p3

    mul-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x10

    add-int/2addr v0, v3

    if-ne p0, v1, :cond_0

    if-ne p1, v1, :cond_0

    goto :goto_1

    :cond_0
    div-int/lit8 p0, p0, 0x2

    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    div-int/lit8 p1, p1, 0x2

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public static g(Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig$b;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "compressionFormat"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCEncoderNative$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_1

    const/4 v1, 0x6

    if-eq p0, v1, :cond_1

    const/16 v1, 0x8

    if-eq p0, v1, :cond_1

    const/16 v1, 0xa

    if-eq p0, v1, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static native nativeEncodeRGBA(Landroid/graphics/Bitmap;IIIIZFZILcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bitmap",
            "width",
            "height",
            "blockX",
            "blockY",
            "normalMap",
            "quality",
            "srgb",
            "mipmapLevels",
            "outputBuffer"
        }
    .end annotation
.end method

.method private static native nativeEncodeRGBAFromBuffer(Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;IIIIIIZFZILcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "rgbaBuffer",
            "sourceWidth",
            "sourceHeight",
            "targetWidth",
            "targetHeight",
            "blockX",
            "blockY",
            "normalMap",
            "quality",
            "srgb",
            "mipmapLevels",
            "outputBuffer"
        }
    .end annotation
.end method
