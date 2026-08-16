.class public Lcom/jme3/bullet/objects/VehicleWheel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/util/clone/JmeCloneable;
.implements Lcom/jme3/export/Savable;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger:Ljava/util/logging/Logger;

.field private static final tagBrake:Ljava/lang/String; = "brake"

.field private static final tagEngineForce:Ljava/lang/String; = "engineForce"

.field private static final tagFrontWheel:Ljava/lang/String; = "frontWheel"

.field private static final tagRestLength:Ljava/lang/String; = "restLength"

.field private static final tagRollInfluence:Ljava/lang/String; = "rollInfluence"

.field private static final tagRotationAngle:Ljava/lang/String; = "rotationAngle"

.field private static final tagSteerAngle:Ljava/lang/String; = "steerAngle"

.field private static final tagSuspensionLength:Ljava/lang/String; = "suspensionLength"

.field private static final tagTuning:Ljava/lang/String; = "tuning"

.field private static final tagWheelAxle:Ljava/lang/String; = "wheelAxle"

.field private static final tagWheelDirection:Ljava/lang/String; = "wheelDirection"

.field private static final tagWheelLocation:Ljava/lang/String; = "wheelLocation"

.field private static final tagWheelRadius:Ljava/lang/String; = "wheelRadius"

.field private static final tagWheelSpatial:Ljava/lang/String; = "wheelSpatial"


# instance fields
.field private applyLocal:Z

.field private axisDirection:Lcom/jme3/math/Vector3f;

.field private isFront:Z

.field private location:Lcom/jme3/math/Vector3f;

.field private radius:F

.field private restLength:F

.field private rollInfluence:F

.field private subtree:Lcom/jme3/scene/Spatial;

.field private suspensionDirection:Lcom/jme3/math/Vector3f;

.field private tmpInverseWheelRotation:Lcom/jme3/math/Quaternion;

.field private tmpMatrix:Lcom/jme3/math/Matrix3f;

.field private tuning:Lcom/jme3/bullet/objects/infos/VehicleTuning;

.field private vehicleId:J

.field private wheelIndex:I

.field private wheelWorldLocation:Lcom/jme3/math/Vector3f;

