.class public Lcom/itsmagic/engine/Engines/Engine/Quaternion/c;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;F)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "v"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

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

.method public static b(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;FFFF)Z
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
            "w",
            "x",
            "y",
            "z"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v0

    cmpl-float p1, v0, p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result p1

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result p1

    cmpl-float p1, p1, p3

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result p0

    cmpl-float p0, p0, p4

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static c(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Z
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

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result p0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

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

.method public static d(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Ljavax/vecmath/Quat4f;)Z
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

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v0

    iget v1, p1, Ljavax/vecmath/Tuple4f;->w:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v0

    invoke-static {v0}, LNc/b;->k(F)F

    move-result v0

    iget v1, p1, Ljavax/vecmath/Tuple4f;->w:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v0

    iget v1, p1, Ljavax/vecmath/Tuple4f;->x:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v0

    invoke-static {v0}, LNc/b;->k(F)F

    move-result v0

    iget v1, p1, Ljavax/vecmath/Tuple4f;->x:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    :cond_1
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v0

    iget v1, p1, Ljavax/vecmath/Tuple4f;->y:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v0

    invoke-static {v0}, LNc/b;->k(F)F

    move-result v0

    iget v1, p1, Ljavax/vecmath/Tuple4f;->y:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    :cond_2
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v0

    iget v1, p1, Ljavax/vecmath/Tuple4f;->z:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result p0

    invoke-static {p0}, LNc/b;->k(F)F

    move-result p0

    iget p1, p1, Ljavax/vecmath/Tuple4f;->z:F

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p0, p0, p1

    if-nez p0, :cond_4

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method public static e(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Z
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

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result p0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

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

.method public static f(Ljavax/vecmath/Matrix4f;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "matrix"
        }
    .end annotation

    iget v0, p0, Ljavax/vecmath/Matrix4f;->m00:F

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m11:F

    add-float v2, v0, v1

    iget v3, p0, Ljavax/vecmath/Matrix4f;->m22:F

    add-float/2addr v2, v3

    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    const/high16 v5, 0x40800000    # 4.0f

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const/high16 v8, 0x3f800000    # 1.0f

    if-lez v4, :cond_0

    add-float/2addr v2, v8

    float-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    double-to-float v0, v0

    div-float v1, v0, v5

    iget v2, p0, Ljavax/vecmath/Matrix4f;->m21:F

    iget v3, p0, Ljavax/vecmath/Matrix4f;->m12:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v0

    iget v3, p0, Ljavax/vecmath/Matrix4f;->m02:F

    iget v4, p0, Ljavax/vecmath/Matrix4f;->m20:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v0

    iget v4, p0, Ljavax/vecmath/Matrix4f;->m10:F

    iget p0, p0, Ljavax/vecmath/Matrix4f;->m01:F

    sub-float/2addr v4, p0

    :goto_0
    div-float/2addr v4, v0

    goto :goto_2

    :cond_0
    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    cmpl-float v2, v0, v3

    if-lez v2, :cond_1

    add-float/2addr v0, v8

    sub-float/2addr v0, v1

    sub-float/2addr v0, v3

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    double-to-float v0, v0

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m21:F

    iget v2, p0, Ljavax/vecmath/Matrix4f;->m12:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    div-float v2, v0, v5

    iget v3, p0, Ljavax/vecmath/Matrix4f;->m01:F

    iget v4, p0, Ljavax/vecmath/Matrix4f;->m10:F

    add-float/2addr v3, v4

    div-float/2addr v3, v0

    iget v4, p0, Ljavax/vecmath/Matrix4f;->m02:F

    iget p0, p0, Ljavax/vecmath/Matrix4f;->m20:F

    :goto_1
    add-float/2addr v4, p0

    goto :goto_0

    :cond_1
    cmpl-float v2, v1, v3

    if-lez v2, :cond_2

    add-float/2addr v1, v8

    sub-float/2addr v1, v0

    sub-float/2addr v1, v3

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    double-to-float v0, v0

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m02:F

    iget v2, p0, Ljavax/vecmath/Matrix4f;->m20:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    iget v2, p0, Ljavax/vecmath/Matrix4f;->m01:F

    iget v3, p0, Ljavax/vecmath/Matrix4f;->m10:F

    add-float/2addr v2, v3

    div-float/2addr v2, v0

    div-float v3, v0, v5

    iget v4, p0, Ljavax/vecmath/Matrix4f;->m12:F

    iget p0, p0, Ljavax/vecmath/Matrix4f;->m21:F

    goto :goto_1

    :cond_2
    add-float/2addr v3, v8

    sub-float/2addr v3, v0

    sub-float/2addr v3, v1

    float-to-double v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    double-to-float v0, v0

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m10:F

    iget v2, p0, Ljavax/vecmath/Matrix4f;->m01:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    iget v2, p0, Ljavax/vecmath/Matrix4f;->m02:F

    iget v3, p0, Ljavax/vecmath/Matrix4f;->m20:F

    add-float/2addr v2, v3

    div-float/2addr v2, v0

    iget v3, p0, Ljavax/vecmath/Matrix4f;->m12:F

    iget p0, p0, Ljavax/vecmath/Matrix4f;->m21:F

    add-float/2addr v3, p0

    div-float/2addr v3, v0

    div-float v4, v0, v5

    :goto_2
    new-instance p0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {p0, v2, v3, v4, v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>(FFFF)V

    return-object p0
.end method

.method public static g(Ljavax/vecmath/Matrix4f;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "matrix",
            "out"
        }
    .end annotation

    if-eqz p1, :cond_3

    iget v0, p0, Ljavax/vecmath/Matrix4f;->m00:F

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m11:F

    add-float v2, v0, v1

    iget v3, p0, Ljavax/vecmath/Matrix4f;->m22:F

    add-float/2addr v2, v3

    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    const/high16 v5, 0x40800000    # 4.0f

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    const/high16 v8, 0x3f800000    # 1.0f

    if-lez v4, :cond_0

    add-float/2addr v2, v8

    float-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    double-to-float v0, v0

    div-float v1, v0, v5

    iget v2, p0, Ljavax/vecmath/Matrix4f;->m21:F

    iget v3, p0, Ljavax/vecmath/Matrix4f;->m12:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v0

    iget v3, p0, Ljavax/vecmath/Matrix4f;->m02:F

    iget v4, p0, Ljavax/vecmath/Matrix4f;->m20:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v0

    iget v4, p0, Ljavax/vecmath/Matrix4f;->m10:F

    iget p0, p0, Ljavax/vecmath/Matrix4f;->m01:F

    sub-float/2addr v4, p0

    :goto_0
    div-float/2addr v4, v0

    goto :goto_2

    :cond_0
    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    cmpl-float v2, v0, v3

    if-lez v2, :cond_1

    add-float/2addr v0, v8

    sub-float/2addr v0, v1

    sub-float/2addr v0, v3

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    double-to-float v0, v0

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m21:F

    iget v2, p0, Ljavax/vecmath/Matrix4f;->m12:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    div-float v2, v0, v5

    iget v3, p0, Ljavax/vecmath/Matrix4f;->m01:F

    iget v4, p0, Ljavax/vecmath/Matrix4f;->m10:F

    add-float/2addr v3, v4

    div-float/2addr v3, v0

    iget v4, p0, Ljavax/vecmath/Matrix4f;->m02:F

    iget p0, p0, Ljavax/vecmath/Matrix4f;->m20:F

    :goto_1
    add-float/2addr v4, p0

    goto :goto_0

    :cond_1
    cmpl-float v2, v1, v3

    if-lez v2, :cond_2

    add-float/2addr v1, v8

    sub-float/2addr v1, v0

    sub-float/2addr v1, v3

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    double-to-float v0, v0

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m02:F

    iget v2, p0, Ljavax/vecmath/Matrix4f;->m20:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    iget v2, p0, Ljavax/vecmath/Matrix4f;->m01:F

    iget v3, p0, Ljavax/vecmath/Matrix4f;->m10:F

    add-float/2addr v2, v3

    div-float/2addr v2, v0

    div-float v3, v0, v5

    iget v4, p0, Ljavax/vecmath/Matrix4f;->m12:F

    iget p0, p0, Ljavax/vecmath/Matrix4f;->m21:F

    goto :goto_1

    :cond_2
    add-float/2addr v3, v8

    sub-float/2addr v3, v0

    sub-float/2addr v3, v1

    float-to-double v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    double-to-float v0, v0

    iget v1, p0, Ljavax/vecmath/Matrix4f;->m10:F

    iget v2, p0, Ljavax/vecmath/Matrix4f;->m01:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    iget v2, p0, Ljavax/vecmath/Matrix4f;->m02:F

    iget v3, p0, Ljavax/vecmath/Matrix4f;->m20:F

    add-float/2addr v2, v3

    div-float/2addr v2, v0

    iget v3, p0, Ljavax/vecmath/Matrix4f;->m12:F

    iget p0, p0, Ljavax/vecmath/Matrix4f;->m21:F

    add-float/2addr v3, p0

    div-float/2addr v3, v0

    div-float v4, v0, v5

    :goto_2
    invoke-virtual {p1, v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->G0(F)F

    invoke-virtual {p1, v2}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setX(F)F

    invoke-virtual {p1, v3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setY(F)F

    invoke-virtual {p1, v4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setZ(F)F

    :cond_3
    return-void
.end method

.method public static h(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;F)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "blend"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/c;->i(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;FLcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    move-result-object p0

    return-object p0
.end method

.method public static i(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;FLcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "b",
            "blend",
            "out"
        }
    .end annotation

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p2, v1}, LNc/b;->E(FFF)F

    move-result p2

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v3

    mul-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v3

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    sub-float/2addr v1, p2

    cmpg-float v0, v2, v0

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v0

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v2

    neg-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v0, v2

    invoke-virtual {p3, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->G0(F)F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v0

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v2

    neg-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v0, v2

    invoke-virtual {p3, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setX(F)F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v0

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v2

    neg-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v0, v2

    invoke-virtual {p3, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setY(F)F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result p0

    mul-float/2addr v1, p0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result p0

    neg-float p0, p0

    mul-float/2addr p2, p0

    add-float/2addr v1, p2

    invoke-virtual {p3, v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setZ(F)F

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v0

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v2

    mul-float/2addr v2, p2

    add-float/2addr v0, v2

    invoke-virtual {p3, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->G0(F)F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v0

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v2

    mul-float/2addr v2, p2

    add-float/2addr v0, v2

    invoke-virtual {p3, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setX(F)F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v0

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v2

    mul-float/2addr v2, p2

    add-float/2addr v0, v2

    invoke-virtual {p3, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setY(F)F

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result p0

    mul-float/2addr v1, p0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result p0

    mul-float/2addr p2, p0

    add-float/2addr v1, p2

    invoke-virtual {p3, v1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->setZ(F)F

    :goto_0
    invoke-virtual {p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->k0()Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;

    return-object p3

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p3, p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->u0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    return-object p3

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p3, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->u0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    return-object p3

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static j(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;FLcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V
    .locals 4
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
            "b",
            "blend",
            "defaultValue",
            "toSet"
        }
    .end annotation

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    const/4 p3, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p3, p2, v0}, LNc/b;->E(FFF)F

    move-result p2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v2

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    sub-float/2addr v0, p2

    cmpg-float p3, v1, p3

    if-gez p3, :cond_0

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result p3

    mul-float/2addr p3, v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v1

    neg-float v1, v1

    mul-float/2addr v1, p2

    add-float/2addr p3, v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v1

    mul-float/2addr v1, v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v2

    neg-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v3

    neg-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result p0

    mul-float/2addr v0, p0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result p0

    neg-float p0, p0

    :goto_0
    mul-float/2addr p2, p0

    add-float/2addr v0, p2

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result p3

    mul-float/2addr p3, v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->I()F

    move-result v1

    mul-float/2addr v1, p2

    add-float/2addr p3, v1

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v1

    mul-float/2addr v1, v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getX()F

    move-result v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getY()F

    move-result v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result p0

    mul-float/2addr v0, p0

    invoke-virtual {p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->getZ()F

    move-result p0

    goto :goto_0

    :goto_1
    invoke-virtual {p4, p3, v1, v2, v0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->t0(FFFF)V

    invoke-virtual {p4}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->l0()Z

    return-void

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p4, p0}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->u0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    return-void

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p4, p1}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->u0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    return-void

    :cond_3
    invoke-virtual {p4, p3}, Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;->u0(Lcom/itsmagic/engine/Engines/Engine/Quaternion/Quaternion;)V

    return-void
.end method
