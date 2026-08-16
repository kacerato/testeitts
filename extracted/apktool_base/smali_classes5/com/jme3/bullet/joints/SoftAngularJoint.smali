.class public Lcom/jme3/bullet/joints/SoftAngularJoint;
.super Lcom/jme3/bullet/joints/SoftPhysicsJoint;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger3:Ljava/util/logging/Logger;

.field private static final tagAxis:Ljava/lang/String; = "axis"


# instance fields
.field private axis:Lcom/jme3/math/Vector3f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/joints/SoftAngularJoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/joints/SoftAngularJoint;->logger3:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/joints/SoftPhysicsJoint;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/bullet/objects/PhysicsSoftBody;ILcom/jme3/bullet/objects/PhysicsRigidBody;)V
    .locals 0

    .line 2
    invoke-direct {p0, p2, p3, p4}, Lcom/jme3/bullet/joints/SoftPhysicsJoint;-><init>(Lcom/jme3/bullet/objects/PhysicsSoftBody;ILcom/jme3/bullet/objects/PhysicsRigidBody;)V

    .line 3
    const-string p2, "axis"

    invoke-static {p1, p2}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 4
    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/joints/SoftAngularJoint;->axis:Lcom/jme3/math/Vector3f;

    .line 5
    invoke-direct {p0}, Lcom/jme3/bullet/joints/SoftAngularJoint;->createJoint()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;Lcom/jme3/bullet/objects/PhysicsSoftBody;ILcom/jme3/bullet/objects/PhysicsSoftBody;I)V
    .locals 0

    .line 6
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/jme3/bullet/joints/SoftPhysicsJoint;-><init>(Lcom/jme3/bullet/objects/PhysicsSoftBody;ILcom/jme3/bullet/objects/PhysicsSoftBody;I)V

    .line 7
    const-string p2, "axis"

    invoke-static {p1, p2}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 8
    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/joints/SoftAngularJoint;->axis:Lcom/jme3/math/Vector3f;

    .line 9
    invoke-direct {p0}, Lcom/jme3/bullet/joints/SoftAngularJoint;->createJoint()V

    return-void
.end method

.method private createJoint()V
    .locals 11

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->getSoftBodyA()Lcom/jme3/bullet/objects/PhysicsSoftBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->clusterIndexA()I

    move-result v3

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/PhysicsJoint;->getBodyB()Lcom/jme3/bullet/objects/PhysicsBody;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v4

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->clusterIndexB()I

    move-result v6

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->getERP()F

    move-result v7

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->getCFM()F

    move-result v8

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->getSplit()F

    move-result v9

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->isSoftRigid()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/bullet/joints/SoftAngularJoint;->axis:Lcom/jme3/math/Vector3f;

    move v6, v7

    move v7, v8

    move v8, v9

    move-object v9, v0

    invoke-static/range {v1 .. v9}, Lcom/jme3/bullet/joints/SoftAngularJoint;->createJointSoftRigid(JIJFFFLcom/jme3/math/Vector3f;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->getSoftBodyB()Lcom/jme3/bullet/objects/PhysicsSoftBody;

    iget-object v10, p0, Lcom/jme3/bullet/joints/SoftAngularJoint;->axis:Lcom/jme3/math/Vector3f;

    invoke-static/range {v1 .. v10}, Lcom/jme3/bullet/joints/SoftAngularJoint;->createJointSoftSoft(JIJIFFFLcom/jme3/math/Vector3f;)J

    move-result-wide v0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/jme3/bullet/NativePhysicsObject;->setNativeIdNotTracked(J)V

    return-void
.end method

.method private static native createJointSoftRigid(JIJFFFLcom/jme3/math/Vector3f;)J
.end method

.method private static native createJointSoftSoft(JIJIFFFLcom/jme3/math/Vector3f;)J
.end method

.method private static native setAxis(JLcom/jme3/math/Vector3f;)V
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 1

    move-object v0, p2

    check-cast v0, Lcom/jme3/bullet/joints/SoftAngularJoint;

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/joints/PhysicsJoint;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->hasAssignedNativeObject()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/jme3/bullet/joints/SoftAngularJoint;->axis:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    iput-object p1, p0, Lcom/jme3/bullet/joints/SoftAngularJoint;->axis:Lcom/jme3/math/Vector3f;

    invoke-direct {p0}, Lcom/jme3/bullet/joints/SoftAngularJoint;->createJoint()V

    invoke-virtual {v0}, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->getCFM()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->setCFM(F)V

    invoke-virtual {v0}, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->getERP()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->setERP(F)V

    invoke-virtual {v0}, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->getSplit()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->setSplit(F)V

    return-void
.end method

.method public copyAxis(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/jme3/bullet/joints/SoftAngularJoint;->axis:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/joints/SoftAngularJoint;->axis:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    const-string v1, "axis"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    iput-object p1, p0, Lcom/jme3/bullet/joints/SoftAngularJoint;->axis:Lcom/jme3/math/Vector3f;

    invoke-direct {p0}, Lcom/jme3/bullet/joints/SoftAngularJoint;->createJoint()V

    return-void
.end method

.method public setAxis(Lcom/jme3/math/Vector3f;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/jme3/bullet/joints/SoftAngularJoint;->axis:Lcom/jme3/math/Vector3f;

    invoke-virtual {v2, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/SoftAngularJoint;->setAxis(JLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/bullet/joints/SoftAngularJoint;->axis:Lcom/jme3/math/Vector3f;

    const-string v1, "axis"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
