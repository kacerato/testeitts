.class public Lif/y;
.super Lif/v;
.source "SourceFile"


# static fields
.field public static final p:Ljava/util/logging/Logger;

.field public static final synthetic q:Z


# instance fields
.field public e:Lcom/jme3/app/state/AppStateManager;

.field public f:Lcom/jme3/asset/AssetManager;

.field public g:Lcom/jme3/renderer/Camera;

.field public h:Lcom/jme3/input/FlyByCamera;

.field public i:Lcom/jme3/input/InputManager;

.field public j:Lcom/jme3/scene/Node;

.field public k:Lcom/jme3/scene/Node;

.field public l:Lcom/jme3/renderer/RenderManager;

.field public m:Lcom/jme3/app/SimpleApplication;

.field public n:Lcom/jme3/renderer/ViewPort;

.field public o:Lcom/jme3/renderer/ViewPort;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lif/y;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lif/y;->p:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lif/h;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lif/v;-><init>(Lif/h;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lif/v;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public e()V
    .locals 1

    iget-object v0, p0, Lif/y;->m:Lcom/jme3/app/SimpleApplication;

    invoke-virtual {v0}, Lcom/jme3/app/LegacyApplication;->getStateManager()Lcom/jme3/app/state/AppStateManager;

    move-result-object v0

    iput-object v0, p0, Lif/y;->e:Lcom/jme3/app/state/AppStateManager;

    iget-object v0, p0, Lif/y;->m:Lcom/jme3/app/SimpleApplication;

    invoke-virtual {v0}, Lcom/jme3/app/LegacyApplication;->getAssetManager()Lcom/jme3/asset/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lif/y;->f:Lcom/jme3/asset/AssetManager;

    iget-object v0, p0, Lif/y;->m:Lcom/jme3/app/SimpleApplication;

    invoke-virtual {v0}, Lcom/jme3/app/LegacyApplication;->getCamera()Lcom/jme3/renderer/Camera;

    move-result-object v0

    iput-object v0, p0, Lif/y;->g:Lcom/jme3/renderer/Camera;

    iget-object v0, p0, Lif/y;->m:Lcom/jme3/app/SimpleApplication;

    invoke-virtual {v0}, Lcom/jme3/app/SimpleApplication;->getFlyByCamera()Lcom/jme3/input/FlyByCamera;

    move-result-object v0

    iput-object v0, p0, Lif/y;->h:Lcom/jme3/input/FlyByCamera;

    iget-object v0, p0, Lif/y;->m:Lcom/jme3/app/SimpleApplication;

    invoke-virtual {v0}, Lcom/jme3/app/LegacyApplication;->getInputManager()Lcom/jme3/input/InputManager;

    move-result-object v0

    iput-object v0, p0, Lif/y;->i:Lcom/jme3/input/InputManager;

    iget-object v0, p0, Lif/y;->m:Lcom/jme3/app/SimpleApplication;

    invoke-virtual {v0}, Lcom/jme3/app/SimpleApplication;->getGuiNode()Lcom/jme3/scene/Node;

    move-result-object v0

    iput-object v0, p0, Lif/y;->j:Lcom/jme3/scene/Node;

    iget-object v0, p0, Lif/y;->m:Lcom/jme3/app/SimpleApplication;

    invoke-virtual {v0}, Lcom/jme3/app/SimpleApplication;->getRootNode()Lcom/jme3/scene/Node;

    move-result-object v0

    iput-object v0, p0, Lif/y;->k:Lcom/jme3/scene/Node;

    iget-object v0, p0, Lif/y;->m:Lcom/jme3/app/SimpleApplication;

    invoke-virtual {v0}, Lcom/jme3/app/LegacyApplication;->getRenderManager()Lcom/jme3/renderer/RenderManager;

    move-result-object v0

    iput-object v0, p0, Lif/y;->l:Lcom/jme3/renderer/RenderManager;

    iget-object v0, p0, Lif/y;->m:Lcom/jme3/app/SimpleApplication;

    invoke-virtual {v0}, Lcom/jme3/app/LegacyApplication;->getGuiViewPort()Lcom/jme3/renderer/ViewPort;

    move-result-object v0

    iput-object v0, p0, Lif/y;->n:Lcom/jme3/renderer/ViewPort;

    iget-object v0, p0, Lif/y;->m:Lcom/jme3/app/SimpleApplication;

    invoke-virtual {v0}, Lcom/jme3/app/LegacyApplication;->getViewPort()Lcom/jme3/renderer/ViewPort;

    move-result-object v0

    iput-object v0, p0, Lif/y;->o:Lcom/jme3/renderer/ViewPort;

    return-void
.end method

.method public initialize(Lcom/jme3/app/state/AppStateManager;Lcom/jme3/app/Application;)V
    .locals 1

    instance-of v0, p2, Lcom/jme3/app/SimpleApplication;

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lif/v;->initialize(Lcom/jme3/app/state/AppStateManager;Lcom/jme3/app/Application;)V

    check-cast p2, Lcom/jme3/app/SimpleApplication;

    iput-object p2, p0, Lif/y;->m:Lcom/jme3/app/SimpleApplication;

    invoke-virtual {p0}, Lif/y;->e()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "application should be a SimpleApplication"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public render(Lcom/jme3/renderer/RenderManager;)V
    .locals 1

    iget-object v0, p0, Lif/y;->l:Lcom/jme3/renderer/RenderManager;

    if-ne p1, v0, :cond_0

    invoke-super {p0, p1}, Lif/v;->render(Lcom/jme3/renderer/RenderManager;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "wrong render manager"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public stateDetached(Lcom/jme3/app/state/AppStateManager;)V
    .locals 1

    iget-object v0, p0, Lif/y;->e:Lcom/jme3/app/state/AppStateManager;

    if-ne p1, v0, :cond_0

    invoke-super {p0, p1}, Lif/v;->stateDetached(Lcom/jme3/app/state/AppStateManager;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "wrong state manager"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
