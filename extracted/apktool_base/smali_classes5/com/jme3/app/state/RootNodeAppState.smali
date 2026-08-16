.class public Lcom/jme3/app/state/RootNodeAppState;
.super Lcom/jme3/app/state/AbstractAppState;
.source "SourceFile"


# instance fields
.field protected rootNode:Lcom/jme3/scene/Node;

.field protected viewPort:Lcom/jme3/renderer/ViewPort;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/jme3/app/state/AbstractAppState;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/jme3/renderer/ViewPort;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/jme3/app/state/AbstractAppState;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/jme3/app/state/RootNodeAppState;->viewPort:Lcom/jme3/renderer/ViewPort;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/renderer/ViewPort;Lcom/jme3/scene/Node;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/jme3/app/state/AbstractAppState;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/jme3/app/state/RootNodeAppState;->viewPort:Lcom/jme3/renderer/ViewPort;

    .line 8
    iput-object p2, p0, Lcom/jme3/app/state/RootNodeAppState;->rootNode:Lcom/jme3/scene/Node;

    return-void
.end method

.method public constructor <init>(Lcom/jme3/scene/Node;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/jme3/app/state/AbstractAppState;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/jme3/app/state/RootNodeAppState;->rootNode:Lcom/jme3/scene/Node;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/jme3/renderer/ViewPort;Lcom/jme3/scene/Node;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/jme3/app/state/AbstractAppState;-><init>(Ljava/lang/String;)V

    .line 10
    iput-object p2, p0, Lcom/jme3/app/state/RootNodeAppState;->viewPort:Lcom/jme3/renderer/ViewPort;

    .line 11
    iput-object p3, p0, Lcom/jme3/app/state/RootNodeAppState;->rootNode:Lcom/jme3/scene/Node;

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    iget-object v0, p0, Lcom/jme3/app/state/RootNodeAppState;->viewPort:Lcom/jme3/renderer/ViewPort;

    iget-object v1, p0, Lcom/jme3/app/state/RootNodeAppState;->rootNode:Lcom/jme3/scene/Node;

    invoke-virtual {v0, v1}, Lcom/jme3/renderer/ViewPort;->detachScene(Lcom/jme3/scene/Spatial;)V

    invoke-super {p0}, Lcom/jme3/app/state/AbstractAppState;->cleanup()V

    return-void
.end method

.method public getRootNode()Lcom/jme3/scene/Node;
    .locals 1

    iget-object v0, p0, Lcom/jme3/app/state/RootNodeAppState;->rootNode:Lcom/jme3/scene/Node;

    return-object v0
.end method

.method public getViewPort()Lcom/jme3/renderer/ViewPort;
    .locals 1

    iget-object v0, p0, Lcom/jme3/app/state/RootNodeAppState;->viewPort:Lcom/jme3/renderer/ViewPort;

    return-object v0
.end method

.method public initialize(Lcom/jme3/app/state/AppStateManager;Lcom/jme3/app/Application;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/app/state/RootNodeAppState;->rootNode:Lcom/jme3/scene/Node;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jme3/scene/Node;

    const-string v1, "Root Node"

    invoke-direct {v0, v1}, Lcom/jme3/scene/Node;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/jme3/app/state/RootNodeAppState;->rootNode:Lcom/jme3/scene/Node;

    :cond_0
    iget-object v0, p0, Lcom/jme3/app/state/RootNodeAppState;->viewPort:Lcom/jme3/renderer/ViewPort;

    if-nez v0, :cond_1

    invoke-interface {p2}, Lcom/jme3/app/Application;->getViewPort()Lcom/jme3/renderer/ViewPort;

    move-result-object v0

    iput-object v0, p0, Lcom/jme3/app/state/RootNodeAppState;->viewPort:Lcom/jme3/renderer/ViewPort;

    :cond_1
    iget-object v0, p0, Lcom/jme3/app/state/RootNodeAppState;->viewPort:Lcom/jme3/renderer/ViewPort;

    iget-object v1, p0, Lcom/jme3/app/state/RootNodeAppState;->rootNode:Lcom/jme3/scene/Node;

    invoke-virtual {v0, v1}, Lcom/jme3/renderer/ViewPort;->attachScene(Lcom/jme3/scene/Spatial;)V

    invoke-super {p0, p1, p2}, Lcom/jme3/app/state/AbstractAppState;->initialize(Lcom/jme3/app/state/AppStateManager;Lcom/jme3/app/Application;)V

    return-void
.end method

.method public update(F)V
    .locals 1

    invoke-super {p0, p1}, Lcom/jme3/app/state/AbstractAppState;->update(F)V

    iget-object v0, p0, Lcom/jme3/app/state/RootNodeAppState;->rootNode:Lcom/jme3/scene/Node;

    invoke-virtual {v0, p1}, Lcom/jme3/scene/Node;->updateLogicalState(F)V

    iget-object p1, p0, Lcom/jme3/app/state/RootNodeAppState;->rootNode:Lcom/jme3/scene/Node;

    invoke-virtual {p1}, Lcom/jme3/scene/Node;->updateGeometricState()V

    return-void
.end method
