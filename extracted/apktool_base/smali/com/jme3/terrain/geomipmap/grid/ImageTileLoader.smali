.class public Lcom/jme3/terrain/geomipmap/grid/ImageTileLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/terrain/geomipmap/TerrainGridTileLoader;


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final assetManager:Lcom/jme3/asset/AssetManager;

.field private final namer:Lcom/jme3/terrain/heightmap/Namer;

.field private patchSize:I

.field private quadSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/terrain/geomipmap/grid/ImageTileLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/terrain/geomipmap/grid/ImageTileLoader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/asset/AssetManager;Lcom/jme3/terrain/heightmap/Namer;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/grid/ImageTileLoader;->assetManager:Lcom/jme3/asset/AssetManager;

    .line 4
    iput-object p2, p0, Lcom/jme3/terrain/geomipmap/grid/ImageTileLoader;->namer:Lcom/jme3/terrain/heightmap/Namer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/jme3/asset/AssetManager;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/jme3/terrain/geomipmap/grid/ImageTileLoader$1;

    invoke-direct {v0, p1, p2}, Lcom/jme3/terrain/geomipmap/grid/ImageTileLoader$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p3, v0}, Lcom/jme3/terrain/geomipmap/grid/ImageTileLoader;-><init>(Lcom/jme3/asset/AssetManager;Lcom/jme3/terrain/heightmap/Namer;)V

    return-void
.end method

.method private getHeightMapAt(Lcom/jme3/math/Vector3f;)Lcom/jme3/terrain/heightmap/HeightMap;
    .locals 4

    iget v0, p1, Lcom/jme3/math/Vector3f;->x:F

    float-to-int v0, v0

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    float-to-int p1, p1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/jme3/terrain/geomipmap/grid/ImageTileLoader;->namer:Lcom/jme3/terrain/heightmap/Namer;

    invoke-interface {v2, v0, p1}, Lcom/jme3/terrain/heightmap/Namer;->getName(II)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lcom/jme3/asset/AssetNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    sget-object v0, Lcom/jme3/terrain/geomipmap/grid/ImageTileLoader;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "Loading heightmap from file: {0}"

    invoke-virtual {v0, v2, v3, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/grid/ImageTileLoader;->assetManager:Lcom/jme3/asset/AssetManager;

    new-instance v2, Lcom/jme3/asset/TextureKey;

    invoke-direct {v2, p1}, Lcom/jme3/asset/TextureKey;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/jme3/asset/AssetManager;->loadTexture(Lcom/jme3/asset/TextureKey;)Lcom/jme3/texture/Texture;

    move-result-object v0

    new-instance v2, Lcom/jme3/terrain/heightmap/ImageBasedHeightMap;

    invoke-virtual {v0}, Lcom/jme3/texture/Texture;->getImage()Lcom/jme3/texture/Image;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/jme3/terrain/heightmap/ImageBasedHeightMap;-><init>(Lcom/jme3/texture/Image;)V
    :try_end_1
    .catch Lcom/jme3/asset/AssetNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    const/high16 v0, 0x3f800000    # 1.0f

    :try_start_2
    invoke-virtual {v2, v0}, Lcom/jme3/terrain/heightmap/AbstractHeightMap;->setHeightScale(F)V

    invoke-interface {v2}, Lcom/jme3/terrain/heightmap/HeightMap;->load()Z
    :try_end_2
    .catch Lcom/jme3/asset/AssetNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    :goto_0
    move-object v1, p1

    goto :goto_1

    :catch_1
    move-object v2, v1

    goto :goto_0

    :catch_2
    move-object v2, v1

    :goto_1
    sget-object p1, Lcom/jme3/terrain/geomipmap/grid/ImageTileLoader;->logger:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Asset {0} not found, loading zero heightmap instead"

    invoke-virtual {p1, v0, v3, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2
    return-object v2
.end method


# virtual methods
.method public getTerrainQuadAt(Lcom/jme3/math/Vector3f;)Lcom/jme3/terrain/geomipmap/TerrainQuad;
    .locals 4

    invoke-direct {p0, p1}, Lcom/jme3/terrain/geomipmap/grid/ImageTileLoader;->getHeightMapAt(Lcom/jme3/math/Vector3f;)Lcom/jme3/terrain/heightmap/HeightMap;

    move-result-object v0

    new-instance v1, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Quad"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget v2, p0, Lcom/jme3/terrain/geomipmap/grid/ImageTileLoader;->patchSize:I

    iget v3, p0, Lcom/jme3/terrain/geomipmap/grid/ImageTileLoader;->quadSize:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/jme3/terrain/heightmap/HeightMap;->getHeightMap()[F

    move-result-object v0

    :goto_0
    invoke-direct {v1, p1, v2, v3, v0}, Lcom/jme3/terrain/geomipmap/TerrainQuad;-><init>(Ljava/lang/String;II[F)V

    return-object v1
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

.method public setHeightScale(F)V
    .locals 0

    return-void
.end method

.method public setPatchSize(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/geomipmap/grid/ImageTileLoader;->patchSize:I

    return-void
.end method

.method public setQuadSize(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/geomipmap/grid/ImageTileLoader;->quadSize:I

    return-void
.end method

.method public setSize(I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/jme3/terrain/geomipmap/grid/ImageTileLoader;->patchSize:I

    return-void
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
