.class public Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;
.super Lcom/jme3/bullet/NativePhysicsObject;
.source "SourceFile"


# static fields
.field public static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    invoke-direct {p0}, Lcom/jme3/bullet/NativePhysicsObject;-><init>()V

    const-string v0, "native ID"

    invoke-static {p1, p2, v0}, Lif/E;->x(JLjava/lang/String;)Z

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/NativePhysicsObject;->setNativeIdNotTracked(J)V

    return-void
.end method

.method private static native getAccumulatedImpulse(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getDamping(J)F
.end method

.method private static native getERP(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getLimitSoftness(J)F
.end method

.method private static native getLowerLimit(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getMaxMotorForce(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getNormalCFM(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getOffset(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getRestitution(J)F
.end method

.method private static native getStopCFM(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getTargetVelocity(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getUpperLimit(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native isEnabled(JI)Z
.end method

.method private static native setAccumulatedImpulse(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native setDamping(JF)V
.end method

.method private static native setERP(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native setEnabled(JIZ)V
.end method

.method private static native setLimitSoftness(JF)V
.end method

.method private static native setLowerLimit(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native setMaxMotorForce(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native setNormalCFM(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native setRestitution(JF)V
.end method

.method private static native setStopCFM(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native setTargetVelocity(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native setUpperLimit(JLcom/jme3/math/Vector3f;)V
.end method


# virtual methods
.method public getAccumulatedImpulse(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->getAccumulatedImpulse(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public getDamping()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->getDamping(J)F

    move-result v0

    return v0
.end method

.method public getERP(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->getERP(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public getLimitSoftness()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->getLimitSoftness(J)F

    move-result v0

    return v0
.end method

.method public getLowerLimit(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->getLowerLimit(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public getMaxMotorForce(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->getMaxMotorForce(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public getNormalCFM(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->getNormalCFM(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public getOffset(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->getOffset(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public getRestitution()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->getRestitution(J)F

    move-result v0

    return v0
.end method

.method public getStopCFM(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->getStopCFM(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public getTargetVelocity(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->getTargetVelocity(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public getUpperLimit(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->getUpperLimit(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public isEnabled(I)Z
    .locals 2

    .line 1
    const-string v0, "axis index"

    invoke-static {p1, v0}, Lif/E;->a(ILjava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->isEnabled(JI)Z

    move-result p1

    return p1
.end method

.method public setAccumulatedImpulse(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->setAccumulatedImpulse(JLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setDamping(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->setDamping(JF)V

    return-void
.end method

.method public setERP(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->setERP(JLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setEnabled(IZ)V
    .locals 2

    .line 1
    const-string v0, "axis index"

    invoke-static {p1, v0}, Lif/E;->a(ILjava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1, p2}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->setEnabled(JIZ)V

    return-void
.end method

.method public setLimitSoftness(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->setLimitSoftness(JF)V

    return-void
.end method

.method public setLowerLimit(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->setLowerLimit(JLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setMaxMotorForce(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->setMaxMotorForce(JLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setNormalCFM(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->setNormalCFM(JLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setRestitution(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->setRestitution(JF)V

    return-void
.end method

.method public setStopCFM(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->setStopCFM(JLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setTargetVelocity(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->setTargetVelocity(JLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setUpperLimit(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/motors/TranslationalLimitMotor;->setUpperLimit(JLcom/jme3/math/Vector3f;)V

    return-void
.end method
