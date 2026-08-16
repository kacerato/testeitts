.class public Lcom/jme3/bullet/joints/GearJoint;
.super Lcom/jme3/bullet/joints/Constraint;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger2:Ljava/util/logging/Logger;

.field private static final tagAxisA:Ljava/lang/String; = "axisA"

.field private static final tagAxisB:Ljava/lang/String; = "axisB"

.field private static final tagRatio:Ljava/lang/String; = "ratio"


# instance fields
.field private axisA:Lcom/jme3/math/Vector3f;

.field private axisB:Lcom/jme3/math/Vector3f;

.field private ratio:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/joints/GearJoint;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/joints/GearJoint;->logger2:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/joints/Constraint;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 1

    .line 2
    sget-object v0, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/jme3/bullet/joints/Constraint;-><init>(Lcom/jme3/bullet/objects/PhysicsBody;Lcom/jme3/bullet/objects/PhysicsBody;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    .line 3
    const-string p1, "axis in body A"

    invoke-static {p3, p1}, Lif/E;->A(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 4
    const-string p1, "axis in body B"

    invoke-static {p4, p1}, Lif/E;->A(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 5
    invoke-virtual {p3}, Lcom/jme3/math/Vector3f;->normalize()Lcom/jme3/math/Vector3f;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/joints/GearJoint;->axisA:Lcom/jme3/math/Vector3f;

    .line 6
    invoke-virtual {p4}, Lcom/jme3/math/Vector3f;->normalize()Lcom/jme3/math/Vector3f;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/joints/GearJoint;->axisB:Lcom/jme3/math/Vector3f;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 7
    iput p1, p0, Lcom/jme3/bullet/joints/GearJoint;->ratio:F

    .line 8
    invoke-direct {p0}, Lcom/jme3/bullet/joints/GearJoint;->createJoint()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/bullet/objects/PhysicsRigidBody;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;F)V
    .locals 1

    .line 9
    sget-object v0, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/jme3/bullet/joints/Constraint;-><init>(Lcom/jme3/bullet/objects/PhysicsBody;Lcom/jme3/bullet/objects/PhysicsBody;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    .line 10
    const-string p1, "axis in body A"

    invoke-static {p3, p1}, Lif/E;->A(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 11
    const-string p1, "axis in body B"

    invoke-static {p4, p1}, Lif/E;->A(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 12
    invoke-virtual {p3}, Lcom/jme3/math/Vector3f;->normalize()Lcom/jme3/math/Vector3f;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/joints/GearJoint;->axisA:Lcom/jme3/math/Vector3f;

    .line 13
    invoke-virtual {p4}, Lcom/jme3/math/Vector3f;->normalize()Lcom/jme3/math/Vector3f;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/joints/GearJoint;->axisB:Lcom/jme3/math/Vector3f;

    .line 14
    iput p5, p0, Lcom/jme3/bullet/joints/GearJoint;->ratio:F

    .line 15
    invoke-direct {p0}, Lcom/jme3/bullet/joints/GearJoint;->createJoint()V

    return-void
.end method

.method private checkAxisA()Z
    .locals 3

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/jme3/bullet/joints/GearJoint;->getAxisA(JLcom/jme3/math/Vector3f;)V

    iget-object v0, p0, Lcom/jme3/bullet/joints/GearJoint;->axisA:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v2}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private checkAxisB()Z
    .locals 3

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/jme3/bullet/joints/GearJoint;->getAxisB(JLcom/jme3/math/Vector3f;)V

    iget-object v0, p0, Lcom/jme3/bullet/joints/GearJoint;->axisB:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v2}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static native createJoint(JJLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;F)J
.end method

.method private createJoint()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/joints/Constraint;->getBodyA()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v1

    .line 3
    invoke-virtual {p0}, Lcom/jme3/bullet/joints/Constraint;->getBodyB()Lcom/jme3/bullet/objects/PhysicsRigidBody;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v3

    .line 5
    iget-object v5, p0, Lcom/jme3/bullet/joints/GearJoint;->axisA:Lcom/jme3/math/Vector3f;

    iget-object v6, p0, Lcom/jme3/bullet/joints/GearJoint;->axisB:Lcom/jme3/math/Vector3f;

    iget v7, p0, Lcom/jme3/bullet/joints/GearJoint;->ratio:F

    invoke-static/range {v1 .. v7}, Lcom/jme3/bullet/joints/GearJoint;->createJoint(JJLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;F)J

    move-result-wide v0

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/jme3/bullet/joints/PhysicsJoint;->setNativeId(J)V

    return-void
.end method

.method private static native getAxisA(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getAxisB(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getRatio(J)F
.end method

.method private static native setAxisA(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native setAxisB(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native setRatio(JF)V
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 1

    move-object v0, p2

    check-cast v0, Lcom/jme3/bullet/joints/GearJoint;

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/joints/Constraint;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->hasAssignedNativeObject()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/jme3/bullet/joints/GearJoint;->axisA:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Vector3f;

    iput-object p2, p0, Lcom/jme3/bullet/joints/GearJoint;->axisA:Lcom/jme3/math/Vector3f;

    iget-object p2, p0, Lcom/jme3/bullet/joints/GearJoint;->axisB:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    iput-object p1, p0, Lcom/jme3/bullet/joints/GearJoint;->axisB:Lcom/jme3/math/Vector3f;

    invoke-direct {p0}, Lcom/jme3/bullet/joints/GearJoint;->createJoint()V

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/joints/Constraint;->copyConstraintProperties(Lcom/jme3/bullet/joints/Constraint;)V

    return-void
.end method

.method public getAxisA(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/jme3/bullet/joints/GearJoint;->axisA:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/joints/GearJoint;->axisA:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getAxisB(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/jme3/bullet/joints/GearJoint;->axisB:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/joints/GearJoint;->axisB:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getRatio()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/jme3/bullet/joints/GearJoint;->ratio:F

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

    const-string v0, "axisA"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/bullet/joints/GearJoint;->axisA:Lcom/jme3/math/Vector3f;

    const-string v0, "axisB"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/bullet/joints/GearJoint;->axisB:Lcom/jme3/math/Vector3f;

    const-string v0, "ratio"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/joints/GearJoint;->ratio:F

    invoke-direct {p0}, Lcom/jme3/bullet/joints/GearJoint;->createJoint()V

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/joints/Constraint;->readConstraintProperties(Lcom/jme3/export/InputCapsule;)V

    return-void
.end method

.method public setAxisA(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 1
    const-string v0, "axis in body A"

    invoke-static {p1, v0}, Lif/E;->A(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 2
    iget-object v0, p0, Lcom/jme3/bullet/joints/GearJoint;->axisA:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 3
    iget-object p1, p0, Lcom/jme3/bullet/joints/GearJoint;->axisA:Lcom/jme3/math/Vector3f;

    invoke-static {p1}, Ljf/h;->P(Lcom/jme3/math/Vector3f;)V

    .line 4
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 5
    iget-object p1, p0, Lcom/jme3/bullet/joints/GearJoint;->axisA:Lcom/jme3/math/Vector3f;

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/GearJoint;->setAxisA(JLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setAxisB(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 1
    const-string v0, "axis in body B"

    invoke-static {p1, v0}, Lif/E;->A(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 2
    iget-object v0, p0, Lcom/jme3/bullet/joints/GearJoint;->axisB:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 3
    iget-object p1, p0, Lcom/jme3/bullet/joints/GearJoint;->axisB:Lcom/jme3/math/Vector3f;

    invoke-static {p1}, Ljf/h;->P(Lcom/jme3/math/Vector3f;)V

    .line 4
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 5
    iget-object p1, p0, Lcom/jme3/bullet/joints/GearJoint;->axisB:Lcom/jme3/math/Vector3f;

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/GearJoint;->setAxisB(JLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setRatio(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/jme3/bullet/joints/GearJoint;->ratio:F

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/GearJoint;->setRatio(JF)V

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

    iget-object v0, p0, Lcom/jme3/bullet/joints/GearJoint;->axisA:Lcom/jme3/math/Vector3f;

    const-string v1, "axisA"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/bullet/joints/GearJoint;->axisB:Lcom/jme3/math/Vector3f;

    const-string v1, "axisB"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget v0, p0, Lcom/jme3/bullet/joints/GearJoint;->ratio:F

    const-string v1, "ratio"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    return-void
.end method
