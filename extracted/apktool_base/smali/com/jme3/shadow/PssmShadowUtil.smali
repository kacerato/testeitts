.class public final Lcom/jme3/shadow/PssmShadowUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeZFar(Lcom/jme3/renderer/queue/GeometryList;Lcom/jme3/renderer/queue/GeometryList;Lcom/jme3/renderer/Camera;)F
    .locals 1

    invoke-virtual {p2}, Lcom/jme3/renderer/Camera;->getViewMatrix()Lcom/jme3/math/Matrix4f;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/jme3/shadow/ShadowUtil;->computeUnionBound(Lcom/jme3/renderer/queue/GeometryList;Lcom/jme3/math/Matrix4f;)Lcom/jme3/bounding/BoundingBox;

    move-result-object p0

    invoke-static {p1, v0}, Lcom/jme3/shadow/ShadowUtil;->computeUnionBound(Lcom/jme3/renderer/queue/GeometryList;Lcom/jme3/math/Matrix4f;)Lcom/jme3/bounding/BoundingBox;

    move-result-object p1

    invoke-virtual {p0}, Lcom/jme3/bounding/BoundingBox;->getZExtent()F

    move-result v0

    invoke-virtual {p0}, Lcom/jme3/bounding/BoundingVolume;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object p0

    iget p0, p0, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v0, p0

    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingBox;->getZExtent()F

    move-result p0

    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingVolume;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object p1

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr p0, p1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-virtual {p2}, Lcom/jme3/renderer/Camera;->getFrustumFar()F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public static updateFrustumSplits([FFFF)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    int-to-float v2, v1

    array-length v3, p0

    int-to-float v3, v3

    div-float/2addr v2, v3

    div-float v3, p2, p1

    invoke-static {v3, v2}, Lcom/jme3/math/FastMath;->pow(FF)F

    move-result v3

    mul-float/2addr v3, p1

    sub-float v4, p2, p1

    mul-float/2addr v4, v2

    add-float/2addr v4, p1

    mul-float/2addr v3, p3

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p3

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    aput v3, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    aput p1, p0, v0

    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    aput p2, p0, p1

    return-void
.end method
