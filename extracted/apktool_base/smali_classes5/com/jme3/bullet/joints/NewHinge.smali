.class public Lcom/jme3/bullet/joints/NewHinge;
.super Lcom/jme3/bullet/joints/New6Dof;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger3:Ljava/util/logging/Logger;

.field private static final tagAxis1:Ljava/lang/String; = "axis1"

.field private static final tagAxis2:Ljava/lang/String; = "axis2"


# instance fields
.field private axis1:Lcom/jme3/math/Vector3f;

.field private axis2:Lcom/jme3/math/Vector3f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/joints/NewHinge;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/joints/NewHinge;->logger3:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/joints/New6Dof;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 8

    .line 2
    invoke-static {p1, p3}, Lcom/jme3/bullet/joints/NewHinge;->pivotInBody(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    .line 3
    invoke-static {p2, p3}, Lcom/jme3/bullet/joints/NewHinge;->pivotInBody(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v4

    .line 4
    invoke-static {p1, p4, p5}, Lcom/jme3/bullet/joints/NewHinge;->rotInBody(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Matrix3f;

    move-result-object v5

    .line 5
    invoke-static {p2, p4, p5}, Lcom/jme3/bullet/joints/NewHinge;->rotInBody(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Matrix3f;

    move-result-object v6

    sget-object v7, Lcom/jme3/bullet/RotationOrder;->XYZ:Lcom/jme3/bullet/RotationOrder;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 6
    invoke-direct/range {v0 .. v7}, Lcom/jme3/bullet/joints/New6Dof;-><init>(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;Lcom/jme3/math/Matrix3f;Lcom/jme3/bullet/RotationOrder;)V

    .line 7
    invoke-virtual {p4}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/joints/NewHinge;->axis1:Lcom/jme3/math/Vector3f;

    .line 8
    invoke-virtual {p5}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/joints/NewHinge;->axis2:Lcom/jme3/math/Vector3f;

    .line 9
    invoke-super {p0}, Lcom/jme3/bullet/joints/New6Dof;->getTranslationMotor()Lcom/jme3/bullet/joints/motors/TranslationMotor;

    move-result-object p1

    .line 10
    sget-object p2, Lcom/jme3/bullet/joints/motors/MotorParam;->LowerLimit:Lcom/jme3/bullet/joints/motors/MotorParam;

    new-instance p3, Lcom/jme3/math/Vector3f;

    const/high16 p4, -0x40800000    # -1.0f

    const/4 p5, 0x0

    invoke-direct {p3, p5, p5, p4}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {p1, p2, p3}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->set(Lcom/jme3/bullet/joints/motors/MotorParam;Lcom/jme3/math/Vector3f;)V

    .line 11
    sget-object p2, Lcom/jme3/bullet/joints/motors/MotorParam;->UpperLimit:Lcom/jme3/bullet/joints/motors/MotorParam;

    new-instance p3, Lcom/jme3/math/Vector3f;

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-direct {p3, p5, p5, p4}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {p1, p2, p3}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->set(Lcom/jme3/bullet/joints/motors/MotorParam;Lcom/jme3/math/Vector3f;)V

    const p1, -0x40b6f025

    .line 12
    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/NewHinge;->setLowerLimit(F)V

    const p1, 0x3f490fdb

    .line 13
    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/NewHinge;->setUpperLimit(F)V

    const/4 p1, 0x1

    const/4 p2, 0x2

    .line 14
    invoke-super {p0, p2, p1}, Lcom/jme3/bullet/joints/New6Dof;->enableSpring(IZ)V

    .line 15
    sget-object p1, Lcom/jme3/bullet/joints/motors/MotorParam;->Damping:Lcom/jme3/bullet/joints/motors/MotorParam;

    const p3, 0x3c23d70a    # 0.01f

    invoke-super {p0, p1, p2, p3}, Lcom/jme3/bullet/joints/New6Dof;->set(Lcom/jme3/bullet/joints/motors/MotorParam;IF)V

    const p1, 0x421de9e7

    .line 16
    sget-object p3, Lcom/jme3/bullet/joints/motors/MotorParam;->Stiffness:Lcom/jme3/bullet/joints/motors/MotorParam;

    invoke-super {p0, p3, p2, p1}, Lcom/jme3/bullet/joints/New6Dof;->set(Lcom/jme3/bullet/joints/motors/MotorParam;IF)V

    .line 17
    invoke-super {p0}, Lcom/jme3/bullet/joints/New6Dof;->setEquilibriumPoint()V

    return-void
.end method

.method private static pivotInBody(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getTransform(Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;

    move-result-object p0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Lcom/jme3/math/Transform;->setScale(F)Lcom/jme3/math/Transform;

    invoke-static {p0, p1, v0}, Ljf/f;->U(Lcom/jme3/math/Transform;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p0

    return-object p0
.end method

.method private static rotInBody(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Matrix3f;
    .locals 2

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->normalize()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p2}, Lcom/jme3/math/Vector3f;->normalize()Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jme3/math/Vector3f;->cross(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    new-instance v1, Lcom/jme3/math/Matrix3f;

    invoke-direct {v1}, Lcom/jme3/math/Matrix3f;-><init>()V

    invoke-virtual {v1, p2, v0, p1}, Lcom/jme3/math/Matrix3f;->fromAxes(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsRotationMatrix(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/jme3/math/Matrix3f;->invert(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;

    invoke-virtual {p0, v1, p1}, Lcom/jme3/math/Matrix3f;->mult(Lcom/jme3/math/Matrix3f;Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 1

    move-object v0, p2

    check-cast v0, Lcom/jme3/bullet/joints/NewHinge;

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/joints/New6Dof;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->hasAssignedNativeObject()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/jme3/bullet/joints/NewHinge;->axis1:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Vector3f;

    iput-object p2, p0, Lcom/jme3/bullet/joints/NewHinge;->axis1:Lcom/jme3/math/Vector3f;

    iget-object p2, p0, Lcom/jme3/bullet/joints/NewHinge;->axis2:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    iput-object p1, p0, Lcom/jme3/bullet/joints/NewHinge;->axis2:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public getAnchor(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/New6Dof;->calculatedOriginA(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1
.end method

.method public getAnchor2(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/New6Dof;->calculatedOriginB(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1
.end method

.method public getAngle1()F
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/joints/New6Dof;->getAngles(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    return v0
.end method

.method public getAngle2()F
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/joints/New6Dof;->getAngles(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget v0, v0, Lcom/jme3/math/Vector3f;->x:F

    return v0
.end method

.method public getAxis1(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/jme3/bullet/joints/NewHinge;->axis1:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/joints/NewHinge;->axis1:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getAxis2(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/jme3/bullet/joints/NewHinge;->axis2:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/joints/NewHinge;->axis2:Lcom/jme3/math/Vector3f;

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

    invoke-super {p0, p1}, Lcom/jme3/bullet/joints/New6Dof;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "axis1"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/bullet/joints/NewHinge;->axis1:Lcom/jme3/math/Vector3f;

    const-string v0, "axis2"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    iput-object p1, p0, Lcom/jme3/bullet/joints/NewHinge;->axis2:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public final setLowerLimit(F)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/joints/New6Dof;->getRotationMotor(I)Lcom/jme3/bullet/joints/motors/RotationMotor;

    move-result-object v0

    sget-object v1, Lcom/jme3/bullet/joints/motors/MotorParam;->LowerLimit:Lcom/jme3/bullet/joints/motors/MotorParam;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Lcom/jme3/bullet/joints/motors/RotationMotor;->set(Lcom/jme3/bullet/joints/motors/MotorParam;F)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/joints/New6Dof;->getRotationMotor(I)Lcom/jme3/bullet/joints/motors/RotationMotor;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/jme3/bullet/joints/motors/RotationMotor;->set(Lcom/jme3/bullet/joints/motors/MotorParam;F)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/joints/New6Dof;->getRotationMotor(I)Lcom/jme3/bullet/joints/motors/RotationMotor;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/jme3/bullet/joints/motors/RotationMotor;->set(Lcom/jme3/bullet/joints/motors/MotorParam;F)V

    return-void
.end method

.method public final setUpperLimit(F)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/joints/New6Dof;->getRotationMotor(I)Lcom/jme3/bullet/joints/motors/RotationMotor;

    move-result-object v0

    sget-object v1, Lcom/jme3/bullet/joints/motors/MotorParam;->UpperLimit:Lcom/jme3/bullet/joints/motors/MotorParam;

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v0, v1, v2}, Lcom/jme3/bullet/joints/motors/RotationMotor;->set(Lcom/jme3/bullet/joints/motors/MotorParam;F)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/joints/New6Dof;->getRotationMotor(I)Lcom/jme3/bullet/joints/motors/RotationMotor;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/jme3/bullet/joints/motors/RotationMotor;->set(Lcom/jme3/bullet/joints/motors/MotorParam;F)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/joints/New6Dof;->getRotationMotor(I)Lcom/jme3/bullet/joints/motors/RotationMotor;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lcom/jme3/bullet/joints/motors/RotationMotor;->set(Lcom/jme3/bullet/joints/motors/MotorParam;F)V

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/joints/New6Dof;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/bullet/joints/NewHinge;->axis1:Lcom/jme3/math/Vector3f;

    const-string v1, "axis1"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/bullet/joints/NewHinge;->axis2:Lcom/jme3/math/Vector3f;

    const-string v1, "axis2"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
