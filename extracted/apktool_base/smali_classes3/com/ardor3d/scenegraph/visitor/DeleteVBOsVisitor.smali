.class public Lcom/ardor3d/scenegraph/visitor/DeleteVBOsVisitor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ardor3d/scenegraph/visitor/Visitor;


# instance fields
.field final _deleter:Lcom/ardor3d/renderer/Renderer;


# direct methods
.method public constructor <init>(Lcom/ardor3d/renderer/Renderer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ardor3d/scenegraph/visitor/DeleteVBOsVisitor;->_deleter:Lcom/ardor3d/renderer/Renderer;

    return-void
.end method


# virtual methods
.method public visit(Lcom/ardor3d/scenegraph/Spatial;)V
    .locals 3

    instance-of v0, p1, Lcom/ardor3d/scenegraph/Mesh;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/ardor3d/scenegraph/Mesh;

    iget-object v0, p0, Lcom/ardor3d/scenegraph/visitor/DeleteVBOsVisitor;->_deleter:Lcom/ardor3d/renderer/Renderer;

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getVertexCoords()Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ardor3d/renderer/Renderer;->deleteVBOs(Lcom/ardor3d/scenegraph/AbstractBufferData;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/visitor/DeleteVBOsVisitor;->_deleter:Lcom/ardor3d/renderer/Renderer;

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getIndices()Lcom/ardor3d/scenegraph/IndexBufferData;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ardor3d/renderer/Renderer;->deleteVBOs(Lcom/ardor3d/scenegraph/AbstractBufferData;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/visitor/DeleteVBOsVisitor;->_deleter:Lcom/ardor3d/renderer/Renderer;

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getInterleavedData()Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ardor3d/renderer/Renderer;->deleteVBOs(Lcom/ardor3d/scenegraph/AbstractBufferData;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/visitor/DeleteVBOsVisitor;->_deleter:Lcom/ardor3d/renderer/Renderer;

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getNormalCoords()Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ardor3d/renderer/Renderer;->deleteVBOs(Lcom/ardor3d/scenegraph/AbstractBufferData;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/visitor/DeleteVBOsVisitor;->_deleter:Lcom/ardor3d/renderer/Renderer;

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getTangentCoords()Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ardor3d/renderer/Renderer;->deleteVBOs(Lcom/ardor3d/scenegraph/AbstractBufferData;)V

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ardor3d/scenegraph/MeshData;->getTextureCoords()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ardor3d/scenegraph/FloatBufferData;

    iget-object v2, p0, Lcom/ardor3d/scenegraph/visitor/DeleteVBOsVisitor;->_deleter:Lcom/ardor3d/renderer/Renderer;

    invoke-interface {v2, v1}, Lcom/ardor3d/renderer/Renderer;->deleteVBOs(Lcom/ardor3d/scenegraph/AbstractBufferData;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ardor3d/scenegraph/visitor/DeleteVBOsVisitor;->_deleter:Lcom/ardor3d/renderer/Renderer;

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ardor3d/scenegraph/MeshData;->getColorCoords()Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ardor3d/renderer/Renderer;->deleteVBOs(Lcom/ardor3d/scenegraph/AbstractBufferData;)V

    iget-object v0, p0, Lcom/ardor3d/scenegraph/visitor/DeleteVBOsVisitor;->_deleter:Lcom/ardor3d/renderer/Renderer;

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/Mesh;->getMeshData()Lcom/ardor3d/scenegraph/MeshData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ardor3d/scenegraph/MeshData;->getFogCoords()Lcom/ardor3d/scenegraph/FloatBufferData;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ardor3d/renderer/Renderer;->deleteVBOs(Lcom/ardor3d/scenegraph/AbstractBufferData;)V

    :cond_1
    return-void
.end method
