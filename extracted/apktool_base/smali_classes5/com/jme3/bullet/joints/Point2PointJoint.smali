.class public Lcom/jme3/bullet/joints/Point2PointJoint;
.super Lcom/jme3/bullet/joints/Constraint;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger2:Ljava/util/logging/Logger;

.field private static final tagDamping:Ljava/lang/String; = "damping"

.field private static final tagImpulseClamp:Ljava/lang/String; = "impulseClamp"

.field private static final tagTau:Ljava/lang/String; = "tau"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/joints/Point2PointJoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/joints/Point2PointJoint;->logger2:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/joints/Constraint;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jme3/bullet/joints/Constraint;-><init>(Lcom/jme3/bullet/objects/PhysicsBody;Lcom/jme3/bullet/objects/PhysicsBody;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    .line 7
    invoke-direct {p0}, Lcom/jme3/bullet/joints/Point2PointJoint;->createJoint()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/math/Vector3f;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/jme3/bullet/joints/JointEnd;->A:Lcom/jme3/bullet/joints/JointEnd;

    invoke-direct {p0, p1, v0, p2}, Lcom/jme3/bullet/joints/Constraint;-><init>(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/bullet/joints/JointEnd;Lcom/jme3/math/Vector3f;)V

    .line 3
    invoke-direct {p0}, Lcom/jme3/bullet/joints/Point2PointJoint;->createJoint()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 1

    .line 4
    sget-object v0, Lcom/jme3/bullet/joints/JointEnd;->A:Lcom/jme3/bullet/joints/JointEnd;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/jme3/bullet/joints/Constraint;-><init>(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/bullet/joints/JointEnd;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    .line 5
    invoke-direct {p0}, Lcom/jme3/bullet/joints/Point2PointJoint;->createJoint()V

    return-void
.end method

.method private static native createJoint(JJLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)J
.end method

.method private createJoint()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/joints/Constraint;->getBodyA()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v1

    .line 3
    invoke-virtual {p0}, Lcom/jme3/bullet/joints/Constraint;->getBodyB()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v3

    if-nez v3, :cond_1

    .line 4
    iget-object v3, p0, Lcom/jme3/bullet/joints/Constraint;->pivotB:Lcom/jme3/math/Vector3f;

    if-nez v3, :cond_0

    .line 5
    iget-object v0, p0, Lcom/jme3/bullet/joints/Constraint;->pivotA:Lcom/jme3/math/Vector3f;

    invoke-static {v1, v2, v0}, Lcom/jme3/bullet/joints/Point2PointJoint;->createJoint1(JLcom/jme3/math/Vector3f;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 6
    invoke-virtual {v0, v3}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v4

    .line 7
    new-instance v5, Lcom/jme3/math/Transform;

    invoke-direct {v5}, Lcom/jme3/math/Transform;-><init>()V

    .line 8
    invoke-virtual {v5, v4}, Lcom/jme3/math/Transform;->setTranslation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Transform;

    .line 9
    invoke-virtual {v5}, Lcom/jme3/math/Transform;->getRotation()Lcom/jme3/math/Quaternion;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsRotation(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    .line 10
    iget-object v6, p0, Lcom/jme3/bullet/joints/Constraint;->pivotA:Lcom/jme3/math/Vector3f;

    .line 11
    invoke-static {v5, v6, v3}, Ljf/f;->S(Lcom/jme3/math/Transform;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    .line 12
    iget-object v5, p0, Lcom/jme3/bullet/joints/Constraint;->pivotB:Lcom/jme3/math/Vector3f;

    invoke-virtual {v5, v3}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    .line 13
    invoke-virtual {v4, v3}, Lcom/jme3/math/Vector3f;->add(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    .line 14
    invoke-virtual {v0, v3}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsLocation(Lcom/jme3/math/Vector3f;)V

    .line 15
    iget-object v3, p0, Lcom/jme3/bullet/joints/Constraint;->pivotA:Lcom/jme3/math/Vector3f;

    invoke-static {v1, v2, v3}, Lcom/jme3/bullet/joints/Point2PointJoint;->createJoint1(JLcom/jme3/math/Vector3f;)J

    move-result-wide v1

    .line 16
    invoke-virtual {v0, v4}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->setPhysicsLocation(Lcom/jme3/math/Vector3f;)V

    move-wide v0, v1

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {v3}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v3

    .line 18
    iget-object v5, p0, Lcom/jme3/bullet/joints/Constraint;->pivotA:Lcom/jme3/math/Vector3f;

    iget-object v6, p0, Lcom/jme3/bullet/joints/Constraint;->pivotB:Lcom/jme3/math/Vector3f;

    invoke-static/range {v1 .. v6}, Lcom/jme3/bullet/joints/Point2PointJoint;->createJoint(JJLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)J

    move-result-wide v0

    .line 19
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/jme3/bullet/joints/PhysicsJoint;->setNativeId(J)V

    return-void
.end method

.method private static native createJoint1(JLcom/jme3/math/Vector3f;)J
.end method

.method private static native getDamping(J)F
.end method

.method private static native getImpulseClamp(J)F
.end method

.method private static native getPivotInA(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getPivotInB(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getTau(J)F
.end method

.method private static native setDamping(JF)V
.end method

.method private static native setImpulseClamp(JF)V
.end method

.method private static native setPivotInA(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native setPivotInB(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native setTau(JF)V
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 1

    move-object v0, p2

    check-cast v0, Lcom/jme3/bullet/joints/Point2PointJoint;

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/joints/Constraint;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->hasAssignedNativeObject()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/jme3/bullet/joints/Point2PointJoint;->createJoint()V

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/joints/Constraint;->copyConstraintProperties(Lcom/jme3/bullet/joints/Constraint;)V

    invoke-virtual {v0}, Lcom/jme3/bullet/joints/Point2PointJoint;->getDamping()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/Point2PointJoint;->setDamping(F)V

    invoke-virtual {v0}, Lcom/jme3/bullet/joints/Point2PointJoint;->getImpulseClamp()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/Point2PointJoint;->setImpulseClamp(F)V

    invoke-virtual {v0}, Lcom/jme3/bullet/joints/Point2PointJoint;->getTau()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/Point2PointJoint;->setTau(F)V

    return-void
.end method

.method public getDamping()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/Point2PointJoint;->getDamping(J)F

    move-result v0

    return v0
.end method

.method public getImpulseClamp()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/Point2PointJoint;->getImpulseClamp(J)F

    move-result v0

    return v0
.end method

.method public getTau()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/Point2PointJoint;->getTau(J)F

    move-result v0

    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/joints/Constraint;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    invoke-direct {p0}, Lcom/jme3/bullet/joints/Point2PointJoint;->createJoint()V

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/Constraint;->readConstraintProperties(Lcom/jme3/export/InputCapsule;)V

    const-string v0, "damping"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/joints/Point2PointJoint;->setDamping(F)V

    const-string v0, "tau"

    const v1, 0x3e99999a    # 0.3f

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/joints/Point2PointJoint;->setTau(F)V

    const-string v0, "impulseClamp"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/Point2PointJoint;->setImpulseClamp(F)V

    return-void
.end method

.method public setDamping(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/Point2PointJoint;->setDamping(JF)V

    return-void
.end method

.method public setImpulseClamp(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/Point2PointJoint;->setImpulseClamp(JF)V

    return-void
.end method

.method public setPivotInA(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 1
    const-string v0, "location"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/Point2PointJoint;->setPivotInA(JLcom/jme3/math/Vector3f;)V

    .line 4
    invoke-super {p0, p1}, Lcom/jme3/bullet/joints/Constraint;->setPivotInA(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setPivotInB(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 1
    const-string v0, "location"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 2
    iget-object v0, p0, Lcom/jme3/bullet/joints/Constraint;->pivotB:Lcom/jme3/math/Vector3f;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 4
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/Point2PointJoint;->setPivotInB(JLcom/jme3/math/Vector3f;)V

    .line 5
    invoke-super {p0, p1}, Lcom/jme3/bullet/joints/Constraint;->setPivotInB(Lcom/jme3/math/Vector3f;)V

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The Point2PointJoint doesn\'t have a B end."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTau(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/Point2PointJoint;->setTau(JF)V

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/joints/Constraint;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/Point2PointJoint;->getDamping()F

    move-result v0

    const-string v1, "damping"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/Point2PointJoint;->getTau()F

    move-result v0

    const-string v1, "tau"

    const v2, 0x3e99999a    # 0.3f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/joints/Point2PointJoint;->getImpulseClamp()F

    move-result v0

    const-string v1, "impulseClamp"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    return-void
.end method
