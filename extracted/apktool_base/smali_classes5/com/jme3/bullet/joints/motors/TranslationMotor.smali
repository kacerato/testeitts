.class public Lcom/jme3/bullet/joints/motors/TranslationMotor;
.super Lcom/jme3/bullet/NativePhysicsObject;
.source "SourceFile"


# static fields
.field public static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/joints/motors/TranslationMotor;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/joints/motors/TranslationMotor;->logger:Ljava/util/logging/Logger;

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

.method private static native getBounce(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getDamping(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getEquilibrium(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getLowerLimit(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getMaxMotorForce(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getParameter(JILcom/jme3/math/Vector3f;)V
.end method

.method private static native getServoTarget(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getStiffness(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getTargetVelocity(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getUpperLimit(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native isDampingLimited(JI)Z
.end method

.method private static native isMotorEnabled(JI)Z
.end method

.method private static native isServoEnabled(JI)Z
.end method

.method private static native isSpringEnabled(JI)Z
.end method

.method private static native isStiffnessLimited(JI)Z
.end method

.method private static native setBounce(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native setDamping(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native setDampingLimited(JIZ)V
.end method

.method private static native setEquilibrium(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native setLowerLimit(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native setMaxMotorForce(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native setMotorEnabled(JIZ)V
.end method

.method private static native setParameter(JILcom/jme3/math/Vector3f;)V
.end method

.method private static native setServoEnabled(JIZ)V
.end method

.method private static native setServoTarget(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native setSpringEnabled(JIZ)V
.end method

.method private static native setStiffness(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native setStiffnessLimited(JIZ)V
.end method

.method private static native setTargetVelocity(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native setUpperLimit(JLcom/jme3/math/Vector3f;)V
.end method


# virtual methods
.method public get(Lcom/jme3/bullet/joints/motors/MotorParam;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 4

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    if-nez p2, :cond_0

    new-instance p2, Lcom/jme3/math/Vector3f;

    invoke-direct {p2}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    sget-object v2, Lcom/jme3/bullet/joints/motors/TranslationMotor$1;->$SwitchMap$com$jme3$bullet$joints$motors$MotorParam:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    invoke-virtual {p1}, Lcom/jme3/bullet/joints/motors/MotorParam;->nativeIndex()I

    move-result p1

    invoke-static {v0, v1, p1, p2}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->getParameter(JILcom/jme3/math/Vector3f;)V

    goto :goto_0

    :pswitch_0
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->getUpperLimit(JLcom/jme3/math/Vector3f;)V

    goto :goto_0

    :pswitch_1
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->getTargetVelocity(JLcom/jme3/math/Vector3f;)V

    goto :goto_0

    :pswitch_2
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->getStiffness(JLcom/jme3/math/Vector3f;)V

    goto :goto_0

    :pswitch_3
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->getServoTarget(JLcom/jme3/math/Vector3f;)V

    goto :goto_0

    :pswitch_4
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->getMaxMotorForce(JLcom/jme3/math/Vector3f;)V

    goto :goto_0

    :pswitch_5
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->getLowerLimit(JLcom/jme3/math/Vector3f;)V

    goto :goto_0

    :pswitch_6
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->getEquilibrium(JLcom/jme3/math/Vector3f;)V

    goto :goto_0

    :pswitch_7
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->getDamping(JLcom/jme3/math/Vector3f;)V

    goto :goto_0

    :pswitch_8
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->getBounce(JLcom/jme3/math/Vector3f;)V

    :goto_0
    return-object p2

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

.method public isDampingLimited(I)Z
    .locals 2

    .line 1
    const-string v0, "axis index"

    invoke-static {p1, v0}, Lif/E;->a(ILjava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->isDampingLimited(JI)Z

    move-result p1

    return p1
.end method

.method public isMotorEnabled(I)Z
    .locals 2

    .line 1
    const-string v0, "axis index"

    invoke-static {p1, v0}, Lif/E;->a(ILjava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->isMotorEnabled(JI)Z

    move-result p1

    return p1
.end method

.method public isServoEnabled(I)Z
    .locals 2

    .line 1
    const-string v0, "axis index"

    invoke-static {p1, v0}, Lif/E;->a(ILjava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->isServoEnabled(JI)Z

    move-result p1

    return p1
.end method

.method public isSpringEnabled(I)Z
    .locals 2

    .line 1
    const-string v0, "axis index"

    invoke-static {p1, v0}, Lif/E;->a(ILjava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->isSpringEnabled(JI)Z

    move-result p1

    return p1
.end method

.method public isStiffnessLimited(I)Z
    .locals 2

    .line 1
    const-string v0, "axis index"

    invoke-static {p1, v0}, Lif/E;->a(ILjava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->isStiffnessLimited(JI)Z

    move-result p1

    return p1
.end method

.method public set(Lcom/jme3/bullet/joints/motors/MotorParam;Lcom/jme3/math/Vector3f;)V
    .locals 4

    const-string v0, "value"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    sget-object v2, Lcom/jme3/bullet/joints/motors/TranslationMotor$1;->$SwitchMap$com$jme3$bullet$joints$motors$MotorParam:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    invoke-virtual {p1}, Lcom/jme3/bullet/joints/motors/MotorParam;->nativeIndex()I

    move-result p1

    invoke-static {v0, v1, p1, p2}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->setParameter(JILcom/jme3/math/Vector3f;)V

    goto :goto_0

    :pswitch_0
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->setUpperLimit(JLcom/jme3/math/Vector3f;)V

    goto :goto_0

    :pswitch_1
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->setTargetVelocity(JLcom/jme3/math/Vector3f;)V

    goto :goto_0

    :pswitch_2
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->setStiffness(JLcom/jme3/math/Vector3f;)V

    goto :goto_0

    :pswitch_3
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->setServoTarget(JLcom/jme3/math/Vector3f;)V

    goto :goto_0

    :pswitch_4
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->setMaxMotorForce(JLcom/jme3/math/Vector3f;)V

    goto :goto_0

    :pswitch_5
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->setLowerLimit(JLcom/jme3/math/Vector3f;)V

    goto :goto_0

    :pswitch_6
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->setEquilibrium(JLcom/jme3/math/Vector3f;)V

    goto :goto_0

    :pswitch_7
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->setDamping(JLcom/jme3/math/Vector3f;)V

    goto :goto_0

    :pswitch_8
    invoke-static {v0, v1, p2}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->setBounce(JLcom/jme3/math/Vector3f;)V

    :goto_0
    return-void

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

.method public setDampingLimited(IZ)V
    .locals 2

    .line 1
    const-string v0, "axis index"

    invoke-static {p1, v0}, Lif/E;->a(ILjava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1, p2}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->setDampingLimited(JIZ)V

    return-void
.end method

.method public setMotorEnabled(IZ)V
    .locals 2

    .line 1
    const-string v0, "axis index"

    invoke-static {p1, v0}, Lif/E;->a(ILjava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1, p2}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->setMotorEnabled(JIZ)V

    return-void
.end method

.method public setServoEnabled(IZ)V
    .locals 2

    .line 1
    const-string v0, "axis index"

    invoke-static {p1, v0}, Lif/E;->a(ILjava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1, p2}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->setServoEnabled(JIZ)V

    return-void
.end method

.method public setSpringEnabled(IZ)V
    .locals 2

    .line 1
    const-string v0, "axis index"

    invoke-static {p1, v0}, Lif/E;->a(ILjava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1, p2}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->setSpringEnabled(JIZ)V

    return-void
.end method

.method public setStiffnessLimited(IZ)V
    .locals 2

    .line 1
    const-string v0, "axis index"

    invoke-static {p1, v0}, Lif/E;->a(ILjava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1, p2}, Lcom/jme3/bullet/joints/motors/TranslationMotor;->setStiffnessLimited(JIZ)V

    return-void
.end method
