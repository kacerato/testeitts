.class Lcom/jme3/bullet/debug/SweptSphereDebugControl;
.super Lcom/jme3/bullet/debug/AbstractPhysicsDebugControl;
.source "SourceFile"


# static fields
.field public static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final center:Lcom/jme3/math/Vector3f;

.field private final geom:Lcom/jme3/scene/Geometry;

.field private final pco:Lcom/jme3/bullet/collision/PhysicsCollisionObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/debug/SweptSphereDebugControl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/debug/SweptSphereDebugControl;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/debug/BulletDebugAppState;Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/jme3/bullet/debug/AbstractPhysicsDebugControl;-><init>(Lcom/jme3/bullet/debug/BulletDebugAppState;)V

    iput-object p2, p0, Lcom/jme3/bullet/debug/SweptSphereDebugControl;->pco:Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/jme3/bullet/debug/SweptSphereDebugControl;->updateMesh(Lcom/jme3/scene/Mesh;)Lcom/jme3/scene/Mesh;

    move-result-object v1

    new-instance v2, Lcom/jme3/scene/Geometry;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "swept sphere of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    iput-object v2, p0, Lcom/jme3/bullet/debug/SweptSphereDebugControl;->geom:Lcom/jme3/scene/Geometry;

    invoke-virtual {p2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCcdSweptSphereRadius()F

    move-result v1

    invoke-virtual {v2, v1}, Lcom/jme3/scene/Spatial;->setLocalScale(F)V

    invoke-virtual {p2, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    iput-object p2, p0, Lcom/jme3/bullet/debug/SweptSphereDebugControl;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, p2}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p1}, Lcom/jme3/bullet/debug/BulletDebugAppState;->getSweptSphereMaterial()Lcom/jme3/material/Material;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    sget-object p1, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Off:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    invoke-virtual {v2, p1}, Lcom/jme3/scene/Spatial;->setShadowMode(Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;)V

    return-void
.end method

.method private updateMesh(Lcom/jme3/scene/Mesh;)Lcom/jme3/scene/Mesh;
    .locals 2

    iget-object v0, p0, Lcom/jme3/bullet/debug/AbstractPhysicsDebugControl;->debugAppState:Lcom/jme3/bullet/debug/BulletDebugAppState;

    invoke-virtual {v0}, Lcom/jme3/bullet/debug/BulletDebugAppState;->getConfiguration()Lcom/jme3/bullet/debug/DebugConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/bullet/debug/DebugConfiguration;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Ljme3utilities/debug/i;->Icosphere:Ljme3utilities/debug/i;

    goto :goto_0

    :cond_0
    sget-object v0, Ljme3utilities/debug/i;->LoopMesh:Ljme3utilities/debug/i;

    :goto_0
    invoke-virtual {v0, p1}, Ljme3utilities/debug/i;->b(Lcom/jme3/scene/Mesh;)Z

    move-result v1

    if-nez v1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Ljme3utilities/debug/i;->c(FZZ)Lcom/jme3/scene/Mesh;

    move-result-object p1

    :cond_1
    return-object p1
.end method


# virtual methods
.method public controlUpdate(F)V
    .locals 3

    iget-object p1, p0, Lcom/jme3/bullet/debug/SweptSphereDebugControl;->geom:Lcom/jme3/scene/Geometry;

    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jme3/bullet/debug/SweptSphereDebugControl;->updateMesh(Lcom/jme3/scene/Mesh;)Lcom/jme3/scene/Mesh;

    move-result-object v0

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/jme3/bullet/debug/SweptSphereDebugControl;->geom:Lcom/jme3/scene/Geometry;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Geometry;->setMesh(Lcom/jme3/scene/Mesh;)V

    :cond_0
    iget-object p1, p0, Lcom/jme3/bullet/debug/SweptSphereDebugControl;->pco:Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCcdSweptSphereRadius()F

    move-result p1

    iget-object v0, p0, Lcom/jme3/bullet/debug/SweptSphereDebugControl;->geom:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0, p1}, Lcom/jme3/scene/Spatial;->setLocalScale(F)V

    iget-object p1, p0, Lcom/jme3/bullet/debug/SweptSphereDebugControl;->pco:Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    iget-object v0, p0, Lcom/jme3/bullet/debug/SweptSphereDebugControl;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object p1, p0, Lcom/jme3/bullet/debug/SweptSphereDebugControl;->geom:Lcom/jme3/scene/Geometry;

    iget-object v0, p0, Lcom/jme3/bullet/debug/SweptSphereDebugControl;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    iget-object p1, p0, Lcom/jme3/bullet/debug/AbstractPhysicsDebugControl;->debugAppState:Lcom/jme3/bullet/debug/BulletDebugAppState;

    invoke-virtual {p1}, Lcom/jme3/bullet/debug/BulletDebugAppState;->getConfiguration()Lcom/jme3/bullet/debug/DebugConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/bullet/debug/DebugConfiguration;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getLocation()Lcom/jme3/math/Vector3f;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/bullet/debug/SweptSphereDebugControl;->center:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-static {p1, v0, v1}, Ljf/h;->u(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    new-instance v2, Lcom/jme3/math/Quaternion;

    invoke-direct {v2}, Lcom/jme3/math/Quaternion;-><init>()V

    invoke-virtual {v2, v1, p1, v0}, Lcom/jme3/math/Quaternion;->fromAxes(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Quaternion;

    iget-object p1, p0, Lcom/jme3/bullet/debug/SweptSphereDebugControl;->geom:Lcom/jme3/scene/Geometry;

    invoke-virtual {p1, v2}, Lcom/jme3/scene/Spatial;->setLocalRotation(Lcom/jme3/math/Quaternion;)V

    :cond_1
    return-void
.end method

.method public setSpatial(Lcom/jme3/scene/Spatial;)V
    .locals 2

    instance-of v0, p1, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/jme3/scene/Node;

    iget-object v1, p0, Lcom/jme3/bullet/debug/SweptSphereDebugControl;->geom:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/jme3/scene/Node;

    iget-object v1, p0, Lcom/jme3/bullet/debug/SweptSphereDebugControl;->geom:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->detachChild(Lcom/jme3/scene/Spatial;)I

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/jme3/scene/control/AbstractControl;->setSpatial(Lcom/jme3/scene/Spatial;)V

    return-void
.end method
