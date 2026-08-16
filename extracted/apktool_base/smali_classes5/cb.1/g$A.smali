.class public Lcb/g$A;
.super Lcb/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcb/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "A"
.end annotation


# instance fields
.field public final S:F


# direct methods
.method public constructor <init>(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    invoke-direct {p0}, Lcb/g;-><init>()V

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr p1, v0

    iput p1, p0, Lcb/g$A;->S:F

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

    mul-float/2addr p1, v2

    mul-float v0, p1, p1

    iget v3, p0, Lcb/g$A;->S:F

    add-float/2addr v1, v3

    mul-float/2addr v1, p1

    sub-float/2addr v1, v3

    mul-float/2addr v0, v1

    div-float/2addr v0, v2

    return v0

    :cond_0
    sub-float/2addr p1, v1

    mul-float/2addr p1, v2

    mul-float v0, p1, p1

    iget v3, p0, Lcb/g$A;->S:F

    add-float v4, v3, v1

    mul-float/2addr v4, p1

    add-float/2addr v4, v3

    mul-float/2addr v0, v4

    div-float/2addr v0, v2

    add-float/2addr v0, v1

    return v0
.end method
