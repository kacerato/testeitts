.class public Lcom/jme3/renderer/queue/TransparentComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/renderer/queue/GeometryComparator;


# instance fields
.field private cam:Lcom/jme3/renderer/Camera;

.field private final tempVec:Lcom/jme3/math/Vector3f;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/renderer/queue/TransparentComparator;->tempVec:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method private distanceToCam(Lcom/jme3/scene/Geometry;)F
    .locals 1

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/renderer/queue/TransparentComparator;->cam:Lcom/jme3/renderer/Camera;

    invoke-virtual {v0}, Lcom/jme3/renderer/Camera;->getLocation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jme3/bounding/BoundingVolume;->distanceToEdge(Lcom/jme3/math/Vector3f;)F

    move-result p1

    return p1
.end method


# virtual methods
.method public compare(Lcom/jme3/scene/Geometry;Lcom/jme3/scene/Geometry;)I
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lcom/jme3/renderer/queue/TransparentComparator;->distanceToCam(Lcom/jme3/scene/Geometry;)F

    move-result p1

    .line 3
    invoke-direct {p0, p2}, Lcom/jme3/renderer/queue/TransparentComparator;->distanceToCam(Lcom/jme3/scene/Geometry;)F

    move-result p2

    cmpl-float v0, p1, p2

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
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

    invoke-virtual {p0, p1, p2}, Lcom/jme3/renderer/queue/TransparentComparator;->compare(Lcom/jme3/scene/Geometry;Lcom/jme3/scene/Geometry;)I

    move-result p1

    return p1
.end method

.method public setCamera(Lcom/jme3/renderer/Camera;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/renderer/queue/TransparentComparator;->cam:Lcom/jme3/renderer/Camera;

    return-void
.end method
