.class public Lcom/jme3/renderer/queue/OpaqueComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/renderer/queue/GeometryComparator;


# instance fields
.field private cam:Lcom/jme3/renderer/Camera;

.field private final tempVec:Lcom/jme3/math/Vector3f;

.field private final tempVec2:Lcom/jme3/math/Vector3f;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/renderer/queue/OpaqueComparator;->tempVec:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/renderer/queue/OpaqueComparator;->tempVec2:Lcom/jme3/math/Vector3f;

    return-void
.end method


# virtual methods
.method public compare(Lcom/jme3/scene/Geometry;Lcom/jme3/scene/Geometry;)I
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v0

    .line 3
    invoke-virtual {p2}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lcom/jme3/material/Material;->getSortId()I

    move-result v0

    invoke-virtual {v1}, Lcom/jme3/material/Material;->getSortId()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    if-nez v0, :cond_2

    .line 5
    invoke-virtual {p0, p1}, Lcom/jme3/renderer/queue/OpaqueComparator;->distanceToCam(Lcom/jme3/scene/Geometry;)F

    move-result p1

    .line 6
    invoke-virtual {p0, p2}, Lcom/jme3/renderer/queue/OpaqueComparator;->distanceToCam(Lcom/jme3/scene/Geometry;)F

    move-result p2

    cmpl-float v0, p1, p2

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/jme3/scene/Geometry;

    check-cast p2, Lcom/jme3/scene/Geometry;

    invoke-virtual {p0, p1, p2}, Lcom/jme3/renderer/queue/OpaqueComparator;->compare(Lcom/jme3/scene/Geometry;Lcom/jme3/scene/Geometry;)I

    move-result p1

    return p1
.end method

.method public distanceToCam(Lcom/jme3/scene/Geometry;)F
    .locals 4

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget v1, p1, Lcom/jme3/scene/Spatial;->queueDistance:F

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/jme3/renderer/queue/OpaqueComparator;->cam:Lcom/jme3/renderer/Camera;

    invoke-virtual {v0}, Lcom/jme3/renderer/Camera;->getLocation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/renderer/queue/OpaqueComparator;->cam:Lcom/jme3/renderer/Camera;

    iget-object v2, p0, Lcom/jme3/renderer/queue/OpaqueComparator;->tempVec2:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v2}, Lcom/jme3/renderer/Camera;->getDirection(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/bounding/BoundingVolume;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lcom/jme3/renderer/queue/OpaqueComparator;->tempVec:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, v0, v3}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/renderer/queue/OpaqueComparator;->tempVec:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->dot(Lcom/jme3/math/Vector3f;)F

    move-result v0

    iput v0, p1, Lcom/jme3/scene/Spatial;->queueDistance:F

    return v0
.end method

.method public setCamera(Lcom/jme3/renderer/Camera;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/renderer/queue/OpaqueComparator;->cam:Lcom/jme3/renderer/Camera;

    return-void
.end method
