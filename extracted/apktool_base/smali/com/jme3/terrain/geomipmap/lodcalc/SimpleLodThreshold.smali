.class public Lcom/jme3/terrain/geomipmap/lodcalc/SimpleLodThreshold;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/terrain/geomipmap/lodcalc/LodThreshold;


# instance fields
.field private lodMultiplier:F

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40000000    # 2.0f

    .line 2
    iput v0, p0, Lcom/jme3/terrain/geomipmap/lodcalc/SimpleLodThreshold;->lodMultiplier:F

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 p2, 0x40000000    # 2.0f

    .line 8
    iput p2, p0, Lcom/jme3/terrain/geomipmap/lodcalc/SimpleLodThreshold;->lodMultiplier:F

    .line 9
    iput p1, p0, Lcom/jme3/terrain/geomipmap/lodcalc/SimpleLodThreshold;->size:I

    return-void
.end method

.method public constructor <init>(Lcom/jme3/terrain/Terrain;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40000000    # 2.0f

    .line 4
    iput v0, p0, Lcom/jme3/terrain/geomipmap/lodcalc/SimpleLodThreshold;->lodMultiplier:F

    .line 5
    instance-of v0, p1, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    if-eqz v0, :cond_0

    .line 6
    check-cast p1, Lcom/jme3/terrain/geomipmap/TerrainQuad;

    invoke-virtual {p1}, Lcom/jme3/terrain/geomipmap/TerrainQuad;->getPatchSize()I

    move-result p1

    iput p1, p0, Lcom/jme3/terrain/geomipmap/lodcalc/SimpleLodThreshold;->size:I

    :cond_0
    return-void
.end method


# virtual methods
.method public clone()Lcom/jme3/terrain/geomipmap/lodcalc/LodThreshold;
    .locals 2

    .line 2
    new-instance v0, Lcom/jme3/terrain/geomipmap/lodcalc/SimpleLodThreshold;

    invoke-direct {v0}, Lcom/jme3/terrain/geomipmap/lodcalc/SimpleLodThreshold;-><init>()V

    .line 3
    iget v1, p0, Lcom/jme3/terrain/geomipmap/lodcalc/SimpleLodThreshold;->size:I

    iput v1, v0, Lcom/jme3/terrain/geomipmap/lodcalc/SimpleLodThreshold;->size:I

    .line 4
    iget v1, p0, Lcom/jme3/terrain/geomipmap/lodcalc/SimpleLodThreshold;->lodMultiplier:F

    iput v1, v0, Lcom/jme3/terrain/geomipmap/lodcalc/SimpleLodThreshold;->lodMultiplier:F

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/jme3/terrain/geomipmap/lodcalc/SimpleLodThreshold;->clone()Lcom/jme3/terrain/geomipmap/lodcalc/LodThreshold;

    move-result-object v0

    return-object v0
.end method

.method public getLodDistanceThreshold()F
    .locals 2

    iget v0, p0, Lcom/jme3/terrain/geomipmap/lodcalc/SimpleLodThreshold;->size:I

    int-to-float v0, v0

    iget v1, p0, Lcom/jme3/terrain/geomipmap/lodcalc/SimpleLodThreshold;->lodMultiplier:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public getLodMultiplier()F
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/geomipmap/lodcalc/SimpleLodThreshold;->lodMultiplier:F

    return v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/geomipmap/lodcalc/SimpleLodThreshold;->size:I

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

    const-string v0, "size"

    const/16 v1, 0x10

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/jme3/terrain/geomipmap/lodcalc/SimpleLodThreshold;->size:I

    const-string v0, "lodMultiplier"

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/jme3/export/InputCapsule;->readInt(Ljava/lang/String;I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/jme3/terrain/geomipmap/lodcalc/SimpleLodThreshold;->lodMultiplier:F

    return-void
.end method

.method public setLodMultiplier(F)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/geomipmap/lodcalc/SimpleLodThreshold;->lodMultiplier:F

    return-void
.end method

.method public setSize(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/geomipmap/lodcalc/SimpleLodThreshold;->size:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimpleLodThreshold "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/terrain/geomipmap/lodcalc/SimpleLodThreshold;->size:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jme3/terrain/geomipmap/lodcalc/SimpleLodThreshold;->lodMultiplier:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    iget v0, p0, Lcom/jme3/terrain/geomipmap/lodcalc/SimpleLodThreshold;->size:I

    const-string v1, "size"

    const/16 v2, 0x10

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(ILjava/lang/String;I)V

    iget v0, p0, Lcom/jme3/terrain/geomipmap/lodcalc/SimpleLodThreshold;->lodMultiplier:F

    const-string v1, "lodMultiplier"

    const/high16 v2, 0x40000000    # 2.0f

    invoke-interface {p1, v0, v1, v2}, Lcom/jme3/export/OutputCapsule;->write(FLjava/lang/String;F)V

    return-void
.end method
