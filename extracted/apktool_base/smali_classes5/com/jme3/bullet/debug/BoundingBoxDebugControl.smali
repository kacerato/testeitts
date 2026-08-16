.class Lcom/jme3/bullet/debug/BoundingBoxDebugControl;
.super Lcom/jme3/bullet/debug/AbstractPhysicsDebugControl;
.source "SourceFile"


# static fields
.field public static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final bbox:Lcom/jme3/bounding/BoundingBox;

.field private final center:Lcom/jme3/math/Vector3f;

.field private final geom:Lcom/jme3/scene/Geometry;

.field private final pco:Lcom/jme3/bullet/collision/PhysicsCollisionObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/debug/BoundingBoxDebugControl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/debug/BoundingBoxDebugControl;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/debug/BulletDebugAppState;Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/jme3/bullet/debug/AbstractPhysicsDebugControl;-><init>(Lcom/jme3/bullet/debug/BulletDebugAppState;)V

    iput-object p2, p0, Lcom/jme3/bullet/debug/BoundingBoxDebugControl;->pco:Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->boundingBox(Lcom/jme3/bounding/BoundingBox;)Lcom/jme3/bounding/BoundingBox;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/bullet/debug/BoundingBoxDebugControl;->bbox:Lcom/jme3/bounding/BoundingBox;

    invoke-virtual {v0}, Lcom/jme3/bounding/BoundingBox;->getXExtent()F

    move-result v1

    invoke-virtual {v0}, Lcom/jme3/bounding/BoundingBox;->getYExtent()F

    move-result v2

    invoke-virtual {v0}, Lcom/jme3/bounding/BoundingBox;->getZExtent()F

    move-result v3

    new-instance v4, Lcom/jme3/scene/debug/WireBox;

    invoke-direct {v4, v1, v2, v3}, Lcom/jme3/scene/debug/WireBox;-><init>(FFF)V

    new-instance v1, Lcom/jme3/scene/Geometry;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bounding box of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2, v4}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    iput-object v1, p0, Lcom/jme3/bullet/debug/BoundingBoxDebugControl;->geom:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0}, Lcom/jme3/bounding/BoundingVolume;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object p2

    iput-object p2, p0, Lcom/jme3/bullet/debug/BoundingBoxDebugControl;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, p2}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p1}, Lcom/jme3/bullet/debug/BulletDebugAppState;->getBoundingBoxMaterial()Lcom/jme3/material/Material;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    sget-object p1, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Off:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    invoke-virtual {v1, p1}, Lcom/jme3/scene/Spatial;->setShadowMode(Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;)V

    return-void
.end method


# virtual methods
.method public controlUpdate(F)V
    .locals 3

    iget-object p1, p0, Lcom/jme3/bullet/debug/BoundingBoxDebugControl;->geom:Lcom/jme3/scene/Geometry;

    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/debug/WireBox;

    iget-object v0, p0, Lcom/jme3/bullet/debug/BoundingBoxDebugControl;->pco:Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    iget-object v1, p0, Lcom/jme3/bullet/debug/BoundingBoxDebugControl;->bbox:Lcom/jme3/bounding/BoundingBox;

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->boundingBox(Lcom/jme3/bounding/BoundingBox;)Lcom/jme3/bounding/BoundingBox;

    iget-object v0, p0, Lcom/jme3/bullet/debug/BoundingBoxDebugControl;->bbox:Lcom/jme3/bounding/BoundingBox;

    invoke-virtual {v0}, Lcom/jme3/bounding/BoundingBox;->getXExtent()F

    move-result v0

    iget-object v1, p0, Lcom/jme3/bullet/debug/BoundingBoxDebugControl;->bbox:Lcom/jme3/bounding/BoundingBox;

    invoke-virtual {v1}, Lcom/jme3/bounding/BoundingBox;->getYExtent()F

    move-result v1

    iget-object v2, p0, Lcom/jme3/bullet/debug/BoundingBoxDebugControl;->bbox:Lcom/jme3/bounding/BoundingBox;

    invoke-virtual {v2}, Lcom/jme3/bounding/BoundingBox;->getZExtent()F

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/jme3/scene/debug/WireBox;->updatePositions(FFF)V

    iget-object p1, p0, Lcom/jme3/bullet/debug/BoundingBoxDebugControl;->bbox:Lcom/jme3/bounding/BoundingBox;

    iget-object v0, p0, Lcom/jme3/bullet/debug/BoundingBoxDebugControl;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/bounding/BoundingVolume;->getCenter(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/bullet/debug/BoundingBoxDebugControl;->geom:Lcom/jme3/scene/Geometry;

    iget-object v0, p0, Lcom/jme3/bullet/debug/BoundingBoxDebugControl;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setSpatial(Lcom/jme3/scene/Spatial;)V
    .locals 2

    instance-of v0, p1, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/jme3/scene/Node;

    iget-object v1, p0, Lcom/jme3/bullet/debug/BoundingBoxDebugControl;->geom:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/jme3/scene/Node;

    iget-object v1, p0, Lcom/jme3/bullet/debug/BoundingBoxDebugControl;->geom:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->detachChild(Lcom/jme3/scene/Spatial;)I

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/jme3/scene/control/AbstractControl;->setSpatial(Lcom/jme3/scene/Spatial;)V

    return-void
.end method
