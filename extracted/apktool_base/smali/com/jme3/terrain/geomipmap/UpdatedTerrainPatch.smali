.class public Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bottomLod:I

.field private fixEdges:Z

.field private leftLod:I

.field private newIndexBuffer:Ljava/nio/Buffer;

.field private newLod:I

.field private previousLod:I

.field private rightLod:I

.field private topLod:I

.field private updatedPatch:Lcom/jme3/terrain/geomipmap/TerrainPatch;


# direct methods
.method public constructor <init>(Lcom/jme3/terrain/geomipmap/TerrainPatch;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->fixEdges:Z

    .line 3
    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->updatedPatch:Lcom/jme3/terrain/geomipmap/TerrainPatch;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/terrain/geomipmap/TerrainPatch;I)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->fixEdges:Z

    .line 6
    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->updatedPatch:Lcom/jme3/terrain/geomipmap/TerrainPatch;

    .line 7
    iput p2, p0, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->newLod:I

    return-void
.end method


# virtual methods
.method public getBottomLod()I
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->bottomLod:I

    return v0
.end method

.method public getLeftLod()I
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->leftLod:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->updatedPatch:Lcom/jme3/terrain/geomipmap/TerrainPatch;

    invoke-virtual {v0}, Lcom/jme3/scene/Spatial;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNewLod()I
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->newLod:I

    return v0
.end method

.method public getRightLod()I
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->rightLod:I

    return v0
.end method

.method public getTopLod()I
    .locals 1

    iget v0, p0, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->topLod:I

    return v0
.end method

.method public getUpdatedPatch()Lcom/jme3/terrain/geomipmap/TerrainPatch;
    .locals 1

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->updatedPatch:Lcom/jme3/terrain/geomipmap/TerrainPatch;

    return-object v0
.end method

.method public isFixEdges()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->fixEdges:Z

    return v0
.end method

.method public isReIndexNeeded()Z
    .locals 1

    invoke-virtual {p0}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->lodChanged()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->isFixEdges()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public lodChanged()Z
    .locals 2

    iget v0, p0, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->previousLod:I

    iget v1, p0, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->newLod:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setBottomLod(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->bottomLod:I

    return-void
.end method

.method public setFixEdges(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->fixEdges:Z

    return-void
.end method

.method public setLeftLod(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->leftLod:I

    return-void
.end method

.method public setNewIndexBuffer(Ljava/nio/Buffer;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->newIndexBuffer:Ljava/nio/Buffer;

    return-void
.end method

.method public setNewLod(I)V
    .locals 3

    iput p1, p0, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->newLod:I

    if-ltz p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "newLod cannot be less than zero, was: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPreviousLod(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->previousLod:I

    return-void
.end method

.method public setRightLod(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->rightLod:I

    return-void
.end method

.method public setTopLod(I)V
    .locals 0

    iput p1, p0, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->topLod:I

    return-void
.end method

.method public setUpdatedPatch(Lcom/jme3/terrain/geomipmap/TerrainPatch;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->updatedPatch:Lcom/jme3/terrain/geomipmap/TerrainPatch;

    return-void
.end method

.method public updateAll()V
    .locals 4

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->updatedPatch:Lcom/jme3/terrain/geomipmap/TerrainPatch;

    iget v1, p0, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->newLod:I

    invoke-virtual {v0, v1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->setLod(I)V

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->updatedPatch:Lcom/jme3/terrain/geomipmap/TerrainPatch;

    iget v1, p0, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->rightLod:I

    invoke-virtual {v0, v1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->setLodRight(I)V

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->updatedPatch:Lcom/jme3/terrain/geomipmap/TerrainPatch;

    iget v1, p0, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->topLod:I

    invoke-virtual {v0, v1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->setLodTop(I)V

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->updatedPatch:Lcom/jme3/terrain/geomipmap/TerrainPatch;

    iget v1, p0, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->leftLod:I

    invoke-virtual {v0, v1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->setLodLeft(I)V

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->updatedPatch:Lcom/jme3/terrain/geomipmap/TerrainPatch;

    iget v1, p0, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->bottomLod:I

    invoke-virtual {v0, v1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->setLodBottom(I)V

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->newIndexBuffer:Ljava/nio/Buffer;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->isReIndexNeeded()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->updatedPatch:Lcom/jme3/terrain/geomipmap/TerrainPatch;

    iget v1, p0, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->previousLod:I

    invoke-virtual {v0, v1}, Lcom/jme3/terrain/geomipmap/TerrainPatch;->setPreviousLod(I)V

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->updatedPatch:Lcom/jme3/terrain/geomipmap/TerrainPatch;

    invoke-virtual {v0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v0

    sget-object v1, Lcom/jme3/scene/VertexBuffer$Type;->Index:Lcom/jme3/scene/VertexBuffer$Type;

    invoke-virtual {v0, v1}, Lcom/jme3/scene/Mesh;->clearBuffer(Lcom/jme3/scene/VertexBuffer$Type;)V

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->newIndexBuffer:Ljava/nio/Buffer;

    instance-of v2, v0, Ljava/nio/IntBuffer;

    const/4 v3, 0x3

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->updatedPatch:Lcom/jme3/terrain/geomipmap/TerrainPatch;

    invoke-virtual {v0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v0

    iget-object v2, p0, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->newIndexBuffer:Ljava/nio/Buffer;

    check-cast v2, Ljava/nio/IntBuffer;

    invoke-virtual {v0, v1, v3, v2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/IntBuffer;)V

    goto :goto_0

    :cond_0
    instance-of v0, v0, Ljava/nio/ShortBuffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->updatedPatch:Lcom/jme3/terrain/geomipmap/TerrainPatch;

    invoke-virtual {v0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v0

    iget-object v2, p0, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->newIndexBuffer:Ljava/nio/Buffer;

    check-cast v2, Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v1, v3, v2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/ShortBuffer;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->updatedPatch:Lcom/jme3/terrain/geomipmap/TerrainPatch;

    invoke-virtual {v0}, Lcom/jme3/scene/Geometry;->getMesh()Lcom/jme3/scene/Mesh;

    move-result-object v0

    iget-object v2, p0, Lcom/jme3/terrain/geomipmap/UpdatedTerrainPatch;->newIndexBuffer:Ljava/nio/Buffer;

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1, v3, v2}, Lcom/jme3/scene/Mesh;->setBuffer(Lcom/jme3/scene/VertexBuffer$Type;ILjava/nio/ByteBuffer;)V

    :cond_2
    :goto_0
    return-void
.end method
