.class public Lcom/jme3/terrain/geomipmap/TerrainLodControl;
.super Lcom/jme3/scene/control/AbstractControl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/terrain/geomipmap/TerrainLodControl$UpdateLOD;
    }
.end annotation


# instance fields
.field protected camera:Lcom/jme3/renderer/Camera;

.field protected cameraLocations:Lcom/jme3/util/SafeArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/SafeArrayList<",
            "Lcom/jme3/math/Vector3f;",
            ">;"
        }
    .end annotation
.end field

.field protected cameras:Lcom/jme3/util/SafeArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/SafeArrayList<",
            "Lcom/jme3/renderer/Camera;",
            ">;"
        }
    .end annotation
.end field

.field protected forceUpdate:Z

.field protected hasResetLod:Z

.field protected indexer:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;",
            ">;>;"
        }
    .end annotation
.end field

.field protected lastCameraLocations:Lcom/jme3/util/SafeArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/SafeArrayList<",
            "Lcom/jme3/math/Vector3f;",
            ">;"
        }
    .end annotation
.end field

.field protected lodCalcRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected lodCalculator:Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;

.field private lodOffCount:I

.field protected previousCameraLocation:Lcom/jme3/math/Vector3f;

.field protected terrain:Lcom/jme3/terrain/Terrain;

.field protected useRenderCamera:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/jme3/scene/control/AbstractControl;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->hasResetLod:Z

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->forceUpdate:Z

    .line 4
    new-instance v1, Lcom/jme3/math/Vector3f;

    invoke-direct {v1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object v1, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->previousCameraLocation:Lcom/jme3/math/Vector3f;

    .line 5
    new-instance v1, Lcom/jme3/util/SafeArrayList;

    const-class v2, Lcom/jme3/renderer/Camera;

    invoke-direct {v1, v2}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->cameras:Lcom/jme3/util/SafeArrayList;

    .line 6
    new-instance v1, Lcom/jme3/util/SafeArrayList;

    const-class v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v1, v2}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->cameraLocations:Lcom/jme3/util/SafeArrayList;

    .line 7
    new-instance v1, Lcom/jme3/util/SafeArrayList;

    invoke-direct {v1, v2}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->lastCameraLocations:Lcom/jme3/util/SafeArrayList;

    .line 8
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->lodCalcRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    iput v0, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->lodOffCount:I

    .line 10
    invoke-virtual {p0}, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->makeLodCalculator()Lcom/jme3/terrain/geomipmap/lodcalc/DistanceLodCalculator;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->lodCalculator:Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/renderer/Camera;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/jme3/terrain/geomipmap/TerrainLodControl;-><init>()V

    .line 14
    invoke-virtual {p0, p1}, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->setCamera(Lcom/jme3/renderer/Camera;)V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/terrain/Terrain;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/jme3/terrain/geomipmap/TerrainLodControl;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->terrain:Lcom/jme3/terrain/Terrain;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/terrain/Terrain;Lcom/jme3/renderer/Camera;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/jme3/terrain/geomipmap/TerrainLodControl;-><init>(Lcom/jme3/terrain/Terrain;)V

    .line 16
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

    .line 17
    invoke-direct {p0, p1}, Lcom/jme3/terrain/geomipmap/TerrainLodControl;-><init>(Lcom/jme3/terrain/Terrain;)V

    .line 18
    invoke-virtual {p0, p2}, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->setCameras(Ljava/util/List;)V

    return-void
.end method

