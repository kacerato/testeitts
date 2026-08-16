.class public Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;
.super Lcom/jme3/bullet/collision/shapes/ConvexShape;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger2:Ljava/util/logging/Logger;

.field private static final tagAxis:Ljava/lang/String; = "axis"

.field private static final tagHalfExtents:Ljava/lang/String; = "halfExtents"


# instance fields
.field private axis:I

.field private halfExtents:Lcom/jme3/math/Vector3f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;->logger2:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    .line 2
    new-instance v0, Lcom/jme3/math/Vector3f;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;->halfExtents:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>(FFI)V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    .line 4
    new-instance v0, Lcom/jme3/math/Vector3f;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;->halfExtents:Lcom/jme3/math/Vector3f;

    .line 5
    const-string v0, "radius"

    invoke-static {p1, v0}, Lif/E;->p(FLjava/lang/String;)Z

    .line 6
    const-string v0, "height"

    invoke-static {p2, v0}, Lif/E;->p(FLjava/lang/String;)Z

    .line 7
    const-string v0, "axis index"

    invoke-static {p3, v0}, Lif/E;->a(ILjava/lang/String;)Z

    .line 8
    iput p3, p0, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;->axis:I

    .line 9
    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;->halfExtents:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1, p1, p1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    .line 10
    iget-object p1, p0, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;->halfExtents:Lcom/jme3/math/Vector3f;

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    invoke-virtual {p1, p3, p2}, Lcom/jme3/math/Vector3f;->set(IF)V

    .line 11
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;->createShape()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    .line 27
    new-instance v0, Lcom/jme3/math/Vector3f;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;->halfExtents:Lcom/jme3/math/Vector3f;

    .line 28
    const-string v0, "half extents"

    invoke-static {p1, v0}, Lif/E;->s(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 29
    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;->halfExtents:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    const/4 p1, 0x2

    .line 30
    iput p1, p0, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;->axis:I

    .line 31
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;->createShape()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;I)V
    .locals 2

    .line 32
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    .line 33
    new-instance v0, Lcom/jme3/math/Vector3f;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;->halfExtents:Lcom/jme3/math/Vector3f;

    .line 34
    const-string v0, "half extents"

    invoke-static {p1, v0}, Lif/E;->s(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 35
    const-string v0, "axis index"

    invoke-static {p2, v0}, Lif/E;->a(ILjava/lang/String;)Z

    .line 36
    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;->halfExtents:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 37
    iput p2, p0, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;->axis:I

    .line 38
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;->createShape()V

    return-void
.end method

.method public constructor <init>(Ljava/nio/FloatBuffer;III)V
    .locals 2

    .line 12
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    .line 13
    new-instance v0, Lcom/jme3/math/Vector3f;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;->halfExtents:Lcom/jme3/math/Vector3f;

    .line 14
    const-string v0, "buffer"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 15
    const-string v0, "start position"

    const/4 v1, 0x0

    invoke-static {p2, v0, v1, p3}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 16
    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    .line 17
    const-string v1, "end position"

    invoke-static {p3, v1, p2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    .line 18
    const-string v0, "axis index"

    invoke-static {p4, v0}, Lif/E;->a(ILjava/lang/String;)Z

    .line 19
    iput p4, p0, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;->axis:I

    .line 20
    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;->halfExtents:Lcom/jme3/math/Vector3f;

    invoke-static {p1, p2, p3, v0}, Ljf/d;->k(Ljava/nio/FloatBuffer;IILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 21
    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;->halfExtents:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, p4}, Lcom/jme3/math/Vector3f;->get(I)F

    move-result v0

    .line 22
    invoke-static {p1, p2, p3, p4}, Ljf/d;->b(Ljava/nio/FloatBuffer;III)F

    move-result p1

    .line 23
    iget-object p2, p0, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;->halfExtents:Lcom/jme3/math/Vector3f;

    invoke-virtual {p2, p1, p1, p1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    .line 24
    iget-object p1, p0, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;->halfExtents:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p4, v0}, Lcom/jme3/math/Vector3f;->set(IF)V

    .line 25
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;->createShape()V

    return-void
.end method

.method private static native createShape(ILcom/jme3/math/Vector3f;)J
.end method

.method private createShape()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;->axis:I

    iget-object v1, p0, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;->halfExtents:Lcom/jme3/math/Vector3f;

    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;->createShape(ILcom/jme3/math/Vector3f;)J

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
    .locals 5

    invoke-super {p0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->canScale(Lcom/jme3/math/Vector3f;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;->axis:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget v3, p1, Lcom/jme3/math/Vector3f;->y:F

    iget v4, p1, Lcom/jme3/math/Vector3f;->z:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    iget v3, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v4, p1, Lcom/jme3/math/Vector3f;->z:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    iget v1, p1, Lcom/jme3/math/Vector3f;->x:F

    iget p1, p1, Lcom/jme3/math/Vector3f;->y:F

    cmpl-float p1, v1, p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;->halfExtents:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    iput-object p1, p0, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;->halfExtents:Lcom/jme3/math/Vector3f;

    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;->createShape()V

    check-cast p2, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;

    invoke-virtual {p0, p2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->copyShapeProperties(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    return-void
.end method

.method public getAxis()I
    .locals 1

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;->axis:I

    return v0
.end method

.method public getHalfExtents(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;->halfExtents:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;->halfExtents:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getHeight()F
    .locals 2

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;->halfExtents:Lcom/jme3/math/Vector3f;

    iget v1, p0, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;->axis:I

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->get(I)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    return v0
.end method

.method public maxRadius()F
    .locals 10

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    iget v1, v0, Lcom/jme3/math/Vector3f;->x:F

    iget-object v2, p0, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;->halfExtents:Lcom/jme3/math/Vector3f;

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

    iget v2, p0, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;->axis:I

    if-eqz v2, :cond_2

    const/4 v7, 0x1

    if-eq v2, v7, :cond_1

    const/4 v7, 0x2

    if-ne v2, v7, :cond_0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "axis = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;->axis:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    move-wide v0, v5

    goto :goto_0

    :cond_2
    invoke-static {v5, v6, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    move-wide v8, v0

    move-wide v0, v3

    move-wide v2, v8

    :goto_0
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

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

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    const-string v1, "halfExtents"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;->halfExtents:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    const-string v0, "axis"

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;->axis:I

    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;->createShape()V

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->readShapeProperties(Lcom/jme3/export/InputCapsule;)V

    return-void
.end method

.method public toHullShape()Lcom/jme3/bullet/collision/shapes/HullCollisionShape;
    .locals 6

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;->halfExtents:Lcom/jme3/math/Vector3f;

    iget-object v1, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

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

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;->subtractLocal(FFF)Lcom/jme3/math/Vector3f;

    new-instance v2, Lcom/jme3/math/Vector3f;

    const v3, 0x358637bd    # 1.0E-6f

    invoke-direct {v2, v3, v3, v3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-static {v0, v2}, Ljf/h;->a(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    new-instance v2, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;

    iget v3, p0, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;->axis:I

    invoke-direct {v2, v0, v3}, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;-><init>(Lcom/jme3/math/Vector3f;I)V

    invoke-static {v2, v5}, Lcom/jme3/bullet/util/DebugShapeFactory;->debugVertices(Lcom/jme3/bullet/collision/shapes/CollisionShape;I)Ljava/nio/FloatBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->limit(I)Ljava/nio/Buffer;

    new-instance v2, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;

    invoke-direct {v2, v0}, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;-><init>(Ljava/nio/FloatBuffer;)V

    invoke-virtual {v2, v1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setMargin(F)V

    return-object v2
.end method

.method public unscaledVolume()F
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;->halfExtents:Lcom/jme3/math/Vector3f;

    invoke-static {v0}, Ljf/i;->d(Lcom/jme3/math/Vector3f;)F

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

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;->halfExtents:Lcom/jme3/math/Vector3f;

    const-string v1, "halfExtents"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/CylinderCollisionShape;->axis:I

    const-string v1, "axis"

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    return-void
.end method
