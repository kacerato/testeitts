.class public Lcb/g$o;
.super Lcb/g$q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcb/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "o"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bounces"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcb/g$q;-><init>(I)V

    return-void
.end method

.method public constructor <init>([F[F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widths",
            "heights"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcb/g$q;-><init>([F[F)V

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

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p1, v0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x40000000    # 2.0f

    if-gtz v1, :cond_0

    mul-float/2addr p1, v3

    sub-float p1, v2, p1

    invoke-virtual {p0, p1}, Lcb/g$o;->c(F)F

    move-result p1

    sub-float/2addr v2, p1

    div-float/2addr v2, v3

    return v2

    :cond_0
    mul-float/2addr p1, v3

    sub-float/2addr p1, v2

    invoke-virtual {p0, p1}, Lcb/g$o;->c(F)F

    move-result p1

    div-float/2addr p1, v3

    add-float/2addr p1, v0

    return p1
.end method

.method public final c(F)F
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    iget-object v0, p0, Lcb/g$q;->S:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v2, v0, v1

    add-float/2addr v2, p1

    cmpg-float v3, v2, v0

    if-gez v3, :cond_0

    div-float/2addr v0, v1

    div-float/2addr v2, v0

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    return v2

    :cond_0
    invoke-super {p0, p1}, Lcb/g$q;->a(F)F

    move-result p1

    return p1
.end method
