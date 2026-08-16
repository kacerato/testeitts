.class public Lnn/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnn/u;


# instance fields
.field public final a:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jumpHeight"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnn/q;->a:F

    return-void
.end method


# virtual methods
.method public b([F[FF)[F
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "start",
            "end",
            "u"
        }
    .end annotation

    const/4 v0, 0x0

    aget v1, p1, v0

    aget v2, p2, v0

    invoke-interface {p0, v1, v2, p3}, Lnn/u;->a(FFF)F

    move-result v1

    const/4 v2, 0x1

    aget v3, p1, v2

    aget v4, p2, v2

    invoke-virtual {p0, v3, v4, p3}, Lnn/q;->c(FFF)F

    move-result v3

    const/4 v4, 0x2

    aget p1, p1, v4

    aget p2, p2, v4

    invoke-interface {p0, p1, p2, p3}, Lnn/u;->a(FFF)F

    move-result p1

    const/4 p2, 0x3

    new-array p2, p2, [F

    aput v1, p2, v0

    aput v3, p2, v2

    aput p1, p2, v4

    return-object p2
.end method

.method public final c(FFF)F
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ys",
            "ye",
            "u"
        }
    .end annotation

    const/4 v0, 0x0

    cmpl-float v0, p3, v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p3, v0

    if-nez v1, :cond_1

    return p2

    :cond_1
    cmpl-float v1, p1, p2

    if-ltz v1, :cond_2

    iget v1, p0, Lnn/q;->a:F

    add-float v2, v1, p1

    sub-float/2addr v2, p2

    goto :goto_0

    :cond_2
    iget v2, p0, Lnn/q;->a:F

    add-float v1, v2, p1

    sub-float/2addr v1, p2

    :goto_0
    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    float-to-double v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    add-double/2addr v7, v3

    div-double/2addr v5, v7

    double-to-float p2, v5

    cmpg-float v3, p3, p2

    if-gtz v3, :cond_3

    div-float/2addr p3, p2

    sub-float/2addr v0, p3

    add-float/2addr p1, v1

    mul-float/2addr v1, v0

    mul-float/2addr v1, v0

    sub-float/2addr p1, v1

    return p1

    :cond_3
    sub-float/2addr p3, p2

    sub-float/2addr v0, p2

    div-float/2addr p3, v0

    add-float/2addr p1, v1

    mul-float/2addr v2, p3

    mul-float/2addr v2, p3

    sub-float/2addr p1, v2

    return p1
.end method
