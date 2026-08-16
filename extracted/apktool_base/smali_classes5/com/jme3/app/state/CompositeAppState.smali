.class public Lcom/jme3/app/state/CompositeAppState;
.super Lcom/jme3/app/state/BaseAppState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jme3/app/state/CompositeAppState$AppStateEntry;
    }
.end annotation


# instance fields
.field private attached:Z

.field private childrenEnabled:Z

.field private stateManager:Lcom/jme3/app/state/AppStateManager;

.field private final states:Lcom/jme3/util/SafeArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jme3/util/SafeArrayList<",
            "Lcom/jme3/app/state/CompositeAppState$AppStateEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>([Lcom/jme3/app/state/AppState;)V
    .locals 6

    invoke-direct {p0}, Lcom/jme3/app/state/BaseAppState;-><init>()V

    new-instance v0, Lcom/jme3/util/SafeArrayList;

    const-class v1, Lcom/jme3/app/state/CompositeAppState$AppStateEntry;

    invoke-direct {v0, v1}, Lcom/jme3/util/SafeArrayList;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/jme3/app/state/CompositeAppState;->states:Lcom/jme3/util/SafeArrayList;

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    iget-object v4, p0, Lcom/jme3/app/state/CompositeAppState;->states:Lcom/jme3/util/SafeArrayList;

    new-instance v5, Lcom/jme3/app/state/CompositeAppState$AppStateEntry;

    invoke-direct {v5, p0, v3, v1}, Lcom/jme3/app/state/CompositeAppState$AppStateEntry;-><init>(Lcom/jme3/app/state/CompositeAppState;Lcom/jme3/app/state/AppState;Z)V

    invoke-virtual {v4, v5}, Lcom/jme3/util/SafeArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private entry(Lcom/jme3/app/state/AppState;)Lcom/jme3/app/state/CompositeAppState$AppStateEntry;
    .locals 5

    iget-object v0, p0, Lcom/jme3/app/state/CompositeAppState;->states:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/app/state/CompositeAppState$AppStateEntry;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/jme3/app/state/CompositeAppState$AppStateEntry;->state:Lcom/jme3/app/state/AppState;

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private indexOf(Lcom/jme3/app/state/AppState;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/jme3/app/state/CompositeAppState;->states:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/jme3/app/state/CompositeAppState;->states:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1, v0}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/app/state/CompositeAppState$AppStateEntry;

    iget-object v1, v1, Lcom/jme3/app/state/CompositeAppState$AppStateEntry;->state:Lcom/jme3/app/state/AppState;

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public addChild(Lcom/jme3/app/state/AppState;)Lcom/jme3/app/state/AppState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/jme3/app/state/AppState;",
            ">(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/jme3/app/state/CompositeAppState;->addChild(Lcom/jme3/app/state/AppState;Z)Lcom/jme3/app/state/AppState;

    move-result-object p1

    return-object p1
.end method

.method public addChild(Lcom/jme3/app/state/AppState;Z)Lcom/jme3/app/state/AppState;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/jme3/app/state/AppState;",
            ">(TT;Z)TT;"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/jme3/app/state/CompositeAppState;->indexOf(Lcom/jme3/app/state/AppState;)I

    move-result v0

    if-ltz v0, :cond_0

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/jme3/app/state/CompositeAppState;->states:Lcom/jme3/util/SafeArrayList;

    new-instance v1, Lcom/jme3/app/state/CompositeAppState$AppStateEntry;

    invoke-direct {v1, p0, p1, p2}, Lcom/jme3/app/state/CompositeAppState$AppStateEntry;-><init>(Lcom/jme3/app/state/CompositeAppState;Lcom/jme3/app/state/AppState;Z)V

    invoke-virtual {v0, v1}, Lcom/jme3/util/SafeArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-boolean p2, p0, Lcom/jme3/app/state/CompositeAppState;->attached:Z

    if-eqz p2, :cond_1

    .line 5
    iget-object p2, p0, Lcom/jme3/app/state/CompositeAppState;->stateManager:Lcom/jme3/app/state/AppStateManager;

    invoke-virtual {p2, p1}, Lcom/jme3/app/state/AppStateManager;->attach(Lcom/jme3/app/state/AppState;)Z

    :cond_1
    return-object p1
.end method

.method public cleanup(Lcom/jme3/app/Application;)V
    .locals 0

    return-void
.end method

