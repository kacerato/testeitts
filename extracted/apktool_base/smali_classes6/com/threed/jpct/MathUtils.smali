.class Lcom/threed/jpct/MathUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final calcCross([FFFFFFF)V
    .locals 2

    mul-float v0, p2, p6

    mul-float v1, p3, p5

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    .line 4
    aput v0, p0, v1

    mul-float/2addr p3, p4

    mul-float/2addr p6, p1

    sub-float/2addr p3, p6

    const/4 p6, 0x1

    .line 5
    aput p3, p0, p6

    mul-float/2addr p1, p5

    mul-float/2addr p2, p4

    sub-float/2addr p1, p2

    const/4 p2, 0x2

    .line 6
    aput p1, p0, p2

    return-void
.end method

.method public static final calcCross([F[F[F)V
    .locals 6

    const/4 v0, 0x1

    .line 1
    aget v1, p1, v0

    const/4 v2, 0x2

    aget v3, p2, v2

    mul-float/2addr v1, v3

    aget v4, p1, v2

    aget v5, p2, v0

    mul-float/2addr v5, v4

    sub-float/2addr v1, v5

    const/4 v5, 0x0

    aput v1, p0, v5

    .line 2
    aget v1, p2, v5

    mul-float/2addr v4, v1

    aget v5, p1, v5

    mul-float/2addr v3, v5

    sub-float/2addr v4, v3

    aput v4, p0, v0

    .line 3
    aget p2, p2, v0

    mul-float/2addr v5, p2

    aget p1, p1, v0

    mul-float/2addr p1, v1

    sub-float/2addr v5, p1

    aput v5, p0, v2

    return-void
.end method

.method public static final calcDot(FFFFFF)F
    .locals 0

    .line 1
    mul-float/2addr p0, p3

    mul-float/2addr p1, p4

    add-float/2addr p0, p1

    mul-float/2addr p2, p5

    add-float/2addr p0, p2

    return p0
.end method

.method public static final calcDot(FFF[F)F
    .locals 1

    const/4 v0, 0x0

    .line 3
    aget v0, p3, v0

    mul-float/2addr p0, v0

    const/4 v0, 0x1

    aget v0, p3, v0

    mul-float/2addr p1, v0

    add-float/2addr p0, p1

    const/4 p1, 0x2

    aget p1, p3, p1

    mul-float/2addr p2, p1

    add-float/2addr p0, p2

    return p0
.end method

.method public static final calcDot([F[F)F
    .locals 3

    const/4 v0, 0x0

    .line 2
    aget v1, p0, v0

    aget v0, p1, v0

    mul-float/2addr v1, v0

    const/4 v0, 0x1

    aget v2, p0, v0

    aget v0, p1, v0

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    const/4 v0, 0x2

    aget p0, p0, v0

    aget p1, p1, v0

    mul-float/2addr p0, p1

    add-float/2addr v1, p0

    return v1
.end method
