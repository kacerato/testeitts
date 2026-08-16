.class public Lcom/jme3/terrain/geomipmap/picking/TerrainPickData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field protected cr:Lcom/jme3/collision/CollisionResult;

.field protected targetPatch:Lcom/jme3/terrain/geomipmap/TerrainPatch;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/terrain/geomipmap/TerrainPatch;Lcom/jme3/collision/CollisionResult;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/picking/TerrainPickData;->targetPatch:Lcom/jme3/terrain/geomipmap/TerrainPatch;

    .line 4
    iput-object p2, p0, Lcom/jme3/terrain/geomipmap/picking/TerrainPickData;->cr:Lcom/jme3/collision/CollisionResult;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 3

    instance-of v0, p1, Lcom/jme3/terrain/geomipmap/picking/TerrainPickData;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/jme3/terrain/geomipmap/picking/TerrainPickData;

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/picking/TerrainPickData;->cr:Lcom/jme3/collision/CollisionResult;

    invoke-virtual {v0}, Lcom/jme3/collision/CollisionResult;->getDistance()F

    move-result v0

    iget-object v2, p1, Lcom/jme3/terrain/geomipmap/picking/TerrainPickData;->cr:Lcom/jme3/collision/CollisionResult;

    invoke-virtual {v2}, Lcom/jme3/collision/CollisionResult;->getDistance()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/picking/TerrainPickData;->cr:Lcom/jme3/collision/CollisionResult;

    invoke-virtual {v0}, Lcom/jme3/collision/CollisionResult;->getDistance()F

    move-result v0

    iget-object p1, p1, Lcom/jme3/terrain/geomipmap/picking/TerrainPickData;->cr:Lcom/jme3/collision/CollisionResult;

    invoke-virtual {p1}, Lcom/jme3/collision/CollisionResult;->getDistance()F

    move-result p1

    cmpl-float p1, v0, p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/jme3/terrain/geomipmap/picking/TerrainPickData;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/jme3/terrain/geomipmap/picking/TerrainPickData;

    invoke-virtual {p1, p0}, Lcom/jme3/terrain/geomipmap/picking/TerrainPickData;->compareTo(Ljava/lang/Object;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
