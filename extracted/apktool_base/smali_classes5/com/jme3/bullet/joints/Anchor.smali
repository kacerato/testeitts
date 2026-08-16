.class public Lcom/jme3/bullet/joints/Anchor;
.super Lcom/jme3/bullet/joints/PhysicsJoint;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger2:Ljava/util/logging/Logger;

.field private static final tagAllowCollisions:Ljava/lang/String; = "allowCollisions"

.field private static final tagInfluence:Ljava/lang/String; = "influence"

.field private static final tagNodeIndexA:Ljava/lang/String; = "nodeIndexA"

.field private static final tagPivotInB:Ljava/lang/String; = "pivotInB"


# instance fields
.field private allowCollisions:Z

.field private influence:F

.field private nodeIndexA:I

.field private pivotInB:Lcom/jme3/math/Vector3f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/joints/Anchor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/joints/Anchor;->logger2:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/joints/PhysicsJoint;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/jme3/bullet/joints/Anchor;->influence:F

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/objects/PhysicsSoftBody;ILcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/math/Vector3f;Z)V
    .locals 3

    .line 3
    invoke-direct {p0}, Lcom/jme3/bullet/joints/PhysicsJoint;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p0, Lcom/jme3/bullet/joints/Anchor;->influence:F

    .line 5
    invoke-virtual {p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countNodes()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 6
    const-string v1, "node index"

    const/4 v2, 0x0

    invoke-static {p2, v1, v2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 7
    const-string v0, "rigid body B"

    invoke-static {p3, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 8
    const-string v0, "pivot location"

    invoke-static {p4, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 9
    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/PhysicsJoint;->setBodyA(Lcom/jme3/bullet/objects/PhysicsBody;)V

    .line 10
    invoke-virtual {p1, p0}, Lcom/jme3/bullet/objects/PhysicsBody;->addJoint(Lcom/jme3/bullet/joints/PhysicsJoint;)V

    .line 11
    iput p2, p0, Lcom/jme3/bullet/joints/Anchor;->nodeIndexA:I

    .line 12
    invoke-virtual {p0, p3}, Lcom/jme3/bullet/joints/PhysicsJoint;->setBodyB(Lcom/jme3/bullet/objects/PhysicsBody;)V

    .line 13
    invoke-virtual {p3, p0}, Lcom/jme3/bullet/objects/PhysicsBody;->addJoint(Lcom/jme3/bullet/joints/PhysicsJoint;)V

    .line 14
    iput-boolean p5, p0, Lcom/jme3/bullet/joints/Anchor;->allowCollisions:Z

    .line 15
    invoke-virtual {p4}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/joints/Anchor;->pivotInB:Lcom/jme3/math/Vector3f;

    .line 16
    invoke-direct {p0}, Lcom/jme3/bullet/joints/Anchor;->createAnchor()V

    return-void
.end method

.method private static native createAnchor(JIJLcom/jme3/math/Vector3f;ZF)J
.end method

.method private createAnchor()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/joints/Anchor;->getSoftBody()Lcom/jme3/bullet/objects/PhysicsSoftBody;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v1

    .line 3
    invoke-virtual {p0}, Lcom/jme3/bullet/joints/Anchor;->getRigidBody()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v4

    .line 5
    iget v3, p0, Lcom/jme3/bullet/joints/Anchor;->nodeIndexA:I

    iget-object v6, p0, Lcom/jme3/bullet/joints/Anchor;->pivotInB:Lcom/jme3/math/Vector3f;

    iget-boolean v7, p0, Lcom/jme3/bullet/joints/Anchor;->allowCollisions:Z

    iget v8, p0, Lcom/jme3/bullet/joints/Anchor;->influence:F

    invoke-static/range {v1 .. v8}, Lcom/jme3/bullet/joints/Anchor;->createAnchor(JIJLcom/jme3/math/Vector3f;ZF)J

    move-result-wide v0

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/jme3/bullet/NativePhysicsObject;->setNativeIdNotTracked(J)V

    return-void
.end method

.method private static native setInfluence(JF)V
.end method

.method private static native setPivotInB(JLcom/jme3/math/Vector3f;)V
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 1

    move-object v0, p2

    check-cast v0, Lcom/jme3/bullet/joints/Anchor;

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/joints/PhysicsJoint;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->hasAssignedNativeObject()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/jme3/bullet/joints/Anchor;->pivotInB:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    iput-object p1, p0, Lcom/jme3/bullet/joints/Anchor;->pivotInB:Lcom/jme3/math/Vector3f;

    invoke-direct {p0}, Lcom/jme3/bullet/joints/Anchor;->createAnchor()V

    return-void
.end method

.method public copyPivot(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/jme3/bullet/joints/Anchor;->pivotInB:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/joints/Anchor;->pivotInB:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getRigidBody()Lcom/jme3/bullet/objects/PhysicsRigidBody;
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/PhysicsJoint;->getBodyB()Lcom/jme3/bullet/objects/PhysicsBody;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/objects/PhysicsRigidBody;

    return-object v0
.end method

.method public getSoftBody()Lcom/jme3/bullet/objects/PhysicsSoftBody;
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/PhysicsJoint;->getBodyA()Lcom/jme3/bullet/objects/PhysicsBody;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/objects/PhysicsSoftBody;

    return-object v0
.end method

.method public influence()F
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/joints/Anchor;->influence:F

    return v0
.end method

.method public isAllowCollision()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/bullet/joints/Anchor;->allowCollisions:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public nodeIndex()I
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/joints/Anchor;->nodeIndexA:I

    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/joints/PhysicsJoint;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "allowCollisions"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/bullet/joints/Anchor;->allowCollisions:Z

    const-string v0, "influence"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/joints/Anchor;->influence:F

    const-string v0, "nodeIndexA"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/joints/Anchor;->nodeIndexA:I

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    const-string v1, "pivotInB"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    iput-object p1, p0, Lcom/jme3/bullet/joints/Anchor;->pivotInB:Lcom/jme3/math/Vector3f;

    invoke-direct {p0}, Lcom/jme3/bullet/joints/Anchor;->createAnchor()V

    return-void
.end method

.method public setInfluence(F)V
    .locals 2

    .line 1
    const-string v0, "amount"

    invoke-static {p1, v0}, Lif/E;->f(FLjava/lang/String;)Z

    .line 2
    iput p1, p0, Lcom/jme3/bullet/joints/Anchor;->influence:F

    .line 3
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 4
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/Anchor;->setInfluence(JF)V

    return-void
.end method

.method public setPivotInB(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 1
    const-string v0, "location"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 2
    iget-object v0, p0, Lcom/jme3/bullet/joints/Anchor;->pivotInB:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 3
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 4
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/Anchor;->setPivotInB(JLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/joints/PhysicsJoint;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-boolean v0, p0, Lcom/jme3/bullet/joints/Anchor;->allowCollisions:Z

    const-string v1, "allowCollisions"

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget v0, p0, Lcom/jme3/bullet/joints/Anchor;->influence:F

    const-string v1, "influence"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/bullet/joints/Anchor;->nodeIndexA:I

    const-string v1, "nodeIndexA"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/jme3/bullet/joints/Anchor;->pivotInB:Lcom/jme3/math/Vector3f;

    const-string v1, "pivotInB"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
