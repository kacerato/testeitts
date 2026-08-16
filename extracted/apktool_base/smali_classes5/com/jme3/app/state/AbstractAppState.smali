.class public abstract Lcom/jme3/app/state/AbstractAppState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/app/state/AppState;


# instance fields
.field private enabled:Z

.field private id:Ljava/lang/String;

.field protected initialized:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/jme3/app/state/AbstractAppState;->initialized:Z

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/jme3/app/state/AbstractAppState;->enabled:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/jme3/app/state/AbstractAppState;->initialized:Z

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/jme3/app/state/AbstractAppState;->enabled:Z

    .line 7
    iput-object p1, p0, Lcom/jme3/app/state/AbstractAppState;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jme3/app/state/AbstractAppState;->initialized:Z

    return-void
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/app/state/AbstractAppState;->id:Ljava/lang/String;

    return-object v0
.end method

.method public initialize(Lcom/jme3/app/state/AppStateManager;Lcom/jme3/app/Application;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/jme3/app/state/AbstractAppState;->initialized:Z

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/app/state/AbstractAppState;->enabled:Z

    return v0
.end method

.method public isInitialized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/app/state/AbstractAppState;->initialized:Z

    return v0
.end method

.method public postRender()V
    .locals 0

    return-void
.end method

.method public render(Lcom/jme3/renderer/RenderManager;)V
    .locals 0

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/jme3/app/state/AbstractAppState;->enabled:Z

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/app/state/AbstractAppState;->id:Ljava/lang/String;

    return-void
.end method

.method public stateAttached(Lcom/jme3/app/state/AppStateManager;)V
    .locals 0

    return-void
.end method

.method public stateDetached(Lcom/jme3/app/state/AppStateManager;)V
    .locals 0

    return-void
.end method

.method public update(F)V
    .locals 0

    return-void
.end method
