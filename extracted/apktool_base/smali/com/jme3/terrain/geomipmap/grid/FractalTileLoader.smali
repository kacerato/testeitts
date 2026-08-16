.class public Lcom/jme3/terrain/geomipmap/grid/FractalTileLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/terrain/geomipmap/TerrainGridTileLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/terrain/geomipmap/grid/FractalTileLoader$FloatBufferHeightMap;
    }
.end annotation


# instance fields
.field private final base:Lcom/jme3/terrain/noise/Basis;

.field private final heightScale:F

.field private patchSize:I

.field private quadSize:I


# direct methods
.method public constructor <init>(Lcom/jme3/terrain/noise/Basis;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/grid/FractalTileLoader;->base:Lcom/jme3/terrain/noise/Basis;

    iput p2, p0, Lcom/jme3/terrain/geomipmap/grid/FractalTileLoader;->heightScale:F

    return-void
.end method

.method private getHeightMapAt(Lcom/jme3/math/Vector3f;)Lcom/jme3/terrain/heightmap/HeightMap;
    .locals 4

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/grid/FractalTileLoader;->base:Lcom/jme3/terrain/noise/Basis;

    iget v1, p1, Lcom/jme3/math/Vector3f;->x:F

    iget v2, p0, Lcom/jme3/terrain/geomipmap/grid/FractalTileLoader;->quadSize:I

    add-int/lit8 v3, v2, -0x1

    int-to-float v3, v3

    mul-float/2addr v1, v3

    iget p1, p1, Lcom/jme3/math/Vector3f;->z:F

    add-int/lit8 v3, v2, -0x1

    int-to-float v3, v3

    mul-float/2addr p1, v3

    const/4 v3, 0x0

    invoke-interface {v0, v1, p1, v3, v2}, Lcom/jme3/terrain/noise/Basis;->getBuffer(FFFI)Ljava/nio/FloatBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->array()[F

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget v2, v0, v1

    iget v3, p0, Lcom/jme3/terrain/geomipmap/grid/FractalTileLoader;->heightScale:F

    mul-float/2addr v2, v3

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/jme3/terrain/geomipmap/grid/FractalTileLoader$FloatBufferHeightMap;

    invoke-direct {v0, p0, p1}, Lcom/jme3/terrain/geomipmap/grid/FractalTileLoader$FloatBufferHeightMap;-><init>(Lcom/jme3/terrain/geomipmap/grid/FractalTileLoader;Ljava/nio/FloatBuffer;)V

    invoke-interface {v0}, Lcom/jme3/terrain/heightmap/HeightMap;->load()Z

    return-object v0
.end method


# virtual methods
.method public getTerrainQuadAt(Lcom/jme3/math/Vector3f;)Lcom/jme3/terrain/geomipmap/TerrainQuad;
    .locals 4

    invoke-direct {p0, p1}, Lcom/jme3/terrain/geomipmap/grid/FractalTileLoader;->getHeightMapAt(Lcom/jme3/math/Vector3f;)Lcom/jme3/terrain/heightmap/HeightMap;

    move-result-object v0

    new-instance v1, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Quad"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget v2, p0, Lcom/jme3/terrain/geomipmap/grid/FractalTileLoader;->patchSize:I

    iget v3, p0, Lcom/jme3/terrain/geomipmap/grid/FractalTileLoader;->quadSize:I

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

.method public setPatchSize(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/geomipmap/grid/FractalTileLoader;->patchSize:I

    return-void
.end method

.method public setQuadSize(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/geomipmap/grid/FractalTileLoader;->quadSize:I

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
