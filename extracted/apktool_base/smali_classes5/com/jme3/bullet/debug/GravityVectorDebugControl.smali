.class Lcom/jme3/bullet/debug/GravityVectorDebugControl;
.super Lcom/jme3/bullet/debug/AbstractPhysicsDebugControl;
.source "SourceFile"


# static fields
.field static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final body:Lcom/jme3/bullet/objects/PhysicsBody;

.field private final center:Lcom/jme3/math/Vector3f;

.field private final extent:Lcom/jme3/math/Vector3f;

.field private final geom:Lcom/jme3/scene/Geometry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/debug/GravityVectorDebugControl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/debug/GravityVectorDebugControl;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/debug/BulletDebugAppState;Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/jme3/bullet/debug/AbstractPhysicsDebugControl;-><init>(Lcom/jme3/bullet/debug/BulletDebugAppState;)V

    check-cast p2, Lcom/jme3/bullet/objects/PhysicsBody;

    iput-object p2, p0, Lcom/jme3/bullet/debug/GravityVectorDebugControl;->body:Lcom/jme3/bullet/objects/PhysicsBody;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/jme3/bullet/objects/PhysicsBody;->getGravity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    iput-object v1, p0, Lcom/jme3/bullet/debug/GravityVectorDebugControl;->extent:Lcom/jme3/math/Vector3f;

    new-instance v2, Lcom/jme3/scene/debug/Arrow;

    invoke-direct {v2, v1}, Lcom/jme3/scene/debug/Arrow;-><init>(Lcom/jme3/math/Vector3f;)V

    new-instance v1, Lcom/jme3/scene/Geometry;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "gravity of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    iput-object v1, p0, Lcom/jme3/bullet/debug/GravityVectorDebugControl;->geom:Lcom/jme3/scene/Geometry;

    invoke-virtual {p2, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    iput-object p2, p0, Lcom/jme3/bullet/debug/GravityVectorDebugControl;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, p2}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p1}, Lcom/jme3/bullet/debug/BulletDebugAppState;->getGravityVectorMaterial()Lcom/jme3/material/Material;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    sget-object p1, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Off:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    invoke-virtual {v1, p1}, Lcom/jme3/scene/Spatial;->setShadowMode(Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;)V

    return-void
.end method


# virtual methods
.method public controlUpdate(F)V
    .locals 2

    iget-object p1, p0, Lcom/jme3/bullet/debug/GravityVectorDebugControl;->body:Lcom/jme3/bullet/objects/PhysicsBody;

    iget-object v0, p0, Lcom/jme3/bullet/debug/GravityVectorDebugControl;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/bullet/debug/GravityVectorDebugControl;->geom:Lcom/jme3/scene/Geometry;

    iget-object v0, p0, Lcom/jme3/bullet/debug/GravityVectorDebugControl;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    iget-object p1, p0, Lcom/jme3/bullet/debug/GravityVectorDebugControl;->geom:Lcom/jme3/scene/Geometry;

    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object p1

    check-cast p1, Lcom/jme3/scene/debug/Arrow;

    iget-object v0, p0, Lcom/jme3/bullet/debug/GravityVectorDebugControl;->body:Lcom/jme3/bullet/objects/PhysicsBody;

    iget-object v1, p0, Lcom/jme3/bullet/debug/GravityVectorDebugControl;->extent:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/objects/PhysicsBody;->getGravity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/bullet/debug/GravityVectorDebugControl;->extent:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/debug/Arrow;->setArrowExtent(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setSpatial(Lcom/jme3/scene/Spatial;)V
    .locals 2

    instance-of v0, p1, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/jme3/scene/Node;

    iget-object v1, p0, Lcom/jme3/bullet/debug/GravityVectorDebugControl;->geom:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/jme3/scene/Node;

    iget-object v1, p0, Lcom/jme3/bullet/debug/GravityVectorDebugControl;->geom:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->detachChild(Lcom/jme3/scene/Spatial;)I

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/jme3/scene/control/AbstractControl;->setSpatial(Lcom/jme3/scene/Spatial;)V

    return-void
.end method
