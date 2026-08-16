.class public Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;
.super Lcom/jme3/bullet/collision/shapes/ConvexShape;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger2:Ljava/util/logging/Logger;

.field private static final tagAxis:Ljava/lang/String; = "axis"

.field private static final tagHeight:Ljava/lang/String; = "height"

.field private static final tagRadius:Ljava/lang/String; = "radius"


# instance fields
.field private axis:I

.field private height:F

.field private radius:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;->logger2:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    .line 11
    const-string v0, "radius"

    invoke-static {p1, v0}, Lif/E;->p(FLjava/lang/String;)Z

    .line 12
    const-string v0, "height"

    invoke-static {p2, v0}, Lif/E;->p(FLjava/lang/String;)Z

    .line 13
    iput p1, p0, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;->radius:F

    .line 14
    iput p2, p0, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;->height:F

    const/4 p1, 0x1

    .line 15
    iput p1, p0, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;->axis:I

    .line 16
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;->createShape()V

    return-void
.end method

.method public constructor <init>(FFI)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    .line 3
    const-string v0, "radius"

    invoke-static {p1, v0}, Lif/E;->p(FLjava/lang/String;)Z

    .line 4
    const-string v0, "height"

    invoke-static {p2, v0}, Lif/E;->p(FLjava/lang/String;)Z

    .line 5
    const-string v0, "axis index"

    invoke-static {p3, v0}, Lif/E;->a(ILjava/lang/String;)Z

    .line 6
    iput p1, p0, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;->radius:F

    .line 7
    iput p2, p0, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;->height:F

    .line 8
    iput p3, p0, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;->axis:I

    .line 9
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;->createShape()V

    return-void
.end method

.method private static native createShape(IFF)J
.end method

.method private createShape()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;->axis:I

    iget v1, p0, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;->radius:F

    iget v2, p0, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;->height:F

    invoke-static {v0, v1, v2}, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;->createShape(IFF)J

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
.method public canScale(Lcom/jme3/math/Vector3f;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->canScale(Lcom/jme3/math/Vector3f;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljf/h;->D(Lcom/jme3/math/Vector3f;)Z

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
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;->createShape()V

    check-cast p2, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;

    invoke-virtual {p0, p2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->copyShapeProperties(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    return-void
.end method

.method public getAxis()I
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;->axis:I

    return v0
.end method

.method public getHeight()F
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;->height:F

    return v0
.end method

.method public getRadius()F
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;->radius:F

    return v0
.end method

.method public maxRadius()F
    .locals 4

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;->radius:F

    iget v1, p0, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;->height:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    invoke-static {v2}, Ljf/f;->r([F)F

    move-result v0

    iget-object v1, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->margin:F

    add-float/2addr v0, v1

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

    const-string v0, "radius"

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;->radius:F

    const-string v0, "height"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;->height:F

    const-string v0, "axis"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;->axis:I

    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;->createShape()V

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->readShapeProperties(Lcom/jme3/export/InputCapsule;)V

    return-void
.end method

.method public unscaledVolume()F
    .locals 2

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;->radius:F

    iget v1, p0, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;->height:F

    invoke-static {v0, v1}, Ljf/i;->c(FF)F

    move-result v0

    return v0
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

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;->radius:F

    const-string v1, "radius"

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;->height:F

    const-string v1, "height"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/ConeCollisionShape;->axis:I

    const-string v1, "axis"

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    return-void
.end method
