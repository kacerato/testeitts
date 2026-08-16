.class public Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;
.super Lcom/jme3/bullet/collision/shapes/ConvexShape;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger2:Ljava/util/logging/Logger;

.field private static final tagRadius:Ljava/lang/String; = "radius"


# instance fields
.field private radius:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;->logger2:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    .line 10
    const-string v0, "radius"

    invoke-static {p1, v0}, Lif/E;->p(FLjava/lang/String;)Z

    .line 11
    iput p1, p0, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;->radius:F

    .line 12
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;->createShape()V

    return-void
.end method

.method public constructor <init>(Ljava/nio/FloatBuffer;II)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    .line 3
    const-string v0, "buffer"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 4
    const-string v0, "start position"

    const/4 v1, 0x0

    invoke-static {p2, v0, v1, p3}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 5
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    .line 6
    const-string v1, "end position"

    invoke-static {p3, v1, p2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 7
    invoke-static {p1, p2, p3}, Ljf/d;->l(Ljava/nio/FloatBuffer;II)F

    move-result p1

    iput p1, p0, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;->radius:F

    .line 8
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;->createShape()V

    return-void
.end method

.method private static native createShape(F)J
.end method

.method private createShape()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;->radius:F

    invoke-static {v0}, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;->createShape(F)J

    move-result-wide v0

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setNativeId(J)V

    .line 3
    iget-boolean v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->enableContactFilter:Z

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setContactFilterEnabled(Z)V

    .line 4
    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setScale(Lcom/jme3/math/Vector3f;)V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->margin:F

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

    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;->createShape()V

    check-cast p2, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;

    invoke-virtual {p0, p2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->copyShapeProperties(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    return-void
.end method

.method public getMargin()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRadius()F
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;->radius:F

    return v0
.end method

.method public maxRadius()F
    .locals 2

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    iget v0, v0, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p0, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;->radius:F

    mul-float/2addr v0, v1

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

    iput v0, p0, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;->radius:F

    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;->createShape()V

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->readShapeProperties(Lcom/jme3/export/InputCapsule;)V

    return-void
.end method

.method public scaledVolume()F
    .locals 3

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;->unscaledVolume()F

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

.method public setMargin(F)V
    .locals 2

    sget-object p1, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;->logger2:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v1, "Cannot alter the margin of a SphereCollisionShape."

    invoke-virtual {p1, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method public toHullShape()Lcom/jme3/bullet/collision/shapes/HullCollisionShape;
    .locals 4

    invoke-static {}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->getDefaultMargin()F

    move-result v0

    iget-object v1, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    iget v1, v1, Lcom/jme3/math/Vector3f;->x:F

    iget v2, p0, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;->radius:F

    mul-float/2addr v1, v2

    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    new-instance v2, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;

    sub-float/2addr v1, v0

    invoke-direct {v2, v1}, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;-><init>(F)V

    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/jme3/bullet/util/DebugShapeFactory;->debugVertices(Lcom/jme3/bullet/collision/shapes/CollisionShape;I)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    new-instance v1, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;

    invoke-direct {v1, v0}, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;-><init>(Ljava/nio/FloatBuffer;)V

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;

    const/4 v2, 0x3

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-direct {v0, v2}, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;-><init>([F)V

    const v2, 0x3089705f    # 1.0E-9f

    cmpg-float v3, v1, v2

    if-gtz v3, :cond_1

    invoke-virtual {v0, v2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setMargin(F)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setMargin(F)V

    :goto_0
    move-object v1, v0

    :goto_1
    return-object v1

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public unscaledVolume()F
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;->radius:F

    invoke-static {v0}, Ljf/i;->e(F)F

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

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/SphereCollisionShape;->radius:F

    const-string v1, "radius"

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    return-void
.end method
