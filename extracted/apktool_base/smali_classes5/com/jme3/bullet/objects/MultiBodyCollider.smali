.class public Lcom/jme3/bullet/objects/MultiBodyCollider;
.super Lcom/jme3/bullet/collision/PhysicsCollisionObject;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger2:Ljava/util/logging/Logger;

.field private static final tagMultiBody:Ljava/lang/String; = "multiBody"

.field private static final tagPhysicsLocation:Ljava/lang/String; = "physicsLocation"

.field private static final tagPhysicsRotation:Ljava/lang/String; = "physicsRotation"


# instance fields
.field private linkIndex:I

.field private multiBody:Lcom/jme3/bullet/MultiBody;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/objects/MultiBodyCollider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/objects/MultiBodyCollider;->logger2:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/MultiBody;I)V
    .locals 3

    .line 2
    invoke-direct {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;-><init>()V

    .line 3
    const-string v0, "multibody"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    const/4 v0, -0x1

    const v1, 0x7fffffff

    .line 4
    const-string v2, "link index"

    invoke-static {p2, v2, v0, v1}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 5
    iput-object p1, p0, Lcom/jme3/bullet/objects/MultiBodyCollider;->multiBody:Lcom/jme3/bullet/MultiBody;

    .line 6
    iput p2, p0, Lcom/jme3/bullet/objects/MultiBodyCollider;->linkIndex:I

    .line 7
    invoke-direct {p0}, Lcom/jme3/bullet/objects/MultiBodyCollider;->buildObject()V

    return-void
.end method

.method private buildObject()V
    .locals 3

    iget-object v0, p0, Lcom/jme3/bullet/objects/MultiBodyCollider;->multiBody:Lcom/jme3/bullet/MultiBody;

    invoke-virtual {v0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    iget v2, p0, Lcom/jme3/bullet/objects/MultiBodyCollider;->linkIndex:I

    invoke-static {v0, v1, v2}, Lcom/jme3/bullet/objects/MultiBodyCollider;->createCollider(JI)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/jme3/bullet/NativePhysicsObject;->setNativeId(J)V

    sget-object v0, Lcom/jme3/bullet/objects/MultiBodyCollider;->logger2:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "Created {0}."

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->initUserPointer()V

    return-void
.end method

.method private static native createCollider(JI)J
.end method

.method private static native setPhysicsLocation(JLcom/jme3/math/Vector3f;)V
.end method

.method private static native setPhysicsLocationDp(JLcom/simsilica/mathd/Vec3d;)V
.end method

.method private static native setPhysicsRotation(JLcom/jme3/math/Matrix3f;)V
.end method

.method private static native setPhysicsRotationDp(JLcom/simsilica/mathd/Matrix3d;)V
.end method


# virtual methods
.method public attachShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V
    .locals 4

    const-string v0, "shape"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->setCollisionShape(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->attachCollisionShape(JJ)V

    return-void
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->unassignNativeObject()V

    iget-object v0, p0, Lcom/jme3/bullet/objects/MultiBodyCollider;->multiBody:Lcom/jme3/bullet/MultiBody;

    invoke-virtual {p1, v0}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/MultiBody;

    iput-object v0, p0, Lcom/jme3/bullet/objects/MultiBodyCollider;->multiBody:Lcom/jme3/bullet/MultiBody;

    invoke-direct {p0}, Lcom/jme3/bullet/objects/MultiBodyCollider;->buildObject()V

    check-cast p2, Lcom/jme3/bullet/objects/MultiBodyCollider;

    invoke-virtual {p0, p1, p2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->cloneIgnoreList(Lcom/jme3/util/clone/Cloner;Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    invoke-virtual {p0, p2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->copyPcoProperties(Lcom/jme3/bullet/collision/PhysicsCollisionObject;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/MultiBodyCollider;->setPhysicsLocation(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p2, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsRotationMatrix(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/objects/MultiBodyCollider;->setPhysicsRotation(Lcom/jme3/math/Matrix3f;)V

    return-void
.end method

.method public getMultiBody()Lcom/jme3/bullet/MultiBody;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/objects/MultiBodyCollider;->multiBody:Lcom/jme3/bullet/MultiBody;

    return-object v0
.end method

.method public linkIndex()I
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/objects/MultiBodyCollider;->linkIndex:I

    return v0
.end method

.method public mass()F
    .locals 2

    iget v0, p0, Lcom/jme3/bullet/objects/MultiBodyCollider;->linkIndex:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/jme3/bullet/objects/MultiBodyCollider;->multiBody:Lcom/jme3/bullet/MultiBody;

    invoke-virtual {v1, v0}, Lcom/jme3/bullet/MultiBody;->getLink(I)Lcom/jme3/bullet/MultiBodyLink;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/bullet/MultiBodyLink;->mass()F

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/objects/MultiBodyCollider;->multiBody:Lcom/jme3/bullet/MultiBody;

    invoke-virtual {v0}, Lcom/jme3/bullet/MultiBody;->baseMass()F

    move-result v0

    :goto_0
    return v0
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

    const-string v0, "multiBody"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/MultiBody;

    iput-object v0, p0, Lcom/jme3/bullet/objects/MultiBodyCollider;->multiBody:Lcom/jme3/bullet/MultiBody;

    invoke-direct {p0}, Lcom/jme3/bullet/objects/MultiBodyCollider;->buildObject()V

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->readPcoProperties(Lcom/jme3/export/InputCapsule;)V

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    const-string v1, "physicsLocation"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/objects/MultiBodyCollider;->setPhysicsLocation(Lcom/jme3/math/Vector3f;)V

    new-instance v0, Lcom/jme3/math/Matrix3f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix3f;-><init>()V

    const-string v1, "physicsRotation"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Matrix3f;

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/objects/MultiBodyCollider;->setPhysicsRotation(Lcom/jme3/math/Matrix3f;)V

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
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/MultiBodyCollider;->setPhysicsLocation(JLcom/jme3/math/Vector3f;)V

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
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/MultiBodyCollider;->setPhysicsLocationDp(JLcom/simsilica/mathd/Vec3d;)V

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
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/MultiBodyCollider;->setPhysicsRotation(JLcom/jme3/math/Matrix3f;)V

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
    invoke-static {v0, v1, p1}, Lcom/jme3/bullet/objects/MultiBodyCollider;->setPhysicsRotationDp(JLcom/simsilica/mathd/Matrix3d;)V

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

    iget-object v0, p0, Lcom/jme3/bullet/objects/MultiBodyCollider;->multiBody:Lcom/jme3/bullet/MultiBody;

    const-string v1, "multiBody"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    invoke-virtual {p0, v2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsLocation(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    const-string v1, "physicsLocation"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    invoke-virtual {p0, v2}, Lcom/jme3/bullet/collision/PhysicsCollisionObject;->getPhysicsRotationMatrix(Lcom/jme3/math/Matrix3f;)Lcom/jme3/math/Matrix3f;

    move-result-object v0

    const-string v1, "physicsRotation"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
