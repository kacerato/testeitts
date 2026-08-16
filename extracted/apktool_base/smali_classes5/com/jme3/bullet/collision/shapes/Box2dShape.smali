.class public Lcom/jme3/bullet/collision/shapes/Box2dShape;
.super Lcom/jme3/bullet/collision/shapes/ConvexShape;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger2:Ljava/util/logging/Logger;

.field private static final tagX:Ljava/lang/String; = "halfExtentX"

.field private static final tagY:Ljava/lang/String; = "halfExtentY"


# instance fields
.field private halfExtentX:F

.field private halfExtentY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/collision/shapes/Box2dShape;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/collision/shapes/Box2dShape;->logger2:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/jme3/bullet/collision/shapes/Box2dShape;->halfExtentX:F

    .line 3
    iput v0, p0, Lcom/jme3/bullet/collision/shapes/Box2dShape;->halfExtentY:F

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    iput v0, p0, Lcom/jme3/bullet/collision/shapes/Box2dShape;->halfExtentX:F

    .line 6
    iput v0, p0, Lcom/jme3/bullet/collision/shapes/Box2dShape;->halfExtentY:F

    .line 7
    const-string v0, "half extent"

    invoke-static {p1, v0}, Lif/E;->p(FLjava/lang/String;)Z

    .line 8
    iput p1, p0, Lcom/jme3/bullet/collision/shapes/Box2dShape;->halfExtentX:F

    .line 9
    iput p1, p0, Lcom/jme3/bullet/collision/shapes/Box2dShape;->halfExtentY:F

    .line 10
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/Box2dShape;->createShape()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1

    .line 11
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 12
    iput v0, p0, Lcom/jme3/bullet/collision/shapes/Box2dShape;->halfExtentX:F

    .line 13
    iput v0, p0, Lcom/jme3/bullet/collision/shapes/Box2dShape;->halfExtentY:F

    .line 14
    const-string v0, "half extent on X"

    invoke-static {p1, v0}, Lif/E;->p(FLjava/lang/String;)Z

    .line 15
    const-string v0, "half extent on Y"

    invoke-static {p2, v0}, Lif/E;->p(FLjava/lang/String;)Z

    .line 16
    iput p1, p0, Lcom/jme3/bullet/collision/shapes/Box2dShape;->halfExtentX:F

    .line 17
    iput p2, p0, Lcom/jme3/bullet/collision/shapes/Box2dShape;->halfExtentY:F

    .line 18
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/Box2dShape;->createShape()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector2f;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 20
    iput v0, p0, Lcom/jme3/bullet/collision/shapes/Box2dShape;->halfExtentX:F

    .line 21
    iput v0, p0, Lcom/jme3/bullet/collision/shapes/Box2dShape;->halfExtentY:F

    .line 22
    const-string v0, "half extents"

    invoke-static {p1, v0}, Lif/E;->r(Lcom/jme3/math/Vector2f;Ljava/lang/String;)Z

    .line 23
    iget v0, p1, Lcom/jme3/math/Vector2f;->x:F

    iput v0, p0, Lcom/jme3/bullet/collision/shapes/Box2dShape;->halfExtentX:F

    .line 24
    iget p1, p1, Lcom/jme3/math/Vector2f;->y:F

    iput p1, p0, Lcom/jme3/bullet/collision/shapes/Box2dShape;->halfExtentY:F

    .line 25
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/Box2dShape;->createShape()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 27
    iput v0, p0, Lcom/jme3/bullet/collision/shapes/Box2dShape;->halfExtentX:F

    .line 28
    iput v0, p0, Lcom/jme3/bullet/collision/shapes/Box2dShape;->halfExtentY:F

    .line 29
    const-string v0, "half extents"

    invoke-static {p1, v0}, Lif/E;->s(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 30
    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    iput v0, p0, Lcom/jme3/bullet/collision/shapes/Box2dShape;->halfExtentX:F

    .line 31
    iget p1, p1, Lcom/jme3/math/Vector3f;->y:F

    iput p1, p0, Lcom/jme3/bullet/collision/shapes/Box2dShape;->halfExtentY:F

    .line 32
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/Box2dShape;->createShape()V

    return-void
.end method

.method private static native createShape(FFF)J
.end method

.method private createShape()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/jme3/bullet/collision/shapes/Box2dShape;->halfExtentX:F

    iget v1, p0, Lcom/jme3/bullet/collision/shapes/Box2dShape;->halfExtentY:F

    iget v2, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->margin:F

    invoke-static {v0, v1, v2}, Lcom/jme3/bullet/collision/shapes/Box2dShape;->createShape(FFF)J

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
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/Box2dShape;->createShape()V

    check-cast p2, Lcom/jme3/bullet/collision/shapes/Box2dShape;

    invoke-virtual {p0, p2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->copyShapeProperties(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    return-void
.end method

.method public getHalfExtents(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 3

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    iget v0, p0, Lcom/jme3/bullet/collision/shapes/Box2dShape;->halfExtentX:F

    iget v1, p0, Lcom/jme3/bullet/collision/shapes/Box2dShape;->halfExtentY:F

    iget v2, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->margin:F

    invoke-virtual {p1, v0, v1, v2}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    return-object p1
.end method

.method public maxRadius()F
    .locals 4

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    iget v1, v0, Lcom/jme3/math/Vector3f;->x:F

    iget v2, p0, Lcom/jme3/bullet/collision/shapes/Box2dShape;->halfExtentX:F

    mul-float/2addr v1, v2

    iget v0, v0, Lcom/jme3/math/Vector3f;->y:F

    iget v2, p0, Lcom/jme3/bullet/collision/shapes/Box2dShape;->halfExtentY:F

    mul-float/2addr v0, v2

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput v0, v2, v1

    invoke-static {v2}, Ljf/f;->r([F)F

    move-result v0

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

    const-string v0, "halfExtentX"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/collision/shapes/Box2dShape;->halfExtentX:F

    const-string v0, "halfExtentY"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/collision/shapes/Box2dShape;->halfExtentY:F

    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/Box2dShape;->createShape()V

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

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/Box2dShape;->halfExtentX:F

    const-string v1, "halfExtentX"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/Box2dShape;->halfExtentY:F

    const-string v1, "halfExtentY"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    return-void
.end method
