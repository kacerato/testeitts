.class public Lcom/jme3/bullet/objects/PhysicsVehicle;
.super Lcom/jme3/bullet/objects/PhysicsRigidBody;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger3:Ljava/util/logging/Logger;

.field private static final tagTuning:Ljava/lang/String; = "tuning"

.field private static final tagWheelsList:Ljava/lang/String; = "wheelsList"


# instance fields
.field private controller:Lcom/jme3/bullet/objects/infos/VehicleController;

.field private tuning:Lcom/jme3/bullet/objects/infos/VehicleTuning;

.field private wheels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/jme3/bullet/objects/VehicleWheel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/objects/PhysicsVehicle;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/objects/PhysicsVehicle;->logger3:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->wheels:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Lcom/jme3/bullet/objects/infos/VehicleTuning;

    invoke-direct {v0}, Lcom/jme3/bullet/objects/infos/VehicleTuning;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->tuning:Lcom/jme3/bullet/objects/infos/VehicleTuning;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V
    .locals 1

    .line 4
    invoke-direct {p0, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;-><init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    .line 5
    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x6

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->wheels:Ljava/util/ArrayList;

    .line 6
    new-instance p1, Lcom/jme3/bullet/objects/infos/VehicleTuning;

    invoke-direct {p1}, Lcom/jme3/bullet/objects/infos/VehicleTuning;-><init>()V

    iput-object p1, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->tuning:Lcom/jme3/bullet/objects/infos/VehicleTuning;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;F)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/jme3/bullet/objects/PhysicsRigidBody;-><init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;F)V

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x6

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->wheels:Ljava/util/ArrayList;

    .line 9
    new-instance p1, Lcom/jme3/bullet/objects/infos/VehicleTuning;

    invoke-direct {p1}, Lcom/jme3/bullet/objects/infos/VehicleTuning;-><init>()V

    iput-object p1, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->tuning:Lcom/jme3/bullet/objects/infos/VehicleTuning;

    return-void
.end method