.method private cloneVectorList(Lcom/jme3/util/SafeArrayList;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/util/SafeArrayList<",
            "Lcom/jme3/math/Vector3f;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/jme3/math/Vector3f;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/jme3/math/Vector3f;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    invoke-virtual {v3}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private updateQuadLODs()V
    .locals 4

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->indexer:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_5

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->indexer:Ljava/util/concurrent/Future;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;

    invoke-virtual {v2}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->updateAll()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_1
    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->indexer:Ljava/util/concurrent/Future;

    goto :goto_3

    :goto_2
    :try_start_1
    const-class v2, Lcom/jme3/terrain/geomipmap/TerrainLodControl;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_3
    return-void

    :goto_4
    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->indexer:Ljava/util/concurrent/Future;

    throw v1

    :cond_2
    :goto_5
    return-void
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/jme3/scene/control/AbstractControl;->cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->lodCalculator:Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->lodCalculator:Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;

    new-instance p1, Lcom/jme3/util/SafeArrayList;

    const-class p2, Lcom/jme3/renderer/Camera;

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->cameras:Lcom/jme3/util/SafeArrayList;

    invoke-direct {p1, p2, v0}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->cameras:Lcom/jme3/util/SafeArrayList;

    new-instance p1, Lcom/jme3/util/SafeArrayList;

    const-class p2, Lcom/jme3/math/Vector3f;

    invoke-direct {p1, p2}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->cameraLocations:Lcom/jme3/util/SafeArrayList;

    new-instance p1, Lcom/jme3/util/SafeArrayList;

    invoke-direct {p1, p2}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->lastCameraLocations:Lcom/jme3/util/SafeArrayList;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->lodCalcRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Lcom/jme3/math/Vector3f;

    invoke-direct {p1}, Lcom/jme3/math/Vector3f;-><init>()V

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->previousCameraLocation:Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public controlRender(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->isUseRenderCamera()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->camera:Lcom/jme3/renderer/Camera;

    invoke-virtual {p2}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v0

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->camera:Lcom/jme3/renderer/Camera;

    iget-object p2, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->previousCameraLocation:Lcom/jme3/math/Vector3f;

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getLocation()Lcom/jme3/math/Vector3f;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    return-void
.end method

.method public controlUpdate(F)V
    .locals 3

    iget-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->lodCalculator:Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/jme3/scene/control/AbstractControl;->enabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->hasResetLod:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->hasResetLod:Z

    invoke-interface {p1}, Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;->turnOffLod()V

    :cond_1
    invoke-virtual {p0}, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->isUseRenderCamera()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->lodCalculator:Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;

    invoke-virtual {p0, p1}, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->updateLOD(Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->cameras:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {p1}, Lcom/jme3/util/SafeArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->cameraLocations:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {p1}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result p1

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->cameras:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    iget-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->cameraLocations:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {p1}, Lcom/jme3/util/SafeArrayList;->clear()V

    move p1, v1

    :goto_0
    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->cameras:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->cameraLocations:Lcom/jme3/util/SafeArrayList;

    new-instance v2, Lcom/jme3/math/Vector3f;

    invoke-direct {v2}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-virtual {v0, v2}, Lcom/jme3/util/SafeArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->cameras:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {p1}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_4

    iget-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->cameraLocations:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {p1, v1}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/math/Vector3f;

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->cameras:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0, v1}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/renderer/Camera;

    invoke-virtual {v0}, Lcom/jme3/renderer/Camera;->getLocation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->cameraLocations:Lcom/jme3/util/SafeArrayList;

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->lodCalculator:Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;

    invoke-virtual {p0, p1, v0}, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->updateLOD(Lcom/jme3/util/SafeArrayList;Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;)V

    :cond_5
    :goto_2
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

    new-instance v0, Lcom/jme3/terrain/geomipmap/TerrainLodControl$UpdateLOD;

    invoke-direct {v0, p0, p1, p2}, Lcom/jme3/terrain/geomipmap/TerrainLodControl$UpdateLOD;-><init>(Lcom/jme3/terrain/geomipmap/TerrainLodControl;Ljava/util/List;Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;)V

    return-object v0
.end method

.method public detachAndCleanUpControl()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->indexer:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->indexer:Ljava/util/concurrent/Future;

    :cond_0
    invoke-virtual {p0}, Lcom/jme3/scene/control/AbstractControl;->getSpatial()Lcom/jme3/scene/Spatial;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jme3/scene/Spatial;->removeControl(Lcom/jme3/scene/control/Control;)Z

    return-void
.end method

.method public forceUpdate()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->forceUpdate:Z

    return-void
.end method

.method public getLodCalculator()Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;
    .locals 1

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->lodCalculator:Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;

    return-object v0
.end method

.method public isUseRenderCamera()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->useRenderCamera:Z

    return v0
.end method

.method public jmeClone()Ljava/lang/Object;
    .locals 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
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
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/scene/control/AbstractControl;->getSpatial()Lcom/jme3/scene/Spatial;

    move-result-object v0

    check-cast v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    invoke-virtual {v0}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->cacheTerrainTransforms()V

    return-void
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/control/AbstractControl;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "terrain"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/terrain/Terrain;

    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->terrain:Lcom/jme3/terrain/Terrain;

    new-instance v0, Lcom/jme3/terrain/geomipmap/lodcalc/DistanceLodCalculator;

    invoke-direct {v0}, Lcom/jme3/terrain/geomipmap/lodcalc/DistanceLodCalculator;-><init>()V

    const-string v1, "lodCalculator"

    invoke-interface {p1, v1, v0}, Lcom/jme3/export/InputCapsule;->readSavable(Ljava/lang/String;Lcom/jme3/export/Savable;)Lcom/jme3/export/Savable;

    move-result-object v0

    check-cast v0, Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;

    iput-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->lodCalculator:Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;

    const-string v0, "useRenderCamera"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->useRenderCamera:Z

    return-void
.end method

.method public setCamera(Lcom/jme3/renderer/Camera;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->cameras:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->clear()V

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->cameras:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0, p1}, Lcom/jme3/util/SafeArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setCameras(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/renderer/Camera;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->cameras:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->clear()V

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->cameras:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0, p1}, Lcom/jme3/util/SafeArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/scene/control/AbstractControl;->enabled:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->hasResetLod:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->hasResetLod:Z

    iget-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->lodCalculator:Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;

    invoke-interface {p1}, Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;->turnOnLod()V

    :goto_0
    return-void
.end method

.method public setLodCalculator(Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->lodCalculator:Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;

    return-void
.end method

.method public setSpatial(Lcom/jme3/scene/Spatial;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/jme3/scene/control/AbstractControl;->setSpatial(Lcom/jme3/scene/Spatial;)V

    instance-of v0, p1, Lcom/jme3/terrain/Terrain;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/jme3/terrain/Terrain;

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->terrain:Lcom/jme3/terrain/Terrain;

    :cond_0
    return-void
.end method

.method public setTerrain(Lcom/jme3/terrain/Terrain;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->terrain:Lcom/jme3/terrain/Terrain;

    return-void
.end method

.method public setUseRenderCamera(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->useRenderCamera:Z

    return-void
.end method

.method public updateLOD(Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/jme3/scene/control/AbstractControl;->getSpatial()Lcom/jme3/scene/Spatial;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->camera:Lcom/jme3/renderer/Camera;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->updateQuadLODs()V

    .line 3
    invoke-virtual {p0, p1}, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->updateLodOffCount(Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->camera:Lcom/jme3/renderer/Camera;

    invoke-virtual {v0}, Lcom/jme3/renderer/Camera;->getLocation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    .line 5
    iget-boolean v1, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->forceUpdate:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->previousCameraLocation:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v0}, Lcom/jme3/math/Vector3f;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;->isLodOff()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->previousCameraLocation:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v0}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->forceUpdate:Z

    .line 8
    iget-object v2, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->lodCalcRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 9
    :cond_3
    invoke-virtual {p0}, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->prepareTerrain()V

    .line 10
    invoke-static {}, Lcom/jme3/terrain/executor/TerrainExecutorService;->getInstance()Lcom/jme3/terrain/executor/TerrainExecutorService;

    move-result-object v1

    .line 11
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->createLodUpdateTask(Ljava/util/List;Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;)Lcom/jme3/terrain/geomipmap/TerrainLodControl$UpdateLOD;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/jme3/terrain/executor/TerrainExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->indexer:Ljava/util/concurrent/Future;

    :cond_4
    :goto_0
    return-void
.end method

.method public updateLOD(Lcom/jme3/util/SafeArrayList;Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/util/SafeArrayList<",
            "Lcom/jme3/math/Vector3f;",
            ">;",
            "Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;",
            ")V"
        }
    .end annotation

    .line 12
    invoke-virtual {p0}, Lcom/jme3/scene/control/AbstractControl;->getSpatial()Lcom/jme3/scene/Spatial;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/jme3/util/SafeArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->updateQuadLODs()V

    .line 14
    invoke-virtual {p0, p2}, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->updateLodOffCount(Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 15
    :cond_1
    iget-boolean v0, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->forceUpdate:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->lastCameraLocations:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {p1, v0}, Lcom/jme3/util/SafeArrayList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;->isLodOff()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 16
    :cond_2
    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->lastCameraLocations:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    .line 17
    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->lastCameraLocations:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->clear()V

    move v0, v2

    .line 18
    :goto_0
    invoke-virtual {p1}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 19
    iget-object v1, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->lastCameraLocations:Lcom/jme3/util/SafeArrayList;

    new-instance v3, Lcom/jme3/math/Vector3f;

    invoke-direct {v3}, Lcom/jme3/math/Vector3f;-><init>()V

    invoke-virtual {v1, v3}, Lcom/jme3/util/SafeArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    .line 20
    :goto_1
    invoke-virtual {p1}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 21
    iget-object v1, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->lastCameraLocations:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1, v0}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Vector3f;

    invoke-virtual {p1, v0}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, v3}, Lcom/jme3/math/Vector3f;->set(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 22
    :cond_4
    iput-boolean v2, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->forceUpdate:Z

    .line 23
    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->lodCalcRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_5

    return-void

    .line 24
    :cond_5
    invoke-virtual {p0}, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->prepareTerrain()V

    .line 25
    invoke-static {}, Lcom/jme3/terrain/executor/TerrainExecutorService;->getInstance()Lcom/jme3/terrain/executor/TerrainExecutorService;

    move-result-object v0

    .line 26
    invoke-direct {p0, p1}, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->cloneVectorList(Lcom/jme3/util/SafeArrayList;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->createLodUpdateTask(Ljava/util/List;Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;)Lcom/jme3/terrain/geomipmap/TerrainLodControl$UpdateLOD;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/jme3/terrain/executor/TerrainExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->indexer:Ljava/util/concurrent/Future;

    :cond_6
    :goto_2
    return-void
.end method

.method public updateLodOffCount(Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;)Z
    .locals 2

    invoke-interface {p1}, Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;->isLodOff()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->lodOffCount:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    return v1

    :cond_0
    add-int/2addr p1, v1

    iput p1, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->lodOffCount:I

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->lodOffCount:I

    :goto_0
    return v0
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/scene/control/AbstractControl;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->terrain:Lcom/jme3/terrain/Terrain;

    check-cast v0, Lcom/jme3/scene/Node;

    const-string v1, "terrain"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->lodCalculator:Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;

    const-string v1, "lodCalculator"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Lcom/jme3/export/Savable;Ljava/lang/String;Lcom/jme3/export/Savable;)V

    iget-boolean v0, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->useRenderCamera:Z

    const-string v1, "useRenderCamera"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ZLjava/lang/String;Z)V

    return-void
.end method
