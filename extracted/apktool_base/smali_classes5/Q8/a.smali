.class public LQ8/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;LJAVARuntime/Point3;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->C()I

    move-result v0

    invoke-virtual {p1}, LJAVARuntime/Point3;->getX()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->x()I

    move-result v0

    invoke-virtual {p1}, LJAVARuntime/Point3;->getY()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->p()I

    move-result p0

    invoke-virtual {p1}, LJAVARuntime/Point3;->getZ()I

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->intColor:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v0

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result p0

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static d(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->w()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->u()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->s()F

    move-result p0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    cmpl-float p0, p0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static e(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;F)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "start",
            "end",
            "progression"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;-><init>()V

    invoke-static {p0, p1, p2, v0}, LQ8/a;->f(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;FLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;FLcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "start",
            "end",
            "progression",
            "out"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->C()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->C()I

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->C()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->x()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->x()I

    move-result v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->x()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->p()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->p()I

    move-result v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->p()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->o()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->o()I

    move-result p1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->o()I

    move-result p0

    sub-int/2addr p1, p0

    int-to-float p0, p1

    mul-float/2addr p0, p2

    add-float/2addr v3, p0

    float-to-int p0, v3

    invoke-virtual {p3, p0, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->Y(IIII)V

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p3, p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->K(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p3, p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->K(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    :cond_2
    :goto_0
    return-object p3
.end method

.method public static g(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;F)V
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
            "progression"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->C()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->C()I

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->C()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->x()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->x()I

    move-result v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->x()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->p()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->p()I

    move-result v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->p()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->o()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->o()I

    move-result p1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->o()I

    move-result v4

    sub-int/2addr p1, v4

    int-to-float p1, p1

    mul-float/2addr p1, p2

    add-float/2addr v3, p1

    float-to-int p1, v3

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;->Y(IIII)V

    :cond_0
    return-void
.end method
