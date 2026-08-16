.class public Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;
.super Lcom/jme3/bullet/collision/shapes/ConvexShape;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger2:Ljava/util/logging/Logger;

.field private static final tagHalfExtents:Ljava/lang/String; = "halfExtents"


# instance fields
.field private halfExtents:Lcom/jme3/math/Vector3f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;->logger2:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    .line 2
    new-instance v0, Lcom/jme3/math/Vector3f;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;->halfExtents:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    .line 4
    new-instance v0, Lcom/jme3/math/Vector3f;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;->halfExtents:Lcom/jme3/math/Vector3f;

    .line 5
    const-string v0, "half extent"

    invoke-static {p1, v0}, Lif/E;->p(FLjava/lang/String;)Z

    .line 6
    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;->halfExtents:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1, p1, p1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    .line 7
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;->createShape()V

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 2

    .line 8
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    .line 9
    new-instance v0, Lcom/jme3/math/Vector3f;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;->halfExtents:Lcom/jme3/math/Vector3f;

    .line 10
    const-string v0, "half extent on X"

    invoke-static {p1, v0}, Lif/E;->p(FLjava/lang/String;)Z

    .line 11
    const-string v0, "half extent on Y"

    invoke-static {p2, v0}, Lif/E;->p(FLjava/lang/String;)Z

    .line 12
    const-string v0, "half extent on Z"

    invoke-static {p3, v0}, Lif/E;->p(FLjava/lang/String;)Z

    .line 13
    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;->halfExtents:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    .line 14
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;->createShape()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 23
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    .line 24
    new-instance v0, Lcom/jme3/math/Vector3f;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;->halfExtents:Lcom/jme3/math/Vector3f;

    .line 25
    const-string v0, "half extents"

    invoke-static {p1, v0}, Lif/E;->s(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 26
    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;->halfExtents:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 27
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;->createShape()V

    return-void
.end method

.method public constructor <init>(Ljava/nio/FloatBuffer;II)V
    .locals 2

    .line 15
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    .line 16
    new-instance v0, Lcom/jme3/math/Vector3f;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;->halfExtents:Lcom/jme3/math/Vector3f;

    .line 17
    const-string v0, "buffer"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 18
    const-string v0, "start position"

    const/4 v1, 0x0

    invoke-static {p2, v0, v1, p3}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 19
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    .line 20
    const-string v1, "end position"

    invoke-static {p3, v1, p2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 21
    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;->halfExtents:Lcom/jme3/math/Vector3f;

    invoke-static {p1, p2, p3, v0}, Ljf/d;->k(Ljava/nio/FloatBuffer;IILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 22
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;->createShape()V

    return-void
.end method

.method private static native createShape(Lcom/jme3/math/Vector3f;)J
.end method

.method private createShape()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;->halfExtents:Lcom/jme3/math/Vector3f;

    invoke-static {v0}, Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;->createShape(Lcom/jme3/math/Vector3f;)J

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

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;->halfExtents:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    iput-object p1, p0, Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;->halfExtents:Lcom/jme3/math/Vector3f;

    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;->createShape()V

    check-cast p2, Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;

    invoke-virtual {p0, p2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->copyShapeProperties(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    return-void
.end method

.method public getHalfExtents(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;->halfExtents:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;->halfExtents:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public maxRadius()F
    .locals 8

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    iget v1, v0, Lcom/jme3/math/Vector3f;->x:F

    iget-object v2, p0, Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;->halfExtents:Lcom/jme3/math/Vector3f;

    iget v3, v2, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v1, v3

    float-to-double v3, v1

    iget v1, v0, Lcom/jme3/math/Vector3f;->y:F

    iget v5, v2, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v1, v5

    float-to-double v5, v1

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    iget v1, v2, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    const/4 v2, 0x3

    new-array v2, v2, [D

    const/4 v7, 0x0

    aput-wide v3, v2, v7

    const/4 v3, 0x1

    aput-wide v5, v2, v3

    const/4 v3, 0x2

    aput-wide v0, v2, v3

    invoke-static {v2}, Ljf/f;->s([D)D

    move-result-wide v0

    double-to-float v0, v0

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

    new-instance v0, Lcom/jme3/math/Vector3f;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    const-string v1, "halfExtents"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;->halfExtents:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;->createShape()V

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->readShapeProperties(Lcom/jme3/export/InputCapsule;)V

    return-void
.end method

.method public scaledVolume()F
    .locals 3

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;->unscaledVolume()F

    move-result v0

    iget-object v1, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    iget v2, v1, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v0, v2

    iget v2, v1, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v0, v2

    iget v1, v1, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public toHullShape()Lcom/jme3/bullet/collision/shapes/HullCollisionShape;
    .locals 6

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;->halfExtents:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->mult(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget v1, v0, Lcom/jme3/math/Vector3f;->x:F

    iget v2, v0, Lcom/jme3/math/Vector3f;->y:F

    iget v3, v0, Lcom/jme3/math/Vector3f;->z:F

    const/4 v4, 0x3

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v1, v4, v5

    const/4 v1, 0x1

    aput v2, v4, v1

    const/4 v1, 0x2

    aput v3, v4, v1

    invoke-static {v4}, Ljf/f;->G([F)F

    move-result v1

    invoke-static {}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->getDefaultMargin()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const v2, 0x3089705f    # 1.0E-9f

    cmpg-float v3, v1, v2

    if-gtz v3, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;->subtractLocal(FFF)Lcom/jme3/math/Vector3f;

    new-instance v2, Ljf/m;

    invoke-direct {v2, v0}, Ljf/m;-><init>(Lcom/jme3/math/Vector3f;)V

    new-instance v0, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;

    invoke-direct {v0, v2}, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;-><init>(Ljf/m;)V

    invoke-virtual {v0, v1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setMargin(F)V

    return-object v0
.end method

.method public unscaledVolume()F
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;->halfExtents:Lcom/jme3/math/Vector3f;

    invoke-static {v0}, Ljf/i;->a(Lcom/jme3/math/Vector3f;)F

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

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/BoxCollisionShape;->halfExtents:Lcom/jme3/math/Vector3f;

    const-string v1, "halfExtents"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
