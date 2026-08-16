.class public Lcom/jme3/terrain/geomipmap/grid/AssetTileLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/terrain/geomipmap/TerrainGridTileLoader;


# instance fields
.field private assetPath:Ljava/lang/String;

.field private manager:Lcom/jme3/asset/AssetManager;

.field private name:Ljava/lang/String;

.field private patchSize:I

.field private quadSize:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/grid/AssetTileLoader;->manager:Lcom/jme3/asset/AssetManager;

    .line 4
    iput-object p2, p0, Lcom/jme3/terrain/geomipmap/grid/AssetTileLoader;->name:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/jme3/terrain/geomipmap/grid/AssetTileLoader;->assetPath:Ljava/lang/String;

    return-void
.end method

.method private createNewQuad(Lcom/jme3/math/Vector3f;)Lcom/jme3/terrain/geomipmap/TerrainQuad;
    .locals 4

    new-instance v0, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Quad"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lcom/jme3/terrain/geomipmap/grid/AssetTileLoader;->patchSize:I

    iget v2, p0, Lcom/jme3/terrain/geomipmap/grid/AssetTileLoader;->quadSize:I

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/jme3/terrain/geomipmap/TerrainQuad;-><init>(Ljava/lang/String;II[F)V

    return-object v0
.end method


# virtual methods
.method public getAssetPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/grid/AssetTileLoader;->assetPath:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/grid/AssetTileLoader;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTerrainQuadAt(Lcom/jme3/math/Vector3f;)Lcom/jme3/terrain/geomipmap/TerrainQuad;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/jme3/terrain/geomipmap/grid/AssetTileLoader;->assetPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jme3/terrain/geomipmap/grid/AssetTileLoader;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/jme3/math/Vector3f;->x:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/jme3/math/Vector3f;->y:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/jme3/math/Vector3f;->z:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ".j3o"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Load terrain grid tile: {0}"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    iget-object v1, p0, Lcom/jme3/terrain/geomipmap/grid/AssetTileLoader;->manager:Lcom/jme3/asset/AssetManager;

    invoke-interface {v1, v0}, Lcom/jme3/asset/AssetManager;->loadModel(Ljava/lang/String;)Lcom/jme3/scene/Spatial;

    move-result-object v1

    check-cast v1, Lcom/jme3/terrain/geomipmap/TerrainQuad;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Could not load terrain grid tile: {0}"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/jme3/terrain/geomipmap/grid/AssetTileLoader;->createNewQuad(Lcom/jme3/math/Vector3f;)Lcom/jme3/terrain/geomipmap/TerrainQuad;

    move-result-object v1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p1

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Loaded terrain grid tile: {0}"

    invoke-virtual {p1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    return-object v1
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    move-result-object v0

    invoke-interface {p1}, Lcom/jme3/export/JmeImporter;->getAssetManager()Lcom/jme3/asset/AssetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/grid/AssetTileLoader;->manager:Lcom/jme3/asset/AssetManager;

    const-string p1, "assetPath"

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/grid/AssetTileLoader;->assetPath:Ljava/lang/String;

    const-string p1, "name"

    invoke-interface {v0, p1, v1}, Lcom/jme3/export/InputCapsule;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/grid/AssetTileLoader;->name:Ljava/lang/String;

    return-void
.end method

.method public setPatchSize(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/geomipmap/grid/AssetTileLoader;->patchSize:I

    return-void
.end method

.method public setQuadSize(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/geomipmap/grid/AssetTileLoader;->quadSize:I

    return-void
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

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/grid/AssetTileLoader;->assetPath:Ljava/lang/String;

    const-string v1, "assetPath"

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/grid/AssetTileLoader;->name:Ljava/lang/String;

    const-string v1, "name"

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
