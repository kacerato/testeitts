.class public Lcom/jme3/bullet/collision/shapes/HullCollisionShape;
.super Lcom/jme3/bullet/collision/shapes/ConvexShape;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger2:Ljava/util/logging/Logger;

.field private static final numAxes:I = 0x3

.field private static final tagHullMesh:Ljava/lang/String; = "hullMesh"

.field private static final tagPoints:Ljava/lang/String; = "points"


# instance fields
.field private directBuffer:Ljava/nio/FloatBuffer;

.field private points:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;->logger2:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/nio/FloatBuffer;)V
    .locals 4

    .line 18
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    .line 19
    const-string v0, "flipped buffer"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 20
    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v0

    .line 21
    const-string v1, "limit"

    invoke-static {v0, v1}, Lif/E;->F(ILjava/lang/String;)Z

    .line 22
    rem-int/lit8 v1, v0, 0x3

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string v3, "limit a multiple of 3"

    invoke-static {v1, v3}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 23
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;->points:[F

    :goto_1
    if-ge v2, v0, :cond_2

    .line 24
    invoke-virtual {p1, v2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v1

    .line 25
    invoke-static {v1}, Ljava/lang/Float;->isFinite(F)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 26
    iget-object v3, p0, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;->points:[F

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 27
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal coordinate: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_2
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;->createShape()V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/jme3/math/Vector3f;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    .line 3
    const-string v0, "locations"

    invoke-static {p1, v0}, Lif/E;->k(Ljava/util/Collection;Ljava/lang/String;)Z

    .line 4
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    .line 5
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;->points:[F

    .line 6
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Vector3f;

    .line 7
    invoke-static {v1}, Lcom/jme3/math/Vector3f;->isValidVector(Lcom/jme3/math/Vector3f;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    iget-object v2, p0, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;->points:[F

    iget v3, v1, Lcom/jme3/math/Vector3f;->x:F

    aput v3, v2, v0

    add-int/lit8 v3, v0, 0x1

    .line 9
    iget v4, v1, Lcom/jme3/math/Vector3f;->y:F

    aput v4, v2, v3

    add-int/lit8 v3, v0, 0x2

    .line 10
    iget v1, v1, Lcom/jme3/math/Vector3f;->z:F

    aput v1, v2, v3

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal coordinates: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_1
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;->createShape()V

    return-void
.end method

.method public constructor <init>(Ljf/m;)V
    .locals 7

    .line 34
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1, v0}, Ljf/m;->g(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    .line 36
    invoke-virtual {p1, v0}, Ljf/m;->h(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    .line 37
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 38
    new-instance v3, Lcom/jme3/math/Vector3f;

    iget v4, v1, Lcom/jme3/math/Vector3f;->x:F

    iget v5, v1, Lcom/jme3/math/Vector3f;->y:F

    iget v6, v1, Lcom/jme3/math/Vector3f;->z:F

    invoke-direct {v3, v4, v5, v6}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 39
    new-instance v3, Lcom/jme3/math/Vector3f;

    iget v4, v1, Lcom/jme3/math/Vector3f;->x:F

    iget v5, v1, Lcom/jme3/math/Vector3f;->y:F

    iget v6, v0, Lcom/jme3/math/Vector3f;->z:F

    invoke-direct {v3, v4, v5, v6}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v3, Lcom/jme3/math/Vector3f;

    iget v4, v1, Lcom/jme3/math/Vector3f;->x:F

    iget v5, v0, Lcom/jme3/math/Vector3f;->y:F

    iget v6, v1, Lcom/jme3/math/Vector3f;->z:F

    invoke-direct {v3, v4, v5, v6}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 41
    new-instance v3, Lcom/jme3/math/Vector3f;

    iget v4, v1, Lcom/jme3/math/Vector3f;->x:F

    iget v5, v0, Lcom/jme3/math/Vector3f;->y:F

    iget v6, v0, Lcom/jme3/math/Vector3f;->z:F

    invoke-direct {v3, v4, v5, v6}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 42
    new-instance v3, Lcom/jme3/math/Vector3f;

    iget v4, v0, Lcom/jme3/math/Vector3f;->x:F

    iget v5, v1, Lcom/jme3/math/Vector3f;->y:F

    iget v6, v1, Lcom/jme3/math/Vector3f;->z:F

    invoke-direct {v3, v4, v5, v6}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 43
    new-instance v3, Lcom/jme3/math/Vector3f;

    iget v4, v0, Lcom/jme3/math/Vector3f;->x:F

    iget v5, v1, Lcom/jme3/math/Vector3f;->y:F

    iget v6, v0, Lcom/jme3/math/Vector3f;->z:F

    invoke-direct {v3, v4, v5, v6}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v3, Lcom/jme3/math/Vector3f;

    iget v4, v0, Lcom/jme3/math/Vector3f;->x:F

    iget v5, v0, Lcom/jme3/math/Vector3f;->y:F

    iget v1, v1, Lcom/jme3/math/Vector3f;->z:F

    invoke-direct {v3, v4, v5, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v1, Lcom/jme3/math/Vector3f;

    iget v3, v0, Lcom/jme3/math/Vector3f;->x:F

    iget v4, v0, Lcom/jme3/math/Vector3f;->y:F

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    invoke-direct {v1, v3, v4, v0}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    .line 47
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;->points:[F

    .line 48
    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    .line 49
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/math/Vector3f;

    .line 50
    invoke-virtual {p1, v3, v0}, Ljf/m;->f(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    .line 51
    iget-object v3, p0, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;->points:[F

    iget v4, v0, Lcom/jme3/math/Vector3f;->x:F

    aput v4, v3, v2

    add-int/lit8 v4, v2, 0x1

    .line 52
    iget v5, v0, Lcom/jme3/math/Vector3f;->y:F

    aput v5, v3, v4

    add-int/lit8 v4, v2, 0x2

    .line 53
    iget v5, v0, Lcom/jme3/math/Vector3f;->z:F

    aput v5, v3, v4

    add-int/lit8 v2, v2, 0x3

    goto :goto_0

    .line 54
    :cond_0
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;->createShape()V

    return-void
.end method

.method public constructor <init>(Lvhacd/VHACDHull;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    .line 71
    const-string v0, "V-HACD hull"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 72
    invoke-virtual {p1}, Lvhacd/VHACDHull;->clonePositions()[F

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;->points:[F

    .line 73
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;->createShape()V

    return-void
.end method

.method public constructor <init>(Lvhacd4/Vhacd4Hull;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    .line 67
    const-string v0, "V-HACD hull"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 68
    invoke-virtual {p1}, Lvhacd4/Vhacd4Hull;->clonePositions()[F

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;->points:[F

    .line 69
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;->createShape()V

    return-void
.end method

.method public varargs constructor <init>([F)V
    .locals 2

    .line 13
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    .line 14
    const-string v0, "coordinates"

    invoke-static {p1, v0}, Lif/E;->l([FLjava/lang/String;)Z

    .line 15
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "length a multiple of 3"

    invoke-static {v0, v1}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 16
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;->points:[F

    .line 17
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;->createShape()V

    return-void
.end method

.method public varargs constructor <init>([Lcom/jme3/math/Vector3f;)V
    .locals 7

    .line 55
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    .line 56
    const-string v0, "locations"

    invoke-static {p1, v0}, Lif/E;->n([Ljava/lang/Object;Ljava/lang/String;)Z

    .line 57
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x3

    .line 58
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;->points:[F

    .line 59
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p1, v1

    .line 60
    invoke-static {v3}, Lcom/jme3/math/Vector3f;->isValidVector(Lcom/jme3/math/Vector3f;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 61
    iget-object v4, p0, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;->points:[F

    iget v5, v3, Lcom/jme3/math/Vector3f;->x:F

    aput v5, v4, v2

    add-int/lit8 v5, v2, 0x1

    .line 62
    iget v6, v3, Lcom/jme3/math/Vector3f;->y:F

    aput v6, v4, v5

    add-int/lit8 v5, v2, 0x2

    .line 63
    iget v3, v3, Lcom/jme3/math/Vector3f;->z:F

    aput v3, v4, v5

    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal coordinates: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 65
    :cond_1
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;->createShape()V

    return-void
.end method

.method public varargs constructor <init>([Lcom/jme3/scene/Mesh;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    .line 30
    const-string v0, "meshes"

    invoke-static {p1, v0}, Lif/E;->n([Ljava/lang/Object;Ljava/lang/String;)Z

    .line 31
    invoke-static {p1}, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;->getPoints([Lcom/jme3/scene/Mesh;)[F

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;->points:[F

    .line 32
    array-length p1, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "at least one vertex"

    invoke-static {p1, v0}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 33
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;->createShape()V

    return-void
.end method

.method private static native countHullVertices(J)I
.end method

.method private createShape()V
    .locals 6

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;->points:[F

    array-length v0, v0

    div-int/lit8 v1, v0, 0x3

    invoke-static {v0}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;->directBuffer:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;->points:[F

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v0, v3

    invoke-static {v4}, Ljava/lang/Float;->isFinite(F)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;->directBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v5, v4}, Ljava/nio/FloatBuffer;->put(F)Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal coordinate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;->directBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;->createShapeF(Ljava/nio/FloatBuffer;I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setNativeId(J)V

    iget-boolean v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->enableContactFilter:Z

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setContactFilterEnabled(Z)V

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setScale(Lcom/jme3/math/Vector3f;)V

    iget v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->margin:F

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setMargin(F)V

    return-void
.end method

.method private static native createShapeF(Ljava/nio/FloatBuffer;I)J
.end method

.method private static native getHullVerticesF(JLjava/nio/FloatBuffer;)V
.end method

.method private static varargs getPoints([Lcom/jme3/scene/Mesh;)[F
    .locals 9

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v4, p0, v2

    invoke-virtual {v4}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 v3, v3, 0x3

    new-array v0, v3, [F

    array-length v2, p0

    move v3, v1

    move v4, v3

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v5, p0, v3

    sget-object v6, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v5, v6}, Lcom/jme3/scene/Mesh;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object v6

    invoke-virtual {v5}, Lcom/jme3/scene/Mesh;->getVertexCount()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3

    move v7, v1

    :goto_2
    if-ge v7, v5, :cond_1

    invoke-virtual {v6, v7}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v8

    aput v8, v0, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private static native recalcAabb(J)V
.end method


# virtual methods
.method public aabbVolume()F
    .locals 8

    new-instance v0, Lcom/jme3/math/Vector3f;

    const/high16 v1, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-direct {v0, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v1, Lcom/jme3/math/Vector3f;

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    invoke-direct {v1, v2, v2, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2}, Lcom/jme3/math/Vector3f;-><init>()V

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;->points:[F

    array-length v5, v4

    if-ge v3, v5, :cond_0

    aget v5, v4, v3

    add-int/lit8 v6, v3, 0x1

    aget v6, v4, v6

    add-int/lit8 v7, v3, 0x2

    aget v4, v4, v7

    invoke-virtual {v2, v5, v6, v4}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    invoke-static {v1, v2}, Ljf/h;->b(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-static {v0, v2}, Ljf/h;->a(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    add-int/lit8 v3, v3, 0x3

    goto :goto_0

    :cond_0
    iget v2, v0, Lcom/jme3/math/Vector3f;->x:F

    iget v3, v1, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v2, v3

    iget v3, v0, Lcom/jme3/math/Vector3f;->y:F

    iget v4, v1, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v3, v4

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    iget v1, v1, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v0, v1

    mul-float/2addr v2, v3

    mul-float/2addr v2, v0

    return v2
.end method

.method public canSplit()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;->directBuffer:Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;->points:[F

    invoke-virtual {p1, v0}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    iput-object p1, p0, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;->points:[F

    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;->createShape()V

    check-cast p2, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;

    invoke-virtual {p0, p2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->copyShapeProperties(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    return-void
.end method

.method public copyHullVertices()[F
    .locals 5

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;->countHullVertices()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    invoke-static {v2}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;->getHullVerticesF(JLjava/nio/FloatBuffer;)V

    new-array v0, v2, [F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {v3, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v4

    aput v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public countHullVertices()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;->countHullVertices(J)I

    move-result v0

    return v0
.end method

.method public countMeshVertices()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;->points:[F

    array-length v0, v0

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getHalfExtents(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 3

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->zero()Lcom/jme3/math/Vector3f;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;->points:[F

    array-length v2, v1

    if-ge v0, v2, :cond_4

    aget v1, v1, v0

    invoke-static {v1}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v1

    iget v2, p1, Lcom/jme3/math/Vector3f;->x:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    iput v1, p1, Lcom/jme3/math/Vector3f;->x:F

    :cond_1
    iget-object v1, p0, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;->points:[F

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    invoke-static {v1}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v1

    iget v2, p1, Lcom/jme3/math/Vector3f;->y:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    iput v1, p1, Lcom/jme3/math/Vector3f;->y:F

    :cond_2
    iget-object v1, p0, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;->points:[F

    add-int/lit8 v2, v0, 0x2

    aget v1, v1, v2

    invoke-static {v1}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v1

    iget v2, p1, Lcom/jme3/math/Vector3f;->z:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_3

    iput v1, p1, Lcom/jme3/math/Vector3f;->z:F

    :cond_3
    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_4
    return-object p1
.end method

.method public maxRadius()F
    .locals 13

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;->countHullVertices()I

    move-result v2

    const/4 v3, 0x3

    mul-int/lit8 v4, v2, 0x3

    invoke-static {v4}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v5

    invoke-static {v5, v6, v4}, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;->getHullVerticesF(JLjava/nio/FloatBuffer;)V

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v2, :cond_1

    mul-int/lit8 v9, v8, 0x3

    iget-object v10, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    iget v10, v10, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {v4, v9}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v11

    mul-float/2addr v10, v11

    iget-object v11, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    iget v11, v11, Lcom/jme3/math/Vector3f;->y:F

    add-int/lit8 v12, v9, 0x1

    invoke-virtual {v4, v12}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v12

    mul-float/2addr v11, v12

    iget-object v12, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    iget v12, v12, Lcom/jme3/math/Vector3f;->z:F

    add-int/2addr v9, v0

    invoke-virtual {v4, v9}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v9

    mul-float/2addr v12, v9

    new-array v9, v3, [F

    aput v10, v9, v7

    aput v11, v9, v1

    aput v12, v9, v0

    invoke-static {v9}, Ljf/f;->P([F)D

    move-result-wide v9

    cmpl-double v11, v9, v5

    if-lez v11, :cond_0

    move-wide v5, v9

    :cond_0
    add-int/2addr v8, v1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->margin:F

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

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

    const-string v0, "hullMesh"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/scene/Mesh;

    if-eqz v0, :cond_0

    filled-new-array {v0}, [Lcom/jme3/scene/Mesh;

    move-result-object v0

    invoke-static {v0}, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;->getPoints([Lcom/jme3/scene/Mesh;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;->points:[F

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [F

    const-string v1, "points"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readFloatArray(Ljava/lang/String;[F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;->points:[F

    :goto_0
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;->createShape()V

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->readShapeProperties(Lcom/jme3/export/InputCapsule;)V

    return-void
.end method

.method public recalculateAabb()V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;->recalcAabb(J)V

    return-void
.end method

.method public split(Lcom/jme3/math/Triangle;)[Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;
    .locals 18

    move-object/from16 v0, p0

    const-string v1, "splitting triangle"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;->countHullVertices()I

    move-result v1

    mul-int/lit8 v3, v1, 0x3

    invoke-static {v3}, Lcom/jme3/util/BufferUtils;->createFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v4

    invoke-static {v4, v5, v3}, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;->getHullVerticesF(JLjava/nio/FloatBuffer;)V

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/math/Triangle;->getNormal()Lcom/jme3/math/Vector3f;

    move-result-object v4

    new-instance v5, Lcom/jme3/math/Plane;

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/math/Triangle;->get3()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-direct {v5, v4, v2}, Lcom/jme3/math/Plane;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    new-instance v2, Ljf/p;

    const/4 v4, 0x1

    invoke-direct {v2, v1, v4}, Ljf/p;-><init>(IZ)V

    new-instance v6, Ljf/p;

    invoke-direct {v6, v1, v4}, Ljf/p;-><init>(IZ)V

    new-instance v7, Lcom/jme3/math/Vector3f;

    invoke-direct {v7}, Lcom/jme3/math/Vector3f;-><init>()V

    const/4 v9, 0x0

    :goto_0
    const/4 v10, 0x0

    if-ge v9, v1, :cond_2

    mul-int/lit8 v11, v9, 0x3

    invoke-static {v3, v11, v7}, Ljf/d;->g(Ljava/nio/FloatBuffer;ILcom/jme3/math/Vector3f;)V

    invoke-virtual {v5, v7}, Lcom/jme3/math/Plane;->pseudoDistance(Lcom/jme3/math/Vector3f;)F

    move-result v11

    cmpg-float v12, v11, v10

    if-gtz v12, :cond_0

    invoke-interface {v2, v7}, Ljf/o;->a(Lcom/jme3/math/Vector3f;)V

    :cond_0
    cmpl-float v10, v11, v10

    if-ltz v10, :cond_1

    invoke-interface {v6, v7}, Ljf/o;->a(Lcom/jme3/math/Vector3f;)V

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    new-array v3, v3, [Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    invoke-interface {v2}, Ljf/o;->m()I

    move-result v9

    invoke-interface {v6}, Ljf/o;->m()I

    move-result v11

    if-eqz v9, :cond_3

    if-nez v11, :cond_4

    :cond_3
    move v1, v4

    goto/16 :goto_4

    :cond_4
    invoke-interface {v2}, Ljf/o;->j()Ljava/nio/FloatBuffer;

    move-result-object v2

    new-instance v12, Ljf/p;

    invoke-direct {v12, v1, v4}, Ljf/p;-><init>(IZ)V

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v9, :cond_5

    mul-int/lit8 v14, v13, 0x3

    invoke-static {v2, v14, v7}, Ljf/d;->g(Ljava/nio/FloatBuffer;ILcom/jme3/math/Vector3f;)V

    invoke-interface {v12, v7}, Ljf/o;->a(Lcom/jme3/math/Vector3f;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_5
    invoke-interface {v6}, Ljf/o;->j()Ljava/nio/FloatBuffer;

    move-result-object v6

    new-instance v13, Ljf/p;

    invoke-direct {v13, v1, v4}, Ljf/p;-><init>(IZ)V

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v11, :cond_8

    mul-int/lit8 v15, v14, 0x3

    invoke-static {v6, v15, v7}, Ljf/d;->g(Ljava/nio/FloatBuffer;ILcom/jme3/math/Vector3f;)V

    invoke-interface {v13, v7}, Ljf/o;->a(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {v5, v7}, Lcom/jme3/math/Plane;->pseudoDistance(Lcom/jme3/math/Vector3f;)F

    move-result v15

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v9, :cond_7

    mul-int/lit8 v8, v4, 0x3

    invoke-static {v2, v8, v1}, Ljf/d;->g(Ljava/nio/FloatBuffer;ILcom/jme3/math/Vector3f;)V

    invoke-virtual {v5, v1}, Lcom/jme3/math/Plane;->pseudoDistance(Lcom/jme3/math/Vector3f;)F

    move-result v8

    sub-float v16, v15, v8

    cmpl-float v17, v16, v10

    if-eqz v17, :cond_6

    neg-float v8, v8

    div-float v8, v8, v16

    invoke-static {v8, v1, v7, v1}, Ljf/h;->G(FLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    invoke-interface {v12, v1}, Ljf/o;->a(Lcom/jme3/math/Vector3f;)V

    invoke-interface {v13, v1}, Ljf/o;->a(Lcom/jme3/math/Vector3f;)V

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x1

    goto :goto_2

    :cond_8
    invoke-interface {v12, v7, v1}, Ljf/o;->g(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    const/4 v2, 0x0

    invoke-static {v7, v1, v2}, Ljf/h;->M(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {v7, v4}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jme3/math/Vector3f;->negateLocal()Lcom/jme3/math/Vector3f;

    invoke-interface {v12}, Ljf/o;->j()Ljava/nio/FloatBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/Buffer;->limit()I

    move-result v6

    const/4 v8, 0x0

    invoke-static {v5, v8, v6, v7}, Ljf/d;->y(Ljava/nio/FloatBuffer;IILcom/jme3/math/Vector3f;)V

    new-instance v6, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;

    invoke-direct {v6, v5}, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;-><init>(Ljava/nio/FloatBuffer;)V

    iget-object v5, v0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v6, v5}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setScale(Lcom/jme3/math/Vector3f;)V

    new-instance v5, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    invoke-direct {v5, v4, v6}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    aput-object v5, v3, v8

    invoke-interface {v13, v7, v1}, Ljf/o;->g(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-static {v7, v1, v2}, Ljf/h;->M(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/math/Vector3f;->negateLocal()Lcom/jme3/math/Vector3f;

    invoke-interface {v13}, Ljf/o;->j()Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v4

    invoke-static {v2, v8, v4, v7}, Ljf/d;->y(Ljava/nio/FloatBuffer;IILcom/jme3/math/Vector3f;)V

    new-instance v4, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;

    invoke-direct {v4, v2}, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;-><init>(Ljava/nio/FloatBuffer;)V

    iget-object v2, v0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v4, v2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setScale(Lcom/jme3/math/Vector3f;)V

    new-instance v2, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    invoke-direct {v2, v1, v4}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    const/4 v1, 0x1

    aput-object v2, v3, v1

    return-object v3

    :goto_4
    new-instance v2, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;

    new-instance v4, Lcom/jme3/math/Vector3f;

    invoke-direct {v4}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-direct {v2, v4, v0}, Lcom/jme3/bullet/collision/shapes/infos/ChildCollisionShape;-><init>(Lcom/jme3/math/Vector3f;Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    if-lez v9, :cond_9

    const/4 v4, 0x0

    aput-object v2, v3, v4

    goto :goto_5

    :cond_9
    if-lez v11, :cond_a

    aput-object v2, v3, v1

    :cond_a
    :goto_5
    return-object v3
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

    invoke-virtual {p0}, Lcom/jme3/bullet/collision/shapes/HullCollisionShape;->copyHullVertices()[F

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [F

    const-string v2, "points"

    invoke-interface {p1, v0, v2, v1}, Lcom/jme3/export/OutputCapsule;->write([FLjava/lang/String;[F)V

    return-void
.end method
