.class public Lcom/jme3/shadow/ShadowUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/shadow/ShadowUtil$OccludersExtractor;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addGeometriesInCamFrustumAndViewPortFromNode(Lcom/jme3/renderer/Camera;[Lcom/jme3/renderer/Camera;Lcom/jme3/scene/Spatial;Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;Lcom/jme3/renderer/queue/GeometryList;)V
    .locals 6

    invoke-virtual {p2}, Lcom/jme3/scene/Spatial;->getCullHint()Lcom/jme3/scene/Spatial$CullHint;

    move-result-object v0

    sget-object v1, Lcom/jme3/scene/Spatial$CullHint;->Always:Lcom/jme3/scene/Spatial$CullHint;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_2

    if-nez v2, :cond_2

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/jme3/renderer/Camera;->getPlaneState()I

    move-result v3

    invoke-virtual {v2, v0}, Lcom/jme3/renderer/Camera;->setPlaneState(I)V

    invoke-virtual {p2}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/jme3/renderer/Camera;->contains(Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/renderer/Camera$FrustumIntersect;

    move-result-object v4

    sget-object v5, Lcom/jme3/renderer/Camera$FrustumIntersect;->Outside:Lcom/jme3/renderer/Camera$FrustumIntersect;

    if-eq v4, v5, :cond_1

    invoke-virtual {p2, p0}, Lcom/jme3/scene/Spatial;->checkCulling(Lcom/jme3/renderer/Camera;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    invoke-virtual {v2, v3}, Lcom/jme3/renderer/Camera;->setPlaneState(I)V

    add-int/lit8 v1, v1, 0x1

    move v2, v4

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_4

    instance-of v0, p2, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_3

    check-cast p2, Lcom/jme3/scene/Node;

    invoke-virtual {p2}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    invoke-static {p0, p1, v0, p3, p4}, Lcom/jme3/shadow/ShadowUtil;->addGeometriesInCamFrustumAndViewPortFromNode(Lcom/jme3/renderer/Camera;[Lcom/jme3/renderer/Camera;Lcom/jme3/scene/Spatial;Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;Lcom/jme3/renderer/queue/GeometryList;)V

    goto :goto_2

    :cond_3
    instance-of p0, p2, Lcom/jme3/scene/Geometry;

    if-eqz p0, :cond_4

    invoke-virtual {p2}, Lcom/jme3/scene/Spatial;->getShadowMode()Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    move-result-object p0

    invoke-static {p0, p3}, Lcom/jme3/shadow/ShadowUtil;->checkShadowMode(Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;)Z

    move-result p0

    if-eqz p0, :cond_4

    check-cast p2, Lcom/jme3/scene/Geometry;

    invoke-virtual {p2}, Lcom/jme3/scene/Geometry;->isGrouped()Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {p4, p2}, Lcom/jme3/renderer/queue/GeometryList;->add(Lcom/jme3/scene/Geometry;)V

    :cond_4
    return-void
.end method

.method private static addGeometriesInCamFrustumFromNode(Lcom/jme3/renderer/Camera;Lcom/jme3/scene/Node;Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;Lcom/jme3/renderer/queue/GeometryList;)V
    .locals 4

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getCullHint()Lcom/jme3/scene/Spatial$CullHint;

    move-result-object v0

    sget-object v1, Lcom/jme3/scene/Spatial$CullHint;->Always:Lcom/jme3/scene/Spatial$CullHint;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jme3/renderer/Camera;->setPlaneState(I)V

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jme3/renderer/Camera;->contains(Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/renderer/Camera$FrustumIntersect;

    move-result-object v1

    sget-object v2, Lcom/jme3/renderer/Camera$FrustumIntersect;->Outside:Lcom/jme3/renderer/Camera$FrustumIntersect;

    if-eq v1, v2, :cond_3

    invoke-virtual {p1}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Spatial;

    instance-of v2, v1, Lcom/jme3/scene/Node;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/jme3/scene/Node;

    invoke-static {p0, v1, p2, p3}, Lcom/jme3/shadow/ShadowUtil;->addGeometriesInCamFrustumFromNode(Lcom/jme3/renderer/Camera;Lcom/jme3/scene/Node;Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;Lcom/jme3/renderer/queue/GeometryList;)V

    goto :goto_0

    :cond_2
    instance-of v2, v1, Lcom/jme3/scene/Geometry;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->getCullHint()Lcom/jme3/scene/Spatial$CullHint;

    move-result-object v2

    sget-object v3, Lcom/jme3/scene/Spatial$CullHint;->Always:Lcom/jme3/scene/Spatial$CullHint;

    if-eq v2, v3, :cond_1

    invoke-virtual {p0, v0}, Lcom/jme3/renderer/Camera;->setPlaneState(I)V

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->getShadowMode()Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/jme3/shadow/ShadowUtil;->checkShadowMode(Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/jme3/scene/Geometry;

    invoke-virtual {v2}, Lcom/jme3/scene/Geometry;->isGrouped()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jme3/renderer/Camera;->contains(Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/renderer/Camera$FrustumIntersect;

    move-result-object v1

    sget-object v3, Lcom/jme3/renderer/Camera$FrustumIntersect;->Outside:Lcom/jme3/renderer/Camera$FrustumIntersect;

    if-eq v1, v3, :cond_1

    invoke-virtual {p3, v2}, Lcom/jme3/renderer/queue/GeometryList;->add(Lcom/jme3/scene/Geometry;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static checkShadowMode(Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;)Z
    .locals 3

    sget-object v0, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Off:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_6

    sget-object v0, Lcom/jme3/shadow/ShadowUtil$1;->$SwitchMap$com$jme3$renderer$queue$RenderQueue$ShadowMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    sget-object p1, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Receive:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    if-eq p0, p1, :cond_2

    sget-object p1, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->CastAndReceive:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    if-ne p0, p1, :cond_3

    :cond_2
    move v1, v0

    :cond_3
    return v1

    :cond_4
    sget-object p1, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Cast:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    if-eq p0, p1, :cond_5

    sget-object p1, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->CastAndReceive:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    if-ne p0, p1, :cond_6

    :cond_5
    move v1, v0

    :cond_6
    :goto_0
    return v1
.end method

.method public static computeBoundForPoints([Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix4f;)Lcom/jme3/bounding/BoundingBox;
    .locals 7

    .line 13
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    .line 14
    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    sget-object v2, Lcom/jme3/math/Vector3f;->POSITIVE_INFINITY:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    .line 15
    iget-object v2, v0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    sget-object v3, Lcom/jme3/math/Vector3f;->NEGATIVE_INFINITY:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    .line 16
    iget-object v3, v0, Lcom/jme3/util/TempVars;->vect3:Lcom/jme3/math/Vector3f;

    const/4 v4, 0x0

    .line 17
    :goto_0
    array-length v5, p0

    if-ge v4, v5, :cond_0

    .line 18
    aget-object v5, p0, v4

    invoke-virtual {p1, v5, v3}, Lcom/jme3/math/Matrix4f;->multProj(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)F

    move-result v5

    .line 19
    iget v6, v3, Lcom/jme3/math/Vector3f;->x:F

    div-float/2addr v6, v5

    iput v6, v3, Lcom/jme3/math/Vector3f;->x:F

    .line 20
    iget v6, v3, Lcom/jme3/math/Vector3f;->y:F

    div-float/2addr v6, v5

    iput v6, v3, Lcom/jme3/math/Vector3f;->y:F

    .line 21
    iget v6, v3, Lcom/jme3/math/Vector3f;->z:F

    div-float/2addr v6, v5

    iput v6, v3, Lcom/jme3/math/Vector3f;->z:F

    .line 22
    invoke-virtual {v1, v3}, Lcom/jme3/math/Vector3f;->minLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 23
    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->maxLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 24
    :cond_0
    iget-object p0, v0, Lcom/jme3/util/TempVars;->vect4:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p0

    const/high16 p1, 0x3f000000    # 0.5f

    invoke-virtual {p0, p1}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object p0

    .line 25
    iget-object v3, v0, Lcom/jme3/util/TempVars;->vect5:Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object p1

    .line 26
    new-instance v1, Lcom/jme3/bounding/BoundingBox;

    iget v2, p1, Lcom/jme3/math/Vector3f;->x:F

    const/high16 v3, 0x40000000    # 2.0f

    add-float/2addr v2, v3

    iget v4, p1, Lcom/jme3/math/Vector3f;->y:F

    add-float/2addr v4, v3

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    const/high16 v3, 0x40200000    # 2.5f

    add-float/2addr p1, v3

    invoke-direct {v1, p0, v2, v4, p1}, Lcom/jme3/bounding/BoundingBox;-><init>(Lcom/jme3/math/Vector3f;FFF)V

    .line 27
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return-object v1
.end method

.method public static computeBoundForPoints([Lcom/jme3/math/Vector3f;Lcom/jme3/math/Transform;)Lcom/jme3/bounding/BoundingBox;
    .locals 6

    .line 1
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    sget-object v2, Lcom/jme3/math/Vector3f;->POSITIVE_INFINITY:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    .line 3
    iget-object v2, v0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    sget-object v3, Lcom/jme3/math/Vector3f;->NEGATIVE_INFINITY:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    .line 4
    iget-object v3, v0, Lcom/jme3/util/TempVars;->vect3:Lcom/jme3/math/Vector3f;

    const/4 v4, 0x0

    .line 5
    :goto_0
    array-length v5, p0

    if-ge v4, v5, :cond_0

    .line 6
    aget-object v5, p0, v4

    invoke-virtual {p1, v5, v3}, Lcom/jme3/math/Transform;->transformVector(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 7
    invoke-virtual {v1, v3}, Lcom/jme3/math/Vector3f;->minLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 8
    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->maxLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_0
    iget-object p0, v0, Lcom/jme3/util/TempVars;->vect4:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p0

    const/high16 p1, 0x3f000000    # 0.5f

    invoke-virtual {p0, p1}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object p0

    .line 10
    iget-object v3, v0, Lcom/jme3/util/TempVars;->vect5:Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object p1

    .line 11
    new-instance v1, Lcom/jme3/bounding/BoundingBox;

    iget v2, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v3, p1, Lcom/jme3/math/Vector3f;->y:F

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    invoke-direct {v1, p0, v2, v3, p1}, Lcom/jme3/bounding/BoundingBox;-><init>(Lcom/jme3/math/Vector3f;FFF)V

    .line 12
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return-object v1
.end method

.method public static computeUnionBound(Lcom/jme3/renderer/queue/GeometryList;Lcom/jme3/math/Matrix4f;)Lcom/jme3/bounding/BoundingBox;
    .locals 5

    .line 9
    new-instance v0, Lcom/jme3/bounding/BoundingBox;

    invoke-direct {v0}, Lcom/jme3/bounding/BoundingBox;-><init>()V

    .line 10
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v1

    const/4 v2, 0x0

    .line 11
    :goto_0
    invoke-virtual {p0}, Lcom/jme3/renderer/queue/GeometryList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 12
    invoke-virtual {p0, v2}, Lcom/jme3/renderer/queue/GeometryList;->get(I)Lcom/jme3/scene/Geometry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v3

    .line 13
    iget-object v4, v1, Lcom/jme3/util/TempVars;->bbox:Lcom/jme3/bounding/BoundingBox;

    invoke-virtual {v3, p1, v4}, Lcom/jme3/bounding/BoundingVolume;->transform(Lcom/jme3/math/Matrix4f;Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;

    move-result-object v3

    .line 14
    invoke-virtual {v3}, Lcom/jme3/bounding/BoundingVolume;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object v4

    iget v4, v4, Lcom/jme3/math/Vector3f;->x:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/jme3/bounding/BoundingVolume;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object v4

    iget v4, v4, Lcom/jme3/math/Vector3f;->x:F

    invoke-static {v4}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v4

    if-nez v4, :cond_0

    .line 15
    invoke-virtual {v0, v3}, Lcom/jme3/bounding/BoundingBox;->mergeLocal(Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {v1}, Lcom/jme3/util/TempVars;->release()V

    return-object v0
.end method

.method public static computeUnionBound(Lcom/jme3/renderer/queue/GeometryList;Lcom/jme3/math/Transform;)Lcom/jme3/bounding/BoundingBox;
    .locals 5

    .line 1
    new-instance v0, Lcom/jme3/bounding/BoundingBox;

    invoke-direct {v0}, Lcom/jme3/bounding/BoundingBox;-><init>()V

    .line 2
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/jme3/renderer/queue/GeometryList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 4
    invoke-virtual {p0, v2}, Lcom/jme3/renderer/queue/GeometryList;->get(I)Lcom/jme3/scene/Geometry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v3

    .line 5
    iget-object v4, v1, Lcom/jme3/util/TempVars;->bbox:Lcom/jme3/bounding/BoundingBox;

    invoke-virtual {v3, p1, v4}, Lcom/jme3/bounding/BoundingVolume;->transform(Lcom/jme3/math/Transform;Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;

    move-result-object v3

    .line 6
    invoke-virtual {v3}, Lcom/jme3/bounding/BoundingVolume;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object v4

    iget v4, v4, Lcom/jme3/math/Vector3f;->x:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/jme3/bounding/BoundingVolume;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object v4

    iget v4, v4, Lcom/jme3/math/Vector3f;->x:F

    invoke-static {v4}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v4

    if-nez v4, :cond_0

    .line 7
    invoke-virtual {v0, v3}, Lcom/jme3/bounding/BoundingBox;->mergeLocal(Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v1}, Lcom/jme3/util/TempVars;->release()V

    return-object v0
.end method

.method public static computeUnionBound(Ljava/util/List;)Lcom/jme3/bounding/BoundingBox;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/bounding/BoundingVolume;",
            ">;)",
            "Lcom/jme3/bounding/BoundingBox;"
        }
    .end annotation

    .line 17
    new-instance v0, Lcom/jme3/bounding/BoundingBox;

    invoke-direct {v0}, Lcom/jme3/bounding/BoundingBox;-><init>()V

    const/4 v1, 0x0

    .line 18
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 19
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/bounding/BoundingVolume;

    .line 20
    invoke-virtual {v0, v2}, Lcom/jme3/bounding/BoundingBox;->mergeLocal(Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getGeometriesInCamFrustum(Lcom/jme3/renderer/queue/GeometryList;Lcom/jme3/renderer/Camera;Lcom/jme3/renderer/queue/GeometryList;)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcom/jme3/renderer/queue/GeometryList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    invoke-virtual {p0, v1}, Lcom/jme3/renderer/queue/GeometryList;->get(I)Lcom/jme3/scene/Geometry;

    move-result-object v2

    .line 3
    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getPlaneState()I

    move-result v3

    .line 4
    invoke-virtual {p1, v0}, Lcom/jme3/renderer/Camera;->setPlaneState(I)V

    .line 5
    invoke-virtual {v2}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/jme3/renderer/Camera;->contains(Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/renderer/Camera$FrustumIntersect;

    move-result-object v4

    sget-object v5, Lcom/jme3/renderer/Camera$FrustumIntersect;->Outside:Lcom/jme3/renderer/Camera$FrustumIntersect;

    if-eq v4, v5, :cond_0

    .line 6
    invoke-virtual {p2, v2}, Lcom/jme3/renderer/queue/GeometryList;->add(Lcom/jme3/scene/Geometry;)V

    .line 7
    :cond_0
    invoke-virtual {p1, v3}, Lcom/jme3/renderer/Camera;->setPlaneState(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getGeometriesInCamFrustum(Lcom/jme3/scene/Spatial;Lcom/jme3/renderer/Camera;Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;Lcom/jme3/renderer/queue/GeometryList;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 8
    instance-of v0, p0, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getPlaneState()I

    move-result v0

    .line 10
    check-cast p0, Lcom/jme3/scene/Node;

    invoke-static {p1, p0, p2, p3}, Lcom/jme3/shadow/ShadowUtil;->addGeometriesInCamFrustumFromNode(Lcom/jme3/renderer/Camera;Lcom/jme3/scene/Node;Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;Lcom/jme3/renderer/queue/GeometryList;)V

    .line 11
    invoke-virtual {p1, v0}, Lcom/jme3/renderer/Camera;->setPlaneState(I)V

    :cond_0
    return-void
.end method

.method public static getGeometriesInLightRadius(Lcom/jme3/renderer/queue/GeometryList;[Lcom/jme3/renderer/Camera;Lcom/jme3/renderer/queue/GeometryList;)V
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/jme3/renderer/queue/GeometryList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p0, v1}, Lcom/jme3/renderer/queue/GeometryList;->get(I)Lcom/jme3/scene/Geometry;

    move-result-object v2

    move v3, v0

    move v4, v3

    :goto_1
    array-length v5, p1

    if-ge v3, v5, :cond_1

    if-nez v4, :cond_1

    aget-object v4, p1, v3

    invoke-virtual {v4}, Lcom/jme3/renderer/Camera;->getPlaneState()I

    move-result v5

    invoke-virtual {v4, v0}, Lcom/jme3/renderer/Camera;->setPlaneState(I)V

    invoke-virtual {v2}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/jme3/renderer/Camera;->contains(Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/renderer/Camera$FrustumIntersect;

    move-result-object v6

    sget-object v7, Lcom/jme3/renderer/Camera$FrustumIntersect;->Outside:Lcom/jme3/renderer/Camera$FrustumIntersect;

    if-eq v6, v7, :cond_0

    const/4 v6, 0x1

    goto :goto_2

    :cond_0
    move v6, v0

    :goto_2
    invoke-virtual {v4, v5}, Lcom/jme3/renderer/Camera;->setPlaneState(I)V

    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {p2, v2}, Lcom/jme3/renderer/queue/GeometryList;->add(Lcom/jme3/scene/Geometry;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public static getLitGeometriesInViewPort(Lcom/jme3/scene/Spatial;Lcom/jme3/renderer/Camera;[Lcom/jme3/renderer/Camera;Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;Lcom/jme3/renderer/queue/GeometryList;)V
    .locals 1

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p0, p3, p4}, Lcom/jme3/shadow/ShadowUtil;->addGeometriesInCamFrustumAndViewPortFromNode(Lcom/jme3/renderer/Camera;[Lcom/jme3/renderer/Camera;Lcom/jme3/scene/Spatial;Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;Lcom/jme3/renderer/queue/GeometryList;)V

    :cond_0
    return-void
.end method

.method public static updateFrustumPoints(Lcom/jme3/renderer/Camera;FFF[Lcom/jme3/math/Vector3f;)V
    .locals 11

    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getLocation()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget-object v2, v0, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v2}, Lcom/jme3/renderer/Camera;->getDirection(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    iget-object v3, v0, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v3}, Lcom/jme3/renderer/Camera;->getUp(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getFrustumTop()F

    move-result v4

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getFrustumNear()F

    move-result v5

    div-float/2addr v4, v5

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getFrustumTop()F

    move-result v5

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getFrustumRight()F

    move-result v6

    div-float/2addr v6, v5

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->isParallelProjection()Z

    move-result p0

    if-eqz p0, :cond_0

    mul-float/2addr v6, v5

    move v4, v5

    move p0, v6

    goto :goto_0

    :cond_0
    mul-float v5, v4, p1

    mul-float p0, v5, v6

    mul-float/2addr v4, p2

    mul-float/2addr v6, v4

    move v10, v6

    move v6, p0

    move p0, v10

    :goto_0
    iget-object v7, v0, Lcom/jme3/util/TempVars;->vect3:Lcom/jme3/math/Vector3f;

    invoke-virtual {v7, v2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/jme3/math/Vector3f;->crossLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v7

    invoke-virtual {v7}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    move-result-object v7

    iget-object v8, v0, Lcom/jme3/util/TempVars;->vect4:Lcom/jme3/math/Vector3f;

    invoke-virtual {v8, v2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v9

    invoke-virtual {v9, p2}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p2, v0, Lcom/jme3/util/TempVars;->vect5:Lcom/jme3/math/Vector3f;

    invoke-virtual {p2, v8}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {v8, v2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p1, v0, Lcom/jme3/util/TempVars;->vect6:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v8}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    iget-object v1, v0, Lcom/jme3/util/TempVars;->vect7:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v3}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget-object v2, v0, Lcom/jme3/util/TempVars;->vect8:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v2

    iget-object v3, v0, Lcom/jme3/util/TempVars;->vect9:Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v7}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v3

    iget-object v4, v0, Lcom/jme3/util/TempVars;->vect10:Lcom/jme3/math/Vector3f;

    invoke-virtual {v4, v7}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object p0

    const/4 v4, 0x0

    aget-object v5, p4, v4

    invoke-virtual {v5, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    const/4 v5, 0x1

    aget-object v5, p4, v5

    invoke-virtual {v5, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    const/4 v5, 0x2

    aget-object v5, p4, v5

    invoke-virtual {v5, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    const/4 v5, 0x3

    aget-object v5, p4, v5

    invoke-virtual {v5, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    const/4 p1, 0x4

    aget-object p1, p4, p1

    invoke-virtual {p1, p2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    const/4 p1, 0x5

    aget-object p1, p4, p1

    invoke-virtual {p1, p2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    const/4 p1, 0x6

    aget-object p1, p4, p1

    invoke-virtual {p1, p2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    const/4 p1, 0x7

    aget-object p1, p4, p1

    invoke-virtual {p1, p2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p1, p3, p0

    if-eqz p1, :cond_2

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    move p2, v4

    :goto_1
    const/16 v1, 0x8

    if-ge p2, v1, :cond_1

    aget-object v1, p4, p2

    invoke-virtual {p1, v1}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_1
    const/high16 p2, 0x41000000    # 8.0f

    invoke-virtual {p1, p2}, Lcom/jme3/math/Vector3f;->divideLocal(F)Lcom/jme3/math/Vector3f;

    :goto_2
    if-ge v4, v1, :cond_2

    aget-object p2, p4, v4

    invoke-virtual {v8, p2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    sub-float p2, p3, p0

    invoke-virtual {v8, p2}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    aget-object p2, p4, v4

    invoke-virtual {p2, v8}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcom/jme3/util/TempVars;->release()V

    return-void
.end method

.method public static updateFrustumPoints2(Lcom/jme3/renderer/Camera;[Lcom/jme3/math/Vector3f;)V
    .locals 8

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/jme3/renderer/Camera;->getHeight()I

    move-result v1

    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v2

    iget-object v3, v2, Lcom/jme3/util/TempVars;->vect2d:Lcom/jme3/math/Vector2f;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Lcom/jme3/math/Vector2f;->set(FF)Lcom/jme3/math/Vector2f;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, p1, v6

    invoke-virtual {p0, v5, v4, v6}, Lcom/jme3/renderer/Camera;->getWorldCoordinates(Lcom/jme3/math/Vector2f;FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    int-to-float v1, v1

    invoke-virtual {v3, v4, v1}, Lcom/jme3/math/Vector2f;->set(FF)Lcom/jme3/math/Vector2f;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, p1, v6

    invoke-virtual {p0, v5, v4, v6}, Lcom/jme3/renderer/Camera;->getWorldCoordinates(Lcom/jme3/math/Vector2f;FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    int-to-float v0, v0

    invoke-virtual {v3, v0, v1}, Lcom/jme3/math/Vector2f;->set(FF)Lcom/jme3/math/Vector2f;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v6, p1, v6

    invoke-virtual {p0, v5, v4, v6}, Lcom/jme3/renderer/Camera;->getWorldCoordinates(Lcom/jme3/math/Vector2f;FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v0, v4}, Lcom/jme3/math/Vector2f;->set(FF)Lcom/jme3/math/Vector2f;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v6, p1, v6

    invoke-virtual {p0, v5, v4, v6}, Lcom/jme3/renderer/Camera;->getWorldCoordinates(Lcom/jme3/math/Vector2f;FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v4, v4}, Lcom/jme3/math/Vector2f;->set(FF)Lcom/jme3/math/Vector2f;

    move-result-object v5

    const/4 v6, 0x4

    aget-object v6, p1, v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {p0, v5, v7, v6}, Lcom/jme3/renderer/Camera;->getWorldCoordinates(Lcom/jme3/math/Vector2f;FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v4, v1}, Lcom/jme3/math/Vector2f;->set(FF)Lcom/jme3/math/Vector2f;

    move-result-object v5

    const/4 v6, 0x5

    aget-object v6, p1, v6

    invoke-virtual {p0, v5, v7, v6}, Lcom/jme3/renderer/Camera;->getWorldCoordinates(Lcom/jme3/math/Vector2f;FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v0, v1}, Lcom/jme3/math/Vector2f;->set(FF)Lcom/jme3/math/Vector2f;

    move-result-object v1

    const/4 v5, 0x6

    aget-object v5, p1, v5

    invoke-virtual {p0, v1, v7, v5}, Lcom/jme3/renderer/Camera;->getWorldCoordinates(Lcom/jme3/math/Vector2f;FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v0, v4}, Lcom/jme3/math/Vector2f;->set(FF)Lcom/jme3/math/Vector2f;

    move-result-object v0

    const/4 v1, 0x7

    aget-object p1, p1, v1

    invoke-virtual {p0, v0, v7, p1}, Lcom/jme3/renderer/Camera;->getWorldCoordinates(Lcom/jme3/math/Vector2f;FLcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v2}, Lcom/jme3/util/TempVars;->release()V

    return-void
.end method

.method public static updateShadowCamera(Lcom/jme3/renderer/Camera;[Lcom/jme3/math/Vector3f;)V
    .locals 27

    move-object/from16 v7, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/renderer/Camera;->isParallelProjection()Z

    move-result v0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v7, v1}, Lcom/jme3/renderer/Camera;->setProjectionMatrix(Lcom/jme3/math/Matrix4f;)V

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    .line 3
    invoke-virtual/range {v0 .. v6}, Lcom/jme3/renderer/Camera;->setFrustum(FFFFFF)V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x42340000    # 45.0f

    const/high16 v1, 0x43160000    # 150.0f

    .line 4
    invoke-virtual {v7, v0, v8, v8, v1}, Lcom/jme3/renderer/Camera;->setFrustumPerspective(FFFF)V

    .line 5
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/renderer/Camera;->getViewProjectionMatrix()Lcom/jme3/math/Matrix4f;

    move-result-object v0

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/renderer/Camera;->getProjectionMatrix()Lcom/jme3/math/Matrix4f;

    move-result-object v1

    move-object/from16 v2, p1

    .line 7
    invoke-static {v2, v0}, Lcom/jme3/shadow/ShadowUtil;->computeBoundForPoints([Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix4f;)Lcom/jme3/bounding/BoundingBox;

    move-result-object v0

    .line 8
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v2

    .line 9
    iget-object v3, v2, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v3}, Lcom/jme3/bounding/BoundingBox;->getMin(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    .line 10
    iget-object v4, v2, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v4}, Lcom/jme3/bounding/BoundingBox;->getMax(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    .line 11
    iget v4, v0, Lcom/jme3/math/Vector3f;->x:F

    iget v5, v3, Lcom/jme3/math/Vector3f;->x:F

    sub-float v6, v4, v5

    const/high16 v9, 0x40000000    # 2.0f

    div-float v6, v9, v6

    move v11, v6

    .line 12
    iget v10, v0, Lcom/jme3/math/Vector3f;->y:F

    iget v12, v3, Lcom/jme3/math/Vector3f;->y:F

    sub-float v13, v10, v12

    div-float/2addr v9, v13

    move/from16 v16, v9

    add-float/2addr v4, v5

    const/high16 v5, -0x41000000    # -0.5f

    mul-float/2addr v4, v5

    mul-float v14, v4, v6

    add-float/2addr v10, v12

    mul-float/2addr v10, v5

    mul-float v18, v10, v9

    .line 13
    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    iget v3, v3, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v0, v3

    div-float/2addr v8, v0

    move/from16 v21, v8

    neg-float v0, v3

    mul-float v22, v0, v8

    .line 14
    iget-object v0, v2, Lcom/jme3/util/TempVars;->tempMat4:Lcom/jme3/math/Matrix4f;

    move-object v10, v0

    const/16 v25, 0x0

    const/high16 v26, 0x3f800000    # 1.0f

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 15
    invoke-virtual/range {v10 .. v26}, Lcom/jme3/math/Matrix4f;->set(FFFFFFFFFFFFFFFF)V

    .line 16
    iget-object v3, v2, Lcom/jme3/util/TempVars;->tempMat42:Lcom/jme3/math/Matrix4f;

    .line 17
    invoke-virtual {v3, v0}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    .line 18
    invoke-virtual {v3, v1}, Lcom/jme3/math/Matrix4f;->multLocal(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    .line 19
    invoke-virtual {v7, v3}, Lcom/jme3/renderer/Camera;->setProjectionMatrix(Lcom/jme3/math/Matrix4f;)V

    .line 20
    invoke-virtual {v2}, Lcom/jme3/util/TempVars;->release()V

    return-void
.end method

.method public static updateShadowCamera(Lcom/jme3/renderer/ViewPort;Lcom/jme3/renderer/queue/GeometryList;Lcom/jme3/renderer/Camera;[Lcom/jme3/math/Vector3f;Lcom/jme3/renderer/queue/GeometryList;F)V
    .locals 30

    move-object/from16 v7, p2

    .line 21
    invoke-virtual/range {p2 .. p2}, Lcom/jme3/renderer/Camera;->isParallelProjection()Z

    move-result v0

    const/4 v1, 0x0

    .line 22
    invoke-virtual {v7, v1}, Lcom/jme3/renderer/Camera;->setProjectionMatrix(Lcom/jme3/math/Matrix4f;)V

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual/range {p2 .. p2}, Lcom/jme3/renderer/Camera;->getFrustumFar()F

    move-result v0

    neg-float v1, v0

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/renderer/Camera;->getFrustumFar()F

    move-result v2

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, p2

    invoke-virtual/range {v0 .. v6}, Lcom/jme3/renderer/Camera;->setFrustum(FFFFFF)V

    .line 24
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/jme3/renderer/Camera;->getViewProjectionMatrix()Lcom/jme3/math/Matrix4f;

    move-result-object v9

    move-object/from16 v0, p3

    .line 25
    invoke-static {v0, v9}, Lcom/jme3/shadow/ShadowUtil;->computeBoundForPoints([Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix4f;)Lcom/jme3/bounding/BoundingBox;

    move-result-object v0

    .line 26
    invoke-static {}, Lcom/jme3/util/TempVars;->get()Lcom/jme3/util/TempVars;

    move-result-object v1

    .line 27
    new-instance v2, Lcom/jme3/bounding/BoundingBox;

    invoke-direct {v2}, Lcom/jme3/bounding/BoundingBox;-><init>()V

    .line 28
    new-instance v3, Lcom/jme3/bounding/BoundingBox;

    invoke-direct {v3}, Lcom/jme3/bounding/BoundingBox;-><init>()V

    const/4 v4, 0x0

    move v5, v4

    .line 29
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/jme3/renderer/queue/GeometryList;->size()I

    move-result v6

    if-ge v4, v6, :cond_2

    move-object/from16 v6, p1

    .line 30
    invoke-virtual {v6, v4}, Lcom/jme3/renderer/queue/GeometryList;->get(I)Lcom/jme3/scene/Geometry;

    move-result-object v8

    .line 31
    invoke-virtual {v8}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v8

    .line 32
    iget-object v10, v1, Lcom/jme3/util/TempVars;->bbox:Lcom/jme3/bounding/BoundingBox;

    invoke-virtual {v8, v9, v10}, Lcom/jme3/bounding/BoundingVolume;->transform(Lcom/jme3/math/Matrix4f;Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;

    move-result-object v8

    .line 33
    invoke-virtual {v0, v8}, Lcom/jme3/bounding/BoundingBox;->intersects(Lcom/jme3/bounding/BoundingVolume;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 34
    invoke-virtual {v8}, Lcom/jme3/bounding/BoundingVolume;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object v10

    iget v10, v10, Lcom/jme3/math/Vector3f;->x:F

    invoke-static {v10}, Ljava/lang/Float;->isNaN(F)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v8}, Lcom/jme3/bounding/BoundingVolume;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object v10

    iget v10, v10, Lcom/jme3/math/Vector3f;->x:F

    invoke-static {v10}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v10

    if-nez v10, :cond_1

    .line 35
    invoke-virtual {v3, v8}, Lcom/jme3/bounding/BoundingBox;->mergeLocal(Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;

    add-int/lit8 v5, v5, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 36
    :cond_2
    new-instance v4, Lcom/jme3/shadow/ShadowUtil$OccludersExtractor;

    const/4 v10, 0x0

    move-object v8, v4

    move-object v11, v0

    move-object v12, v2

    move-object/from16 v13, p4

    move-object v14, v1

    invoke-direct/range {v8 .. v14}, Lcom/jme3/shadow/ShadowUtil$OccludersExtractor;-><init>(Lcom/jme3/math/Matrix4f;ILcom/jme3/bounding/BoundingBox;Lcom/jme3/bounding/BoundingBox;Lcom/jme3/renderer/queue/GeometryList;Lcom/jme3/util/TempVars;)V

    .line 37
    invoke-virtual/range {p0 .. p0}, Lcom/jme3/renderer/ViewPort;->getScenes()Lcom/jme3/util/SafeArrayList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/jme3/util/SafeArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/jme3/scene/Spatial;

    .line 38
    invoke-virtual {v4, v8}, Lcom/jme3/shadow/ShadowUtil$OccludersExtractor;->addOccluders(Lcom/jme3/scene/Spatial;)I

    goto :goto_1

    .line 39
    :cond_3
    iget-object v4, v4, Lcom/jme3/shadow/ShadowUtil$OccludersExtractor;->casterCount:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_4

    .line 40
    invoke-virtual {v1}, Lcom/jme3/util/TempVars;->release()V

    return-void

    :cond_4
    const/high16 v6, 0x40000000    # 2.0f

    if-eq v4, v5, :cond_5

    .line 41
    invoke-virtual {v2}, Lcom/jme3/bounding/BoundingBox;->getXExtent()F

    move-result v4

    add-float/2addr v4, v6

    invoke-virtual {v2, v4}, Lcom/jme3/bounding/BoundingBox;->setXExtent(F)V

    .line 42
    invoke-virtual {v2}, Lcom/jme3/bounding/BoundingBox;->getYExtent()F

    move-result v4

    add-float/2addr v4, v6

    invoke-virtual {v2, v4}, Lcom/jme3/bounding/BoundingBox;->setYExtent(F)V

    .line 43
    invoke-virtual {v2}, Lcom/jme3/bounding/BoundingBox;->getZExtent()F

    move-result v4

    add-float/2addr v4, v6

    invoke-virtual {v2, v4}, Lcom/jme3/bounding/BoundingBox;->setZExtent(F)V

    .line 44
    :cond_5
    iget-object v4, v1, Lcom/jme3/util/TempVars;->vect1:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v4}, Lcom/jme3/bounding/BoundingBox;->getMin(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v4

    .line 45
    iget-object v5, v1, Lcom/jme3/util/TempVars;->vect2:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v5}, Lcom/jme3/bounding/BoundingBox;->getMax(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    .line 46
    iget-object v5, v1, Lcom/jme3/util/TempVars;->vect3:Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v5}, Lcom/jme3/bounding/BoundingBox;->getMin(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v5

    .line 47
    iget-object v8, v1, Lcom/jme3/util/TempVars;->vect4:Lcom/jme3/math/Vector3f;

    invoke-virtual {v3, v8}, Lcom/jme3/bounding/BoundingBox;->getMax(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    .line 48
    iget-object v8, v1, Lcom/jme3/util/TempVars;->vect5:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v8}, Lcom/jme3/bounding/BoundingBox;->getMin(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v8

    .line 49
    iget-object v9, v1, Lcom/jme3/util/TempVars;->vect6:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v9}, Lcom/jme3/bounding/BoundingBox;->getMax(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    const/4 v9, 0x0

    .line 50
    iput v9, v8, Lcom/jme3/math/Vector3f;->z:F

    .line 51
    invoke-virtual/range {p2 .. p2}, Lcom/jme3/renderer/Camera;->getProjectionMatrix()Lcom/jme3/math/Matrix4f;

    move-result-object v10

    .line 52
    iget-object v11, v1, Lcom/jme3/util/TempVars;->vect7:Lcom/jme3/math/Vector3f;

    .line 53
    iget-object v12, v1, Lcom/jme3/util/TempVars;->vect8:Lcom/jme3/math/Vector3f;

    .line 54
    iget v13, v4, Lcom/jme3/math/Vector3f;->x:F

    iget v14, v5, Lcom/jme3/math/Vector3f;->x:F

    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v13

    iget v14, v8, Lcom/jme3/math/Vector3f;->x:F

    invoke-static {v13, v14}, Ljava/lang/Math;->max(FF)F

    move-result v13

    iput v13, v11, Lcom/jme3/math/Vector3f;->x:F

    .line 55
    iget v13, v2, Lcom/jme3/math/Vector3f;->x:F

    iget v14, v3, Lcom/jme3/math/Vector3f;->x:F

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v13

    iget v14, v0, Lcom/jme3/math/Vector3f;->x:F

    invoke-static {v13, v14}, Ljava/lang/Math;->min(FF)F

    move-result v13

    iput v13, v12, Lcom/jme3/math/Vector3f;->x:F

    .line 56
    iget v13, v4, Lcom/jme3/math/Vector3f;->y:F

    iget v5, v5, Lcom/jme3/math/Vector3f;->y:F

    invoke-static {v13, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iget v13, v8, Lcom/jme3/math/Vector3f;->y:F

    invoke-static {v5, v13}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, v11, Lcom/jme3/math/Vector3f;->y:F

    .line 57
    iget v2, v2, Lcom/jme3/math/Vector3f;->y:F

    iget v5, v3, Lcom/jme3/math/Vector3f;->y:F

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iget v5, v0, Lcom/jme3/math/Vector3f;->y:F

    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v12, Lcom/jme3/math/Vector3f;->y:F

    .line 58
    iget v2, v4, Lcom/jme3/math/Vector3f;->z:F

    iget v4, v8, Lcom/jme3/math/Vector3f;->z:F

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, v11, Lcom/jme3/math/Vector3f;->z:F

    .line 59
    iget v2, v3, Lcom/jme3/math/Vector3f;->z:F

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v12, Lcom/jme3/math/Vector3f;->z:F

    .line 60
    iget v0, v12, Lcom/jme3/math/Vector3f;->x:F

    iget v2, v11, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v0, v2

    .line 61
    iget v2, v12, Lcom/jme3/math/Vector3f;->y:F

    iget v3, v11, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v2, v3

    cmpl-float v3, v0, v9

    if-nez v3, :cond_6

    move v0, v9

    goto :goto_2

    :cond_6
    div-float v0, v6, v0

    :goto_2
    cmpl-float v3, v2, v9

    if-nez v3, :cond_7

    move v6, v9

    goto :goto_3

    :cond_7
    div-float/2addr v6, v2

    :goto_3
    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v2, v2, p5

    cmpl-float v3, v2, v9

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_8

    cmpl-float v5, v0, v9

    if-lez v5, :cond_8

    cmpl-float v5, v6, v9

    if-lez v5, :cond_8

    div-float v0, v4, v0

    const v5, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v5

    .line 62
    invoke-static {v0}, Lcom/jme3/math/FastMath;->ceil(F)F

    move-result v0

    div-float v0, v4, v0

    mul-float/2addr v0, v5

    div-float v6, v4, v6

    mul-float/2addr v6, v5

    .line 63
    invoke-static {v6}, Lcom/jme3/math/FastMath;->ceil(F)F

    move-result v6

    div-float v6, v4, v6

    mul-float/2addr v6, v5

    :cond_8
    move v14, v0

    move/from16 v19, v6

    .line 64
    iget v0, v12, Lcom/jme3/math/Vector3f;->x:F

    iget v5, v11, Lcom/jme3/math/Vector3f;->x:F

    add-float/2addr v0, v5

    const/high16 v5, -0x41000000    # -0.5f

    mul-float/2addr v0, v5

    mul-float/2addr v0, v14

    .line 65
    iget v6, v12, Lcom/jme3/math/Vector3f;->y:F

    iget v8, v11, Lcom/jme3/math/Vector3f;->y:F

    add-float/2addr v6, v8

    mul-float/2addr v6, v5

    mul-float v6, v6, v19

    if-eqz v3, :cond_9

    cmpl-float v3, v14, v9

    if-lez v3, :cond_9

    cmpl-float v3, v19, v9

    if-lez v3, :cond_9

    mul-float/2addr v0, v2

    .line 66
    invoke-static {v0}, Lcom/jme3/math/FastMath;->ceil(F)F

    move-result v0

    div-float/2addr v0, v2

    mul-float/2addr v6, v2

    .line 67
    invoke-static {v6}, Lcom/jme3/math/FastMath;->ceil(F)F

    move-result v3

    div-float/2addr v3, v2

    move/from16 v17, v0

    move/from16 v21, v3

    goto :goto_4

    :cond_9
    move/from16 v17, v0

    move/from16 v21, v6

    .line 68
    :goto_4
    iget v0, v12, Lcom/jme3/math/Vector3f;->z:F

    iget v2, v11, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v0, v2

    cmpl-float v3, v0, v9

    if-nez v3, :cond_a

    :goto_5
    move/from16 v24, v9

    goto :goto_6

    :cond_a
    div-float v9, v4, v0

    goto :goto_5

    :goto_6
    neg-float v0, v2

    mul-float v25, v0, v24

    .line 69
    iget-object v0, v1, Lcom/jme3/util/TempVars;->tempMat4:Lcom/jme3/math/Matrix4f;

    move-object v13, v0

    const/16 v28, 0x0

    const/high16 v29, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    .line 70
    invoke-virtual/range {v13 .. v29}, Lcom/jme3/math/Matrix4f;->set(FFFFFFFFFFFFFFFF)V

    .line 71
    iget-object v2, v1, Lcom/jme3/util/TempVars;->tempMat42:Lcom/jme3/math/Matrix4f;

    .line 72
    invoke-virtual {v2, v0}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    .line 73
    invoke-virtual {v2, v10}, Lcom/jme3/math/Matrix4f;->multLocal(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    .line 74
    invoke-virtual {v7, v2}, Lcom/jme3/renderer/Camera;->setProjectionMatrix(Lcom/jme3/math/Matrix4f;)V

    .line 75
    invoke-virtual {v1}, Lcom/jme3/util/TempVars;->release()V

    return-void
.end method
