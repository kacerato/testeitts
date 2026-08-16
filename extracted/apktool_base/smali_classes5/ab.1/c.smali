.class public Lab/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lab/a;",
            ">;"
        }
    .end annotation
.end field

.field public static c:Lc7/c;

.field public static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lab/c;->a:Ljava/lang/Object;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sput-object v0, Lab/c;->b:Ljava/util/List;

    new-instance v0, Lab/c$a;

    invoke-direct {v0}, Lab/c$a;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->h(Lx8/b;)V

    const/4 v0, -0x1

    sput v0, Lab/c;->d:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Ljava/util/List;
    .locals 1

    sget-object v0, Lab/c;->b:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic b()Lc7/c;
    .locals 1

    sget-object v0, Lab/c;->c:Lc7/c;

    return-object v0
.end method

.method public static synthetic c(Lc7/c;)Lc7/c;
    .locals 0

    sput-object p0, Lab/c;->c:Lc7/c;

    return-object p0
.end method

.method public static synthetic d(I)I
    .locals 0

    sput p0, Lab/c;->d:I

    return p0
.end method

.method public static e(III)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "lo",
            "hi"
        }
    .end annotation

    if-ge p0, p1, :cond_0

    move p0, p1

    goto :goto_0

    :cond_0
    if-le p0, p2, :cond_1

    move p0, p2

    :cond_1
    :goto_0
    return p0
.end method

