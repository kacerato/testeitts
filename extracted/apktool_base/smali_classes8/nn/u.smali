.class public interface abstract Lnn/u;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public a(FFF)F
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "f",
            "g",
            "u"
        }
    .end annotation

    mul-float/2addr p2, p3

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p3

    mul-float/2addr v0, p1

    add-float/2addr p2, v0

    return p2
.end method

.method public abstract b([F[FF)[F
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
.end method
