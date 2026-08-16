.class public Lif/v;
.super Lcom/jme3/app/state/AbstractAppState;
.source "SourceFile"


# static fields
.field public static final c:Ljava/util/logging/Logger;

.field public static final d:Lif/u;


# instance fields
.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jme3/app/state/AppState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lif/v;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lif/v;->c:Ljava/util/logging/Logger;

    new-instance v0, Lif/u;

    invoke-direct {v0}, Lif/u;-><init>()V

    sput-object v0, Lif/v;->d:Lif/u;

    return-void
.end method

.method public constructor <init>(Lif/h;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/jme3/app/state/AbstractAppState;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lif/v;->b:Ljava/util/List;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 5
    sget-object v1, Lif/v;->d:Lif/u;

    invoke-virtual {v1, v0}, Lif/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p0, v0}, Lcom/jme3/app/state/AbstractAppState;->setId(Ljava/lang/String;)V

    .line 7
    sget-object v0, Lif/h;->Enabled:Lif/h;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-super {p0, p1}, Lcom/jme3/app/state/AbstractAppState;->setEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Lif/h;->Enabled:Lif/h;

    goto :goto_0

    :cond_0
    sget-object p1, Lif/h;->Disabled:Lif/h;

    :goto_0
    invoke-direct {p0, p1}, Lif/v;-><init>(Lif/h;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/jme3/app/state/AppState;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lif/v;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/jme3/app/state/AppState;)Z
    .locals 1

    iget-object v0, p0, Lif/v;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final c(Lcom/jme3/app/state/AppState;)V
    .locals 4

    const-string v0, "app state"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    if-eq p1, p0, :cond_1

    invoke-interface {p1}, Lcom/jme3/app/state/AppState;->isEnabled()Z

    move-result v0

    invoke-virtual {p0}, Lif/v;->isEnabled()Z

    move-result v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lif/v;->c:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "influenced state {0} out-of-synch with {1}"

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lif/v;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "self-influence not allowed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public cleanup()V
    .locals 2

    invoke-virtual {p0}, Lif/v;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/jme3/app/state/AbstractAppState;->cleanup()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "should be initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(Lcom/jme3/app/state/AppState;)V
    .locals 1

    iget-object v0, p0, Lif/v;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public initialize(Lcom/jme3/app/state/AppStateManager;Lcom/jme3/app/Application;)V
    .locals 4

    sget-object v0, Lif/v;->c:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "initialize {0}"

    invoke-virtual {p0}, Lcom/jme3/app/state/AbstractAppState;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lif/v;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "state manager"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-interface {p2}, Lcom/jme3/app/Application;->getStateManager()Lcom/jme3/app/state/AppStateManager;

    move-result-object v0

    if-ne p1, v0, :cond_1

    invoke-super {p0, p1, p2}, Lcom/jme3/app/state/AbstractAppState;->initialize(Lcom/jme3/app/state/AppStateManager;Lcom/jme3/app/Application;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "wrong state manager"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "already initialized"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final isEnabled()Z
    .locals 1

    invoke-super {p0}, Lcom/jme3/app/state/AbstractAppState;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    invoke-super {p0}, Lcom/jme3/app/state/AbstractAppState;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public postRender()V
    .locals 2

    invoke-virtual {p0}, Lif/v;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lif/v;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/jme3/app/state/AbstractAppState;->postRender()V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "should be enabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "should be initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public render(Lcom/jme3/renderer/RenderManager;)V
    .locals 1

    const-string v0, "render manager"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-virtual {p0}, Lif/v;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lif/v;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/jme3/app/state/AbstractAppState;->render(Lcom/jme3/renderer/RenderManager;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "should be enabled"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "should be initialized"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEnabled(Z)V
    .locals 4

    invoke-virtual {p0}, Lif/v;->isEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_2

    sget-object v0, Lif/v;->c:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    const-string v2, "enable {0}"

    invoke-virtual {p0}, Lcom/jme3/app/state/AbstractAppState;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v2, "disable {0}"

    invoke-virtual {p0}, Lcom/jme3/app/state/AbstractAppState;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/jme3/app/state/AbstractAppState;->setEnabled(Z)V

    iget-object v0, p0, Lif/v;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/app/state/AppState;

    invoke-interface {v1, p1}, Lcom/jme3/app/state/AppState;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public stateAttached(Lcom/jme3/app/state/AppStateManager;)V
    .locals 4

    sget-object v0, Lif/v;->c:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "attach {0}"

    invoke-virtual {p0}, Lcom/jme3/app/state/AbstractAppState;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "state manager"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-super {p0, p1}, Lcom/jme3/app/state/AbstractAppState;->stateAttached(Lcom/jme3/app/state/AppStateManager;)V

    return-void
.end method

.method public stateDetached(Lcom/jme3/app/state/AppStateManager;)V
    .locals 4

    sget-object v0, Lif/v;->c:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "detach {0}"

    invoke-virtual {p0}, Lcom/jme3/app/state/AbstractAppState;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const-string v0, "state manager"

    invoke-static {p1, v0}, Lif/E;->t(Ljava/lang/Object;Ljava/lang/String;)Z

    invoke-super {p0, p1}, Lcom/jme3/app/state/AbstractAppState;->stateDetached(Lcom/jme3/app/state/AppStateManager;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/jme3/app/state/AbstractAppState;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lif/v;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    const-string v1, "un"

    :goto_0
    invoke-virtual {p0}, Lif/v;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "en"

    goto :goto_1

    :cond_1
    const-string v2, "dis"

    :goto_1
    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s (%sinitialized, %sabled)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(F)V
    .locals 1

    const-string v0, "time between frames"

    invoke-static {p1, v0}, Lif/E;->p(FLjava/lang/String;)Z

    invoke-virtual {p0}, Lif/v;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lif/v;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/jme3/app/state/AbstractAppState;->update(F)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "should be enabled"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "should be initialized"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
