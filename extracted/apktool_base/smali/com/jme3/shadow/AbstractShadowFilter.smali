.class public abstract Lcom/jme3/shadow/AbstractShadowFilter;
.super Lcom/jme3/post/Filter;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/util/clone/JmeCloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/jme3/shadow/AbstractShadowRenderer;",
        ">",
        "Lcom/jme3/post/Filter;",
        "Lcom/jme3/util/clone/JmeCloneable;"
    }
.end annotation


# instance fields
.field protected shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final tempMat4:Lcom/jme3/math/Matrix4f;

.field private final tempVec4:Lcom/jme3/math/Vector4f;

.field protected viewPort:Lcom/jme3/renderer/ViewPort;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/jme3/post/Filter;-><init>()V

    .line 2
    new-instance v0, Lcom/jme3/math/Vector4f;

    invoke-direct {v0}, Lcom/jme3/math/Vector4f;-><init>()V

    iput-object v0, p0, Lcom/jme3/shadow/AbstractShadowFilter;->tempVec4:Lcom/jme3/math/Vector4f;

    .line 3
    new-instance v0, Lcom/jme3/math/Matrix4f;

    invoke-direct {v0}, Lcom/jme3/math/Matrix4f;-><init>()V

    iput-object v0, p0, Lcom/jme3/shadow/AbstractShadowFilter;->tempMat4:Lcom/jme3/math/Matrix4f;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/asset/AssetManager;ILcom/jme3/shadow/AbstractShadowRenderer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jme3/asset/AssetManager;",
            "ITT;)V"
        }
    .end annotation

    .line 4
    const-string p1, "Post Shadow"

    invoke-direct {p0, p1}, Lcom/jme3/post/Filter;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance p1, Lcom/jme3/math/Vector4f;

    invoke-direct {p1}, Lcom/jme3/math/Vector4f;-><init>()V

    iput-object p1, p0, Lcom/jme3/shadow/AbstractShadowFilter;->tempVec4:Lcom/jme3/math/Vector4f;

    .line 6
    new-instance p1, Lcom/jme3/math/Matrix4f;

    invoke-direct {p1}, Lcom/jme3/math/Matrix4f;-><init>()V

    iput-object p1, p0, Lcom/jme3/shadow/AbstractShadowFilter;->tempMat4:Lcom/jme3/math/Matrix4f;

    .line 7
    iput-object p3, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    const/4 p1, 0x1

    .line 8
    invoke-virtual {p3, p1}, Lcom/jme3/shadow/AbstractShadowRenderer;->setRenderBackFacesShadows(Z)V

    return-void
.end method


# virtual methods
.method public cloneFields(Lcom/jme3/util/clone/Cloner;Ljava/lang/Object;)V
    .locals 0

    iget-object p2, p0, Lcom/jme3/post/Filter;->material:Lcom/jme3/material/Material;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/jme3/material/Material;

    iput-object p2, p0, Lcom/jme3/post/Filter;->material:Lcom/jme3/material/Material;

    iget-object p2, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    invoke-virtual {p1, p2}, Lcom/jme3/util/clone/Cloner;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/shadow/AbstractShadowRenderer;

    iput-object p1, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    iget-object p2, p0, Lcom/jme3/post/Filter;->material:Lcom/jme3/material/Material;

    invoke-virtual {p1, p2}, Lcom/jme3/shadow/AbstractShadowRenderer;->setPostShadowMaterial(Lcom/jme3/material/Material;)V

    return-void
.end method

.method public displayFrustum()V
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    invoke-virtual {v0}, Lcom/jme3/shadow/AbstractShadowRenderer;->displayFrustum()V

    return-void
.end method

.method public getEdgeFilteringMode()Lcom/jme3/shadow/EdgeFilteringMode;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    invoke-virtual {v0}, Lcom/jme3/shadow/AbstractShadowRenderer;->getEdgeFilteringMode()Lcom/jme3/shadow/EdgeFilteringMode;

    move-result-object v0

    return-object v0
.end method

.method public getEdgesThickness()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    invoke-virtual {v0}, Lcom/jme3/shadow/AbstractShadowRenderer;->getEdgesThickness()I

    move-result v0

    return v0
.end method

