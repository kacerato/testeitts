.class public Lcom/jme3/bullet/collision/shapes/PlaneCollisionShape;
.super Lcom/jme3/bullet/collision/shapes/CollisionShape;
.source "SourceFile"


# static fields
.field public static final logger2:Ljava/util/logging/Logger;

.field private static final tagCollisionPlane:Ljava/lang/String; = "collisionPlane"


# instance fields
.field private plane:Lcom/jme3/math/Plane;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/collision/shapes/PlaneCollisionShape;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/collision/shapes/PlaneCollisionShape;->logger2:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Plane;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;-><init>()V

    .line 3
    invoke-virtual {p1}, Lcom/jme3/math/Plane;->clone()Lcom/jme3/math/Plane;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/collision/shapes/PlaneCollisionShape;->plane:Lcom/jme3/math/Plane;

    .line 4
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/PlaneCollisionShape;->createShape()V

    return-void
.end method

.method private static native createShape(Lcom/jme3/math/Vector3f;F)J
.end method

.method private createShape()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/PlaneCollisionShape;->plane:Lcom/jme3/math/Plane;

    invoke-virtual {v0}, Lcom/jme3/math/Plane;->getNormal()Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/bullet/collision/shapes/PlaneCollisionShape;->plane:Lcom/jme3/math/Plane;

    invoke-virtual {v1}, Lcom/jme3/math/Plane;->getConstant()F

    move-result v1

    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/shapes/PlaneCollisionShape;->createShape(Lcom/jme3/math/Vector3f;F)J

    move-result-wide v0

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setNativeId(J)V

    .line 3
    iget-boolean v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->enableContactFilter:Z

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setContactFilterEnabled(Z)V

    .line 4
    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setScale(Lcom/jme3/math/Vector3f;)V

    .line 5
    iget v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->margin:F

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setMargin(F)V

    return-void
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/PlaneCollisionShape;->plane:Lcom/jme3/math/Plane;

    invoke-virtual {p1, v0}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Plane;

    iput-object p1, p0, Lcom/jme3/bullet/collision/shapes/PlaneCollisionShape;->plane:Lcom/jme3/math/Plane;

    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/PlaneCollisionShape;->createShape()V

    check-cast p2, Lcom/jme3/bullet/collision/shapes/PlaneCollisionShape;

    invoke-virtual {p0, p2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->copyShapeProperties(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    return-void
.end method

.method public final getPlane()Lcom/jme3/math/Plane;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/PlaneCollisionShape;->plane:Lcom/jme3/math/Plane;

    invoke-virtual {v0}, Lcom/jme3/math/Plane;->clone()Lcom/jme3/math/Plane;

    move-result-object v0

    return-object v0
.end method

.method public maxRadius()F
    .locals 1

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    new-instance v0, Lcom/jme3/math/Plane;

    invoke-direct {v0}, Lcom/jme3/math/Plane;-><init>()V

    const-string v1, "collisionPlane"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Plane;

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/PlaneCollisionShape;->plane:Lcom/jme3/math/Plane;

    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/PlaneCollisionShape;->createShape()V

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->readShapeProperties(Lcom/jme3/export/InputCapsule;)V

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/PlaneCollisionShape;->plane:Lcom/jme3/math/Plane;

    new-instance v1, Lcom/jme3/math/Plane;

    invoke-direct {v1}, Lcom/jme3/math/Plane;-><init>()V

    const-string v2, "collisionPlane"

    invoke-interface {p1, v0, v2, v1}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
