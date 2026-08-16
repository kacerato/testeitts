.class public Lcb/g$u;
.super Lcb/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcb/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "u"
.end annotation


# instance fields
.field public final S:F

.field public final T:F

.field public final U:F

.field public final V:F


# direct methods
.method public constructor <init>(FF)V
    .locals 2
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

    invoke-direct {p0}, Lcb/g;-><init>()V

    iput p1, p0, Lcb/g$u;->S:F

    iput p2, p0, Lcb/g$u;->T:F

    float-to-double v0, p1

    neg-float p1, p2

    float-to-double p1, p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    double-to-float p1, p1

    iput p1, p0, Lcb/g$u;->U:F

    const/high16 p2, 0x3f800000    # 1.0f

    sub-float p1, p2, p1

    div-float/2addr p2, p1

    iput p2, p0, Lcb/g$u;->V:F

    return-void
.end method


# virtual methods
.method public a(F)F
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x40000000    # 2.0f

    if-gtz v0, :cond_0

    iget v0, p0, Lcb/g$u;->S:F

    float-to-double v3, v0

    iget v0, p0, Lcb/g$u;->T:F

    mul-float/2addr p1, v2

    sub-float/2addr p1, v1

    mul-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p1, v0

    iget v0, p0, Lcb/g$u;->U:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcb/g$u;->V:F

    mul-float/2addr p1, v0

    :goto_0
    div-float/2addr p1, v2

    return p1

    :cond_0
    iget v0, p0, Lcb/g$u;->S:F

    float-to-double v3, v0

    iget v0, p0, Lcb/g$u;->T:F

    neg-float v0, v0

    mul-float/2addr p1, v2

    sub-float/2addr p1, v1

    mul-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p1, v0

    iget v0, p0, Lcb/g$u;->U:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcb/g$u;->V:F

    mul-float/2addr p1, v0

    sub-float p1, v2, p1

    goto :goto_0
.end method
