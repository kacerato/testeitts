.class public Lcom/jme3/bullet/joints/motors/RotationMotor;
.super Lcom/jme3/bullet/NativePhysicsObject;
.source "SourceFile"


# static fields
.field public static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/joints/motors/RotationMotor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/joints/motors/RotationMotor;->logger:Ljava/util/logging/Logger;

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

.method private static native getBounce(J)F
.end method

.method private static native getDamping(J)F
.end method

.method private static native getEquilibrium(J)F
.end method

.method private static native getLowerLimit(J)F
.end method

.method private static native getMaxMotorForce(J)F
.end method

.method private static native getParameter(JI)F
.end method

.method private static native getServoTarget(J)F
.end method

.method private static native getStiffness(J)F
.end method

.method private static native getTargetVelocity(J)F
.end method

.method private static native getUpperLimit(J)F
.end method

.method private static native isDampingLimited(J)Z
.end method

.method private static native isMotorEnabled(J)Z
.end method

.method private static native isServoEnabled(J)Z
.end method

.method private static native isSpringEnabled(J)Z
.end method

.method private static native isStiffnessLimited(J)Z
.end method

.method private static native setBounce(JF)V
.end method

.method private static native setDamping(JF)V
.end method

.method private static native setDampingLimited(JZ)V
.end method

.method private static native setEquilibrium(JF)V
.end method

.method private static native setLowerLimit(JF)V
.end method

.method private static native setMaxMotorForce(JF)V
.end method

.method private static native setMotorEnabled(JZ)V
.end method

.method private static native setParameter(JIF)V
.end method

.method private static native setServoEnabled(JZ)V
.end method

.method private static native setServoTarget(JF)V
.end method

.method private static native setSpringEnabled(JZ)V
.end method

.method private static native setStiffness(JF)V
.end method

.method private static native setStiffnessLimited(JZ)V
.end method

.method private static native setTargetVelocity(JF)V
.end method

.method private static native setUpperLimit(JF)V
.end method


# virtual methods
.method public get(Lcom/jme3/bullet/joints/motors/MotorParam;)F
    .locals 4

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    sget-object v2, Lcom/jme3/bullet/joints/motors/RotationMotor$1;->$SwitchMap$com$jme3$bullet$joints$motors$MotorParam:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    invoke-virtual {p1}, Lcom/jme3/bullet/joints/motors/MotorParam;->nativeIndex()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/motors/RotationMotor;->getParameter(JI)F

    move-result p1

    goto :goto_0

    :pswitch_0
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/motors/RotationMotor;->getUpperLimit(J)F

    move-result p1

    goto :goto_0

    :pswitch_1
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/motors/RotationMotor;->getTargetVelocity(J)F

    move-result p1

    goto :goto_0

    :pswitch_2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/motors/RotationMotor;->getStiffness(J)F

    move-result p1

    goto :goto_0

    :pswitch_3
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/motors/RotationMotor;->getServoTarget(J)F

    move-result p1

    goto :goto_0

    :pswitch_4
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/motors/RotationMotor;->getMaxMotorForce(J)F

    move-result p1

    goto :goto_0

    :pswitch_5
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/motors/RotationMotor;->getLowerLimit(J)F

    move-result p1

    goto :goto_0

    :pswitch_6
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/motors/RotationMotor;->getEquilibrium(J)F

    move-result p1

    goto :goto_0

    :pswitch_7
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/motors/RotationMotor;->getDamping(J)F

    move-result p1

    goto :goto_0

    :pswitch_8
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/motors/RotationMotor;->getBounce(J)F

    move-result p1

    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isDampingLimited()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/motors/RotationMotor;->isDampingLimited(J)Z

    move-result v0

    return v0
.end method

.method public isMotorEnabled()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/motors/RotationMotor;->isMotorEnabled(J)Z

    move-result v0

    return v0
.end method

.method public isServoEnabled()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/motors/RotationMotor;->isServoEnabled(J)Z

    move-result v0

    return v0
.end method

.method public isSpringEnabled()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/motors/RotationMotor;->isSpringEnabled(J)Z

    move-result v0

    return v0
.end method

.method public isStiffnessLimited()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/joints/motors/RotationMotor;->isStiffnessLimited(J)Z

    move-result v0

    return v0
.end method

.method public set(Lcom/jme3/bullet/joints/motors/MotorParam;F)V
    .locals 4

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    sget-object v2, Lcom/jme3/bullet/joints/motors/RotationMotor$1;->$SwitchMap$com$jme3$bullet$joints$motors$MotorParam:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    invoke-virtual {p1}, Lcom/jme3/bullet/joints/motors/MotorParam;->nativeIndex()I

    move-result p1

    invoke-static {v0, v1, p1, p2}, Lcom/jme3/bullet/joints/motors/RotationMotor;->setParameter(JIF)V

    goto :goto_0

    :pswitch_0
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/joints/motors/RotationMotor;->setUpperLimit(JF)V

    goto :goto_0

    :pswitch_1
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/joints/motors/RotationMotor;->setTargetVelocity(JF)V

    goto :goto_0

    :pswitch_2
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/joints/motors/RotationMotor;->setStiffness(JF)V

    goto :goto_0

    :pswitch_3
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/joints/motors/RotationMotor;->setServoTarget(JF)V

    goto :goto_0

    :pswitch_4
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/joints/motors/RotationMotor;->setMaxMotorForce(JF)V

    goto :goto_0

    :pswitch_5
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/joints/motors/RotationMotor;->setLowerLimit(JF)V

    goto :goto_0

    :pswitch_6
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/joints/motors/RotationMotor;->setEquilibrium(JF)V

    goto :goto_0

    :pswitch_7
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/joints/motors/RotationMotor;->setDamping(JF)V

    goto :goto_0

    :pswitch_8
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/joints/motors/RotationMotor;->setBounce(JF)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDampingLimited(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/motors/RotationMotor;->setDampingLimited(JZ)V

    return-void
.end method

.method public setMotorEnabled(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/motors/RotationMotor;->setMotorEnabled(JZ)V

    return-void
.end method

.method public setServoEnabled(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/motors/RotationMotor;->setServoEnabled(JZ)V

    return-void
.end method

.method public setSpringEnabled(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/motors/RotationMotor;->setSpringEnabled(JZ)V

    return-void
.end method

.method public setStiffnessLimited(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/motors/RotationMotor;->setStiffnessLimited(JZ)V

    return-void
.end method
