.class public Lcb/g$C;
.super Lcb/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcb/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "C"
.end annotation


# instance fields
.field public final S:F


# direct methods
.method public constructor <init>(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scale"
        }
    .end annotation

    invoke-direct {p0}, Lcb/g;-><init>()V

    iput p1, p0, Lcb/g$C;->S:F

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

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    mul-float v1, p1, p1

    iget v2, p0, Lcb/g$C;->S:F

    add-float v3, v2, v0

    mul-float/2addr v3, p1

    add-float/2addr v3, v2

    mul-float/2addr v1, v3

    add-float/2addr v1, v0

    return v1
.end method
