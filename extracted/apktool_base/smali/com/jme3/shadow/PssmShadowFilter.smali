.class public Lcom/jme3/shadow/PssmShadowFilter;
.super Lcom/jme3/post/Filter;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private pssmRenderer:Lcom/jme3/shadow/PssmShadowRenderer;

.field tmpv:Lcom/jme3/math/Vector4f;

.field private viewPort:Lcom/jme3/renderer/ViewPort;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/post/Filter;-><init>()V

    .line 2
    new-instance v0, Lcom/jme3/math/Vector4f;

    invoke-direct {v0}, Lcom/jme3/math/Vector4f;-><init>()V

    iput-object v0, p0, Lcom/jme3/shadow/PssmShadowFilter;->tmpv:Lcom/jme3/math/Vector4f;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/asset/AssetManager;II)V
    .locals 2

    .line 3
    const-string v0, "Post Shadow"

    invoke-direct {p0, v0}, Lcom/jme3/post/Filter;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/jme3/math/Vector4f;

    invoke-direct {v0}, Lcom/jme3/math/Vector4f;-><init>()V

    iput-object v0, p0, Lcom/jme3/shadow/PssmShadowFilter;->tmpv:Lcom/jme3/math/Vector4f;

    .line 5
    new-instance v0, Lcom/jme3/material/Material;

    const-string v1, "Common/MatDefs/Shadow/PostShadowFilter.j3md"

    invoke-direct {v0, p1, v1}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jme3/post/Filter;->material:Lcom/jme3/material/Material;

    .line 6
    new-instance v0, Lcom/jme3/shadow/PssmShadowRenderer;

    iget-object v1, p0, Lcom/jme3/post/Filter;->material:Lcom/jme3/material/Material;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/jme3/shadow/PssmShadowRenderer;-><init>(Lcom/jme3/asset/AssetManager;IILcom/jme3/material/Material;)V

    iput-object v0, p0, Lcom/jme3/shadow/PssmShadowFilter;->pssmRenderer:Lcom/jme3/shadow/PssmShadowRenderer;

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, v0, Lcom/jme3/shadow/PssmShadowRenderer;->needsfallBackMaterial:Z

    return-void
.end method


# virtual methods
.method public getDirection()Lcom/jme3/math/Vector3f;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/PssmShadowFilter;->pssmRenderer:Lcom/jme3/shadow/PssmShadowRenderer;

    invoke-virtual {v0}, Lcom/jme3/shadow/PssmShadowRenderer;->getDirection()Lcom/jme3/math/Vector3f;

    move-result-object v0

    return-object v0
.end method

.method public getEdgesThickness()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/PssmShadowFilter;->pssmRenderer:Lcom/jme3/shadow/PssmShadowRenderer;

    invoke-virtual {v0}, Lcom/jme3/shadow/PssmShadowRenderer;->getEdgesThickness()I

    move-result v0

    return v0
.end method

.method public getLambda()F
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/PssmShadowFilter;->pssmRenderer:Lcom/jme3/shadow/PssmShadowRenderer;

    invoke-virtual {v0}, Lcom/jme3/shadow/PssmShadowRenderer;->getLambda()F

    move-result v0

    return v0
.end method

.method public getMaterial()Lcom/jme3/material/Material;
    .locals 1

    iget-object v0, p0, Lcom/jme3/post/Filter;->material:Lcom/jme3/material/Material;

    return-object v0
.end method

.method public getShadowIntensity()F
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/PssmShadowFilter;->pssmRenderer:Lcom/jme3/shadow/PssmShadowRenderer;

    invoke-virtual {v0}, Lcom/jme3/shadow/PssmShadowRenderer;->getShadowIntensity()F

    move-result v0

    return v0
.end method

.method public getShadowMaterial()Lcom/jme3/material/Material;
    .locals 1

    iget-object v0, p0, Lcom/jme3/post/Filter;->material:Lcom/jme3/material/Material;

    return-object v0
.end method

