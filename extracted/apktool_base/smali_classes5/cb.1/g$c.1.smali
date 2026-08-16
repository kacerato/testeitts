.class public Lcb/g$c;
.super Lcb/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcb/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcb/g;-><init>()V

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

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    if-gtz v0, :cond_0

    mul-float/2addr p1, v1

    mul-float/2addr p1, p1

    sub-float p1, v2, p1

    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float p1, v3

    sub-float/2addr v2, p1

    div-float/2addr v2, v1

    return v2

    :cond_0
    sub-float/2addr p1, v2

    mul-float/2addr p1, v1

    mul-float/2addr p1, p1

    sub-float p1, v2, p1

    float-to-double v3, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float p1, v3

    add-float/2addr p1, v2

    div-float/2addr p1, v1

    return p1
.end method