.method public getMaterial()Lcom/jme3/material/Material;
    .locals 1

    iget-object v0, p0, Lcom/jme3/post/Filter;->material:Lcom/jme3/material/Material;

    return-object v0
.end method

.method public getNumShadowMaps()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    invoke-virtual {v0}, Lcom/jme3/shadow/AbstractShadowRenderer;->getNumShadowMaps()I

    move-result v0

    return v0
.end method

.method public getPreShadowForcedRenderState()Lcom/jme3/material/RenderState;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    invoke-virtual {v0}, Lcom/jme3/shadow/AbstractShadowRenderer;->getPreShadowForcedRenderState()Lcom/jme3/material/RenderState;

    move-result-object v0

    return-object v0
.end method

.method public getShadowCompareMode()Lcom/jme3/shadow/CompareMode;
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    invoke-virtual {v0}, Lcom/jme3/shadow/AbstractShadowRenderer;->getShadowCompareMode()Lcom/jme3/shadow/CompareMode;

    move-result-object v0

    return-object v0
.end method

.method public getShadowIntensity()F
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    invoke-virtual {v0}, Lcom/jme3/shadow/AbstractShadowRenderer;->getShadowIntensity()F

    move-result v0

    return v0
.end method

.method public getShadowMapSize()I
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    invoke-virtual {v0}, Lcom/jme3/shadow/AbstractShadowRenderer;->getShadowMapSize()I

    move-result v0

    return v0
.end method

.method public getShadowMaterial()Lcom/jme3/material/Material;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/jme3/post/Filter;->material:Lcom/jme3/material/Material;

    return-object v0
.end method

.method public getShadowZExtend()F
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    invoke-virtual {v0}, Lcom/jme3/shadow/AbstractShadowRenderer;->getShadowZExtend()F

    move-result v0

    return v0
.end method

.method public getShadowZFadeLength()F
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    invoke-virtual {v0}, Lcom/jme3/shadow/AbstractShadowRenderer;->getShadowZFadeLength()F

    move-result v0

    return v0
.end method

.method public initFilter(Lcom/jme3/asset/AssetManager;Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;II)V
    .locals 0

    iget-object p4, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    const/4 p5, 0x1

    iput-boolean p5, p4, Lcom/jme3/shadow/AbstractShadowRenderer;->needsfallBackMaterial:Z

    new-instance p4, Lcom/jme3/material/Material;

    const-string p5, "Common/MatDefs/Shadow/PostShadowFilter.j3md"

    invoke-direct {p4, p1, p5}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/jme3/post/Filter;->material:Lcom/jme3/material/Material;

    iget-object p1, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    invoke-virtual {p1, p4}, Lcom/jme3/shadow/AbstractShadowRenderer;->setPostShadowMaterial(Lcom/jme3/material/Material;)V

    iget-object p1, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    invoke-virtual {p1, p2, p3}, Lcom/jme3/shadow/AbstractShadowRenderer;->initialize(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V

    iput-object p3, p0, Lcom/jme3/shadow/AbstractShadowFilter;->viewPort:Lcom/jme3/renderer/ViewPort;

    return-void
.end method

.method public isFlushQueues()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    invoke-virtual {v0}, Lcom/jme3/shadow/AbstractShadowRenderer;->isFlushQueues()Z

    move-result v0

    return v0
.end method

.method public isRenderBackFacesShadows()Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    invoke-virtual {v0}, Lcom/jme3/shadow/AbstractShadowRenderer;->isRenderBackFacesShadows()Z

    move-result v0

    return v0
.end method

.method public isRequiresDepthTexture()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public jmeClone()Lcom/jme3/shadow/AbstractShadowFilter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/jme3/shadow/AbstractShadowFilter<",
            "TT;>;"
        }
    .end annotation

    .line 2
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/jme3/shadow/AbstractShadowFilter;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic jmeClone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/jme3/shadow/AbstractShadowFilter;->jmeClone()Lcom/jme3/shadow/AbstractShadowFilter;

    move-result-object v0

    return-object v0
.end method

.method public postFrame(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;Lcom/jme3/texture/FrameBuffer;Lcom/jme3/texture/FrameBuffer;)V
    .locals 0

    iget-object p1, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    iget-boolean p2, p1, Lcom/jme3/shadow/AbstractShadowRenderer;->skipPostPass:Z

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/jme3/shadow/AbstractShadowRenderer;->setPostShadowParams()V

    :cond_0
    return-void
