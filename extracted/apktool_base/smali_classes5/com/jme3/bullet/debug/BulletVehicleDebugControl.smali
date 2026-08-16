.class public Lcom/jme3/bullet/debug/BulletVehicleDebugControl;
.super Lcom/jme3/bullet/debug/AbstractPhysicsDebugControl;
.source "SourceFile"


# static fields
.field public static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final location:Lcom/jme3/math/Vector3f;

.field private final rotation:Lcom/jme3/math/Quaternion;

.field private final suspensionNode:Lcom/jme3/scene/Node;

.field private final vehicle:Lcom/jme3/bullet/objects/PhysicsVehicle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/debug/BulletVehicleDebugControl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/debug/BulletVehicleDebugControl;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/debug/BulletDebugAppState;Lcom/jme3/bullet/objects/PhysicsVehicle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/jme3/bullet/debug/AbstractPhysicsDebugControl;-><init>(Lcom/jme3/bullet/debug/BulletDebugAppState;)V

    new-instance p1, Lcom/jme3/math/Quaternion;

    invoke-direct {p1}, Lcom/jme3/math/Quaternion;-><init>()V

    iput-object p1, p0, Lcom/jme3/bullet/debug/BulletVehicleDebugControl;->rotation:Lcom/jme3/math/Quaternion;

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object p1, p0, Lcom/jme3/bullet/debug/BulletVehicleDebugControl;->location:Lcom/jme3/math/Vector3f;

    iput-object p2, p0, Lcom/jme3/bullet/debug/BulletVehicleDebugControl;->vehicle:Lcom/jme3/bullet/objects/PhysicsVehicle;

    new-instance p1, Lcom/jme3/scene/Node;

    const-string p2, "Suspension"

    invoke-direct {p1, p2}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/jme3/bullet/debug/BulletVehicleDebugControl;->suspensionNode:Lcom/jme3/scene/Node;

    invoke-direct {p0}, Lcom/jme3/bullet/debug/BulletVehicleDebugControl;->createVehicle()V

    return-void
.end method