.method public clearChildren()V
    .locals 4

    iget-object v0, p0, Lcom/jme3/app/state/CompositeAppState;->states:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/app/state/CompositeAppState$AppStateEntry;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v3, v3, Lcom/jme3/app/state/CompositeAppState$AppStateEntry;->state:Lcom/jme3/app/state/AppState;

    invoke-virtual {p0, v3}, Lcom/jme3/app/state/CompositeAppState;->removeChild(Lcom/jme3/app/state/AppState;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getChild(Ljava/lang/Class;)Lcom/jme3/app/state/AppState;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/jme3/app/state/AppState;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/jme3/app/state/CompositeAppState;->states:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/app/state/CompositeAppState$AppStateEntry;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget-object v4, v3, Lcom/jme3/app/state/CompositeAppState$AppStateEntry;->state:Lcom/jme3/app/state/AppState;

    invoke-virtual {p1, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v0, v3, Lcom/jme3/app/state/CompositeAppState$AppStateEntry;->state:Lcom/jme3/app/state/AppState;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/jme3/app/state/AppState;

    return-object p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public initialize(Lcom/jme3/app/Application;)V
    .locals 0

    return-void
.end method

.method public onDisable()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/jme3/app/state/CompositeAppState;->setChildrenEnabled(Z)V

    return-void
.end method

.method public onEnable()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/jme3/app/state/CompositeAppState;->setChildrenEnabled(Z)V

    return-void
.end method

.method public removeChild(Lcom/jme3/app/state/AppState;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/jme3/app/state/CompositeAppState;->indexOf(Lcom/jme3/app/state/AppState;)I

    move-result v0

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/jme3/app/state/CompositeAppState;->states:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1, v0}, Lcom/jme3/util/SafeArrayList;->remove(I)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/jme3/app/state/CompositeAppState;->attached:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jme3/app/state/CompositeAppState;->stateManager:Lcom/jme3/app/state/AppStateManager;

    invoke-virtual {v0, p1}, Lcom/jme3/app/state/AppStateManager;->detach(Lcom/jme3/app/state/AppState;)Z

    :cond_1
    return-void
.end method

.method public setChildrenEnabled(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/jme3/app/state/CompositeAppState;->childrenEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/jme3/app/state/CompositeAppState;->childrenEnabled:Z

    iget-object v0, p0, Lcom/jme3/app/state/CompositeAppState;->states:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/app/state/CompositeAppState$AppStateEntry;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/jme3/app/state/CompositeAppState$AppStateEntry;->setEnabled(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setOverrideEnabled(Lcom/jme3/app/state/AppState;Z)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/jme3/app/state/CompositeAppState;->entry(Lcom/jme3/app/state/AppState;)Lcom/jme3/app/state/CompositeAppState$AppStateEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/jme3/app/state/CompositeAppState$AppStateEntry;->override:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/jme3/app/state/CompositeAppState$AppStateEntry;->override:Z

    iget-object p1, v0, Lcom/jme3/app/state/CompositeAppState$AppStateEntry;->state:Lcom/jme3/app/state/AppState;

    invoke-virtual {p0}, Lcom/jme3/app/state/BaseAppState;->isEnabled()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/jme3/app/state/AppState;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State not managed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public stateAttached(Lcom/jme3/app/state/AppStateManager;)V
    .locals 4

    iput-object p1, p0, Lcom/jme3/app/state/CompositeAppState;->stateManager:Lcom/jme3/app/state/AppStateManager;

    iget-object v0, p0, Lcom/jme3/app/state/CompositeAppState;->states:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->getArray()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jme3/app/state/CompositeAppState$AppStateEntry;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    iget-object v3, v3, Lcom/jme3/app/state/CompositeAppState$AppStateEntry;->state:Lcom/jme3/app/state/AppState;

    invoke-virtual {p1, v3}, Lcom/jme3/app/state/AppStateManager;->attach(Lcom/jme3/app/state/AppState;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/jme3/app/state/CompositeAppState;->attached:Z

    return-void
.end method

.method public stateDetached(Lcom/jme3/app/state/AppStateManager;)V
    .locals 2

    iget-object v0, p0, Lcom/jme3/app/state/CompositeAppState;->states:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v0}, Lcom/jme3/util/SafeArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/jme3/app/state/CompositeAppState;->states:Lcom/jme3/util/SafeArrayList;

    invoke-virtual {v1, v0}, Lcom/jme3/util/SafeArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/jme3/app/state/CompositeAppState$AppStateEntry;

    iget-object v1, v1, Lcom/jme3/app/state/CompositeAppState$AppStateEntry;->state:Lcom/jme3/app/state/AppState;

    invoke-virtual {p1, v1}, Lcom/jme3/app/state/AppStateManager;->detach(Lcom/jme3/app/state/AppState;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/jme3/app/state/CompositeAppState;->attached:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/jme3/app/state/CompositeAppState;->stateManager:Lcom/jme3/app/state/AppStateManager;

    return-void
.end method
