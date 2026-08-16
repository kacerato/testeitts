.class public final Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$b;,
        Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;
    }
.end annotation


# static fields
.field public static final a:F = 3.1415927f

.field public static final b:F = 6.2831855f


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(IIIIFF)I
    .locals 0
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
            "c00",
            "c10",
            "c01",
            "c11",
            "tx",
            "ty"
        }
    .end annotation

    invoke-static {p0, p1, p4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b;->j(IIF)I

    move-result p0

    invoke-static {p2, p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b;->j(IIF)I

    move-result p1

    invoke-static {p0, p1, p5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b;->j(IIF)I

    move-result p0

    return p0
.end method

.method public static b(FFF)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "a",
            "b"
        }
    .end annotation

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method

.method public static c(IFF)[F
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "face",
            "u",
            "v"
        }
    .end annotation

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p0, :cond_4

    const/high16 v4, -0x40800000    # -1.0f

    if-eq p0, v2, :cond_3

    if-eq p0, v1, :cond_2

    if-eq p0, v0, :cond_1

    const/4 v5, 0x4

    if-eq p0, v5, :cond_0

    neg-float p1, p1

    move p0, v4

    goto :goto_0

    :cond_0
    move p0, v3

    goto :goto_0

    :cond_1
    move p0, p2

    move p2, v4

    goto :goto_0

    :cond_2
    neg-float p0, p2

    move p2, v3

    goto :goto_0

    :cond_3
    move p0, p1

    move p1, v4

    goto :goto_0

    :cond_4
    neg-float p1, p1

    move p0, p1

    move p1, v3

    :goto_0
    mul-float v3, p1, p1

    mul-float v4, p2, p2

    add-float/2addr v3, v4

    mul-float v4, p0, p0

    add-float/2addr v3, v4

    invoke-static {v3}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b;->i(F)F

    move-result v3

    mul-float/2addr p1, v3

    mul-float/2addr p2, v3

    mul-float/2addr p0, v3

    new-array v0, v0, [F

    const/4 v3, 0x0

    aput p1, v0, v3

    aput p2, v0, v2

    aput p0, v0, v1

    return-object v0
.end method

.method public static d(FFF)[F
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    float-to-double v0, p2

    float-to-double v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float p0, v0

    const/high16 p2, -0x40800000    # -1.0f

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b;->b(FFF)F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->asin(D)D

    move-result-wide p1

    double-to-float p1, p1

    const p2, 0x3e22f983

    mul-float/2addr p0, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p0, p2

    const v1, 0x40490fdb    # (float)Math.PI

    div-float/2addr p1, v1

    sub-float/2addr p2, p1

    const/4 p1, 0x0

    cmpg-float v1, p0, p1

    if-gez v1, :cond_0

    add-float/2addr p0, v0

    goto :goto_0

    :cond_0
    cmpl-float v1, p0, v0

    if-ltz v1, :cond_1

    sub-float/2addr p0, v0

    :cond_1
    :goto_0
    invoke-static {p2, p1, v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b;->b(FFF)F

    move-result p1

    const/4 p2, 0x2

    new-array p2, p2, [F

    const/4 v0, 0x0

    aput p0, p2, v0

    const/4 p0, 0x1

    aput p1, p2, p0

    return-object p2
.end method

.method public static e([IIII[IIIZ)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
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
            "dst",
            "w",
            "h",
            "faceIndex",
            "src",
            "srcW",
            "srcH",
            "flipV"
        }
    .end annotation

    move/from16 v0, p1

    move/from16 v1, p2

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v1, :cond_2

    int-to-float v5, v3

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    int-to-float v7, v1

    div-float/2addr v5, v7

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v5, v7

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v5, v8

    if-eqz p7, :cond_0

    neg-float v5, v5

    :cond_0
    move v9, v2

    :goto_1
    if-ge v9, v0, :cond_1

    int-to-float v10, v9

    add-float/2addr v10, v6

    int-to-float v11, v0

    div-float/2addr v10, v11

    mul-float/2addr v10, v7

    sub-float/2addr v10, v8

    move/from16 v11, p3

    invoke-static {v11, v10, v5}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b;->c(IFF)[F

    move-result-object v10

    aget v12, v10, v2

    const/4 v13, 0x1

    aget v14, v10, v13

    const/4 v15, 0x2

    aget v10, v10, v15

    invoke-static {v12, v14, v10}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b;->d(FFF)[F

    move-result-object v10

    aget v12, v10, v2

    aget v10, v10, v13

    move-object/from16 v13, p4

    move/from16 v14, p5

    move/from16 v15, p6

    invoke-static {v13, v14, v15, v12, v10}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b;->k([IIIFF)I

    move-result v10

    add-int/lit8 v12, v4, 0x1

    aput v10, p0, v4

    add-int/lit8 v9, v9, 0x1

    move v4, v12

    goto :goto_1

    :cond_1
    move/from16 v11, p3

    move-object/from16 v13, p4

    move/from16 v14, p5

    move/from16 v15, p6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static f(F)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    float-to-int v0, p0

    int-to-float v1, v0

    cmpg-float p0, p0, v1

    if-gez p0, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.method public static g(Landroid/graphics/Bitmap;IZ)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "equirect",
            "cubeSize",
            "flipV"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "IZ)",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$b;",
            ">;"
        }
    .end annotation

    move/from16 v8, p1

    xor-int/lit8 v9, p2, 0x1

    if-eqz p0, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne v0, v1, :cond_2

    if-lez v8, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    mul-int v0, v10, v11

    new-array v12, v0, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object v1, v12

    move v3, v10

    move v6, v10

    move v7, v11

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    new-instance v13, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    const/4 v14, 0x6

    invoke-direct {v13, v14}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v15, v0

    :goto_0
    if-ge v15, v14, :cond_0

    mul-int v0, v8, v8

    new-array v7, v0, [I

    move-object v0, v7

    move/from16 v1, p1

    move/from16 v2, p1

    move v3, v15

    move-object v4, v12

    move v5, v10

    move v6, v11

    move-object/from16 v16, v7

    move v7, v9

    invoke-static/range {v0 .. v7}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b;->e([IIII[IIIZ)V

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v8, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, v7

    move-object/from16 v1, v16

    move/from16 v3, p1

    move/from16 v6, p1

    move-object v14, v7

    move/from16 v7, p1

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$b;

    invoke-static {v15}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b;->h(I)Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;

    move-result-object v1

    invoke-direct {v0, v1, v14}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$b;-><init>(Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;Landroid/graphics/Bitmap;)V

    invoke-interface {v13, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    const/4 v14, 0x6

    goto :goto_0

    :cond_0
    return-object v13

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cubeSize inv\u00e1lido"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bitmap deve ser ARGB_8888"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "equirect == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static h(I)Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "f"
        }
    .end annotation

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;->NEGATIVE_Z:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;

    return-object p0

    :cond_0
    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;->POSITIVE_Z:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;

    return-object p0

    :cond_1
    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;->NEGATIVE_Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;

    return-object p0

    :cond_2
    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;->POSITIVE_Y:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;

    return-object p0

    :cond_3
    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;->NEGATIVE_X:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;

    return-object p0

    :cond_4
    sget-object p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;->POSITIVE_X:Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b$a;

    return-object p0
.end method

.method public static i(F)F
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p0

    return v0
.end method

.method public static j(IIF)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "t"
        }
    .end annotation

    int-to-float v0, p0

    sub-int/2addr p1, p0

    int-to-float p0, p1

    mul-float/2addr p0, p2

    add-float/2addr v0, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method

.method public static k([IIIFF)I
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "src",
            "w",
            "h",
            "u",
            "v"
        }
    .end annotation

    add-int/lit8 v0, p1, -0x1

    int-to-float v0, v0

    mul-float v0, v0, p3

    add-int/lit8 v1, p2, -0x1

    int-to-float v2, v1

    mul-float v2, v2, p4

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b;->f(F)I

    move-result v3

    invoke-static {v2}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b;->f(F)I

    move-result v4

    add-int/lit8 v5, v3, 0x1

    rem-int v5, v5, p1

    add-int/lit8 v6, v4, 0x1

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v6, v3

    sub-float/2addr v0, v6

    int-to-float v6, v4

    sub-float/2addr v2, v6

    mul-int v4, v4, p1

    add-int v6, v4, v3

    aget v6, p0, v6

    add-int/2addr v4, v5

    aget v4, p0, v4

    mul-int v1, v1, p1

    add-int/2addr v3, v1

    aget v3, p0, v3

    add-int/2addr v1, v5

    aget v1, p0, v1

    ushr-int/lit8 v5, v6, 0x18

    and-int/lit16 v7, v5, 0xff

    ushr-int/lit8 v5, v6, 0x10

    and-int/lit16 v5, v5, 0xff

    ushr-int/lit8 v8, v6, 0x8

    and-int/lit16 v13, v8, 0xff

    and-int/lit16 v6, v6, 0xff

    ushr-int/lit8 v8, v4, 0x18

    and-int/lit16 v8, v8, 0xff

    ushr-int/lit8 v9, v4, 0x10

    and-int/lit16 v14, v9, 0xff

    ushr-int/lit8 v9, v4, 0x8

    and-int/lit16 v15, v9, 0xff

    and-int/lit16 v4, v4, 0xff

    ushr-int/lit8 v9, v3, 0x18

    and-int/lit16 v9, v9, 0xff

    ushr-int/lit8 v10, v3, 0x10

    and-int/lit16 v12, v10, 0xff

    ushr-int/lit8 v10, v3, 0x8

    and-int/lit16 v11, v10, 0xff

    and-int/lit16 v3, v3, 0xff

    ushr-int/lit8 v10, v1, 0x18

    and-int/lit16 v10, v10, 0xff

    move/from16 p0, v11

    ushr-int/lit8 v11, v1, 0x10

    and-int/lit16 v11, v11, 0xff

    move/from16 p1, v11

    ushr-int/lit8 v11, v1, 0x8

    and-int/lit16 v11, v11, 0xff

    and-int/lit16 v1, v1, 0xff

    move/from16 v16, p0

    move/from16 v17, p1

    move/from16 v18, v11

    move v11, v0

    move/from16 v19, v12

    move v12, v2

    invoke-static/range {v7 .. v12}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b;->a(IIIIFF)I

    move-result v12

    move v7, v5

    move v8, v14

    move/from16 v9, v19

    move/from16 v10, v17

    move v5, v12

    move v12, v2

    invoke-static/range {v7 .. v12}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b;->a(IIIIFF)I

    move-result v14

    move v7, v13

    move v8, v15

    move/from16 v9, v16

    move/from16 v10, v18

    invoke-static/range {v7 .. v12}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b;->a(IIIIFF)I

    move-result v13

    move v7, v6

    move v8, v4

    move v9, v3

    move v10, v1

    invoke-static/range {v7 .. v12}, Lcom/itsmagic/engine/Engines/Engine/Texture/Cubemap/b;->a(IIIIFF)I

    move-result v0

    invoke-static {v5, v14, v13, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method
