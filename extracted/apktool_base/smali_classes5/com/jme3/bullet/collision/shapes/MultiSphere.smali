.class public Lcom/jme3/bullet/collision/shapes/MultiSphere;
.super Lcom/jme3/bullet/collision/shapes/ConvexShape;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final logger2:Ljava/util/logging/Logger;

.field private static final tagCenters:Ljava/lang/String; = "centers"

.field private static final tagRadii:Ljava/lang/String; = "radii"


# instance fields
.field private centers:[Lcom/jme3/math/Vector3f;

.field private radii:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/bullet/collision/shapes/MultiSphere;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/bullet/collision/shapes/MultiSphere;->logger2:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 4

    .line 2
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    .line 3
    const-string v0, "radius"

    invoke-static {p1, v0}, Lif/E;->p(FLjava/lang/String;)Z

    const/4 v0, 0x1

    .line 4
    new-array v1, v0, [Lcom/jme3/math/Vector3f;

    iput-object v1, p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;->centers:[Lcom/jme3/math/Vector3f;

    .line 5
    new-instance v2, Lcom/jme3/math/Vector3f;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 6
    new-array v0, v0, [F

    aput p1, v0, v3

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;->radii:[F

    .line 7
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/MultiSphere;->createShape()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 5

    .line 8
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    .line 9
    const-string v0, "radius"

    invoke-static {p1, v0}, Lif/E;->p(FLjava/lang/String;)Z

    .line 10
    const-string v0, "height"

    invoke-static {p2, v0}, Lif/E;->p(FLjava/lang/String;)Z

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    const/4 v0, 0x2

    .line 11
    new-array v1, v0, [Lcom/jme3/math/Vector3f;

    iput-object v1, p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;->centers:[Lcom/jme3/math/Vector3f;

    .line 12
    new-instance v2, Lcom/jme3/math/Vector3f;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p2, v3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    const/4 v4, 0x0

    aput-object v2, v1, v4

    .line 13
    iget-object v1, p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;->centers:[Lcom/jme3/math/Vector3f;

    new-instance v2, Lcom/jme3/math/Vector3f;

    neg-float p2, p2

    invoke-direct {v2, v3, p2, v3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    const/4 p2, 0x1

    aput-object v2, v1, p2

    .line 14
    new-array v0, v0, [F

    aput p1, v0, v4

    aput p1, v0, p2

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;->radii:[F

    .line 15
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/MultiSphere;->createShape()V

    return-void
.end method

.method public constructor <init>(FFI)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    .line 17
    const-string v2, "radius"

    invoke-static {p1, v2}, Lif/E;->p(FLjava/lang/String;)Z

    .line 18
    const-string v2, "height"

    invoke-static {p2, v2}, Lif/E;->p(FLjava/lang/String;)Z

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p2, v2

    const/4 v2, 0x2

    .line 19
    new-array v3, v2, [Lcom/jme3/math/Vector3f;

    iput-object v3, p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;->centers:[Lcom/jme3/math/Vector3f;

    const/4 v4, 0x0

    if-eqz p3, :cond_2

    if-eq p3, v0, :cond_1

    if-ne p3, v2, :cond_0

    .line 20
    new-instance p3, Lcom/jme3/math/Vector3f;

    invoke-direct {p3, v4, v4, p2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    aput-object p3, v3, v1

    .line 21
    iget-object p3, p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;->centers:[Lcom/jme3/math/Vector3f;

    new-instance v3, Lcom/jme3/math/Vector3f;

    neg-float p2, p2

    invoke-direct {v3, v4, v4, p2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    aput-object v3, p3, v0

    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "axisIndex = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :cond_1
    new-instance p3, Lcom/jme3/math/Vector3f;

    invoke-direct {p3, v4, p2, v4}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    aput-object p3, v3, v1

    .line 24
    iget-object p3, p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;->centers:[Lcom/jme3/math/Vector3f;

    new-instance v3, Lcom/jme3/math/Vector3f;

    neg-float p2, p2

    invoke-direct {v3, v4, p2, v4}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    aput-object v3, p3, v0

    goto :goto_0

    .line 25
    :cond_2
    new-instance p3, Lcom/jme3/math/Vector3f;

    invoke-direct {p3, p2, v4, v4}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    aput-object p3, v3, v1

    .line 26
    iget-object p3, p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;->centers:[Lcom/jme3/math/Vector3f;

    new-instance v3, Lcom/jme3/math/Vector3f;

    neg-float p2, p2

    invoke-direct {v3, p2, v4, v4}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    aput-object v3, p3, v0

    .line 27
    :goto_0
    new-array p2, v2, [F

    aput p1, p2, v1

    aput p1, p2, v0

    iput-object p2, p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;->radii:[F

    .line 28
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/MultiSphere;->createShape()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/bounding/BoundingSphere;)V
    .locals 4

    .line 29
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    const/4 v0, 0x1

    .line 30
    new-array v1, v0, [Lcom/jme3/math/Vector3f;

    iput-object v1, p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;->centers:[Lcom/jme3/math/Vector3f;

    .line 31
    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingVolume;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 32
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;->radii:[F

    .line 33
    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingSphere;->getRadius()F

    move-result p1

    aput p1, v0, v3

    .line 34
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/MultiSphere;->createShape()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/math/Vector3f;F)V
    .locals 3

    .line 104
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    .line 105
    const-string v0, "center"

    invoke-static {p1, v0}, Lif/E;->d(Lcom/jme3/math/Vector3f;Ljava/lang/String;)Z

    .line 106
    const-string v0, "radius"

    invoke-static {p2, v0}, Lif/E;->p(FLjava/lang/String;)Z

    const/4 v0, 0x1

    .line 107
    new-array v1, v0, [Lcom/jme3/math/Vector3f;

    iput-object v1, p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;->centers:[Lcom/jme3/math/Vector3f;

    const/4 v2, 0x0

    .line 108
    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    aput-object p1, v1, v2

    .line 109
    new-array p1, v0, [F

    aput p2, p1, v2

    iput-object p1, p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;->radii:[F

    .line 110
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/MultiSphere;->createShape()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/math/Vector3f;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    .line 36
    const-string v0, "centers"

    invoke-static {p1, v0}, Lif/E;->k(Ljava/util/Collection;Ljava/lang/String;)Z

    .line 37
    const-string v0, "radii"

    invoke-static {p2, v0}, Lif/E;->k(Ljava/util/Collection;Ljava/lang/String;)Z

    .line 38
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 39
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string v3, "lists of equal length"

    invoke-static {v1, v3}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 40
    new-array v1, v0, [Lcom/jme3/math/Vector3f;

    iput-object v1, p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;->centers:[Lcom/jme3/math/Vector3f;

    .line 41
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;->radii:[F

    :goto_1
    if-ge v2, v0, :cond_1

    .line 42
    iget-object v1, p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;->centers:[Lcom/jme3/math/Vector3f;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/math/Vector3f;

    invoke-virtual {v3}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v3

    aput-object v3, v1, v2

    .line 43
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 44
    iget-object v3, p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;->radii:[F

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 45
    :cond_1
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/MultiSphere;->createShape()V

    return-void
.end method

.method public constructor <init>(Ljf/m;)V
    .locals 14

    .line 46
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p1, v0}, Ljf/m;->c(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    .line 48
    iget v2, v1, Lcom/jme3/math/Vector3f;->x:F

    iget v3, v1, Lcom/jme3/math/Vector3f;->y:F

    iget v4, v1, Lcom/jme3/math/Vector3f;->z:F

    const/4 v5, 0x3

    new-array v6, v5, [F

    const/4 v7, 0x0

    aput v2, v6, v7

    const/4 v2, 0x1

    aput v3, v6, v2

    const/4 v3, 0x2

    aput v4, v6, v3

    invoke-static {v6}, Ljf/f;->G([F)F

    move-result v4

    .line 49
    invoke-virtual {p1, v0}, Ljf/m;->g(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v6

    .line 50
    invoke-virtual {v6, v4, v4, v4}, Lcom/jme3/math/Vector3f;->subtractLocal(FFF)Lcom/jme3/math/Vector3f;

    .line 51
    invoke-virtual {p1, v0}, Ljf/m;->h(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v8

    .line 52
    invoke-virtual {v8, v4, v4, v4}, Lcom/jme3/math/Vector3f;->addLocal(FFF)Lcom/jme3/math/Vector3f;

    .line 53
    new-instance v9, Ljava/util/ArrayList;

    const/4 v10, 0x4

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 54
    iget v11, v1, Lcom/jme3/math/Vector3f;->x:F

    cmpl-float v11, v4, v11

    if-nez v11, :cond_0

    .line 55
    iget v1, v6, Lcom/jme3/math/Vector3f;->x:F

    .line 56
    new-instance v11, Lcom/jme3/math/Vector3f;

    iget v12, v6, Lcom/jme3/math/Vector3f;->y:F

    iget v13, v6, Lcom/jme3/math/Vector3f;->z:F

    invoke-direct {v11, v1, v12, v13}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v11, Lcom/jme3/math/Vector3f;

    iget v12, v6, Lcom/jme3/math/Vector3f;->y:F

    iget v13, v8, Lcom/jme3/math/Vector3f;->z:F

    invoke-direct {v11, v1, v12, v13}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v11, Lcom/jme3/math/Vector3f;

    iget v12, v8, Lcom/jme3/math/Vector3f;->y:F

    iget v6, v6, Lcom/jme3/math/Vector3f;->z:F

    invoke-direct {v11, v1, v12, v6}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v6, Lcom/jme3/math/Vector3f;

    iget v11, v8, Lcom/jme3/math/Vector3f;->y:F

    iget v8, v8, Lcom/jme3/math/Vector3f;->z:F

    invoke-direct {v6, v1, v11, v8}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    :cond_0
    iget v1, v1, Lcom/jme3/math/Vector3f;->y:F

    cmpl-float v1, v4, v1

    if-nez v1, :cond_1

    .line 61
    iget v1, v6, Lcom/jme3/math/Vector3f;->y:F

    .line 62
    new-instance v11, Lcom/jme3/math/Vector3f;

    iget v12, v6, Lcom/jme3/math/Vector3f;->x:F

    iget v13, v6, Lcom/jme3/math/Vector3f;->z:F

    invoke-direct {v11, v12, v1, v13}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v11, Lcom/jme3/math/Vector3f;

    iget v12, v6, Lcom/jme3/math/Vector3f;->x:F

    iget v13, v8, Lcom/jme3/math/Vector3f;->z:F

    invoke-direct {v11, v12, v1, v13}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    new-instance v11, Lcom/jme3/math/Vector3f;

    iget v12, v8, Lcom/jme3/math/Vector3f;->x:F

    iget v6, v6, Lcom/jme3/math/Vector3f;->z:F

    invoke-direct {v11, v12, v1, v6}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    new-instance v6, Lcom/jme3/math/Vector3f;

    iget v11, v8, Lcom/jme3/math/Vector3f;->x:F

    iget v8, v8, Lcom/jme3/math/Vector3f;->z:F

    invoke-direct {v6, v11, v1, v8}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :cond_1
    iget v1, v6, Lcom/jme3/math/Vector3f;->z:F

    .line 67
    new-instance v11, Lcom/jme3/math/Vector3f;

    iget v12, v6, Lcom/jme3/math/Vector3f;->x:F

    iget v13, v6, Lcom/jme3/math/Vector3f;->y:F

    invoke-direct {v11, v12, v13, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    new-instance v11, Lcom/jme3/math/Vector3f;

    iget v12, v6, Lcom/jme3/math/Vector3f;->x:F

    iget v13, v8, Lcom/jme3/math/Vector3f;->y:F

    invoke-direct {v11, v12, v13, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v11, Lcom/jme3/math/Vector3f;

    iget v12, v8, Lcom/jme3/math/Vector3f;->x:F

    iget v6, v6, Lcom/jme3/math/Vector3f;->y:F

    invoke-direct {v11, v12, v6, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    new-instance v6, Lcom/jme3/math/Vector3f;

    iget v11, v8, Lcom/jme3/math/Vector3f;->x:F

    iget v8, v8, Lcom/jme3/math/Vector3f;->y:F

    invoke-direct {v6, v11, v8, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :goto_0
    new-array v1, v10, [Lcom/jme3/math/Vector3f;

    iput-object v1, p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;->centers:[Lcom/jme3/math/Vector3f;

    .line 72
    new-array v1, v10, [F

    aput v4, v1, v7

    aput v4, v1, v2

    aput v4, v1, v3

    aput v4, v1, v5

    iput-object v1, p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;->radii:[F

    :goto_1
    if-ge v7, v10, :cond_2

    .line 73
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Vector3f;

    .line 74
    iget-object v3, p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;->centers:[Lcom/jme3/math/Vector3f;

    .line 75
    invoke-virtual {p1, v1, v0}, Ljf/m;->f(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    aput-object v1, v3, v7

    add-int/2addr v7, v2

    goto :goto_1

    .line 76
    :cond_2
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/MultiSphere;->createShape()V

    return-void
.end method

.method public constructor <init>(Ljf/m;F)V
    .locals 11

    .line 77
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    const/4 v0, 0x0

    .line 78
    invoke-virtual {p1, v0}, Ljf/m;->c(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    .line 79
    iget v2, v1, Lcom/jme3/math/Vector3f;->x:F

    iget v3, v1, Lcom/jme3/math/Vector3f;->y:F

    iget v4, v1, Lcom/jme3/math/Vector3f;->z:F

    const/4 v5, 0x3

    new-array v6, v5, [F

    const/4 v7, 0x0

    aput v2, v6, v7

    const/4 v2, 0x1

    aput v3, v6, v2

    const/4 v3, 0x2

    aput v4, v6, v3

    .line 80
    invoke-static {v6}, Ljf/f;->G([F)F

    move-result v4

    .line 81
    iget v6, v1, Lcom/jme3/math/Vector3f;->x:F

    iget v8, v1, Lcom/jme3/math/Vector3f;->y:F

    iget v9, v1, Lcom/jme3/math/Vector3f;->z:F

    .line 82
    invoke-static {v6, v8, v9}, Ljf/f;->F(FFF)F

    move-result v6

    .line 83
    invoke-static {p2, v4, v6}, Ljf/f;->y(FFF)F

    move-result p2

    .line 84
    iget v4, v1, Lcom/jme3/math/Vector3f;->x:F

    iget v6, v1, Lcom/jme3/math/Vector3f;->y:F

    iget v8, v1, Lcom/jme3/math/Vector3f;->z:F

    new-array v5, v5, [F

    aput v4, v5, v7

    aput v6, v5, v2

    aput v8, v5, v3

    .line 85
    invoke-static {v5}, Ljf/f;->B([F)F

    move-result v4

    .line 86
    invoke-virtual {p1, v0}, Ljf/m;->g(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v5

    .line 87
    invoke-virtual {p1, v0}, Ljf/m;->h(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v6

    .line 88
    invoke-static {v5, v6, v0}, Ljf/h;->M(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v8

    .line 89
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 90
    iget v10, v1, Lcom/jme3/math/Vector3f;->z:F

    cmpl-float v10, v4, v10

    if-nez v10, :cond_0

    .line 91
    new-instance v1, Lcom/jme3/math/Vector3f;

    iget v4, v8, Lcom/jme3/math/Vector3f;->x:F

    iget v10, v8, Lcom/jme3/math/Vector3f;->y:F

    iget v6, v6, Lcom/jme3/math/Vector3f;->z:F

    add-float/2addr v6, p2

    invoke-direct {v1, v4, v10, v6}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v1, Lcom/jme3/math/Vector3f;

    iget v4, v8, Lcom/jme3/math/Vector3f;->x:F

    iget v6, v8, Lcom/jme3/math/Vector3f;->y:F

    iget v5, v5, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v5, p2

    invoke-direct {v1, v4, v6, v5}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    :cond_0
    iget v1, v1, Lcom/jme3/math/Vector3f;->y:F

    cmpl-float v1, v4, v1

    if-nez v1, :cond_1

    .line 94
    new-instance v1, Lcom/jme3/math/Vector3f;

    iget v4, v8, Lcom/jme3/math/Vector3f;->x:F

    iget v6, v6, Lcom/jme3/math/Vector3f;->y:F

    add-float/2addr v6, p2

    iget v10, v8, Lcom/jme3/math/Vector3f;->z:F

    invoke-direct {v1, v4, v6, v10}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    new-instance v1, Lcom/jme3/math/Vector3f;

    iget v4, v8, Lcom/jme3/math/Vector3f;->x:F

    iget v5, v5, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v5, p2

    iget v6, v8, Lcom/jme3/math/Vector3f;->z:F

    invoke-direct {v1, v4, v5, v6}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 96
    :cond_1
    new-instance v1, Lcom/jme3/math/Vector3f;

    iget v4, v6, Lcom/jme3/math/Vector3f;->x:F

    add-float/2addr v4, p2

    iget v6, v8, Lcom/jme3/math/Vector3f;->y:F

    iget v10, v8, Lcom/jme3/math/Vector3f;->z:F

    invoke-direct {v1, v4, v6, v10}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v1, Lcom/jme3/math/Vector3f;

    iget v4, v5, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v4, p2

    iget v5, v8, Lcom/jme3/math/Vector3f;->y:F

    iget v6, v8, Lcom/jme3/math/Vector3f;->z:F

    invoke-direct {v1, v4, v5, v6}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :goto_0
    new-array v1, v3, [Lcom/jme3/math/Vector3f;

    iput-object v1, p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;->centers:[Lcom/jme3/math/Vector3f;

    .line 99
    new-array v1, v3, [F

    aput p2, v1, v7

    aput p2, v1, v2

    iput-object v1, p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;->radii:[F

    :goto_1
    if-ge v7, v3, :cond_2

    .line 100
    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Vector3f;

    .line 101
    iget-object v1, p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;->centers:[Lcom/jme3/math/Vector3f;

    .line 102
    invoke-virtual {p1, p2, v0}, Ljf/m;->f(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    aput-object p2, v1, v7

    add-int/2addr v7, v2

    goto :goto_1

    .line 103
    :cond_2
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/MultiSphere;->createShape()V

    return-void
.end method

.method public varargs constructor <init>([Lcom/jme3/math/Vector3f;[F)V
    .locals 4

    .line 111
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;-><init>()V

    .line 112
    const-string v0, "centers"

    invoke-static {p1, v0}, Lif/E;->n([Ljava/lang/Object;Ljava/lang/String;)Z

    .line 113
    const-string v0, "radii"

    invoke-static {p2, v0}, Lif/E;->l([FLjava/lang/String;)Z

    .line 114
    array-length v0, p2

    .line 115
    array-length v1, p1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string v3, "arrays of equal length"

    invoke-static {v1, v3}, Lif/E;->H(ZLjava/lang/String;)Z

    .line 116
    new-array v1, v0, [Lcom/jme3/math/Vector3f;

    iput-object v1, p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;->centers:[Lcom/jme3/math/Vector3f;

    .line 117
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;->radii:[F

    :goto_1
    if-ge v2, v0, :cond_1

    .line 118
    iget-object v1, p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;->centers:[Lcom/jme3/math/Vector3f;

    aget-object v3, p1, v2

    invoke-virtual {v3}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v3

    aput-object v3, v1, v2

    .line 119
    aget v1, p2, v2

    .line 120
    iget-object v3, p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;->radii:[F

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 121
    :cond_1
    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/MultiSphere;->createShape()V

    return-void
.end method

.method private static native createShape([Lcom/jme3/math/Vector3f;[FI)J
.end method

.method private createShape()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;->radii:[F

    array-length v1, v0

    .line 2
    iget-object v2, p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;->centers:[Lcom/jme3/math/Vector3f;

    invoke-static {v2, v0, v1}, Lcom/jme3/bullet/collision/shapes/MultiSphere;->createShape([Lcom/jme3/math/Vector3f;[FI)J

    move-result-wide v0

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setNativeId(J)V

    .line 4
    iget-boolean v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->enableContactFilter:Z

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setContactFilterEnabled(Z)V

    .line 5
    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setScale(Lcom/jme3/math/Vector3f;)V

    .line 6
    iget v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->margin:F

    invoke-virtual {p0, v0}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setMargin(F)V

    return-void
.end method

.method private static native recalcAabb(J)V
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;->radii:[F

    invoke-virtual {p1, v0}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;->radii:[F

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;->centers:[Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/jme3/math/Vector3f;

    iput-object p1, p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;->centers:[Lcom/jme3/math/Vector3f;

    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/MultiSphere;->createShape()V

    check-cast p2, Lcom/jme3/bullet/collision/shapes/MultiSphere;

    invoke-virtual {p0, p2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->copyShapeProperties(Lcom/jme3/bullet/collision/shapes/CollisionShape;)V

    return-void
.end method

.method public copyCenter(ILcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 3

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;->radii:[F

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const-string v1, "sphere index"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    if-nez p2, :cond_0

    new-instance p2, Lcom/jme3/math/Vector3f;

    invoke-direct {p2}, Lcom/jme3/math/Vector3f;-><init>()V

    :cond_0
    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;->centers:[Lcom/jme3/math/Vector3f;

    aget-object p1, v0, p1

    invoke-virtual {p2, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-object p2
.end method

.method public countSpheres()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;->radii:[F

    array-length v0, v0

    return v0
.end method

.method public getRadius(I)F
    .locals 3

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;->radii:[F

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    const-string v1, "sphere index"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Lif/E;->i(ILjava/lang/String;II)Z

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;->radii:[F

    aget p1, v0, p1

    return p1
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/jme3/math/Vector3f;

    const-string v2, "centers"

    invoke-interface {p1, v2, v1}, Lcom/jme3/export/InputCapsule;->readSavableArray(Ljava/lang/String;[Lcom/jme3/export/Savable;)[Lcom/jme3/export/Savable;

    move-result-object v1

    array-length v2, v1

    new-array v3, v2, [Lcom/jme3/math/Vector3f;

    iput-object v3, p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;->centers:[Lcom/jme3/math/Vector3f;

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_0

    iget-object v4, p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;->centers:[Lcom/jme3/math/Vector3f;

    aget-object v5, v1, v3

    check-cast v5, Lcom/jme3/math/Vector3f;

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "radii"

    new-array v0, v0, [F

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readFloatArray(Ljava/lang/String;[F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;->radii:[F

    invoke-direct {p0}, Lcom/jme3/bullet/collision/shapes/MultiSphere;->createShape()V

    invoke-virtual {p0, p1}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->readShapeProperties(Lcom/jme3/export/InputCapsule;)V

    return-void
.end method

.method public recalculateAabb()V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/bullet/NativePhysicsObject;->nativeId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/jme3/bullet/collision/shapes/MultiSphere;->recalcAabb(J)V

    return-void
.end method

.method public scaledVolume()F
    .locals 5

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;->radii:[F

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    aget v0, v0, v2

    invoke-static {v0}, Ljf/i;->e(F)F

    move-result v0

    iget-object v1, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    iget v2, v1, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v0, v2

    iget v2, v1, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v0, v2

    iget v1, v1, Lcom/jme3/math/Vector3f;->z:F

    :goto_0
    mul-float/2addr v0, v1

    goto :goto_1

    :cond_0
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    aget v1, v0, v2

    aget v0, v0, v3

    cmpl-float v0, v1, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;->centers:[Lcom/jme3/math/Vector3f;

    aget-object v2, v0, v2

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Lcom/jme3/math/Vector3f;->distance(Lcom/jme3/math/Vector3f;)F

    move-result v0

    invoke-static {v1, v0}, Ljf/i;->b(FF)F

    move-result v0

    iget-object v1, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    iget v2, v1, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v0, v2

    iget v2, v1, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr v0, v2

    iget v1, v1, Lcom/jme3/math/Vector3f;->z:F

    goto :goto_0

    :cond_1
    invoke-super {p0}, Lcom/jme3/bullet/collision/shapes/ConvexShape;->scaledVolume()F

    move-result v0

    :goto_1
    return v0
.end method

.method public toHullShape()Lcom/jme3/bullet/collision/shapes/HullCollisionShape;
    .locals 9

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    iget v1, v0, Lcom/jme3/math/Vector3f;->x:F

    iget v2, v0, Lcom/jme3/math/Vector3f;->y:F

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    invoke-static {v1, v2, v0}, Ljf/f;->F(FFF)F

    move-result v0

    iget-object v1, p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;->radii:[F

    invoke-static {v1}, Ljf/f;->G([F)F

    move-result v1

    invoke-static {}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->getDefaultMargin()F

    move-result v2

    mul-float/2addr v1, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;->radii:[F

    array-length v2, v2

    new-array v3, v2, [F

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_1

    iget-object v6, p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;->radii:[F

    aget v6, v6, v5

    div-float v7, v1, v0

    sub-float/2addr v6, v7

    const v7, 0x358637bd    # 1.0E-6f

    cmpg-float v8, v6, v7

    if-gez v8, :cond_0

    move v6, v7

    :cond_0
    aput v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/jme3/bullet/collision/shapes/MultiSphere;

    iget-object v2, p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;->centers:[Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v2, v3}, Lcom/jme3/bullet/collision/shapes/MultiSphere;-><init>([Lcom/jme3/math/Vector3f;[F)V

    iget-object v2, p0, Lcom/jme3/bullet/collision/shapes/CollisionShape;->scale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v0, v2}, Lcom/jme3/bullet/collision/shapes/CollisionShape;->setScale(Lcom/jme3/math/Vector3f;)V

    invoke-static {v0, v4}, Lcom/jme3/bullet/util/DebugShapeFactory;->debugVertices(Lcom/jme3/bullet/collision/shapes/CollisionShape;I)Ljava/nio/FloatBuffer;

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

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;->centers:[Lcom/jme3/math/Vector3f;

    const-string v1, "centers"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write([Lcom/jme3/export/Savable;Ljava/lang/String;[Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/bullet/collision/shapes/MultiSphere;->radii:[F

    const-string v1, "radii"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write([FLjava/lang/String;[F)V

    return-void
.end method
