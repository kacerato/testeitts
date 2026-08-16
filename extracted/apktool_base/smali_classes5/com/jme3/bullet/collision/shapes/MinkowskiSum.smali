.class public Lcom/jme3/bullet/collision/shapes/MinkowskiSum;
.super Lcom/jme3/bullet/collision/shapes/ConvexShape;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger2:Ljava/util/logging/Logger;

.field private static final tagShapeA:Ljava/lang/String; = "shapeA"

.field private static final tagShapeB:Ljava/lang/String; = "shapeB"


# instance fields
.field private shapeA:Lcom/jme3/bullet/collision/shapes/ConvexShape;

.field private shapeB:Lcom/jme3/bullet/collision/shapes/ConvexShape;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/collision/shapes/MinkowskiSum;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/collision/shapes/MinkowskiSum;->logger2:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bullet/collision/shapes/ConvexShape;Lcom/jme3/bullet/collision/shapes/ConvexShape;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    .line 3
    const-string v0, "shape A"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 4
    const-string v0, "shape B"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 5
    iput-object p1, p0, Lcom/jme3/bullet/collision/shapes/MinkowskiSum;->shapeA:Lcom/jme3/bullet/collision/shapes/ConvexShape;

    .line 6
    iput-object p2, p0, Lcom/jme3/bullet/collision/shapes/MinkowskiSum;->shapeB:Lcom/jme3/bullet/collision/shapes/ConvexShape;

    .line 7
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/MinkowskiSum;->createShape()V

    return-void
.end method

.method private static native createShape(JJ)J
.end method

.method private createShape()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/MinkowskiSum;->shapeA:Lcom/jme3/bullet/collision/shapes/ConvexShape;

    invoke-virtual {v0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/jme3/bullet/collision/shapes/MinkowskiSum;->shapeB:Lcom/jme3/bullet/collision/shapes/ConvexShape;

    invoke-virtual {v2}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v2

    .line 3
    invoke-static {v0, v1, v2, v3}, Lcom/jme3/bullet/collision/shapes/MinkowskiSum;->createShape(JJ)J

    move-result-wide v0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setNativeId(J)V

    .line 5
    iget-boolean v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->enableContactFilter:Z

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setContactFilterEnabled(Z)V

    .line 6
    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setScale(Lcom/jme3/math/Vector3f;)V

    .line 7
    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/MinkowskiSum;->shapeA:Lcom/jme3/bullet/collision/shapes/ConvexShape;

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->getMargin()F

    move-result v0

    iget-object v1, p0, Lcom/jme3/bullet/collision/shapes/MinkowskiSum;->shapeB:Lcom/jme3/bullet/collision/shapes/ConvexShape;

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->getMargin()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->margin:F

    return-void
.end method


# virtual methods
.method public canScale(Lcom/jme3/math/Vector3f;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->canScale(Lcom/jme3/math/Vector3f;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljf/h;->C(Lcom/jme3/math/Vector3f;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/MinkowskiSum;->shapeA:Lcom/jme3/bullet/collision/shapes/ConvexShape;

    invoke-virtual {p1, v0}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/collision/shapes/ConvexShape;

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/MinkowskiSum;->shapeA:Lcom/jme3/bullet/collision/shapes/ConvexShape;

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/MinkowskiSum;->shapeB:Lcom/jme3/bullet/collision/shapes/ConvexShape;

    invoke-virtual {p1, v0}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/bullet/collision/shapes/ConvexShape;

    iput-object p1, p0, Lcom/jme3/bullet/collision/shapes/MinkowskiSum;->shapeB:Lcom/jme3/bullet/collision/shapes/ConvexShape;

    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/MinkowskiSum;->createShape()V

    check-cast p2, Lcom/jme3/bullet/collision/shapes/MinkowskiSum;

    invoke-virtual {p0, p2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->copyShapeProperties(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    return-void
.end method

.method public getMargin()F
    .locals 2

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/MinkowskiSum;->shapeA:Lcom/jme3/bullet/collision/shapes/ConvexShape;

    invoke-virtual {v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->nativeMargin()F

    move-result v0

    iget-object v1, p0, Lcom/jme3/bullet/collision/shapes/MinkowskiSum;->shapeB:Lcom/jme3/bullet/collision/shapes/ConvexShape;

    invoke-virtual {v1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->nativeMargin()F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->margin:F

    invoke-super {p0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->getMargin()F

    move-result v0

    return v0
.end method

.method public getShapeA()Lcom/jme3/bullet/collision/shapes/ConvexShape;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/MinkowskiSum;->shapeA:Lcom/jme3/bullet/collision/shapes/ConvexShape;

    return-object v0
.end method

.method public getShapeB()Lcom/jme3/bullet/collision/shapes/ConvexShape;
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/MinkowskiSum;->shapeB:Lcom/jme3/bullet/collision/shapes/ConvexShape;

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

    const-string v0, "shapeA"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/collision/shapes/ConvexShape;

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/MinkowskiSum;->shapeA:Lcom/jme3/bullet/collision/shapes/ConvexShape;

    const-string v0, "shapeB"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/bullet/collision/shapes/ConvexShape;

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/MinkowskiSum;->shapeB:Lcom/jme3/bullet/collision/shapes/ConvexShape;

    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/MinkowskiSum;->createShape()V

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->readShapeProperties(Lcom/jme3/export/InputCapsule;)V

    return-void
.end method

.method public setMargin(F)V
    .locals 2

    sget-object p1, Lcom/jme3/bullet/collision/shapes/MinkowskiSum;->logger2:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v1, "Cannot directly alter the margin of a MinkowskiSum"

    invoke-virtual {p1, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

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

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/MinkowskiSum;->shapeA:Lcom/jme3/bullet/collision/shapes/ConvexShape;

    const-string v1, "shapeA"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/MinkowskiSum;->shapeB:Lcom/jme3/bullet/collision/shapes/ConvexShape;

    const-string v1, "shapeB"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
