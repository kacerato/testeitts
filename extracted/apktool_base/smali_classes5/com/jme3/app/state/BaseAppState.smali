.class public abstract Lcom/jme3/app/state/BaseAppState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jme3/app/state/AppState;


# static fields
.field private static final log:Ljava/util/logging/Logger;


# instance fields
.field private app:Lcom/jme3/app/Application;

.field private enabled:Z

.field private id:Ljava/lang/String;

.field private initialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/jme3/app/state/BaseAppState;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/jme3/app/state/BaseAppState;->log:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/jme3/app/state/BaseAppState;->enabled:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/jme3/app/state/BaseAppState;->enabled:Z

    .line 5
    iput-object p1, p0, Lcom/jme3/app/state/BaseAppState;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final cleanup()V
    .locals 3

    .line 1
    sget-object v0, Lcom/jme3/app/state/BaseAppState;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v2, "cleanup():{0}"

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lcom/jme3/app/state/BaseAppState;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    const-string v2, "onDisable():{0}"

    invoke-virtual {v0, v1, v2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lcom/jme3/app/state/BaseAppState;->onDisable()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/jme3/app/state/BaseAppState;->app:Lcom/jme3/app/Application;

    invoke-virtual {p0, v0}, Lcom/jme3/app/state/BaseAppState;->cleanup(Lcom/jme3/app/Application;)V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/jme3/app/state/BaseAppState;->initialized:Z

    return-void
.end method

.method public abstract cleanup(Lcom/jme3/app/Application;)V
.end method

.method public final getApplication()Lcom/jme3/app/Application;
    .locals 1

    iget-object v0, p0, Lcom/jme3/app/state/BaseAppState;->app:Lcom/jme3/app/Application;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jme3/app/state/BaseAppState;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getState(Ljava/lang/Class;)Lcom/jme3/app/state/AppState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/jme3/app/state/AppState;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/jme3/app/state/BaseAppState;->getState(Ljava/lang/Class;Z)Lcom/jme3/app/state/AppState;

    move-result-object p1

    return-object p1
.end method

.method public final getState(Ljava/lang/Class;Z)Lcom/jme3/app/state/AppState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/jme3/app/state/AppState;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;Z)TT;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/jme3/app/state/BaseAppState;->getStateManager()Lcom/jme3/app/state/AppStateManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/jme3/app/state/AppStateManager;->getState(Ljava/lang/Class;Z)Lcom/jme3/app/state/AppState;

    move-result-object p1

    return-object p1
.end method

.method public final getState(Ljava/lang/String;Ljava/lang/Class;)Lcom/jme3/app/state/AppState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/jme3/app/state/AppState;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, v0}, Lcom/jme3/app/state/BaseAppState;->getState(Ljava/lang/String;Ljava/lang/Class;Z)Lcom/jme3/app/state/AppState;

    move-result-object p1

    return-object p1
.end method

.method public final getState(Ljava/lang/String;Ljava/lang/Class;Z)Lcom/jme3/app/state/AppState;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/jme3/app/state/AppState;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;Z)TT;"
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/jme3/app/state/BaseAppState;->getStateManager()Lcom/jme3/app/state/AppStateManager;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/jme3/app/state/AppStateManager;->stateForId(Ljava/lang/String;Ljava/lang/Class;)Lcom/jme3/app/state/AppState;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/jme3/app/state/BaseAppState;->getStateManager()Lcom/jme3/app/state/AppStateManager;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Lcom/jme3/app/state/AppStateManager;->getState(Ljava/lang/String;Ljava/lang/Class;)Lcom/jme3/app/state/AppState;

    move-result-object p1

    return-object p1
.end method

.method public final getStateManager()Lcom/jme3/app/state/AppStateManager;
    .locals 1

    iget-object v0, p0, Lcom/jme3/app/state/BaseAppState;->app:Lcom/jme3/app/Application;

    invoke-interface {v0}, Lcom/jme3/app/Application;->getStateManager()Lcom/jme3/app/state/AppStateManager;

    move-result-object v0

    return-object v0
.end method

.method public abstract initialize(Lcom/jme3/app/Application;)V
.end method

.method public final initialize(Lcom/jme3/app/state/AppStateManager;Lcom/jme3/app/Application;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/jme3/app/state/BaseAppState;->log:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v1, "initialize():{0}"

    invoke-virtual {p1, v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 2
    iput-object p2, p0, Lcom/jme3/app/state/BaseAppState;->app:Lcom/jme3/app/Application;

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/jme3/app/state/BaseAppState;->initialized:Z

    .line 4
    invoke-virtual {p0, p2}, Lcom/jme3/app/state/BaseAppState;->initialize(Lcom/jme3/app/Application;)V

    .line 5
    invoke-virtual {p0}, Lcom/jme3/app/state/BaseAppState;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 6
    const-string p2, "onEnable():{0}"

    invoke-virtual {p1, v0, p2, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0}, Lcom/jme3/app/state/BaseAppState;->onEnable()V

    :cond_0
    return-void
.end method

.method public final isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/app/state/BaseAppState;->enabled:Z

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    iget-boolean v0, p0, Lcom/jme3/app/state/BaseAppState;->initialized:Z

    return v0
.end method

.method public abstract onDisable()V
.end method

.method public abstract onEnable()V
.end method

.method public postRender()V
    .locals 0

    return-void
.end method

.method public render(Lcom/jme3/renderer/RenderManager;)V
    .locals 0

    return-void
.end method

.method public final setEnabled(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/jme3/app/state/BaseAppState;->enabled:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/jme3/app/state/BaseAppState;->enabled:Z

    invoke-virtual {p0}, Lcom/jme3/app/state/BaseAppState;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_2

    sget-object p1, Lcom/jme3/app/state/BaseAppState;->log:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v1, "onEnable():{0}"

    invoke-virtual {p1, v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/jme3/app/state/BaseAppState;->onEnable()V

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/jme3/app/state/BaseAppState;->log:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v1, "onDisable():{0}"

    invoke-virtual {p1, v0, v1, p0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/jme3/app/state/BaseAppState;->onDisable()V

    :goto_0
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/jme3/app/state/BaseAppState;->id:Ljava/lang/String;

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
