.class public Lcom/jme3/bullet/objects/infos/VehicleController;
.super Lcom/jme3/bullet/NativePhysicsObject;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final pco:Lcom/jme3/bullet/objects/PhysicsVehicle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/objects/infos/VehicleController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/objects/infos/VehicleController;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/objects/PhysicsVehicle;Lcom/jme3/bullet/PhysicsSpace;)V
    .locals 7

    invoke-direct {p0}, Lcom/jme3/bullet/NativePhysicsObject;-><init>()V

    const-string v0, "vehicle"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const-string v0, "space"

    invoke-static {p2, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    iput-object p1, p0, Lcom/jme3/bullet/objects/infos/VehicleController;->pco:Lcom/jme3/bullet/objects/PhysicsVehicle;

    invoke-virtual {p2}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/PhysicsVehicle;->getTuning()Lcom/jme3/bullet/objects/infos/VehicleTuning;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v5

    invoke-static/range {v1 .. v6}, Lcom/jme3/bullet/objects/infos/VehicleController;->createRaycastVehicle(JJJ)J

    move-result-wide p1

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/NativePhysicsObject;->setNativeId(J)V

    return-void
.end method

.method private static native addWheel(JLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;FFJZ)I
.end method

.method private static native applyEngineForce(JIF)V
.end method

.method private static native brake(JIF)V
.end method

.method private static native createRaycastVehicle(JJJ)J
.end method

.method private static native finalizeNative(J)V
.end method

.method private static freeNativeObject(J)V
    .locals 0

    invoke-static {p0, p1}, Lcom/jme3/bullet/objects/infos/VehicleController;->finalizeNative(J)V

    return-void
.end method

.method private static native getCurrentVehicleSpeedKmHour(J)F
.end method

.method private static native getForwardAxisIndex(J)I
.end method

.method private static native getForwardVector(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native getNumWheels(J)I
.end method

.method private static native getRightAxisIndex(J)I
.end method

.method private static native getUpAxisIndex(J)I
.end method

.method private static native rayCast(JI)F
.end method

.method private static native resetSuspension(J)V
.end method

.method private static native setCoordinateSystem(JIII)V
.end method

.method private static native setupCoordinateSystem(JLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
.end method

.method private static native steer(JIF)V
.end method

.method private static native updateWheelTransform(JIZ)V
.end method


# virtual methods
.method public addWheel(Lcom/jme3/bullet/objects/VehicleWheel;Lcom/jme3/bullet/objects/infos/VehicleTuning;)I
    .locals 11

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/VehicleWheel;->getLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    .line 2
    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/VehicleWheel;->getDirection(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v4

    .line 3
    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/VehicleWheel;->getAxle(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v5

    .line 4
    invoke-virtual {p1}, Lcom/jme3/bullet/objects/VehicleWheel;->getRestLength()F

    move-result v6

    .line 5
    invoke-virtual {p1}, Lcom/jme3/bullet/objects/VehicleWheel;->getRadius()F

    move-result v7

    .line 6
    invoke-virtual {p1}, Lcom/jme3/bullet/objects/VehicleWheel;->isFrontWheel()Z

    move-result v10

    .line 7
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v1

    .line 8
    invoke-virtual {p2}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v8

    .line 9
    invoke-static/range {v1 .. v10}, Lcom/jme3/bullet/objects/infos/VehicleController;->addWheel(JLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;FFJZ)I

    move-result p1

    return p1
.end method

.method public applyEngineForce(Lcom/jme3/bullet/objects/VehicleWheel;F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Lcom/jme3/bullet/objects/VehicleWheel;->getIndex()I

    move-result p1

    .line 3
    invoke-static {v0, v1, p1, p2}, Lcom/jme3/bullet/objects/infos/VehicleController;->applyEngineForce(JIF)V

    return-void
.end method

.method public brake(Lcom/jme3/bullet/objects/VehicleWheel;F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Lcom/jme3/bullet/objects/VehicleWheel;->getIndex()I

    move-result p1

    .line 3
    invoke-static {v0, v1, p1, p2}, Lcom/jme3/bullet/objects/infos/VehicleController;->brake(JIF)V

    return-void
.end method

.method public castRay(Lcom/jme3/bullet/objects/VehicleWheel;)F
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/VehicleWheel;->getIndex()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/infos/VehicleController;->rayCast(JI)F

    move-result p1

    return p1
.end method

.method public countWheels()I
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/infos/VehicleController;->getNumWheels(J)I

    move-result v0

    return v0
.end method

.method public forwardAxisIndex()I
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/infos/VehicleController;->getForwardAxisIndex(J)I

    move-result v0

    return v0
.end method

.method public getCurrentVehicleSpeedKmHour()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/infos/VehicleController;->getCurrentVehicleSpeedKmHour(J)F

    move-result v0

    return v0
.end method

.method public getForwardVector(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
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
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/infos/VehicleController;->getForwardVector(JLcom/jme3/math/Vector3f;)V

    return-object p1
.end method

.method public resetSuspension()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/infos/VehicleController;->resetSuspension(J)V

    return-void
.end method

.method public rightAxisIndex()I
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/infos/VehicleController;->getRightAxisIndex(J)I

    move-result v0

    return v0
.end method

.method public setCoordinateSystem(III)V
    .locals 2

    .line 1
    const-string v0, "right axis"

    invoke-static {p1, v0}, Lif/E;->a(ILjava/lang/String;)Z

    .line 2
    const-string v0, "up axis"

    invoke-static {p2, v0}, Lif/E;->a(ILjava/lang/String;)Z

    .line 3
    const-string v0, "forward axis"

    invoke-static {p3, v0}, Lif/E;->a(ILjava/lang/String;)Z

    .line 4
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 5
    invoke-static {v0, v1, p1, p2, p3}, Lcom/jme3/bullet/objects/infos/VehicleController;->setCoordinateSystem(JIII)V

    return-void
.end method

.method public setCoordinateSystem(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 6
    const-string v0, "right"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 7
    const-string v0, "up"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 8
    const-string v0, "forward"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 9
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 10
    invoke-static {v0, v1, p1, p2, p3}, Lcom/jme3/bullet/objects/infos/VehicleController;->setupCoordinateSystem(JLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public steer(Lcom/jme3/bullet/objects/VehicleWheel;F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Lcom/jme3/bullet/objects/VehicleWheel;->getIndex()I

    move-result p1

    .line 3
    invoke-static {v0, v1, p1, p2}, Lcom/jme3/bullet/objects/infos/VehicleController;->steer(JIF)V

    return-void
.end method

.method public upAxisIndex()I
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/infos/VehicleController;->getUpAxisIndex(J)I

    move-result v0

    return v0
.end method

.method public updateWheelTransform(Lcom/jme3/bullet/objects/VehicleWheel;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-virtual {p1}, Lcom/jme3/bullet/objects/VehicleWheel;->getIndex()I

    move-result v2

    const/4 v3, 0x1

    .line 3
    invoke-static {v0, v1, v2, v3}, Lcom/jme3/bullet/objects/infos/VehicleController;->updateWheelTransform(JIZ)V

    .line 4
    invoke-virtual {p1}, Lcom/jme3/bullet/objects/VehicleWheel;->updatePhysicsState()V

    return-void
.end method
