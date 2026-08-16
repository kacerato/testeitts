.class public Lnn/v;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lwn/h;FFFF)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "solid",
            "x",
            "ymin",
            "ymax",
            "z"
        }
    .end annotation

    iget v0, p1, Lwn/h;->a:I

    iget v1, p1, Lwn/h;->b:I

    iget v2, p1, Lwn/h;->e:F

    iget v3, p1, Lwn/h;->f:F

    iget-object v4, p1, Lwn/h;->c:[F

    const/4 v5, 0x0

    aget v6, v4, v5

    sub-float/2addr p2, v6

    div-float/2addr p2, v2

    float-to-double v6, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int p2, v6

    const/4 v6, 0x2

    aget v6, v4, v6

    sub-float/2addr p5, v6

    div-float/2addr p5, v2

    float-to-double v6, p5

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int p5, v6

    if-ltz p2, :cond_3

    if-ltz p5, :cond_3

    if-gt p2, v0, :cond_3

    if-le p5, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p1, Lwn/h;->g:[Lwn/K;

    mul-int/2addr p5, v0

    add-int/2addr p2, p5

    aget-object p1, p1, p2

    if-nez p1, :cond_1

    return v5

    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    const/4 p2, 0x1

    aget p5, v4, p2

    iget v0, p1, Lwn/K;->a:I

    int-to-float v0, v0

    mul-float/2addr v0, v3

    add-float/2addr v0, p5

    iget v1, p1, Lwn/K;->b:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    add-float/2addr p5, v1

    invoke-virtual {p0, p3, p4, v0, p5}, Lnn/v;->b(FFFF)Z

    move-result p5

    if-eqz p5, :cond_2

    return p2

    :cond_2
    iget-object p1, p1, Lwn/K;->d:Lwn/K;

    goto :goto_0

    :cond_3
    :goto_1
    return v5
.end method

.method public final b(FFFF)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "amin",
            "amax",
            "bmin",
            "bmax"
        }
    .end annotation

    cmpl-float p1, p1, p4

    if-gtz p1, :cond_1

    cmpg-float p1, p2, p3

    if-gez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public c(Lnn/m;Lwn/h;Lnn/e;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "acfg",
            "heightfield",
            "es"
        }
    .end annotation

    iget-object v0, p3, Lnn/e;->a:Lnn/i;

    iget-object v0, v0, Lnn/i;->c:[Lnn/g;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    iget-object v2, p3, Lnn/e;->a:Lnn/i;

    iget-object v2, v2, Lnn/i;->c:[Lnn/g;

    aget-object v2, v2, v1

    iget-object v3, p3, Lnn/e;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnn/i;

    iget-object v4, v4, Lnn/i;->c:[Lnn/g;

    aget-object v4, v4, v1

    iget-boolean v5, v2, Lnn/g;->c:Z

    if-eqz v5, :cond_0

    iget-boolean v5, v4, Lnn/g;->c:Z

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    iget-object v9, v2, Lnn/g;->a:[F

    iget-object v10, v4, Lnn/g;->a:[F

    iget-object v11, p3, Lnn/e;->c:Lnn/u;

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    invoke-virtual/range {v6 .. v11}, Lnn/v;->d(Lnn/m;Lwn/h;[F[FLnn/u;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x1

    iput-boolean v5, v2, Lnn/g;->b:Z

    iput-boolean v5, v4, Lnn/g;->b:Z

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final d(Lnn/m;Lwn/h;[F[FLnn/u;)Z
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "acfg",
            "solid",
            "pa",
            "pb",
            "tra"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    iget v3, v0, Lnn/m;->a:F

    iget v4, v0, Lnn/m;->b:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static/range {p3 .. p4}, Ljn/g;->B([F[F)F

    move-result v4

    const/4 v5, 0x1

    aget v6, v1, v5

    aget v7, v2, v5

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    add-float/2addr v4, v6

    div-float/2addr v4, v3

    float-to-double v3, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    const/4 v4, 0x2

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v3, :cond_1

    int-to-float v8, v7

    add-int/lit8 v9, v3, -0x1

    int-to-float v9, v9

    div-float/2addr v8, v9

    move-object/from16 v9, p5

    invoke-interface {v9, v1, v2, v8}, Lnn/u;->b([F[FF)[F

    move-result-object v8

    aget v12, v8, v6

    aget v10, v8, v5

    iget v11, v0, Lnn/m;->e:F

    add-float v13, v10, v11

    iget v11, v0, Lnn/m;->f:F

    add-float v14, v10, v11

    aget v15, v8, v4

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    invoke-virtual/range {v10 .. v15}, Lnn/v;->a(Lwn/h;FFFF)Z

    move-result v8

    if-eqz v8, :cond_0

    return v6

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    return v5
.end method
