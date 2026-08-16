.class public Lnn/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lnn/m;Lnn/n;Lnn/c;)Lnn/e;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "acfg",
            "type",
            "edge"
        }
    .end annotation

    sget-object v0, Lnn/f$a;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, p3}, Lnn/f;->b(Lnn/m;Lnn/c;)Lnn/e;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported jump type "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {p0, p1, p3}, Lnn/f;->c(Lnn/m;Lnn/c;)Lnn/e;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public final b(Lnn/m;Lnn/c;)Lnn/e;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "acfg",
            "edge"
        }
    .end annotation

    new-instance v0, Lnn/e;

    new-instance v1, Lnn/b;

    invoke-direct {v1}, Lnn/b;-><init>()V

    invoke-direct {v0, p2, v1}, Lnn/e;-><init>(Lnn/c;Lnn/u;)V

    iget-object v1, v0, Lnn/e;->a:Lnn/i;

    iget v2, p1, Lnn/m;->c:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v2

    iput v3, v1, Lnn/i;->d:F

    const/4 v1, 0x3

    new-array v1, v1, [F

    iget-object v3, v0, Lnn/e;->f:[F

    iget-object v4, v0, Lnn/e;->e:[F

    iget v5, p1, Lnn/m;->g:F

    neg-float v2, v2

    const/4 v6, 0x2

    new-array v7, v6, [F

    const/4 v8, 0x0

    aput v5, v7, v8

    const/4 v5, 0x1

    aput v2, v7, v5

    invoke-virtual {p0, v1, v3, v4, v7}, Lnn/f;->d([F[F[F[F)V

    iget-object v2, v0, Lnn/e;->a:Lnn/i;

    iget-object v2, v2, Lnn/i;->a:[F

    iget-object v3, p2, Lnn/c;->a:[F

    invoke-virtual {p0, v2, v3, v1}, Lnn/f;->e([F[F[F)V

    iget-object v2, v0, Lnn/e;->a:Lnn/i;

    iget-object v2, v2, Lnn/i;->b:[F

    iget-object v3, p2, Lnn/c;->b:[F

    invoke-virtual {p0, v2, v3, v1}, Lnn/f;->e([F[F[F)V

    iget-object v2, v0, Lnn/e;->f:[F

    iget-object v3, v0, Lnn/e;->e:[F

    iget v4, p1, Lnn/m;->h:F

    iget v7, p1, Lnn/m;->j:F

    new-array v6, v6, [F

    aput v4, v6, v8

    aput v7, v6, v5

    invoke-virtual {p0, v1, v2, v3, v6}, Lnn/f;->d([F[F[F[F)V

    new-instance v2, Lnn/i;

    invoke-direct {v2}, Lnn/i;-><init>()V

    iget p1, p1, Lnn/m;->k:F

    iput p1, v2, Lnn/i;->d:F

    iget-object p1, v2, Lnn/i;->a:[F

    iget-object v3, p2, Lnn/c;->a:[F

    invoke-virtual {p0, p1, v3, v1}, Lnn/f;->e([F[F[F)V

    iget-object p1, v2, Lnn/i;->b:[F

    iget-object p2, p2, Lnn/c;->b:[F

    invoke-virtual {p0, p1, p2, v1}, Lnn/f;->e([F[F[F)V

    iget-object p1, v0, Lnn/e;->b:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final c(Lnn/m;Lnn/c;)Lnn/e;
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "acfg",
            "edge"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    new-instance v3, Lnn/e;

    new-instance v4, Lnn/q;

    iget v5, v1, Lnn/m;->i:F

    invoke-direct {v4, v5}, Lnn/q;-><init>(F)V

    invoke-direct {v3, v2, v4}, Lnn/e;-><init>(Lnn/c;Lnn/u;)V

    iget-object v4, v3, Lnn/e;->a:Lnn/i;

    iget v5, v1, Lnn/m;->c:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v7, v5, v6

    iput v7, v4, Lnn/i;->d:F

    const/4 v4, 0x3

    new-array v4, v4, [F

    iget-object v7, v3, Lnn/e;->f:[F

    iget-object v8, v3, Lnn/e;->e:[F

    iget v9, v1, Lnn/m;->g:F

    neg-float v5, v5

    const/4 v10, 0x2

    new-array v11, v10, [F

    const/4 v12, 0x0

    aput v9, v11, v12

    const/4 v9, 0x1

    aput v5, v11, v9

    invoke-virtual {v0, v4, v7, v8, v11}, Lnn/f;->d([F[F[F[F)V

    iget-object v5, v3, Lnn/e;->a:Lnn/i;

    iget-object v5, v5, Lnn/i;->a:[F

    iget-object v7, v2, Lnn/c;->a:[F

    invoke-virtual {v0, v5, v7, v4}, Lnn/f;->e([F[F[F)V

    iget-object v5, v3, Lnn/e;->a:Lnn/i;

    iget-object v5, v5, Lnn/i;->b:[F

    iget-object v7, v2, Lnn/c;->b:[F

    invoke-virtual {v0, v5, v7, v4}, Lnn/f;->e([F[F[F)V

    iget v5, v1, Lnn/m;->h:F

    iget v7, v1, Lnn/m;->d:F

    mul-float/2addr v7, v6

    sub-float/2addr v5, v7

    iget v7, v1, Lnn/m;->a:F

    div-float v7, v5, v7

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    move v8, v12

    :goto_0
    if-ge v8, v7, :cond_0

    int-to-float v11, v8

    add-int/lit8 v13, v7, -0x1

    int-to-float v13, v13

    div-float/2addr v11, v13

    iget v13, v1, Lnn/m;->d:F

    mul-float/2addr v13, v6

    mul-float/2addr v11, v5

    add-float/2addr v13, v11

    iget-object v11, v3, Lnn/e;->f:[F

    iget-object v14, v3, Lnn/e;->e:[F

    iget v15, v1, Lnn/m;->j:F

    new-array v6, v10, [F

    aput v13, v6, v12

    aput v15, v6, v9

    invoke-virtual {v0, v4, v11, v14, v6}, Lnn/f;->d([F[F[F[F)V

    new-instance v6, Lnn/i;

    invoke-direct {v6}, Lnn/i;-><init>()V

    iget v11, v1, Lnn/m;->k:F

    iput v11, v6, Lnn/i;->d:F

    iget-object v11, v6, Lnn/i;->a:[F

    iget-object v13, v2, Lnn/c;->a:[F

    invoke-virtual {v0, v11, v13, v4}, Lnn/f;->e([F[F[F)V

    iget-object v11, v6, Lnn/i;->b:[F

    iget-object v13, v2, Lnn/c;->b:[F

    invoke-virtual {v0, v11, v13, v4}, Lnn/f;->e([F[F[F)V

    iget-object v11, v3, Lnn/e;->b:Ljava/util/List;

    invoke-interface {v11, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v8, v9

    const/high16 v6, 0x40000000    # 2.0f

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method public final d([F[F[F[F)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dst",
            "ax",
            "ay",
            "pt"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p2, v0

    aget v2, p4, v0

    mul-float/2addr v1, v2

    aget v2, p3, v0

    const/4 v3, 0x1

    aget v4, p4, v3

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    aput v1, p1, v0

    aget v1, p2, v3

    aget v0, p4, v0

    mul-float/2addr v1, v0

    aget v2, p3, v3

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    aput v1, p1, v3

    const/4 v1, 0x2

    aget p2, p2, v1

    mul-float/2addr p2, v0

    aget p3, p3, v1

    aget p4, p4, v3

    mul-float/2addr p3, p4

    add-float/2addr p2, p3

    aput p2, p1, v1

    return-void
.end method

.method public final e([F[F[F)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dest",
            "v1",
            "v2"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p2, v0

    aget v2, p3, v0

    add-float/2addr v1, v2

    aput v1, p1, v0

    const/4 v0, 0x1

    aget v1, p2, v0

    aget v2, p3, v0

    add-float/2addr v1, v2

    aput v1, p1, v0

    const/4 v0, 0x2

    aget p2, p2, v0

    aget p3, p3, v0

    add-float/2addr p2, p3

    aput p2, p1, v0

    return-void
.end method
