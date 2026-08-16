.class public Lwb/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;II)Ljava/nio/ByteBuffer;
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "src",
            "dw",
            "dh"
        }
    .end annotation

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    mul-int v2, v10, v11

    new-array v12, v2, [I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move-object/from16 v2, p0

    move-object v3, v12

    move v5, v10

    move v8, v10

    move v9, v11

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    mul-int v2, v0, v1

    mul-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    int-to-double v3, v10

    int-to-double v5, v0

    div-double/2addr v3, v5

    int-to-double v5, v11

    int-to-double v7, v1

    div-double/2addr v5, v7

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v1, :cond_1

    int-to-double v13, v8

    mul-double/2addr v13, v5

    double-to-int v9, v13

    add-int/lit8 v13, v11, -0x1

    invoke-static {v9, v13}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v0, :cond_0

    int-to-double v14, v13

    mul-double/2addr v14, v3

    double-to-int v14, v14

    add-int/lit8 v15, v10, -0x1

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    mul-int v15, v9, v10

    add-int/2addr v15, v14

    aget v14, v12, v15

    shr-int/lit8 v15, v14, 0x18

    and-int/lit16 v15, v15, 0xff

    shr-int/lit8 v7, v14, 0x10

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v0, v14, 0x8

    and-int/lit16 v0, v0, 0xff

    and-int/lit16 v14, v14, 0xff

    int-to-byte v7, v7

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v0, v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v0, v14

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v0, v15

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v13, v13, 0x1

    move/from16 v0, p1

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    move/from16 v0, p1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v2
.end method

.method public static b(Landroid/graphics/Bitmap;)Ljava/nio/ByteBuffer;
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v0, v8, v9

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v10

    new-array v11, v8, [I

    const/4 v12, 0x0

    move v13, v12

    :goto_0
    if-ge v13, v9, :cond_1

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, v11

    move v3, v8

    move v5, v13

    move v6, v8

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move v0, v12

    :goto_1
    if-ge v0, v8, :cond_0

    aget v1, v11, v0

    shr-int/lit8 v2, v1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    invoke-virtual {v10, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v2, v1, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    invoke-virtual {v10, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    and-int/lit16 v2, v1, 0xff

    int-to-byte v2, v2

    invoke-virtual {v10, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-virtual {v10, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v10
.end method
