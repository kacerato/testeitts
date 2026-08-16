.class public LIb/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([F[F[F)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "N",
            "T",
            "B"
        }
    .end annotation

    const/4 v0, 0x2

    aget v1, p0, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3f7fbe77    # 0.999f

    cmpg-float v1, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-gez v1, :cond_0

    new-array v1, v5, [F

    aput v6, v1, v4

    aput v6, v1, v3

    aput v2, v1, v0

    goto :goto_0

    :cond_0
    new-array v1, v5, [F

    aput v6, v1, v4

    aput v2, v1, v3

    aput v6, v1, v0

    :goto_0
    invoke-static {v1, p0, p1}, LIb/d;->b([F[F[F)V

    invoke-static {p1}, LIb/d;->d([F)V

    invoke-static {p0, p1, p2}, LIb/d;->b([F[F[F)V

    invoke-static {p2}, LIb/d;->d([F)V

    return-void
.end method

.method public static b([F[F[F)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "out"
        }
    .end annotation

    const/4 v0, 0x1

    aget v1, p0, v0

    const/4 v2, 0x2

    aget v3, p1, v2

    mul-float v4, v1, v3

    aget v5, p0, v2

    aget v6, p1, v0

    mul-float v7, v5, v6

    sub-float/2addr v4, v7

    const/4 v7, 0x0

    aget p1, p1, v7

    mul-float/2addr v5, p1

    aget p0, p0, v7

    mul-float/2addr v3, p0

    sub-float/2addr v5, v3

    mul-float/2addr p0, v6

    mul-float/2addr v1, p1

    sub-float/2addr p0, v1

    aput v4, p2, v7

    aput v5, p2, v0

    aput p0, p2, v2

    return-void
.end method

.method public static c([F[F)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "m",
            "q"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p0, v0

    const/4 v2, 0x3

    aget v3, p0, v2

    const/4 v4, 0x6

    aget v4, p0, v4

    const/4 v5, 0x1

    aget v6, p0, v5

    const/4 v7, 0x4

    aget v7, p0, v7

    const/4 v8, 0x7

    aget v8, p0, v8

    const/4 v9, 0x2

    aget v10, p0, v9

    const/4 v11, 0x5

    aget v11, p0, v11

    const/16 v12, 0x8

    aget v12, p0, v12

    add-float v13, v1, v7

    add-float/2addr v13, v12

    const/4 v14, 0x0

    cmpl-float v14, v13, v14

    const/high16 v15, 0x3e800000    # 0.25f

    const/high16 v16, 0x40000000    # 2.0f

    const/high16 v17, 0x3f800000    # 1.0f

    if-lez v14, :cond_0

    add-float v13, v13, v17

    float-to-double v12, v13

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v1, v12

    mul-float v1, v1, v16

    mul-float/2addr v15, v1

    aput v15, p1, v2

    sub-float/2addr v11, v8

    div-float/2addr v11, v1

    aput v11, p1, v0

    sub-float/2addr v4, v10

    div-float/2addr v4, v1

    aput v4, p1, v5

    sub-float/2addr v6, v3

    div-float/2addr v6, v1

    aput v6, p1, v9

    goto :goto_0

    :cond_0
    cmpl-float v13, v1, v7

    if-lez v13, :cond_1

    cmpl-float v13, v1, v12

    if-lez v13, :cond_1

    add-float v1, v1, v17

    sub-float/2addr v1, v7

    sub-float/2addr v1, v12

    float-to-double v12, v1

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v1, v12

    mul-float v1, v1, v16

    sub-float/2addr v11, v8

    div-float/2addr v11, v1

    aput v11, p1, v2

    mul-float/2addr v15, v1

    aput v15, p1, v0

    add-float/2addr v3, v6

    div-float/2addr v3, v1

    aput v3, p1, v5

    add-float/2addr v4, v10

    div-float/2addr v4, v1

    aput v4, p1, v9

    goto :goto_0

    :cond_1
    cmpl-float v13, v7, v12

    if-lez v13, :cond_2

    add-float v7, v7, v17

    sub-float/2addr v7, v1

    sub-float/2addr v7, v12

    float-to-double v12, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v1, v12

    mul-float v1, v1, v16

    sub-float/2addr v4, v10

    div-float/2addr v4, v1

    aput v4, p1, v2

    add-float/2addr v3, v6

    div-float/2addr v3, v1

    aput v3, p1, v0

    mul-float/2addr v15, v1

    aput v15, p1, v5

    add-float/2addr v8, v11

    div-float/2addr v8, v1

    aput v8, p1, v9

    goto :goto_0

    :cond_2
    add-float v12, v12, v17

    sub-float/2addr v12, v1

    sub-float/2addr v12, v7

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v1, v12

    mul-float v1, v1, v16

    sub-float/2addr v6, v3

    div-float/2addr v6, v1

    aput v6, p1, v2

    add-float/2addr v4, v10

    div-float/2addr v4, v1

    aput v4, p1, v0

    add-float/2addr v8, v11

    div-float/2addr v8, v1

    aput v8, p1, v5

    mul-float/2addr v1, v15

    aput v1, p1, v9

    :goto_0
    aget v1, p1, v0

    mul-float/2addr v1, v1

    aget v3, p1, v5

    mul-float/2addr v3, v3

    add-float/2addr v1, v3

    aget v3, p1, v9

    mul-float/2addr v3, v3

    add-float/2addr v1, v3

    aget v3, p1, v2

    mul-float/2addr v3, v3

    add-float/2addr v1, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v1, v3

    aget v3, p1, v0

    div-float/2addr v3, v1

    aput v3, p1, v0

    aget v0, p1, v5

    div-float/2addr v0, v1

    aput v0, p1, v5

    aget v0, p1, v9

    div-float/2addr v0, v1

    aput v0, p1, v9

    aget v0, p1, v2

    div-float/2addr v0, v1

    aput v0, p1, v2

    return-void
.end method

.method public static d([F)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p0, v0

    mul-float/2addr v1, v1

    const/4 v2, 0x1

    aget v3, p0, v2

    mul-float/2addr v3, v3

    add-float/2addr v1, v3

    const/4 v3, 0x2

    aget v4, p0, v3

    mul-float/2addr v4, v4

    add-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v1, v4

    const v4, 0x1e3ce508    # 1.0E-20f

    cmpl-float v4, v1, v4

    if-lez v4, :cond_0

    aget v4, p0, v0

    div-float/2addr v4, v1

    aput v4, p0, v0

    aget v0, p0, v2

    div-float/2addr v0, v1

    aput v0, p0, v2

    aget v0, p0, v3

    div-float/2addr v0, v1

    aput v0, p0, v3

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aput v1, p0, v0

    aput v1, p0, v2

    const/high16 v0, 0x3f800000    # 1.0f

    aput v0, p0, v3

    :goto_0
    return-void
.end method

.method public static e(F)S
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/high16 v0, -0x40800000    # -1.0f

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const v0, 0x46fffe00    # 32767.0f

    mul-float/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    const/16 v0, -0x8000

    if-ge p0, v0, :cond_0

    move p0, v0

    :cond_0
    const/16 v0, 0x7fff

    if-le p0, v0, :cond_1

    move p0, v0

    :cond_1
    int-to-short p0, p0

    return p0
.end method
