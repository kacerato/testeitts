.class public Lcb/g$h;
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
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    mul-float v0, p1, p1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p1, v1

    const/high16 v2, 0x40400000    # 3.0f

    sub-float p1, v2, p1

    mul-float/2addr v0, p1

    mul-float p1, v0, v0

    mul-float/2addr v0, v1

    sub-float/2addr v2, v0

    mul-float/2addr p1, v2

    return p1
.end method
