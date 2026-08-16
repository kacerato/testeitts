.class public Lnn/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnn/u;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b([F[FF)[F
    .locals 8
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

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr p3, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p3, v3}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-interface {p0, v1, v2, v4}, Lnn/u;->a(FFF)F

    move-result v1

    const/4 v2, 0x1

    aget v4, p1, v2

    aget v5, p2, v2

    const/4 v6, 0x0

    sub-float v7, p3, v3

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-interface {p0, v4, v5, v6}, Lnn/u;->a(FFF)F

    move-result v4

    const/4 v5, 0x2

    aget p1, p1, v5

    aget p2, p2, v5

    invoke-static {p3, v3}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-interface {p0, p1, p2, p3}, Lnn/u;->a(FFF)F

    move-result p1

    const/4 p2, 0x3

    new-array p2, p2, [F

    aput v1, p2, v0

    aput v4, p2, v2

    aput p1, p2, v5

    return-object p2
.end method