.method public getShadowZExtend()F
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/PssmShadowFilter;->pssmRenderer:Lcom/jme3/shadow/PssmShadowRenderer;

    invoke-virtual {v0}, Lcom/jme3/shadow/PssmShadowRenderer;->getShadowZExtend()F

    move-result v0

    return v0
.end method

.method public getShadowZFadeLength()F
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/PssmShadowFilter;->pssmRenderer:Lcom/jme3/shadow/PssmShadowRenderer;

    invoke-virtual {v0}, Lcom/jme3/shadow/PssmShadowRenderer;->getShadowZFadeLength()F

    move-result v0

    return v0
.end method

.method public initFilter(Lcom/jme3/asset/AssetManager;Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;II)V
    .locals 0

    iget-object p1, p0, Lcom/jme3/shadow/PssmShadowFilter;->pssmRenderer:Lcom/jme3/shadow/PssmShadowRenderer;

    invoke-virtual {p1, p2, p3}, Lcom/jme3/shadow/PssmShadowRenderer;->initialize(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V

    iput-object p3, p0, Lcom/jme3/shadow/PssmShadowFilter;->viewPort:Lcom/jme3/renderer/ViewPort;

    return-void
.end method

.method public isFlushQueues()Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/PssmShadowFilter;->pssmRenderer:Lcom/jme3/shadow/PssmShadowRenderer;

    invoke-virtual {v0}, Lcom/jme3/shadow/PssmShadowRenderer;->isFlushQueues()Z

    move-result v0

    return v0
.end method

.method public isRequiresDepthTexture()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public postFrame(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;Lcom/jme3/texture/FrameBuffer;Lcom/jme3/texture/FrameBuffer;)V
    .locals 0

    iget-object p1, p0, Lcom/jme3/shadow/PssmShadowFilter;->pssmRenderer:Lcom/jme3/shadow/PssmShadowRenderer;

    invoke-virtual {p1}, Lcom/jme3/shadow/PssmShadowRenderer;->setPostShadowParams()V

    return-void
.end method

.method public postQueue(Lcom/jme3/renderer/queue/RenderQueue;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/PssmShadowFilter;->pssmRenderer:Lcom/jme3/shadow/PssmShadowRenderer;

    invoke-virtual {v0, p1}, Lcom/jme3/shadow/PssmShadowRenderer;->postQueue(Lcom/jme3/renderer/queue/RenderQueue;)V

    return-void
.end method

.method public preFrame(F)V
    .locals 5

    iget-object v0, p0, Lcom/jme3/shadow/PssmShadowFilter;->pssmRenderer:Lcom/jme3/shadow/PssmShadowRenderer;

    invoke-virtual {v0, p1}, Lcom/jme3/shadow/PssmShadowRenderer;->preFrame(F)V

    iget-object p1, p0, Lcom/jme3/post/Filter;->material:Lcom/jme3/material/Material;

    iget-object v0, p0, Lcom/jme3/shadow/PssmShadowFilter;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v0}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/renderer/Camera;->getViewProjectionMatrix()Lcom/jme3/math/Matrix4f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jme3/math/Matrix4f;->invert()Lcom/jme3/math/Matrix4f;

    move-result-object v0

    const-string v1, "ViewProjectionMatrixInverse"

    invoke-virtual {p1, v1, v0}, Lcom/jme3/material/Material;->setMatrix4(Ljava/lang/String;Lcom/jme3/math/Matrix4f;)V

    iget-object p1, p0, Lcom/jme3/shadow/PssmShadowFilter;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getViewProjectionMatrix()Lcom/jme3/math/Matrix4f;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/post/Filter;->material:Lcom/jme3/material/Material;

    iget-object v1, p0, Lcom/jme3/shadow/PssmShadowFilter;->tmpv:Lcom/jme3/math/Vector4f;

    iget v2, p1, Lcom/jme3/math/Matrix4f;->m20:F

    iget v3, p1, Lcom/jme3/math/Matrix4f;->m21:F

    iget v4, p1, Lcom/jme3/math/Matrix4f;->m22:F

    iget p1, p1, Lcom/jme3/math/Matrix4f;->m23:F

    invoke-virtual {v1, v2, v3, v4, p1}, Lcom/jme3/math/Vector4f;->set(FFFF)Lcom/jme3/math/Vector4f;

    move-result-object p1

    const-string v1, "ViewProjectionMatrixRow2"

    invoke-virtual {v0, v1, p1}, Lcom/jme3/material/Material;->setVector4(Ljava/lang/String;Lcom/jme3/math/Vector4f;)V

    return-void
.end method

.method public read(Lcom/jme3/export/JmeImporter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/post/Filter;->read(Lcom/jme3/export/JmeImporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeImporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/InputCapsule;

    return-void
.end method

.method public final setCompareMode(Lcom/jme3/shadow/PssmShadowRenderer$CompareMode;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/PssmShadowFilter;->pssmRenderer:Lcom/jme3/shadow/PssmShadowRenderer;

    invoke-virtual {v0, p1}, Lcom/jme3/shadow/PssmShadowRenderer;->setCompareMode(Lcom/jme3/shadow/PssmShadowRenderer$CompareMode;)V

    return-void
.end method

.method public setDirection(Lcom/jme3/math/Vector3f;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/PssmShadowFilter;->pssmRenderer:Lcom/jme3/shadow/PssmShadowRenderer;

    invoke-virtual {v0, p1}, Lcom/jme3/shadow/PssmShadowRenderer;->setDirection(Lcom/jme3/math/Vector3f;)V

    return-void
.end method

.method public setEdgesThickness(I)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/PssmShadowFilter;->pssmRenderer:Lcom/jme3/shadow/PssmShadowRenderer;

    invoke-virtual {v0, p1}, Lcom/jme3/shadow/PssmShadowRenderer;->setEdgesThickness(I)V

    return-void
.end method

.method public final setFilterMode(Lcom/jme3/shadow/PssmShadowRenderer$FilterMode;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/PssmShadowFilter;->pssmRenderer:Lcom/jme3/shadow/PssmShadowRenderer;

    invoke-virtual {v0, p1}, Lcom/jme3/shadow/PssmShadowRenderer;->setFilterMode(Lcom/jme3/shadow/PssmShadowRenderer$FilterMode;)V

    return-void
.end method

.method public setFlushQueues(Z)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/PssmShadowFilter;->pssmRenderer:Lcom/jme3/shadow/PssmShadowRenderer;

    invoke-virtual {v0, p1}, Lcom/jme3/shadow/PssmShadowRenderer;->setFlushQueues(Z)V

    return-void
.end method

.method public setLambda(F)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/PssmShadowFilter;->pssmRenderer:Lcom/jme3/shadow/PssmShadowRenderer;

    invoke-virtual {v0, p1}, Lcom/jme3/shadow/PssmShadowRenderer;->setLambda(F)V

    return-void
.end method

.method public final setShadowIntensity(F)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/PssmShadowFilter;->pssmRenderer:Lcom/jme3/shadow/PssmShadowRenderer;

    invoke-virtual {v0, p1}, Lcom/jme3/shadow/PssmShadowRenderer;->setShadowIntensity(F)V

    return-void
.end method

.method public setShadowZExtend(F)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/PssmShadowFilter;->pssmRenderer:Lcom/jme3/shadow/PssmShadowRenderer;

    invoke-virtual {v0, p1}, Lcom/jme3/shadow/PssmShadowRenderer;->setShadowZExtend(F)V

    return-void
.end method

.method public setShadowZFadeLength(F)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/PssmShadowFilter;->pssmRenderer:Lcom/jme3/shadow/PssmShadowRenderer;

    invoke-virtual {v0, p1}, Lcom/jme3/shadow/PssmShadowRenderer;->setShadowZFadeLength(F)V

    return-void
.end method

.method public write(Lcom/jme3/export/JmeExporter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/jme3/post/Filter;->write(Lcom/jme3/export/JmeExporter;)V

    invoke-interface {p1, p0}, Lcom/jme3/export/JmeExporter;->getCapsule(Lcom/jme3/export/Savable;)Lcom/jme3/export/OutputCapsule;

    return-void
.end method
