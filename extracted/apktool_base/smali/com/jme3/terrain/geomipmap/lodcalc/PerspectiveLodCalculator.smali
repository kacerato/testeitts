.class public Lcom/jme3/terrain/geomipmap/lodcalc/PerspectiveLodCalculator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;


# instance fields
.field private cam:Lcom/jme3/renderer/Camera;

.field private pixelError:F

.field private turnOffLod:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/jme3/terrain/geomipmap/lodcalc/PerspectiveLodCalculator;->turnOffLod:Z

    return-void
.end method

.method public constructor <init>(Lcom/jme3/renderer/Camera;F)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/jme3/terrain/geomipmap/lodcalc/PerspectiveLodCalculator;->turnOffLod:Z

    .line 5
    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/lodcalc/PerspectiveLodCalculator;->cam:Lcom/jme3/renderer/Camera;

    .line 6
    iput p2, p0, Lcom/jme3/terrain/geomipmap/lodcalc/PerspectiveLodCalculator;->pixelError:F

    return-void
.end method

.method private getCameraConstant(Lcom/jme3/renderer/Camera;F)F
    .locals 2

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getFrustumNear()F

    move-result v0

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getFrustumTop()F

    move-result v1

    invoke-static {v1}, Lcom/jme3/math/FastMath;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr p2, v1

    div-float/2addr p2, p1

    div-float/2addr v0, p2

    return v0
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

    iget-boolean v0, p0, Lcom/jme3/terrain/geomipmap/lodcalc/PerspectiveLodCalculator;->turnOffLod:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getLod()I

    move-result p2

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;

    invoke-direct {v0, p1}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;-><init>(Lcom/jme3/terrain/geomipmap/TerrainPatch;)V

    invoke-virtual {v0}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, v2}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->setNewLod(I)V

    invoke-virtual {v0, p2}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->setPreviousLod(I)V

    return v1

    :cond_1
    invoke-virtual {p1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getLodEntropies()[F

    move-result-object v0

    iget-object v3, p0, Lcom/jme3/terrain/geomipmap/lodcalc/PerspectiveLodCalculator;->cam:Lcom/jme3/renderer/Camera;

    iget v4, p0, Lcom/jme3/terrain/geomipmap/lodcalc/PerspectiveLodCalculator;->pixelError:F

    invoke-direct {p0, v3, v4}, Lcom/jme3/terrain/geomipmap/lodcalc/PerspectiveLodCalculator;->getCameraConstant(Lcom/jme3/renderer/Camera;F)F

    move-result v3

    invoke-virtual {p0, p1}, Lcom/jme3/terrain/geomipmap/lodcalc/PerspectiveLodCalculator;->getCenterLocation(Lcom/jme3/terrain/geomipmap/TerrainPatch;)Lcom/jme3/math/Vector3f;

    move-result-object v4

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/math/Vector3f;

    invoke-virtual {v4, p2}, Lcom/jme3/math/Vector3f;->distance(Lcom/jme3/math/Vector3f;)F

    move-result p2

    move v4, v2

    :goto_0
    invoke-virtual {p1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getMaxLod()I

    move-result v5

    if-gt v4, v5, :cond_6

    aget v5, v0, v4

    mul-float/2addr v5, v3

    cmpg-float v5, p2, v5

    if-ltz v5, :cond_3

    invoke-virtual {p1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getMaxLod()I

    move-result v5

    if-ne v4, v5, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getLod()I

    move-result p2

    if-eq v4, p2, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    invoke-virtual {p1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getLod()I

    move-result p2

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;

    if-nez v0, :cond_5

    new-instance v0, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;

    invoke-direct {v0, p1}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;-><init>(Lcom/jme3/terrain/geomipmap/TerrainPatch;)V

    invoke-virtual {v0}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual {v0, v4}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->setNewLod(I)V

    invoke-virtual {v0, p2}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->setPreviousLod(I)V

    return v1

    :cond_6
    return v2
.end method

.method public bridge synthetic clone()Lcom/jme3/terrain/geomipmap/lodcalc/LodCalculator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/terrain/geomipmap/lodcalc/PerspectiveLodCalculator;->clone()Lcom/jme3/terrain/geomipmap/lodcalc/PerspectiveLodCalculator;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/jme3/terrain/geomipmap/lodcalc/PerspectiveLodCalculator;
    .locals 1

    .line 3
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/terrain/geomipmap/lodcalc/PerspectiveLodCalculator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 4
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/jme3/terrain/geomipmap/lodcalc/PerspectiveLodCalculator;->clone()Lcom/jme3/terrain/geomipmap/lodcalc/PerspectiveLodCalculator;

    move-result-object v0

    return-object v0
.end method

.method public getCenterLocation(Lcom/jme3/terrain/geomipmap/TerrainPatch;)Lcom/jme3/math/Vector3f;
    .locals 3

    invoke-virtual {p1}, Lcom/jme3/scene/Spatial;->getWorldTranslation()Lcom/jme3/math/Vector3f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/math/Vector3f;->clone()Lcom/jme3/math/Vector3f;

    move-result-object v0

    iget v1, v0, Lcom/jme3/math/Vector3f;->x:F

    invoke-virtual {p1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getSize()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Lcom/jme3/math/Vector3f;->x:F

    iget v1, v0, Lcom/jme3/math/Vector3f;->z:F

    invoke-virtual {p1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->getSize()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    add-float/2addr v1, p1

    iput v1, v0, Lcom/jme3/math/Vector3f;->z:F

    return-object v0
.end method

.method public getPixelError()F
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/geomipmap/lodcalc/PerspectiveLodCalculator;->pixelError:F

    return v0
.end method

.method public isLodOff()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/terrain/geomipmap/lodcalc/PerspectiveLodCalculator;->turnOffLod:Z

    return v0
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public setCam(Lcom/jme3/renderer/Camera;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/lodcalc/PerspectiveLodCalculator;->cam:Lcom/jme3/renderer/Camera;

    return-void
.end method

.method public setPixelError(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/geomipmap/lodcalc/PerspectiveLodCalculator;->pixelError:F

    return-void
.end method

.method public turnOffLod()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/jme3/terrain/geomipmap/lodcalc/PerspectiveLodCalculator;->turnOffLod:Z

    return-void
.end method

.method public turnOnLod()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/terrain/geomipmap/lodcalc/PerspectiveLodCalculator;->turnOffLod:Z

    return-void
.end method

.method public usesVariableLod()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
