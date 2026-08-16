.class public Lcom/jme3/bullet/collision/shapes/Convex2dShape;
.super Lcom/jme3/bullet/collision/shapes/ConvexShape;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger2:Ljava/util/logging/Logger;

.field private static final tagBase:Ljava/lang/String; = "base"


# instance fields
.field private base:Lcom/jme3/bullet/collision/shapes/ConvexShape;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/collision/shapes/Convex2dShape;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/collision/shapes/Convex2dShape;->logger2:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/collision/shapes/ConvexShape;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    .line 3
    const-string v0, "base"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 4
    iput-object p1, p0, Lcom/jme3/bullet/collision/shapes/Convex2dShape;->base:Lcom/jme3/bullet/collision/shapes/ConvexShape;

    .line 5
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/Convex2dShape;->createShape()V

    return-void
.end method

.method public constructor <init>(Ljava/nio/FloatBuffer;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    .line 7
    const-string v0, "flipped buffer"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 8
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    .line 9
    const-string v1, "buffer limit"

    invoke-static {v0, v1}, Lif/E;->F(ILjava/lang/String;)Z

    .line 10
    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "buffer limit a multiple of 3"

    invoke-static {v0, v1}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 11
    new-instance v0, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;

    invoke-direct {v0, p1}, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;-><init>(Ljava/nio/FloatBuffer;)V

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/Convex2dShape;->base:Lcom/jme3/bullet/collision/shapes/ConvexShape;

    .line 12
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/Convex2dShape;->createShape()V

    return-void
.end method

.method private static native createShape(J)J
.end method

.method private createShape()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/Convex2dShape;->base:Lcom/jme3/bullet/collision/shapes/ConvexShape;

    invoke-virtual {v0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/shapes/Convex2dShape;->createShape(J)J

    move-result-wide v0

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setNativeId(J)V

    .line 4
    iget-boolean v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->enableContactFilter:Z

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setContactFilterEnabled(Z)V

    .line 5
    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/shapes/Convex2dShape;->setScale(Lcom/jme3/math/Vector3f;)V

    .line 6
    iget v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->margin:F

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setMargin(F)V

    return-void
.end method


# virtual methods
.method public canScale(Lcom/jme3/math/Vector3f;)Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/Convex2dShape;->base:Lcom/jme3/bullet/collision/shapes/ConvexShape;

    invoke-virtual {v0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->canScale(Lcom/jme3/math/Vector3f;)Z

    move-result p1

    return p1
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/Convex2dShape;->base:Lcom/jme3/bullet/collision/shapes/ConvexShape;

    invoke-virtual {p1, v0}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/collision/shapes/ConvexShape;

    iput-object p1, p0, Lcom/jme3/bullet/collision/shapes/Convex2dShape;->base:Lcom/jme3/bullet/collision/shapes/ConvexShape;

    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/Convex2dShape;->createShape()V

    check-cast p2, Lcom/jme3/bullet/collision/shapes/Convex2dShape;

    invoke-virtual {p0, p2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->copyShapeProperties(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    return-void
.end method

.method public getBaseShape()Lcom/jme3/bullet/collision/shapes/ConvexShape;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/Convex2dShape;->base:Lcom/jme3/bullet/collision/shapes/ConvexShape;

    return-object v0
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

    const-string v0, "base"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/collision/shapes/ConvexShape;

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/Convex2dShape;->base:Lcom/jme3/bullet/collision/shapes/ConvexShape;

    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/Convex2dShape;->createShape()V

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->readShapeProperties(Lcom/jme3/export/InputCapsule;)V

    return-void
.end method

.method public setScale(Lcom/jme3/math/Vector3f;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setScale(Lcom/jme3/math/Vector3f;)V

    iget-object p1, p0, Lcom/jme3/bullet/collision/shapes/Convex2dShape;->base:Lcom/jme3/bullet/collision/shapes/ConvexShape;

    invoke-virtual {p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->updateScale()V

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

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/Convex2dShape;->base:Lcom/jme3/bullet/collision/shapes/ConvexShape;

    const-string v1, "base"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
