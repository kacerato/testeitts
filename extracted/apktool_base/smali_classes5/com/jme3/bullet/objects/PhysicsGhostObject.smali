.class public Lcom/jme3/bullet/objects/PhysicsGhostObject;
.super Lcom/jme3/bullet/collision/PhysicsCollisionObject;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger2:Ljava/util/logging/Logger;

.field private static final tagPhysicsLocation:Ljava/lang/String; = "physicsLocation"

.field private static final tagPhysicsRotation:Ljava/lang/String; = "physicsRotation"


# instance fields
.field private overlappingObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/bullet/collision/PhysicsCollisionObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/objects/PhysicsGhostObject;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/objects/PhysicsGhostObject;->logger2:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/objects/PhysicsGhostObject;->overlappingObjects:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;-><init>()V

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/jme3/bullet/objects/PhysicsGhostObject;->overlappingObjects:Ljava/util/List;

    .line 5
    invoke-super {p0, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setCollisionShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    .line 6
    invoke-direct {p0}, Lcom/jme3/bullet/objects/PhysicsGhostObject;->buildObject()V

    return-void
.end method

.method private addOverlappingObject(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsGhostObject;->overlappingObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private buildObject()V
    .locals 5

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->hasAssignedNativeObject()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/jme3/bullet/objects/PhysicsGhostObject;->createGhostObject()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/jme3/bullet/NativePhysicsObject;->setNativeId(J)V

    sget-object v2, Lcom/jme3/bullet/objects/PhysicsGhostObject;->logger2:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Created {0}."

    invoke-virtual {v2, v3, v4, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/PhysicsGhostObject;->setGhostFlags(J)V

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->initUserPointer()V

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getCollisionShape()Lcom/jme3/bullet/collision/shapes/CollisionShape;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->attachCollisionShape(JJ)V

    return-void
.end method

.method private static native createGhostObject()J
.end method

.method private static native getOverlappingCount(J)I
.end method

.method private native getOverlappingObjects(J)V
.end method

.method private static native setGhostFlags(J)V
.end method

.method private static native setPhysicsLocation(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native setPhysicsLocationDp(JLcom/simsilica/mathd/Vec3d;)V
.end method

.method private static native setPhysicsRotation(JLcom/jme3/math/Matrix3f;)V
.end method

.method private static native setPhysicsRotation(JLcom/jme3/math/Quaternion;)V
.end method

.method private static native setPhysicsRotationDp(JLcom/simsilica/mathd/Matrix3d;)V
.end method

.method private static native setPhysicsRotationDp(JLcom/simsilica/mathd/Quatd;)V
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 2

    move-object v0, p2

    check-cast v0, Lcom/jme3/bullet/objects/PhysicsGhostObject;

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->hasAssignedNativeObject()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/jme3/bullet/objects/PhysicsGhostObject;->overlappingObjects:Ljava/util/List;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/jme3/bullet/objects/PhysicsGhostObject;->overlappingObjects:Ljava/util/List;

    invoke-direct {p0}, Lcom/jme3/bullet/objects/PhysicsGhostObject;->buildObject()V

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->copyPcoProperties(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/jme3/bullet/objects/PhysicsGhostObject;->setPhysicsLocation(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v0, p2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsRotationMatrix(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/jme3/bullet/objects/PhysicsGhostObject;->setPhysicsRotation(Lcom/jme3/math/Matrix3f;)V

    invoke-virtual {p0, p1, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->cloneIgnoreList(Lcom/jme3/util/clone/Cloner;Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    return-void
.end method

.method public getOverlapping(I)Lcom/jme3/bullet/collision/PhysicsCollisionObject;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsGhostObject;->overlappingObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/collision/PhysicsCollisionObject;

    return-object p1
.end method

.method public getOverlappingCount()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/objects/PhysicsGhostObject;->getOverlappingCount(J)I

    move-result v0

    return v0
.end method

.method public getOverlappingObjects()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/jme3/bullet/collision/PhysicsCollisionObject;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsGhostObject;->overlappingObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/jme3/bullet/objects/PhysicsGhostObject;->getOverlappingObjects(J)V

    .line 4
    iget-object v0, p0, Lcom/jme3/bullet/objects/PhysicsGhostObject;->overlappingObjects:Ljava/util/List;

    return-object v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    invoke-direct {p0}, Lcom/jme3/bullet/objects/PhysicsGhostObject;->buildObject()V

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->readPcoProperties(Lcom/jme3/export/InputCapsule;)V

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    const-string v1, "physicsLocation"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/PhysicsGhostObject;->setPhysicsLocation(Lcom/jme3/math/Vector3f;)V

    new-instance v0, Lcom/jme3/math/Matrix3f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix3f;-><init>()V

    const-string v1, "physicsRotation"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Matrix3f;

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/objects/PhysicsGhostObject;->setPhysicsRotation(Lcom/jme3/math/Matrix3f;)V

    return-void
.end method

.method public setCollisionShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setCollisionShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    invoke-direct {p0}, Lcom/jme3/bullet/objects/PhysicsGhostObject;->buildObject()V

    return-void
.end method

.method public setPhysicsLocation(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 1
    const-string v0, "location"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsGhostObject;->setPhysicsLocation(JLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setPhysicsLocationDp(Lcom/simsilica/mathd/Vec3d;)V
    .locals 2

    .line 1
    const-string v0, "location"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsGhostObject;->setPhysicsLocationDp(JLcom/simsilica/mathd/Vec3d;)V

    return-void
.end method

.method public setPhysicsRotation(Lcom/jme3/math/Matrix3f;)V
    .locals 2

    .line 1
    const-string v0, "orientation"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsGhostObject;->setPhysicsRotation(JLcom/jme3/math/Matrix3f;)V

    return-void
.end method

.method public setPhysicsRotation(Lcom/jme3/math/Quaternion;)V
    .locals 2

    .line 4
    const-string v0, "orientation"

    invoke-static {p1, v0}, Lif/E;->y(Lcom/jme3/math/Quaternion;Ljava/lang/String;)Z

    .line 5
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 6
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsGhostObject;->setPhysicsRotation(JLcom/jme3/math/Quaternion;)V

    return-void
.end method

.method public setPhysicsRotationDp(Lcom/simsilica/mathd/Matrix3d;)V
    .locals 2

    .line 1
    const-string v0, "orientation"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 3
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsGhostObject;->setPhysicsRotationDp(JLcom/simsilica/mathd/Matrix3d;)V

    return-void
.end method

.method public setPhysicsRotationDp(Lcom/simsilica/mathd/Quatd;)V
    .locals 2

    .line 4
    const-string v0, "orientation"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 5
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 6
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/PhysicsGhostObject;->setPhysicsRotationDp(JLcom/simsilica/mathd/Quatd;)V

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    const-string v2, "physicsLocation"

    invoke-interface {p1, v1, v2, v0}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsRotationMatrix(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;

    move-result-object v1

    const-string v2, "physicsRotation"

    invoke-interface {p1, v1, v2, v0}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
