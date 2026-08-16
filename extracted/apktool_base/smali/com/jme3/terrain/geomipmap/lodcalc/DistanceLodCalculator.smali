.class public Lcom/jme3/terrain/geomipmap/lodcalc/DistanceLodCalculator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;


# instance fields
.field private lodMultiplier:F

.field private size:I

.field private turnOffLod:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40000000    # 2.0f

    .line 2
    iput v0, p0, Lcom/jme3/terrain/geomipmap/lodcalc/DistanceLodCalculator;->lodMultiplier:F

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/jme3/terrain/geomipmap/lodcalc/DistanceLodCalculator;->turnOffLod:Z

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/jme3/terrain/geomipmap/lodcalc/DistanceLodCalculator;->turnOffLod:Z

    .line 6
    iput p1, p0, Lcom/jme3/terrain/geomipmap/lodcalc/DistanceLodCalculator;->size:I

    .line 7
    iput p2, p0, Lcom/jme3/terrain/geomipmap/lodcalc/DistanceLodCalculator;->lodMultiplier:F

    return-void
.end method


# virtual methods
.method public calculateLod(Lcom/jme3/terrain/geomipmap/TerrainPatch;Ljava/util/List;Ljava/util/HashMap;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/terrain/geomipmap/TerrainPatch;",
            "Ljava/util/List<",
            "Lcom/jme3/math/Vector3f;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_7

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/jme3/terrain/geomipmap/lodcalc/DistanceLodCalculator;->getCenterLocation(Lcom/jme3/terrain/geomipmap/TerrainPatch;)Lcom/jme3/math/Vector3f;

    move-result-object v1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Vector3f;

    invoke-virtual {v1, p2}, Lcom/jme3/math/Vector3f;->distance(Lcom/jme3/math/Vector3f;)F

    move-result p2

    iget-boolean v1, p0, Lcom/jme3/terrain/geomipmap/lodcalc/DistanceLodCalculator;->turnOffLod:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getLod()I

    move-result p2

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;

    if-nez v1, :cond_1

    new-instance v1, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;

    invoke-direct {v1, p1}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;-><init>(Lcom/jme3/terrain/geomipmap/TerrainPatch;)V

    invoke-virtual {v1}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v1, v0}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->setNewLod(I)V

    invoke-virtual {v1, p2}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->setPreviousLod(I)V

    return v2

    :cond_2
    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getMaxLod()I

    move-result v3

    if-gt v1, v3, :cond_7

    invoke-virtual {p0}, Lcom/jme3/terrain/geomipmap/lodcalc/DistanceLodCalculator;->getLodDistanceThreshold()F

    move-result v3

    add-int/lit8 v4, v1, 0x1

    int-to-float v5, v4

    mul-float/2addr v3, v5

    invoke-virtual {p1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getWorldScaleCached()Lcom/jme3/math/Vector3f;

    move-result-object v5

    iget v5, v5, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v3, v5

    cmpg-float v3, p2, v3

    if-ltz v3, :cond_4

    invoke-virtual {p1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getMaxLod()I

    move-result v3

    if-ne v1, v3, :cond_3

    goto :goto_1

    :cond_3
    move v1, v4

    goto :goto_0

    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getLod()I

    move-result p2

    if-eq v1, p2, :cond_5

    move v0, v2

    :cond_5
    invoke-virtual {p1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getLod()I

    move-result p2

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;

    if-nez v2, :cond_6

    new-instance v2, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;

    invoke-direct {v2, p1}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;-><init>(Lcom/jme3/terrain/geomipmap/TerrainPatch;)V

    invoke-virtual {v2}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-virtual {v2, v1}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->setNewLod(I)V

    invoke-virtual {v2, p2}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->setPreviousLod(I)V

    :cond_7
    :goto_2
    return v0
.end method

.method public clone()Lcom/jme3/terrain/geomipmap/lodcalc/DistanceLodCalculator;
    .locals 3

    .line 3
    new-instance v0, Lcom/jme3/terrain/geomipmap/lodcalc/DistanceLodCalculator;

    iget v1, p0, Lcom/jme3/terrain/geomipmap/lodcalc/DistanceLodCalculator;->size:I

    iget v2, p0, Lcom/jme3/terrain/geomipmap/lodcalc/DistanceLodCalculator;->lodMultiplier:F

    invoke-direct {v0, v1, v2}, Lcom/jme3/terrain/geomipmap/lodcalc/DistanceLodCalculator;-><init>(IF)V

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/terrain/geomipmap/lodcalc/DistanceLodCalculator;->clone()Lcom/jme3/terrain/geomipmap/lodcalc/DistanceLodCalculator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/jme3/terrain/geomipmap/lodcalc/DistanceLodCalculator;->clone()Lcom/jme3/terrain/geomipmap/lodcalc/DistanceLodCalculator;

    move-result-object v0

    return-object v0
.end method

.method public getCenterLocation(Lcom/jme3/terrain/geomipmap/TerrainPatch;)Lcom/jme3/math/Vector3f;
    .locals 4

    invoke-virtual {p1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getWorldTranslationCached()Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget v1, v0, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {p1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getSize()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getWorldScaleCached()Lcom/jme3/math/Vector3f;

    move-result-object v3

    iget v3, v3, Lcom/jme3/math/Vector3f;->x:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/jme3/math/Vector3f;->x:F

    iget v1, v0, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getSize()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getWorldScaleCached()Lcom/jme3/math/Vector3f;

    move-result-object p1

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    mul-float/2addr v2, p1

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Lcom/jme3/math/Vector3f;->z:F

    return-object v0
.end method

.method public getLodDistanceThreshold()F
    .locals 2

    iget v0, p0, Lcom/jme3/terrain/geomipmap/lodcalc/DistanceLodCalculator;->size:I

    int-to-float v0, v0

    iget v1, p0, Lcom/jme3/terrain/geomipmap/lodcalc/DistanceLodCalculator;->lodMultiplier:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getLodMultiplier()F
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/geomipmap/lodcalc/DistanceLodCalculator;->lodMultiplier:F

    return v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/geomipmap/lodcalc/DistanceLodCalculator;->size:I

    return v0
.end method

.method public isLodOff()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/terrain/geomipmap/lodcalc/DistanceLodCalculator;->turnOffLod:Z

    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object p1

    const-string v0, "patchSize"

    const/16 v1, 0x20

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/terrain/geomipmap/lodcalc/DistanceLodCalculator;->size:I

    const-string v0, "lodMultiplier"

    const/high16 v1, 0x42000000    # 32.0f

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readFloat(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/jme3/terrain/geomipmap/lodcalc/DistanceLodCalculator;->lodMultiplier:F

    return-void
.end method

.method public setLodMultiplier(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/geomipmap/lodcalc/DistanceLodCalculator;->lodMultiplier:F

    return-void
.end method

.method public setSize(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/geomipmap/lodcalc/DistanceLodCalculator;->size:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DistanceLodCalculator "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/terrain/geomipmap/lodcalc/DistanceLodCalculator;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/terrain/geomipmap/lodcalc/DistanceLodCalculator;->lodMultiplier:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public turnOffLod()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/terrain/geomipmap/lodcalc/DistanceLodCalculator;->turnOffLod:Z

    return-void
.end method

.method public turnOnLod()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/terrain/geomipmap/lodcalc/DistanceLodCalculator;->turnOffLod:Z

    return-void
.end method

.method public usesVariableLod()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    move-result-object p1

    iget v0, p0, Lcom/jme3/terrain/geomipmap/lodcalc/DistanceLodCalculator;->size:I

    const-string v1, "patchSize"

    const/16 v2, 0x20

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/jme3/terrain/geomipmap/lodcalc/DistanceLodCalculator;->lodMultiplier:F

    const-string v1, "lodMultiplier"

    const/high16 v2, 0x42000000    # 32.0f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    return-void
.end method
