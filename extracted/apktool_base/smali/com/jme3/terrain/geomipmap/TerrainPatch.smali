.class public Lcom/jme3/terrain/geomipmap/TerrainPatch;
.super Lcom/jme3/scene/Geometry;
.source "SourceFile"


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field protected bottomNeighbour:Lcom/jme3/terrain/geomipmap/TerrainPatch;

.field protected geomap:Lcom/jme3/terrain/geomipmap/LODGeomap;

.field protected leftNeighbour:Lcom/jme3/terrain/geomipmap/TerrainPatch;

.field protected lod:I

.field protected lodBottom:I

.field protected lodEntropy:[F

.field protected lodLeft:I

.field protected lodRight:I

.field protected lodTop:I

.field private maxLod:I

.field protected offset:Lcom/jme3/math/Vector2f;

.field protected offsetAmount:F

.field protected previousLod:I

.field protected quadrant:S

.field protected rightNeighbour:Lcom/jme3/terrain/geomipmap/TerrainPatch;

.field protected searchedForNeighboursAlready:Z

.field protected size:I

.field protected stepScale:Lcom/jme3/math/Vector3f;

.field protected topNeighbour:Lcom/jme3/terrain/geomipmap/TerrainPatch;

.field protected totalSize:I

.field protected worldScaleCached:Lcom/jme3/math/Vector3f;

.field protected worldTranslationCached:Lcom/jme3/math/Vector3f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "TerrainPatch"

    invoke-direct {p0, v0}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->lod:I

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->maxLod:I

    .line 4
    iput v1, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->previousLod:I

    const/4 v1, 0x1

    .line 5
    iput-short v1, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->quadrant:S

    .line 6
    iput-boolean v0, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->searchedForNeighboursAlready:Z

    .line 7
    sget-object v0, Lcom/jme3/scene/Spatial$BatchHint;->Never:Lcom/jme3/scene/Spatial$BatchHint;

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Spatial;->setBatchHint(Lcom/jme3/scene/Spatial$BatchHint;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 8
    invoke-direct {p0, p1}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->lod:I

    const/4 v0, -0x1

    .line 10
    iput v0, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->maxLod:I

    .line 11
    iput v0, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->previousLod:I

    const/4 v0, 0x1

    .line 12
    iput-short v0, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->quadrant:S

    .line 13
    iput-boolean p1, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->searchedForNeighboursAlready:Z

    .line 14
    sget-object p1, Lcom/jme3/scene/Spatial$BatchHint;->Never:Lcom/jme3/scene/Spatial$BatchHint;

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Spatial;->setBatchHint(Lcom/jme3/scene/Spatial$BatchHint;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 6

    .line 15
    new-instance v3, Lcom/jme3/math/Vector3f;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {v3, v0, v0, v0}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v5, Lcom/jme3/math/Vector3f;

    const/4 v0, 0x0

    invoke-direct {v5, v0, v0, v0}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/jme3/terrain/geomipmap/TerrainPatch;-><init>(Ljava/lang/String;ILcom/jme3/math/Vector3f;[FLcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/jme3/math/Vector3f;[FLcom/jme3/math/Vector3f;)V
    .locals 9

    .line 16
    new-instance v7, Lcom/jme3/math/Vector2f;

    invoke-direct {v7}, Lcom/jme3/math/Vector2f;-><init>()V

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p2

    invoke-direct/range {v0 .. v8}, Lcom/jme3/terrain/geomipmap/TerrainPatch;-><init>(Ljava/lang/String;ILcom/jme3/math/Vector3f;[FLcom/jme3/math/Vector3f;ILcom/jme3/math/Vector2f;F)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILcom/jme3/math/Vector3f;[FLcom/jme3/math/Vector3f;ILcom/jme3/math/Vector2f;F)V
    .locals 7

    .line 17
    invoke-direct {p0, p1}, Lcom/jme3/scene/Geometry;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->lod:I

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->maxLod:I

    .line 20
    iput v0, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->previousLod:I

    const/4 v0, 0x1

    .line 21
    iput-short v0, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->quadrant:S

    .line 22
    iput-boolean p1, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->searchedForNeighboursAlready:Z

    .line 23
    sget-object p1, Lcom/jme3/scene/Spatial$BatchHint;->Never:Lcom/jme3/scene/Spatial$BatchHint;

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Spatial;->setBatchHint(Lcom/jme3/scene/Spatial$BatchHint;)V

    .line 24
    iput p2, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->size:I

    .line 25
    iput-object p3, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->stepScale:Lcom/jme3/math/Vector3f;

    .line 26
    iput p6, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->totalSize:I

    .line 27
    iput p8, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->offsetAmount:F

    .line 28
    iput-object p7, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->offset:Lcom/jme3/math/Vector2f;

    .line 29
    invoke-virtual {p0, p5}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    .line 30
    new-instance v0, Lcom/jme3/terrain/geomipmap/LODGeomap;

    invoke-direct {v0, p2, p4}, Lcom/jme3/terrain/geomipmap/LODGeomap;-><init>(I[F)V

    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->geomap:Lcom/jme3/terrain/geomipmap/LODGeomap;

    .line 31
    new-instance v2, Lcom/jme3/math/Vector2f;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-direct {v2, p1, p1}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    const/4 v6, 0x0

    move-object v1, p3

    move-object v3, p7

    move v4, p8

    move v5, p6

    invoke-virtual/range {v0 .. v6}, Lcom/jme3/terrain/geomipmap/LODGeomap;->createMesh(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;FIZ)Lcom/jme3/scene/Mesh;

    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Lcom/jme3/scene/Geometry;->setMesh(Lcom/jme3/scene/Mesh;)V

    return-void
.end method

.method private calculateNormal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-virtual {v0, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/jme3/math/Vector3f;->subtractLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p3, p2}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jme3/math/Vector3f;->crossLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->normalizeLocal()Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method private collideWithBoundingBox(Lcom/jme3/bounding/BoundingBox;Lcom/jme3/collision/CollisionResults;)I
    .locals 10

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingVolume;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingBox;->getXExtent()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingVolume;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingBox;->getZExtent()F

    move-result v3

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {p0, v0}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->worldCoordinateToLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingVolume;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingBox;->getXExtent()F

    move-result v4

    add-float/2addr v2, v4

    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingVolume;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object v4

    iget v4, v4, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingBox;->getZExtent()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-direct {v1, v2, v3, v4}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {p0, v1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->worldCoordinateToLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingVolume;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object v4

    iget v4, v4, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingBox;->getXExtent()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingVolume;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object v5

    iget v5, v5, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingBox;->getZExtent()F

    move-result v6

    add-float/2addr v5, v6

    invoke-direct {v2, v4, v3, v5}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {p0, v2}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->worldCoordinateToLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    new-instance v4, Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingVolume;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object v5

    iget v5, v5, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingBox;->getXExtent()F

    move-result v6

    add-float/2addr v5, v6

    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingVolume;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object v6

    iget v6, v6, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingBox;->getZExtent()F

    move-result v7

    add-float/2addr v6, v7

    invoke-direct {v4, v5, v3, v6}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {p0, v4}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->worldCoordinateToLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v4

    iget v5, v0, Lcom/jme3/math/Vector3f;->x:F

    iget v6, v0, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p0, v5, v6}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getTriangle(FF)Lcom/jme3/math/Triangle;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    invoke-virtual {p1, v5, p2}, Lcom/jme3/bounding/BoundingBox;->collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/collision/CollisionResults;)I

    move-result v5

    if-lez v5, :cond_0

    return v6

    :cond_0
    iget v5, v1, Lcom/jme3/math/Vector3f;->x:F

    iget v7, v1, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p0, v5, v7}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getTriangle(FF)Lcom/jme3/math/Triangle;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p1, v5, p2}, Lcom/jme3/bounding/BoundingBox;->collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/collision/CollisionResults;)I

    move-result v5

    if-lez v5, :cond_1

    return v6

    :cond_1
    iget v5, v2, Lcom/jme3/math/Vector3f;->x:F

    iget v7, v2, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p0, v5, v7}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getTriangle(FF)Lcom/jme3/math/Triangle;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {p1, v5, p2}, Lcom/jme3/bounding/BoundingBox;->collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/collision/CollisionResults;)I

    move-result v5

    if-lez v5, :cond_2

    return v6

    :cond_2
    iget v5, v4, Lcom/jme3/math/Vector3f;->x:F

    iget v4, v4, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p0, v5, v4}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getTriangle(FF)Lcom/jme3/math/Triangle;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p1, v4, p2}, Lcom/jme3/bounding/BoundingBox;->collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/collision/CollisionResults;)I

    move-result v4

    if-lez v4, :cond_3

    return v6

    :cond_3
    iget v4, v0, Lcom/jme3/math/Vector3f;->z:F

    :goto_0
    iget v5, v2, Lcom/jme3/math/Vector3f;->z:F

    cmpg-float v5, v4, v5

    if-gez v5, :cond_7

    iget v5, v0, Lcom/jme3/math/Vector3f;->x:F

    :goto_1
    iget v7, v1, Lcom/jme3/math/Vector3f;->x:F

    cmpg-float v7, v5, v7

    const/high16 v8, 0x3f800000    # 1.0f

    if-gez v7, :cond_6

    cmpg-float v7, v5, v3

    if-ltz v7, :cond_5

    cmpg-float v7, v4, v3

    if-ltz v7, :cond_5

    iget v7, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->size:I

    int-to-float v9, v7

    cmpl-float v9, v5, v9

    if-gez v9, :cond_5

    int-to-float v7, v7

    cmpl-float v7, v4, v7

    if-ltz v7, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v5, v4}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getTriangle(FF)Lcom/jme3/math/Triangle;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {p1, v7, p2}, Lcom/jme3/bounding/BoundingBox;->collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/collision/CollisionResults;)I

    move-result v7

    if-lez v7, :cond_5

    return v6

    :cond_5
    :goto_2
    add-float/2addr v5, v8

    goto :goto_1

    :cond_6
    add-float/2addr v4, v8

    goto :goto_0

    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method private collideWithBoundingVolume(Lcom/jme3/bounding/BoundingVolume;Lcom/jme3/collision/CollisionResults;)I
    .locals 4

    instance-of v0, p1, Lcom/jme3/bounding/BoundingBox;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/jme3/bounding/BoundingBox;

    invoke-direct {p0, p1, p2}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->collideWithBoundingBox(Lcom/jme3/bounding/BoundingBox;Lcom/jme3/collision/CollisionResults;)I

    move-result p1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/jme3/bounding/BoundingSphere;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/jme3/bounding/BoundingSphere;

    new-instance v1, Lcom/jme3/bounding/BoundingBox;

    invoke-virtual {p1}, Lcom/jme3/bounding/BoundingVolume;->getCenter()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {v0}, Lcom/jme3/bounding/BoundingSphere;->getRadius()F

    move-result v2

    invoke-virtual {v0}, Lcom/jme3/bounding/BoundingSphere;->getRadius()F

    move-result v3

    invoke-virtual {v0}, Lcom/jme3/bounding/BoundingSphere;->getRadius()F

    move-result v0

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/jme3/bounding/BoundingBox;-><init>(Lcom/jme3/math/Vector3f;FFF)V

    invoke-direct {p0, v1, p2}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->collideWithBoundingBox(Lcom/jme3/bounding/BoundingBox;Lcom/jme3/collision/CollisionResults;)I

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private collideWithRay(Lcom/jme3/math/Ray;Lcom/jme3/collision/CollisionResults;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method private setInBuffer(Lcom/jme3/scene/Mesh;ILcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 3

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Tangent:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p1, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v1

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Binormal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p1, v2}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object p1

    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/FloatBuffer;

    invoke-static {p3, v2, p2}, Lcom/jme3/util/BufferUtils;->setInBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    invoke-virtual {v1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object p3

    check-cast p3, Ljava/nio/FloatBuffer;

    invoke-static {p4, p3, p2}, Lcom/jme3/util/BufferUtils;->setInBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object p3

    check-cast p3, Ljava/nio/FloatBuffer;

    invoke-static {p5, p3, p2}, Lcom/jme3/util/BufferUtils;->setInBuffer(Lcom/jme3/math/Vector3f;Ljava/nio/FloatBuffer;I)V

    invoke-virtual {v0}, Lcom/jme3/util/NativeObject;->setUpdateNeeded()V

    invoke-virtual {v1}, Lcom/jme3/util/NativeObject;->setUpdateNeeded()V

    invoke-virtual {p1}, Lcom/jme3/util/NativeObject;->setUpdateNeeded()V

    return-void
.end method


# virtual methods
.method public averageNormalsTangents(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V
    .locals 6

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldScale()Lcom/jme3/math/Vector3f;

    move-result-object v0

    new-instance v1, Lcom/jme3/math/Vector3f;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->mult(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {p2, v0}, Lcom/jme3/math/Vector3f;->mult(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {p3, v0}, Lcom/jme3/math/Vector3f;->mult(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->calculateNormal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :cond_0
    new-instance v3, Lcom/jme3/math/Vector3f;

    invoke-direct {v3, v2, v2, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    invoke-virtual {p3, v0}, Lcom/jme3/math/Vector3f;->mult(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p3

    invoke-virtual {p2, v0}, Lcom/jme3/math/Vector3f;->mult(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {p4, v0}, Lcom/jme3/math/Vector3f;->mult(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-direct {p0, p3, v4, v5}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->calculateNormal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p3

    invoke-virtual {v3, p3}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :cond_1
    new-instance p3, Lcom/jme3/math/Vector3f;

    invoke-direct {p3, v2, v2, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    if-eqz p5, :cond_2

    if-eqz p4, :cond_2

    invoke-virtual {p4, v0}, Lcom/jme3/math/Vector3f;->mult(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p4

    invoke-virtual {p2, v0}, Lcom/jme3/math/Vector3f;->mult(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-virtual {p5, v0}, Lcom/jme3/math/Vector3f;->mult(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-direct {p0, p4, v4, v5}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->calculateNormal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :cond_2
    new-instance p4, Lcom/jme3/math/Vector3f;

    invoke-direct {p4, v2, v2, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    if-eqz p5, :cond_3

    if-eqz p1, :cond_3

    invoke-virtual {p5, v0}, Lcom/jme3/math/Vector3f;->mult(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p5

    invoke-virtual {p2, v0}, Lcom/jme3/math/Vector3f;->mult(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->mult(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-direct {p0, p5, p2, p1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->calculateNormal(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    :cond_3
    invoke-virtual {v1, v3}, Lcom/jme3/math/Vector3f;->add(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/jme3/math/Vector3f;->add(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/jme3/math/Vector3f;->add(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->normalize()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p6, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    new-instance p1, Lcom/jme3/math/Vector3f;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-direct {p1, v2, v2, p2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {p6, p1}, Lcom/jme3/math/Vector3f;->cross(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->normalize()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p7, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1, p2, v2, v2}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {p1, p6}, Lcom/jme3/math/Vector3f;->cross(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/math/Vector3f;->normalize()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p8, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public cacheTerrainTransforms()V
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldScale()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->worldScaleCached:Lcom/jme3/math/Vector3f;

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->worldTranslationCached:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public clearCaches()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->leftNeighbour:Lcom/jme3/terrain/geomipmap/TerrainPatch;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, v0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->rightNeighbour:Lcom/jme3/terrain/geomipmap/TerrainPatch;

    iput-object v1, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->leftNeighbour:Lcom/jme3/terrain/geomipmap/TerrainPatch;

    :cond_0
    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->rightNeighbour:Lcom/jme3/terrain/geomipmap/TerrainPatch;

    if-eqz v0, :cond_1

    iput-object v1, v0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->leftNeighbour:Lcom/jme3/terrain/geomipmap/TerrainPatch;

    iput-object v1, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->rightNeighbour:Lcom/jme3/terrain/geomipmap/TerrainPatch;

    :cond_1
    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->topNeighbour:Lcom/jme3/terrain/geomipmap/TerrainPatch;

    if-eqz v0, :cond_2

    iput-object v1, v0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->bottomNeighbour:Lcom/jme3/terrain/geomipmap/TerrainPatch;

    iput-object v1, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->topNeighbour:Lcom/jme3/terrain/geomipmap/TerrainPatch;

    :cond_2
    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->bottomNeighbour:Lcom/jme3/terrain/geomipmap/TerrainPatch;

    if-eqz v0, :cond_3

    iput-object v1, v0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->topNeighbour:Lcom/jme3/terrain/geomipmap/TerrainPatch;

    iput-object v1, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->bottomNeighbour:Lcom/jme3/terrain/geomipmap/TerrainPatch;

    :cond_3
    return-void
.end method

.method public bridge synthetic clone()Lcom/jme3/asset/CloneableSmartAsset;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->clone()Lcom/jme3/terrain/geomipmap/TerrainPatch;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/jme3/scene/Geometry;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->clone()Lcom/jme3/terrain/geomipmap/TerrainPatch;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/jme3/scene/Spatial;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->clone()Lcom/jme3/terrain/geomipmap/TerrainPatch;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/jme3/terrain/geomipmap/TerrainPatch;
    .locals 9

    .line 5
    new-instance v0, Lcom/jme3/terrain/geomipmap/TerrainPatch;

    invoke-direct {v0}, Lcom/jme3/terrain/geomipmap/TerrainPatch;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/jme3/scene/Spatial;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/scene/Spatial;->name:Ljava/lang/String;

    .line 7
    iget v1, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->size:I

    iput v1, v0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->size:I

    .line 8
    iget v1, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->totalSize:I

    iput v1, v0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->totalSize:I

    .line 9
    iget-short v1, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->quadrant:S

    iput-short v1, v0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->quadrant:S

    .line 10
    iget-object v1, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->stepScale:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->stepScale:Lcom/jme3/math/Vector3f;

    .line 11
    iget-object v1, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->offset:Lcom/jme3/math/Vector2f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector2f;->clone()Lcom/jme3/math/Vector2f;

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->offset:Lcom/jme3/math/Vector2f;

    .line 12
    iget v1, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->offsetAmount:F

    iput v1, v0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->offsetAmount:F

    .line 13
    new-instance v1, Lcom/jme3/terrain/geomipmap/LODGeomap;

    iget v2, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->size:I

    iget-object v3, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->geomap:Lcom/jme3/terrain/geomipmap/LODGeomap;

    invoke-virtual {v3}, Lcom/jme3/terrain/GeoMap;->getHeightArray()[F

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/jme3/terrain/geomipmap/LODGeomap;-><init>(I[F)V

    iput-object v1, v0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->geomap:Lcom/jme3/terrain/geomipmap/LODGeomap;

    .line 14
    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getLocalTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    .line 15
    iget-object v2, v0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->geomap:Lcom/jme3/terrain/geomipmap/LODGeomap;

    iget-object v3, v0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->stepScale:Lcom/jme3/math/Vector3f;

    sget-object v4, Lcom/jme3/math/Vector2f;->UNIT_XY:Lcom/jme3/math/Vector2f;

    iget-object v5, v0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->offset:Lcom/jme3/math/Vector2f;

    iget v6, v0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->offsetAmount:F

    iget v7, v0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->totalSize:I

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/jme3/terrain/geomipmap/LODGeomap;->createMesh(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;FIZ)Lcom/jme3/scene/Mesh;

    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/jme3/scene/Geometry;->setMesh(Lcom/jme3/scene/Mesh;)V

    .line 17
    iget-object v1, p0, Lcom/jme3/scene/Geometry;->material:Lcom/jme3/material/Material;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/jme3/material/Material;->clone()Lcom/jme3/material/Material;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/jme3/scene/Geometry;->setMaterial(Lcom/jme3/material/Material;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->clone()Lcom/jme3/terrain/geomipmap/TerrainPatch;

    move-result-object v0

    return-object v0
.end method

.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 7

    invoke-super {p0, p1, p2}, Lcom/jme3/scene/Geometry;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->stepScale:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Vector3f;

    iput-object p2, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->stepScale:Lcom/jme3/math/Vector3f;

    iget-object p2, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->offset:Lcom/jme3/math/Vector2f;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector2f;

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->offset:Lcom/jme3/math/Vector2f;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->leftNeighbour:Lcom/jme3/terrain/geomipmap/TerrainPatch;

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->topNeighbour:Lcom/jme3/terrain/geomipmap/TerrainPatch;

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->rightNeighbour:Lcom/jme3/terrain/geomipmap/TerrainPatch;

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->bottomNeighbour:Lcom/jme3/terrain/geomipmap/TerrainPatch;

    new-instance v0, Lcom/jme3/terrain/geomipmap/LODGeomap;

    iget p2, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->size:I

    iget-object v1, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->geomap:Lcom/jme3/terrain/geomipmap/LODGeomap;

    invoke-virtual {v1}, Lcom/jme3/terrain/GeoMap;->getHeightArray()[F

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lcom/jme3/terrain/geomipmap/LODGeomap;-><init>(I[F)V

    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->geomap:Lcom/jme3/terrain/geomipmap/LODGeomap;

    iget-object v1, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->stepScale:Lcom/jme3/math/Vector3f;

    sget-object v2, Lcom/jme3/math/Vector2f;->UNIT_XY:Lcom/jme3/math/Vector2f;

    iget-object v3, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->offset:Lcom/jme3/math/Vector2f;

    iget v4, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->offsetAmount:F

    iget v5, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->totalSize:I

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/jme3/terrain/geomipmap/LODGeomap;->createMesh(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;FIZ)Lcom/jme3/scene/Mesh;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/jme3/scene/Geometry;->setMesh(Lcom/jme3/scene/Mesh;)V

    iget-object p2, p0, Lcom/jme3/scene/Geometry;->material:Lcom/jme3/material/Material;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/jme3/material/Material;->clone()Lcom/jme3/material/Material;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/jme3/scene/Geometry;->material:Lcom/jme3/material/Material;

    return-void
.end method

.method public collideWith(Lcom/jme3/collision/Collidable;Lcom/jme3/collision/CollisionResults;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/jme3/collision/UnsupportedCollisionException;
        }
    .end annotation

    iget v0, p0, Lcom/jme3/scene/Spatial;->refreshFlags:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/jme3/terrain/geomipmap/TerrainPatch;->logger:Ljava/util/logging/Logger;

    sget-object p2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v0, "Scene graph must be updated before checking collision"

    invoke-virtual {p1, p2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return v1

    :cond_0
    instance-of v0, p1, Lcom/jme3/bounding/BoundingVolume;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Lcom/jme3/bounding/BoundingVolume;

    invoke-virtual {v2, v3}, Lcom/jme3/bounding/BoundingVolume;->intersects(Lcom/jme3/bounding/BoundingVolume;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    instance-of v1, p1, Lcom/jme3/math/Ray;

    if-eqz v1, :cond_2

    check-cast p1, Lcom/jme3/math/Ray;

    invoke-direct {p0, p1, p2}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->collideWithRay(Lcom/jme3/math/Ray;Lcom/jme3/collision/CollisionResults;)I

    move-result p1

    return p1

    :cond_2
    if-eqz v0, :cond_3

    check-cast p1, Lcom/jme3/bounding/BoundingVolume;

    invoke-direct {p0, p1, p2}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->collideWithBoundingVolume(Lcom/jme3/bounding/BoundingVolume;Lcom/jme3/collision/CollisionResults;)I

    move-result p1

    return p1

    :cond_3
    new-instance p2, Lcom/jme3/collision/UnsupportedCollisionException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TerrainPatch cannot collide with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/jme3/collision/UnsupportedCollisionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public ensurePositiveVolumeBBox()V
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->getModelBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v0

    instance-of v0, v0, Lcom/jme3/bounding/BoundingBox;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->getModelBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v0

    check-cast v0, Lcom/jme3/bounding/BoundingBox;

    invoke-virtual {v0}, Lcom/jme3/bounding/BoundingBox;->getYExtent()F

    move-result v0

    const v1, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->getModelBound()Lcom/jme3/bounding/BoundingVolume;

    move-result-object v0

    check-cast v0, Lcom/jme3/bounding/BoundingBox;

    invoke-virtual {v0, v1}, Lcom/jme3/bounding/BoundingBox;->setYExtent(F)V

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->updateWorldBound()V

    :cond_0
    return-void
.end method

.method public fixNormalEdges(Lcom/jme3/terrain/geomipmap/TerrainPatch;Lcom/jme3/terrain/geomipmap/TerrainPatch;Lcom/jme3/terrain/geomipmap/TerrainPatch;Lcom/jme3/terrain/geomipmap/TerrainPatch;Lcom/jme3/terrain/geomipmap/TerrainPatch;Lcom/jme3/terrain/geomipmap/TerrainPatch;Lcom/jme3/terrain/geomipmap/TerrainPatch;Lcom/jme3/terrain/geomipmap/TerrainPatch;)V
    .locals 29

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    new-instance v14, Lcom/jme3/math/Vector3f;

    invoke-direct {v14}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v15, Lcom/jme3/math/Vector3f;

    invoke-direct {v15}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v8, Lcom/jme3/math/Vector3f;

    invoke-direct {v8}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v7, Lcom/jme3/math/Vector3f;

    invoke-direct {v7}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v6, Lcom/jme3/math/Vector3f;

    invoke-direct {v6}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v16, Lcom/jme3/math/Vector3f;

    invoke-direct/range {v16 .. v16}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v17, Lcom/jme3/math/Vector3f;

    invoke-direct/range {v17 .. v17}, Lcom/jme3/math/Vector3f;-><init>()V

    new-instance v18, Lcom/jme3/math/Vector3f;

    invoke-direct/range {v18 .. v18}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getSize()I

    move-result v5

    add-int/lit8 v4, v5, -0x1

    const/16 v19, 0x0

    const/4 v1, 0x0

    if-eqz v10, :cond_4

    move/from16 v0, v19

    :goto_0
    if-ge v0, v5, :cond_4

    int-to-float v2, v4

    int-to-float v3, v0

    move/from16 p7, v4

    invoke-virtual {v9, v2, v3}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getHeightmapHeight(FF)F

    move-result v4

    invoke-virtual {v14, v1, v4, v1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    add-int/lit8 v4, v5, -0x2

    int-to-float v4, v4

    move/from16 p8, v5

    invoke-virtual {v9, v4, v3}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getHeightmapHeight(FF)F

    move-result v5

    move-object/from16 v20, v7

    const/high16 v7, -0x40800000    # -1.0f

    invoke-virtual {v8, v7, v5, v1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v10, v5, v3}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getHeightmapHeight(FF)F

    move-result v3

    invoke-virtual {v15, v5, v3, v1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    if-nez v0, :cond_1

    add-int/lit8 v3, v0, 0x1

    int-to-float v3, v3

    invoke-virtual {v9, v2, v3}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getHeightmapHeight(FF)F

    move-result v3

    invoke-virtual {v6, v1, v3, v5}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    if-nez v12, :cond_0

    const/4 v2, 0x0

    move v4, v0

    move-object/from16 v0, p0

    move v3, v1

    move-object v1, v2

    move-object v2, v14

    move-object v3, v8

    move/from16 v22, p7

    move/from16 v23, v4

    move-object v4, v6

    move/from16 v24, p8

    move-object v5, v15

    move-object/from16 v25, v6

    move-object/from16 v6, v18

    move-object/from16 v26, v20

    move-object/from16 v7, v16

    move-object/from16 v20, v8

    move-object/from16 v8, v17

    invoke-virtual/range {v0 .. v8}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->averageNormalsTangents(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v1

    move/from16 v2, v22

    move-object/from16 v3, v18

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->setInBuffer(Lcom/jme3/scene/Mesh;ILcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->setInBuffer(Lcom/jme3/scene/Mesh;ILcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    move/from16 v12, v22

    move/from16 v21, v23

    move/from16 v10, v24

    move-object/from16 v11, v25

    move-object/from16 v13, v26

    :goto_1
    move-object/from16 v23, v15

    :goto_2
    const/high16 v15, 0x3f800000    # 1.0f

    goto/16 :goto_3

    :cond_0
    move/from16 v22, p7

    move/from16 v24, p8

    move/from16 v23, v0

    move-object/from16 v25, v6

    move-object/from16 v26, v20

    move-object/from16 v20, v8

    invoke-virtual {v12, v2, v4}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getHeightmapHeight(FF)F

    move-result v0

    move-object/from16 v8, v26

    const/4 v6, 0x0

    const/high16 v7, -0x40800000    # -1.0f

    invoke-virtual {v8, v6, v0, v7}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v14

    move-object/from16 v3, v20

    move-object/from16 v4, v25

    move-object v5, v15

    move v10, v6

    move-object/from16 v6, v18

    move v12, v7

    move-object/from16 v7, v16

    move-object v13, v8

    move-object/from16 v8, v17

    invoke-virtual/range {v0 .. v8}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->averageNormalsTangents(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v1

    move/from16 v2, v22

    move-object/from16 v3, v18

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->setInBuffer(Lcom/jme3/scene/Mesh;ILcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->setInBuffer(Lcom/jme3/scene/Mesh;ILcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-virtual/range {p3 .. p3}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v1

    move/from16 v8, v24

    mul-int v5, v8, v8

    add-int/lit8 v2, v5, -0x1

    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->setInBuffer(Lcom/jme3/scene/Mesh;ILcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    move v10, v8

    move/from16 v12, v22

    move/from16 v21, v23

    move-object/from16 v11, v25

    goto :goto_1

    :cond_1
    move v10, v1

    move-object/from16 v25, v6

    move v12, v7

    move-object/from16 v13, v20

    move/from16 v7, p7

    move v6, v0

    move-object/from16 v20, v8

    move/from16 v8, p8

    if-ne v6, v7, :cond_3

    invoke-virtual {v9, v2, v4}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getHeightmapHeight(FF)F

    move-result v0

    invoke-virtual {v13, v10, v0, v12}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    if-nez v11, :cond_2

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move-object/from16 v3, v20

    move-object v5, v15

    move/from16 v21, v6

    move-object/from16 v6, v18

    move v12, v7

    move-object/from16 v7, v16

    move v10, v8

    move-object/from16 v8, v17

    invoke-virtual/range {v0 .. v8}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->averageNormalsTangents(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v1

    mul-int v5, v10, v10

    add-int/lit8 v2, v5, -0x1

    move-object/from16 v3, v18

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->setInBuffer(Lcom/jme3/scene/Mesh;ILcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v1

    mul-int v2, v10, v12

    invoke-direct/range {v0 .. v5}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->setInBuffer(Lcom/jme3/scene/Mesh;ILcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    move-object/from16 v23, v15

    move-object/from16 v11, v25

    goto/16 :goto_2

    :cond_2
    move/from16 v21, v6

    move v12, v7

    move v10, v8

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v11, v2, v8}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getHeightmapHeight(FF)F

    move-result v0

    move-object/from16 v7, v25

    const/4 v1, 0x0

    invoke-virtual {v7, v1, v0, v8}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move-object/from16 v3, v20

    move-object v4, v7

    move-object v5, v15

    move-object/from16 v6, v18

    move-object v11, v7

    move-object/from16 v7, v16

    move-object/from16 v23, v15

    move v15, v8

    move-object/from16 v8, v17

    invoke-virtual/range {v0 .. v8}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->averageNormalsTangents(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v1

    mul-int v5, v10, v10

    add-int/lit8 v2, v5, -0x1

    move-object/from16 v3, v18

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->setInBuffer(Lcom/jme3/scene/Mesh;ILcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v1

    mul-int v2, v10, v12

    invoke-direct/range {v0 .. v5}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->setInBuffer(Lcom/jme3/scene/Mesh;ILcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v1

    move v2, v12

    invoke-direct/range {v0 .. v5}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->setInBuffer(Lcom/jme3/scene/Mesh;ILcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    goto :goto_3

    :cond_3
    move/from16 v21, v6

    move v12, v7

    move v10, v8

    move-object/from16 v23, v15

    move-object/from16 v11, v25

    const/high16 v15, 0x3f800000    # 1.0f

    add-int/lit8 v0, v21, -0x1

    int-to-float v0, v0

    invoke-virtual {v9, v2, v0}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getHeightmapHeight(FF)F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v3, 0x0

    invoke-virtual {v13, v3, v0, v1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    add-int/lit8 v8, v21, 0x1

    int-to-float v0, v8

    invoke-virtual {v9, v2, v0}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getHeightmapHeight(FF)F

    move-result v0

    invoke-virtual {v11, v3, v0, v15}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move-object/from16 v3, v20

    move-object v4, v11

    move-object/from16 v5, v23

    move-object/from16 v6, v18

    move-object/from16 v7, v16

    move/from16 v24, v8

    move-object/from16 v8, v17

    invoke-virtual/range {v0 .. v8}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->averageNormalsTangents(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v1

    mul-int v5, v10, v24

    add-int/lit8 v2, v5, -0x1

    move-object/from16 v3, v18

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->setInBuffer(Lcom/jme3/scene/Mesh;ILcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-virtual/range {p1 .. p1}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v1

    mul-int v2, v10, v21

    invoke-direct/range {v0 .. v5}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->setInBuffer(Lcom/jme3/scene/Mesh;ILcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    :goto_3
    add-int/lit8 v0, v21, 0x1

    move v5, v10

    move-object v6, v11

    move v4, v12

    move-object v7, v13

    move-object/from16 v8, v20

    move-object/from16 v15, v23

    const/4 v1, 0x0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move-object/from16 v13, p4

    goto/16 :goto_0

    :cond_4
    move v12, v4

    move v10, v5

    move-object v11, v6

    move-object/from16 v20, v8

    move-object/from16 v23, v15

    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v13, p4

    move-object v8, v7

    if-eqz v13, :cond_9

    move/from16 v7, v19

    :goto_4
    if-ge v7, v10, :cond_9

    int-to-float v0, v7

    const/4 v1, 0x0

    invoke-virtual {v9, v1, v0}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getHeightmapHeight(FF)F

    move-result v2

    invoke-virtual {v14, v1, v2, v1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    add-int/lit8 v5, v10, -0x2

    int-to-float v2, v5

    invoke-virtual {v13, v2, v0}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getHeightmapHeight(FF)F

    move-result v3

    move-object/from16 v6, v20

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v6, v4, v3, v1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    invoke-virtual {v9, v15, v0}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getHeightmapHeight(FF)F

    move-result v0

    move-object/from16 v5, v23

    invoke-virtual {v5, v15, v0, v1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    if-nez v7, :cond_6

    add-int/lit8 v0, v7, 0x1

    int-to-float v0, v0

    invoke-virtual {v9, v1, v0}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getHeightmapHeight(FF)F

    move-result v0

    invoke-virtual {v11, v1, v0, v15}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    move v3, v4

    move-object/from16 v4, p3

    if-nez v4, :cond_5

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move-object v2, v14

    move v15, v3

    move-object v3, v6

    move-object v15, v4

    move-object v4, v11

    move-object/from16 v23, v5

    move-object/from16 v20, v6

    move-object/from16 v6, v18

    move/from16 v27, v7

    move-object/from16 v7, v16

    move-object v13, v8

    move-object/from16 v8, v17

    invoke-virtual/range {v0 .. v8}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->averageNormalsTangents(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v3, v18

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->setInBuffer(Lcom/jme3/scene/Mesh;ILcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-virtual/range {p4 .. p4}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v1

    move v2, v12

    invoke-direct/range {v0 .. v5}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->setInBuffer(Lcom/jme3/scene/Mesh;ILcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    :goto_5
    move/from16 v21, v27

    goto/16 :goto_6

    :cond_5
    move-object v15, v4

    move-object/from16 v23, v5

    move-object/from16 v20, v6

    move/from16 v27, v7

    move-object v13, v8

    const/4 v0, 0x0

    invoke-virtual {v15, v0, v2}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getHeightmapHeight(FF)F

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v13, v0, v1, v2}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move-object/from16 v3, v20

    move-object v4, v11

    move-object/from16 v6, v18

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    invoke-virtual/range {v0 .. v8}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->averageNormalsTangents(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v1

    const/4 v2, 0x0

    move-object/from16 v3, v18

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->setInBuffer(Lcom/jme3/scene/Mesh;ILcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-virtual/range {p4 .. p4}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v1

    move v2, v12

    invoke-direct/range {v0 .. v5}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->setInBuffer(Lcom/jme3/scene/Mesh;ILcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-virtual/range {p3 .. p3}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v1

    mul-int v2, v10, v12

    invoke-direct/range {v0 .. v5}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->setInBuffer(Lcom/jme3/scene/Mesh;ILcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    goto :goto_5

    :cond_6
    move-object/from16 v15, p3

    move-object/from16 v23, v5

    move-object/from16 v20, v6

    move-object v13, v8

    move v8, v7

    if-ne v8, v12, :cond_8

    add-int/lit8 v7, v8, -0x1

    int-to-float v0, v7

    const/4 v1, 0x0

    invoke-virtual {v9, v1, v0}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getHeightmapHeight(FF)F

    move-result v0

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v13, v1, v0, v2}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    move-object v7, v11

    move-object/from16 v11, p2

    if-nez v11, :cond_7

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move-object/from16 v3, v20

    move-object/from16 v5, v23

    move-object/from16 v6, v18

    move-object/from16 v28, v7

    move-object/from16 v7, v16

    move/from16 v21, v8

    move-object/from16 v8, v17

    invoke-virtual/range {v0 .. v8}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->averageNormalsTangents(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v1

    mul-int v2, v10, v12

    move-object/from16 v3, v18

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->setInBuffer(Lcom/jme3/scene/Mesh;ILcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-virtual/range {p4 .. p4}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v1

    mul-int v5, v10, v10

    add-int/lit8 v2, v5, -0x1

    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->setInBuffer(Lcom/jme3/scene/Mesh;ILcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    move-object/from16 v11, v28

    goto/16 :goto_6

    :cond_7
    move-object/from16 v28, v7

    move/from16 v21, v8

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-virtual {v11, v1, v0}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getHeightmapHeight(FF)F

    move-result v2

    move-object/from16 v8, v28

    invoke-virtual {v8, v1, v2, v0}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move-object/from16 v3, v20

    move-object v4, v8

    move-object/from16 v5, v23

    move-object/from16 v6, v18

    move-object/from16 v7, v16

    move-object v11, v8

    move-object/from16 v8, v17

    invoke-virtual/range {v0 .. v8}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->averageNormalsTangents(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v1

    mul-int v2, v10, v12

    move-object/from16 v3, v18

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->setInBuffer(Lcom/jme3/scene/Mesh;ILcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-virtual/range {p4 .. p4}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v1

    mul-int v5, v10, v10

    add-int/lit8 v2, v5, -0x1

    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->setInBuffer(Lcom/jme3/scene/Mesh;ILcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->setInBuffer(Lcom/jme3/scene/Mesh;ILcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    goto :goto_6

    :cond_8
    move/from16 v21, v8

    add-int/lit8 v7, v21, -0x1

    int-to-float v0, v7

    const/4 v1, 0x0

    invoke-virtual {v9, v1, v0}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getHeightmapHeight(FF)F

    move-result v0

    const/high16 v2, -0x40800000    # -1.0f

    invoke-virtual {v13, v1, v0, v2}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    add-int/lit8 v8, v21, 0x1

    int-to-float v0, v8

    invoke-virtual {v9, v1, v0}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getHeightmapHeight(FF)F

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v11, v1, v0, v2}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move-object/from16 v3, v20

    move-object v4, v11

    move-object/from16 v5, v23

    move-object/from16 v6, v18

    move-object/from16 v7, v16

    move/from16 v24, v8

    move-object/from16 v8, v17

    invoke-virtual/range {v0 .. v8}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->averageNormalsTangents(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v1

    mul-int v2, v10, v21

    move-object/from16 v3, v18

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->setInBuffer(Lcom/jme3/scene/Mesh;ILcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-virtual/range {p4 .. p4}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v1

    mul-int v5, v10, v24

    add-int/lit8 v2, v5, -0x1

    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->setInBuffer(Lcom/jme3/scene/Mesh;ILcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    :goto_6
    add-int/lit8 v7, v21, 0x1

    move-object v8, v13

    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v13, p4

    goto/16 :goto_4

    :cond_9
    move-object/from16 v15, p3

    move-object v13, v8

    if-eqz v15, :cond_c

    move/from16 v8, v19

    :goto_7
    if-ge v8, v10, :cond_c

    int-to-float v0, v8

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getHeightmapHeight(FF)F

    move-result v2

    invoke-virtual {v14, v1, v2, v1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    add-int/lit8 v5, v10, -0x2

    int-to-float v2, v5

    invoke-virtual {v15, v0, v2}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getHeightmapHeight(FF)F

    move-result v2

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v13, v1, v2, v3}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v9, v0, v2}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getHeightmapHeight(FF)F

    move-result v0

    invoke-virtual {v11, v1, v0, v2}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    if-nez v8, :cond_a

    :goto_8
    move-object/from16 v25, v11

    move-object/from16 v15, v20

    move-object/from16 v11, v23

    move/from16 v20, v8

    goto :goto_9

    :cond_a
    if-ne v8, v12, :cond_b

    goto :goto_8

    :cond_b
    add-int/lit8 v0, v8, -0x1

    int-to-float v0, v0

    invoke-virtual {v9, v0, v1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getHeightmapHeight(FF)F

    move-result v0

    move-object/from16 v7, v20

    invoke-virtual {v7, v3, v0, v1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    add-int/lit8 v0, v8, 0x1

    int-to-float v0, v0

    invoke-virtual {v9, v0, v1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getHeightmapHeight(FF)F

    move-result v0

    move-object/from16 v6, v23

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v6, v2, v0, v1}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move-object v3, v7

    move-object v4, v11

    move-object v5, v6

    move-object/from16 v25, v11

    move-object v11, v6

    move-object/from16 v6, v18

    move-object v15, v7

    move-object/from16 v7, v16

    move/from16 v20, v8

    move-object/from16 v8, v17

    invoke-virtual/range {v0 .. v8}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->averageNormalsTangents(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v1

    move/from16 v2, v20

    move-object/from16 v3, v18

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->setInBuffer(Lcom/jme3/scene/Mesh;ILcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-virtual/range {p3 .. p3}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v1

    mul-int v5, v10, v12

    add-int v2, v5, v20

    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v5}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->setInBuffer(Lcom/jme3/scene/Mesh;ILcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    :goto_9
    add-int/lit8 v8, v20, 0x1

    move-object/from16 v23, v11

    move-object/from16 v20, v15

    move-object/from16 v11, v25

    move-object/from16 v15, p3

    goto/16 :goto_7

    :cond_c
    move-object/from16 v25, v11

    move-object/from16 v15, v20

    move-object/from16 v11, v23

    move-object/from16 v8, p2

    move-object/from16 v7, v25

    if-eqz v8, :cond_f

    move/from16 v6, v19

    :goto_a
    if-ge v6, v10, :cond_f

    int-to-float v0, v6

    int-to-float v1, v12

    invoke-virtual {v9, v0, v1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getHeightmapHeight(FF)F

    move-result v2

    const/4 v5, 0x0

    invoke-virtual {v14, v5, v2, v5}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    add-int/lit8 v2, v10, -0x2

    int-to-float v2, v2

    invoke-virtual {v9, v0, v2}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getHeightmapHeight(FF)F

    move-result v2

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v13, v5, v2, v4}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v8, v0, v2}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getHeightmapHeight(FF)F

    move-result v0

    invoke-virtual {v7, v5, v0, v2}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    if-nez v6, :cond_d

    :goto_b
    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    move-object/from16 v23, v7

    const/high16 v19, 0x3f800000    # 1.0f

    goto :goto_c

    :cond_d
    if-ne v6, v12, :cond_e

    goto :goto_b

    :cond_e
    add-int/lit8 v0, v6, -0x1

    int-to-float v0, v0

    invoke-virtual {v9, v0, v1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getHeightmapHeight(FF)F

    move-result v0

    invoke-virtual {v15, v4, v0, v5}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    add-int/lit8 v0, v6, 0x1

    int-to-float v0, v0

    invoke-virtual {v9, v0, v1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getHeightmapHeight(FF)F

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v11, v3, v0, v5}, Lcom/jme3/math/Vector3f;->set(FFF)Lcom/jme3/math/Vector3f;

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v14

    move/from16 v19, v3

    move-object v3, v15

    move/from16 v20, v4

    move-object v4, v7

    move/from16 v21, v5

    move-object v5, v11

    move/from16 v22, v6

    move-object/from16 v6, v18

    move-object/from16 v23, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    invoke-virtual/range {v0 .. v8}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->averageNormalsTangents(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-virtual/range {p0 .. p0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v0

    mul-int v5, v10, v12

    add-int v1, v5, v22

    move-object/from16 p3, p0

    move-object/from16 p4, v0

    move/from16 p5, v1

    move-object/from16 p6, v18

    move-object/from16 p7, v16

    move-object/from16 p8, v17

    invoke-direct/range {p3 .. p8}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->setInBuffer(Lcom/jme3/scene/Mesh;ILcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    invoke-virtual/range {p2 .. p2}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v0

    move-object/from16 p4, v0

    move/from16 p5, v22

    invoke-direct/range {p3 .. p8}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->setInBuffer(Lcom/jme3/scene/Mesh;ILcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)V

    :goto_c
    add-int/lit8 v6, v22, 0x1

    move-object/from16 v8, p2

    move-object/from16 v7, v23

    goto/16 :goto_a

    :cond_f
    return-void
.end method

.method public generateLodEntropies()V
    .locals 11

    invoke-virtual {p0}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getMaxLod()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getMaxLod()I

    move-result v2

    if-gt v1, v2, :cond_0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    int-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v5, v2

    iget-object v4, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->geomap:Lcom/jme3/terrain/geomipmap/LODGeomap;

    const/4 v9, 0x0

    iget v10, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->totalSize:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/jme3/terrain/geomipmap/LODGeomap;->writeIndexArrayLodDiff(IZZZZI)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/jme3/scene/mesh/IndexBuffer;->getBuffer()Ljava/nio/Buffer;

    move-result-object v2

    iget-object v3, p0, Lcom/jme3/scene/Geometry;->mesh:Lcom/jme3/scene/Mesh;

    invoke-static {v3, v2}, Lcom/jme3/terrain/geomipmap/lodcalc/util/EntropyComputeUtil;->computeLodEntropy(Lcom/jme3/scene/Mesh;Ljava/nio/Buffer;)F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->lodEntropy:[F

    return-void
.end method

.method public getGridTriangles(FF)[Lcom/jme3/math/Triangle;
    .locals 3

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->geomap:Lcom/jme3/terrain/geomipmap/LODGeomap;

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldScale()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/jme3/terrain/geomipmap/LODGeomap;->getGridTrianglesAtPoint(FFLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)[Lcom/jme3/math/Triangle;

    move-result-object p1

    return-object p1
.end method

.method public getHeight(IIFF)F
    .locals 1

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->geomap:Lcom/jme3/terrain/geomipmap/LODGeomap;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/jme3/terrain/geomipmap/LODGeomap;->getHeight(IIFF)F

    move-result p1

    return p1
.end method

.method public getHeightMap()[F
    .locals 1

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->geomap:Lcom/jme3/terrain/geomipmap/LODGeomap;

    invoke-virtual {v0}, Lcom/jme3/terrain/GeoMap;->getHeightArray()[F

    move-result-object v0

    return-object v0
.end method

.method public getHeightmapHeight(FF)F
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_1

    cmpg-float v1, p2, v0

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->size:I

    int-to-float v2, v1

    cmpl-float v2, p1, v2

    if-gez v2, :cond_1

    int-to-float v2, v1

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v0, v1

    mul-float/2addr p2, v0

    add-float/2addr p2, p1

    float-to-int p1, p2

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object p2

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p2, v0}, Lcom/jme3/scene/Mesh;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object p2

    mul-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public getLod()I
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->lod:I

    return v0
.end method

.method public getLodBottom()I
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->lodBottom:I

    return v0
.end method

.method public getLodEntropies()[F
    .locals 1

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->lodEntropy:[F

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->generateLodEntropies()V

    :cond_0
    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->lodEntropy:[F

    return-object v0
.end method

.method public getLodLeft()I
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->lodLeft:I

    return v0
.end method

.method public getLodRight()I
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->lodRight:I

    return v0
.end method

.method public getLodTop()I
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->lodTop:I

    return v0
.end method

.method public getMaxLod()I
    .locals 3

    iget v0, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->maxLod:I

    if-gez v0, :cond_0

    iget v0, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->size:I

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

    iput v0, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->maxLod:I

    :cond_0
    iget v0, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->maxLod:I

    return v0
.end method

.method public getMeshNormal(II)Lcom/jme3/math/Vector3f;
    .locals 2

    iget v0, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->size:I

    if-ge p1, v0, :cond_1

    if-lt p2, v0, :cond_0

    goto :goto_0

    :cond_0
    mul-int/2addr p2, v0

    add-int/2addr p2, p1

    mul-int/lit8 p2, p2, 0x3

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object p1

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p1, v0}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/FloatBuffer;

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v1

    iput v1, v0, Lcom/jme3/math/Vector3f;->x:F

    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v1

    iput v1, v0, Lcom/jme3/math/Vector3f;->y:F

    add-int/lit8 p2, p2, 0x2

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->get(I)F

    move-result p1

    iput p1, v0, Lcom/jme3/math/Vector3f;->z:F

    return-object v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getOffset()Lcom/jme3/math/Vector2f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->offset:Lcom/jme3/math/Vector2f;

    return-object v0
.end method

.method public getOffsetAmount()F
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->offsetAmount:F

    return v0
.end method

.method public getPreviousLod()I
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->previousLod:I

    return v0
.end method

.method public getQuadrant()S
    .locals 1

    iget-short v0, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->quadrant:S

    return v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->size:I

    return v0
.end method

.method public getStepScale()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->stepScale:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getTex(FFLcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector2f;
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_1

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->size:I

    int-to-float v1, v0

    cmpl-float v1, p1, v1

    if-gez v1, :cond_1

    int-to-float v1, v0

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    mul-float/2addr p2, v0

    add-float/2addr p2, p1

    float-to-int p1, p2

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object p2

    sget-object v0, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {p2, v0}, Lcom/jme3/scene/Mesh;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object p2

    mul-int/lit8 p1, p1, 0x2

    invoke-virtual {p2, p1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result p2

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jme3/scene/Mesh;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result p1

    invoke-virtual {p3, p2, p1}, Lcom/jme3/math/Vector2f;->set(FF)Lcom/jme3/math/Vector2f;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    sget-object p1, Lcom/jme3/math/Vector2f;->ZERO:Lcom/jme3/math/Vector2f;

    invoke-virtual {p3, p1}, Lcom/jme3/math/Vector2f;->set(Lcom/jme3/math/Vector2f;)Lcom/jme3/math/Vector2f;

    return-object p3
.end method

.method public getTotalSize()I
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->totalSize:I

    return v0
.end method

.method public getTriangle(FF)Lcom/jme3/math/Triangle;
    .locals 3

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->geomap:Lcom/jme3/terrain/geomipmap/LODGeomap;

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldScale()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/jme3/terrain/geomipmap/LODGeomap;->getTriangleAtPoint(FFLcom/jme3/math/Vector3f;Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Triangle;

    move-result-object p1

    return-object p1
.end method

.method public getWorldScaleCached()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->worldScaleCached:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getWorldTranslationCached()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->worldTranslationCached:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public lockMesh()V
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/scene/Mesh;->setStatic()V

    return-void
.end method

.method public reIndexGeometry(Ljava/util/HashMap;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;",
            ">;Z)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->isReIndexNeeded()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->getNewLod()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v5, v0

    invoke-virtual {p1}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->getLeftLod()I

    move-result v0

    invoke-virtual {p1}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->getNewLod()I

    move-result v1

    const/4 v4, 0x0

    const/4 v6, 0x1

    if-le v0, v1, :cond_0

    move v8, v6

    goto :goto_0

    :cond_0
    move v8, v4

    :goto_0
    invoke-virtual {p1}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->getTopLod()I

    move-result v0

    invoke-virtual {p1}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->getNewLod()I

    move-result v1

    if-le v0, v1, :cond_1

    move v7, v6

    goto :goto_1

    :cond_1
    move v7, v4

    :goto_1
    invoke-virtual {p1}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->getRightLod()I

    move-result v0

    invoke-virtual {p1}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->getNewLod()I

    move-result v1

    if-le v0, v1, :cond_2

    move v0, v6

    goto :goto_2

    :cond_2
    move v0, v4

    :goto_2
    invoke-virtual {p1}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->getBottomLod()I

    move-result v1

    invoke-virtual {p1}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->getNewLod()I

    move-result v9

    if-le v1, v9, :cond_3

    move v9, v6

    goto :goto_3

    :cond_3
    move v9, v4

    :goto_3
    if-eqz p2, :cond_4

    iget-object v4, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->geomap:Lcom/jme3/terrain/geomipmap/LODGeomap;

    invoke-virtual {p1}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->getRightLod()I

    move-result p2

    int-to-double v0, p2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v6, v0

    invoke-virtual {p1}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->getTopLod()I

    move-result p2

    int-to-double v0, p2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v7, v0

    invoke-virtual {p1}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->getLeftLod()I

    move-result p2

    int-to-double v0, p2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v8, v0

    invoke-virtual {p1}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->getBottomLod()I

    move-result p2

    int-to-double v0, p2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v9, v0

    iget v10, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->totalSize:I

    invoke-virtual/range {v4 .. v10}, Lcom/jme3/terrain/geomipmap/LODGeomap;->writeIndexArrayLodVariable(IIIIII)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object p2

    goto :goto_4

    :cond_4
    iget-object v4, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->geomap:Lcom/jme3/terrain/geomipmap/LODGeomap;

    iget v10, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->totalSize:I

    move v6, v0

    invoke-virtual/range {v4 .. v10}, Lcom/jme3/terrain/geomipmap/LODGeomap;->writeIndexArrayLodDiff(IZZZZI)Lcom/jme3/scene/mesh/IndexBuffer;

    move-result-object p2

    :goto_4
    invoke-virtual {p2}, Lcom/jme3/scene/mesh/IndexBuffer;->getBuffer()Ljava/nio/Buffer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->setNewIndexBuffer(Ljava/nio/Buffer;)V

    :cond_5
    return-void
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/Geometry;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "size"

    const/16 v1, 0x10

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->size:I

    const-string v0, "totalSize"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->totalSize:I

    const-string v0, "quadrant"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readShort(Ljava/lang/String;S)S

    move-result v0

    iput-short v0, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->quadrant:S

    sget-object v0, Lcom/jme3/math/Vector3f;->UNIT_XYZ:Lcom/jme3/math/Vector3f;

    const-string v1, "stepScale"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Vector3f;

    iput-object v1, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->stepScale:Lcom/jme3/math/Vector3f;

    const-string v1, "offset"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector2f;

    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->offset:Lcom/jme3/math/Vector2f;

    const-string v0, "offsetAmount"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->offsetAmount:F

    const-string v0, "lodEntropy"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloatArray(Ljava/lang/String;[F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->lodEntropy:[F

    const-string v0, "geomap"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/jme3/terrain/geomipmap/LODGeomap;

    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->geomap:Lcom/jme3/terrain/geomipmap/LODGeomap;

    iget-object v1, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->stepScale:Lcom/jme3/math/Vector3f;

    new-instance v2, Lcom/jme3/math/Vector2f;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-direct {v2, p1, p1}, Lcom/jme3/math/Vector2f;-><init>(FF)V

    iget-object v3, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->offset:Lcom/jme3/math/Vector2f;

    iget v4, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->offsetAmount:F

    iget v5, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->totalSize:I

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/jme3/terrain/geomipmap/LODGeomap;->createMesh(Lcom/jme3/math/Vector3f;Lcom/jme3/math/Vector2f;Lcom/jme3/math/Vector2f;FIZ)Lcom/jme3/scene/Mesh;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Geometry;->setMesh(Lcom/jme3/scene/Mesh;)V

    invoke-virtual {p0}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->ensurePositiveVolumeBBox()V

    return-void
.end method

.method public setHeight(Ljava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/terrain/geomipmap/TerrainQuad$LocationHeight;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->geomap:Lcom/jme3/terrain/geomipmap/LODGeomap;

    invoke-virtual {v0}, Lcom/jme3/terrain/GeoMap;->getHeightArray()[F

    move-result-object v0

    iget-object v1, p0, Lcom/jme3/scene/Geometry;->mesh:Lcom/jme3/scene/Mesh;

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Position:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v1, v2}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v1

    iget-object v3, p0, Lcom/jme3/scene/Geometry;->mesh:Lcom/jme3/scene/Mesh;

    invoke-virtual {v3, v2}, Lcom/jme3/scene/Mesh;->getFloatBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/terrain/geomipmap/TerrainQuad$LocationHeight;

    iget v4, v3, Lcom/jme3/terrain/geomipmap/TerrainQuad$LocationHeight;->x:I

    if-ltz v4, :cond_0

    iget v5, v3, Lcom/jme3/terrain/geomipmap/TerrainQuad$LocationHeight;->z:I

    if-ltz v5, :cond_0

    iget v6, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->size:I

    if-ge v4, v6, :cond_0

    if-lt v5, v6, :cond_1

    goto :goto_0

    :cond_1
    mul-int/2addr v5, v6

    add-int/2addr v5, v4

    if-eqz p2, :cond_2

    iget v3, v3, Lcom/jme3/terrain/geomipmap/TerrainQuad$LocationHeight;->h:F

    aput v3, v0, v5

    goto :goto_0

    :cond_2
    mul-int/lit8 v4, v5, 0x3

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v4

    iget v3, v3, Lcom/jme3/terrain/geomipmap/TerrainQuad$LocationHeight;->h:F

    add-float/2addr v4, v3

    aput v4, v0, v5

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->clear()Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->geomap:Lcom/jme3/terrain/geomipmap/LODGeomap;

    iget-object p2, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->stepScale:Lcom/jme3/math/Vector3f;

    const/4 v0, 0x0

    invoke-virtual {p1, v2, p2, v0}, Lcom/jme3/terrain/GeoMap;->writeVertexArray(Ljava/nio/FloatBuffer;Lcom/jme3/math/Vector3f;Z)Ljava/nio/FloatBuffer;

    invoke-virtual {v1}, Lcom/jme3/util/NativeObject;->setUpdateNeeded()V

    return-void
.end method

.method public setLod(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->lod:I

    return-void
.end method

.method public setLodBottom(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->lodBottom:I

    return-void
.end method

.method public setLodLeft(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->lodLeft:I

    return-void
.end method

.method public setLodRight(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->lodRight:I

    return-void
.end method

.method public setLodTop(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->lodTop:I

    return-void
.end method

.method public setOffset(Lcom/jme3/math/Vector2f;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->offset:Lcom/jme3/math/Vector2f;

    return-void
.end method

.method public setOffsetAmount(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->offsetAmount:F

    return-void
.end method

.method public setPreviousLod(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->previousLod:I

    return-void
.end method

.method public setQuadrant(S)V
    .locals 0

    iput-short p1, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->quadrant:S

    return-void
.end method

.method public setSize(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->size:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->maxLod:I

    return-void
.end method

.method public setStepScale(Lcom/jme3/math/Vector3f;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->stepScale:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public setTotalSize(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->totalSize:I

    return-void
.end method

.method public unlockMesh()V
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/scene/Mesh;->setDynamic()V

    return-void
.end method

.method public updateNormals()V
    .locals 9

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->geomap:Lcom/jme3/terrain/geomipmap/LODGeomap;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldScale()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jme3/terrain/geomipmap/LODGeomap;->writeNormalArray(Ljava/nio/FloatBuffer;Lcom/jme3/math/Vector3f;)Ljava/nio/FloatBuffer;

    move-result-object v4

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v0

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Normal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    iget-object v3, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->geomap:Lcom/jme3/terrain/geomipmap/LODGeomap;

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v0

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->TexCoord:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/scene/VertexBuffer;->getData()Ljava/nio/Buffer;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ljava/nio/FloatBuffer;

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldScale()Lcom/jme3/math/Vector3f;

    move-result-object v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/jme3/terrain/geomipmap/LODGeomap;->writeTangentArray(Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Ljava/nio/FloatBuffer;Lcom/jme3/math/Vector3f;)[Ljava/nio/FloatBuffer;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v2

    sget-object v3, Lcom/jme3/scene/VertexBuffer$Type;->Tangent:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v2, v3}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v1

    sget-object v2, Lcom/jme3/scene/VertexBuffer$Type;->Binormal:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v1, v2}, Lcom/jme3/scene/Mesh;->getBuffer(Lcom/jme3/scene/VertexBuffer$Type;)Lcom/jme3/scene/VertexBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/jme3/scene/VertexBuffer;->updateData(Ljava/nio/Buffer;)V

    return-void
.end method

.method public worldCoordinateToLocal(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 3

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0}, Lcom/jme3/math/Vector3f;-><init>()V

    iget v1, p1, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldScale()Lcom/jme3/math/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/jme3/math/Vector3f;->x:F

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/jme3/math/Vector3f;->x:F

    iget v1, p1, Lcom/jme3/math/Vector3f;->y:F

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldScale()Lcom/jme3/math/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/jme3/math/Vector3f;->y:F

    div-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v2

    iget v2, v2, Lcom/jme3/math/Vector3f;->y:F

    sub-float/2addr v1, v2

    iput v1, v0, Lcom/jme3/math/Vector3f;->y:F

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldScale()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/jme3/math/Vector3f;->z:F

    div-float/2addr p1, v1

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget v1, v1, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr p1, v1

    iput p1, v0, Lcom/jme3/math/Vector3f;->z:F

    return-object v0
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/jme3/scene/Geometry;->mesh:Lcom/jme3/scene/Mesh;

    invoke-super {p0, p1}, Lcom/jme3/scene/Geometry;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget v2, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->size:I

    const-string v3, "size"

    const/16 v4, 0x10

    invoke-interface {p1, v2, v3, v4}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v2, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->totalSize:I

    const-string v3, "totalSize"

    invoke-interface {p1, v2, v3, v4}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-short v2, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->quadrant:S

    const-string v3, "quadrant"

    const/4 v4, 0x0

    invoke-interface {p1, v2, v3, v4}, Lcom/jme3/export/OutputCapsule;->write(SLjava/lang/String;S)V

    iget-object v2, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->stepScale:Lcom/jme3/math/Vector3f;

    sget-object v3, Lcom/jme3/math/Vector3f;->UNIT_XYZ:Lcom/jme3/math/Vector3f;

    const-string v4, "stepScale"

    invoke-interface {p1, v2, v4, v3}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v2, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->offset:Lcom/jme3/math/Vector2f;

    const-string v4, "offset"

    invoke-interface {p1, v2, v4, v3}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget v2, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->offsetAmount:F

    const-string v3, "offsetAmount"

    const/4 v4, 0x0

    invoke-interface {p1, v2, v3, v4}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget-object v2, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->lodEntropy:[F

    const-string v3, "lodEntropy"

    invoke-interface {p1, v2, v3, v1}, Lcom/jme3/export/OutputCapsule;->write([FLjava/lang/String;[F)V

    iget-object v2, p0, Lcom/jme3/terrain/geomipmap/TerrainPatch;->geomap:Lcom/jme3/terrain/geomipmap/LODGeomap;

    const-string v3, "geomap"

    invoke-interface {p1, v2, v3, v1}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    invoke-virtual {p0, v0}, Lcom/jme3/scene/Geometry;->setMesh(Lcom/jme3/scene/Mesh;)V

    return-void
.end method
