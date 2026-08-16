.class public Lzb/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:I = 0x3


# instance fields
.field public a:[[D

.field public b:D

.field public c:D


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lzb/b;->b:D

    iput-wide v0, p0, Lzb/b;->c:D

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x0

    aput p1, v0, v1

    sget-object p1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[D

    iput-object p1, p0, Lzb/b;->a:[[D

    return-void
.end method

.method public static b(Landroid/graphics/Bitmap;Lzb/b;)Landroid/graphics/Bitmap;
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "src",
            "matrix"
        }
    .end annotation

    move-object/from16 v0, p1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [I

    const/4 v6, 0x1

    const/4 v7, 0x3

    aput v7, v5, v6

    const/4 v8, 0x0

    aput v7, v5, v8

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    move v9, v8

    :goto_0
    add-int/lit8 v10, v2, -0x2

    if-ge v9, v10, :cond_b

    move v10, v8

    :goto_1
    add-int/lit8 v11, v1, -0x2

    if-ge v10, v11, :cond_a

    move v11, v8

    :goto_2
    if-ge v11, v7, :cond_1

    move v12, v8

    :goto_3
    if-ge v12, v7, :cond_0

    aget-object v13, v5, v11

    add-int v14, v10, v11

    add-int v15, v9, v12

    move-object/from16 v4, p0

    invoke-virtual {v4, v14, v15}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v14

    aput v14, v13, v12

    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x2

    goto :goto_3

    :cond_0
    move-object/from16 v4, p0

    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x2

    goto :goto_2

    :cond_1
    move-object/from16 v4, p0

    aget-object v11, v5, v6

    aget v11, v11, v6

    invoke-static {v11}, Landroid/graphics/Color;->alpha(I)I

    move-result v11

    move v12, v8

    move v13, v12

    move v14, v13

    move v15, v14

    :goto_4
    if-ge v12, v7, :cond_3

    move v6, v8

    :goto_5
    if-ge v6, v7, :cond_2

    int-to-double v7, v13

    aget-object v13, v5, v12

    aget v13, v13, v6

    invoke-static {v13}, Landroid/graphics/Color;->red(I)I

    move-result v13

    move/from16 v16, v1

    move/from16 v17, v2

    int-to-double v1, v13

    iget-object v13, v0, Lzb/b;->a:[[D

    aget-object v13, v13, v12

    aget-wide v18, v13, v6

    mul-double v1, v1, v18

    add-double/2addr v7, v1

    double-to-int v13, v7

    int-to-double v1, v14

    aget-object v7, v5, v12

    aget v7, v7, v6

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v7

    int-to-double v7, v7

    iget-object v14, v0, Lzb/b;->a:[[D

    aget-object v14, v14, v12

    aget-wide v18, v14, v6

    mul-double v7, v7, v18

    add-double/2addr v1, v7

    double-to-int v14, v1

    int-to-double v1, v15

    aget-object v7, v5, v12

    aget v7, v7, v6

    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v7

    int-to-double v7, v7

    iget-object v15, v0, Lzb/b;->a:[[D

    aget-object v15, v15, v12

    aget-wide v18, v15, v6

    mul-double v7, v7, v18

    add-double/2addr v1, v7

    double-to-int v15, v1

    add-int/lit8 v6, v6, 0x1

    move/from16 v1, v16

    move/from16 v2, v17

    const/4 v7, 0x3

    const/4 v8, 0x0

    goto :goto_5

    :cond_2
    move/from16 v16, v1

    move/from16 v17, v2

    add-int/lit8 v12, v12, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x3

    const/4 v8, 0x0

    goto :goto_4

    :cond_3
    move/from16 v16, v1

    move/from16 v17, v2

    int-to-double v1, v13

    iget-wide v6, v0, Lzb/b;->b:D

    div-double/2addr v1, v6

    iget-wide v12, v0, Lzb/b;->c:D

    add-double/2addr v1, v12

    double-to-int v1, v1

    const/16 v2, 0xff

    if-gez v1, :cond_4

    move-object v8, v3

    const/4 v1, 0x0

    goto :goto_6

    :cond_4
    if-le v1, v2, :cond_5

    move v1, v2

    :cond_5
    move-object v8, v3

    :goto_6
    int-to-double v2, v14

    div-double/2addr v2, v6

    add-double/2addr v2, v12

    double-to-int v2, v2

    if-gez v2, :cond_6

    const/4 v2, 0x0

    const/16 v3, 0xff

    goto :goto_7

    :cond_6
    const/16 v3, 0xff

    if-le v2, v3, :cond_7

    move v2, v3

    :cond_7
    :goto_7
    int-to-double v14, v15

    div-double/2addr v14, v6

    add-double/2addr v14, v12

    double-to-int v6, v14

    if-gez v6, :cond_8

    const/4 v3, 0x0

    goto :goto_8

    :cond_8
    if-le v6, v3, :cond_9

    goto :goto_8

    :cond_9
    move v3, v6

    :goto_8
    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v6, v9, 0x1

    invoke-static {v11, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v8, v10, v6, v1}, Landroid/graphics/Bitmap;->setPixel(III)V

    move-object v3, v8

    move/from16 v1, v16

    move/from16 v2, v17

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x3

    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_a
    move-object/from16 v4, p0

    move/from16 v16, v1

    move/from16 v17, v2

    move-object v8, v3

    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x3

    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_b
    move-object/from16 v4, p0

    move-object v8, v3

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object v8
.end method


# virtual methods
.method public a([[D)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_0

    iget-object v4, p0, Lzb/b;->a:[[D

    aget-object v4, v4, v1

    aget-object v5, p1, v1

    aget-wide v6, v5, v3

    aput-wide v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c(D)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_0

    iget-object v4, p0, Lzb/b;->a:[[D

    aget-object v4, v4, v1

    aput-wide p1, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
