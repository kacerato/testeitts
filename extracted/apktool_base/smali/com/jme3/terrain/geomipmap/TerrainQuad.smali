.class public Lcom/jme3/terrain/geomipmap/TerrainQuad;
.super Lcom/jme3/scene/Node;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/terrain/Terrain;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/terrain/geomipmap/TerrainQuad$QuadrantChild;,
        Lcom/jme3/terrain/geomipmap/TerrainQuad$LocationHeight;
    }
.end annotation


# instance fields
.field private affectedAreaBBox:Lcom/jme3/bounding/BoundingBox;

.field private lastScale:Lcom/jme3/math/Vector3f;

.field private maxLod:I

.field protected neighbourFinder:Lcom/jme3/terrain/geomipmap/NeighbourFinder;

.field protected offset:Lcom/jme3/math/Vector2f;

.field protected offsetAmount:F

.field protected patchSize:I

.field private picker:Lcom/jme3/terrain/geomipmap/picking/TerrainPicker;

.field protected quadrant:I

.field protected size:I

.field protected stepScale:Lcom/jme3/math/Vector3f;

.field protected totalSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "Terrain"

    invoke-direct {p0, v0}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->quadrant:I

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->maxLod:I

    .line 4
    new-instance v0, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;

    invoke-direct {v0, p0}, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;-><init>(Lcom/jme3/terrain/geomipmap/TerrainQuad;)V

    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->picker:Lcom/jme3/terrain/geomipmap/picking/TerrainPicker;

    .line 5
    sget-object v0, Lcom/jme3/math/Vector3f;->UNIT_XYZ:Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->lastScale:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILcom/jme3/math/Vector3f;[F)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 11
    new-instance v7, Lcom/jme3/math/Vector2f;

    invoke-direct {v7}, Lcom/jme3/math/Vector2f;-><init>()V

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p3

    invoke-direct/range {v0 .. v8}, Lcom/jme3/terrain/geomipmap/TerrainQuad;-><init>(Ljava/lang/String;IILcom/jme3/math/Vector3f;[FILcom/jme3/math/Vector2f;F)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILcom/jme3/math/Vector3f;[F)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10
    new-instance v7, Lcom/jme3/math/Vector2f;

    invoke-direct {v7}, Lcom/jme3/math/Vector2f;-><init>()V

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p3

    invoke-direct/range {v0 .. v8}, Lcom/jme3/terrain/geomipmap/TerrainQuad;-><init>(Ljava/lang/String;IILcom/jme3/math/Vector3f;[FILcom/jme3/math/Vector2f;F)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILcom/jme3/math/Vector3f;[FILcom/jme3/math/Vector2f;F)V
    .locals 2

    .line 12
    invoke-direct {p0, p1}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->quadrant:I

    const/4 p1, -0x1

    .line 14
    iput p1, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->maxLod:I

    .line 15
    new-instance p1, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;

    invoke-direct {p1, p0}, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;-><init>(Lcom/jme3/terrain/geomipmap/TerrainQuad;)V

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->picker:Lcom/jme3/terrain/geomipmap/picking/TerrainPicker;

    .line 16
    sget-object p1, Lcom/jme3/math/Vector3f;->UNIT_XYZ:Lcom/jme3/math/Vector3f;

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->lastScale:Lcom/jme3/math/Vector3f;

    if-nez p5, :cond_0

    .line 17
    invoke-direct {p0, p3}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->generateDefaultHeightMap(I)[F

    move-result-object p5

    :cond_0
    add-int/lit8 p1, p3, -0x1

    .line 18
    invoke-static {p1}, Lcom/jme3/math/FastMath;->isPowerOfTwo(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 19
    array-length p1, p5

    int-to-float p1, p1

    invoke-static {p1}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result p1

    int-to-float v0, p3

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p1

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v1, "Heightmap size is larger than the terrain size. Make sure your heightmap image is the same size as the terrain!"

    invoke-virtual {p1, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 21
    :cond_1
    iput-object p7, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->offset:Lcom/jme3/math/Vector2f;

    .line 22
    iput p8, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->offsetAmount:F

    .line 23
    iput p6, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->totalSize:I

    .line 24
    iput p3, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->size:I

    .line 25
    iput p2, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->patchSize:I

    .line 26
    iput-object p4, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->stepScale:Lcom/jme3/math/Vector3f;

    .line 27
    invoke-virtual {p0, p2, p5}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->split(I[F)V

    return-void

    .line 28
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "size given: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "  Terrain quad sizes may only be (2^N + 1)"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;II[F)V
    .locals 6

    .line 6
    sget-object v4, Lcom/jme3/math/Vector3f;->UNIT_XYZ:Lcom/jme3/math/Vector3f;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/jme3/terrain/geomipmap/TerrainQuad;-><init>(Ljava/lang/String;IILcom/jme3/math/Vector3f;[F)V

    .line 7
    new-instance p1, Lcom/jme3/bounding/BoundingBox;

    new-instance p2, Lcom/jme3/math/Vector3f;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p3, p3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iget p3, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->size:I

    mul-int/lit8 p4, p3, 0x2

    int-to-float p4, p4

    mul-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    invoke-direct {p1, p2, p4, v0, p3}, Lcom/jme3/bounding/BoundingBox;-><init>(Lcom/jme3/math/Vector3f;FFF)V

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->affectedAreaBBox:Lcom/jme3/bounding/BoundingBox;

    .line 8
    invoke-virtual {p0, p1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->fixNormalEdges(Lcom/jme3/bounding/BoundingBox;)V

    .line 9
    new-instance p1, Lcom/jme3/terrain/geomipmap/NormalRecalcControl;

    invoke-direct {p1, p0}, Lcom/jme3/terrain/geomipmap/NormalRecalcControl;-><init>(Lcom/jme3/terrain/geomipmap/TerrainQuad;)V

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Spatial;->addControl(Lcom/jme3/scene/control/Control;)V

    return-void
.end method

.method private attachBoundingBox(Lcom/jme3/bounding/BoundingBox;Lcom/jme3/scene/Node;)V
    .locals 4

    new-instance v0, Lcom/jme3/scene/debug/WireBox;

    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingBox;->getXExtent()F

    move-result v1

    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingBox;->getYExtent()F

    move-result v2

    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingBox;->getZExtent()F

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/jme3/scene/debug/WireBox;-><init>(FFF)V

    new-instance v1, Lcom/jme3/scene/Geometry;

    invoke-direct {v1}, Lcom/jme3/scene/Geometry;-><init>()V

    invoke-virtual {v1, v0}, Lcom/jme3/scene/Geometry;->setMesh(Lcom/jme3/scene/Mesh;)V

    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingVolume;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    invoke-virtual {p2, v1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    return-void
.end method

.method private collideWithRay(Lcom/jme3/math/Ray;Lcom/jme3/collision/CollisionResults;)I
    .locals 1

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->picker:Lcom/jme3/terrain/geomipmap/picking/TerrainPicker;

    invoke-interface {v0, p1, p2}, Lcom/jme3/terrain/geomipmap/picking/TerrainPicker;->getTerrainIntersection(Lcom/jme3/math/Ray;Lcom/jme3/collision/CollisionResults;)I

    move-result p1

    return p1
.end method

.method private findMatchingChild(II)Lcom/jme3/terrain/geomipmap/TerrainQuad$QuadrantChild;
    .locals 8

    invoke-direct {p0, p1, p2}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->findQuadrant(II)I

    move-result v0

    iget v1, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->size:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    shr-int/2addr v1, v2

    iget-object v3, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result v3

    :cond_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_7

    iget-object v4, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v4, v3}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/scene/Spatial;

    instance-of v5, v4, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    invoke-virtual {v5}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getQuadrant()I

    move-result v5

    goto :goto_0

    :cond_1
    instance-of v5, v4, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    if-eqz v5, :cond_2

    move-object v5, v4

    check-cast v5, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    invoke-virtual {v5}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getQuadrant()S

    move-result v5

    goto :goto_0

    :cond_2
    move v5, v6

    :goto_0
    if-ne v5, v2, :cond_3

    and-int/lit8 v7, v0, 0x1

    if-eqz v7, :cond_3

    move v5, p1

    :goto_1
    move v6, p2

    :goto_2
    move v7, v2

    goto :goto_3

    :cond_3
    const/4 v7, 0x2

    if-ne v5, v7, :cond_4

    and-int/lit8 v7, v0, 0x2

    if-eqz v7, :cond_4

    sub-int v5, p2, v1

    add-int/2addr v5, v2

    move v7, v2

    move v6, v5

    move v5, p1

    goto :goto_3

    :cond_4
    const/4 v7, 0x3

    if-ne v5, v7, :cond_5

    and-int/lit8 v7, v0, 0x4

    if-eqz v7, :cond_5

    sub-int v5, p1, v1

    add-int/2addr v5, v2

    goto :goto_1

    :cond_5
    const/4 v7, 0x4

    if-ne v5, v7, :cond_6

    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_6

    sub-int v5, p1, v1

    add-int/2addr v5, v2

    sub-int v6, p2, v1

    add-int/2addr v6, v2

    goto :goto_2

    :cond_6
    move v5, p1

    move v7, v6

    move v6, p2

    :goto_3
    if-eqz v7, :cond_0

    new-instance p1, Lcom/jme3/terrain/geomipmap/TerrainQuad$QuadrantChild;

    invoke-direct {p1, p0, v5, v6, v4}, Lcom/jme3/terrain/geomipmap/TerrainQuad$QuadrantChild;-><init>(Lcom/jme3/terrain/geomipmap/TerrainQuad;IILcom/jme3/scene/Spatial;)V

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method private findQuadrant(II)I
    .locals 3

    iget v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->size:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    shr-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    if-ge p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge p1, v0, :cond_1

    add-int/lit8 v2, v0, -0x1

    if-lt p2, v2, :cond_1

    or-int/lit8 v1, v1, 0x2

    :cond_1
    add-int/lit8 v2, v0, -0x1

    if-lt p1, v2, :cond_2

    if-ge p2, v0, :cond_2

    or-int/lit8 v1, v1, 0x4

    :cond_2
    if-lt p1, v2, :cond_3

    if-lt p2, v2, :cond_3

    or-int/lit8 v1, v1, 0x8

    :cond_3
    return v1
.end method

.method private generateDefaultHeightMap(I)[F
    .locals 0

    mul-int/2addr p1, p1

    new-array p1, p1, [F

    return-object p1
.end method

.method private isInside(II)Z
    .locals 1

    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    iget v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->totalSize:I

    if-gt p1, v0, :cond_1

    if-le p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public adjustHeight(Lcom/jme3/math/Vector2f;F)V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->adjustHeight(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public adjustHeight(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/math/Vector2f;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, p1, p2, v0}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->setHeight(Ljava/util/List;Ljava/util/List;Z)V

    return-void
.end method

.method public attachBoundChildren(Lcom/jme3/scene/Node;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/jme3/scene/Node;->getQuantity()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Node;->getChild(I)Lcom/jme3/scene/Spatial;

    move-result-object v1

    instance-of v1, v1, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Node;->getChild(I)Lcom/jme3/scene/Spatial;

    move-result-object v1

    check-cast v1, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    invoke-virtual {v1, p1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->attachBoundChildren(Lcom/jme3/scene/Node;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/jme3/scene/Node;->getChild(I)Lcom/jme3/scene/Spatial;

    move-result-object v1

    instance-of v1, v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Node;->getChild(I)Lcom/jme3/scene/Spatial;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v1

    instance-of v2, v1, Lcom/jme3/bounding/BoundingBox;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/jme3/bounding/BoundingBox;

    invoke-direct {p0, v1, p1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->attachBoundingBox(Lcom/jme3/bounding/BoundingBox;Lcom/jme3/scene/Node;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v0

    instance-of v1, v0, Lcom/jme3/bounding/BoundingBox;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/jme3/bounding/BoundingBox;

    invoke-direct {p0, v0, p1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->attachBoundingBox(Lcom/jme3/bounding/BoundingBox;Lcom/jme3/scene/Node;)V

    :cond_3
    return-void
.end method

.method public cacheTerrainTransforms()V
    .locals 3

    iget-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result v0

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1, v0}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Spatial;

    instance-of v2, v1, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    invoke-virtual {v1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->cacheTerrainTransforms()V

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    invoke-virtual {v1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->cacheTerrainTransforms()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public calculateLod(Ljava/util/List;Ljava/util/HashMap;Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/math/Vector3f;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;",
            ">;",
            "Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;",
            ")Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result v0

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    iget-object v2, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v2, v0}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/scene/Spatial;

    instance-of v3, v2, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    check-cast v2, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    invoke-virtual {v2, p1, p2, p3}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->calculateLod(Ljava/util/List;Ljava/util/HashMap;Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_1
    move v1, v4

    goto :goto_0

    :cond_1
    instance-of v3, v2, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    if-eqz v3, :cond_0

    check-cast v2, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    invoke-interface {p3, v2, p1, p2}, Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;->calculateLod(Lcom/jme3/terrain/geomipmap/TerrainPatch;Ljava/util/List;Ljava/util/HashMap;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_2
    return v1
.end method

.method public clearCaches()V
    .locals 3

    iget-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result v0

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1, v0}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Spatial;

    instance-of v2, v1, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    invoke-virtual {v1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->clearCaches()V

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    invoke-virtual {v1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->clearCaches()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public bridge synthetic clone()Lcom/jme3/asset/CloneableSmartAsset;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->clone()Lcom/jme3/terrain/geomipmap/TerrainQuad;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone(Z)Lcom/jme3/scene/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->clone(Z)Lcom/jme3/terrain/geomipmap/TerrainQuad;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/jme3/scene/Spatial;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->clone()Lcom/jme3/terrain/geomipmap/TerrainQuad;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone(Z)Lcom/jme3/scene/Spatial;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->clone(Z)Lcom/jme3/terrain/geomipmap/TerrainQuad;

    move-result-object p1

    return-object p1
.end method

.method public clone()Lcom/jme3/terrain/geomipmap/TerrainQuad;
    .locals 1

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->clone(Z)Lcom/jme3/terrain/geomipmap/TerrainQuad;

    move-result-object v0

    return-object v0
.end method

.method public clone(Z)Lcom/jme3/terrain/geomipmap/TerrainQuad;
    .locals 2

    .line 7
    invoke-super {p0, p1}, Lcom/jme3/scene/Node;->clone(Z)Lcom/jme3/scene/Node;

    move-result-object p1

    check-cast p1, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    .line 8
    iget-object v0, p0, Lcom/jme3/scene/Spatial;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/jme3/scene/Spatial;->name:Ljava/lang/String;

    .line 9
    iget v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->size:I

    iput v0, p1, Lcom/jme3/terrain/geomipmap/TerrainQuad;->size:I

    .line 10
    iget v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->totalSize:I

    iput v0, p1, Lcom/jme3/terrain/geomipmap/TerrainQuad;->totalSize:I

    .line 11
    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->stepScale:Lcom/jme3/math/Vector3f;

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v0

    iput-object v0, p1, Lcom/jme3/terrain/geomipmap/TerrainQuad;->stepScale:Lcom/jme3/math/Vector3f;

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->offset:Lcom/jme3/math/Vector2f;

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {v0}, Lcom/jme3/math/Vector2f;->clone()Lcom/jme3/math/Vector2f;

    move-result-object v0

    iput-object v0, p1, Lcom/jme3/terrain/geomipmap/TerrainQuad;->offset:Lcom/jme3/math/Vector2f;

    .line 15
    :cond_1
    iget v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->offsetAmount:F

    iput v0, p1, Lcom/jme3/terrain/geomipmap/TerrainQuad;->offsetAmount:F

    .line 16
    iget v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->quadrant:I

    iput v0, p1, Lcom/jme3/terrain/geomipmap/TerrainQuad;->quadrant:I

    .line 17
    const-class v0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Spatial;->getControl(Ljava/lang/Class;)Lcom/jme3/scene/control/Control;

    move-result-object v1

    check-cast v1, Lcom/jme3/terrain/geomipmap/TerrainLodControl;

    .line 18
    invoke-virtual {p1, v0}, Lcom/jme3/scene/Spatial;->getControl(Ljava/lang/Class;)Lcom/jme3/scene/control/Control;

    move-result-object v0

    check-cast v0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;

    if-eqz v1, :cond_2

    .line 19
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v0

    instance-of v0, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    .line 20
    :cond_2
    const-class v0, Lcom/jme3/terrain/geomipmap/NormalRecalcControl;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Spatial;->getControl(Ljava/lang/Class;)Lcom/jme3/scene/control/Control;

    move-result-object v0

    check-cast v0, Lcom/jme3/terrain/geomipmap/NormalRecalcControl;

    if-eqz v0, :cond_3

    .line 21
    invoke-virtual {v0, p0}, Lcom/jme3/terrain/geomipmap/NormalRecalcControl;->setTerrain(Lcom/jme3/terrain/geomipmap/TerrainQuad;)V

    :cond_3
    return-object p1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->clone()Lcom/jme3/terrain/geomipmap/TerrainQuad;

    move-result-object v0

    return-object v0
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/jme3/scene/Node;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->stepScale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Vector3f;

    iput-object p2, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->stepScale:Lcom/jme3/math/Vector3f;

    iget-object p2, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->offset:Lcom/jme3/math/Vector2f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Vector2f;

    iput-object p2, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->offset:Lcom/jme3/math/Vector2f;

    iget-object p2, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->affectedAreaBBox:Lcom/jme3/bounding/BoundingBox;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/bounding/BoundingBox;

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->affectedAreaBBox:Lcom/jme3/bounding/BoundingBox;

    new-instance p1, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;

    invoke-direct {p1, p0}, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;-><init>(Lcom/jme3/terrain/geomipmap/TerrainQuad;)V

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->picker:Lcom/jme3/terrain/geomipmap/picking/TerrainPicker;

    return-void
.end method

.method public collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/collision/CollisionResults;)I
    .locals 3

    instance-of v0, p1, Lcom/jme3/math/Ray;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/jme3/math/Ray;

    invoke-direct {p0, p1, p2}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->collideWithRay(Lcom/jme3/math/Ray;Lcom/jme3/collision/CollisionResults;)I

    move-result p1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/jme3/bounding/BoundingVolume;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v0

    move-object v2, p1

    check-cast v2, Lcom/jme3/bounding/BoundingVolume;

    invoke-virtual {v0, v2}, Lcom/jme3/bounding/BoundingVolume;->intersects(Lcom/jme3/bounding/BoundingVolume;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/scene/Spatial;

    invoke-interface {v2, p1, p2}, Lcom/jme3/collision/Collidable;->collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/collision/CollisionResults;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    return v1
.end method

.method public createHeightSubBlock([FIII)[F
    .locals 6

    mul-int v0, p4, p4

    new-array v0, v0, [F

    array-length v1, p1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/jme3/math/FastMath;->sqrt(F)F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    move v3, p3

    :goto_0
    add-int v4, p4, p3

    if-ge v3, v4, :cond_2

    move v4, p2

    :goto_1
    add-int v5, p4, p2

    if-ge v4, v5, :cond_1

    if-ge v4, v1, :cond_0

    if-ge v3, v1, :cond_0

    mul-int v5, v3, v1

    add-int/2addr v5, v4

    aget v5, p1, v5

    aput v5, v0, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public createQuad(I[F)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget v2, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->size:I

    shr-int/lit8 v3, v2, 0x2

    const/4 v4, 0x1

    add-int/2addr v2, v4

    shr-int/2addr v2, v4

    new-instance v12, Lcom/jme3/math/Vector2f;

    invoke-direct {v12}, Lcom/jme3/math/Vector2f;-><init>()V

    iget v5, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->offsetAmount:F

    int-to-float v14, v3

    add-float/2addr v5, v14

    iput v5, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->offsetAmount:F

    const/4 v15, 0x0

    invoke-virtual {v0, v1, v15, v15, v2}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->createHeightSubBlock([FIII)[F

    move-result-object v10

    new-instance v13, Lcom/jme3/math/Vector3f;

    neg-int v3, v3

    int-to-float v3, v3

    iget-object v5, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->stepScale:Lcom/jme3/math/Vector3f;

    iget v6, v5, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v6, v3

    iget v5, v5, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v5, v3

    const/4 v11, 0x0

    invoke-direct {v13, v6, v11, v5}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iget-object v5, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->offset:Lcom/jme3/math/Vector2f;

    iget v6, v5, Lcom/jme3/math/Vector2f;->x:F

    iput v6, v12, Lcom/jme3/math/Vector2f;->x:F

    iget v5, v5, Lcom/jme3/math/Vector2f;->y:F

    iget v7, v13, Lcom/jme3/math/Vector3f;->x:F

    add-float/2addr v6, v7

    iput v6, v12, Lcom/jme3/math/Vector2f;->x:F

    iget v6, v13, Lcom/jme3/math/Vector3f;->z:F

    add-float/2addr v5, v6

    iput v5, v12, Lcom/jme3/math/Vector2f;->y:F

    new-instance v9, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Quad1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v8, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->stepScale:Lcom/jme3/math/Vector3f;

    iget v7, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->totalSize:I

    iget v5, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->offsetAmount:F

    move/from16 v16, v5

    move-object v5, v9

    move/from16 v17, v7

    move/from16 v7, p1

    move-object/from16 v18, v8

    move v8, v2

    move-object v15, v9

    move-object/from16 v9, v18

    move/from16 v11, v17

    move-object v4, v13

    move/from16 v13, v16

    invoke-direct/range {v5 .. v13}, Lcom/jme3/terrain/geomipmap/TerrainQuad;-><init>(Ljava/lang/String;IILcom/jme3/math/Vector3f;[FILcom/jme3/math/Vector2f;F)V

    invoke-virtual {v15, v4}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    const/4 v4, 0x1

    iput v4, v15, Lcom/jme3/terrain/geomipmap/TerrainQuad;->quadrant:I

    invoke-virtual {v0, v15}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    add-int/lit8 v4, v2, -0x1

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v5, v4, v2}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->createHeightSubBlock([FIII)[F

    move-result-object v10

    new-instance v15, Lcom/jme3/math/Vector3f;

    iget-object v5, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->stepScale:Lcom/jme3/math/Vector3f;

    iget v6, v5, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v6, v3

    iget v5, v5, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v5, v14

    const/4 v13, 0x0

    invoke-direct {v15, v6, v13, v5}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v12, Lcom/jme3/math/Vector2f;

    invoke-direct {v12}, Lcom/jme3/math/Vector2f;-><init>()V

    iget-object v5, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->offset:Lcom/jme3/math/Vector2f;

    iget v6, v5, Lcom/jme3/math/Vector2f;->x:F

    iput v6, v12, Lcom/jme3/math/Vector2f;->x:F

    iget v5, v5, Lcom/jme3/math/Vector2f;->y:F

    iget v7, v15, Lcom/jme3/math/Vector3f;->x:F

    add-float/2addr v6, v7

    iput v6, v12, Lcom/jme3/math/Vector2f;->x:F

    iget v6, v15, Lcom/jme3/math/Vector3f;->z:F

    add-float/2addr v5, v6

    iput v5, v12, Lcom/jme3/math/Vector2f;->y:F

    new-instance v11, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Quad2"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v9, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->stepScale:Lcom/jme3/math/Vector3f;

    iget v8, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->totalSize:I

    iget v7, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->offsetAmount:F

    move-object v5, v11

    move/from16 v16, v7

    move/from16 v7, p1

    move/from16 v17, v8

    move v8, v2

    move/from16 v18, v3

    move-object v3, v11

    move/from16 v11, v17

    move/from16 v13, v16

    invoke-direct/range {v5 .. v13}, Lcom/jme3/terrain/geomipmap/TerrainQuad;-><init>(Ljava/lang/String;IILcom/jme3/math/Vector3f;[FILcom/jme3/math/Vector2f;F)V

    invoke-virtual {v3, v15}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    const/4 v5, 0x2

    iput v5, v3, Lcom/jme3/terrain/geomipmap/TerrainQuad;->quadrant:I

    invoke-virtual {v0, v3}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v4, v3, v2}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->createHeightSubBlock([FIII)[F

    move-result-object v10

    new-instance v3, Lcom/jme3/math/Vector3f;

    iget-object v5, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->stepScale:Lcom/jme3/math/Vector3f;

    iget v6, v5, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v6, v14

    iget v5, v5, Lcom/jme3/math/Vector3f;->z:F

    mul-float v5, v5, v18

    const/4 v15, 0x0

    invoke-direct {v3, v6, v15, v5}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v12, Lcom/jme3/math/Vector2f;

    invoke-direct {v12}, Lcom/jme3/math/Vector2f;-><init>()V

    iget-object v5, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->offset:Lcom/jme3/math/Vector2f;

    iget v6, v5, Lcom/jme3/math/Vector2f;->x:F

    iput v6, v12, Lcom/jme3/math/Vector2f;->x:F

    iget v5, v5, Lcom/jme3/math/Vector2f;->y:F

    iget v7, v3, Lcom/jme3/math/Vector3f;->x:F

    add-float/2addr v6, v7

    iput v6, v12, Lcom/jme3/math/Vector2f;->x:F

    iget v6, v3, Lcom/jme3/math/Vector3f;->z:F

    add-float/2addr v5, v6

    iput v5, v12, Lcom/jme3/math/Vector2f;->y:F

    new-instance v13, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Quad3"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v9, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->stepScale:Lcom/jme3/math/Vector3f;

    iget v11, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->totalSize:I

    iget v8, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->offsetAmount:F

    move-object v5, v13

    move/from16 v7, p1

    move/from16 v16, v8

    move v8, v2

    move-object v15, v13

    move/from16 v13, v16

    invoke-direct/range {v5 .. v13}, Lcom/jme3/terrain/geomipmap/TerrainQuad;-><init>(Ljava/lang/String;IILcom/jme3/math/Vector3f;[FILcom/jme3/math/Vector2f;F)V

    invoke-virtual {v15, v3}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    const/4 v3, 0x3

    iput v3, v15, Lcom/jme3/terrain/geomipmap/TerrainQuad;->quadrant:I

    invoke-virtual {v0, v15}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    invoke-virtual {v0, v1, v4, v4, v2}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->createHeightSubBlock([FIII)[F

    move-result-object v10

    new-instance v1, Lcom/jme3/math/Vector3f;

    iget-object v3, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->stepScale:Lcom/jme3/math/Vector3f;

    iget v4, v3, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v4, v14

    iget v3, v3, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v14, v3

    const/4 v3, 0x0

    invoke-direct {v1, v4, v3, v14}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v12, Lcom/jme3/math/Vector2f;

    invoke-direct {v12}, Lcom/jme3/math/Vector2f;-><init>()V

    iget-object v3, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->offset:Lcom/jme3/math/Vector2f;

    iget v4, v3, Lcom/jme3/math/Vector2f;->x:F

    iput v4, v12, Lcom/jme3/math/Vector2f;->x:F

    iget v3, v3, Lcom/jme3/math/Vector2f;->y:F

    iget v5, v1, Lcom/jme3/math/Vector3f;->x:F

    add-float/2addr v4, v5

    iput v4, v12, Lcom/jme3/math/Vector2f;->x:F

    iget v4, v1, Lcom/jme3/math/Vector3f;->z:F

    add-float/2addr v3, v4

    iput v3, v12, Lcom/jme3/math/Vector2f;->y:F

    new-instance v3, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Quad4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v9, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->stepScale:Lcom/jme3/math/Vector3f;

    iget v11, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->totalSize:I

    iget v13, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->offsetAmount:F

    move-object v5, v3

    invoke-direct/range {v5 .. v13}, Lcom/jme3/terrain/geomipmap/TerrainQuad;-><init>(Ljava/lang/String;IILcom/jme3/math/Vector3f;[FILcom/jme3/math/Vector2f;F)V

    invoke-virtual {v3, v1}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    const/4 v1, 0x4

    iput v1, v3, Lcom/jme3/terrain/geomipmap/TerrainQuad;->quadrant:I

    invoke-virtual {v0, v3}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    return-void
.end method

.method public createQuadPatch([F)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->size:I

    shr-int/lit8 v3, v2, 0x2

    shr-int/lit8 v4, v2, 0x1

    const/4 v5, 0x1

    add-int/2addr v2, v5

    shr-int/2addr v2, v5

    iget v6, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->offsetAmount:F

    int-to-float v3, v3

    add-float/2addr v6, v3

    iput v6, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->offsetAmount:F

    const/4 v15, 0x0

    invoke-virtual {v0, v1, v15, v15, v2}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->createHeightSubBlock([FIII)[F

    move-result-object v10

    new-instance v14, Lcom/jme3/math/Vector3f;

    neg-int v4, v4

    int-to-float v4, v4

    iget-object v6, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->stepScale:Lcom/jme3/math/Vector3f;

    iget v7, v6, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v7, v4

    iget v6, v6, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v6, v4

    const/4 v13, 0x0

    invoke-direct {v14, v7, v13, v6}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v12, Lcom/jme3/math/Vector2f;

    invoke-direct {v12}, Lcom/jme3/math/Vector2f;-><init>()V

    iget-object v6, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->offset:Lcom/jme3/math/Vector2f;

    iget v7, v6, Lcom/jme3/math/Vector2f;->x:F

    iput v7, v12, Lcom/jme3/math/Vector2f;->x:F

    iget v6, v6, Lcom/jme3/math/Vector2f;->y:F

    iget v8, v14, Lcom/jme3/math/Vector3f;->x:F

    const/high16 v16, 0x40000000    # 2.0f

    div-float v8, v8, v16

    add-float/2addr v7, v8

    iput v7, v12, Lcom/jme3/math/Vector2f;->x:F

    iget v7, v14, Lcom/jme3/math/Vector3f;->z:F

    div-float v7, v7, v16

    add-float/2addr v6, v7

    iput v6, v12, Lcom/jme3/math/Vector2f;->y:F

    new-instance v11, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Patch1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v9, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->stepScale:Lcom/jme3/math/Vector3f;

    iget v8, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->totalSize:I

    iget v6, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->offsetAmount:F

    move/from16 v17, v6

    move-object v6, v11

    move/from16 v18, v8

    move v8, v2

    move-object v15, v11

    move-object v11, v14

    move-object/from16 v19, v12

    move/from16 v12, v18

    move-object/from16 v13, v19

    move-object/from16 v20, v14

    move/from16 v14, v17

    invoke-direct/range {v6 .. v14}, Lcom/jme3/terrain/geomipmap/TerrainPatch;-><init>(Ljava/lang/String;ILcom/jme3/math/Vector3f;[FLcom/jme3/math/Vector3f;ILcom/jme3/math/Vector2f;F)V

    invoke-virtual {v15, v5}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->setQuadrant(S)V

    invoke-virtual {v0, v15}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    new-instance v5, Lcom/jme3/bounding/BoundingBox;

    invoke-direct {v5}, Lcom/jme3/bounding/BoundingBox;-><init>()V

    invoke-virtual {v15, v5}, Lcom/jme3/scene/Geometry;->setModelBound(Lcom/jme3/bounding/BoundingVolume;)V

    invoke-virtual {v15}, Lcom/jme3/scene/Geometry;->updateModelBound()V

    add-int/lit8 v5, v2, -0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6, v5, v2}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->createHeightSubBlock([FIII)[F

    move-result-object v10

    new-instance v11, Lcom/jme3/math/Vector3f;

    iget-object v6, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->stepScale:Lcom/jme3/math/Vector3f;

    iget v6, v6, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v6, v4

    const/4 v15, 0x0

    invoke-direct {v11, v6, v15, v15}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v13, Lcom/jme3/math/Vector2f;

    invoke-direct {v13}, Lcom/jme3/math/Vector2f;-><init>()V

    iget-object v6, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->offset:Lcom/jme3/math/Vector2f;

    iget v7, v6, Lcom/jme3/math/Vector2f;->x:F

    iput v7, v13, Lcom/jme3/math/Vector2f;->x:F

    iget v6, v6, Lcom/jme3/math/Vector2f;->y:F

    iput v6, v13, Lcom/jme3/math/Vector2f;->y:F

    move-object/from16 v8, v20

    iget v8, v8, Lcom/jme3/math/Vector3f;->x:F

    div-float v8, v8, v16

    add-float/2addr v7, v8

    iput v7, v13, Lcom/jme3/math/Vector2f;->x:F

    iget-object v7, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->stepScale:Lcom/jme3/math/Vector3f;

    iget v7, v7, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    iput v6, v13, Lcom/jme3/math/Vector2f;->y:F

    new-instance v14, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Patch2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v9, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->stepScale:Lcom/jme3/math/Vector3f;

    iget v12, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->totalSize:I

    iget v8, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->offsetAmount:F

    move-object v6, v14

    move/from16 v17, v8

    move v8, v2

    move-object v15, v14

    move/from16 v14, v17

    invoke-direct/range {v6 .. v14}, Lcom/jme3/terrain/geomipmap/TerrainPatch;-><init>(Ljava/lang/String;ILcom/jme3/math/Vector3f;[FLcom/jme3/math/Vector3f;ILcom/jme3/math/Vector2f;F)V

    const/4 v6, 0x2

    invoke-virtual {v15, v6}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->setQuadrant(S)V

    invoke-virtual {v0, v15}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    new-instance v6, Lcom/jme3/bounding/BoundingBox;

    invoke-direct {v6}, Lcom/jme3/bounding/BoundingBox;-><init>()V

    invoke-virtual {v15, v6}, Lcom/jme3/scene/Geometry;->setModelBound(Lcom/jme3/bounding/BoundingVolume;)V

    invoke-virtual {v15}, Lcom/jme3/scene/Geometry;->updateModelBound()V

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v5, v6, v2}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->createHeightSubBlock([FIII)[F

    move-result-object v10

    new-instance v11, Lcom/jme3/math/Vector3f;

    iget-object v6, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->stepScale:Lcom/jme3/math/Vector3f;

    iget v6, v6, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v4, v6

    const/4 v6, 0x0

    invoke-direct {v11, v6, v6, v4}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v13, Lcom/jme3/math/Vector2f;

    invoke-direct {v13}, Lcom/jme3/math/Vector2f;-><init>()V

    iget-object v4, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->offset:Lcom/jme3/math/Vector2f;

    iget v6, v4, Lcom/jme3/math/Vector2f;->x:F

    iput v6, v13, Lcom/jme3/math/Vector2f;->x:F

    iget v4, v4, Lcom/jme3/math/Vector2f;->y:F

    iput v4, v13, Lcom/jme3/math/Vector2f;->y:F

    iget-object v7, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->stepScale:Lcom/jme3/math/Vector3f;

    iget v7, v7, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    iput v6, v13, Lcom/jme3/math/Vector2f;->x:F

    iget v6, v11, Lcom/jme3/math/Vector3f;->z:F

    div-float v6, v6, v16

    add-float/2addr v4, v6

    iput v4, v13, Lcom/jme3/math/Vector2f;->y:F

    new-instance v4, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Patch3"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v9, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->stepScale:Lcom/jme3/math/Vector3f;

    iget v12, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->totalSize:I

    iget v14, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->offsetAmount:F

    move-object v6, v4

    invoke-direct/range {v6 .. v14}, Lcom/jme3/terrain/geomipmap/TerrainPatch;-><init>(Ljava/lang/String;ILcom/jme3/math/Vector3f;[FLcom/jme3/math/Vector3f;ILcom/jme3/math/Vector2f;F)V

    const/4 v6, 0x3

    invoke-virtual {v4, v6}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->setQuadrant(S)V

    invoke-virtual {v0, v4}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    new-instance v6, Lcom/jme3/bounding/BoundingBox;

    invoke-direct {v6}, Lcom/jme3/bounding/BoundingBox;-><init>()V

    invoke-virtual {v4, v6}, Lcom/jme3/scene/Geometry;->setModelBound(Lcom/jme3/bounding/BoundingVolume;)V

    invoke-virtual {v4}, Lcom/jme3/scene/Geometry;->updateModelBound()V

    invoke-virtual {v0, v1, v5, v5, v2}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->createHeightSubBlock([FIII)[F

    move-result-object v10

    new-instance v11, Lcom/jme3/math/Vector3f;

    const/4 v1, 0x0

    invoke-direct {v11, v1, v1, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v13, Lcom/jme3/math/Vector2f;

    invoke-direct {v13}, Lcom/jme3/math/Vector2f;-><init>()V

    iget-object v1, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->offset:Lcom/jme3/math/Vector2f;

    iget v4, v1, Lcom/jme3/math/Vector2f;->x:F

    iput v4, v13, Lcom/jme3/math/Vector2f;->x:F

    iget v1, v1, Lcom/jme3/math/Vector2f;->y:F

    iput v1, v13, Lcom/jme3/math/Vector2f;->y:F

    iget-object v5, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->stepScale:Lcom/jme3/math/Vector3f;

    iget v6, v5, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v6, v3

    add-float/2addr v4, v6

    iput v4, v13, Lcom/jme3/math/Vector2f;->x:F

    iget v4, v5, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v3, v4

    add-float/2addr v1, v3

    iput v1, v13, Lcom/jme3/math/Vector2f;->y:F

    new-instance v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Patch4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v9, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->stepScale:Lcom/jme3/math/Vector3f;

    iget v12, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->totalSize:I

    iget v14, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->offsetAmount:F

    move-object v6, v1

    invoke-direct/range {v6 .. v14}, Lcom/jme3/terrain/geomipmap/TerrainPatch;-><init>(Ljava/lang/String;ILcom/jme3/math/Vector3f;[FLcom/jme3/math/Vector3f;ILcom/jme3/math/Vector2f;F)V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->setQuadrant(S)V

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    new-instance v2, Lcom/jme3/bounding/BoundingBox;

    invoke-direct {v2}, Lcom/jme3/bounding/BoundingBox;-><init>()V

    invoke-virtual {v1, v2}, Lcom/jme3/scene/Geometry;->setModelBound(Lcom/jme3/bounding/BoundingVolume;)V

    invoke-virtual {v1}, Lcom/jme3/scene/Geometry;->updateModelBound()V

    return-void
.end method

.method public findDownPatch(Lcom/jme3/terrain/geomipmap/TerrainPatch;)Lcom/jme3/terrain/geomipmap/TerrainPatch;
    .locals 5

    invoke-virtual {p1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getQuadrant()S

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getPatch(I)Lcom/jme3/terrain/geomipmap/TerrainPatch;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getQuadrant()S

    move-result v0

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    invoke-virtual {p0, v3}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getPatch(I)Lcom/jme3/terrain/geomipmap/TerrainPatch;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getQuadrant()S

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->findDownQuad()Lcom/jme3/terrain/geomipmap/TerrainQuad;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, v2}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getPatch(I)Lcom/jme3/terrain/geomipmap/TerrainPatch;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getQuadrant()S

    move-result p1

    if-ne p1, v3, :cond_3

    invoke-virtual {p0}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->findDownQuad()Lcom/jme3/terrain/geomipmap/TerrainQuad;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, v4}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getPatch(I)Lcom/jme3/terrain/geomipmap/TerrainPatch;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public findDownQuad()Lcom/jme3/terrain/geomipmap/TerrainQuad;
    .locals 8

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v0

    instance-of v0, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->neighbourFinder:Lcom/jme3/terrain/geomipmap/NeighbourFinder;

    if-nez v0, :cond_2

    return-object v2

    :cond_2
    move v0, v1

    :goto_1
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v3

    check-cast v3, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    goto :goto_2

    :cond_3
    move-object v3, v2

    :goto_2
    iget v4, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->quadrant:I

    const/4 v5, 0x2

    if-ne v4, v1, :cond_4

    invoke-virtual {v3, v5}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getQuad(I)Lcom/jme3/terrain/geomipmap/TerrainQuad;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v6, 0x4

    const/4 v7, 0x3

    if-ne v4, v7, :cond_5

    invoke-virtual {v3, v6}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getQuad(I)Lcom/jme3/terrain/geomipmap/TerrainQuad;

    move-result-object v0

    return-object v0

    :cond_5
    if-ne v4, v5, :cond_6

    invoke-virtual {v3}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->findDownQuad()Lcom/jme3/terrain/geomipmap/TerrainQuad;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0, v1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getQuad(I)Lcom/jme3/terrain/geomipmap/TerrainQuad;

    move-result-object v0

    return-object v0

    :cond_6
    if-ne v4, v6, :cond_7

    invoke-virtual {v3}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->findDownQuad()Lcom/jme3/terrain/geomipmap/TerrainQuad;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0, v7}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getQuad(I)Lcom/jme3/terrain/geomipmap/TerrainQuad;

    move-result-object v0

    return-object v0

    :cond_7
    if-nez v4, :cond_8

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->neighbourFinder:Lcom/jme3/terrain/geomipmap/NeighbourFinder;

    invoke-interface {v0, p0}, Lcom/jme3/terrain/geomipmap/NeighbourFinder;->getDownQuad(Lcom/jme3/terrain/geomipmap/TerrainQuad;)Lcom/jme3/terrain/geomipmap/TerrainQuad;

    move-result-object v0

    return-object v0

    :cond_8
    return-object v2
.end method

.method public findLeftPatch(Lcom/jme3/terrain/geomipmap/TerrainPatch;)Lcom/jme3/terrain/geomipmap/TerrainPatch;
    .locals 5

    invoke-virtual {p1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getQuadrant()S

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getPatch(I)Lcom/jme3/terrain/geomipmap/TerrainPatch;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getQuadrant()S

    move-result v0

    const/4 v3, 0x2

    const/4 v4, 0x4

    if-ne v0, v4, :cond_1

    invoke-virtual {p0, v3}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getPatch(I)Lcom/jme3/terrain/geomipmap/TerrainPatch;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getQuadrant()S

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->findLeftQuad()Lcom/jme3/terrain/geomipmap/TerrainQuad;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, v2}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getPatch(I)Lcom/jme3/terrain/geomipmap/TerrainPatch;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getQuadrant()S

    move-result p1

    if-ne p1, v3, :cond_3

    invoke-virtual {p0}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->findLeftQuad()Lcom/jme3/terrain/geomipmap/TerrainQuad;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, v4}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getPatch(I)Lcom/jme3/terrain/geomipmap/TerrainPatch;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public findLeftQuad()Lcom/jme3/terrain/geomipmap/TerrainQuad;
    .locals 8

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v0

    instance-of v0, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->neighbourFinder:Lcom/jme3/terrain/geomipmap/NeighbourFinder;

    if-nez v0, :cond_2

    return-object v2

    :cond_2
    move v0, v1

    :goto_1
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v3

    check-cast v3, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    goto :goto_2

    :cond_3
    move-object v3, v2

    :goto_2
    iget v4, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->quadrant:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    invoke-virtual {v3, v1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getQuad(I)Lcom/jme3/terrain/geomipmap/TerrainQuad;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v6, 0x2

    const/4 v7, 0x4

    if-ne v4, v7, :cond_5

    invoke-virtual {v3, v6}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getQuad(I)Lcom/jme3/terrain/geomipmap/TerrainQuad;

    move-result-object v0

    return-object v0

    :cond_5
    if-ne v4, v1, :cond_6

    invoke-virtual {v3}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->findLeftQuad()Lcom/jme3/terrain/geomipmap/TerrainQuad;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0, v5}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getQuad(I)Lcom/jme3/terrain/geomipmap/TerrainQuad;

    move-result-object v0

    return-object v0

    :cond_6
    if-ne v4, v6, :cond_7

    invoke-virtual {v3}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->findLeftQuad()Lcom/jme3/terrain/geomipmap/TerrainQuad;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0, v7}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getQuad(I)Lcom/jme3/terrain/geomipmap/TerrainQuad;

    move-result-object v0

    return-object v0

    :cond_7
    if-nez v4, :cond_8

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->neighbourFinder:Lcom/jme3/terrain/geomipmap/NeighbourFinder;

    invoke-interface {v0, p0}, Lcom/jme3/terrain/geomipmap/NeighbourFinder;->getLeftQuad(Lcom/jme3/terrain/geomipmap/TerrainQuad;)Lcom/jme3/terrain/geomipmap/TerrainQuad;

    move-result-object v0

    return-object v0

    :cond_8
    return-object v2
.end method

.method public declared-synchronized findNeighboursLod(Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result v0

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_b

    iget-object v1, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1, v0}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Spatial;

    instance-of v2, v1, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    invoke-virtual {v1, p1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->findNeighboursLod(Ljava/util/HashMap;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :cond_1
    instance-of v2, v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    iget-boolean v2, v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;->searchedForNeighboursAlready:Z

    if-nez v2, :cond_2

    invoke-virtual {p0, v1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->findRightPatch(Lcom/jme3/terrain/geomipmap/TerrainPatch;)Lcom/jme3/terrain/geomipmap/TerrainPatch;

    move-result-object v2

    iput-object v2, v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;->rightNeighbour:Lcom/jme3/terrain/geomipmap/TerrainPatch;

    invoke-virtual {p0, v1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->findDownPatch(Lcom/jme3/terrain/geomipmap/TerrainPatch;)Lcom/jme3/terrain/geomipmap/TerrainPatch;

    move-result-object v2

    iput-object v2, v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;->bottomNeighbour:Lcom/jme3/terrain/geomipmap/TerrainPatch;

    invoke-virtual {p0, v1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->findLeftPatch(Lcom/jme3/terrain/geomipmap/TerrainPatch;)Lcom/jme3/terrain/geomipmap/TerrainPatch;

    move-result-object v2

    iput-object v2, v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;->leftNeighbour:Lcom/jme3/terrain/geomipmap/TerrainPatch;

    invoke-virtual {p0, v1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->findTopPatch(Lcom/jme3/terrain/geomipmap/TerrainPatch;)Lcom/jme3/terrain/geomipmap/TerrainPatch;

    move-result-object v2

    iput-object v2, v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;->topNeighbour:Lcom/jme3/terrain/geomipmap/TerrainPatch;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;->searchedForNeighboursAlready:Z

    :cond_2
    iget-object v2, v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;->rightNeighbour:Lcom/jme3/terrain/geomipmap/TerrainPatch;

    iget-object v3, v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;->bottomNeighbour:Lcom/jme3/terrain/geomipmap/TerrainPatch;

    iget-object v4, v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;->leftNeighbour:Lcom/jme3/terrain/geomipmap/TerrainPatch;

    iget-object v5, v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;->topNeighbour:Lcom/jme3/terrain/geomipmap/TerrainPatch;

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;

    if-nez v6, :cond_3

    new-instance v6, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;

    iget v7, v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;->lod:I

    invoke-direct {v6, v1, v7}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;-><init>(Lcom/jme3/terrain/geomipmap/TerrainPatch;I)V

    invoke-virtual {v6}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;

    if-nez v1, :cond_4

    new-instance v1, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;

    invoke-direct {v1, v2}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;-><init>(Lcom/jme3/terrain/geomipmap/TerrainPatch;)V

    invoke-virtual {v1}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v2, Lcom/jme3/terrain/geomipmap/TerrainPatch;->lod:I

    invoke-virtual {v1, v2}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->setNewLod(I)V

    :cond_4
    invoke-virtual {v1}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->getNewLod()I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->setRightLod(I)V

    invoke-virtual {v6}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->getNewLod()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->setLeftLod(I)V

    :cond_5
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;

    if-nez v1, :cond_6

    new-instance v1, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;

    invoke-direct {v1, v3}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;-><init>(Lcom/jme3/terrain/geomipmap/TerrainPatch;)V

    invoke-virtual {v1}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v3, Lcom/jme3/terrain/geomipmap/TerrainPatch;->lod:I

    invoke-virtual {v1, v2}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->setNewLod(I)V

    :cond_6
    invoke-virtual {v1}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->getNewLod()I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->setBottomLod(I)V

    invoke-virtual {v6}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->getNewLod()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->setTopLod(I)V

    :cond_7
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;

    if-nez v1, :cond_8

    new-instance v1, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;

    invoke-direct {v1, v4}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;-><init>(Lcom/jme3/terrain/geomipmap/TerrainPatch;)V

    invoke-virtual {v1}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v4, Lcom/jme3/terrain/geomipmap/TerrainPatch;->lod:I

    invoke-virtual {v1, v2}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->setNewLod(I)V

    :cond_8
    invoke-virtual {v1}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->getNewLod()I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->setLeftLod(I)V

    invoke-virtual {v6}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->getNewLod()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->setRightLod(I)V

    :cond_9
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;

    if-nez v1, :cond_a

    new-instance v1, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;

    invoke-direct {v1, v5}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;-><init>(Lcom/jme3/terrain/geomipmap/TerrainPatch;)V

    invoke-virtual {v1}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, v5, Lcom/jme3/terrain/geomipmap/TerrainPatch;->lod:I

    invoke-virtual {v1, v2}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->setNewLod(I)V

    :cond_a
    invoke-virtual {v1}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->getNewLod()I

    move-result v2

    invoke-virtual {v6, v2}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->setTopLod(I)V

    invoke-virtual {v6}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->getNewLod()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->setBottomLod(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_b
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public findPick(Lcom/jme3/math/Ray;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/math/Ray;",
            "Ljava/util/List<",
            "Lcom/jme3/terrain/geomipmap/picking/TerrainPickData;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/jme3/bounding/BoundingVolume;->intersects(Lcom/jme3/math/Ray;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/jme3/scene/Node;->getQuantity()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1, v0}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1, v0}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    invoke-virtual {v1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->ensurePositiveVolumeBBox()V

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/jme3/bounding/BoundingVolume;->intersects(Lcom/jme3/math/Ray;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/jme3/collision/CollisionResults;

    invoke-direct {v2}, Lcom/jme3/collision/CollisionResults;-><init>()V

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Lcom/jme3/math/Ray;->collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/collision/CollisionResults;)I

    invoke-virtual {v2}, Lcom/jme3/collision/CollisionResults;->getClosestCollision()Lcom/jme3/collision/CollisionResult;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/jme3/collision/CollisionResults;->getClosestCollision()Lcom/jme3/collision/CollisionResult;

    move-result-object v3

    invoke-virtual {v3}, Lcom/jme3/collision/CollisionResult;->getDistance()F

    new-instance v3, Lcom/jme3/terrain/geomipmap/picking/TerrainPickData;

    invoke-virtual {v2}, Lcom/jme3/collision/CollisionResults;->getClosestCollision()Lcom/jme3/collision/CollisionResult;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Lcom/jme3/terrain/geomipmap/picking/TerrainPickData;-><init>(Lcom/jme3/terrain/geomipmap/TerrainPatch;Lcom/jme3/collision/CollisionResult;)V

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1, v0}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1, v0}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    invoke-virtual {v1, p1, p2}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->findPick(Lcom/jme3/math/Ray;Ljava/util/List;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public findRightPatch(Lcom/jme3/terrain/geomipmap/TerrainPatch;)Lcom/jme3/terrain/geomipmap/TerrainPatch;
    .locals 5

    invoke-virtual {p1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getQuadrant()S

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getPatch(I)Lcom/jme3/terrain/geomipmap/TerrainPatch;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getQuadrant()S

    move-result v0

    const/4 v3, 0x4

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    invoke-virtual {p0, v3}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getPatch(I)Lcom/jme3/terrain/geomipmap/TerrainPatch;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getQuadrant()S

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->findRightQuad()Lcom/jme3/terrain/geomipmap/TerrainQuad;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, v2}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getPatch(I)Lcom/jme3/terrain/geomipmap/TerrainPatch;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getQuadrant()S

    move-result p1

    if-ne p1, v3, :cond_3

    invoke-virtual {p0}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->findRightQuad()Lcom/jme3/terrain/geomipmap/TerrainQuad;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, v4}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getPatch(I)Lcom/jme3/terrain/geomipmap/TerrainPatch;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public findRightQuad()Lcom/jme3/terrain/geomipmap/TerrainQuad;
    .locals 8

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v0

    instance-of v0, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->neighbourFinder:Lcom/jme3/terrain/geomipmap/NeighbourFinder;

    if-nez v0, :cond_2

    return-object v2

    :cond_2
    move v0, v1

    :goto_1
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v3

    check-cast v3, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    goto :goto_2

    :cond_3
    move-object v3, v2

    :goto_2
    iget v4, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->quadrant:I

    const/4 v5, 0x3

    if-ne v4, v1, :cond_4

    invoke-virtual {v3, v5}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getQuad(I)Lcom/jme3/terrain/geomipmap/TerrainQuad;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v6, 0x4

    const/4 v7, 0x2

    if-ne v4, v7, :cond_5

    invoke-virtual {v3, v6}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getQuad(I)Lcom/jme3/terrain/geomipmap/TerrainQuad;

    move-result-object v0

    return-object v0

    :cond_5
    if-ne v4, v5, :cond_6

    invoke-virtual {v3}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->findRightQuad()Lcom/jme3/terrain/geomipmap/TerrainQuad;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0, v1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getQuad(I)Lcom/jme3/terrain/geomipmap/TerrainQuad;

    move-result-object v0

    return-object v0

    :cond_6
    if-ne v4, v6, :cond_7

    invoke-virtual {v3}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->findRightQuad()Lcom/jme3/terrain/geomipmap/TerrainQuad;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0, v7}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getQuad(I)Lcom/jme3/terrain/geomipmap/TerrainQuad;

    move-result-object v0

    return-object v0

    :cond_7
    if-nez v4, :cond_8

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->neighbourFinder:Lcom/jme3/terrain/geomipmap/NeighbourFinder;

    invoke-interface {v0, p0}, Lcom/jme3/terrain/geomipmap/NeighbourFinder;->getRightQuad(Lcom/jme3/terrain/geomipmap/TerrainQuad;)Lcom/jme3/terrain/geomipmap/TerrainQuad;

    move-result-object v0

    return-object v0

    :cond_8
    return-object v2
.end method

.method public findTopPatch(Lcom/jme3/terrain/geomipmap/TerrainPatch;)Lcom/jme3/terrain/geomipmap/TerrainPatch;
    .locals 5

    invoke-virtual {p1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getQuadrant()S

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getPatch(I)Lcom/jme3/terrain/geomipmap/TerrainPatch;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getQuadrant()S

    move-result v0

    const/4 v3, 0x3

    const/4 v4, 0x4

    if-ne v0, v4, :cond_1

    invoke-virtual {p0, v3}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getPatch(I)Lcom/jme3/terrain/geomipmap/TerrainPatch;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getQuadrant()S

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->findTopQuad()Lcom/jme3/terrain/geomipmap/TerrainQuad;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, v2}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getPatch(I)Lcom/jme3/terrain/geomipmap/TerrainPatch;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getQuadrant()S

    move-result p1

    if-ne p1, v3, :cond_3

    invoke-virtual {p0}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->findTopQuad()Lcom/jme3/terrain/geomipmap/TerrainQuad;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, v4}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getPatch(I)Lcom/jme3/terrain/geomipmap/TerrainPatch;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public findTopQuad()Lcom/jme3/terrain/geomipmap/TerrainQuad;
    .locals 8

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v0

    instance-of v0, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->neighbourFinder:Lcom/jme3/terrain/geomipmap/NeighbourFinder;

    if-nez v0, :cond_2

    return-object v2

    :cond_2
    move v0, v1

    :goto_1
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v3

    check-cast v3, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    goto :goto_2

    :cond_3
    move-object v3, v2

    :goto_2
    iget v4, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->quadrant:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    invoke-virtual {v3, v1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getQuad(I)Lcom/jme3/terrain/geomipmap/TerrainQuad;

    move-result-object v0

    return-object v0

    :cond_4
    const/4 v6, 0x3

    const/4 v7, 0x4

    if-ne v4, v7, :cond_5

    invoke-virtual {v3, v6}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getQuad(I)Lcom/jme3/terrain/geomipmap/TerrainQuad;

    move-result-object v0

    return-object v0

    :cond_5
    if-ne v4, v1, :cond_6

    invoke-virtual {v3}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->findTopQuad()Lcom/jme3/terrain/geomipmap/TerrainQuad;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0, v5}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getQuad(I)Lcom/jme3/terrain/geomipmap/TerrainQuad;

    move-result-object v0

    return-object v0

    :cond_6
    if-ne v4, v6, :cond_7

    invoke-virtual {v3}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->findTopQuad()Lcom/jme3/terrain/geomipmap/TerrainQuad;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0, v7}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getQuad(I)Lcom/jme3/terrain/geomipmap/TerrainQuad;

    move-result-object v0

    return-object v0

    :cond_7
    if-nez v4, :cond_8

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->neighbourFinder:Lcom/jme3/terrain/geomipmap/NeighbourFinder;

    invoke-interface {v0, p0}, Lcom/jme3/terrain/geomipmap/NeighbourFinder;->getTopQuad(Lcom/jme3/terrain/geomipmap/TerrainQuad;)Lcom/jme3/terrain/geomipmap/TerrainQuad;

    move-result-object v0

    return-object v0

    :cond_8
    return-object v2
.end method

.method public declared-synchronized fixEdges(Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result v0

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_a

    iget-object v1, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1, v0}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Spatial;

    instance-of v2, v1, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    invoke-virtual {v1, p1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->fixEdges(Ljava/util/HashMap;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :cond_1
    instance-of v2, v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->lodChanged()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;->searchedForNeighboursAlready:Z

    const/4 v4, 0x1

    if-nez v3, :cond_2

    invoke-virtual {p0, v1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->findRightPatch(Lcom/jme3/terrain/geomipmap/TerrainPatch;)Lcom/jme3/terrain/geomipmap/TerrainPatch;

    move-result-object v3

    iput-object v3, v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;->rightNeighbour:Lcom/jme3/terrain/geomipmap/TerrainPatch;

    invoke-virtual {p0, v1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->findDownPatch(Lcom/jme3/terrain/geomipmap/TerrainPatch;)Lcom/jme3/terrain/geomipmap/TerrainPatch;

    move-result-object v3

    iput-object v3, v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;->bottomNeighbour:Lcom/jme3/terrain/geomipmap/TerrainPatch;

    invoke-virtual {p0, v1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->findLeftPatch(Lcom/jme3/terrain/geomipmap/TerrainPatch;)Lcom/jme3/terrain/geomipmap/TerrainPatch;

    move-result-object v3

    iput-object v3, v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;->leftNeighbour:Lcom/jme3/terrain/geomipmap/TerrainPatch;

    invoke-virtual {p0, v1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->findTopPatch(Lcom/jme3/terrain/geomipmap/TerrainPatch;)Lcom/jme3/terrain/geomipmap/TerrainPatch;

    move-result-object v3

    iput-object v3, v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;->topNeighbour:Lcom/jme3/terrain/geomipmap/TerrainPatch;

    iput-boolean v4, v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;->searchedForNeighboursAlready:Z

    :cond_2
    iget-object v3, v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;->rightNeighbour:Lcom/jme3/terrain/geomipmap/TerrainPatch;

    iget-object v5, v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;->bottomNeighbour:Lcom/jme3/terrain/geomipmap/TerrainPatch;

    iget-object v6, v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;->topNeighbour:Lcom/jme3/terrain/geomipmap/TerrainPatch;

    iget-object v1, v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;->leftNeighbour:Lcom/jme3/terrain/geomipmap/TerrainPatch;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;

    if-nez v7, :cond_3

    new-instance v7, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;

    invoke-direct {v7, v3}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;-><init>(Lcom/jme3/terrain/geomipmap/TerrainPatch;)V

    invoke-virtual {v7}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v3, v3, Lcom/jme3/terrain/geomipmap/TerrainPatch;->lod:I

    invoke-virtual {v7, v3}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->setNewLod(I)V

    :cond_3
    invoke-virtual {v2}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->getNewLod()I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->setLeftLod(I)V

    invoke-virtual {v7, v4}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->setFixEdges(Z)V

    :cond_4
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;

    if-nez v3, :cond_5

    new-instance v3, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;

    invoke-direct {v3, v5}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;-><init>(Lcom/jme3/terrain/geomipmap/TerrainPatch;)V

    invoke-virtual {v3}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v5, v5, Lcom/jme3/terrain/geomipmap/TerrainPatch;->lod:I

    invoke-virtual {v3, v5}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->setNewLod(I)V

    :cond_5
    invoke-virtual {v2}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->getNewLod()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->setTopLod(I)V

    invoke-virtual {v3, v4}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->setFixEdges(Z)V

    :cond_6
    if-eqz v6, :cond_8

    invoke-virtual {v6}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;

    if-nez v3, :cond_7

    new-instance v3, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;

    invoke-direct {v3, v6}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;-><init>(Lcom/jme3/terrain/geomipmap/TerrainPatch;)V

    invoke-virtual {v3}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v5, v6, Lcom/jme3/terrain/geomipmap/TerrainPatch;->lod:I

    invoke-virtual {v3, v5}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->setNewLod(I)V

    :cond_7
    invoke-virtual {v2}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->getNewLod()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->setBottomLod(I)V

    invoke-virtual {v3, v4}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->setFixEdges(Z)V

    :cond_8
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;

    if-nez v3, :cond_9

    new-instance v3, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;

    invoke-direct {v3, v1}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;-><init>(Lcom/jme3/terrain/geomipmap/TerrainPatch;)V

    invoke-virtual {v3}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;->lod:I

    invoke-virtual {v3, v1}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->setNewLod(I)V

    :cond_9
    invoke-virtual {v2}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->getNewLod()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->setRightLod(I)V

    invoke-virtual {v3, v4}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->setFixEdges(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :cond_a
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public fixNormalEdges(Lcom/jme3/bounding/BoundingBox;)V
    .locals 12

    iget-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result v0

    :cond_1
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_8

    iget-object v1, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1, v0}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Spatial;

    instance-of v2, v1, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    if-eqz v2, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/jme3/bounding/BoundingBox;->intersects(Lcom/jme3/bounding/BoundingVolume;)Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast v1, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    invoke-virtual {v1, p1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->fixNormalEdges(Lcom/jme3/bounding/BoundingBox;)V

    goto :goto_0

    :cond_2
    instance-of v2, v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_3

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/jme3/bounding/BoundingBox;->intersects(Lcom/jme3/bounding/BoundingVolume;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    move-object v3, v1

    check-cast v3, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    invoke-virtual {p0, v3}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->findRightPatch(Lcom/jme3/terrain/geomipmap/TerrainPatch;)Lcom/jme3/terrain/geomipmap/TerrainPatch;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->findDownPatch(Lcom/jme3/terrain/geomipmap/TerrainPatch;)Lcom/jme3/terrain/geomipmap/TerrainPatch;

    move-result-object v5

    invoke-virtual {p0, v3}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->findTopPatch(Lcom/jme3/terrain/geomipmap/TerrainPatch;)Lcom/jme3/terrain/geomipmap/TerrainPatch;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->findLeftPatch(Lcom/jme3/terrain/geomipmap/TerrainPatch;)Lcom/jme3/terrain/geomipmap/TerrainPatch;

    move-result-object v7

    const/4 v1, 0x0

    if-eqz v6, :cond_4

    invoke-virtual {p0, v6}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->findLeftPatch(Lcom/jme3/terrain/geomipmap/TerrainPatch;)Lcom/jme3/terrain/geomipmap/TerrainPatch;

    move-result-object v2

    move-object v11, v2

    goto :goto_1

    :cond_4
    move-object v11, v1

    :goto_1
    if-eqz v4, :cond_5

    invoke-virtual {p0, v4}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->findDownPatch(Lcom/jme3/terrain/geomipmap/TerrainPatch;)Lcom/jme3/terrain/geomipmap/TerrainPatch;

    move-result-object v2

    move-object v8, v2

    goto :goto_2

    :cond_5
    move-object v8, v1

    :goto_2
    if-eqz v6, :cond_6

    invoke-virtual {p0, v6}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->findRightPatch(Lcom/jme3/terrain/geomipmap/TerrainPatch;)Lcom/jme3/terrain/geomipmap/TerrainPatch;

    move-result-object v2

    move-object v10, v2

    goto :goto_3

    :cond_6
    move-object v10, v1

    :goto_3
    if-eqz v7, :cond_7

    invoke-virtual {p0, v7}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->findDownPatch(Lcom/jme3/terrain/geomipmap/TerrainPatch;)Lcom/jme3/terrain/geomipmap/TerrainPatch;

    move-result-object v1

    :cond_7
    move-object v9, v1

    invoke-virtual/range {v3 .. v11}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->fixNormalEdges(Lcom/jme3/terrain/geomipmap/TerrainPatch;Lcom/jme3/terrain/geomipmap/TerrainPatch;Lcom/jme3/terrain/geomipmap/TerrainPatch;Lcom/jme3/terrain/geomipmap/TerrainPatch;Lcom/jme3/terrain/geomipmap/TerrainPatch;Lcom/jme3/terrain/geomipmap/TerrainPatch;Lcom/jme3/terrain/geomipmap/TerrainPatch;Lcom/jme3/terrain/geomipmap/TerrainPatch;)V

    goto :goto_0

    :cond_8
    return-void
.end method

.method public fixNormals(Lcom/jme3/bounding/BoundingBox;)V
    .locals 3

    iget-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result v0

    :cond_1
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1, v0}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Spatial;

    instance-of v2, v1, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    if-eqz v2, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/jme3/bounding/BoundingBox;->intersects(Lcom/jme3/bounding/BoundingVolume;)Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast v1, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    invoke-virtual {v1, p1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->fixNormals(Lcom/jme3/bounding/BoundingBox;)V

    goto :goto_0

    :cond_2
    instance-of v2, v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/jme3/bounding/BoundingBox;->intersects(Lcom/jme3/bounding/BoundingVolume;)Z

    move-result v2

    if-eqz v2, :cond_1

    check-cast v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    invoke-virtual {v1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->updateNormals()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public generateDebugTangents(Lcom/jme3/material/Material;)V
    .locals 6

    iget-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result v0

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1, v0}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Spatial;

    instance-of v2, v1, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    invoke-virtual {v1, p1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->generateDebugTangents(Lcom/jme3/material/Material;)V

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    if-eqz v2, :cond_0

    new-instance v2, Lcom/jme3/scene/Geometry;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Debug "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/jme3/scene/Spatial;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    invoke-virtual {v4}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v4

    const v5, 0x3f4ccccd    # 0.8f

    invoke-static {v4, v5}, Lcom/jme3/util/TangentUtils;->genTbnLines(Lcom/jme3/scene/Mesh;F)Lcom/jme3/scene/Mesh;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;Lcom/jme3/scene/Mesh;)V

    invoke-virtual {p0, v2}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->getLocalTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    sget-object v1, Lcom/jme3/scene/Spatial$CullHint;->Never:Lcom/jme3/scene/Spatial$CullHint;

    invoke-virtual {v2, v1}, Lcom/jme3/scene/Spatial;->setCullHint(Lcom/jme3/scene/Spatial$CullHint;)V

    invoke-virtual {v2, p1}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public generateEntropy(Lcom/jme3/terrain/ProgressMonitor;)V
    .locals 3

    invoke-virtual {p0}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->isRootQuad()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->totalSize:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->patchSize:I

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v0, v1

    mul-int/2addr v0, v0

    int-to-float v0, v0

    invoke-interface {p1, v0}, Lcom/jme3/terrain/ProgressMonitor;->setMonitorMax(F)V

    :cond_0
    iget-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result v0

    :cond_1
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1, v0}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Spatial;

    instance-of v2, v1, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    invoke-virtual {v1, p1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->generateEntropy(Lcom/jme3/terrain/ProgressMonitor;)V

    goto :goto_0

    :cond_2
    instance-of v2, v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    invoke-virtual {v1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->generateLodEntropies()V

    if-eqz p1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-interface {p1, v1}, Lcom/jme3/terrain/ProgressMonitor;->incrementProgress(F)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->isRootQuad()Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/jme3/terrain/ProgressMonitor;->progressComplete()V

    :cond_4
    return-void
.end method

.method public getAllTerrainPatches(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/terrain/geomipmap/TerrainPatch;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result v0

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1, v0}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Spatial;

    instance-of v2, v1, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    invoke-virtual {v1, p1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getAllTerrainPatches(Ljava/util/List;)V

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getAllTerrainPatchesWithTranslation(Ljava/util/Map;Lcom/jme3/math/Vector3f;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/jme3/terrain/geomipmap/TerrainPatch;",
            "Lcom/jme3/math/Vector3f;",
            ">;",
            "Lcom/jme3/math/Vector3f;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result v0

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1, v0}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Spatial;

    instance-of v2, v1, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    invoke-virtual {p2}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->getLocalTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/jme3/math/Vector3f;->add(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v2, p1, v1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getAllTerrainPatchesWithTranslation(Ljava/util/Map;Lcom/jme3/math/Vector3f;)V

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    invoke-virtual {p2}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v1}, Lcom/jme3/scene/Spatial;->getLocalTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/jme3/math/Vector3f;->add(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getHeight(IIFF)F
    .locals 1

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->findMatchingChild(II)Lcom/jme3/terrain/geomipmap/TerrainQuad$QuadrantChild;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p2, p1, Lcom/jme3/terrain/geomipmap/TerrainQuad$QuadrantChild;->child:Lcom/jme3/scene/Spatial;

    instance-of v0, p2, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    if-eqz v0, :cond_0

    .line 8
    check-cast p2, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    iget v0, p1, Lcom/jme3/terrain/geomipmap/TerrainQuad$QuadrantChild;->col:I

    iget p1, p1, Lcom/jme3/terrain/geomipmap/TerrainQuad$QuadrantChild;->row:I

    invoke-virtual {p2, v0, p1, p3, p4}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getHeight(IIFF)F

    move-result p1

    return p1

    .line 9
    :cond_0
    instance-of v0, p2, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    if-eqz v0, :cond_1

    .line 10
    check-cast p2, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    iget v0, p1, Lcom/jme3/terrain/geomipmap/TerrainQuad$QuadrantChild;->col:I

    iget p1, p1, Lcom/jme3/terrain/geomipmap/TerrainQuad$QuadrantChild;->row:I

    invoke-virtual {p2, v0, p1, p3, p4}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getHeight(IIFF)F

    move-result p1

    return p1

    :cond_1
    const/high16 p1, 0x7fc00000    # Float.NaN

    return p1
.end method

.method public getHeight(Lcom/jme3/math/Vector2f;)F
    .locals 4

    .line 1
    iget v0, p1, Lcom/jme3/math/Vector2f;->x:F

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldScale()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/jme3/math/Vector3f;->x:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->totalSize:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 2
    iget p1, p1, Lcom/jme3/math/Vector2f;->y:F

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr p1, v1

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldScale()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/jme3/math/Vector3f;->z:F

    div-float/2addr p1, v1

    iget v1, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->totalSize:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    div-float/2addr v1, v2

    add-float/2addr p1, v1

    float-to-int v1, v0

    float-to-int v2, p1

    .line 3
    invoke-direct {p0, v1, v2}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->isInside(II)Z

    move-result v3

    if-nez v3, :cond_0

    const/high16 p1, 0x7fc00000    # Float.NaN

    return p1

    :cond_0
    const/high16 v3, 0x3f800000    # 1.0f

    rem-float/2addr v0, v3

    rem-float/2addr p1, v3

    .line 4
    invoke-virtual {p0, v1, v2, v0, p1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getHeight(IIFF)F

    move-result p1

    .line 5
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldScale()Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget v0, v0, Lcom/jme3/math/Vector3f;->y:F

    mul-float/2addr p1, v0

    return p1
.end method

.method public getHeightMap()[F
    .locals 14

    iget v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->size:I

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x2

    div-int/2addr v1, v2

    const/4 v3, 0x1

    add-int/2addr v1, v3

    mul-int/2addr v0, v0

    new-array v0, v0, [F

    invoke-virtual {p0}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual {p0}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/jme3/scene/Node;->getChild(I)Lcom/jme3/scene/Spatial;

    move-result-object v5

    instance-of v5, v5, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    const/4 v6, 0x4

    const/4 v7, 0x3

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Lcom/jme3/scene/Node;->getChildren()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v8, 0x0

    move-object v9, v8

    move-object v10, v9

    move-object v11, v10

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/jme3/scene/Spatial;

    check-cast v12, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    invoke-virtual {v12}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getQuadrant()S

    move-result v13

    if-ne v13, v3, :cond_1

    invoke-virtual {v12}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getHeightMap()[F

    move-result-object v8

    goto :goto_0

    :cond_1
    invoke-virtual {v12}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getQuadrant()S

    move-result v13

    if-ne v13, v2, :cond_2

    invoke-virtual {v12}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getHeightMap()[F

    move-result-object v10

    goto :goto_0

    :cond_2
    invoke-virtual {v12}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getQuadrant()S

    move-result v13

    if-ne v13, v7, :cond_3

    invoke-virtual {v12}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getHeightMap()[F

    move-result-object v9

    goto :goto_0

    :cond_3
    invoke-virtual {v12}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getQuadrant()S

    move-result v13

    if-ne v13, v6, :cond_0

    invoke-virtual {v12}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getHeightMap()[F

    move-result-object v11

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v3}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getQuad(I)Lcom/jme3/terrain/geomipmap/TerrainQuad;

    move-result-object v5

    invoke-virtual {v5}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getHeightMap()[F

    move-result-object v8

    invoke-virtual {p0, v2}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getQuad(I)Lcom/jme3/terrain/geomipmap/TerrainQuad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getHeightMap()[F

    move-result-object v10

    invoke-virtual {p0, v7}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getQuad(I)Lcom/jme3/terrain/geomipmap/TerrainQuad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getHeightMap()[F

    move-result-object v9

    invoke-virtual {p0, v6}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getQuad(I)Lcom/jme3/terrain/geomipmap/TerrainQuad;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getHeightMap()[F

    move-result-object v11

    :cond_5
    move v2, v4

    :goto_1
    if-ge v2, v1, :cond_8

    move v5, v4

    :goto_2
    if-ge v5, v1, :cond_6

    iget v6, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->size:I

    mul-int/2addr v6, v2

    add-int/2addr v6, v5

    mul-int v7, v2, v1

    add-int/2addr v7, v5

    aget v7, v8, v7

    aput v7, v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    move v5, v3

    :goto_3
    if-ge v5, v1, :cond_7

    iget v6, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->size:I

    mul-int/2addr v6, v2

    add-int/2addr v6, v1

    add-int/2addr v6, v5

    sub-int/2addr v6, v3

    mul-int v7, v2, v1

    add-int/2addr v7, v5

    aget v7, v9, v7

    aput v7, v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    iget v2, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->size:I

    mul-int/2addr v2, v1

    move v5, v3

    :goto_4
    if-ge v5, v1, :cond_b

    move v6, v4

    :goto_5
    if-ge v6, v1, :cond_9

    add-int/lit8 v7, v5, -0x1

    iget v8, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->size:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v2

    add-int/2addr v7, v6

    mul-int v8, v5, v1

    add-int/2addr v8, v6

    aget v8, v10, v8

    aput v8, v0, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_9
    move v6, v3

    :goto_6
    if-ge v6, v1, :cond_a

    add-int/lit8 v7, v5, -0x1

    iget v8, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->size:I

    mul-int/2addr v7, v8

    add-int/2addr v7, v1

    add-int/2addr v7, v2

    add-int/2addr v7, v6

    sub-int/2addr v7, v3

    mul-int v8, v5, v1

    add-int/2addr v8, v6

    aget v8, v11, v8

    aput v8, v0, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_b
    return-object v0
.end method

.method public getHeightmapHeight(II)F
    .locals 9

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->findQuadrant(II)I

    move-result v0

    .line 7
    iget v1, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->size:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    shr-int/2addr v1, v2

    .line 8
    iget-object v3, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    if-eqz v3, :cond_8

    .line 9
    invoke-virtual {v3}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result v3

    :cond_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_8

    .line 10
    iget-object v4, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v4, v3}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/scene/Spatial;

    .line 11
    instance-of v5, v4, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 12
    move-object v7, v4

    check-cast v7, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    invoke-virtual {v7}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getQuadrant()I

    move-result v7

    goto :goto_0

    .line 13
    :cond_1
    instance-of v7, v4, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    if-eqz v7, :cond_2

    .line 14
    move-object v7, v4

    check-cast v7, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    invoke-virtual {v7}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getQuadrant()S

    move-result v7

    goto :goto_0

    :cond_2
    move v7, v6

    :goto_0
    if-ne v7, v2, :cond_3

    and-int/lit8 v8, v0, 0x1

    if-eqz v8, :cond_3

    move v7, p1

    move v8, p2

    :goto_1
    move v6, v2

    goto :goto_3

    :cond_3
    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    and-int/lit8 v8, v0, 0x2

    if-eqz v8, :cond_4

    sub-int v6, p2, v1

    add-int/2addr v6, v2

    move v7, p1

    move v8, v6

    goto :goto_1

    :cond_4
    const/4 v8, 0x3

    if-ne v7, v8, :cond_5

    and-int/lit8 v8, v0, 0x4

    if-eqz v8, :cond_5

    sub-int v6, p1, v1

    add-int/2addr v6, v2

    move v8, p2

    :goto_2
    move v7, v6

    goto :goto_1

    :cond_5
    const/4 v8, 0x4

    if-ne v7, v8, :cond_6

    and-int/lit8 v7, v0, 0x8

    if-eqz v7, :cond_6

    sub-int v6, p1, v1

    add-int/2addr v6, v2

    sub-int v7, p2, v1

    add-int/2addr v7, v2

    move v8, v7

    goto :goto_2

    :cond_6
    move v7, p1

    move v8, p2

    :goto_3
    if-eqz v6, :cond_0

    if-eqz v5, :cond_7

    .line 15
    check-cast v4, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    invoke-virtual {v4, v7, v8}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getHeightmapHeight(II)F

    move-result p1

    return p1

    .line 16
    :cond_7
    instance-of v5, v4, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    if-eqz v5, :cond_0

    .line 17
    check-cast v4, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    int-to-float p1, v7

    int-to-float p2, v8

    invoke-virtual {v4, p1, p2}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getHeightmapHeight(FF)F

    move-result p1

    return p1

    :cond_8
    const/high16 p1, 0x7fc00000    # Float.NaN

    return p1
.end method

.method public getHeightmapHeight(Lcom/jme3/math/Vector2f;)F
    .locals 3

    .line 1
    iget v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->totalSize:I

    div-int/lit8 v0, v0, 0x2

    .line 2
    iget v1, p1, Lcom/jme3/math/Vector2f;->x:F

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldScale()Lcom/jme3/math/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/jme3/math/Vector3f;->x:F

    div-float/2addr v1, v2

    int-to-float v0, v0

    add-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 3
    iget p1, p1, Lcom/jme3/math/Vector2f;->y:F

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldScale()Lcom/jme3/math/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/jme3/math/Vector3f;->z:F

    div-float/2addr p1, v2

    add-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 4
    invoke-direct {p0, v1, p1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->isInside(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 p1, 0x7fc00000    # Float.NaN

    return p1

    .line 5
    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getHeightmapHeight(II)F

    move-result p1

    return p1
.end method

.method public getMaterial()Lcom/jme3/material/Material;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getMaterial(Lcom/jme3/math/Vector3f;)Lcom/jme3/material/Material;

    move-result-object v0

    return-object v0
.end method

.method public getMaterial(Lcom/jme3/math/Vector3f;)Lcom/jme3/material/Material;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    .line 4
    iget-object v1, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1, v0}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Spatial;

    .line 5
    instance-of v2, v1, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    if-eqz v2, :cond_1

    .line 6
    check-cast v1, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    invoke-virtual {v1, p1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getMaterial(Lcom/jme3/math/Vector3f;)Lcom/jme3/material/Material;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    instance-of v2, v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    if-eqz v2, :cond_0

    .line 8
    check-cast v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    invoke-virtual {v1}, Lcom/jme3/scene/Geometry;->getMaterial()Lcom/jme3/material/Material;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMaxLod()I
    .locals 3

    iget v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->maxLod:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->size:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {v0}, Lcom/jme3/math/FastMath;->log(F)F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v2}, Lcom/jme3/math/FastMath;->log(F)F

    move-result v2

    div-float/2addr v0, v2

    float-to-int v0, v0

    sub-int/2addr v0, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->maxLod:I

    :cond_0
    iget v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->maxLod:I

    return v0
.end method

.method public getMeshNormal(II)Lcom/jme3/math/Vector3f;
    .locals 9

    invoke-direct {p0, p1, p2}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->findQuadrant(II)I

    move-result v0

    iget v1, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->size:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    shr-int/2addr v1, v2

    iget-object v3, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result v3

    :cond_0
    add-int/lit8 v3, v3, -0x1

    if-ltz v3, :cond_8

    iget-object v4, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v4, v3}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/scene/Spatial;

    instance-of v5, v4, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    move-object v7, v4

    check-cast v7, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    invoke-virtual {v7}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getQuadrant()I

    move-result v7

    goto :goto_0

    :cond_1
    instance-of v7, v4, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    if-eqz v7, :cond_2

    move-object v7, v4

    check-cast v7, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    invoke-virtual {v7}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getQuadrant()S

    move-result v7

    goto :goto_0

    :cond_2
    move v7, v6

    :goto_0
    if-ne v7, v2, :cond_3

    and-int/lit8 v8, v0, 0x1

    if-eqz v8, :cond_3

    move v7, p1

    move v8, p2

    :goto_1
    move v6, v2

    goto :goto_3

    :cond_3
    const/4 v8, 0x2

    if-ne v7, v8, :cond_4

    and-int/lit8 v8, v0, 0x2

    if-eqz v8, :cond_4

    sub-int v6, p2, v1

    add-int/2addr v6, v2

    move v7, p1

    move v8, v6

    goto :goto_1

    :cond_4
    const/4 v8, 0x3

    if-ne v7, v8, :cond_5

    and-int/lit8 v8, v0, 0x4

    if-eqz v8, :cond_5

    sub-int v6, p1, v1

    add-int/2addr v6, v2

    move v8, p2

    :goto_2
    move v7, v6

    goto :goto_1

    :cond_5
    const/4 v8, 0x4

    if-ne v7, v8, :cond_6

    and-int/lit8 v7, v0, 0x8

    if-eqz v7, :cond_6

    sub-int v6, p1, v1

    add-int/2addr v6, v2

    sub-int v7, p2, v1

    add-int/2addr v7, v2

    move v8, v7

    goto :goto_2

    :cond_6
    move v7, p1

    move v8, p2

    :goto_3
    if-eqz v6, :cond_0

    if-eqz v5, :cond_7

    check-cast v4, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    invoke-virtual {v4, v7, v8}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getMeshNormal(II)Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1

    :cond_7
    instance-of v5, v4, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    if-eqz v5, :cond_0

    check-cast v4, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    invoke-virtual {v4, v7, v8}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getMeshNormal(II)Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1

    :cond_8
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNormal(FFLcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector3f;
    .locals 3

    const/high16 p3, 0x3f000000    # 0.5f

    sub-float/2addr p1, p3

    sub-float/2addr p2, p3

    .line 4
    invoke-static {p1}, Lcom/jme3/math/FastMath;->floor(F)F

    .line 5
    invoke-static {p2}, Lcom/jme3/math/FastMath;->floor(F)F

    .line 6
    invoke-static {p1}, Lcom/jme3/math/FastMath;->ceil(F)F

    move-result p3

    float-to-int p3, p3

    invoke-static {p2}, Lcom/jme3/math/FastMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, p3, v0}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getMeshNormal(II)Lcom/jme3/math/Vector3f;

    move-result-object p3

    .line 7
    invoke-static {p1}, Lcom/jme3/math/FastMath;->floor(F)F

    move-result v0

    float-to-int v0, v0

    invoke-static {p2}, Lcom/jme3/math/FastMath;->ceil(F)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getMeshNormal(II)Lcom/jme3/math/Vector3f;

    move-result-object v0

    .line 8
    invoke-static {p1}, Lcom/jme3/math/FastMath;->ceil(F)F

    move-result v1

    float-to-int v1, v1

    invoke-static {p2}, Lcom/jme3/math/FastMath;->floor(F)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getMeshNormal(II)Lcom/jme3/math/Vector3f;

    move-result-object v1

    .line 9
    invoke-static {p1}, Lcom/jme3/math/FastMath;->floor(F)F

    move-result p1

    float-to-int p1, p1

    invoke-static {p2}, Lcom/jme3/math/FastMath;->floor(F)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p0, p1, p2}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getMeshNormal(II)Lcom/jme3/math/Vector3f;

    move-result-object p1

    .line 10
    invoke-virtual {p3, v0}, Lcom/jme3/math/Vector3f;->add(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/jme3/math/Vector3f;->add(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/jme3/math/Vector3f;->add(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->normalize()Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1
.end method

.method public getNormal(Lcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector3f;
    .locals 4

    .line 1
    iget v0, p1, Lcom/jme3/math/Vector2f;->x:F

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldScale()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/jme3/math/Vector3f;->x:F

    div-float/2addr v0, v1

    iget v1, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->totalSize:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 2
    iget v1, p1, Lcom/jme3/math/Vector2f;->y:F

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v1, v3

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldScale()Lcom/jme3/math/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/jme3/math/Vector3f;->z:F

    div-float/2addr v1, v3

    iget v3, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->totalSize:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    .line 3
    invoke-virtual {p0, v0, v1, p1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getNormal(FFLcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1
.end method

.method public getNumMajorSubdivisions()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getPatch(I)Lcom/jme3/terrain/geomipmap/TerrainPatch;
    .locals 3

    iget-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1, v0}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Spatial;

    instance-of v2, v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    invoke-virtual {v1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getQuadrant()S

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPatchSize()I
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->patchSize:I

    return v0
.end method

.method public getQuad(I)Lcom/jme3/terrain/geomipmap/TerrainQuad;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1, v0}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Spatial;

    instance-of v2, v1, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    invoke-virtual {v1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getQuadrant()I

    move-result v2

    if-ne v2, p1, :cond_1

    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getQuadrant()I
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->quadrant:I

    return v0
.end method

.method public getTerrainSize()I
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->totalSize:I

    return v0
.end method

.method public getTotalSize()I
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->totalSize:I

    return v0
.end method

.method public isPointOnTerrain(II)Z
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->totalSize:I

    if-gt p1, v0, :cond_0

    if-ltz p2, :cond_0

    if-gt p2, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isRootQuad()Z
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v0

    instance-of v0, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public needToRecalculateNormals()Z
    .locals 4

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->affectedAreaBBox:Lcom/jme3/bounding/BoundingBox;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->lastScale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldScale()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/jme3/bounding/BoundingBox;

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v2

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    invoke-direct {v0, v2, v3, v3, v3}, Lcom/jme3/bounding/BoundingBox;-><init>(Lcom/jme3/math/Vector3f;FFF)V

    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->affectedAreaBBox:Lcom/jme3/bounding/BoundingBox;

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldScale()Lcom/jme3/math/Vector3f;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->lastScale:Lcom/jme3/math/Vector3f;

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized reIndexPages(Ljava/util/HashMap;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;",
            ">;Z)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result v0

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1, v0}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Spatial;

    instance-of v2, v1, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    invoke-virtual {v1, p1, p2}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->reIndexPages(Ljava/util/HashMap;Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    instance-of v2, v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    invoke-virtual {v1, p1, p2}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->reIndexGeometry(Ljava/util/HashMap;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/Node;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "size"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->size:I

    const-string v0, "stepScale"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->stepScale:Lcom/jme3/math/Vector3f;

    new-instance v0, Lcom/jme3/math/Vector2f;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    const-string v3, "offset"

    invoke-interface {p1, v3, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector2f;

    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->offset:Lcom/jme3/math/Vector2f;

    const-string v0, "offsetAmount"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->offsetAmount:F

    const-string v0, "quadrant"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->quadrant:I

    const-string v0, "totalSize"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->totalSize:I

    const-string v0, "patchSize"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->patchSize:I

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object p1

    instance-of p1, p1, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    if-nez p1, :cond_0

    new-instance p1, Lcom/jme3/bounding/BoundingBox;

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget v1, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->totalSize:I

    int-to-float v2, v1

    int-to-float v3, v1

    int-to-float v1, v1

    invoke-direct {p1, v0, v2, v3, v1}, Lcom/jme3/bounding/BoundingBox;-><init>(Lcom/jme3/math/Vector3f;FFF)V

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->affectedAreaBBox:Lcom/jme3/bounding/BoundingBox;

    invoke-virtual {p0}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->updateNormals()V

    :cond_0
    return-void
.end method

.method public recalculateAllNormals()V
    .locals 5

    new-instance v0, Lcom/jme3/bounding/BoundingBox;

    new-instance v1, Lcom/jme3/math/Vector3f;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iget v2, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->totalSize:I

    mul-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    const v4, 0x7f7fffff    # Float.MAX_VALUE

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/jme3/bounding/BoundingBox;-><init>(Lcom/jme3/math/Vector3f;FFF)V

    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->affectedAreaBBox:Lcom/jme3/bounding/BoundingBox;

    return-void
.end method

.method public resetCachedNeighbours()V
    .locals 3

    iget-object v0, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result v0

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1, v0}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/scene/Spatial;

    instance-of v2, v1, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    invoke-virtual {v1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->resetCachedNeighbours()V

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;->searchedForNeighboursAlready:Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public setHeight(Lcom/jme3/math/Vector2f;F)V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0, v0, p1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->setHeight(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public setHeight(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/math/Vector2f;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, p1, p2, v0}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->setHeight(Ljava/util/List;Ljava/util/List;Z)V

    return-void
.end method

.method public setHeight(Ljava/util/List;Ljava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/math/Vector2f;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;Z)V"
        }
    .end annotation

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 8
    iget v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->totalSize:I

    div-int/lit8 v0, v0, 0x2

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 11
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/jme3/math/Vector2f;

    iget v4, v4, Lcom/jme3/math/Vector2f;->x:F

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldScale()Lcom/jme3/math/Vector3f;

    move-result-object v5

    iget v5, v5, Lcom/jme3/math/Vector3f;->x:F

    div-float/2addr v4, v5

    int-to-float v5, v0

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 12
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/jme3/math/Vector2f;

    iget v6, v6, Lcom/jme3/math/Vector2f;->y:F

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldScale()Lcom/jme3/math/Vector3f;

    move-result-object v7

    iget v7, v7, Lcom/jme3/math/Vector3f;->z:F

    div-float/2addr v6, v7

    add-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 13
    invoke-direct {p0, v4, v5}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->isInside(II)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    .line 14
    :cond_0
    new-instance v6, Lcom/jme3/terrain/geomipmap/TerrainQuad$LocationHeight;

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    invoke-direct {v6, p0, v4, v5, v7}, Lcom/jme3/terrain/geomipmap/TerrainQuad$LocationHeight;-><init>(Lcom/jme3/terrain/geomipmap/TerrainQuad;IIF)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p0, v1, p3}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->setHeight(Ljava/util/List;Z)V

    .line 16
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-ge v2, p2, :cond_2

    .line 17
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Vector2f;

    invoke-virtual {p0, p2}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->setNormalRecalcNeeded(Lcom/jme3/math/Vector2f;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void

    .line 18
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Both lists must be the same length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setHeight(Ljava/util/List;Z)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/terrain/geomipmap/TerrainQuad$LocationHeight;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 19
    iget-object v2, v0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    if-nez v2, :cond_0

    return-void

    .line 20
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 21
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 22
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 23
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 24
    iget-object v6, v0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v6}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    :cond_1
    :goto_0
    add-int/lit8 v6, v6, -0x1

    const/4 v11, 0x1

    if-ltz v6, :cond_7

    .line 25
    iget-object v12, v0, Lcom/jme3/scene/Node;->children:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v12, v6}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/jme3/scene/Spatial;

    .line 26
    instance-of v13, v12, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    if-eqz v13, :cond_2

    .line 27
    move-object v13, v12

    check-cast v13, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    invoke-virtual {v13}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getQuadrant()I

    move-result v13

    goto :goto_1

    .line 28
    :cond_2
    instance-of v13, v12, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    if-eqz v13, :cond_3

    .line 29
    move-object v13, v12

    check-cast v13, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    invoke-virtual {v13}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getQuadrant()S

    move-result v13

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    :goto_1
    if-ne v13, v11, :cond_4

    move-object v7, v12

    goto :goto_0

    :cond_4
    const/4 v11, 0x2

    if-ne v13, v11, :cond_5

    move-object v8, v12

    goto :goto_0

    :cond_5
    const/4 v11, 0x3

    if-ne v13, v11, :cond_6

    move-object v9, v12

    goto :goto_0

    :cond_6
    const/4 v11, 0x4

    if-ne v13, v11, :cond_1

    move-object v10, v12

    goto :goto_0

    .line 30
    :cond_7
    iget v6, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->size:I

    add-int/2addr v6, v11

    shr-int/2addr v6, v11

    .line 31
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/jme3/terrain/geomipmap/TerrainQuad$LocationHeight;

    .line 32
    iget v14, v13, Lcom/jme3/terrain/geomipmap/TerrainQuad$LocationHeight;->x:I

    iget v15, v13, Lcom/jme3/terrain/geomipmap/TerrainQuad$LocationHeight;->z:I

    invoke-direct {v0, v14, v15}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->findQuadrant(II)I

    move-result v14

    and-int/lit8 v15, v14, 0x1

    if-eqz v15, :cond_8

    .line 33
    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    and-int/lit8 v15, v14, 0x2

    if-eqz v15, :cond_9

    .line 34
    iget v15, v13, Lcom/jme3/terrain/geomipmap/TerrainQuad$LocationHeight;->z:I

    sub-int/2addr v15, v6

    add-int/2addr v15, v11

    .line 35
    new-instance v11, Lcom/jme3/terrain/geomipmap/TerrainQuad$LocationHeight;

    move-object/from16 p1, v12

    iget v12, v13, Lcom/jme3/terrain/geomipmap/TerrainQuad$LocationHeight;->x:I

    move-object/from16 v16, v10

    iget v10, v13, Lcom/jme3/terrain/geomipmap/TerrainQuad$LocationHeight;->h:F

    invoke-direct {v11, v0, v12, v15, v10}, Lcom/jme3/terrain/geomipmap/TerrainQuad$LocationHeight;-><init>(Lcom/jme3/terrain/geomipmap/TerrainQuad;IIF)V

    invoke-interface {v3, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    move-object/from16 v16, v10

    move-object/from16 p1, v12

    :goto_3
    and-int/lit8 v10, v14, 0x4

    if-eqz v10, :cond_a

    .line 36
    iget v10, v13, Lcom/jme3/terrain/geomipmap/TerrainQuad$LocationHeight;->x:I

    sub-int/2addr v10, v6

    const/4 v11, 0x1

    add-int/2addr v10, v11

    .line 37
    new-instance v11, Lcom/jme3/terrain/geomipmap/TerrainQuad$LocationHeight;

    iget v12, v13, Lcom/jme3/terrain/geomipmap/TerrainQuad$LocationHeight;->z:I

    iget v15, v13, Lcom/jme3/terrain/geomipmap/TerrainQuad$LocationHeight;->h:F

    invoke-direct {v11, v0, v10, v12, v15}, Lcom/jme3/terrain/geomipmap/TerrainQuad$LocationHeight;-><init>(Lcom/jme3/terrain/geomipmap/TerrainQuad;IIF)V

    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    and-int/lit8 v10, v14, 0x8

    if-eqz v10, :cond_b

    .line 38
    iget v10, v13, Lcom/jme3/terrain/geomipmap/TerrainQuad$LocationHeight;->x:I

    sub-int/2addr v10, v6

    const/4 v11, 0x1

    add-int/2addr v10, v11

    .line 39
    iget v12, v13, Lcom/jme3/terrain/geomipmap/TerrainQuad$LocationHeight;->z:I

    sub-int/2addr v12, v6

    add-int/2addr v12, v11

    .line 40
    new-instance v14, Lcom/jme3/terrain/geomipmap/TerrainQuad$LocationHeight;

    iget v13, v13, Lcom/jme3/terrain/geomipmap/TerrainQuad$LocationHeight;->h:F

    invoke-direct {v14, v0, v10, v12, v13}, Lcom/jme3/terrain/geomipmap/TerrainQuad$LocationHeight;-><init>(Lcom/jme3/terrain/geomipmap/TerrainQuad;IIF)V

    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_b
    const/4 v11, 0x1

    :goto_4
    move-object/from16 v12, p1

    move-object/from16 v10, v16

    goto :goto_2

    :cond_c
    move-object/from16 v16, v10

    .line 41
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_e

    .line 42
    instance-of v6, v7, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    if-eqz v6, :cond_d

    .line 43
    check-cast v7, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    invoke-virtual {v7, v2, v1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->setHeight(Ljava/util/List;Z)V

    goto :goto_5

    .line 44
    :cond_d
    instance-of v6, v7, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    if-eqz v6, :cond_e

    .line 45
    check-cast v7, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    invoke-virtual {v7, v2, v1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->setHeight(Ljava/util/List;Z)V

    .line 46
    :cond_e
    :goto_5
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_10

    .line 47
    instance-of v2, v8, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    if-eqz v2, :cond_f

    .line 48
    check-cast v8, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    invoke-virtual {v8, v3, v1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->setHeight(Ljava/util/List;Z)V

    goto :goto_6

    .line 49
    :cond_f
    instance-of v2, v8, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    if-eqz v2, :cond_10

    .line 50
    check-cast v8, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    invoke-virtual {v8, v3, v1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->setHeight(Ljava/util/List;Z)V

    .line 51
    :cond_10
    :goto_6
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    .line 52
    instance-of v2, v9, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    if-eqz v2, :cond_11

    .line 53
    check-cast v9, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    invoke-virtual {v9, v4, v1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->setHeight(Ljava/util/List;Z)V

    goto :goto_7

    .line 54
    :cond_11
    instance-of v2, v9, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    if-eqz v2, :cond_12

    .line 55
    check-cast v9, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    invoke-virtual {v9, v4, v1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->setHeight(Ljava/util/List;Z)V

    .line 56
    :cond_12
    :goto_7
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_14

    move-object/from16 v7, v16

    .line 57
    instance-of v2, v7, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    if-eqz v2, :cond_13

    .line 58
    move-object v10, v7

    check-cast v10, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    invoke-virtual {v10, v5, v1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->setHeight(Ljava/util/List;Z)V

    goto :goto_8

    .line 59
    :cond_13
    instance-of v2, v7, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    if-eqz v2, :cond_14

    .line 60
    move-object v10, v7

    check-cast v10, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    invoke-virtual {v10, v5, v1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->setHeight(Ljava/util/List;Z)V

    :cond_14
    :goto_8
    return-void
.end method

.method public setLocked(Z)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/jme3/scene/Node;->getQuantity()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Node;->getChild(I)Lcom/jme3/scene/Spatial;

    move-result-object v1

    instance-of v1, v1, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Node;->getChild(I)Lcom/jme3/scene/Spatial;

    move-result-object v1

    check-cast v1, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    invoke-virtual {v1, p1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->setLocked(Z)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/jme3/scene/Node;->getChild(I)Lcom/jme3/scene/Spatial;

    move-result-object v1

    instance-of v1, v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Node;->getChild(I)Lcom/jme3/scene/Spatial;

    move-result-object v1

    check-cast v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    invoke-virtual {v1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->lockMesh()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/jme3/scene/Node;->getChild(I)Lcom/jme3/scene/Spatial;

    move-result-object v1

    check-cast v1, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    invoke-virtual {v1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->unlockMesh()V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setNeedToRecalculateNormals()V
    .locals 3

    new-instance v0, Lcom/jme3/bounding/BoundingBox;

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v1

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/jme3/bounding/BoundingBox;-><init>(Lcom/jme3/math/Vector3f;FFF)V

    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->affectedAreaBBox:Lcom/jme3/bounding/BoundingBox;

    return-void
.end method

.method public setNeighbourFinder(Lcom/jme3/terrain/geomipmap/NeighbourFinder;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->neighbourFinder:Lcom/jme3/terrain/geomipmap/NeighbourFinder;

    invoke-virtual {p0}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->resetCachedNeighbours()V

    return-void
.end method

.method public setNormalRecalcNeeded(Lcom/jme3/math/Vector2f;)V
    .locals 7

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->affectedAreaBBox:Lcom/jme3/bounding/BoundingBox;

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/math/Vector2f;->clone()Lcom/jme3/math/Vector2f;

    move-result-object p1

    new-instance v0, Lcom/jme3/math/Vector2f;

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldScale()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldScale()Lcom/jme3/math/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/jme3/math/Vector3f;->z:F

    invoke-direct {v0, v1, v2}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector2f;->multLocal(Lcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector2f;

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget v0, v0, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p1, v0, v1}, Lcom/jme3/math/Vector2f;->addLocal(FF)Lcom/jme3/math/Vector2f;

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldRotation()Lcom/jme3/math/Quaternion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/math/Quaternion;->getX()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/jme3/math/Quaternion;->getY()F

    move-result v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lcom/jme3/math/Quaternion;->getZ()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->affectedAreaBBox:Lcom/jme3/bounding/BoundingBox;

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v0, :cond_2

    new-instance v0, Lcom/jme3/bounding/BoundingBox;

    new-instance v4, Lcom/jme3/math/Vector3f;

    iget v5, p1, Lcom/jme3/math/Vector2f;->x:F

    iget p1, p1, Lcom/jme3/math/Vector2f;->y:F

    invoke-direct {v4, v5, v2, p1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-direct {v0, v4, v3, v1, v3}, Lcom/jme3/bounding/BoundingBox;-><init>(Lcom/jme3/math/Vector3f;FFF)V

    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->affectedAreaBBox:Lcom/jme3/bounding/BoundingBox;

    goto :goto_0

    :cond_2
    new-instance v4, Lcom/jme3/bounding/BoundingBox;

    new-instance v5, Lcom/jme3/math/Vector3f;

    iget v6, p1, Lcom/jme3/math/Vector2f;->x:F

    iget p1, p1, Lcom/jme3/math/Vector2f;->y:F

    invoke-direct {v5, v6, v2, p1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-direct {v4, v5, v3, v1, v3}, Lcom/jme3/bounding/BoundingBox;-><init>(Lcom/jme3/math/Vector3f;FFF)V

    invoke-virtual {v0, v4}, Lcom/jme3/bounding/BoundingBox;->mergeLocal(Lcom/jme3/bounding/BoundingVolume;)Lcom/jme3/bounding/BoundingVolume;

    :goto_0
    return-void

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object p1

    instance-of v0, p1, Lcom/jme3/bounding/BoundingSphere;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/jme3/bounding/BoundingSphere;

    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingSphere;->getRadius()F

    move-result v0

    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingVolume;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object p1

    new-instance v1, Lcom/jme3/bounding/BoundingBox;

    invoke-direct {v1, p1, v0, v0, v0}, Lcom/jme3/bounding/BoundingBox;-><init>(Lcom/jme3/math/Vector3f;FFF)V

    iput-object v1, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->affectedAreaBBox:Lcom/jme3/bounding/BoundingBox;

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingVolume;->clone()Lcom/jme3/bounding/BoundingVolume;

    move-result-object p1

    check-cast p1, Lcom/jme3/bounding/BoundingBox;

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->affectedAreaBBox:Lcom/jme3/bounding/BoundingBox;

    :goto_2
    return-void
.end method

.method public setParent(Lcom/jme3/scene/Node;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/jme3/scene/Node;->setParent(Lcom/jme3/scene/Node;)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->clearCaches()V

    :cond_0
    return-void
.end method

.method public setQuadrant(S)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->quadrant:I

    return-void
.end method

.method public setSupportMultipleCollisions(Z)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->picker:Lcom/jme3/terrain/geomipmap/picking/TerrainPicker;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;

    invoke-virtual {v0, p1}, Lcom/jme3/terrain/geomipmap/picking/BresenhamTerrainPicker;->setSupportMultipleCollisions(Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The underlying picking implementation does not support multiple collisions"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The TerrainPicker is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public split(I[F)V
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->size:I

    shr-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    if-gt v0, p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->createQuadPatch([F)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->createQuad(I[F)V

    :goto_0
    return-void
.end method

.method public updateNormals()V
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->needToRecalculateNormals()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->affectedAreaBBox:Lcom/jme3/bounding/BoundingBox;

    invoke-virtual {p0, v0}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->fixNormals(Lcom/jme3/bounding/BoundingBox;)V

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->affectedAreaBBox:Lcom/jme3/bounding/BoundingBox;

    invoke-virtual {p0, v0}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->fixNormalEdges(Lcom/jme3/bounding/BoundingBox;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->setNormalRecalcNeeded(Lcom/jme3/math/Vector2f;)V

    :cond_0
    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/Node;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->size:I

    const-string v1, "size"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->totalSize:I

    const-string v1, "totalSize"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->patchSize:I

    const-string v1, "patchSize"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->stepScale:Lcom/jme3/math/Vector3f;

    const-string v1, "stepScale"

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->offset:Lcom/jme3/math/Vector2f;

    new-instance v1, Lcom/jme3/math/Vector2f;

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    const-string v4, "offset"

    invoke-interface {p1, v0, v4, v1}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->offsetAmount:F

    const-string v1, "offsetAmount"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->quadrant:I

    const-string v1, "quadrant"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    return-void
.end method
