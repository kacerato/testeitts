.class public Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$b;,
        Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x7

.field public static final b:I = 0x4

.field public static final c:I = 0x0

.field public static final d:I = 0x1

.field public static final e:I = 0x2

.field public static final f:I = 0x3

.field public static final g:I = 0x4

.field public static final h:I = 0x5

.field public static final i:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "native-astc-loader"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(IIZ)Lcom/google/android/filament/Texture$b;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "blockX",
            "blockY",
            "srgb"
        }
    .end annotation

    const/16 v0, 0xc

    const/16 v1, 0xa

    const/16 v2, 0x8

    const/4 v3, 0x6

    const/4 v4, 0x4

    if-eqz p2, :cond_4

    if-ne p0, v4, :cond_0

    if-ne p1, v4, :cond_0

    sget-object p0, Lcom/google/android/filament/Texture$b;->SRGB8_ALPHA8_ASTC_4x4:Lcom/google/android/filament/Texture$b;

    return-object p0

    :cond_0
    if-ne p0, v3, :cond_1

    if-ne p1, v3, :cond_1

    sget-object p0, Lcom/google/android/filament/Texture$b;->SRGB8_ALPHA8_ASTC_6x6:Lcom/google/android/filament/Texture$b;

    return-object p0

    :cond_1
    if-ne p0, v2, :cond_2

    if-ne p1, v2, :cond_2

    sget-object p0, Lcom/google/android/filament/Texture$b;->SRGB8_ALPHA8_ASTC_8x8:Lcom/google/android/filament/Texture$b;

    return-object p0

    :cond_2
    if-ne p0, v1, :cond_3

    if-ne p1, v1, :cond_3

    sget-object p0, Lcom/google/android/filament/Texture$b;->SRGB8_ALPHA8_ASTC_10x10:Lcom/google/android/filament/Texture$b;

    return-object p0

    :cond_3
    if-ne p0, v0, :cond_9

    if-ne p1, v0, :cond_9

    sget-object p0, Lcom/google/android/filament/Texture$b;->SRGB8_ALPHA8_ASTC_12x12:Lcom/google/android/filament/Texture$b;

    return-object p0

    :cond_4
    if-ne p0, v4, :cond_5

    if-ne p1, v4, :cond_5

    sget-object p0, Lcom/google/android/filament/Texture$b;->RGBA_ASTC_4x4:Lcom/google/android/filament/Texture$b;

    return-object p0

    :cond_5
    if-ne p0, v3, :cond_6

    if-ne p1, v3, :cond_6

    sget-object p0, Lcom/google/android/filament/Texture$b;->RGBA_ASTC_6x6:Lcom/google/android/filament/Texture$b;

    return-object p0

    :cond_6
    if-ne p0, v2, :cond_7

    if-ne p1, v2, :cond_7

    sget-object p0, Lcom/google/android/filament/Texture$b;->RGBA_ASTC_8x8:Lcom/google/android/filament/Texture$b;

    return-object p0

    :cond_7
    if-ne p0, v1, :cond_8

    if-ne p1, v1, :cond_8

    sget-object p0, Lcom/google/android/filament/Texture$b;->RGBA_ASTC_10x10:Lcom/google/android/filament/Texture$b;

    return-object p0

    :cond_8
    if-ne p0, v0, :cond_9

    if-ne p1, v0, :cond_9

    sget-object p0, Lcom/google/android/filament/Texture$b;->RGBA_ASTC_12x12:Lcom/google/android/filament/Texture$b;

    return-object p0

    :cond_9
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported ASTC block size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "x"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static b(IIZ)Lcom/google/android/filament/Texture$f;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "blockX",
            "blockY",
            "srgb"
        }
    .end annotation

    const/16 v0, 0xc

    const/16 v1, 0xa

    const/16 v2, 0x8

    const/4 v3, 0x6

    const/4 v4, 0x4

    if-eqz p2, :cond_4

    if-ne p0, v4, :cond_0

    if-ne p1, v4, :cond_0

    sget-object p0, Lcom/google/android/filament/Texture$f;->SRGB8_ALPHA8_ASTC_4x4:Lcom/google/android/filament/Texture$f;

    return-object p0

    :cond_0
    if-ne p0, v3, :cond_1

    if-ne p1, v3, :cond_1

    sget-object p0, Lcom/google/android/filament/Texture$f;->SRGB8_ALPHA8_ASTC_6x6:Lcom/google/android/filament/Texture$f;

    return-object p0

    :cond_1
    if-ne p0, v2, :cond_2

    if-ne p1, v2, :cond_2

    sget-object p0, Lcom/google/android/filament/Texture$f;->SRGB8_ALPHA8_ASTC_8x8:Lcom/google/android/filament/Texture$f;

    return-object p0

    :cond_2
    if-ne p0, v1, :cond_3

    if-ne p1, v1, :cond_3

    sget-object p0, Lcom/google/android/filament/Texture$f;->SRGB8_ALPHA8_ASTC_10x10:Lcom/google/android/filament/Texture$f;

    return-object p0

    :cond_3
    if-ne p0, v0, :cond_9

    if-ne p1, v0, :cond_9

    sget-object p0, Lcom/google/android/filament/Texture$f;->SRGB8_ALPHA8_ASTC_12x12:Lcom/google/android/filament/Texture$f;

    return-object p0

    :cond_4
    if-ne p0, v4, :cond_5

    if-ne p1, v4, :cond_5

    sget-object p0, Lcom/google/android/filament/Texture$f;->RGBA_ASTC_4x4:Lcom/google/android/filament/Texture$f;

    return-object p0

    :cond_5
    if-ne p0, v3, :cond_6

    if-ne p1, v3, :cond_6

    sget-object p0, Lcom/google/android/filament/Texture$f;->RGBA_ASTC_6x6:Lcom/google/android/filament/Texture$f;

    return-object p0

    :cond_6
    if-ne p0, v2, :cond_7

    if-ne p1, v2, :cond_7

    sget-object p0, Lcom/google/android/filament/Texture$f;->RGBA_ASTC_8x8:Lcom/google/android/filament/Texture$f;

    return-object p0

    :cond_7
    if-ne p0, v1, :cond_8

    if-ne p1, v1, :cond_8

    sget-object p0, Lcom/google/android/filament/Texture$f;->RGBA_ASTC_10x10:Lcom/google/android/filament/Texture$f;

    return-object p0

    :cond_8
    if-ne p0, v0, :cond_9

    if-ne p1, v0, :cond_9

    sget-object p0, Lcom/google/android/filament/Texture$f;->RGBA_ASTC_12x12:Lcom/google/android/filament/Texture$f;

    return-object p0

    :cond_9
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported ASTC block size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "x"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static c(Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "config"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->capacity()I

    move-result v1

    const/16 v2, 0x10

    if-gt v1, v2, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->getPosition()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->capacity()I

    move-result v3

    if-le v1, v3, :cond_2

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->capacity()I

    move-result v1

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->getNativeAllocationPointer()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-eqz v5, :cond_c

    if-gt v1, v2, :cond_3

    goto/16 :goto_4

    :cond_3
    const/4 v2, 0x7

    new-array v5, v2, [I

    invoke-static {v3, v4, v1, v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData;->nativeReadHeaderFromBuffer(JI[I)Z

    move-result v6

    if-nez v6, :cond_4

    return-object v0

    :cond_4
    const/4 v6, 0x0

    aget v8, v5, v6

    const/4 v7, 0x1

    aget v9, v5, v7

    const/4 v10, 0x2

    aget v11, v5, v10

    const/4 v12, 0x3

    aget v12, v5, v12

    const/4 v13, 0x4

    aget v13, v5, v13

    const/4 v14, 0x5

    aget v14, v5, v14

    and-int/lit8 v15, v14, 0x1

    if-eqz v15, :cond_5

    move v15, v7

    goto :goto_0

    :cond_5
    move v15, v6

    :goto_0
    and-int/2addr v10, v14

    if-eqz v10, :cond_6

    goto :goto_1

    :cond_6
    move v7, v6

    :goto_1
    const/4 v10, 0x6

    aget v5, v5, v10

    if-lez v13, :cond_c

    if-gtz v5, :cond_7

    goto/16 :goto_4

    :cond_7
    mul-int/lit8 v10, v13, 0x4

    add-int/2addr v10, v2

    new-array v2, v10, [I

    invoke-static {v3, v4, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData;->nativeReadHeaderFromBuffer(JI[I)Z

    move-result v10

    if-nez v10, :cond_8

    return-object v0

    :cond_8
    new-array v14, v13, [Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$b;

    :goto_2
    if-ge v6, v13, :cond_9

    mul-int/lit8 v10, v6, 0x4

    add-int/lit8 v16, v10, 0x7

    aget v0, v2, v16

    add-int/lit8 v16, v10, 0x8

    move/from16 p0, v15

    aget v15, v2, v16

    add-int/lit8 v16, v10, 0x9

    move/from16 v17, v13

    aget v13, v2, v16

    add-int/lit8 v10, v10, 0xa

    aget v10, v2, v10

    move-object/from16 v16, v2

    new-instance v2, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$b;

    invoke-direct {v2, v0, v15, v13, v10}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$b;-><init>(IIII)V

    aput-object v2, v14, v6

    add-int/lit8 v6, v6, 0x1

    const/4 v0, 0x0

    move/from16 v15, p0

    move-object/from16 v2, v16

    move/from16 v13, v17

    goto :goto_2

    :cond_9
    move/from16 v17, v13

    move/from16 p0, v15

    new-instance v15, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-direct {v15, v5}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;-><init>(I)V

    :try_start_0
    invoke-static {v3, v4, v1, v15, v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData;->nativeReadPayloadFromBuffer(JILcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;I)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v15}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->destroyImmediate()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_a
    invoke-static {v11, v12, v7}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData;->a(IIZ)Lcom/google/android/filament/Texture$b;

    move-result-object v0

    invoke-static {v11, v12, v7}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData;->b(IIZ)Lcom/google/android/filament/Texture$f;

    move-result-object v13

    new-instance v1, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;

    move-object v7, v1

    move/from16 v10, v17

    move/from16 v11, p0

    move-object v12, v0

    invoke-direct/range {v7 .. v15}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;-><init>(IIIZLcom/google/android/filament/Texture$b;Lcom/google/android/filament/Texture$f;[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$b;Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;)V

    return-object v1

    :goto_3
    invoke-virtual {v15}, Lcom/itsmagic/engine/Engines/Native/Base/a;->isGarbage()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v15}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->destroyImmediate()V

    :cond_b
    throw v0

    :cond_c
    :goto_4
    return-object v0
.end method

.method public static d(Ljava/io/File;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;)Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "config"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_9

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v1, 0x7

    new-array v2, v1, [I

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData;->nativeReadHeader(Ljava/lang/String;[I)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v0

    :cond_1
    const/4 v3, 0x0

    aget v5, v2, v3

    const/4 v4, 0x1

    aget v6, v2, v4

    const/4 v7, 0x2

    aget v8, v2, v7

    const/4 v9, 0x3

    aget v9, v2, v9

    const/4 v10, 0x4

    aget v10, v2, v10

    const/4 v11, 0x5

    aget v11, v2, v11

    and-int/lit8 v12, v11, 0x1

    if-eqz v12, :cond_2

    move v12, v4

    goto :goto_0

    :cond_2
    move v12, v3

    :goto_0
    and-int/2addr v7, v11

    if-eqz v7, :cond_3

    goto :goto_1

    :cond_3
    move v4, v3

    :goto_1
    const/4 v7, 0x6

    aget v2, v2, v7

    if-lez v10, :cond_9

    if-gtz v2, :cond_4

    goto :goto_4

    :cond_4
    mul-int/lit8 v7, v10, 0x4

    add-int/2addr v7, v1

    new-array v1, v7, [I

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v1}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData;->nativeReadHeader(Ljava/lang/String;[I)Z

    move-result v7

    if-nez v7, :cond_5

    return-object v0

    :cond_5
    new-array v11, v10, [Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$b;

    :goto_2
    if-ge v3, v10, :cond_6

    mul-int/lit8 v7, v3, 0x4

    add-int/lit8 v13, v7, 0x7

    aget v13, v1, v13

    add-int/lit8 v14, v7, 0x8

    aget v14, v1, v14

    add-int/lit8 v15, v7, 0x9

    aget v15, v1, v15

    add-int/lit8 v7, v7, 0xa

    aget v7, v1, v7

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$b;

    invoke-direct {v0, v13, v14, v15, v7}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$b;-><init>(IIII)V

    aput-object v0, v11, v3

    add-int/lit8 v3, v3, 0x1

    const/4 v0, 0x0

    goto :goto_2

    :cond_6
    new-instance v1, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;

    invoke-direct {v1, v2}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;-><init>(I)V

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData;->nativeReadPayload(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;I)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->destroyImmediate()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_7
    invoke-static {v8, v9, v4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData;->a(IIZ)Lcom/google/android/filament/Texture$b;

    move-result-object v0

    invoke-static {v8, v9, v4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData;->b(IIZ)Lcom/google/android/filament/Texture$f;

    move-result-object v2

    new-instance v3, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;

    move-object v4, v3

    move v7, v10

    move v8, v12

    move-object v9, v0

    move-object v10, v2

    move-object v12, v1

    invoke-direct/range {v4 .. v12}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$a;-><init>(IIIZLcom/google/android/filament/Texture$b;Lcom/google/android/filament/Texture$f;[Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/ASTCTextureData$b;Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;)V

    return-object v3

    :goto_3
    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/a;->isGarbage()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v1}, Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;->destroyImmediate()V

    :cond_8
    throw v0

    :cond_9
    :goto_4
    return-object v0
.end method

.method private static native nativeReadHeader(Ljava/lang/String;[I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "path",
            "outHeaderData"
        }
    .end annotation
.end method

.method private static native nativeReadHeaderFromBuffer(JI[I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativePointer",
            "byteCount",
            "outHeaderData"
        }
    .end annotation
.end method

.method private static native nativeReadPayload(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "path",
            "storage",
            "expectedSizeInBytes"
        }
    .end annotation
.end method

.method private static native nativeReadPayloadFromBuffer(JILcom/itsmagic/engine/Engines/Native/Base/NativeByteBuffer;I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "nativePointer",
            "byteCount",
            "storage",
            "expectedSizeInBytes"
        }
    .end annotation
.end method
