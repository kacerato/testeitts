.class public Lun/b;
.super Lun/a;
.source "SourceFile"


# instance fields
.field public final d:[F

.field public final e:[[F


# direct methods
.method public constructor <init>([F[[FIF)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "center",
            "halfEdges",
            "area",
            "flagMergeThreshold"
        }
    .end annotation

    invoke-static {p1, p2}, Lun/b;->c([F[[F)[F

    move-result-object v0

    invoke-direct {p0, p3, p4, v0}, Lun/a;-><init>(IF[F)V

    iput-object p1, p0, Lun/b;->d:[F

    iput-object p2, p0, Lun/b;->e:[[F

    return-void
.end method

.method public static c([F[[F)[F
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "center",
            "halfEdges"
        }
    .end annotation

    const/4 v0, 0x6

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    aput v2, v0, v1

    const/4 v3, 0x1

    aput v2, v0, v3

    const/4 v4, 0x2

    aput v2, v0, v4

    const/4 v2, 0x3

    const/high16 v5, -0x800000    # Float.NEGATIVE_INFINITY

    aput v5, v0, v2

    const/4 v6, 0x4

    aput v5, v0, v6

    const/4 v7, 0x5

    aput v5, v0, v7

    move v5, v1

    :goto_0
    const/16 v8, 0x8

    if-ge v5, v8, :cond_3

    and-int/lit8 v8, v5, 0x1

    const/high16 v9, -0x40800000    # -1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v8, :cond_0

    move v8, v10

    goto :goto_1

    :cond_0
    move v8, v9

    :goto_1
    and-int/lit8 v11, v5, 0x2

    if-eqz v11, :cond_1

    move v11, v10

    goto :goto_2

    :cond_1
    move v11, v9

    :goto_2
    and-int/lit8 v12, v5, 0x4

    if-eqz v12, :cond_2

    move v9, v10

    :cond_2
    aget v10, p0, v1

    aget-object v12, p1, v1

    aget v13, v12, v1

    mul-float/2addr v13, v8

    add-float/2addr v10, v13

    aget-object v13, p1, v3

    aget v14, v13, v1

    mul-float/2addr v14, v11

    add-float/2addr v10, v14

    aget-object v14, p1, v4

    aget v15, v14, v1

    mul-float/2addr v15, v9

    add-float/2addr v10, v15

    aget v15, p0, v3

    aget v16, v12, v3

    mul-float v16, v16, v8

    add-float v15, v15, v16

    aget v16, v13, v3

    mul-float v16, v16, v11

    add-float v15, v15, v16

    aget v16, v14, v3

    mul-float v16, v16, v9

    add-float v15, v15, v16

    aget v16, p0, v4

    aget v12, v12, v4

    mul-float/2addr v8, v12

    add-float v16, v16, v8

    aget v8, v13, v4

    mul-float/2addr v11, v8

    add-float v16, v16, v11

    aget v8, v14, v4

    mul-float/2addr v9, v8

    add-float v8, v16, v9

    aget v9, v0, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    aput v9, v0, v1

    aget v9, v0, v3

    invoke-static {v9, v15}, Ljava/lang/Math;->min(FF)F

    move-result v9

    aput v9, v0, v3

    aget v9, v0, v4

    invoke-static {v9, v8}, Ljava/lang/Math;->min(FF)F

    move-result v9

    aput v9, v0, v4

    aget v9, v0, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    aput v9, v0, v2

    aget v9, v0, v6

    invoke-static {v9, v15}, Ljava/lang/Math;->max(FF)F

    move-result v9

    aput v9, v0, v6

    aget v9, v0, v7

    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    aput v8, v0, v7

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_3
    return-object v0
.end method

.method public static d([F[F[F)[[F
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "up",
            "forward",
            "extent"
        }
    .end annotation

    const/4 v0, 0x3

    new-array v1, v0, [F

    const/4 v2, 0x0

    aget v3, p0, v2

    const/4 v4, 0x1

    aget v5, p0, v4

    const/4 v6, 0x2

    aget v7, p0, v6

    new-array v8, v0, [F

    aput v3, v8, v2

    aput v5, v8, v4

    aput v7, v8, v6

    new-array v0, v0, [F

    filled-new-array {v1, v8, v0}, [[F

    move-result-object v0

    aget-object v1, v0, v4

    invoke-static {v1}, Lwn/I;->m([F)V

    aget-object v1, v0, v2

    invoke-static {v1, p0, p1}, Lwn/I;->g([F[F[F)V

    aget-object p1, v0, v2

    invoke-static {p1}, Lwn/I;->m([F)V

    aget-object p1, v0, v6

    aget-object v1, v0, v2

    invoke-static {p1, v1, p0}, Lwn/I;->g([F[F[F)V

    aget-object p0, v0, v6

    invoke-static {p0}, Lwn/I;->m([F)V

    aget-object p0, v0, v2

    aget p1, p0, v2

    aget v1, p2, v2

    mul-float/2addr p1, v1

    aput p1, p0, v2

    aget p1, p0, v4

    aget v1, p2, v2

    mul-float/2addr p1, v1

    aput p1, p0, v4

    aget p1, p0, v6

    mul-float/2addr p1, v1

    aput p1, p0, v6

    aget-object p0, v0, v4

    aget p1, p0, v2

    aget v1, p2, v4

    mul-float/2addr p1, v1

    aput p1, p0, v2

    aget p1, p0, v4

    mul-float/2addr p1, v1

    aput p1, p0, v4

    aget p1, p0, v6

    aget v1, p2, v4

    mul-float/2addr p1, v1

    aput p1, p0, v6

    aget-object p0, v0, v6

    aget p1, p0, v2

    aget p2, p2, v6

    mul-float/2addr p1, p2

    aput p1, p0, v2

    aget p1, p0, v4

    mul-float/2addr p1, p2

    aput p1, p0, v4

    aget p1, p0, v6

    mul-float/2addr p1, p2

    aput p1, p0, v6

    return-object v0
.end method


# virtual methods
.method public b(Lwn/h;Lwn/N;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "hf",
            "telemetry"
        }
    .end annotation

    iget-object v1, p0, Lun/b;->d:[F

    iget-object v2, p0, Lun/b;->e:[[F

    iget v3, p0, Lun/a;->a:I

    iget v0, p0, Lun/a;->b:F

    iget v4, p1, Lwn/h;->f:F

    div-float/2addr v0, v4

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    move-object v0, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lwn/B;->y(Lwn/h;[F[[FIILwn/N;)V

    return-void
.end method
