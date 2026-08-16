.class public abstract Lcom/github/javaparser/ast/observer/PropagatingAstObserver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/ast/observer/AstObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private considerAdding(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    instance-of v0, p1, Lcom/github/javaparser/ast/Node;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/github/javaparser/ast/Node;

    invoke-virtual {p1, p0}, Lcom/github/javaparser/ast/Node;->registerForSubtree(Lcom/github/javaparser/ast/observer/AstObserver;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/github/javaparser/ast/observer/Observable;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/github/javaparser/ast/observer/Observable;

    invoke-interface {p1, p0}, Lcom/github/javaparser/ast/observer/Observable;->register(Lcom/github/javaparser/ast/observer/AstObserver;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private considerRemoving(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    instance-of v0, p1, Lcom/github/javaparser/ast/observer/Observable;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/github/javaparser/ast/observer/Observable;

    invoke-interface {p1, p0}, Lcom/github/javaparser/ast/observer/Observable;->isRegistered(Lcom/github/javaparser/ast/observer/AstObserver;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Lcom/github/javaparser/ast/observer/Observable;->unregister(Lcom/github/javaparser/ast/observer/AstObserver;)V

    :cond_0
    return-void
.end method

.method public static transformInPropagatingObserver(Lcom/github/javaparser/ast/observer/AstObserver;)Lcom/github/javaparser/ast/observer/PropagatingAstObserver;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "observer"
        }
    .end annotation

    instance-of v0, p0, Lcom/github/javaparser/ast/observer/PropagatingAstObserver;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/github/javaparser/ast/observer/PropagatingAstObserver;

    return-object p0

    :cond_0
    new-instance v0, Lcom/github/javaparser/ast/observer/PropagatingAstObserver$1;

    invoke-direct {v0, p0}, Lcom/github/javaparser/ast/observer/PropagatingAstObserver$1;-><init>(Lcom/github/javaparser/ast/observer/AstObserver;)V

    return-object v0
.end method


# virtual methods
.method public concreteListChange(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/observer/AstObserver$ListChangeType;ILcom/github/javaparser/ast/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "observedNode",
            "type",
            "index",
            "nodeAddedOrRemoved"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "*>;",
            "Lcom/github/javaparser/ast/observer/AstObserver$ListChangeType;",
            "I",
            "Lcom/github/javaparser/ast/Node;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public concreteListReplacement(Lcom/github/javaparser/ast/NodeList;ILcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "observedNode",
            "index",
            "oldValue",
            "newValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "*>;I",
            "Lcom/github/javaparser/ast/Node;",
            "Lcom/github/javaparser/ast/Node;",
            ")V"
        }
    .end annotation

    return-void
.end method

.method public concretePropertyChange(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "observedNode",
            "property",
            "oldValue",
            "newValue"
        }
    .end annotation

    return-void
.end method

.method public final listChange(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/observer/AstObserver$ListChangeType;ILcom/github/javaparser/ast/Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "observedNode",
            "type",
            "index",
            "nodeAddedOrRemoved"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "*>;",
            "Lcom/github/javaparser/ast/observer/AstObserver$ListChangeType;",
            "I",
            "Lcom/github/javaparser/ast/Node;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/ast/observer/AstObserver$ListChangeType;->REMOVAL:Lcom/github/javaparser/ast/observer/AstObserver$ListChangeType;

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p4}, Lcom/github/javaparser/ast/observer/PropagatingAstObserver;->considerRemoving(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/github/javaparser/ast/observer/AstObserver$ListChangeType;->ADDITION:Lcom/github/javaparser/ast/observer/AstObserver$ListChangeType;

    if-ne p2, v0, :cond_1

    invoke-direct {p0, p4}, Lcom/github/javaparser/ast/observer/PropagatingAstObserver;->considerAdding(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/github/javaparser/ast/observer/PropagatingAstObserver;->concreteListChange(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/observer/AstObserver$ListChangeType;ILcom/github/javaparser/ast/Node;)V

    return-void
.end method

.method public listReplacement(Lcom/github/javaparser/ast/NodeList;ILcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "observedNode",
            "index",
            "oldNode",
            "newNode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "*>;I",
            "Lcom/github/javaparser/ast/Node;",
            "Lcom/github/javaparser/ast/Node;",
            ")V"
        }
    .end annotation

    if-ne p3, p4, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p3}, Lcom/github/javaparser/ast/observer/PropagatingAstObserver;->considerRemoving(Ljava/lang/Object;)V

    invoke-direct {p0, p4}, Lcom/github/javaparser/ast/observer/PropagatingAstObserver;->considerAdding(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/github/javaparser/ast/observer/PropagatingAstObserver;->concreteListReplacement(Lcom/github/javaparser/ast/NodeList;ILcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-void
.end method

.method public parentChange(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "observedNode",
            "previousParent",
            "newParent"
        }
    .end annotation

    return-void
.end method

.method public final propertyChange(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "observedNode",
            "property",
            "oldValue",
            "newValue"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/github/javaparser/ast/observer/PropagatingAstObserver;->considerRemoving(Ljava/lang/Object;)V

    invoke-direct {p0, p4}, Lcom/github/javaparser/ast/observer/PropagatingAstObserver;->considerAdding(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/github/javaparser/ast/observer/PropagatingAstObserver;->concretePropertyChange(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
