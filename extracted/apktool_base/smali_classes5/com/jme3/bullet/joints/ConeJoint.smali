.class public Lcom/jme3/bullet/joints/ConeJoint;
.super Lcom/jme3/bullet/joints/Constraint;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger2:Ljava/util/logging/Logger;

.field private static final tagAngularOnly:Ljava/lang/String; = "angularOnly"

.field private static final tagRotA:Ljava/lang/String; = "rotA"

.field private static final tagRotB:Ljava/lang/String; = "rotB"

.field private static final tagSwingSpan1:Ljava/lang/String; = "swingSpan1"

.field private static final tagSwingSpan2:Ljava/lang/String; = "swingSpan2"

.field private static final tagTwistSpan:Ljava/lang/String; = "twistSpan"

.field private static final translateIdentity:Lcom/jme3/math/Vector3f;


# instance fields
.field private angularOnly:Z

.field private rotA:Lcom/jme3/math/Matrix3f;

.field private rotB:Lcom/jme3/math/Matrix3f;

.field private swingSpan1:F

.field private swingSpan2:F

.field private twistSpan:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/jme3/bullet/joints/ConeJoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/joints/ConeJoint;->logger2:Ljava/util/logging/Logger;

    new-instance v0, Lcom/jme3/math/Vector3f;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    sput-object v0, Lcom/jme3/bullet/joints/ConeJoint;->translateIdentity:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/joints/Constraint;-><init>()V

    const v0, 0x7149f2ca    # 1.0E30f

    .line 2
    iput v0, p0, Lcom/jme3/bullet/joints/ConeJoint;->swingSpan1:F

    .line 3
    iput v0, p0, Lcom/jme3/bullet/joints/ConeJoint;->swingSpan2:F

    .line 4
    iput v0, p0, Lcom/jme3/bullet/joints/ConeJoint;->twistSpan:F

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/jme3/bullet/joints/ConeJoint;->angularOnly:Z

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jme3/bullet/joints/Constraint;-><init>(Lcom/jme3/bullet/objects/PhysicsBody;Lcom/jme3/bullet/objects/PhysicsBody;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    const p1, 0x7149f2ca    # 1.0E30f

    .line 15
    iput p1, p0, Lcom/jme3/bullet/joints/ConeJoint;->swingSpan1:F

    .line 16
    iput p1, p0, Lcom/jme3/bullet/joints/ConeJoint;->swingSpan2:F

    .line 17
    iput p1, p0, Lcom/jme3/bullet/joints/ConeJoint;->twistSpan:F

    const/4 p1, 0x0

    .line 18
    iput-boolean p1, p0, Lcom/jme3/bullet/joints/ConeJoint;->angularOnly:Z

    .line 19
    new-instance p1, Lcom/jme3/math/Matrix3f;

    invoke-direct {p1}, Lcom/jme3/math/Matrix3f;-><init>()V

    iput-object p1, p0, Lcom/jme3/bullet/joints/ConeJoint;->rotA:Lcom/jme3/math/Matrix3f;

    .line 20
    new-instance p1, Lcom/jme3/math/Matrix3f;

    invoke-direct {p1}, Lcom/jme3/math/Matrix3f;-><init>()V

    iput-object p1, p0, Lcom/jme3/bullet/joints/ConeJoint;->rotB:Lcom/jme3/math/Matrix3f;

    .line 21
    invoke-direct {p0}, Lcom/jme3/bullet/joints/ConeJoint;->createJoint()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;Lcom/jme3/math/Matrix3f;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jme3/bullet/joints/Constraint;-><init>(Lcom/jme3/bullet/objects/PhysicsBody;Lcom/jme3/bullet/objects/PhysicsBody;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    const p1, 0x7149f2ca    # 1.0E30f

    .line 23
    iput p1, p0, Lcom/jme3/bullet/joints/ConeJoint;->swingSpan1:F

    .line 24
    iput p1, p0, Lcom/jme3/bullet/joints/ConeJoint;->swingSpan2:F

    .line 25
    iput p1, p0, Lcom/jme3/bullet/joints/ConeJoint;->twistSpan:F

    const/4 p1, 0x0

    .line 26
    iput-boolean p1, p0, Lcom/jme3/bullet/joints/ConeJoint;->angularOnly:Z

    .line 27
    invoke-virtual {p5}, Lcom/jme3/math/Matrix3f;->clone()Lcom/jme3/math/Matrix3f;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/joints/ConeJoint;->rotA:Lcom/jme3/math/Matrix3f;

    .line 28
    invoke-virtual {p6}, Lcom/jme3/math/Matrix3f;->clone()Lcom/jme3/math/Matrix3f;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/joints/ConeJoint;->rotB:Lcom/jme3/math/Matrix3f;

    .line 29
    invoke-direct {p0}, Lcom/jme3/bullet/joints/ConeJoint;->createJoint()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;)V
    .locals 2

    .line 6
    sget-object v0, Lcom/jme3/bullet/joints/JointEnd;->A:Lcom/jme3/bullet/joints/JointEnd;

    sget-object v1, Lcom/jme3/bullet/joints/ConeJoint;->translateIdentity:Lcom/jme3/math/Vector3f;

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/jme3/bullet/joints/Constraint;-><init>(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/bullet/joints/JointEnd;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    const p1, 0x7149f2ca    # 1.0E30f

    .line 7
    iput p1, p0, Lcom/jme3/bullet/joints/ConeJoint;->swingSpan1:F

    .line 8
    iput p1, p0, Lcom/jme3/bullet/joints/ConeJoint;->swingSpan2:F

    .line 9
    iput p1, p0, Lcom/jme3/bullet/joints/ConeJoint;->twistSpan:F

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/jme3/bullet/joints/ConeJoint;->angularOnly:Z

    .line 11
    invoke-virtual {p3}, Lcom/jme3/math/Matrix3f;->clone()Lcom/jme3/math/Matrix3f;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/joints/ConeJoint;->rotA:Lcom/jme3/math/Matrix3f;

    .line 12
    iput-object p1, p0, Lcom/jme3/bullet/joints/ConeJoint;->rotB:Lcom/jme3/math/Matrix3f;

    .line 13
    invoke-direct {p0}, Lcom/jme3/bullet/joints/ConeJoint;->createJoint()V

    return-void
.end method

.method private static native createJoint(JJLcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;)J
.end method

.method private createJoint()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/joints/Constraint;->getBodyA()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v1

    .line 3
    invoke-virtual {p0}, Lcom/jme3/bullet/joints/Constraint;->getBodyB()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/jme3/bullet/joints/Constraint;->pivotA:Lcom/jme3/math/Vector3f;

    iget-object v3, p0, Lcom/jme3/bullet/joints/ConeJoint;->rotA:Lcom/jme3/math/Matrix3f;

    invoke-static {v1, v2, v0, v3}, Lcom/jme3/bullet/joints/ConeJoint;->createJoint1(JLcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;)J

    move-result-wide v0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v3

    .line 6
    iget-object v5, p0, Lcom/jme3/bullet/joints/Constraint;->pivotA:Lcom/jme3/math/Vector3f;

    iget-object v6, p0, Lcom/jme3/bullet/joints/ConeJoint;->rotA:Lcom/jme3/math/Matrix3f;

    iget-object v7, p0, Lcom/jme3/bullet/joints/Constraint;->pivotB:Lcom/jme3/math/Vector3f;

    iget-object v8, p0, Lcom/jme3/bullet/joints/ConeJoint;->rotB:Lcom/jme3/math/Matrix3f;

    invoke-static/range {v1 .. v8}, Lcom/jme3/bullet/joints/ConeJoint;->createJoint(JJLcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;)J

    move-result-wide v0

    .line 7
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/jme3/bullet/joints/PhysicsJoint;->setNativeId(J)V

    .line 8
    iget v0, p0, Lcom/jme3/bullet/joints/ConeJoint;->swingSpan1:F

    iget v1, p0, Lcom/jme3/bullet/joints/ConeJoint;->swingSpan2:F

    iget v2, p0, Lcom/jme3/bullet/joints/ConeJoint;->twistSpan:F

    invoke-virtual {p0, v0, v1, v2}, Lcom/jme3/bullet/joints/ConeJoint;->setLimit(FFF)V

    .line 9
    iget-boolean v0, p0, Lcom/jme3/bullet/joints/ConeJoint;->angularOnly:Z

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/joints/ConeJoint;->setAngularOnly(Z)V

    return-void
.end method

.method private static native createJoint1(JLcom/jme3/math/Vector3f;Lcom/jme3/math/Matrix3f;)J
.end method

.method private static native getFrameOffsetA(JLcom/jme3/math/Transform;)V
.end method

.method private static native getFrameOffsetB(JLcom/jme3/math/Transform;)V
.end method

.method private static native setAngularOnly(JZ)V
.end method

.method private static native setLimit(JFFF)V
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 1

    move-object v0, p2

    check-cast v0, Lcom/jme3/bullet/joints/ConeJoint;

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/joints/Constraint;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->hasAssignedNativeObject()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/jme3/bullet/joints/ConeJoint;->rotA:Lcom/jme3/math/Matrix3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Matrix3f;

    iput-object p2, p0, Lcom/jme3/bullet/joints/ConeJoint;->rotA:Lcom/jme3/math/Matrix3f;

    iget-object p2, p0, Lcom/jme3/bullet/joints/ConeJoint;->rotB:Lcom/jme3/math/Matrix3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Matrix3f;

    iput-object p1, p0, Lcom/jme3/bullet/joints/ConeJoint;->rotB:Lcom/jme3/math/Matrix3f;

    invoke-direct {p0}, Lcom/jme3/bullet/joints/ConeJoint;->createJoint()V

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/joints/Constraint;->copyConstraintProperties(Lcom/jme3/bullet/joints/Constraint;)V

    return-void
.end method

.method public getFrameTransform(Lcom/jme3/bullet/joints/JointEnd;Lcom/jme3/math/Transform;)Lcom/jme3/math/Transform;
    .locals 4

    if-nez p2, :cond_0

    new-instance p2, Lcom/jme3/math/Transform;

    invoke-direct {p2}, Lcom/jme3/math/Transform;-><init>()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    sget-object v2, Lcom/jme3/bullet/joints/ConeJoint$1;->$SwitchMap$com$jme3$bullet$joints$JointEnd:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/joints/ConeJoint;->getFrameOffsetB(JLcom/jme3/math/Transform;)V

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "end = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/joints/ConeJoint;->getFrameOffsetA(JLcom/jme3/math/Transform;)V

    :goto_0
    return-object p2
.end method

.method public getSwingSpan1()F
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/joints/ConeJoint;->swingSpan1:F

    return v0
.end method

.method public getSwingSpan2()F
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/joints/ConeJoint;->swingSpan2:F

    return v0
.end method

.method public getTwistSpan()F
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/joints/ConeJoint;->twistSpan:F

    return v0
.end method

.method public isAngularOnly()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/bullet/joints/ConeJoint;->angularOnly:Z

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

    new-instance v0, Lcom/jme3/math/Matrix3f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix3f;-><init>()V

    const-string v1, "rotA"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Matrix3f;

    iput-object v0, p0, Lcom/jme3/bullet/joints/ConeJoint;->rotA:Lcom/jme3/math/Matrix3f;

    new-instance v0, Lcom/jme3/math/Matrix3f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix3f;-><init>()V

    const-string v1, "rotB"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Matrix3f;

    iput-object v0, p0, Lcom/jme3/bullet/joints/ConeJoint;->rotB:Lcom/jme3/math/Matrix3f;

    const-string v0, "angularOnly"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/bullet/joints/ConeJoint;->angularOnly:Z

    const-string v0, "swingSpan1"

    const v1, 0x7149f2ca    # 1.0E30f

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/joints/ConeJoint;->swingSpan1:F

    const-string v0, "swingSpan2"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/joints/ConeJoint;->swingSpan2:F

    const-string v0, "twistSpan"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/joints/ConeJoint;->twistSpan:F

    invoke-direct {p0}, Lcom/jme3/bullet/joints/ConeJoint;->createJoint()V

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/Constraint;->readConstraintProperties(Lcom/jme3/export/InputCapsule;)V

    return-void
.end method

.method public setAngularOnly(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    iput-boolean p1, p0, Lcom/jme3/bullet/joints/ConeJoint;->angularOnly:Z

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/ConeJoint;->setAngularOnly(JZ)V

    return-void
.end method

.method public setLimit(FFF)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    iput p1, p0, Lcom/jme3/bullet/joints/ConeJoint;->swingSpan1:F

    .line 3
    iput p2, p0, Lcom/jme3/bullet/joints/ConeJoint;->swingSpan2:F

    .line 4
    iput p3, p0, Lcom/jme3/bullet/joints/ConeJoint;->twistSpan:F

    .line 5
    invoke-static {v0, v1, p1, p2, p3}, Lcom/jme3/bullet/joints/ConeJoint;->setLimit(JFFF)V

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

    iget-object v0, p0, Lcom/jme3/bullet/joints/ConeJoint;->rotA:Lcom/jme3/math/Matrix3f;

    const-string v1, "rotA"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/bullet/joints/ConeJoint;->rotB:Lcom/jme3/math/Matrix3f;

    const-string v1, "rotB"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-boolean v0, p0, Lcom/jme3/bullet/joints/ConeJoint;->angularOnly:Z

    const-string v1, "angularOnly"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget v0, p0, Lcom/jme3/bullet/joints/ConeJoint;->swingSpan1:F

    const-string v1, "swingSpan1"

    const v2, 0x7149f2ca    # 1.0E30f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/bullet/joints/ConeJoint;->swingSpan2:F

    const-string v1, "swingSpan2"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/bullet/joints/ConeJoint;->twistSpan:F

    const-string v1, "twistSpan"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    return-void
.end method