.method private createVehicle()V
    .locals 10

    iget-object v0, p0, Lcom/jme3/bullet/debug/BulletVehicleDebugControl;->suspensionNode:Lcom/jme3/scene/Node;

    invoke-virtual {v0}, Lcom/jme3/scene/Node;->detachAllChildren()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/jme3/bullet/debug/BulletVehicleDebugControl;->vehicle:Lcom/jme3/bullet/objects/PhysicsVehicle;

    invoke-virtual {v1}, Lcom/jme3/bullet/objects/PhysicsVehicle;->getNumWheels()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/jme3/bullet/debug/BulletVehicleDebugControl;->vehicle:Lcom/jme3/bullet/objects/PhysicsVehicle;

    invoke-virtual {v1, v0}, Lcom/jme3/bullet/objects/PhysicsVehicle;->getWheel(I)Lcom/jme3/bullet/objects/VehicleWheel;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/jme3/bullet/objects/VehicleWheel;->getLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v1, v2}, Lcom/jme3/bullet/objects/VehicleWheel;->getDirection(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {v1, v2}, Lcom/jme3/bullet/objects/VehicleWheel;->getAxle(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v1}, Lcom/jme3/bullet/objects/VehicleWheel;->getRestLength()F

    move-result v5

    invoke-virtual {v1}, Lcom/jme3/bullet/objects/VehicleWheel;->getRadius()F

    move-result v1

    new-instance v6, Lcom/jme3/scene/debug/Arrow;

    invoke-direct {v6, v3}, Lcom/jme3/scene/debug/Arrow;-><init>(Lcom/jme3/math/Vector3f;)V

    new-instance v7, Lcom/jme3/scene/debug/Arrow;

    invoke-virtual {v2}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    move-result-object v2

    const v8, 0x3e99999a    # 0.3f

    invoke-virtual {v2, v8}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-direct {v7, v2}, Lcom/jme3/scene/debug/Arrow;-><init>(Lcom/jme3/math/Vector3f;)V

    new-instance v2, Lcom/jme3/scene/debug/Arrow;

    invoke-virtual {v4}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-direct {v2, v1}, Lcom/jme3/scene/debug/Arrow;-><init>(Lcom/jme3/math/Vector3f;)V

    new-instance v1, Lcom/jme3/scene/debug/Arrow;

    invoke-virtual {v4}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/jme3/scene/debug/Arrow;-><init>(Lcom/jme3/math/Vector3f;)V

    new-instance v5, Lcom/jme3/scene/Geometry;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WheelLocationDebugShape"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8, v6}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    new-instance v6, Lcom/jme3/scene/Geometry;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WheelDirectionDebugShape"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8, v1}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    new-instance v1, Lcom/jme3/scene/Geometry;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WheelAxleDebugShape"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8, v7}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    new-instance v7, Lcom/jme3/scene/Geometry;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WheelRadiusDebugShape"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v2}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    invoke-virtual {v6, v3}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v3, v4}, Lcom/jme3/math/Vector3f;->add(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v3, v4}, Lcom/jme3/math/Vector3f;->add(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v7, v2}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    iget-object v2, p0, Lcom/jme3/bullet/debug/AbstractPhysicsDebugControl;->debugAppState:Lcom/jme3/bullet/debug/BulletDebugAppState;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/jme3/bullet/debug/BulletDebugAppState;->getActiveMaterial(I)Lcom/jme3/material/Material;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    invoke-virtual {v6, v2}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    invoke-virtual {v1, v2}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    invoke-virtual {v7, v2}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    iget-object v2, p0, Lcom/jme3/bullet/debug/BulletVehicleDebugControl;->suspensionNode:Lcom/jme3/scene/Node;

    invoke-virtual {v2, v5}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    iget-object v2, p0, Lcom/jme3/bullet/debug/BulletVehicleDebugControl;->suspensionNode:Lcom/jme3/scene/Node;

    invoke-virtual {v2, v6}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    iget-object v2, p0, Lcom/jme3/bullet/debug/BulletVehicleDebugControl;->suspensionNode:Lcom/jme3/scene/Node;

    invoke-virtual {v2, v1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    iget-object v1, p0, Lcom/jme3/bullet/debug/BulletVehicleDebugControl;->suspensionNode:Lcom/jme3/scene/Node;

    invoke-virtual {v1, v7}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public controlUpdate(F)V
    .locals 11

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/jme3/bullet/debug/BulletVehicleDebugControl;->vehicle:Lcom/jme3/bullet/objects/PhysicsVehicle;

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/PhysicsVehicle;->getNumWheels()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/jme3/bullet/debug/BulletVehicleDebugControl;->vehicle:Lcom/jme3/bullet/objects/PhysicsVehicle;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/objects/PhysicsVehicle;->getWheel(I)Lcom/jme3/bullet/objects/VehicleWheel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/objects/VehicleWheel;->getLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/objects/VehicleWheel;->getDirection(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/objects/VehicleWheel;->getAxle(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/VehicleWheel;->getRestLength()F

    move-result v4

    invoke-virtual {v0}, Lcom/jme3/bullet/objects/VehicleWheel;->getRadius()F

    move-result v0

    iget-object v5, p0, Lcom/jme3/bullet/debug/BulletVehicleDebugControl;->suspensionNode:Lcom/jme3/scene/Node;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WheelLocationDebugShape"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/jme3/scene/Node;->getChild(Ljava/lang/String;)Lcom/jme3/scene/Spatial;

    move-result-object v5

    check-cast v5, Lcom/jme3/scene/Geometry;

    iget-object v6, p0, Lcom/jme3/bullet/debug/BulletVehicleDebugControl;->suspensionNode:Lcom/jme3/scene/Node;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WheelDirectionDebugShape"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/jme3/scene/Node;->getChild(Ljava/lang/String;)Lcom/jme3/scene/Spatial;

    move-result-object v6

    check-cast v6, Lcom/jme3/scene/Geometry;

    iget-object v7, p0, Lcom/jme3/bullet/debug/BulletVehicleDebugControl;->suspensionNode:Lcom/jme3/scene/Node;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "WheelAxleDebugShape"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/jme3/scene/Node;->getChild(Ljava/lang/String;)Lcom/jme3/scene/Spatial;

    move-result-object v7

    check-cast v7, Lcom/jme3/scene/Geometry;

    iget-object v8, p0, Lcom/jme3/bullet/debug/BulletVehicleDebugControl;->suspensionNode:Lcom/jme3/scene/Node;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WheelRadiusDebugShape"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/jme3/scene/Node;->getChild(Ljava/lang/String;)Lcom/jme3/scene/Spatial;

    move-result-object v8

    check-cast v8, Lcom/jme3/scene/Geometry;

    invoke-virtual {v5}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v5

    check-cast v5, Lcom/jme3/scene/debug/Arrow;

    invoke-virtual {v5, v2}, Lcom/jme3/scene/debug/Arrow;->setArrowExtent(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v7}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v5

    check-cast v5, Lcom/jme3/scene/debug/Arrow;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    move-result-object v1

    const v9, 0x3e99999a    # 0.3f

    invoke-virtual {v1, v9}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/jme3/scene/debug/Arrow;->setArrowExtent(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v8}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/debug/Arrow;

    invoke-virtual {v3}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/jme3/scene/debug/Arrow;->setArrowExtent(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v6}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/debug/Arrow;

    invoke-virtual {v3}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/scene/debug/Arrow;->setArrowExtent(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v6, v2}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v2, v3}, Lcom/jme3/math/Vector3f;->addLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v8, v2}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/jme3/bullet/debug/BulletVehicleDebugControl;->vehicle:Lcom/jme3/bullet/objects/PhysicsVehicle;

    invoke-virtual {p1}, Lcom/jme3/bullet/objects/PhysicsRigidBody;->getMotionState()Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/bullet/debug/BulletVehicleDebugControl;->location:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->getLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/bullet/debug/BulletVehicleDebugControl;->rotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {p1, v0}, Lcom/jme3/bullet/objects/infos/RigidBodyMotionState;->getOrientation(Lcom/jme3/math/Quaternion;)Lcom/jme3/math/Quaternion;

    iget-object p1, p0, Lcom/jme3/bullet/debug/BulletVehicleDebugControl;->location:Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/bullet/debug/BulletVehicleDebugControl;->rotation:Lcom/jme3/math/Quaternion;

    invoke-virtual {p0, p1, v0}, Lcom/jme3/bullet/debug/AbstractPhysicsDebugControl;->applyPhysicsTransform(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Quaternion;)V

    return-void
.end method

.method public setSpatial(Lcom/jme3/scene/Spatial;)V
    .locals 2

    instance-of v0, p1, Lcom/jme3/scene/Node;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/jme3/scene/Node;

    iget-object v1, p0, Lcom/jme3/bullet/debug/BulletVehicleDebugControl;->suspensionNode:Lcom/jme3/scene/Node;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/jme3/scene/control/AbstractControl;->spatial:Lcom/jme3/scene/Spatial;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/jme3/scene/Node;

    iget-object v1, p0, Lcom/jme3/bullet/debug/BulletVehicleDebugControl;->suspensionNode:Lcom/jme3/scene/Node;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->detachChild(Lcom/jme3/scene/Spatial;)I

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/jme3/scene/control/AbstractControl;->setSpatial(Lcom/jme3/scene/Spatial;)V

    return-void
.end method
