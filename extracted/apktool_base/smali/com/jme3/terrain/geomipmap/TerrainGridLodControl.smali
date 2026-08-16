.class public Lcom/jme3/terrain/geomipmap/TerrainGridLodControl;
.super Lcom/jme3/terrain/geomipmap/TerrainLodControl;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/jme3/terrain/Terrain;Lcom/jme3/renderer/Camera;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/jme3/terrain/geomipmap/TerrainLodControl;-><init>(Lcom/jme3/terrain/Terrain;Lcom/jme3/renderer/Camera;)V

    return-void
.end method


# virtual methods
.method public updateLOD(Lcom/jme3/util/SafeArrayList;Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;)V
    .locals 7
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

    invoke-virtual {p0}, Lcom/jme3/scene/control/AbstractControl;->getSpatial()Lcom/jme3/scene/Spatial;

    move-result-object v0

    check-cast v0, Lcom/jme3/terrain/geomipmap/TerrainGrid;

    invoke-virtual {p1}, Lcom/jme3/util/SafeArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/jme3/math/Vector3f;->ZERO:Lcom/jme3/math/Vector3f;

    invoke-virtual {v1}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/math/Vector3f;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/jme3/terrain/geomipmap/TerrainGrid;->getCamCell(Lcom/jme3/math/Vector3f;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    iget v3, v0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->cellsLoaded:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    iget-object v3, v0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->gridOffset:[I

    iget v5, v1, Lcom/jme3/math/Vector3f;->x:F

    iget v6, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->size:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    aput v5, v3, v2

    iget-object v3, v0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->gridOffset:[I

    iget v5, v1, Lcom/jme3/math/Vector3f;->z:F

    iget v6, v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;->size:I

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    aput v5, v3, v4

    iput v2, v0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->cellsLoaded:I

    :cond_1
    iget v2, v1, Lcom/jme3/math/Vector3f;->x:F

    iget-object v3, v0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->currentCamCell:Lcom/jme3/math/Vector3f;

    iget v5, v3, Lcom/jme3/math/Vector3f;->x:F

    cmpl-float v2, v2, v5

    if-nez v2, :cond_2

    iget v2, v1, Lcom/jme3/math/Vector3f;->z:F

    iget v3, v3, Lcom/jme3/math/Vector3f;->z:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    iget-boolean v2, v0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->runOnce:Z

    if-nez v2, :cond_3

    :cond_2
    invoke-virtual {v0, v1}, Lcom/jme3/terrain/geomipmap/TerrainGrid;->updateChildren(Lcom/jme3/math/Vector3f;)V

    iget-object v2, v0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->listeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/jme3/terrain/geomipmap/TerrainGridListener;

    invoke-interface {v3, v1}, Lcom/jme3/terrain/geomipmap/TerrainGridListener;->gridMoved(Lcom/jme3/math/Vector3f;)V

    goto :goto_1

    :cond_3
    iput-boolean v4, v0, Lcom/jme3/terrain/geomipmap/TerrainGrid;->runOnce:Z

    invoke-super {p0, p1, p2}, Lcom/jme3/terrain/geomipmap/TerrainLodControl;->updateLOD(Lcom/jme3/util/SafeArrayList;Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;)V

    return-void
.end method
