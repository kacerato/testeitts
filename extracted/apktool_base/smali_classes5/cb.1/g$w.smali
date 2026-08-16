.class public Lcb/g$w;
.super Lcb/g$u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcb/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "w"
.end annotation


# direct methods
.method public constructor <init>(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "power"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcb/g$u;-><init>(FF)V

    return-void
.end method


# virtual methods
.method public a(F)F
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    iget v0, p0, Lcb/g$u;->S:F

    float-to-double v0, v0

    iget v2, p0, Lcb/g$u;->T:F

    neg-float v2, v2

    mul-float/2addr v2, p1

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p1, v0

    iget v0, p0, Lcb/g$u;->U:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcb/g$u;->V:F

    mul-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    return v0
.end method
