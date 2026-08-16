.class public Lcom/jme3/terrain/geomipmap/MultiTerrainLodControl$UpdateMultiLOD;
.super Lcom/jme3/terrain/geomipmap/TerrainLodControl$UpdateLOD;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jme3/terrain/geomipmap/MultiTerrainLodControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateMultiLOD"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jme3/terrain/geomipmap/MultiTerrainLodControl;


# direct methods
.method public constructor <init>(Lcom/jme3/terrain/geomipmap/MultiTerrainLodControl;Ljava/util/List;Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;)V
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

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/MultiTerrainLodControl$UpdateMultiLOD;->this$0:Lcom/jme3/terrain/geomipmap/MultiTerrainLodControl;

    invoke-direct {p0, p1, p2, p3}, Lcom/jme3/terrain/geomipmap/TerrainLodControl$UpdateLOD;-><init>(Lcom/jme3/terrain/geomipmap/TerrainLodControl;Ljava/util/List;Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;)V

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
    invoke-virtual {p0}, Lcom/jme3/terrain/geomipmap/MultiTerrainLodControl$UpdateMultiLOD;->call()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/HashMap;
    .locals 5
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
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/jme3/terrain/geomipmap/MultiTerrainLodControl$UpdateMultiLOD;->this$0:Lcom/jme3/terrain/geomipmap/MultiTerrainLodControl;

    invoke-static {v1}, Lcom/jme3/terrain/geomipmap/MultiTerrainLodControl;->access$000(Lcom/jme3/terrain/geomipmap/MultiTerrainLodControl;)Lcom/jme3/util/SafeArrayList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/util/SafeArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    .line 4
    iget-object v3, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl$UpdateLOD;->camLocations:Ljava/util/List;

    iget-object v4, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl$UpdateLOD;->lodCalculator:Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;

    invoke-virtual {v2, v3, v0, v4}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->calculateLod(Ljava/util/List;Ljava/util/HashMap;Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;)Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/jme3/terrain/geomipmap/MultiTerrainLodControl$UpdateMultiLOD;->this$0:Lcom/jme3/terrain/geomipmap/MultiTerrainLodControl;

    invoke-static {v1}, Lcom/jme3/terrain/geomipmap/MultiTerrainLodControl;->access$000(Lcom/jme3/terrain/geomipmap/MultiTerrainLodControl;)Lcom/jme3/util/SafeArrayList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/util/SafeArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    .line 6
    invoke-virtual {v2, v0}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->findNeighboursLod(Ljava/util/HashMap;)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/jme3/terrain/geomipmap/MultiTerrainLodControl$UpdateMultiLOD;->this$0:Lcom/jme3/terrain/geomipmap/MultiTerrainLodControl;

    invoke-static {v1}, Lcom/jme3/terrain/geomipmap/MultiTerrainLodControl;->access$000(Lcom/jme3/terrain/geomipmap/MultiTerrainLodControl;)Lcom/jme3/util/SafeArrayList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/util/SafeArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    .line 8
    invoke-virtual {v2, v0}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->fixEdges(Ljava/util/HashMap;)V

    goto :goto_2

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/jme3/terrain/geomipmap/MultiTerrainLodControl$UpdateMultiLOD;->this$0:Lcom/jme3/terrain/geomipmap/MultiTerrainLodControl;

    invoke-static {v1}, Lcom/jme3/terrain/geomipmap/MultiTerrainLodControl;->access$000(Lcom/jme3/terrain/geomipmap/MultiTerrainLodControl;)Lcom/jme3/util/SafeArrayList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/util/SafeArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    .line 10
    iget-object v3, p0, Lcom/jme3/terrain/geomipmap/TerrainLodControl$UpdateLOD;->lodCalculator:Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;

    invoke-interface {v3}, Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;->usesVariableLod()Z

    move-result v3

    invoke-virtual {v2, v0, v3}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->reIndexPages(Ljava/util/HashMap;Z)V

    goto :goto_3

    .line 11
    :cond_3
    iget-object v1, p0, Lcom/jme3/terrain/geomipmap/MultiTerrainLodControl$UpdateMultiLOD;->this$0:Lcom/jme3/terrain/geomipmap/MultiTerrainLodControl;

    iget-object v1, v1, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->lodCalcRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-object v0
.end method