.field private wheelWorldRotation:Lcom/jme3/math/Quaternion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/objects/VehicleWheel;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/objects/VehicleWheel;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->applyLocal:Z

    const/high16 v1, 0x3f000000    # 0.5f

    .line 3
    iput v1, p0, Lcom/jme3/bullet/objects/VehicleWheel;->radius:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    iput v1, p0, Lcom/jme3/bullet/objects/VehicleWheel;->restLength:F

    .line 5
    iput v1, p0, Lcom/jme3/bullet/objects/VehicleWheel;->rollInfluence:F

    .line 6
    iput v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->wheelIndex:I

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->vehicleId:J

    .line 8
    new-instance v0, Lcom/jme3/math/Matrix3f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->tmpMatrix:Lcom/jme3/math/Matrix3f;

    .line 9
    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->tmpInverseWheelRotation:Lcom/jme3/math/Quaternion;

    .line 10
    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->wheelWorldRotation:Lcom/jme3/math/Quaternion;

    .line 11
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->axisDirection:Lcom/jme3/math/Vector3f;

    .line 12
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->location:Lcom/jme3/math/Vector3f;

    .line 13
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->suspensionDirection:Lcom/jme3/math/Vector3f;

    .line 14
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->wheelWorldLocation:Lcom/jme3/math/Vector3f;

    .line 15
    new-instance v0, Lcom/jme3/bullet/objects/infos/VehicleTuning;

    invoke-direct {v0}, Lcom/jme3/bullet/objects/infos/VehicleTuning;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->tuning:Lcom/jme3/bullet/objects/infos/VehicleTuning;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/scene/Spatial;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;FFZ)V
    .locals 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->applyLocal:Z

    const/high16 v1, 0x3f000000    # 0.5f

    .line 18
    iput v1, p0, Lcom/jme3/bullet/objects/VehicleWheel;->radius:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 19
    iput v1, p0, Lcom/jme3/bullet/objects/VehicleWheel;->restLength:F

    .line 20
    iput v1, p0, Lcom/jme3/bullet/objects/VehicleWheel;->rollInfluence:F

    .line 21
    iput v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->wheelIndex:I

    const-wide/16 v0, 0x0

    .line 22
    iput-wide v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->vehicleId:J

    .line 23
    new-instance v0, Lcom/jme3/math/Matrix3f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->tmpMatrix:Lcom/jme3/math/Matrix3f;

    .line 24
    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->tmpInverseWheelRotation:Lcom/jme3/math/Quaternion;

    .line 25
    new-instance v0, Lcom/jme3/math/Quaternion;

    invoke-direct {v0}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->wheelWorldRotation:Lcom/jme3/math/Quaternion;

    .line 26
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->axisDirection:Lcom/jme3/math/Vector3f;

    .line 27
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->location:Lcom/jme3/math/Vector3f;

    .line 28
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->suspensionDirection:Lcom/jme3/math/Vector3f;

    .line 29
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->wheelWorldLocation:Lcom/jme3/math/Vector3f;

    .line 30
    new-instance v0, Lcom/jme3/bullet/objects/infos/VehicleTuning;

    invoke-direct {v0}, Lcom/jme3/bullet/objects/infos/VehicleTuning;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->tuning:Lcom/jme3/bullet/objects/infos/VehicleTuning;

    .line 31
    const-string v0, "radius"

    invoke-static {p6, v0}, Lif/E;->E(FLjava/lang/String;)Z

    .line 32
    iput-object p1, p0, Lcom/jme3/bullet/objects/VehicleWheel;->subtree:Lcom/jme3/scene/Spatial;

    .line 33
    iget-object p1, p0, Lcom/jme3/bullet/objects/VehicleWheel;->location:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 34
    iget-object p1, p0, Lcom/jme3/bullet/objects/VehicleWheel;->suspensionDirection:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p3}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 35
    iget-object p1, p0, Lcom/jme3/bullet/objects/VehicleWheel;->axisDirection:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p4}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 36
    iput-boolean p7, p0, Lcom/jme3/bullet/objects/VehicleWheel;->isFront:Z

    .line 37
    iput p5, p0, Lcom/jme3/bullet/objects/VehicleWheel;->restLength:F

    .line 38
    iput p6, p0, Lcom/jme3/bullet/objects/VehicleWheel;->radius:F

    return-void
.end method

.method private applyInfo()V
    .locals 13

    .line 1
    iget-wide v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->vehicleId:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 2
    iget v2, p0, Lcom/jme3/bullet/objects/VehicleWheel;->wheelIndex:I

    .line 3
    invoke-virtual {p0}, Lcom/jme3/bullet/objects/VehicleWheel;->getSuspensionStiffness()F

    move-result v3

    .line 4
    invoke-virtual {p0}, Lcom/jme3/bullet/objects/VehicleWheel;->getWheelsDampingRelaxation()F

    move-result v4

    .line 5
    invoke-virtual {p0}, Lcom/jme3/bullet/objects/VehicleWheel;->getWheelsDampingCompression()F

    move-result v5

    .line 6
    invoke-virtual {p0}, Lcom/jme3/bullet/objects/VehicleWheel;->getFrictionSlip()F

    move-result v6

    iget v7, p0, Lcom/jme3/bullet/objects/VehicleWheel;->rollInfluence:F

    .line 7
    invoke-virtual {p0}, Lcom/jme3/bullet/objects/VehicleWheel;->getMaxSuspensionTravelCm()F

    move-result v8

    .line 8
    invoke-virtual {p0}, Lcom/jme3/bullet/objects/VehicleWheel;->getMaxSuspensionForce()F

    move-result v9

    iget v10, p0, Lcom/jme3/bullet/objects/VehicleWheel;->radius:F

    iget-boolean v11, p0, Lcom/jme3/bullet/objects/VehicleWheel;->isFront:Z

    iget v12, p0, Lcom/jme3/bullet/objects/VehicleWheel;->restLength:F

    .line 9
    invoke-static/range {v0 .. v12}, Lcom/jme3/bullet/objects/VehicleWheel;->applyInfo(JIFFFFFFFFZF)V

    :cond_0
    return-void
