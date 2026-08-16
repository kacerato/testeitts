.class public Lcom/itsmagic/engine/Engines/Engine/Vector/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;F)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "a"
        }
    .end annotation

    if-eqz p0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;FF)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "x",
            "y"
        }
    .end annotation

    if-eqz p0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    cmpl-float p0, p0, p2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Z
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

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

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

.method public static d(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z
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

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->y:F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

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

.method public static e(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "a"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p0

    cmpl-float p0, p0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static f(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FFF)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "x",
            "y",
            "z"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    cmpl-float p1, v0, p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result p1

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p0

    cmpl-float p0, p0, p3

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static g(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Z
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

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

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

.method public static h(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z
    .locals 4
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

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-ne p0, p1, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    cmpl-float p0, p0, p1

    if-nez p0, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method public static i(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "delta"
        }
    .end annotation

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v2

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->sqrtDistance(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)F

    move-result p0

    invoke-static {p2}, LNc/b;->k(F)F

    move-result p1

    mul-float/2addr p1, p1

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static j(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Ljavax/vecmath/Vector3f;)Z
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

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    iget v1, p1, Ljavax/vecmath/Tuple3f;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v0

    iget v1, p1, Ljavax/vecmath/Tuple3f;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p0

    iget p1, p1, Ljavax/vecmath/Tuple3f;->z:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static k(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;FFFF)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    if-eqz p0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->x:F

    cmpl-float p1, v0, p1

    if-nez p1, :cond_0

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->y:F

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    iget p1, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->z:F

    cmpl-float p1, p1, p3

    if-nez p1, :cond_0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->w:F

    cmpl-float p0, p0, p4

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static l(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;)Z
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

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->x:F

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->x:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->y:F

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->y:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->z:F

    iget v1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->z:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget p0, p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->w:F

    iget p1, p1, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector4;->w:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static m(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z
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

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

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

.method public static n(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;F)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 4
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

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p0

    sub-float/2addr p1, p0

    mul-float/2addr p1, p2

    add-float/2addr v2, p1

    new-instance p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p0, v0, v1, v2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->clone()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->clone()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static o(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;
    .locals 3
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
            "defaultValue"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result p3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    mul-float/2addr v0, p2

    add-float/2addr p3, v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p0

    sub-float/2addr p1, p0

    mul-float/2addr p1, p2

    add-float/2addr v1, p1

    new-instance p0, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    invoke-direct {p0, p3, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;-><init>(FFF)V

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->clone()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->clone()Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    move-result-object p0

    return-object p0

    :cond_2
    return-object p3
.end method

.method public static p(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;FLcom/itsmagic/engine/Engines/Engine/Vector/Vector2;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "start",
            "end",
            "progression",
            "defaultValue",
            "toSet"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result p3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    mul-float/2addr v0, p2

    add-float/2addr p3, v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result p1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->getY()F

    move-result p0

    sub-float/2addr p1, p0

    mul-float/2addr p1, p2

    add-float/2addr v0, p1

    invoke-virtual {p4, p3, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->w0(FF)V

    return-void

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p4, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p4, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    return-void

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->equally(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {p4, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;->x0(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector2;)V

    :cond_3
    return-void
.end method

.method public static q(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;FLcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "start",
            "end",
            "progression",
            "defaultValue",
            "toSet"
        }
    .end annotation

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result p3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    mul-float/2addr v0, p2

    add-float/2addr p3, v0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p0

    sub-float/2addr p1, p0

    mul-float/2addr p1, p2

    add-float/2addr v1, p1

    invoke-virtual {p4, p3, v0, v1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(FFF)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p4, p0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p4, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    return-void

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3, p4}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->equally(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-virtual {p4, p3}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->set(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;

    :cond_3
    return-void
.end method

.method public static r(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 1
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

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    return-void
.end method

.method public static s(Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "c"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getX()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setX(F)F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v0

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getY()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setY(F)F

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p1

    invoke-virtual {p2}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->getZ()F

    move-result p2

    add-float/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/itsmagic/engine/Engines/Engine/Vector/Vector3;->setZ(F)F

    return-void
.end method
