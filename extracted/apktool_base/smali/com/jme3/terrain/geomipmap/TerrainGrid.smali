.class public Lcom/jme3/terrain/geomipmap/TerrainGrid;
.super Lcom/jme3/terrain/geomipmap/TerrainQuad;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache;
    }
.end annotation


# static fields
.field protected static final log:Ljava/util/logging/Logger;


# instance fields
.field protected cache:Lcom/jme3/terrain/geomipmap/LRUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/terrain/geomipmap/LRUCache<",
            "Lcom/jme3/math/Vector3f;",
            "Lcom/jme3/terrain/geomipmap/TerrainQuad;",
            ">;"
        }
    .end annotation
.end field

.field protected cacheExecutor:Ljava/util/concurrent/ExecutorService;

.field protected cellsLoaded:I

.field protected currentCamCell:Lcom/jme3/math/Vector3f;

.field protected gridOffset:[I

.field private gridTileLoader:Lcom/jme3/terrain/geomipmap/TerrainGridTileLoader;

.field protected listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/jme3/terrain/geomipmap/TerrainGridListener;",
            ">;"
        }
    .end annotation
.end field

.field protected material:Lcom/jme3/material/Material;

.field protected quadIndex:[Lcom/jme3/math/Vector3f;

.field protected quadSize:I

.field protected quarterSize:I

.field protected runOnce:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/terrain/geomipmap/TerrainGrid;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Lcom/jme3/terrain/geomipmap/TerrainQuad;-><init>()V

    .line 23
    sget-object v0, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->currentCamCell:Lcom/jme3/math/Vector3f;

    .line 24
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->listeners:Ljava/util/Set;

    .line 25
    new-instance v0, Lcom/jme3/terrain/geomipmap/LRUCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/jme3/terrain/geomipmap/LRUCache;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->cache:Lcom/jme3/terrain/geomipmap/LRUCache;

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->cellsLoaded:I

    .line 27
    iput-boolean v0, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->runOnce:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILcom/jme3/math/Vector3f;Lcom/jme3/terrain/geomipmap/TerrainGridTileLoader;)V
    .locals 8

    .line 20
    new-instance v6, Lcom/jme3/math/Vector2f;

    invoke-direct {v6}, Lcom/jme3/math/Vector2f;-><init>()V

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/jme3/terrain/geomipmap/TerrainGrid;-><init>(Ljava/lang/String;IILcom/jme3/math/Vector3f;Lcom/jme3/terrain/geomipmap/TerrainGridTileLoader;Lcom/jme3/math/Vector2f;F)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILcom/jme3/math/Vector3f;Lcom/jme3/terrain/geomipmap/TerrainGridTileLoader;Lcom/jme3/math/Vector2f;F)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/jme3/terrain/geomipmap/TerrainQuad;-><init>()V

    .line 2
    sget-object v0, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->currentCamCell:Lcom/jme3/math/Vector3f;

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->listeners:Ljava/util/Set;

    .line 4
    new-instance v0, Lcom/jme3/terrain/geomipmap/LRUCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/jme3/terrain/geomipmap/LRUCache;-><init>(I)V

    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->cache:Lcom/jme3/terrain/geomipmap/LRUCache;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->cellsLoaded:I

    .line 6
    iput-boolean v0, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->runOnce:Z

    .line 7
    iput-object p1, p0, Lcom/jme3/scene/Spatial;->name:Ljava/lang/String;

    .line 8
    iput p2, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->patchSize:I

    .line 9
    iput p3, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->size:I

    .line 10
    iput-object p4, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->stepScale:Lcom/jme3/math/Vector3f;

    .line 11
    iput-object p6, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->offset:Lcom/jme3/math/Vector2f;

    .line 12
    iput p7, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->offsetAmount:F

    .line 13
    invoke-direct {p0}, Lcom/jme3/terrain/geomipmap/TerrainGrid;->initData()V

    .line 14
    iput-object p5, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->gridTileLoader:Lcom/jme3/terrain/geomipmap/TerrainGridTileLoader;

    .line 15
    iget p1, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->patchSize:I

    invoke-interface {p5, p1}, Lcom/jme3/terrain/geomipmap/TerrainGridTileLoader;->setPatchSize(I)V

    .line 16
    iget p1, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->quadSize:I

    invoke-interface {p5, p1}, Lcom/jme3/terrain/geomipmap/TerrainGridTileLoader;->setQuadSize(I)V

    .line 17
    new-instance p1, Lcom/jme3/scene/control/UpdateControl;

    invoke-direct {p1}, Lcom/jme3/scene/control/UpdateControl;-><init>()V

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Spatial;->addControl(Lcom/jme3/scene/control/Control;)V

    .line 18
    new-instance p1, Lcom/jme3/bounding/BoundingBox;

    new-instance p2, Lcom/jme3/math/Vector3f;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p3, p3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iget p3, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->size:I

    mul-int/lit8 p4, p3, 0x2

    int-to-float p4, p4

    mul-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    const p5, 0x7f7fffff    # Float.MAX_VALUE

    invoke-direct {p1, p2, p4, p5, p3}, Lcom/jme3/bounding/BoundingBox;-><init>(Lcom/jme3/math/Vector3f;FFF)V

    invoke-virtual {p0, p1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->fixNormalEdges(Lcom/jme3/bounding/BoundingBox;)V

    .line 19
    new-instance p1, Lcom/jme3/terrain/geomipmap/NormalRecalcControl;

    invoke-direct {p1, p0}, Lcom/jme3/terrain/geomipmap/NormalRecalcControl;-><init>(Lcom/jme3/terrain/geomipmap/TerrainQuad;)V

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Spatial;->addControl(Lcom/jme3/scene/control/Control;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILcom/jme3/terrain/geomipmap/TerrainGridTileLoader;)V
    .locals 6

    .line 21
    sget-object v4, Lcom/jme3/math/Vector3f;->UNIT_XYZ:Lcom/jme3/math/Vector3f;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/jme3/terrain/geomipmap/TerrainGrid;-><init>(Ljava/lang/String;IILcom/jme3/math/Vector3f;Lcom/jme3/terrain/geomipmap/TerrainGridTileLoader;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/jme3/terrain/geomipmap/TerrainGrid;)Lcom/jme3/terrain/geomipmap/TerrainGridTileLoader;
    .locals 0

    iget-object p0, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->gridTileLoader:Lcom/jme3/terrain/geomipmap/TerrainGridTileLoader;

    return-object p0
.end method

.method private initData()V
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->size:I

    shr-int/lit8 v2, v1, 0x2

    iput v2, v0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->quarterSize:I

    add-int/lit8 v2, v1, 0x1

    shr-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->quadSize:I

    iput v1, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->totalSize:I

    const/4 v1, 0x0

    filled-new-array {v1, v1}, [I

    move-result-object v1

    iput-object v1, v0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->gridOffset:[I

    new-instance v2, Lcom/jme3/math/Vector3f;

    const/high16 v1, -0x40800000    # -1.0f

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v4, Lcom/jme3/math/Vector3f;

    invoke-direct {v4, v3, v3, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v5, Lcom/jme3/math/Vector3f;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v3, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v7, Lcom/jme3/math/Vector3f;

    const/high16 v8, 0x40000000    # 2.0f

    invoke-direct {v7, v8, v3, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v9, Lcom/jme3/math/Vector3f;

    invoke-direct {v9, v1, v3, v3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v10, Lcom/jme3/math/Vector3f;

    invoke-direct {v10, v3, v3, v3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v11, Lcom/jme3/math/Vector3f;

    invoke-direct {v11, v6, v3, v3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v12, Lcom/jme3/math/Vector3f;

    invoke-direct {v12, v8, v3, v3}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v13, Lcom/jme3/math/Vector3f;

    invoke-direct {v13, v1, v3, v6}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v14, Lcom/jme3/math/Vector3f;

    invoke-direct {v14, v3, v3, v6}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v15, Lcom/jme3/math/Vector3f;

    invoke-direct {v15, v6, v3, v6}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1, v8, v3, v6}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v6, Lcom/jme3/math/Vector3f;

    const/high16 v0, -0x40800000    # -1.0f

    invoke-direct {v6, v0, v3, v8}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v0, Lcom/jme3/math/Vector3f;

    invoke-direct {v0, v3, v3, v8}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    move-object/from16 v16, v0

    new-instance v0, Lcom/jme3/math/Vector3f;

    move-object/from16 v18, v6

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v0, v6, v3, v8}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    new-instance v6, Lcom/jme3/math/Vector3f;

    invoke-direct {v6, v8, v3, v8}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    move-object v3, v4

    move-object v4, v5

    move-object v5, v7

    move-object/from16 v17, v18

    move-object/from16 v18, v6

    move-object v6, v9

    move-object v7, v10

    move-object v8, v11

    move-object v9, v12

    move-object v10, v13

    move-object v11, v14

    move-object v12, v15

    move-object v13, v1

    move-object/from16 v14, v17

    move-object/from16 v15, v16

    move-object/from16 v16, v0

    move-object/from16 v17, v18

    filled-new-array/range {v2 .. v17}, [Lcom/jme3/math/Vector3f;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/jme3/terrain/geomipmap/TerrainGrid;->quadIndex:[Lcom/jme3/math/Vector3f;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/jme3/terrain/geomipmap/TerrainGridListener;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public adjustHeight(Ljava/util/List;Ljava/util/List;)V
    .locals 5
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

    invoke-virtual {p0}, Lcom/jme3/terrain/geomipmap/TerrainGrid;->getCurrentCell()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getLocalScale()Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->mult(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget v1, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->quadSize:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/math/Vector2f;

    iget v3, v2, Lcom/jme3/math/Vector2f;->x:F

    iget v4, v0, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/jme3/math/Vector2f;->x:F

    iget v3, v2, Lcom/jme3/math/Vector2f;->y:F

    iget v4, v0, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v3, v4

    iput v3, v2, Lcom/jme3/math/Vector2f;->y:F

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->adjustHeight(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public attachQuadAt(Lcom/jme3/terrain/geomipmap/TerrainQuad;ILcom/jme3/math/Vector3f;Z)V
    .locals 3

    int-to-short p2, p2

    invoke-virtual {p1, p2}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->setQuadrant(S)V

    if-nez p4, :cond_0

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Node;->attachChild(Lcom/jme3/scene/Spatial;)I

    :cond_0
    iget p2, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->quadSize:I

    add-int/lit8 p2, p2, -0x1

    int-to-float p2, p2

    invoke-virtual {p3, p2}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object p2

    iget v0, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->quarterSize:I

    int-to-float v1, v0

    const/4 v2, 0x0

    int-to-float v0, v0

    invoke-virtual {p2, v1, v2, v0}, Lcom/jme3/math/Vector3f;->subtract(FFF)Lcom/jme3/math/Vector3f;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/jme3/scene/Spatial;->setLocalTranslation(Lcom/jme3/math/Vector3f;)V

    if-nez p4, :cond_1

    iget-object p2, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->listeners:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/jme3/terrain/geomipmap/TerrainGridListener;

    invoke-interface {p4, p3, p1}, Lcom/jme3/terrain/geomipmap/TerrainGridListener;->tileAttached(Lcom/jme3/math/Vector3f;Lcom/jme3/terrain/geomipmap/TerrainQuad;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/jme3/scene/Node;->updateModelBound()V

    return-void
.end method

.method public createExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 10

    new-instance v8, Lcom/jme3/terrain/geomipmap/TerrainGrid$1;

    invoke-direct {v8, p0}, Lcom/jme3/terrain/geomipmap/TerrainGrid$1;-><init>(Lcom/jme3/terrain/geomipmap/TerrainGrid;)V

    new-instance v9, Lcom/jme3/terrain/geomipmap/TerrainGrid$2;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v0, v9

    move-object v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/jme3/terrain/geomipmap/TerrainGrid$2;-><init>(Lcom/jme3/terrain/geomipmap/TerrainGrid;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object v9
.end method

.method public getCamCell(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/jme3/terrain/geomipmap/TerrainGrid;->getTileCell(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    new-instance v0, Lcom/jme3/math/Vector3f;

    const/high16 v1, -0x41000000    # -0.5f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->subtract(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    new-instance v0, Lcom/jme3/math/Vector3f;

    iget v1, p1, Lcom/jme3/math/Vector3f;->x:F

    invoke-static {v1}, Lcom/jme3/math/FastMath;->floor(F)F

    move-result v1

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    invoke-static {p1}, Lcom/jme3/math/FastMath;->floor(F)F

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    return-object v0
.end method

.method public getCurrentCell()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->currentCamCell:Lcom/jme3/math/Vector3f;

    return-object v0
.end method

.method public getGridTileLoader()Lcom/jme3/terrain/geomipmap/TerrainGridTileLoader;
    .locals 1

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->gridTileLoader:Lcom/jme3/terrain/geomipmap/TerrainGridTileLoader;

    return-object v0
.end method

.method public getHeightmapHeight(II)F
    .locals 2

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->gridOffset:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    sub-int/2addr p1, v1

    const/4 v1, 0x1

    aget v0, v0, v1

    sub-int/2addr p2, v0

    invoke-super {p0, p1, p2}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getHeightmapHeight(II)F

    move-result p1

    return p1
.end method

.method public getMaterial(Lcom/jme3/math/Vector3f;)Lcom/jme3/material/Material;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/jme3/terrain/geomipmap/TerrainGrid;->getTileCell(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget-object v2, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->cache:Lcom/jme3/terrain/geomipmap/LRUCache;

    invoke-virtual {v2, v1}, Lcom/jme3/terrain/geomipmap/LRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/terrain/Terrain;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-interface {v1, p1}, Lcom/jme3/terrain/Terrain;->getMaterial(Lcom/jme3/math/Vector3f;)Lcom/jme3/material/Material;

    move-result-object p1

    return-object p1
.end method

.method public getNumMajorSubdivisions()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getQuadrant(I)I
    .locals 1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/16 v0, 0x9

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    const/4 p1, 0x3

    return p1

    :cond_2
    const/16 v0, 0xa

    if-ne p1, v0, :cond_3

    const/4 p1, 0x4

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public getTerrainAt(Lcom/jme3/math/Vector3f;)Lcom/jme3/terrain/Terrain;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->setY(F)Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/jme3/terrain/geomipmap/TerrainGrid;->getTileCell(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    new-instance v0, Lcom/jme3/math/Vector3f;

    iget v1, p1, Lcom/jme3/math/Vector3f;->x:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    iget v2, p1, Lcom/jme3/math/Vector3f;->y:F

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    invoke-direct {v0, v1, v2, p1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    iget-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->cache:Lcom/jme3/terrain/geomipmap/LRUCache;

    invoke-virtual {p1, v0}, Lcom/jme3/terrain/geomipmap/LRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/terrain/Terrain;

    return-object p1
.end method

.method public getTerrainAtCell(Lcom/jme3/math/Vector3f;)Lcom/jme3/terrain/Terrain;
    .locals 1

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->cache:Lcom/jme3/terrain/geomipmap/LRUCache;

    invoke-virtual {v0, p1}, Lcom/jme3/terrain/geomipmap/LRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/terrain/Terrain;

    return-object p1
.end method

.method public getTileCell(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 2

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getWorldScale()Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget v1, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->quadSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/jme3/math/Vector3f;->mult(F)Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->divide(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1
.end method

.method public isCenter(I)Z
    .locals 1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "name"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/scene/Spatial;->name:Ljava/lang/String;

    const-string v0, "size"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->size:I

    const-string v0, "patchSize"

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->patchSize:I

    const-string v0, "stepScale"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector3f;

    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->stepScale:Lcom/jme3/math/Vector3f;

    const-string v0, "offset"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/math/Vector2f;

    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->offset:Lcom/jme3/math/Vector2f;

    const-string v0, "offsetAmount"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->offsetAmount:F

    const-string v0, "terrainQuadGrid"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/terrain/geomipmap/TerrainGridTileLoader;

    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->gridTileLoader:Lcom/jme3/terrain/geomipmap/TerrainGridTileLoader;

    const-string v0, "material"

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object p1

    check-cast p1, Lcom/jme3/material/Material;

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->material:Lcom/jme3/material/Material;

    invoke-direct {p0}, Lcom/jme3/terrain/geomipmap/TerrainGrid;->initData()V

    iget-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->gridTileLoader:Lcom/jme3/terrain/geomipmap/TerrainGridTileLoader;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->patchSize:I

    invoke-interface {p1, v0}, Lcom/jme3/terrain/geomipmap/TerrainGridTileLoader;->setPatchSize(I)V

    iget-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->gridTileLoader:Lcom/jme3/terrain/geomipmap/TerrainGridTileLoader;

    iget v0, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->quadSize:I

    invoke-interface {p1, v0}, Lcom/jme3/terrain/geomipmap/TerrainGridTileLoader;->setQuadSize(I)V

    :cond_0
    return-void
.end method

.method public removeListener(Lcom/jme3/terrain/geomipmap/TerrainGridListener;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->listeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeQuad(Lcom/jme3/terrain/geomipmap/TerrainQuad;)V
    .locals 3

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getQuadrant()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getQuadrant()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getParent()Lcom/jme3/scene/Node;

    move-result-object v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->listeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/terrain/geomipmap/TerrainGridListener;

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/jme3/terrain/geomipmap/TerrainGrid;->getTileCell(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/jme3/terrain/geomipmap/TerrainGridListener;->tileDetached(Lcom/jme3/math/Vector3f;Lcom/jme3/terrain/geomipmap/TerrainQuad;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->setQuadrant(S)V

    invoke-virtual {p0, p1}, Lcom/jme3/scene/Node;->detachChild(Lcom/jme3/scene/Spatial;)I

    iget p1, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->cellsLoaded:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->cellsLoaded:I

    :cond_3
    return-void
.end method

.method public setMaterial(Lcom/jme3/material/Material;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->material:Lcom/jme3/material/Material;

    invoke-super {p0, p1}, Lcom/jme3/scene/Node;->setMaterial(Lcom/jme3/material/Material;)V

    return-void
.end method

.method public setQuadSize(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->quadSize:I

    return-void
.end method

.method public toCellSpace(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/jme3/terrain/geomipmap/TerrainGrid;->getTileCell(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    new-instance v0, Lcom/jme3/math/Vector3f;

    iget v1, p1, Lcom/jme3/math/Vector3f;->x:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    iget v2, p1, Lcom/jme3/math/Vector3f;->y:F

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    invoke-direct {v0, v1, v2, p1}, Lcom/jme3/math/Vector3f;-><init>(FFF)V

    return-object v0
.end method

.method public toWorldSpace(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/scene/Spatial;->getLocalScale()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->mult(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object p1

    iget v0, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->quadSize:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->multLocal(F)Lcom/jme3/math/Vector3f;

    move-result-object p1

    return-object p1
.end method

.method public updateChildren(Lcom/jme3/math/Vector3f;)V
    .locals 8

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->currentCamCell:Lcom/jme3/math/Vector3f;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v2, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v3, v0, Lcom/jme3/math/Vector3f;->x:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p1, Lcom/jme3/math/Vector3f;->z:F

    iget v0, v0, Lcom/jme3/math/Vector3f;->z:F

    sub-float/2addr v3, v0

    float-to-int v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    move v2, v0

    :goto_0
    const/4 v3, 0x3

    const/4 v4, -0x1

    const/4 v5, 0x4

    const/4 v6, 0x1

    if-ne v2, v4, :cond_1

    move v2, v1

    move v7, v3

    goto :goto_1

    :cond_1
    if-ne v2, v6, :cond_2

    move v7, v5

    move v2, v6

    goto :goto_1

    :cond_2
    move v2, v1

    move v7, v5

    :goto_1
    if-ne v0, v4, :cond_3

    goto :goto_2

    :cond_3
    move v3, v5

    if-ne v0, v6, :cond_4

    move v1, v6

    :cond_4
    :goto_2
    if-ge v1, v3, :cond_6

    move v0, v2

    :goto_3
    if-ge v0, v7, :cond_5

    iget-object v4, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->cache:Lcom/jme3/terrain/geomipmap/LRUCache;

    iget-object v5, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->quadIndex:[Lcom/jme3/math/Vector3f;

    mul-int/lit8 v6, v1, 0x4

    add-int/2addr v6, v0

    aget-object v5, v5, v6

    invoke-virtual {p1, v5}, Lcom/jme3/math/Vector3f;->add(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/jme3/terrain/geomipmap/LRUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->cacheExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/jme3/terrain/geomipmap/TerrainGrid;->createExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->cacheExecutor:Ljava/util/concurrent/ExecutorService;

    :cond_7
    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->cacheExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache;

    invoke-direct {v1, p0, p1}, Lcom/jme3/terrain/geomipmap/TerrainGrid$UpdateQuadCache;-><init>(Lcom/jme3/terrain/geomipmap/TerrainGrid;Lcom/jme3/math/Vector3f;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->currentCamCell:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->gridTileLoader:Lcom/jme3/terrain/geomipmap/TerrainGridTileLoader;

    const-string v1, "terrainQuadGrid"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->size:I

    const-string v1, "size"

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->patchSize:I

    const-string v1, "patchSize"

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->stepScale:Lcom/jme3/math/Vector3f;

    const-string v1, "stepScale"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->offset:Lcom/jme3/math/Vector2f;

    const-string v1, "offset"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget v0, p0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->offsetAmount:F

    const-string v1, "offsetAmount"

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v3}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->material:Lcom/jme3/material/Material;

    const-string v1, "material"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    return-void
.end method