.end method

.method public postQueue(Lcom/jme3/renderer/queue/RenderQueue;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    invoke-virtual {v0, p1}, Lcom/jme3/shadow/AbstractShadowRenderer;->postQueue(Lcom/jme3/renderer/queue/RenderQueue;)V

    iget-object p1, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    iget-boolean p1, p1, Lcom/jme3/shadow/AbstractShadowRenderer;->skipPostPass:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/jme3/post/Filter;->material:Lcom/jme3/material/Material;

    const-string v0, "ShadowMap0"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/jme3/material/Material;->setTexture(Ljava/lang/String;Lcom/jme3/texture/Texture;)V

    :cond_0
    return-void
.end method

.method public preFrame(F)V
    .locals 5

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    invoke-virtual {v0, p1}, Lcom/jme3/shadow/AbstractShadowRenderer;->preFrame(F)V

    iget-object p1, p0, Lcom/jme3/shadow/AbstractShadowFilter;->viewPort:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {p1}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object p1

    invoke-virtual {p1}, Lcom/jme3/renderer/Camera;->getViewProjectionMatrix()Lcom/jme3/math/Matrix4f;

    move-result-object p1

    iget-object v0, p0, Lcom/jme3/post/Filter;->material:Lcom/jme3/material/Material;

    iget-object v1, p0, Lcom/jme3/shadow/AbstractShadowFilter;->tempMat4:Lcom/jme3/math/Matrix4f;

    invoke-virtual {v1, p1}, Lcom/jme3/math/Matrix4f;->set(Lcom/jme3/math/Matrix4f;)Lcom/jme3/math/Matrix4f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jme3/math/Matrix4f;->invertLocal()Lcom/jme3/math/Matrix4f;

    move-result-object v1

    const-string v2, "ViewProjectionMatrixInverse"

    invoke-virtual {v0, v2, v1}, Lcom/jme3/material/Material;->setMatrix4(Ljava/lang/String;Lcom/jme3/math/Matrix4f;)V

    iget-object v0, p0, Lcom/jme3/post/Filter;->material:Lcom/jme3/material/Material;

    iget-object v1, p0, Lcom/jme3/shadow/AbstractShadowFilter;->tempVec4:Lcom/jme3/math/Vector4f;

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

.method public final setEdgeFilteringMode(Lcom/jme3/shadow/EdgeFilteringMode;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    invoke-virtual {v0, p1}, Lcom/jme3/shadow/AbstractShadowRenderer;->setEdgeFilteringMode(Lcom/jme3/shadow/EdgeFilteringMode;)V

    return-void
.end method

.method public setEdgesThickness(I)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    invoke-virtual {v0, p1}, Lcom/jme3/shadow/AbstractShadowRenderer;->setEdgesThickness(I)V

    return-void
.end method

.method public setRenderBackFacesShadows(Z)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    invoke-virtual {v0, p1}, Lcom/jme3/shadow/AbstractShadowRenderer;->setRenderBackFacesShadows(Z)V

    return-void
.end method

.method public final setShadowCompareMode(Lcom/jme3/shadow/CompareMode;)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    invoke-virtual {v0, p1}, Lcom/jme3/shadow/AbstractShadowRenderer;->setShadowCompareMode(Lcom/jme3/shadow/CompareMode;)V

    return-void
.end method

.method public final setShadowIntensity(F)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    invoke-virtual {v0, p1}, Lcom/jme3/shadow/AbstractShadowRenderer;->setShadowIntensity(F)V

    return-void
.end method

.method public setShadowZExtend(F)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    invoke-virtual {v0, p1}, Lcom/jme3/shadow/AbstractShadowRenderer;->setShadowZExtend(F)V

    return-void
.end method

.method public setShadowZFadeLength(F)V
    .locals 1

    iget-object v0, p0, Lcom/jme3/shadow/AbstractShadowFilter;->shadowRenderer:Lcom/jme3/shadow/AbstractShadowRenderer;

    invoke-virtual {v0, p1}, Lcom/jme3/shadow/AbstractShadowRenderer;->setShadowZFadeLength(F)V

    return-void
.end method
