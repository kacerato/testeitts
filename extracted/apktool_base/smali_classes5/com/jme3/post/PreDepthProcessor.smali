.class public Lcom/jme3/post/PreDepthProcessor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/post/SceneProcessor;


# instance fields
.field private final forcedRS:Lcom/jme3/material/RenderState;

.field private final preDepth:Lcom/jme3/material/Material;

.field private rm:Lcom/jme3/renderer/RenderManager;

.field private vp:Lcom/jme3/renderer/ViewPort;


# direct methods
.method public constructor <init>(Lcom/jme3/asset/AssetManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/jme3/material/Material;

    const-string v1, "Common/MatDefs/Shadow/PreShadow.j3md"

    invoke-direct {v0, p1, v1}, Lcom/jme3/material/Material;-><init>(Lcom/jme3/asset/AssetManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jme3/post/PreDepthProcessor;->preDepth:Lcom/jme3/material/Material;

    invoke-virtual {v0}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v1}, Lcom/jme3/material/RenderState;->setPolyOffset(FF)V

    invoke-virtual {v0}, Lcom/jme3/material/Material;->getAdditionalRenderState()Lcom/jme3/material/RenderState;

    move-result-object p1

    sget-object v0, Lcom/jme3/material/RenderState$FaceCullMode;->Back:Lcom/jme3/material/RenderState$FaceCullMode;

    invoke-virtual {p1, v0}, Lcom/jme3/material/RenderState;->setFaceCullMode(Lcom/jme3/material/RenderState$FaceCullMode;)V

    new-instance p1, Lcom/jme3/material/RenderState;

    invoke-direct {p1}, Lcom/jme3/material/RenderState;-><init>()V

    iput-object p1, p0, Lcom/jme3/post/PreDepthProcessor;->forcedRS:Lcom/jme3/material/RenderState;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/jme3/material/RenderState;->setDepthTest(Z)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/jme3/material/RenderState;->setDepthWrite(Z)V

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jme3/post/PreDepthProcessor;->vp:Lcom/jme3/renderer/ViewPort;

    return-void
.end method

.method public initialize(Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/ViewPort;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/post/PreDepthProcessor;->rm:Lcom/jme3/renderer/RenderManager;

    iput-object p2, p0, Lcom/jme3/post/PreDepthProcessor;->vp:Lcom/jme3/renderer/ViewPort;

    return-void
.end method

.method public isInitialized()Z
    .locals 1

    iget-object v0, p0, Lcom/jme3/post/PreDepthProcessor;->vp:Lcom/jme3/renderer/ViewPort;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public postFrame(Lcom/jme3/texture/FrameBuffer;)V
    .locals 1

    iget-object p1, p0, Lcom/jme3/post/PreDepthProcessor;->rm:Lcom/jme3/renderer/RenderManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/jme3/renderer/RenderManager;->setForcedRenderState(Lcom/jme3/material/RenderState;)V

    return-void
.end method

.method public postQueue(Lcom/jme3/renderer/queue/RenderQueue;)V
    .locals 4

    iget-object v0, p0, Lcom/jme3/post/PreDepthProcessor;->rm:Lcom/jme3/renderer/RenderManager;

    iget-object v1, p0, Lcom/jme3/post/PreDepthProcessor;->preDepth:Lcom/jme3/material/Material;

    invoke-virtual {v0, v1}, Lcom/jme3/renderer/RenderManager;->setForcedMaterial(Lcom/jme3/material/Material;)V

    sget-object v0, Lcom/jme3/renderer/queue/RenderQueue$Bucket;->Opaque:Lcom/jme3/renderer/queue/RenderQueue$Bucket;

    iget-object v1, p0, Lcom/jme3/post/PreDepthProcessor;->rm:Lcom/jme3/renderer/RenderManager;

    iget-object v2, p0, Lcom/jme3/post/PreDepthProcessor;->vp:Lcom/jme3/renderer/ViewPort;

    invoke-virtual {v2}, Lcom/jme3/renderer/ViewPort;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/jme3/renderer/queue/RenderQueue;->renderQueue(Lcom/jme3/renderer/queue/RenderQueue$Bucket;Lcom/jme3/renderer/RenderManager;Lcom/jme3/renderer/Camera;Z)V

    iget-object p1, p0, Lcom/jme3/post/PreDepthProcessor;->rm:Lcom/jme3/renderer/RenderManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/jme3/renderer/RenderManager;->setForcedMaterial(Lcom/jme3/material/Material;)V

    iget-object p1, p0, Lcom/jme3/post/PreDepthProcessor;->rm:Lcom/jme3/renderer/RenderManager;

    iget-object v0, p0, Lcom/jme3/post/PreDepthProcessor;->forcedRS:Lcom/jme3/material/RenderState;

    invoke-virtual {p1, v0}, Lcom/jme3/renderer/RenderManager;->setForcedRenderState(Lcom/jme3/material/RenderState;)V

    return-void
.end method

.method public preFrame(F)V
    .locals 0

    return-void
.end method

.method public reshape(Lcom/jme3/renderer/ViewPort;II)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/post/PreDepthProcessor;->vp:Lcom/jme3/renderer/ViewPort;

    return-void
.end method

.method public setProfiler(Lcom/jme3/profile/AppProfiler;)V
    .locals 0

    return-void
.end method
