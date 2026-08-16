.class public Lcom/jme3/terrain/geomipmap/TerrainLodControl$UpdateLOD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/terrain/geomipmap/TerrainLodControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateLOD"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;",
        ">;>;"
    }
.end annotation


# instance fields
.field protected final camLocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/math/Vector3f;",
            ">;"
        }
    .end annotation
.end field

.field protected final lodCalculator:Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;

.field final synthetic this$0:Lcom/jme3/terrain/geomipmap/TerrainLodControl;


# direct methods
.method public constructor <init>(Lcom/jme3/terrain/geomipmap/TerrainLodControl;Ljava/util/List;Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x10,
            0x10
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jme3/math/Vector3f;",
            ">;",
            "Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl$UpdateLOD;->this$0:Lcom/jme3/terrain/geomipmap/TerrainLodControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl$UpdateLOD;->camLocations:Ljava/util/List;

    iput-object p3, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl$UpdateLOD;->lodCalculator:Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/jme3/terrain/geomipmap/TerrainLodControl$UpdateLOD;->call()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl$UpdateLOD;->this$0:Lcom/jme3/terrain/geomipmap/TerrainLodControl;

    invoke-virtual {v0}, Lcom/jme3/scene/control/AbstractControl;->getSpatial()Lcom/jme3/scene/Spatial;

    move-result-object v0

    check-cast v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    .line 3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 4
    iget-object v2, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl$UpdateLOD;->camLocations:Ljava/util/List;

    iget-object v3, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl$UpdateLOD;->lodCalculator:Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;

    invoke-virtual {v0, v2, v1, v3}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->calculateLod(Ljava/util/List;Ljava/util/HashMap;Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 5
    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl$UpdateLOD;->this$0:Lcom/jme3/terrain/geomipmap/TerrainLodControl;

    iget-object v0, v0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->lodCalcRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    return-object v0

    .line 6
    :cond_0
    invoke-virtual {v0, v1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->findNeighboursLod(Ljava/util/HashMap;)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->fixEdges(Ljava/util/HashMap;)V

    .line 8
    iget-object v2, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl$UpdateLOD;->lodCalculator:Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;

    invoke-interface {v2}, Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;->usesVariableLod()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->reIndexPages(Ljava/util/HashMap;Z)V

    .line 9
    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl$UpdateLOD;->this$0:Lcom/jme3/terrain/geomipmap/TerrainLodControl;

    iget-object v0, v0, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->lodCalcRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-object v1
.end method
