.class public Lcom/jme3/light/OrientedBoxProbeArea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/light/ProbeArea;


# instance fields
.field private transform:Lcom/jme3/math/Transform;

.field private final uniformMatrix:Lcom/jme3/math/Matrix4f;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/jme3/math/Transform;

    invoke-direct {v0}, Lcom/jme3/math/Transform;-><init>()V

    iput-object v0, p0, Lcom/jme3/light/OrientedBoxProbeArea;->transform:Lcom/jme3/math/Transform;

    .line 3
    new-instance v0, Lcom/jme3/math/Matrix4f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/jme3/light/OrientedBoxProbeArea;->uniformMatrix:Lcom/jme3/math/Matrix4f;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Transform;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lcom/jme3/math/Transform;

    invoke-direct {v0}, Lcom/jme3/math/Transform;-><init>()V

    iput-object v0, p0, Lcom/jme3/light/OrientedBoxProbeArea;->transform:Lcom/jme3/math/Transform;

    .line 6
    new-instance v0, Lcom/jme3/math/Matrix4f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/jme3/light/OrientedBoxProbeArea;->uniformMatrix:Lcom/jme3/math/Matrix4f;

    .line 7
    iget-object v0, p0, Lcom/jme3/light/OrientedBoxProbeArea;->transform:Lcom/jme3/math/Transform;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Transform;->set(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    .line 8
    invoke-direct {p0}, Lcom/jme3/light/OrientedBoxProbeArea;->updateMatrix()V

    return-void
.end method

.method private getClosestPoint(Lcom/jme3/util/TempVars;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 7

    iget-object v0, p1, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    iget-object v0, p0, Lcom/jme3/light/OrientedBoxProbeArea;->transform:Lcom/jme3/math/Transform;

    invoke-virtual {v0}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    iget-object v0, p1, Lcom/jme3/util/TempVars;->vect3:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/light/OrientedBoxProbeArea;->transform:Lcom/jme3/math/Transform;

    invoke-virtual {v1}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget-object v1, p1, Lcom/jme3/util/TempVars;->fWdU:[F

    iget-object v2, p0, Lcom/jme3/light/OrientedBoxProbeArea;->transform:Lcom/jme3/math/Transform;

    invoke-virtual {v2}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/jme3/math/Vector3f;->x:F

    const/4 v3, 0x0

    aput v2, v1, v3

    iget-object v2, p0, Lcom/jme3/light/OrientedBoxProbeArea;->transform:Lcom/jme3/math/Transform;

    invoke-virtual {v2}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/jme3/math/Vector3f;->y:F

    const/4 v4, 0x1

    aput v2, v1, v4

    iget-object v2, p0, Lcom/jme3/light/OrientedBoxProbeArea;->transform:Lcom/jme3/math/Transform;

    invoke-virtual {v2}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/jme3/math/Vector3f;->z:F

    const/4 v4, 0x2

    aput v2, v1, v4

    :goto_0
    const/4 v2, 0x3

    if-ge v3, v2, :cond_0

    iget-object v2, p1, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    invoke-direct {p0, v3, v2}, Lcom/jme3/light/OrientedBoxProbeArea;->getScaledAxis(ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    aget v4, v1, v3

    invoke-virtual {v2, v4}, Lcom/jme3/math/Vector3f;->divideLocal(F)Lcom/jme3/math/Vector3f;

    invoke-virtual {p2, v2}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v4

    aget v5, v1, v3

    neg-float v6, v5

    invoke-static {v4, v6, v5}, Lcom/jme3/math/FastMath;->clamp(FFF)F

    move-result v4

    iget-object v5, p1, Lcom/jme3/util/TempVars;->vect4:Lcom/jme3/math/Vector3f;

    invoke-virtual {v5, v2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getScaledAxis(ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 3

    iget-object v0, p0, Lcom/jme3/light/OrientedBoxProbeArea;->uniformMatrix:Lcom/jme3/math/Matrix4f;

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    iget p1, v0, Lcom/jme3/math/Matrix4f;->m02:F

    iget v1, v0, Lcom/jme3/math/Matrix4f;->m12:F

    iget v2, v0, Lcom/jme3/math/Matrix4f;->m22:F

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m32:F

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid axis, not in range [0, 2]"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget p1, v0, Lcom/jme3/math/Matrix4f;->m01:F

    iget v1, v0, Lcom/jme3/math/Matrix4f;->m11:F

    iget v2, v0, Lcom/jme3/math/Matrix4f;->m21:F

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m31:F

    goto :goto_0

    :cond_2
    iget p1, v0, Lcom/jme3/math/Matrix4f;->m00:F

    iget v1, v0, Lcom/jme3/math/Matrix4f;->m10:F

    iget v2, v0, Lcom/jme3/math/Matrix4f;->m20:F

    iget v0, v0, Lcom/jme3/math/Matrix4f;->m30:F

    :goto_0
    invoke-virtual {p2, p1, v1, v2}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1
.end method

.method private insidePlane(Lcom/jme3/math/Plane;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/jme3/math/Plane;->getNormal()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result p2

    invoke-virtual {p1}, Lcom/jme3/math/Plane;->getNormal()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result p3

    invoke-virtual {p1}, Lcom/jme3/math/Plane;->getNormal()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result p4

    invoke-virtual {p5, p2, p3, p4}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    iget p2, p5, Lcom/jme3/math/Vector3f;->x:F

    invoke-static {p2}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result p2

    iget p3, p5, Lcom/jme3/math/Vector3f;->y:F

    invoke-static {p3}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result p3

    add-float/2addr p2, p3

    iget p3, p5, Lcom/jme3/math/Vector3f;->z:F

    invoke-static {p3}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result p3

    add-float/2addr p2, p3

    iget-object p3, p0, Lcom/jme3/light/OrientedBoxProbeArea;->transform:Lcom/jme3/math/Transform;

    invoke-virtual {p3}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/jme3/math/Plane;->pseudoDistance(Lcom/jme3/math/Vector3f;)F

    move-result p1

    neg-float p2, p2

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private updateMatrix()V
    .locals 7

    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    iget-object v1, v0, Lcom/jme3/util/TempVars;->tempMat3:Lcom/jme3/math/Matrix3f;

    iget-object v2, p0, Lcom/jme3/light/OrientedBoxProbeArea;->uniformMatrix:Lcom/jme3/math/Matrix4f;

    iget-object v3, p0, Lcom/jme3/light/OrientedBoxProbeArea;->transform:Lcom/jme3/math/Transform;

    invoke-virtual {v3}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/jme3/math/Quaternion;->toRotationMatrix(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3}, Lcom/jme3/math/Matrix3f;->get(II)F

    move-result v4

    iput v4, v2, Lcom/jme3/math/Matrix4f;->m00:F

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v3}, Lcom/jme3/math/Matrix3f;->get(II)F

    move-result v5

    iput v5, v2, Lcom/jme3/math/Matrix4f;->m10:F

    const/4 v5, 0x2

    invoke-virtual {v1, v5, v3}, Lcom/jme3/math/Matrix3f;->get(II)F

    move-result v6

    iput v6, v2, Lcom/jme3/math/Matrix4f;->m20:F

    invoke-virtual {v1, v3, v4}, Lcom/jme3/math/Matrix3f;->get(II)F

    move-result v6

    iput v6, v2, Lcom/jme3/math/Matrix4f;->m01:F

    invoke-virtual {v1, v4, v4}, Lcom/jme3/math/Matrix3f;->get(II)F

    move-result v6

    iput v6, v2, Lcom/jme3/math/Matrix4f;->m11:F

    invoke-virtual {v1, v5, v4}, Lcom/jme3/math/Matrix3f;->get(II)F

    move-result v6

    iput v6, v2, Lcom/jme3/math/Matrix4f;->m21:F

    invoke-virtual {v1, v3, v5}, Lcom/jme3/math/Matrix3f;->get(II)F

    move-result v3

    iput v3, v2, Lcom/jme3/math/Matrix4f;->m02:F

    invoke-virtual {v1, v4, v5}, Lcom/jme3/math/Matrix3f;->get(II)F

    move-result v3

    iput v3, v2, Lcom/jme3/math/Matrix4f;->m12:F

    invoke-virtual {v1, v5, v5}, Lcom/jme3/math/Matrix3f;->get(II)F

    move-result v1

    iput v1, v2, Lcom/jme3/math/Matrix4f;->m22:F

    iget-object v1, p0, Lcom/jme3/light/OrientedBoxProbeArea;->transform:Lcom/jme3/math/Transform;

    invoke-virtual {v1}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/jme3/math/Vector3f;->x:F

    iput v1, v2, Lcom/jme3/math/Matrix4f;->m30:F

    iget-object v1, p0, Lcom/jme3/light/OrientedBoxProbeArea;->transform:Lcom/jme3/math/Transform;

    invoke-virtual {v1}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/jme3/math/Vector3f;->y:F

    iput v1, v2, Lcom/jme3/math/Matrix4f;->m31:F

    iget-object v1, p0, Lcom/jme3/light/OrientedBoxProbeArea;->transform:Lcom/jme3/math/Transform;

    invoke-virtual {v1}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/jme3/math/Vector3f;->z:F

    iput v1, v2, Lcom/jme3/math/Matrix4f;->m32:F

    iget-object v1, p0, Lcom/jme3/light/OrientedBoxProbeArea;->transform:Lcom/jme3/math/Transform;

    invoke-virtual {v1}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/jme3/math/Vector3f;->x:F

    iput v1, v2, Lcom/jme3/math/Matrix4f;->m03:F

    iget-object v1, p0, Lcom/jme3/light/OrientedBoxProbeArea;->transform:Lcom/jme3/math/Transform;

    invoke-virtual {v1}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/jme3/math/Vector3f;->y:F

    iput v1, v2, Lcom/jme3/math/Matrix4f;->m13:F

    iget-object v1, p0, Lcom/jme3/light/OrientedBoxProbeArea;->transform:Lcom/jme3/math/Transform;

    invoke-virtual {v1}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/jme3/math/Vector3f;->z:F

    iput v1, v2, Lcom/jme3/math/Matrix4f;->m23:F

    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return-void
.end method


# virtual methods
.method public clone()Lcom/jme3/light/OrientedBoxProbeArea;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/jme3/light/OrientedBoxProbeArea;

    iget-object v1, p0, Lcom/jme3/light/OrientedBoxProbeArea;->transform:Lcom/jme3/math/Transform;

    invoke-direct {v0, v1}, Lcom/jme3/light/OrientedBoxProbeArea;-><init>(Lcom/jme3/math/Transform;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/jme3/light/OrientedBoxProbeArea;->clone()Lcom/jme3/light/OrientedBoxProbeArea;

    move-result-object v0

    return-object v0
.end method

.method public getCenter()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/light/OrientedBoxProbeArea;->transform:Lcom/jme3/math/Transform;

    invoke-virtual {v0}, Lcom/jme3/math/Transform;->getTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getExtent()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/light/OrientedBoxProbeArea;->transform:Lcom/jme3/math/Transform;

    invoke-virtual {v0}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getRadius()F
    .locals 2

    iget-object v0, p0, Lcom/jme3/light/OrientedBoxProbeArea;->transform:Lcom/jme3/math/Transform;

    invoke-virtual {v0}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget v0, v0, Lcom/jme3/math/Vector3f;->x:F

    iget-object v1, p0, Lcom/jme3/light/OrientedBoxProbeArea;->transform:Lcom/jme3/math/Transform;

    invoke-virtual {v1}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/jme3/math/Vector3f;->y:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v1, p0, Lcom/jme3/light/OrientedBoxProbeArea;->transform:Lcom/jme3/math/Transform;

    invoke-virtual {v1}, Lcom/jme3/math/Transform;->getScale()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/jme3/math/Vector3f;->z:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public getRotation()Lcom/jme3/math/Quaternion;
    .locals 1

    iget-object v0, p0, Lcom/jme3/light/OrientedBoxProbeArea;->transform:Lcom/jme3/math/Transform;

    invoke-virtual {v0}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public getUniformMatrix()Lcom/jme3/math/Matrix4f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/light/OrientedBoxProbeArea;->uniformMatrix:Lcom/jme3/math/Matrix4f;

    return-object v0
.end method

.method public intersectsBox(Lcom/jme3/bounding/BoundingBox;Lcom/jme3/util/TempVars;)Z
    .locals 16

    move-object/from16 v6, p0

    move-object/from16 v0, p2

    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    const/4 v7, 0x0

    invoke-direct {v6, v7, v1}, Lcom/jme3/light/OrientedBoxProbeArea;->getScaledAxis(ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v8

    const/4 v1, 0x1

    iget-object v2, v0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    invoke-direct {v6, v1, v2}, Lcom/jme3/light/OrientedBoxProbeArea;->getScaledAxis(ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v9

    const/4 v1, 0x2

    iget-object v2, v0, Lcom/jme3/util/TempVars;->vect3:Lcom/jme3/math/Vector3f;

    invoke-direct {v6, v1, v2}, Lcom/jme3/light/OrientedBoxProbeArea;->getScaledAxis(ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v10

    iget-object v11, v0, Lcom/jme3/util/TempVars;->vect4:Lcom/jme3/math/Vector3f;

    iget-object v12, v0, Lcom/jme3/util/TempVars;->plane:Lcom/jme3/math/Plane;

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bounding/BoundingVolume;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object v13

    const/4 v14, 0x0

    const/high16 v15, -0x40800000    # -1.0f

    invoke-virtual {v12, v14, v14, v15}, Lcom/jme3/math/Plane;->setNormal(FFF)V

    iget v0, v13, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bounding/BoundingBox;->getZExtent()F

    move-result v1

    add-float/2addr v0, v1

    neg-float v0, v0

    invoke-virtual {v12, v0}, Lcom/jme3/math/Plane;->setConstant(F)V

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/jme3/light/OrientedBoxProbeArea;->insidePlane(Lcom/jme3/math/Plane;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Z

    move-result v0

    if-nez v0, :cond_0

    return v7

    :cond_0
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v12, v14, v14, v5}, Lcom/jme3/math/Plane;->setNormal(FFF)V

    iget v0, v13, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bounding/BoundingBox;->getZExtent()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {v12, v0}, Lcom/jme3/math/Plane;->setConstant(F)V

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/jme3/light/OrientedBoxProbeArea;->insidePlane(Lcom/jme3/math/Plane;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Z

    move-result v0

    if-nez v0, :cond_1

    return v7

    :cond_1
    invoke-virtual {v12, v14, v15, v14}, Lcom/jme3/math/Plane;->setNormal(FFF)V

    iget v0, v13, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bounding/BoundingBox;->getYExtent()F

    move-result v1

    add-float/2addr v0, v1

    neg-float v0, v0

    invoke-virtual {v12, v0}, Lcom/jme3/math/Plane;->setConstant(F)V

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/jme3/light/OrientedBoxProbeArea;->insidePlane(Lcom/jme3/math/Plane;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Z

    move-result v0

    if-nez v0, :cond_2

    return v7

    :cond_2
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v12, v14, v5, v14}, Lcom/jme3/math/Plane;->setNormal(FFF)V

    iget v0, v13, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bounding/BoundingBox;->getYExtent()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {v12, v0}, Lcom/jme3/math/Plane;->setConstant(F)V

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/jme3/light/OrientedBoxProbeArea;->insidePlane(Lcom/jme3/math/Plane;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Z

    move-result v0

    if-nez v0, :cond_3

    return v7

    :cond_3
    invoke-virtual {v12, v15, v14, v14}, Lcom/jme3/math/Plane;->setNormal(FFF)V

    iget v0, v13, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bounding/BoundingBox;->getXExtent()F

    move-result v1

    add-float/2addr v0, v1

    neg-float v0, v0

    invoke-virtual {v12, v0}, Lcom/jme3/math/Plane;->setConstant(F)V

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/jme3/light/OrientedBoxProbeArea;->insidePlane(Lcom/jme3/math/Plane;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Z

    move-result v0

    if-nez v0, :cond_4

    return v7

    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v12, v0, v14, v14}, Lcom/jme3/math/Plane;->setNormal(FFF)V

    iget v0, v13, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/bounding/BoundingBox;->getXExtent()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {v12, v0}, Lcom/jme3/math/Plane;->setConstant(F)V

    move-object/from16 v0, p0

    move-object v1, v12

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/jme3/light/OrientedBoxProbeArea;->insidePlane(Lcom/jme3/math/Plane;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Z

    move-result v0

    return v0
.end method

.method public intersectsFrustum(Lcom/jme3/renderer/Camera;Lcom/jme3/util/TempVars;)Z
    .locals 12

    iget-object v0, p2, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/jme3/light/OrientedBoxProbeArea;->getScaledAxis(ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget-object v2, p2, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    const/4 v8, 0x1

    invoke-direct {p0, v8, v2}, Lcom/jme3/light/OrientedBoxProbeArea;->getScaledAxis(ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v9

    const/4 v2, 0x2

    iget-object v3, p2, Lcom/jme3/util/TempVars;->vect3:Lcom/jme3/math/Vector3f;

    invoke-direct {p0, v2, v3}, Lcom/jme3/light/OrientedBoxProbeArea;->getScaledAxis(ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v10

    iget-object p2, p2, Lcom/jme3/util/TempVars;->vect4:Lcom/jme3/math/Vector3f;

    const/4 v2, 0x5

    move v11, v2

    :goto_0
    if-ltz v11, :cond_1

    invoke-virtual {p1, v11}, Lcom/jme3/renderer/Camera;->getWorldPlane(I)Lcom/jme3/math/Plane;

    move-result-object v3

    move-object v2, p0

    move-object v4, v0

    move-object v5, v9

    move-object v6, v10

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/jme3/light/OrientedBoxProbeArea;->insidePlane(Lcom/jme3/math/Plane;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    :cond_1
    return v8
.end method

.method public intersectsSphere(Lcom/jme3/bounding/BoundingSphere;Lcom/jme3/util/TempVars;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingVolume;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/jme3/light/OrientedBoxProbeArea;->getClosestPoint(Lcom/jme3/util/TempVars;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jme3/bounding/BoundingSphere;->intersects(Lcom/jme3/math/Vector3f;)Z

    move-result p1

    return p1
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    new-instance v0, Lcom/jme3/math/Transform;

    invoke-direct {v0}, Lcom/jme3/math/Transform;-><init>()V

    const-string v1, "transform"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Transform;

    iput-object p1, p0, Lcom/jme3/light/OrientedBoxProbeArea;->transform:Lcom/jme3/math/Transform;

    invoke-direct {p0}, Lcom/jme3/light/OrientedBoxProbeArea;->updateMatrix()V

    return-void
.end method

.method public setCenter(Lcom/jme3/math/Vector3f;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/light/OrientedBoxProbeArea;->transform:Lcom/jme3/math/Transform;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Transform;->setTranslation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Transform;

    invoke-direct {p0}, Lcom/jme3/light/OrientedBoxProbeArea;->updateMatrix()V

    return-void
.end method

.method public setExtent(Lcom/jme3/math/Vector3f;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/light/OrientedBoxProbeArea;->transform:Lcom/jme3/math/Transform;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Transform;->setScale(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Transform;

    invoke-direct {p0}, Lcom/jme3/light/OrientedBoxProbeArea;->updateMatrix()V

    return-void
.end method

.method public setRadius(F)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/light/OrientedBoxProbeArea;->transform:Lcom/jme3/math/Transform;

    invoke-virtual {v0, p1, p1, p1}, Lcom/jme3/math/Transform;->setScale(FFF)Lcom/jme3/math/Transform;

    return-void
.end method

.method public setRotation(Lcom/jme3/math/Quaternion;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/light/OrientedBoxProbeArea;->transform:Lcom/jme3/math/Transform;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Transform;->setRotation(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Transform;

    invoke-direct {p0}, Lcom/jme3/light/OrientedBoxProbeArea;->updateMatrix()V

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/light/OrientedBoxProbeArea;->transform:Lcom/jme3/math/Transform;

    new-instance v1, Lcom/jme3/math/Transform;

    invoke-direct {v1}, Lcom/jme3/math/Transform;-><init>()V

    const-string v2, "transform"

    invoke-interface {p1, v0, v2, v1}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
