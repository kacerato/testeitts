.class public Lzb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzb/a$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;IF)Landroid/graphics/Bitmap;
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "src",
            "type",
            "percent"
        }
    .end annotation

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p2, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_4

    move v5, v3

    :goto_1
    if-ge v5, v1, :cond_3

    invoke-virtual {p0, v4, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v8

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v9

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x1

    const/16 v12, 0xff

    if-ne p1, v11, :cond_0

    int-to-float v8, v8

    add-float/2addr v10, p2

    mul-float/2addr v8, v10

    float-to-int v8, v8

    if-le v8, v12, :cond_2

    move v8, v12

    goto :goto_2

    :cond_0
    const/4 v11, 0x2

    if-ne p1, v11, :cond_1

    int-to-float v9, v9

    add-float/2addr v10, p2

    mul-float/2addr v9, v10

    float-to-int v9, v9

    if-le v9, v12, :cond_2

    move v9, v12

    goto :goto_2

    :cond_1
    const/4 v11, 0x3

    if-ne p1, v11, :cond_2

    int-to-float v6, v6

    add-float/2addr v10, p2

    mul-float/2addr v6, v10

    float-to-int v6, v6

    if-le v6, v12, :cond_2

    move v6, v12

    :cond_2
    :goto_2
    invoke-static {v7, v8, v9, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v2
.end method

.method public static b(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "src",
            "value"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_7

    move v5, v3

    :goto_1
    if-ge v5, v1, :cond_6

    invoke-virtual {p0, v4, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v8

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v9

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    add-int/2addr v8, p1

    const/16 v10, 0xff

    if-le v8, v10, :cond_0

    move v8, v10

    goto :goto_2

    :cond_0
    if-gez v8, :cond_1

    move v8, v3

    :cond_1
    :goto_2
    add-int/2addr v9, p1

    if-le v9, v10, :cond_2

    move v9, v10

    goto :goto_3

    :cond_2
    if-gez v9, :cond_3

    move v9, v3

    :cond_3
    :goto_3
    add-int/2addr v6, p1

    if-le v6, v10, :cond_4

    goto :goto_4

    :cond_4
    if-gez v6, :cond_5

    move v10, v3

    goto :goto_4

    :cond_5
    move v10, v6

    :goto_4
    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v2
.end method

.method public static c(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "src",
            "bitOffset"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_4

    move v5, v3

    :goto_1
    if-ge v5, v1, :cond_3

    invoke-virtual {p0, v4, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v8

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v9

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    div-int/lit8 v10, p1, 0x2

    add-int/2addr v8, v10

    rem-int v11, v8, p1

    sub-int/2addr v8, v11

    add-int/lit8 v8, v8, -0x1

    if-gez v8, :cond_0

    move v8, v3

    :cond_0
    add-int/2addr v9, v10

    rem-int v11, v9, p1

    sub-int/2addr v9, v11

    add-int/lit8 v9, v9, -0x1

    if-gez v9, :cond_1

    move v9, v3

    :cond_1
    add-int/2addr v6, v10

    rem-int v10, v6, p1

    sub-int/2addr v6, v10

    add-int/lit8 v6, v6, -0x1

    if-gez v6, :cond_2

    move v6, v3

    :cond_2
    invoke-static {v7, v8, v9, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v2
.end method

.method public static d(Landroid/graphics/Bitmap;DDD)Landroid/graphics/Bitmap;
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "src",
            "red",
            "green",
            "blue"
        }
    .end annotation

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double v2, p1, v0

    div-double v4, p3, v0

    div-double v0, p5, v0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v6, :cond_1

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v7, :cond_0

    move-object/from16 v12, p0

    invoke-virtual {v12, v10, v11}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v13

    invoke-static {v13}, Landroid/graphics/Color;->alpha(I)I

    move-result v14

    invoke-static {v13}, Landroid/graphics/Color;->red(I)I

    move-result v15

    move/from16 p2, v10

    int-to-double v9, v15

    mul-double/2addr v9, v2

    double-to-int v9, v9

    invoke-static {v13}, Landroid/graphics/Color;->green(I)I

    move-result v10

    move-wide v15, v2

    int-to-double v2, v10

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-static {v13}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    move-wide/from16 p3, v4

    int-to-double v3, v3

    mul-double/2addr v3, v0

    double-to-int v3, v3

    invoke-static {v14, v9, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    move/from16 v9, p2

    invoke-virtual {v8, v9, v11, v2}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v4, p3

    move v10, v9

    move-wide v2, v15

    goto :goto_1

    :cond_0
    move-object/from16 v12, p0

    move-wide v15, v2

    move-wide/from16 p3, v4

    move v9, v10

    add-int/lit8 v10, v9, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v12, p0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v8
.end method

.method public static e(Landroid/graphics/Bitmap;D)Landroid/graphics/Bitmap;
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "src",
            "value"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4}, Landroid/graphics/Canvas;-><init>()V

    invoke-virtual {v4, v3}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    new-instance v5, Landroid/graphics/Paint;

    const/high16 v6, -0x1000000

    invoke-direct {v5, v6}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v6, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    add-double v6, p1, v4

    div-double/2addr v6, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v1, :cond_7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v2, :cond_6

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v11

    int-to-double v11, v11

    const-wide v13, 0x406fe00000000000L    # 255.0

    div-double/2addr v11, v13

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v11, v15

    mul-double/2addr v11, v4

    add-double/2addr v11, v15

    mul-double/2addr v11, v13

    double-to-int v11, v11

    const/16 v12, 0xff

    if-gez v11, :cond_0

    const/4 v11, 0x0

    goto :goto_2

    :cond_0
    if-le v11, v12, :cond_1

    move v11, v12

    :cond_1
    :goto_2
    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v6

    move/from16 v17, v1

    int-to-double v0, v6

    div-double/2addr v0, v13

    sub-double/2addr v0, v15

    mul-double/2addr v0, v4

    add-double/2addr v0, v15

    mul-double/2addr v0, v13

    double-to-int v0, v0

    if-gez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_3

    :cond_2
    if-le v0, v12, :cond_3

    move v0, v12

    :cond_3
    :goto_3
    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    move v6, v2

    int-to-double v1, v1

    div-double/2addr v1, v13

    sub-double/2addr v1, v15

    mul-double/2addr v1, v4

    add-double/2addr v1, v15

    mul-double/2addr v1, v13

    double-to-int v1, v1

    if-gez v1, :cond_4

    const/4 v12, 0x0

    goto :goto_4

    :cond_4
    if-le v1, v12, :cond_5

    goto :goto_4

    :cond_5
    move v12, v1

    :goto_4
    invoke-static {v10, v11, v0, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    invoke-virtual {v3, v7, v8, v0}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move v2, v6

    move/from16 v1, v17

    goto :goto_1

    :cond_6
    move/from16 v17, v1

    move v6, v2

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    goto :goto_0

    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v3
.end method

.method public static f(Landroid/graphics/Bitmap;Lzb/a$a;)Landroid/graphics/Bitmap;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bitmap",
            "listener"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-ge v10, v8, :cond_1

    move v11, v9

    :goto_1
    if-ge v11, v7, :cond_0

    invoke-virtual {v0, v11, v10}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    move-object v1, p1

    move v2, v11

    move v3, v10

    move v4, v7

    move v5, v8

    invoke-interface/range {v1 .. v6}, Lzb/a$a;->a(IIIII)I

    move-result v1

    invoke-virtual {v0, v11, v10, v1}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0
.end method

.method public static g(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v1, v0, [D

    fill-array-data v1, :array_0

    new-array v2, v0, [D

    fill-array-data v2, :array_1

    new-array v3, v0, [D

    fill-array-data v3, :array_2

    filled-new-array {v1, v2, v3}, [[D

    move-result-object v1

    new-instance v2, Lzb/b;

    invoke-direct {v2, v0}, Lzb/b;-><init>(I)V

    invoke-virtual {v2, v1}, Lzb/b;->a([[D)V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, v2, Lzb/b;->b:D

    const-wide v0, 0x405fc00000000000L    # 127.0

    iput-wide v0, v2, Lzb/b;->c:D

    invoke-static {p0, v2}, Lzb/b;->b(Landroid/graphics/Bitmap;Lzb/b;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :array_0
    .array-data 8
        -0x4010000000000000L    # -1.0
        0x0
        -0x4010000000000000L    # -1.0
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x4010000000000000L    # 4.0
        0x0
    .end array-data

    :array_2
    .array-data 8
        -0x4010000000000000L    # -1.0
        0x0
        -0x4010000000000000L    # -1.0
    .end array-data
.end method

.method public static h(Landroid/graphics/Bitmap;ZZ)Landroid/graphics/Bitmap;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bitmap",
            "horizontal",
            "vertical"
        }
    .end annotation

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-eqz p2, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {v5, p1, v0}, Landroid/graphics/Matrix;->preScale(FF)Z

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static i(Landroid/graphics/Bitmap;DDD)Landroid/graphics/Bitmap;
    .locals 23
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "src",
            "red",
            "green",
            "blue"
        }
    .end annotation

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    add-double v2, p1, v0

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    div-double/2addr v2, v4

    add-double v6, p3, v0

    div-double/2addr v6, v4

    add-double v0, p5, v0

    div-double/2addr v0, v4

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v8

    invoke-static {v4, v5, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    const/16 v9, 0x100

    new-array v10, v9, [I

    new-array v11, v9, [I

    new-array v12, v9, [I

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v9, :cond_0

    move-object/from16 p2, v10

    int-to-double v9, v14

    const-wide v15, 0x406fe00000000000L    # 255.0

    div-double/2addr v9, v15

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    move/from16 p4, v14

    div-double v13, v17, v2

    invoke-static {v9, v10, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v13

    mul-double/2addr v13, v15

    const-wide/high16 v19, 0x3fe0000000000000L    # 0.5

    add-double v13, v13, v19

    double-to-int v13, v13

    const/16 v14, 0xff

    invoke-static {v14, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    aput v13, p2, p4

    move-wide/from16 v21, v2

    div-double v2, v17, v6

    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v2, v15

    add-double v2, v2, v19

    double-to-int v2, v2

    invoke-static {v14, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    aput v2, v11, p4

    div-double v2, v17, v0

    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v2, v15

    add-double v2, v2, v19

    double-to-int v2, v2

    invoke-static {v14, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    aput v2, v12, p4

    add-int/lit8 v14, p4, 0x1

    move-object/from16 v10, p2

    move-wide/from16 v2, v21

    const/16 v9, 0x100

    goto :goto_0

    :cond_0
    move-object/from16 p2, v10

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v8, :cond_1

    move-object/from16 v2, p0

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v7

    aget v7, p2, v7

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v9

    aget v9, v11, v9

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    aget v3, v12, v3

    invoke-static {v6, v7, v9, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v3

    invoke-virtual {v4, v0, v1, v3}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    move-object/from16 v2, p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v2, p0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v4
.end method

.method public static j(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v1, v0, [D

    fill-array-data v1, :array_0

    new-array v2, v0, [D

    fill-array-data v2, :array_1

    new-array v3, v0, [D

    fill-array-data v3, :array_2

    filled-new-array {v1, v2, v3}, [[D

    move-result-object v1

    new-instance v2, Lzb/b;

    invoke-direct {v2, v0}, Lzb/b;-><init>(I)V

    invoke-virtual {v2, v1}, Lzb/b;->a([[D)V

    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    iput-wide v0, v2, Lzb/b;->b:D

    const-wide/16 v0, 0x0

    iput-wide v0, v2, Lzb/b;->c:D

    invoke-static {p0, v2}, Lzb/b;->b(Landroid/graphics/Bitmap;Lzb/b;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x4000000000000000L    # 2.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_1
    .array-data 8
        0x4000000000000000L    # 2.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
    .end array-data

    :array_2
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x4000000000000000L    # 2.0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method

.method public static k(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x14

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2, v1}, Landroid/graphics/ColorMatrix;-><init>([F)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {v3, p0, v0, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v1

    :array_0
    .array-data 4
        0x3e5a1cac    # 0.213f
        0x3f370a3d    # 0.715f
        0x3d9374bc    # 0.072f
        0x0
        0x0
        0x3e5a1cac    # 0.213f
        0x3f370a3d    # 0.715f
        0x3d9374bc    # 0.072f
        0x0
        0x0
        0x3e5a1cac    # 0.213f
        0x3f370a3d    # 0.715f
        0x3d9374bc    # 0.072f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static l(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bitmap",
            "hue"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x3

    new-array v3, v3, [F

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_1

    move v6, v4

    :goto_1
    if-ge v6, v1, :cond_0

    invoke-virtual {v0, v6, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    invoke-static {v7, v3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    aput p1, v3, v4

    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    invoke-static {v7, v3}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v7

    invoke-virtual {v0, v6, v5, v7}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0
.end method

.method public static m(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_1

    move v5, v3

    :goto_1
    if-ge v5, v2, :cond_0

    invoke-virtual {p0, v5, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v8

    rsub-int v8, v8, 0xff

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v9

    rsub-int v9, v9, 0xff

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    rsub-int v6, v6, 0xff

    invoke-static {v7, v8, v9, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v0, v5, v4, v6}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0
.end method

.method public static n(Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bitmap",
            "image_url"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    const-string p1, "Orientation"

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x2

    const/4 v2, 0x0

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    return-object p0

    :cond_0
    const/high16 p1, 0x43870000    # 270.0f

    invoke-static {p0, p1}, Lzb/a;->p(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    const/high16 p1, 0x42b40000    # 90.0f

    invoke-static {p0, p1}, Lzb/a;->p(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {p0, v2, v1}, Lzb/a;->h(Landroid/graphics/Bitmap;ZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_3
    const/high16 p1, 0x43340000    # 180.0f

    invoke-static {p0, p1}, Lzb/a;->p(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {p0, v1, v2}, Lzb/a;->h(Landroid/graphics/Bitmap;ZZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static o(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v0, v8, v9

    new-array v10, v0, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v9, :cond_1

    move v3, v1

    :goto_1
    if-ge v3, v8, :cond_0

    mul-int v4, v2, v8

    add-int/2addr v4, v3

    const/16 v5, 0xff

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    invoke-virtual {v0, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-static {v6, v7, v5}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    aget v6, v10, v4

    or-int/2addr v5, v6

    aput v5, v10, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    invoke-static {v8, v9, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    move-object v0, v11

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v11
.end method

.method public static p(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bitmap",
            "degrees"
        }
    .end annotation

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static q(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "src",
            "value"
        }
    .end annotation

    int-to-double v0, p1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    double-to-float p1, v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct {v3}, Landroid/graphics/ColorMatrix;-><init>()V

    invoke-virtual {v3, p1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    new-instance p1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {p1, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 p1, 0x0

    invoke-virtual {v1, p0, p1, p1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0
.end method

.method public static r(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
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

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_4

    move v5, v3

    :goto_1
    if-ge v5, v1, :cond_3

    invoke-virtual {p0, v4, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v8

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v9

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    const-wide v10, 0x3fd3333333333333L    # 0.3

    int-to-double v12, v8

    mul-double/2addr v12, v10

    const-wide v10, 0x3fe2e147ae147ae1L    # 0.59

    int-to-double v8, v9

    mul-double/2addr v8, v10

    add-double/2addr v12, v8

    const-wide v8, 0x3fbc28f5c28f5c29L    # 0.11

    int-to-double v10, v6

    mul-double/2addr v10, v8

    add-double/2addr v12, v10

    double-to-int v6, v12

    add-int/lit8 v8, v6, 0x6e

    const/16 v9, 0xff

    if-le v8, v9, :cond_0

    move v8, v9

    :cond_0
    add-int/lit8 v10, v6, 0x41

    if-le v10, v9, :cond_1

    move v10, v9

    :cond_1
    add-int/lit8 v6, v6, 0x14

    if-le v6, v9, :cond_2

    goto :goto_2

    :cond_2
    move v9, v6

    :goto_2
    invoke-static {v7, v8, v10, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    invoke-virtual {v2, v4, v5, v6}, Landroid/graphics/Bitmap;->setPixel(III)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v2
.end method

.method public static s(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v1, v0, [D

    fill-array-data v1, :array_0

    new-array v2, v0, [D

    fill-array-data v2, :array_1

    new-array v3, v0, [D

    fill-array-data v3, :array_2

    filled-new-array {v1, v2, v3}, [[D

    move-result-object v1

    new-instance v2, Lzb/b;

    invoke-direct {v2, v0}, Lzb/b;-><init>(I)V

    invoke-virtual {v2, v1}, Lzb/b;->a([[D)V

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    iput-wide v0, v2, Lzb/b;->b:D

    invoke-static {p0, v2}, Lzb/b;->b(Landroid/graphics/Bitmap;Lzb/b;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 8
        0x0
        -0x4000000000000000L    # -2.0
        0x0
    .end array-data

    :array_1
    .array-data 8
        -0x4000000000000000L    # -2.0
        0x4026000000000000L    # 11.0
        -0x4000000000000000L    # -2.0
    .end array-data

    :array_2
    .array-data 8
        0x0
        -0x4000000000000000L    # -2.0
        0x0
    .end array-data
.end method

.method public static t(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 15
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [I

    const/4 v5, 0x1

    const/4 v6, 0x3

    aput v6, v4, v5

    const/4 v7, 0x0

    aput v6, v4, v7

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    move v8, v7

    :goto_0
    add-int/lit8 v9, v1, -0x2

    if-ge v8, v9, :cond_9

    move v9, v7

    :goto_1
    add-int/lit8 v10, v0, -0x2

    if-ge v9, v10, :cond_8

    move v10, v7

    :goto_2
    if-ge v10, v6, :cond_1

    move v11, v7

    :goto_3
    if-ge v11, v6, :cond_0

    aget-object v12, v4, v10

    add-int v13, v9, v10

    add-int v14, v8, v11

    invoke-virtual {p0, v13, v14}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v13

    aput v13, v12, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_1
    aget-object v10, v4, v5

    aget v10, v10, v5

    invoke-static {v10}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    aget-object v11, v4, v5

    aget v11, v11, v5

    invoke-static {v11}, Landroid/graphics/Color;->red(I)I

    move-result v11

    const/4 v12, 0x6

    mul-int/2addr v11, v12

    aget-object v13, v4, v7

    aget v13, v13, v7

    invoke-static {v13}, Landroid/graphics/Color;->red(I)I

    move-result v13

    sub-int/2addr v11, v13

    aget-object v13, v4, v7

    aget v13, v13, v3

    invoke-static {v13}, Landroid/graphics/Color;->red(I)I

    move-result v13

    sub-int/2addr v11, v13

    aget-object v13, v4, v3

    aget v13, v13, v7

    invoke-static {v13}, Landroid/graphics/Color;->red(I)I

    move-result v13

    sub-int/2addr v11, v13

    aget-object v13, v4, v3

    aget v13, v13, v3

    invoke-static {v13}, Landroid/graphics/Color;->red(I)I

    move-result v13

    sub-int/2addr v11, v13

    aget-object v13, v4, v5

    aget v13, v13, v5

    invoke-static {v13}, Landroid/graphics/Color;->green(I)I

    move-result v13

    mul-int/2addr v13, v12

    aget-object v14, v4, v7

    aget v14, v14, v7

    invoke-static {v14}, Landroid/graphics/Color;->green(I)I

    move-result v14

    sub-int/2addr v13, v14

    aget-object v14, v4, v7

    aget v14, v14, v3

    invoke-static {v14}, Landroid/graphics/Color;->green(I)I

    move-result v14

    sub-int/2addr v13, v14

    aget-object v14, v4, v3

    aget v14, v14, v7

    invoke-static {v14}, Landroid/graphics/Color;->green(I)I

    move-result v14

    sub-int/2addr v13, v14

    aget-object v14, v4, v3

    aget v14, v14, v3

    invoke-static {v14}, Landroid/graphics/Color;->green(I)I

    move-result v14

    sub-int/2addr v13, v14

    aget-object v14, v4, v5

    aget v14, v14, v5

    invoke-static {v14}, Landroid/graphics/Color;->blue(I)I

    move-result v14

    mul-int/2addr v12, v14

    aget-object v14, v4, v7

    aget v14, v14, v7

    invoke-static {v14}, Landroid/graphics/Color;->blue(I)I

    move-result v14

    sub-int/2addr v12, v14

    aget-object v14, v4, v7

    aget v14, v14, v3

    invoke-static {v14}, Landroid/graphics/Color;->blue(I)I

    move-result v14

    sub-int/2addr v12, v14

    aget-object v14, v4, v3

    aget v14, v14, v7

    invoke-static {v14}, Landroid/graphics/Color;->blue(I)I

    move-result v14

    sub-int/2addr v12, v14

    aget-object v14, v4, v3

    aget v14, v14, v3

    invoke-static {v14}, Landroid/graphics/Color;->blue(I)I

    move-result v14

    sub-int/2addr v12, v14

    add-int/lit16 v11, v11, 0x82

    const/16 v14, 0xff

    if-gez v11, :cond_2

    move v11, v7

    goto :goto_4

    :cond_2
    if-le v11, v14, :cond_3

    move v11, v14

    :cond_3
    :goto_4
    add-int/lit16 v13, v13, 0x82

    if-gez v13, :cond_4

    move v13, v7

    goto :goto_5

    :cond_4
    if-le v13, v14, :cond_5

    move v13, v14

    :cond_5
    :goto_5
    add-int/lit16 v12, v12, 0x82

    if-gez v12, :cond_6

    move v14, v7

    goto :goto_6

    :cond_6
    if-le v12, v14, :cond_7

    goto :goto_6

    :cond_7
    move v14, v12

    :goto_6
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v12, v8, 0x1

    invoke-static {v10, v11, v13, v14}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    invoke-virtual {v2, v9, v12, v10}, Landroid/graphics/Bitmap;->setPixel(III)V

    goto/16 :goto_1

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v2
.end method

.method public static u(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "src",
            "color"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Paint;

    const/high16 v2, -0x10000

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v2, Landroid/graphics/LightingColorFilter;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v3}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    new-instance p1, Landroid/graphics/Canvas;

    invoke-direct {p1}, Landroid/graphics/Canvas;-><init>()V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0
.end method

.method public static v(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "image"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-double v2, v0

    const-wide v4, 0x3ff3333333333333L    # 1.2

    div-double/2addr v2, v4

    double-to-float v7, v2

    const/4 v2, 0x0

    const/high16 v3, 0x55000000

    const/high16 v11, -0x1000000

    filled-new-array {v2, v3, v11}, [I

    move-result-object v8

    const/4 v3, 0x3

    new-array v9, v3, [F

    fill-array-data v9, :array_0

    new-instance v3, Landroid/graphics/RadialGradient;

    div-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    div-int/lit8 v1, v1, 0x2

    int-to-float v6, v1

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v4, v3

    invoke-direct/range {v4 .. v10}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v4, v11}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v1, v2, v2, v3, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v0, p0, v1, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method
