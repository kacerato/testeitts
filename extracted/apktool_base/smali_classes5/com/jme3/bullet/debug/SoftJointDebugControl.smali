.class Lcom/jme3/bullet/debug/SoftJointDebugControl;
.super Lcom/jme3/bullet/debug/AbstractPhysicsDebugControl;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final endsGeometry:Lcom/jme3/scene/Geometry;

.field private final joint:Lcom/jme3/bullet/joints/SoftPhysicsJoint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/debug/SoftJointDebugControl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/debug/SoftJointDebugControl;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/debug/BulletDebugAppState;Lcom/jme3/bullet/joints/SoftPhysicsJoint;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jme3/bullet/debug/AbstractPhysicsDebugControl;-><init>(Lcom/jme3/bullet/debug/BulletDebugAppState;)V

    iput-object p2, p0, Lcom/jme3/bullet/debug/SoftJointDebugControl;->joint:Lcom/jme3/bullet/joints/SoftPhysicsJoint;

    invoke-direct {p0}, Lcom/jme3/bullet/debug/SoftJointDebugControl;->createEndsGeometry()Lcom/jme3/scene/Geometry;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/debug/SoftJointDebugControl;->endsGeometry:Lcom/jme3/scene/Geometry;

    return-void
.end method

.method private createEndsGeometry()Lcom/jme3/scene/Geometry;
    .locals 4

    new-instance v0, Lcom/jme3/scene/Mesh;

    invoke-direct {v0}, Lcom/jme3/scene/Mesh;-><init>()V

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3, v1}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/FloatBuffer;)V

    sget-object v1, Lcom/jme3/scene/Mesh$Mode;->Lines:Lcom/jme3/scene/Mesh$Mode;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Mesh;->setMode(Lcom/jme3/scene/Mesh$Mode;)V

    invoke-virtual {v0}, Lcom/jme3/scene/Mesh;->setStreamed()V

    new-instance v1, Lcom/jme3/scene/Geometry;

    iget-object v2, p0, Lcom/jme3/bullet/debug/SoftJointDebugControl;->joint:Lcom/jme3/bullet/joints/SoftPhysicsJoint;

    invoke-virtual {v2}, Lcom/jme3/bullet/joints/PhysicsJoint;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    sget-object v0, Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;->Off:Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;

    invoke-virtual {v1, v0}, Lcom/jme3/scene/Spatial;->setShadowMode(Lcom/jme3/renderer/queue/RenderQueue$ShadowMode;)V

    iget-object v0, p0, Lcom/jme3/bullet/debug/AbstractPhysicsDebugControl;->debugAppState:Lcom/jme3/bullet/debug/BulletDebugAppState;

    check-cast v0, Lcom/jme3/bullet/debug/SoftDebugAppState;

    invoke-virtual {v0}, Lcom/jme3/bullet/debug/SoftDebugAppState;->getAnchorMaterial()Lcom/jme3/material/Material;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    return-object v1
.end method


# virtual methods
.method public controlUpdate(F)V
    .locals 5

    iget-object p1, p0, Lcom/jme3/bullet/debug/SoftJointDebugControl;->endsGeometry:Lcom/jme3/scene/Geometry;

    invoke-virtual {p1}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object p1

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Mesh;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/bullet/debug/SoftJointDebugControl;->joint:Lcom/jme3/bullet/joints/SoftPhysicsJoint;

    invoke-virtual {v2}, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->getSoftBodyA()Lcom/jme3/bullet/objects/PhysicsSoftBody;

    move-result-object v2

    iget-object v3, p0, Lcom/jme3/bullet/debug/SoftJointDebugControl;->joint:Lcom/jme3/bullet/joints/SoftPhysicsJoint;

    invoke-virtual {v3}, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->clusterIndexA()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->clusterCenter(ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    iget v3, v2, Lcom/jme3/math/Vector3f;->x:F

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/4 v3, 0x1

    iget v4, v2, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v1, v3, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/4 v3, 0x2

    iget v2, v2, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v1, v3, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2}, Lcom/jme3/math/Vector3f;-><init>()V

    iget-object v3, p0, Lcom/jme3/bullet/debug/SoftJointDebugControl;->joint:Lcom/jme3/bullet/joints/SoftPhysicsJoint;

    invoke-virtual {v3}, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->isSoftSoft()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/jme3/bullet/debug/SoftJointDebugControl;->joint:Lcom/jme3/bullet/joints/SoftPhysicsJoint;

    invoke-virtual {v3}, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->getSoftBodyB()Lcom/jme3/bullet/objects/PhysicsSoftBody;

    move-result-object v3

    iget-object v4, p0, Lcom/jme3/bullet/debug/SoftJointDebugControl;->joint:Lcom/jme3/bullet/joints/SoftPhysicsJoint;

    invoke-virtual {v4}, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->clusterIndexB()I

    move-result v4

    invoke-virtual {v3, v4, v2}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->clusterCenter(ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/jme3/bullet/debug/SoftJointDebugControl;->joint:Lcom/jme3/bullet/joints/SoftPhysicsJoint;

    sget-object v4, Lcom/jme3/bullet/joints/JointEnd;->B:Lcom/jme3/bullet/joints/JointEnd;

    invoke-virtual {v3, v4}, Lcom/jme3/bullet/joints/PhysicsJoint;->getBody(Lcom/jme3/bullet/joints/JointEnd;)Lcom/jme3/bullet/objects/PhysicsBody;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :goto_0
    const/4 v3, 0x3

    iget v4, v2, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v1, v3, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/4 v3, 0x4

    iget v4, v2, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {v1, v3, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/4 v3, 0x5

    iget v2, v2, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {v1, v3, v2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/util/NativeObject;->setUpdateNeeded()V

    invoke-virtual {p1}, Lcom/jme3/scene/Mesh;->updateBound()V

    return-void
.end method

.method public setSpatial(Lcom/jme3/scene/Spatial;)V
    .locals 2

    instance-of v0, p1, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/jme3/scene/Node;

    iget-object v1, p0, Lcom/jme3/bullet/debug/SoftJointDebugControl;->endsGeometry:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/jme3/scene/Node;

    iget-object v1, p0, Lcom/jme3/bullet/debug/SoftJointDebugControl;->endsGeometry:Lcom/jme3/scene/Geometry;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->detachChild(Lcom/jme3/scene/Spatial;)I

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/jme3/scene/control/AbstractControl;->setSpatial(Lcom/jme3/scene/Spatial;)V

    return-void
.end method
