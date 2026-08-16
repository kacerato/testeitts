.class public Lcom/jme3/terrain/geomipmap/MultiTerrainLodControl;
.super Lcom/jme3/terrain/geomipmap/TerrainLodControl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/terrain/geomipmap/MultiTerrainLodControl$UpdateMultiLOD;
    }
.end annotation


# instance fields
.field private addedTerrains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/terrain/geomipmap/TerrainQuad;",
            ">;"
        }
    .end annotation
.end field

.field private removedTerrains:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/terrain/geomipmap/TerrainQuad;",
            ">;"
        }
    .end annotation
.end field

.field private terrains:Lcom/jme3/util/SafeArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/SafeArrayList<",
            "Lcom/jme3/terrain/geomipmap/TerrainQuad;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/jme3/terrain/geomipmap/TerrainLodControl;-><init>()V

    .line 2
    new-instance v0, Lcom/jme3/util/SafeArrayList;

    const-class v1, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    invoke-direct {v0, v1}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/MultiTerrainLodControl;->terrains:Lcom/jme3/util/SafeArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/MultiTerrainLodControl;->removedTerrains:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/MultiTerrainLodControl;->addedTerrains:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/renderer/Camera;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/jme3/terrain/geomipmap/MultiTerrainLodControl;-><init>()V

    .line 8
    invoke-virtual {p0, p1}, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->setCamera(Lcom/jme3/renderer/Camera;)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/terrain/Terrain;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/jme3/terrain/geomipmap/MultiTerrainLodControl;-><init>()V

    .line 6
    invoke-virtual {p0, p1}, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->setTerrain(Lcom/jme3/terrain/Terrain;)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/terrain/Terrain;Lcom/jme3/renderer/Camera;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/jme3/terrain/geomipmap/MultiTerrainLodControl;-><init>(Lcom/jme3/terrain/Terrain;)V

    .line 10
    invoke-virtual {p0, p2}, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->setCamera(Lcom/jme3/renderer/Camera;)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/terrain/Terrain;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/terrain/Terrain;",
            "Ljava/util/List<",
            "Lcom/jme3/renderer/Camera;",
            ">;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1}, Lcom/jme3/terrain/geomipmap/MultiTerrainLodControl;-><init>(Lcom/jme3/terrain/Terrain;)V

    .line 12
    invoke-virtual {p0, p2}, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->setCameras(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/jme3/terrain/geomipmap/MultiTerrainLodControl;)Lcom/jme3/util/SafeArrayList;
    .locals 0

    iget-object p0, p0, Lcom/jme3/terrain/geomipmap/MultiTerrainLodControl;->terrains:Lcom/jme3/util/SafeArrayList;

    return-object p0
.end method


# virtual methods
.method public addTerrain(Lcom/jme3/terrain/geomipmap/TerrainQuad;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/MultiTerrainLodControl;->addedTerrains:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public createLodUpdateTask(Ljava/util/List;Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;)Lcom/jme3/terrain/geomipmap/TerrainLodControl$UpdateLOD;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/math/Vector3f;",
            ">;",
            "Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;",
            ")",
            "Lcom/jme3/terrain/geomipmap/TerrainLodControl$UpdateLOD;"
        }
    .end annotation

    new-instance v0, Lcom/jme3/terrain/geomipmap/MultiTerrainLodControl$UpdateMultiLOD;

    invoke-direct {v0, p0, p1, p2}, Lcom/jme3/terrain/geomipmap/MultiTerrainLodControl$UpdateMultiLOD;-><init>(Lcom/jme3/terrain/geomipmap/MultiTerrainLodControl;Ljava/util/List;Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;)V

    return-object v0
.end method

.method public makeLodCalculator()Lcom/jme3/terrain/geomipmap/lodcalc/DistanceLodCalculator;
    .locals 3

    new-instance v0, Lcom/jme3/terrain/geomipmap/lodcalc/DistanceLodCalculator;

    const/16 v1, 0x41

    const v2, 0x402ccccd    # 2.7f

    invoke-direct {v0, v1, v2}, Lcom/jme3/terrain/geomipmap/lodcalc/DistanceLodCalculator;-><init>(IF)V

    return-object v0
.end method

.method public prepareTerrain()V
    .locals 4

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/MultiTerrainLodControl;->addedTerrains:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/MultiTerrainLodControl;->addedTerrains:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    iget-object v2, p0, Lcom/jme3/terrain/geomipmap/MultiTerrainLodControl;->terrains:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v2, v1}, Lcom/jme3/util/SafeArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/jme3/terrain/geomipmap/MultiTerrainLodControl;->terrains:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v2, v1}, Lcom/jme3/util/SafeArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/MultiTerrainLodControl;->addedTerrains:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/MultiTerrainLodControl;->removedTerrains:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/MultiTerrainLodControl;->terrains:Lcom/jme3/util/SafeArrayList;

    iget-object v1, p0, Lcom/jme3/terrain/geomipmap/MultiTerrainLodControl;->removedTerrains:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/jme3/util/SafeArrayList;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/MultiTerrainLodControl;->removedTerrains:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_3
    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/MultiTerrainLodControl;->terrains:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/terrain/geomipmap/TerrainQuad;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->cacheTerrainTransforms()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public removeTerrain(Lcom/jme3/terrain/geomipmap/TerrainQuad;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/MultiTerrainLodControl;->removedTerrains:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