.method public static f(Lab/a;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "genQueue"
        }
    .end annotation

    iget-object v0, p0, Lab/a;->c:Lub/g;

    iget p0, p0, Lab/a;->e:F

    invoke-static {v0, p0}, Lab/c;->h(Lub/g;F)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "albedo",
            "bias"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int v2, v0, v1

    new-array v3, v2, [F

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_1

    move v6, v4

    :goto_1
    if-ge v6, v0, :cond_0

    new-instance v7, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-object/from16 v8, p0

    invoke-virtual {v8, v6, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v9

    invoke-direct {v7, v9}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>(I)V

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v9

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v10

    invoke-virtual {v7}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v7

    mul-int v11, v5, v0

    add-int/2addr v11, v6

    const v12, 0x3e991687    # 0.299f

    mul-float/2addr v9, v12

    const v12, 0x3f1645a2    # 0.587f

    mul-float/2addr v10, v12

    add-float/2addr v9, v10

    const v10, 0x3de978d5    # 0.114f

    mul-float/2addr v7, v10

    add-float/2addr v9, v7

    aput v9, v3, v11

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v8, p0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const v5, 0x3dcccccd    # 0.1f

    sub-float v5, p1, v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v5, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v5, v6, v5

    const v7, 0x38d1b717    # 1.0E-4f

    cmpg-float v8, v5, v7

    if-gez v8, :cond_2

    move v5, v7

    :cond_2
    new-array v2, v2, [I

    move v7, v4

    :goto_2
    if-ge v7, v1, :cond_4

    add-int/lit8 v8, v7, -0x1

    add-int/lit8 v9, v1, -0x1

    invoke-static {v8, v4, v9}, Lab/c;->e(III)I

    move-result v8

    add-int/lit8 v10, v7, 0x1

    invoke-static {v10, v4, v9}, Lab/c;->e(III)I

    move-result v9

    move v11, v4

    :goto_3
    if-ge v11, v0, :cond_3

    add-int/lit8 v12, v11, -0x1

    add-int/lit8 v13, v0, -0x1

    invoke-static {v12, v4, v13}, Lab/c;->e(III)I

    move-result v12

    add-int/lit8 v14, v11, 0x1

    invoke-static {v14, v4, v13}, Lab/c;->e(III)I

    move-result v13

    mul-int v15, v7, v0

    add-int/2addr v12, v15

    aget v12, v3, v12

    add-int/2addr v13, v15

    aget v13, v3, v13

    mul-int v16, v8, v0

    add-int v16, v16, v11

    aget v16, v3, v16

    mul-int v17, v9, v0

    add-int v17, v17, v11

    aget v17, v3, v17

    sub-float/2addr v12, v13

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float/2addr v12, v13

    sub-float v17, v17, v16

    mul-float v17, v17, v13

    mul-float/2addr v12, v6

    mul-float v17, v17, v6

    mul-float v13, v12, v12

    mul-float v16, v17, v17

    add-float v13, v13, v16

    mul-float v16, v5, v5

    add-float v13, v13, v16

    move/from16 p0, v5

    float-to-double v4, v13

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    div-float v4, v6, v4

    mul-float/2addr v12, v4

    mul-float v17, v17, v4

    mul-float v5, p0, v4

    invoke-static {v12}, Lab/c;->p(F)I

    move-result v4

    invoke-static/range {v17 .. v17}, Lab/c;->p(F)I

    move-result v12

    invoke-static {v5}, Lab/c;->p(F)I

    move-result v5

    add-int/2addr v15, v11

    const/16 v11, 0xff

    invoke-static {v11, v4, v12, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    aput v4, v2, v15

    const/4 v4, 0x0

    move/from16 v5, p0

    move v11, v14

    goto :goto_3

    :cond_3
    move v7, v10

    goto :goto_2

    :cond_4
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static h(Lub/g;F)Landroid/graphics/Bitmap;
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "albedo",
            "bias"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lub/g;->N()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;-><init>()V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;->allowModifications:Z

    new-instance v2, Lub/g;

    invoke-virtual/range {p0 .. p0}, Lub/g;->getFile()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0, v1}, Lub/g;-><init>(Ljava/lang/String;Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/TextureConfig;Z)V

    goto :goto_0

    :cond_0
    move-object/from16 v2, p0

    :goto_0
    invoke-virtual {v2}, Lub/g;->getWidth()I

    move-result v0

    invoke-virtual {v2}, Lub/g;->getHeight()I

    move-result v3

    mul-int v4, v0, v3

    new-array v5, v4, [F

    move v6, v1

    :goto_1
    if-ge v6, v3, :cond_2

    move v7, v1

    :goto_2
    if-ge v7, v0, :cond_1

    invoke-virtual {v2, v7, v6}, Lub/g;->i(II)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v9

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v10

    invoke-virtual {v8}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result v8

    mul-int v11, v6, v0

    add-int/2addr v11, v7

    const v12, 0x3e991687    # 0.299f

    mul-float/2addr v9, v12

    const v12, 0x3f1645a2    # 0.587f

    mul-float/2addr v10, v12

    add-float/2addr v9, v10

    const v10, 0x3de978d5    # 0.114f

    mul-float/2addr v8, v10

    add-float/2addr v9, v8

    aput v9, v5, v11

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    const v2, 0x3dcccccd    # 0.1f

    sub-float v2, p1, v2

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v2, v6

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float v2, v6, v2

    const v7, 0x38d1b717    # 1.0E-4f

    cmpg-float v8, v2, v7

    if-gez v8, :cond_3

    move v2, v7

    :cond_3
    new-array v4, v4, [I

    move v7, v1

    :goto_3
    if-ge v7, v3, :cond_5

    add-int/lit8 v8, v7, -0x1

    add-int/lit8 v9, v3, -0x1

    invoke-static {v8, v1, v9}, Lab/c;->e(III)I

    move-result v8

    add-int/lit8 v10, v7, 0x1

    invoke-static {v10, v1, v9}, Lab/c;->e(III)I

    move-result v9

    move v11, v1

    :goto_4
    if-ge v11, v0, :cond_4

    add-int/lit8 v12, v11, -0x1

    add-int/lit8 v13, v0, -0x1

    invoke-static {v12, v1, v13}, Lab/c;->e(III)I

    move-result v12

    add-int/lit8 v14, v11, 0x1

    invoke-static {v14, v1, v13}, Lab/c;->e(III)I

    move-result v13

    mul-int v15, v7, v0

    add-int/2addr v12, v15

    aget v12, v5, v12

    add-int/2addr v13, v15

    aget v13, v5, v13

    mul-int v16, v8, v0

    add-int v16, v16, v11

    aget v16, v5, v16

    mul-int v17, v9, v0

    add-int v17, v17, v11

    aget v17, v5, v17

    sub-float/2addr v12, v13

    const/high16 v13, 0x3f000000    # 0.5f

    mul-float/2addr v12, v13

    sub-float v17, v17, v16

    mul-float v17, v17, v13

    mul-float/2addr v12, v6

    mul-float v17, v17, v6

    mul-float v13, v12, v12

    mul-float v16, v17, v17

    add-float v13, v13, v16

    mul-float v16, v2, v2

    add-float v13, v13, v16

    move/from16 p0, v2

    float-to-double v1, v13

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    div-float v1, v6, v1

    mul-float/2addr v12, v1

    mul-float v17, v17, v1

    mul-float v2, p0, v1

    invoke-static {v12}, Lab/c;->p(F)I

    move-result v1

    invoke-static/range {v17 .. v17}, Lab/c;->p(F)I

    move-result v12

    invoke-static {v2}, Lab/c;->p(F)I

    move-result v2

    add-int/2addr v15, v11

    const/16 v11, 0xff

    invoke-static {v11, v1, v12, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    aput v1, v4, v15

    const/4 v1, 0x0

    move/from16 v2, p0

    move v11, v14

    goto :goto_4

    :cond_4
    move v7, v10

    goto :goto_3

    :cond_5
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v0, v3, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static i(Lab/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "genQueue"
        }
    .end annotation

    sget-object v0, Lab/c;->b:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lab/c;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lab/a;

    iget-object v2, v2, Lab/a;->c:Lub/g;

    iget-object v3, p0, Lab/a;->c:Lub/g;

    if-ne v2, v3, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static j(Landroid/graphics/Bitmap;Ljava/lang/String;F)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "albedo",
            "outIPP",
            "bias"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-static {p0, p2}, Lab/c;->g(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance p2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-static {p0, p2, v0, v1}, Lab/c;->o(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;I)Z

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-static {p1}, Lyb/b;->d(Ljava/lang/String;)Lub/g;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lub/g;->J()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lub/g;->E0()V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static k(Lub/g;Ljava/io/File;F)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "albedo",
            "output",
            "bias"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lub/g;->J()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p2}, Lab/c;->h(Lub/g;F)Landroid/graphics/Bitmap;

    move-result-object p0

    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v0, 0x64

    invoke-static {p0, p1, p2, v0}, Lab/c;->o(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;I)Z

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static {}, Ljava/lang/System;->gc()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static l(Lub/g;Ljava/lang/String;F)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "albedo",
            "outIPP",
            "bias"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lub/g;->J()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p2}, Lab/c;->h(Lub/g;F)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance p2, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-static {p0, p2, v0, v1}, Lab/c;->o(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;I)Z

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-static {p1}, Lyb/b;->d(Ljava/lang/String;)Lub/g;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lub/g;->J()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lub/g;->E0()V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static m()V
    .locals 1

    sget-object v0, Lab/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static n()V
    .locals 7

    sget-object v0, Lab/c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Lab/c;->c:Lc7/c;

    if-nez v1, :cond_0

    new-instance v1, Lc7/c;

    new-instance v2, Lab/c$b;

    invoke-direct {v2}, Lab/c$b;-><init>()V

    invoke-direct {v1, v2}, Lc7/c;-><init>(Lc7/b;)V

    sput-object v1, Lab/c;->c:Lc7/c;

    :cond_0
    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lab/a;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v2, v1, Lab/a;->c:Lub/g;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lub/g;->J()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lab/a;->c:Lub/g;

    invoke-virtual {v3}, Lub/g;->getFile()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LTc/b;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".nm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lab/a;->g:Ljava/lang/String;

    if-eqz v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lab/a;->c:Lub/g;

    invoke-virtual {v3}, Lub/g;->getFile()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LTc/b;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lab/a;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-static {v1}, Lab/c;->f(Lab/a;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, LN7/c;->t()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/itsmagic/engine/Core/Components/ProjectController/a;->S(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x64

    invoke-static {v3, v5, v4, v6}, Lab/c;->o(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;I)Z

    invoke-static {v2}, Lyb/b;->d(Ljava/lang/String;)Lub/g;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lub/g;->J()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lub/g;->E0()V

    :cond_2
    iget-object v3, v1, Lab/a;->d:Lab/b;

    iget-object v4, v1, Lab/a;->b:Ljava/lang/Object;

    iget-object v5, v1, Lab/a;->c:Lub/g;

    invoke-interface {v3, v4, v5, v2}, Lab/b;->a(Ljava/lang/Object;Lub/p;Ljava/lang/String;)V

    :cond_3
    monitor-enter v0

    :try_start_1
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_4
    sget-object v0, Lab/c;->c:Lc7/c;

    if-eqz v0, :cond_5

    new-instance v1, Lab/c$c;

    invoke-direct {v1}, Lab/c$c;-><init>()V

    iput-object v1, v0, Lc7/c;->b:Lc7/b;

    sget-object v0, Lab/c;->c:Lc7/c;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lc7/c;->h(F)Lc7/c;

    const/4 v0, 0x0

    sput-object v0, Lab/c;->c:Lc7/c;

    :cond_5
    :goto_0
    return-void
.end method

.method public static o(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "bmp",
            "outFile",
            "format",
            "quality"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0, p2, p3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return p0

    :catch_0
    move-exception p0

    goto :goto_1

    :catchall_0
    move-exception p0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static p(F)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr p0, v0

    add-float/2addr p0, v0

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0xff

    if-le p0, v0, :cond_1

    move p0, v0

    :cond_1
    :goto_0
    return p0
.end method