.method private checkNumWheels()Z
    .locals 3

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->controller:Lcom/jme3/bullet/objects/infos/VehicleController;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->wheels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->controller:Lcom/jme3/bullet/objects/infos/VehicleController;

    invoke-virtual {v2}, Lcom/jme3/bullet/objects/infos/VehicleController;->countWheels()I

    move-result v2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public accelerate(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->wheels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/bullet/objects/VehicleWheel;

    .line 2
    iget-object v2, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->controller:Lcom/jme3/bullet/objects/infos/VehicleController;

    invoke-virtual {v2, v1, p1}, Lcom/jme3/bullet/objects/infos/VehicleController;->applyEngineForce(Lcom/jme3/bullet/objects/VehicleWheel;F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public accelerate(IF)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->wheels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string v1, "wheel index"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 4
    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->wheels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/objects/VehicleWheel;

    .line 5
    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->controller:Lcom/jme3/bullet/objects/infos/VehicleController;

    invoke-virtual {v0, p1, p2}, Lcom/jme3/bullet/objects/infos/VehicleController;->applyEngineForce(Lcom/jme3/bullet/objects/VehicleWheel;F)V

    return-void
.end method

.method public addWheel(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;FFZ)Lcom/jme3/bullet/objects/VehicleWheel;
    .locals 8

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 14
    invoke-virtual/range {v0 .. v7}, Lcom/jme3/bullet/objects/PhysicsVehicle;->addWheel(Lcom/jme3/scene/Spatial;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;FFZ)Lcom/jme3/bullet/objects/VehicleWheel;

    move-result-object p1

    return-object p1
.end method

.method public addWheel(Lcom/jme3/scene/Spatial;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;FFZ)Lcom/jme3/bullet/objects/VehicleWheel;
    .locals 10

    move-object v0, p0

    .line 1
    const-string v1, "wheel radius"

    move/from16 v8, p6

    invoke-static {v8, v1}, Lif/E;->E(FLjava/lang/String;)Z

    .line 2
    new-instance v1, Lcom/jme3/bullet/objects/VehicleWheel;

    move-object v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lcom/jme3/bullet/objects/VehicleWheel;-><init>(Lcom/jme3/scene/Spatial;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;FFZ)V

    .line 3
    iget-object v2, v0, Lcom/jme3/bullet/objects/PhysicsVehicle;->tuning:Lcom/jme3/bullet/objects/infos/VehicleTuning;

    invoke-virtual {v2}, Lcom/jme3/bullet/objects/infos/VehicleTuning;->getFrictionSlip()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jme3/bullet/objects/VehicleWheel;->setFrictionSlip(F)V

    .line 4
    iget-object v2, v0, Lcom/jme3/bullet/objects/PhysicsVehicle;->tuning:Lcom/jme3/bullet/objects/infos/VehicleTuning;

    invoke-virtual {v2}, Lcom/jme3/bullet/objects/infos/VehicleTuning;->getMaxSuspensionTravelCm()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jme3/bullet/objects/VehicleWheel;->setMaxSuspensionTravelCm(F)V

    .line 5
    iget-object v2, v0, Lcom/jme3/bullet/objects/PhysicsVehicle;->tuning:Lcom/jme3/bullet/objects/infos/VehicleTuning;

    invoke-virtual {v2}, Lcom/jme3/bullet/objects/infos/VehicleTuning;->getSuspensionStiffness()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jme3/bullet/objects/VehicleWheel;->setSuspensionStiffness(F)V

    .line 6
    iget-object v2, v0, Lcom/jme3/bullet/objects/PhysicsVehicle;->tuning:Lcom/jme3/bullet/objects/infos/VehicleTuning;

    invoke-virtual {v2}, Lcom/jme3/bullet/objects/infos/VehicleTuning;->getSuspensionCompression()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jme3/bullet/objects/VehicleWheel;->setWheelsDampingCompression(F)V

    .line 7
    iget-object v2, v0, Lcom/jme3/bullet/objects/PhysicsVehicle;->tuning:Lcom/jme3/bullet/objects/infos/VehicleTuning;

    invoke-virtual {v2}, Lcom/jme3/bullet/objects/infos/VehicleTuning;->getSuspensionDamping()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jme3/bullet/objects/VehicleWheel;->setWheelsDampingRelaxation(F)V

    .line 8
    iget-object v2, v0, Lcom/jme3/bullet/objects/PhysicsVehicle;->tuning:Lcom/jme3/bullet/objects/infos/VehicleTuning;

    invoke-virtual {v2}, Lcom/jme3/bullet/objects/infos/VehicleTuning;->getMaxSuspensionForce()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jme3/bullet/objects/VehicleWheel;->setMaxSuspensionForce(F)V

    .line 9
    iget-object v2, v0, Lcom/jme3/bullet/objects/PhysicsVehicle;->wheels:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v2, v0, Lcom/jme3/bullet/objects/PhysicsVehicle;->controller:Lcom/jme3/bullet/objects/infos/VehicleController;

    if-eqz v2, :cond_0

    .line 11
    invoke-virtual {v2}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v2

    .line 12
    iget-object v4, v0, Lcom/jme3/bullet/objects/PhysicsVehicle;->controller:Lcom/jme3/bullet/objects/infos/VehicleController;

    iget-object v5, v0, Lcom/jme3/bullet/objects/PhysicsVehicle;->tuning:Lcom/jme3/bullet/objects/infos/VehicleTuning;

    invoke-virtual {v4, v1, v5}, Lcom/jme3/bullet/objects/infos/VehicleController;->addWheel(Lcom/jme3/bullet/objects/VehicleWheel;Lcom/jme3/bullet/objects/infos/VehicleTuning;)I

    move-result v4

    .line 13
    invoke-virtual {v1, v2, v3, v4}, Lcom/jme3/bullet/objects/VehicleWheel;->setVehicleId(JI)V

    :cond_0
    return-object v1
.end method

.method public applyWheelTransforms()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->wheels:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/bullet/objects/VehicleWheel;

    invoke-virtual {v1}, Lcom/jme3/bullet/objects/VehicleWheel;->applyWheelTransform()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public brake(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->wheels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/bullet/objects/VehicleWheel;

    .line 2
    iget-object v2, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->controller:Lcom/jme3/bullet/objects/infos/VehicleController;

    invoke-virtual {v2, v1, p1}, Lcom/jme3/bullet/objects/infos/VehicleController;->brake(Lcom/jme3/bullet/objects/VehicleWheel;F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public brake(IF)V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->wheels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string v1, "wheel index"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 4
    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->wheels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/objects/VehicleWheel;

    .line 5
    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->controller:Lcom/jme3/bullet/objects/infos/VehicleController;

    invoke-virtual {v0, p1, p2}, Lcom/jme3/bullet/objects/infos/VehicleController;->brake(Lcom/jme3/bullet/objects/VehicleWheel;F)V

    return-void
.end method

.method public castRay(I)F
    .locals 3

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->wheels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string v1, "wheel index"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->wheels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/objects/VehicleWheel;

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->controller:Lcom/jme3/bullet/objects/infos/VehicleController;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/infos/VehicleController;->castRay(Lcom/jme3/bullet/objects/VehicleWheel;)F

    move-result p1

    return p1
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 1

    move-object v0, p2

    check-cast v0, Lcom/jme3/bullet/objects/PhysicsVehicle;

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->hasAssignedNativeObject()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getMotionState()Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->setVehicle(Lcom/jme3/bullet/objects/PhysicsVehicle;)V

    iget-object p2, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->wheels:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->wheels:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->tuning:Lcom/jme3/bullet/objects/infos/VehicleTuning;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/objects/infos/VehicleTuning;

    iput-object p1, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->tuning:Lcom/jme3/bullet/objects/infos/VehicleTuning;

    return-void
.end method

.method public createVehicle(Lcom/jme3/bullet/PhysicsSpace;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->isInWorld()Z

    new-instance v0, Lcom/jme3/bullet/objects/infos/VehicleController;

    invoke-direct {v0, p0, p1}, Lcom/jme3/bullet/objects/infos/VehicleController;-><init>(Lcom/jme3/bullet/objects/PhysicsVehicle;Lcom/jme3/bullet/PhysicsSpace;)V

    iput-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->controller:Lcom/jme3/bullet/objects/infos/VehicleController;

    sget-object p1, Lcom/jme3/bullet/objects/PhysicsVehicle;->logger3:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Created {0}"

    invoke-virtual {p1, v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->controller:Lcom/jme3/bullet/objects/infos/VehicleController;

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, Lcom/jme3/bullet/objects/infos/VehicleController;->setCoordinateSystem(III)V

    iget-object p1, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->controller:Lcom/jme3/bullet/objects/infos/VehicleController;

    invoke-virtual {p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    iget-object p1, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->wheels:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/bullet/objects/VehicleWheel;

    iget-object v3, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->controller:Lcom/jme3/bullet/objects/infos/VehicleController;

    iget-object v4, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->tuning:Lcom/jme3/bullet/objects/infos/VehicleTuning;

    invoke-virtual {v3, v2, v4}, Lcom/jme3/bullet/objects/infos/VehicleController;->addWheel(Lcom/jme3/bullet/objects/VehicleWheel;Lcom/jme3/bullet/objects/infos/VehicleTuning;)I

    move-result v3

    invoke-virtual {v2, v0, v1, v3}, Lcom/jme3/bullet/objects/VehicleWheel;->setVehicleId(JI)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/jme3/bullet/objects/VehicleWheel;->setSuspensionLength(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public forwardAxisIndex()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->controller:Lcom/jme3/bullet/objects/infos/VehicleController;

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/infos/VehicleController;->forwardAxisIndex()I

    move-result v0

    return v0
.end method

.method public getController()Lcom/jme3/bullet/objects/infos/VehicleController;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->controller:Lcom/jme3/bullet/objects/infos/VehicleController;

    return-object v0
.end method

.method public getCurrentVehicleSpeedKmHour()F
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->controller:Lcom/jme3/bullet/objects/infos/VehicleController;

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/infos/VehicleController;->getCurrentVehicleSpeedKmHour()F

    move-result v0

    return v0
.end method

.method public getForwardVector(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->controller:Lcom/jme3/bullet/objects/infos/VehicleController;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/infos/VehicleController;->getForwardVector(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1
.end method

.method public getFrictionSlip()F
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->tuning:Lcom/jme3/bullet/objects/infos/VehicleTuning;

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/infos/VehicleTuning;->getFrictionSlip()F

    move-result v0

    return v0
.end method

.method public getMaxSuspensionForce()F
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->tuning:Lcom/jme3/bullet/objects/infos/VehicleTuning;

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/infos/VehicleTuning;->getMaxSuspensionForce()F

    move-result v0

    return v0
.end method

.method public getMaxSuspensionTravelCm()F
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->tuning:Lcom/jme3/bullet/objects/infos/VehicleTuning;

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/infos/VehicleTuning;->getMaxSuspensionTravelCm()F

    move-result v0

    return v0
.end method

.method public getNumWheels()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->wheels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSuspensionCompression()F
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->tuning:Lcom/jme3/bullet/objects/infos/VehicleTuning;

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/infos/VehicleTuning;->getSuspensionCompression()F

    move-result v0

    return v0
.end method

.method public getSuspensionDamping()F
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->tuning:Lcom/jme3/bullet/objects/infos/VehicleTuning;

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/infos/VehicleTuning;->getSuspensionDamping()F

    move-result v0

    return v0
.end method

.method public getSuspensionStiffness()F
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->tuning:Lcom/jme3/bullet/objects/infos/VehicleTuning;

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/infos/VehicleTuning;->getSuspensionStiffness()F

    move-result v0

    return v0
.end method

.method public getTuning()Lcom/jme3/bullet/objects/infos/VehicleTuning;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->tuning:Lcom/jme3/bullet/objects/infos/VehicleTuning;

    return-object v0
.end method

.method public getVehicleId()J
    .locals 2

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->controller:Lcom/jme3/bullet/objects/infos/VehicleController;

    invoke-virtual {v0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWheel(I)Lcom/jme3/bullet/objects/VehicleWheel;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->wheels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/objects/VehicleWheel;

    return-object p1
.end method

.method public postRebuild()V
    .locals 1

    invoke-super {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->postRebuild()V

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getMotionState()Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->setVehicle(Lcom/jme3/bullet/objects/PhysicsVehicle;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCollisionSpace()Lcom/jme3/bullet/CollisionSpace;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/PhysicsSpace;

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/PhysicsVehicle;->createVehicle(Lcom/jme3/bullet/PhysicsSpace;)V

    return-void
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "tuning"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/objects/infos/VehicleTuning;

    iput-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->tuning:Lcom/jme3/bullet/objects/infos/VehicleTuning;

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "wheelsList"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->wheels:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getMotionState()Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->setVehicle(Lcom/jme3/bullet/objects/PhysicsVehicle;)V

    return-void
.end method

.method public removeWheel(I)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->wheels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->rebuildRigidBody()V

    return-void
.end method

.method public resetSuspension()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->controller:Lcom/jme3/bullet/objects/infos/VehicleController;

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/infos/VehicleController;->resetSuspension()V

    return-void
.end method

.method public rightAxisIndex()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->controller:Lcom/jme3/bullet/objects/infos/VehicleController;

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/infos/VehicleController;->rightAxisIndex()I

    move-result v0

    return v0
.end method

.method public setFrictionSlip(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->tuning:Lcom/jme3/bullet/objects/infos/VehicleTuning;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/infos/VehicleTuning;->setFrictionSlip(F)V

    return-void
.end method

.method public setFrictionSlip(IF)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->wheels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/objects/VehicleWheel;

    .line 3
    invoke-virtual {p1, p2}, Lcom/jme3/bullet/objects/VehicleWheel;->setFrictionSlip(F)V

    return-void
.end method

.method public setMaxSuspensionForce(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->tuning:Lcom/jme3/bullet/objects/infos/VehicleTuning;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/infos/VehicleTuning;->setMaxSuspensionForce(F)V

    return-void
.end method

.method public setMaxSuspensionForce(IF)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->wheels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/objects/VehicleWheel;

    .line 3
    invoke-virtual {p1, p2}, Lcom/jme3/bullet/objects/VehicleWheel;->setMaxSuspensionForce(F)V

    return-void
.end method

.method public setMaxSuspensionTravelCm(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->tuning:Lcom/jme3/bullet/objects/infos/VehicleTuning;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/infos/VehicleTuning;->setMaxSuspensionTravelCm(F)V

    return-void
.end method

.method public setMaxSuspensionTravelCm(IF)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->wheels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/objects/VehicleWheel;

    .line 3
    invoke-virtual {p1, p2}, Lcom/jme3/bullet/objects/VehicleWheel;->setMaxSuspensionTravelCm(F)V

    return-void
.end method

.method public setRollInfluence(IF)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->wheels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/objects/VehicleWheel;

    invoke-virtual {p1, p2}, Lcom/jme3/bullet/objects/VehicleWheel;->setRollInfluence(F)V

    return-void
.end method

.method public setSuspensionCompression(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->tuning:Lcom/jme3/bullet/objects/infos/VehicleTuning;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/infos/VehicleTuning;->setSuspensionCompression(F)V

    return-void
.end method

.method public setSuspensionCompression(IF)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->wheels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/objects/VehicleWheel;

    .line 3
    invoke-virtual {p1, p2}, Lcom/jme3/bullet/objects/VehicleWheel;->setWheelsDampingCompression(F)V

    return-void
.end method

.method public setSuspensionDamping(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->tuning:Lcom/jme3/bullet/objects/infos/VehicleTuning;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/infos/VehicleTuning;->setSuspensionDamping(F)V

    return-void
.end method

.method public setSuspensionDamping(IF)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->wheels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/objects/VehicleWheel;

    .line 3
    invoke-virtual {p1, p2}, Lcom/jme3/bullet/objects/VehicleWheel;->setWheelsDampingRelaxation(F)V

    return-void
.end method

.method public setSuspensionStiffness(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->tuning:Lcom/jme3/bullet/objects/infos/VehicleTuning;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/infos/VehicleTuning;->setSuspensionStiffness(F)V

    return-void
.end method

.method public setSuspensionStiffness(IF)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->wheels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/objects/VehicleWheel;

    .line 3
    invoke-virtual {p1, p2}, Lcom/jme3/bullet/objects/VehicleWheel;->setSuspensionStiffness(F)V

    return-void
.end method

.method public steer(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->wheels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/bullet/objects/VehicleWheel;

    .line 2
    invoke-virtual {v1}, Lcom/jme3/bullet/objects/VehicleWheel;->isFrontWheel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->controller:Lcom/jme3/bullet/objects/infos/VehicleController;

    invoke-virtual {v2, v1, p1}, Lcom/jme3/bullet/objects/infos/VehicleController;->steer(Lcom/jme3/bullet/objects/VehicleWheel;F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public steer(IF)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->wheels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-string v1, "wheel index"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 5
    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->wheels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/objects/VehicleWheel;

    .line 6
    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->controller:Lcom/jme3/bullet/objects/infos/VehicleController;

    invoke-virtual {v0, p1, p2}, Lcom/jme3/bullet/objects/infos/VehicleController;->steer(Lcom/jme3/bullet/objects/VehicleWheel;F)V

    return-void
.end method

.method public upAxisIndex()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->controller:Lcom/jme3/bullet/objects/infos/VehicleController;

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/infos/VehicleController;->upAxisIndex()I

    move-result v0

    return v0
.end method

.method public updateWheels()V
    .locals 3

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->controller:Lcom/jme3/bullet/objects/infos/VehicleController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->wheels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/bullet/objects/VehicleWheel;

    iget-object v2, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->controller:Lcom/jme3/bullet/objects/infos/VehicleController;

    invoke-virtual {v2, v1}, Lcom/jme3/bullet/objects/infos/VehicleController;->updateWheelTransform(Lcom/jme3/bullet/objects/VehicleWheel;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->tuning:Lcom/jme3/bullet/objects/infos/VehicleTuning;

    const-string v1, "tuning"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsVehicle;->wheels:Ljava/util/ArrayList;

    const-string v1, "wheelsList"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->writeSavableArrayList(Ljava/util/ArrayList;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
