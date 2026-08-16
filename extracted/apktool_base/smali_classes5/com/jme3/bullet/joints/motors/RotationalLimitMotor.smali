.class public Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;
.super Lcom/jme3/bullet/NativePhysicsObject;
.source "SourceFile"


# static fields
.field public static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->logger:Ljava/util/logging/Logger;

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

.method private static native getAccumulatedImpulse(J)F
.end method

.method private static native getBounce(J)F
.end method

.method private static native getCurrentPosition(J)F
.end method

.method private static native getDamping(J)F
.end method

.method private static native getERP(J)F
.end method

.method private static native getHiLimit(J)F
.end method

.method private static native getLimitSoftness(J)F
.end method

.method private static native getLoLimit(J)F
.end method

.method private static native getMaxLimitForce(J)F
.end method

.method private static native getMaxMotorForce(J)F
.end method

.method private static native getNormalCFM(J)F
.end method

.method private static native getStopCFM(J)F
.end method

.method private static native getTargetVelocity(J)F
.end method

.method private static native isEnableMotor(J)Z
.end method

.method private static native setAccumulatedImpulse(JF)V
.end method

.method private static native setBounce(JF)V
.end method

.method private static native setDamping(JF)V
.end method

.method private static native setERP(JF)V
.end method

.method private static native setEnableMotor(JZ)V
.end method

.method private static native setHiLimit(JF)V
.end method

.method private static native setLimitSoftness(JF)V
.end method

.method private static native setLoLimit(JF)V
.end method

.method private static native setMaxLimitForce(JF)V
.end method

.method private static native setMaxMotorForce(JF)V
.end method

.method private static native setNormalCFM(JF)V
.end method

.method private static native setStopCFM(JF)V
.end method

.method private static native setTargetVelocity(JF)V
.end method


# virtual methods
.method public getAccumulatedImpulse()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->getAccumulatedImpulse(J)F

    move-result v0

    return v0
.end method

.method public getAngle()F
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->getCurrentPosition(J)F

    move-result v0

    return v0
.end method

.method public getDamping()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->getDamping(J)F

    move-result v0

    return v0
.end method

.method public getERP()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->getERP(J)F

    move-result v0

    return v0
.end method

.method public getLimitSoftness()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->getLimitSoftness(J)F

    move-result v0

    return v0
.end method

.method public getLowerLimit()F
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->getLoLimit(J)F

    move-result v0

    return v0
.end method

.method public getMaxLimitForce()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->getMaxLimitForce(J)F

    move-result v0

    return v0
.end method

.method public getMaxMotorForce()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->getMaxMotorForce(J)F

    move-result v0

    return v0
.end method

.method public getNormalCFM()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->getNormalCFM(J)F

    move-result v0

    return v0
.end method

.method public getRestitution()F
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->getBounce(J)F

    move-result v0

    return v0
.end method

.method public getStopCFM()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->getStopCFM(J)F

    move-result v0

    return v0
.end method

.method public getTargetVelocity()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->getTargetVelocity(J)F

    move-result v0

    return v0
.end method

.method public getUpperLimit()F
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->getHiLimit(J)F

    move-result v0

    return v0
.end method

.method public isEnableMotor()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->isEnableMotor(J)Z

    move-result v0

    return v0
.end method

.method public setAccumulatedImpulse(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->setAccumulatedImpulse(JF)V

    return-void
.end method

.method public setDamping(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->setDamping(JF)V

    return-void
.end method

.method public setERP(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->setERP(JF)V

    return-void
.end method

.method public setEnableMotor(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->setEnableMotor(JZ)V

    return-void
.end method

.method public setLimitSoftness(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->setLimitSoftness(JF)V

    return-void
.end method

.method public setLowerLimit(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->setLoLimit(JF)V

    return-void
.end method

.method public setMaxLimitForce(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->setMaxLimitForce(JF)V

    return-void
.end method

.method public setMaxMotorForce(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->setMaxMotorForce(JF)V

    return-void
.end method

.method public setNormalCFM(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->setNormalCFM(JF)V

    return-void
.end method

.method public setRestitution(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->setBounce(JF)V

    return-void
.end method

.method public setStopCFM(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->setStopCFM(JF)V

    return-void
.end method

.method public setTargetVelocity(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->setTargetVelocity(JF)V

    return-void
.end method

.method public setUpperLimit(F)V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/motors/RotationalLimitMotor;->setHiLimit(JF)V

    return-void
.end method