.end method

.method private static native applyInfo(JIFFFFFFFFZF)V
.end method

.method private static native getBrake(JI)F
.end method

.method private static native getCollisionLocation(JILcom/jme3/math/Vector3f;)V
.end method

.method private static native getCollisionNormal(JILcom/jme3/math/Vector3f;)V
.end method

.method private static native getDeltaRotation(JI)F
.end method

.method private static native getEngineForce(JI)F
.end method

.method private static native getRadius(JI)F
.end method

.method private static native getRestLength(JI)F
.end method

.method private static native getRollInfluence(JI)F
.end method

.method private static native getRotationAngle(JI)F
.end method

.method private static native getSkidInfo(JI)F
.end method

.method private static native getSteerAngle(JI)F
.end method

.method private static native getSuspensionLength(JI)F
.end method

.method private static native getWheelLocation(JILcom/jme3/math/Vector3f;)V
.end method

.method private static native getWheelRotation(JILcom/jme3/math/Matrix3f;)V
.end method

.method private static native isFront(JI)Z
.end method

.method private static native setRotationAngle(JIF)V
.end method

.method private static native setSuspensionLength(JIF)V
.end method


# virtual methods
.method public applyWheelTransform()V
    .locals 6

    iget-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->subtree:Lcom/jme3/scene/Spatial;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getLocalRotation()Lcom/jme3/math/Quaternion;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/bullet/objects/VehicleWheel;->subtree:Lcom/jme3/scene/Spatial;

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->getLocalTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/bullet/objects/VehicleWheel;->subtree:Lcom/jme3/scene/Spatial;

    invoke-virtual {v2}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v2

    iget-boolean v3, p0, Lcom/jme3/bullet/objects/VehicleWheel;->applyLocal:Z

    if-nez v3, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v2}, Lcom/jme3/scene/Spatial;->getWorldRotation()Lcom/jme3/math/Quaternion;

    move-result-object v4

    iget-object v5, p0, Lcom/jme3/bullet/objects/VehicleWheel;->wheelWorldLocation:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v5}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-virtual {v2}, Lcom/jme3/scene/Spatial;->getWorldScale()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jme3/math/Vector3f;->divideLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/bullet/objects/VehicleWheel;->tmpInverseWheelRotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {v2, v4}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/math/Quaternion;->inverseLocal()Lcom/jme3/math/Quaternion;

    iget-object v2, p0, Lcom/jme3/bullet/objects/VehicleWheel;->tmpInverseWheelRotation:Lcom/jme3/math/Quaternion;

    invoke-static {v2, v1, v1}, Ljf/g;->r(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v2, p0, Lcom/jme3/bullet/objects/VehicleWheel;->wheelWorldRotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, v2}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    iget-object v2, p0, Lcom/jme3/bullet/objects/VehicleWheel;->tmpInverseWheelRotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {v2, v4}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/math/Quaternion;->inverseLocal()Lcom/jme3/math/Quaternion;

    move-result-object v2

    invoke-virtual {v2, v0, v0}, Lcom/jme3/math/Quaternion;->mult(Lcom/jme3/math/Quaternion;Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    iget-object v2, p0, Lcom/jme3/bullet/objects/VehicleWheel;->subtree:Lcom/jme3/scene/Spatial;

    invoke-virtual {v2, v1}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    iget-object v1, p0, Lcom/jme3/bullet/objects/VehicleWheel;->subtree:Lcom/jme3/scene/Spatial;

    invoke-virtual {v1, v0}, Lcom/jme3/scene/Spatial;->setLocalRotation(Lcom/jme3/math/Quaternion;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->subtree:Lcom/jme3/scene/Spatial;

    iget-object v1, p0, Lcom/jme3/bullet/objects/VehicleWheel;->wheelWorldLocation:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    iget-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->subtree:Lcom/jme3/scene/Spatial;

    iget-object v1, p0, Lcom/jme3/bullet/objects/VehicleWheel;->wheelWorldRotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->setLocalRotation(Lcom/jme3/math/Quaternion;)V

    :goto_0
    return-void
.end method

.method public checkCopies()Z
    .locals 5

    iget-wide v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->vehicleId:J

    iget v2, p0, Lcom/jme3/bullet/objects/VehicleWheel;->wheelIndex:I

    invoke-static {v0, v1, v2}, Lcom/jme3/bullet/objects/VehicleWheel;->isFront(JI)Z

    move-result v0

    iget-boolean v1, p0, Lcom/jme3/bullet/objects/VehicleWheel;->isFront:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->vehicleId:J

    iget v4, p0, Lcom/jme3/bullet/objects/VehicleWheel;->wheelIndex:I

    invoke-static {v0, v1, v4}, Lcom/jme3/bullet/objects/VehicleWheel;->getRadius(JI)F

    move-result v0

    iget v1, p0, Lcom/jme3/bullet/objects/VehicleWheel;->radius:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    :cond_2
    :goto_1
    if-eqz v0, :cond_4

    iget-wide v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->vehicleId:J

    iget v4, p0, Lcom/jme3/bullet/objects/VehicleWheel;->wheelIndex:I

    invoke-static {v0, v1, v4}, Lcom/jme3/bullet/objects/VehicleWheel;->getRestLength(JI)F

    move-result v0

    iget v1, p0, Lcom/jme3/bullet/objects/VehicleWheel;->restLength:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    move v0, v3

    goto :goto_2

    :cond_3
    move v0, v2

    :cond_4
    :goto_2
    if-eqz v0, :cond_6

    iget-wide v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->vehicleId:J

    iget v4, p0, Lcom/jme3/bullet/objects/VehicleWheel;->wheelIndex:I

    invoke-static {v0, v1, v4}, Lcom/jme3/bullet/objects/VehicleWheel;->getRollInfluence(JI)F

    move-result v0

    iget v1, p0, Lcom/jme3/bullet/objects/VehicleWheel;->rollInfluence:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_5

    move v2, v3

    :cond_5
    move v0, v2

    :cond_6
    return v0
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->location:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->location:Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->suspensionDirection:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->suspensionDirection:Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->axisDirection:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->axisDirection:Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->tuning:Lcom/jme3/bullet/objects/infos/VehicleTuning;

    invoke-virtual {p1, v0}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/objects/infos/VehicleTuning;

    iput-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->tuning:Lcom/jme3/bullet/objects/infos/VehicleTuning;

    iget-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->wheelWorldLocation:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->wheelWorldLocation:Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->wheelWorldRotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {p1, v0}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Quaternion;

    iput-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->wheelWorldRotation:Lcom/jme3/math/Quaternion;

    iget-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->subtree:Lcom/jme3/scene/Spatial;

    invoke-virtual {p1, v0}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    iput-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->subtree:Lcom/jme3/scene/Spatial;

    iget-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->tmpMatrix:Lcom/jme3/math/Matrix3f;

    invoke-virtual {p1, v0}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Matrix3f;

    iput-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->tmpMatrix:Lcom/jme3/math/Matrix3f;

    iget-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->tmpInverseWheelRotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {p1, v0}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Quaternion;

    iput-object p1, p0, Lcom/jme3/bullet/objects/VehicleWheel;->tmpInverseWheelRotation:Lcom/jme3/math/Quaternion;

    check-cast p2, Lcom/jme3/bullet/objects/VehicleWheel;

    invoke-virtual {p2}, Lcom/jme3/bullet/objects/VehicleWheel;->getRotationAngle()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/objects/VehicleWheel;->setRotationAngle(F)V

    invoke-virtual {p2}, Lcom/jme3/bullet/objects/VehicleWheel;->getSuspensionLength()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/objects/VehicleWheel;->setSuspensionLength(F)V

    return-void
.end method

.method public getAxle(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/jme3/bullet/objects/VehicleWheel;->axisDirection:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->axisDirection:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getBrake()F
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->vehicleId:J

    iget v2, p0, Lcom/jme3/bullet/objects/VehicleWheel;->wheelIndex:I

    invoke-static {v0, v1, v2}, Lcom/jme3/bullet/objects/VehicleWheel;->getBrake(JI)F

    move-result v0

    return v0
.end method

.method public getCollisionLocation()Lcom/jme3/math/Vector3f;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/VehicleWheel;->getCollisionLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getCollisionLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 3

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->vehicleId:J

    iget v2, p0, Lcom/jme3/bullet/objects/VehicleWheel;->wheelIndex:I

    invoke-static {v0, v1, v2, p1}, Lcom/jme3/bullet/objects/VehicleWheel;->getCollisionLocation(JILcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public getCollisionNormal()Lcom/jme3/math/Vector3f;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/VehicleWheel;->getCollisionNormal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getCollisionNormal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 3

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->vehicleId:J

    iget v2, p0, Lcom/jme3/bullet/objects/VehicleWheel;->wheelIndex:I

    invoke-static {v0, v1, v2, p1}, Lcom/jme3/bullet/objects/VehicleWheel;->getCollisionNormal(JILcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public getDeltaRotation()F
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->vehicleId:J

    iget v2, p0, Lcom/jme3/bullet/objects/VehicleWheel;->wheelIndex:I

    invoke-static {v0, v1, v2}, Lcom/jme3/bullet/objects/VehicleWheel;->getDeltaRotation(JI)F

    move-result v0

    return v0
.end method

.method public getDirection(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/jme3/bullet/objects/VehicleWheel;->suspensionDirection:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->suspensionDirection:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1
.end method

.method public getEngineForce()F
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->vehicleId:J

    iget v2, p0, Lcom/jme3/bullet/objects/VehicleWheel;->wheelIndex:I

    invoke-static {v0, v1, v2}, Lcom/jme3/bullet/objects/VehicleWheel;->getEngineForce(JI)F

    move-result v0

    return v0
.end method

.method public getFrictionSlip()F
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->tuning:Lcom/jme3/bullet/objects/infos/VehicleTuning;

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/infos/VehicleTuning;->getFrictionSlip()F

    move-result v0

    return v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->wheelIndex:I

    return v0
.end method

.method public getLocation()Lcom/jme3/math/Vector3f;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/VehicleWheel;->getLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/jme3/bullet/objects/VehicleWheel;->location:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->location:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getMaxSuspensionForce()F
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->tuning:Lcom/jme3/bullet/objects/infos/VehicleTuning;

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/infos/VehicleTuning;->getMaxSuspensionForce()F

    move-result v0

    return v0
.end method

.method public getMaxSuspensionTravelCm()F
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->tuning:Lcom/jme3/bullet/objects/infos/VehicleTuning;

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/infos/VehicleTuning;->getMaxSuspensionTravelCm()F

    move-result v0

    return v0
.end method

.method public getRadius()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->radius:F

    return v0
.end method

.method public getRestLength()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->restLength:F

    return v0
.end method

.method public getRollInfluence()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->rollInfluence:F

    return v0
.end method

.method public getRotationAngle()F
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->vehicleId:J

    iget v2, p0, Lcom/jme3/bullet/objects/VehicleWheel;->wheelIndex:I

    invoke-static {v0, v1, v2}, Lcom/jme3/bullet/objects/VehicleWheel;->getRotationAngle(JI)F

    move-result v0

    return v0
.end method

.method public getSkidInfo()F
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->vehicleId:J

    iget v2, p0, Lcom/jme3/bullet/objects/VehicleWheel;->wheelIndex:I

    invoke-static {v0, v1, v2}, Lcom/jme3/bullet/objects/VehicleWheel;->getSkidInfo(JI)F

    move-result v0

    return v0
.end method

.method public getSteerAngle()F
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->vehicleId:J

    iget v2, p0, Lcom/jme3/bullet/objects/VehicleWheel;->wheelIndex:I

    invoke-static {v0, v1, v2}, Lcom/jme3/bullet/objects/VehicleWheel;->getSteerAngle(JI)F

    move-result v0

    return v0
.end method

.method public getSuspensionLength()F
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->vehicleId:J

    iget v2, p0, Lcom/jme3/bullet/objects/VehicleWheel;->wheelIndex:I

    invoke-static {v0, v1, v2}, Lcom/jme3/bullet/objects/VehicleWheel;->getSuspensionLength(JI)F

    move-result v0

    return v0
.end method

.method public getSuspensionStiffness()F
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->tuning:Lcom/jme3/bullet/objects/infos/VehicleTuning;

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/infos/VehicleTuning;->getSuspensionStiffness()F

    move-result v0

    return v0
.end method

.method public getWheelSpatial()Lcom/jme3/scene/Spatial;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->subtree:Lcom/jme3/scene/Spatial;

    return-object v0
.end method

.method public getWheelWorldLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/jme3/bullet/objects/VehicleWheel;->wheelWorldLocation:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->wheelWorldLocation:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getWheelWorldRotation(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/jme3/bullet/objects/VehicleWheel;->wheelWorldRotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {p1}, Lcom/jme3/math/Quaternion;->clone()Lcom/jme3/math/Quaternion;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->wheelWorldRotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Quaternion;->set(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getWheelsDampingCompression()F
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->tuning:Lcom/jme3/bullet/objects/infos/VehicleTuning;

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/infos/VehicleTuning;->getSuspensionCompression()F

    move-result v0

    return v0
.end method

.method public getWheelsDampingRelaxation()F
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->tuning:Lcom/jme3/bullet/objects/infos/VehicleTuning;

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/infos/VehicleTuning;->getSuspensionDamping()F

    move-result v0

    return v0
.end method

.method public isApplyLocal()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->applyLocal:Z

    return v0
.end method

.method public isFrontWheel()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->isFront:Z

    return v0
.end method

.method public jmeClone()Lcom/jme3/bullet/objects/VehicleWheel;
    .locals 2

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/objects/VehicleWheel;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic jmeClone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/objects/VehicleWheel;->jmeClone()Lcom/jme3/bullet/objects/VehicleWheel;

    move-result-object v0

    return-object v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "wheelSpatial"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Spatial;

    iput-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->subtree:Lcom/jme3/scene/Spatial;

    const-string v0, "frontWheel"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->isFront:Z

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    const-string v1, "wheelLocation"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->location:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    const-string v1, "wheelDirection"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->suspensionDirection:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    const-string v1, "wheelAxle"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->axisDirection:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/bullet/objects/infos/VehicleTuning;

    invoke-direct {v0}, Lcom/jme3/bullet/objects/infos/VehicleTuning;-><init>()V

    const-string v1, "tuning"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/objects/infos/VehicleTuning;

    iput-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->tuning:Lcom/jme3/bullet/objects/infos/VehicleTuning;

    const-string v0, "rollInfluence"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->rollInfluence:F

    const-string v0, "wheelRadius"

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->radius:F

    const-string v0, "restLength"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->restLength:F

    const-string v0, "rotationAngle"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/VehicleWheel;->setRotationAngle(F)V

    const-string v0, "suspensionLength"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/VehicleWheel;->setSuspensionLength(F)V

    const-string v0, "brake"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    const-string v0, "engineForce"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    const-string v0, "steerAngle"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    return-void
.end method

.method public setApplyLocal(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/bullet/objects/VehicleWheel;->applyLocal:Z

    return-void
.end method

.method public setFrictionSlip(F)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->tuning:Lcom/jme3/bullet/objects/infos/VehicleTuning;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/infos/VehicleTuning;->setFrictionSlip(F)V

    invoke-direct {p0}, Lcom/jme3/bullet/objects/VehicleWheel;->applyInfo()V

    return-void
.end method

.method public setFrontWheel(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/bullet/objects/VehicleWheel;->isFront:Z

    invoke-direct {p0}, Lcom/jme3/bullet/objects/VehicleWheel;->applyInfo()V

    return-void
.end method

.method public setMaxSuspensionForce(F)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->tuning:Lcom/jme3/bullet/objects/infos/VehicleTuning;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/infos/VehicleTuning;->setMaxSuspensionForce(F)V

    invoke-direct {p0}, Lcom/jme3/bullet/objects/VehicleWheel;->applyInfo()V

    return-void
.end method

.method public setMaxSuspensionTravelCm(F)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->tuning:Lcom/jme3/bullet/objects/infos/VehicleTuning;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/infos/VehicleTuning;->setMaxSuspensionTravelCm(F)V

    invoke-direct {p0}, Lcom/jme3/bullet/objects/VehicleWheel;->applyInfo()V

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/bullet/objects/VehicleWheel;->radius:F

    invoke-direct {p0}, Lcom/jme3/bullet/objects/VehicleWheel;->applyInfo()V

    return-void
.end method

.method public setRestLength(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/bullet/objects/VehicleWheel;->restLength:F

    invoke-direct {p0}, Lcom/jme3/bullet/objects/VehicleWheel;->applyInfo()V

    return-void
.end method

.method public setRollInfluence(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/bullet/objects/VehicleWheel;->rollInfluence:F

    invoke-direct {p0}, Lcom/jme3/bullet/objects/VehicleWheel;->applyInfo()V

    return-void
.end method

.method public setRotationAngle(F)V
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->vehicleId:J

    iget v2, p0, Lcom/jme3/bullet/objects/VehicleWheel;->wheelIndex:I

    invoke-static {v0, v1, v2, p1}, Lcom/jme3/bullet/objects/VehicleWheel;->setRotationAngle(JIF)V

    return-void
.end method

.method public setSuspensionLength(F)V
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->vehicleId:J

    iget v2, p0, Lcom/jme3/bullet/objects/VehicleWheel;->wheelIndex:I

    invoke-static {v0, v1, v2, p1}, Lcom/jme3/bullet/objects/VehicleWheel;->setSuspensionLength(JIF)V

    return-void
.end method

.method public setSuspensionStiffness(F)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->tuning:Lcom/jme3/bullet/objects/infos/VehicleTuning;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/infos/VehicleTuning;->setSuspensionStiffness(F)V

    invoke-direct {p0}, Lcom/jme3/bullet/objects/VehicleWheel;->applyInfo()V

    return-void
.end method

.method public setVehicleId(JI)V
    .locals 1

    const-string v0, "vehicle ID"

    invoke-static {p1, p2, v0}, Lif/E;->x(JLjava/lang/String;)Z

    const-string v0, "wheel index"

    invoke-static {p3, v0}, Lif/E;->q(ILjava/lang/String;)Z

    iput-wide p1, p0, Lcom/jme3/bullet/objects/VehicleWheel;->vehicleId:J

    iput p3, p0, Lcom/jme3/bullet/objects/VehicleWheel;->wheelIndex:I

    invoke-direct {p0}, Lcom/jme3/bullet/objects/VehicleWheel;->applyInfo()V

    return-void
.end method

.method public setWheelSpatial(Lcom/jme3/scene/Spatial;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/bullet/objects/VehicleWheel;->subtree:Lcom/jme3/scene/Spatial;

    return-void
.end method

.method public setWheelsDampingCompression(F)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->tuning:Lcom/jme3/bullet/objects/infos/VehicleTuning;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/infos/VehicleTuning;->setSuspensionCompression(F)V

    invoke-direct {p0}, Lcom/jme3/bullet/objects/VehicleWheel;->applyInfo()V

    return-void
.end method

.method public setWheelsDampingRelaxation(F)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->tuning:Lcom/jme3/bullet/objects/infos/VehicleTuning;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/infos/VehicleTuning;->setSuspensionDamping(F)V

    invoke-direct {p0}, Lcom/jme3/bullet/objects/VehicleWheel;->applyInfo()V

    return-void
.end method

.method public updatePhysicsState()V
    .locals 4

    iget-wide v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->vehicleId:J

    iget v2, p0, Lcom/jme3/bullet/objects/VehicleWheel;->wheelIndex:I

    iget-object v3, p0, Lcom/jme3/bullet/objects/VehicleWheel;->wheelWorldLocation:Lcom/jme3/math/Vector3f;

    invoke-static {v0, v1, v2, v3}, Lcom/jme3/bullet/objects/VehicleWheel;->getWheelLocation(JILcom/jme3/math/Vector3f;)V

    iget-wide v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->vehicleId:J

    iget v2, p0, Lcom/jme3/bullet/objects/VehicleWheel;->wheelIndex:I

    iget-object v3, p0, Lcom/jme3/bullet/objects/VehicleWheel;->tmpMatrix:Lcom/jme3/math/Matrix3f;

    invoke-static {v0, v1, v2, v3}, Lcom/jme3/bullet/objects/VehicleWheel;->getWheelRotation(JILcom/jme3/math/Matrix3f;)V

    iget-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->wheelWorldRotation:Lcom/jme3/math/Quaternion;

    iget-object v1, p0, Lcom/jme3/bullet/objects/VehicleWheel;->tmpMatrix:Lcom/jme3/math/Matrix3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Quaternion;->fromRotationMatrix(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Quaternion;

    iget-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->wheelWorldRotation:Lcom/jme3/math/Quaternion;

    invoke-static {v0}, Lcom/jme3/math/Quaternion;->isValidQuaternion(Lcom/jme3/math/Quaternion;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->wheelWorldRotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {v0}, Lcom/jme3/math/Quaternion;->loadIdentity()V

    :cond_0
    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->subtree:Lcom/jme3/scene/Spatial;

    const-string v1, "wheelSpatial"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-boolean v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->isFront:Z

    const-string v1, "frontWheel"

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    iget-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->location:Lcom/jme3/math/Vector3f;

    const-string v1, "wheelLocation"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->suspensionDirection:Lcom/jme3/math/Vector3f;

    const-string v1, "wheelDirection"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->axisDirection:Lcom/jme3/math/Vector3f;

    const-string v1, "wheelAxle"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->tuning:Lcom/jme3/bullet/objects/infos/VehicleTuning;

    const-string v1, "tuning"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->rollInfluence:F

    const-string v1, "rollInfluence"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->radius:F

    const-string v1, "wheelRadius"

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/bullet/objects/VehicleWheel;->restLength:F

    const-string v1, "restLength"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/VehicleWheel;->getBrake()F

    move-result v0

    const-string v1, "brake"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/VehicleWheel;->getEngineForce()F

    move-result v0

    const-string v1, "engineForce"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/VehicleWheel;->getRotationAngle()F

    move-result v0

    const-string v1, "rotationAngle"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/VehicleWheel;->getSteerAngle()F

    move-result v0

    const-string v1, "steerAngle"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/VehicleWheel;->getSuspensionLength()F

    move-result v0

    const-string v1, "suspensionLength"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    return-void
.end method
