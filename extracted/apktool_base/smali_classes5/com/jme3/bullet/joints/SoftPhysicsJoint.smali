.class public abstract Lcom/jme3/bullet/joints/SoftPhysicsJoint;
.super Lcom/jme3/bullet/joints/PhysicsJoint;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger2:Ljava/util/logging/Logger;

.field private static final tagClusterIndexA:Ljava/lang/String; = "clusterIndexA"

.field private static final tagClusterIndexB:Ljava/lang/String; = "clusterIndexB"

.field private static final tagConstraintForceMixing:Ljava/lang/String; = "constraintForceMixing"

.field private static final tagErrorReductionParameter:Ljava/lang/String; = "errorReductionParameter"

.field private static final tagSplit:Ljava/lang/String; = "split"


# instance fields
.field private added:Z

.field private cfm:F

.field private clusterIndexA:I

.field private clusterIndexB:I

.field private erp:F

.field private split:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/joints/SoftPhysicsJoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->logger2:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/joints/PhysicsJoint;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->added:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    iput v0, p0, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->cfm:F

    .line 4
    iput v0, p0, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->erp:F

    .line 5
    iput v0, p0, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->split:F

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->clusterIndexA:I

    .line 7
    iput v0, p0, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->clusterIndexB:I

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/objects/PhysicsSoftBody;ILcom/jme3/bullet/objects/PhysicsRigidBody;)V
    .locals 3

    .line 8
    invoke-direct {p0}, Lcom/jme3/bullet/joints/PhysicsJoint;-><init>()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->added:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 10
    iput v1, p0, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->cfm:F

    .line 11
    iput v1, p0, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->erp:F

    .line 12
    iput v1, p0, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->split:F

    const/4 v1, -0x1

    .line 13
    iput v1, p0, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->clusterIndexA:I

    .line 14
    iput v1, p0, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->clusterIndexB:I

    .line 15
    invoke-virtual {p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countClusters()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 16
    const-string v2, "cluster index"

    invoke-static {p2, v2, v0, v1}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 17
    const-string v0, "rigid body B"

    invoke-static {p3, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 18
    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/PhysicsJoint;->setBodyA(Lcom/jme3/bullet/objects/PhysicsBody;)V

    .line 19
    invoke-virtual {p1, p0}, Lcom/jme3/bullet/objects/PhysicsBody;->addJoint(Lcom/jme3/bullet/joints/PhysicsJoint;)V

    .line 20
    iput p2, p0, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->clusterIndexA:I

    .line 21
    invoke-virtual {p0, p3}, Lcom/jme3/bullet/joints/PhysicsJoint;->setBodyB(Lcom/jme3/bullet/objects/PhysicsBody;)V

    .line 22
    invoke-virtual {p3, p0}, Lcom/jme3/bullet/objects/PhysicsBody;->addJoint(Lcom/jme3/bullet/joints/PhysicsJoint;)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/objects/PhysicsSoftBody;ILcom/jme3/bullet/objects/PhysicsSoftBody;I)V
    .locals 3

    .line 23
    invoke-direct {p0}, Lcom/jme3/bullet/joints/PhysicsJoint;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->added:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 25
    iput v1, p0, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->cfm:F

    .line 26
    iput v1, p0, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->erp:F

    .line 27
    iput v1, p0, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->split:F

    const/4 v1, -0x1

    .line 28
    iput v1, p0, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->clusterIndexA:I

    .line 29
    iput v1, p0, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->clusterIndexB:I

    .line 30
    invoke-virtual {p1}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countClusters()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 31
    const-string v2, "cluster index A"

    invoke-static {p2, v2, v0, v1}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 32
    invoke-virtual {p3}, Lcom/jme3/bullet/objects/PhysicsSoftBody;->countClusters()I

    move-result v1

    .line 33
    const-string v2, "cluster index B"

    add-int/lit8 v1, v1, -0x1

    invoke-static {p4, v2, v0, v1}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 34
    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/PhysicsJoint;->setBodyA(Lcom/jme3/bullet/objects/PhysicsBody;)V

    .line 35
    invoke-virtual {p1, p0}, Lcom/jme3/bullet/objects/PhysicsBody;->addJoint(Lcom/jme3/bullet/joints/PhysicsJoint;)V

    .line 36
    iput p2, p0, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->clusterIndexA:I

    .line 37
    invoke-virtual {p0, p3}, Lcom/jme3/bullet/joints/PhysicsJoint;->setBodyB(Lcom/jme3/bullet/objects/PhysicsBody;)V

    .line 38
    invoke-virtual {p3, p0}, Lcom/jme3/bullet/objects/PhysicsBody;->addJoint(Lcom/jme3/bullet/joints/PhysicsJoint;)V

    .line 39
    iput p4, p0, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->clusterIndexB:I

    return-void
.end method

.method public static native finalizeNative(J)V
.end method

.method private static native getConstraintForceMixing(J)F
.end method

.method private static native getErrorReductionParameter(J)F
.end method

.method private static native getSplit(J)F
.end method

.method private static native setConstraintForceMixing(JF)V
.end method

.method private static native setErrorReductionParameter(JF)V
.end method

.method private static native setSplit(JF)V
.end method


# virtual methods
.method public checkParameters()Z
    .locals 4

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    iget v2, p0, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->cfm:F

    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->getConstraintForceMixing(J)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, p0, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->erp:F

    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->getErrorReductionParameter(J)F

    move-result v3

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    iget v2, p0, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->split:F

    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->getSplit(J)F

    move-result v0

    cmpl-float v0, v2, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public clusterIndexA()I
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->clusterIndexA:I

    return v0
.end method

.method public clusterIndexB()I
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->clusterIndexB:I

    return v0
.end method

.method public getCFM()F
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->cfm:F

    return v0
.end method

.method public getERP()F
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->erp:F

    return v0
.end method

.method public getSoftBodyA()Lcom/jme3/bullet/objects/PhysicsSoftBody;
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/PhysicsJoint;->getBodyA()Lcom/jme3/bullet/objects/PhysicsBody;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/objects/PhysicsSoftBody;

    return-object v0
.end method

.method public getSoftBodyB()Lcom/jme3/bullet/objects/PhysicsSoftBody;
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/PhysicsJoint;->getBodyB()Lcom/jme3/bullet/objects/PhysicsBody;

    move-result-object v0

    instance-of v1, v0, Lcom/jme3/bullet/objects/PhysicsSoftBody;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/jme3/bullet/objects/PhysicsSoftBody;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSplit()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->split:F

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSoftRigid()Z
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/PhysicsJoint;->getBodyB()Lcom/jme3/bullet/objects/PhysicsBody;

    move-result-object v0

    instance-of v0, v0, Lcom/jme3/bullet/objects/PhysicsRigidBody;

    return v0
.end method

.method public isSoftSoft()Z
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/PhysicsJoint;->getBodyB()Lcom/jme3/bullet/objects/PhysicsBody;

    move-result-object v0

    instance-of v0, v0, Lcom/jme3/bullet/objects/PhysicsSoftBody;

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

    const-string v0, "constraintForceMixing"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->cfm:F

    const-string v0, "errorReductionParameter"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->erp:F

    const-string v0, "split"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->split:F

    const-string v0, "clusterIndexA"

    const/4 v1, -0x1

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->clusterIndexA:I

    const-string v0, "clusterIndexB"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->clusterIndexB:I

    return-void
.end method

.method public setCFM(F)V
    .locals 2

    const-string v0, "CFM coefficient"

    invoke-static {p1, v0}, Lif/E;->p(FLjava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->setConstraintForceMixing(JF)V

    iput p1, p0, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->cfm:F

    return-void
.end method

.method public setERP(F)V
    .locals 2

    const-string v0, "error-reduction parameter"

    invoke-static {p1, v0}, Lif/E;->f(FLjava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->setErrorReductionParameter(JF)V

    iput p1, p0, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->erp:F

    return-void
.end method

.method public setSplit(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->setSplit(JF)V

    .line 3
    iput p1, p0, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->split:F

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

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->getCFM()F

    move-result v0

    const-string v1, "constraintForceMixing"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->getERP()F

    move-result v0

    const-string v1, "errorReductionParameter"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->getSplit()F

    move-result v0

    const-string v1, "split"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->clusterIndexA()I

    move-result v0

    const-string v1, "clusterIndexA"

    const/4 v2, -0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/SoftPhysicsJoint;->clusterIndexB()I

    move-result v0

    const-string v1, "clusterIndexB"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    return-void
.end method
