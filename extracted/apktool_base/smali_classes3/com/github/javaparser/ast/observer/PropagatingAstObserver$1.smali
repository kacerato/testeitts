.class final Lcom/github/javaparser/ast/observer/PropagatingAstObserver$1;
.super Lcom/github/javaparser/ast/observer/PropagatingAstObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/javaparser/ast/observer/PropagatingAstObserver;->transformInPropagatingObserver(Lcom/github/javaparser/ast/observer/AstObserver;)Lcom/github/javaparser/ast/observer/PropagatingAstObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$observer:Lcom/github/javaparser/ast/observer/AstObserver;


# direct methods
.method public constructor <init>(Lcom/github/javaparser/ast/observer/AstObserver;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$observer"
        }
    .end annotation

    iput-object p1, p0, Lcom/github/javaparser/ast/observer/PropagatingAstObserver$1;->val$observer:Lcom/github/javaparser/ast/observer/AstObserver;

    invoke-direct {p0}, Lcom/github/javaparser/ast/observer/PropagatingAstObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public concreteListChange(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/observer/AstObserver$ListChangeType;ILcom/github/javaparser/ast/Node;)V
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

    iget-object v0, p0, Lcom/github/javaparser/ast/observer/PropagatingAstObserver$1;->val$observer:Lcom/github/javaparser/ast/observer/AstObserver;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/github/javaparser/ast/observer/AstObserver;->listChange(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/observer/AstObserver$ListChangeType;ILcom/github/javaparser/ast/Node;)V

    return-void
.end method

.method public concretePropertyChange(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V
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
            "property",
            "oldValue",
            "newValue"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/ast/observer/PropagatingAstObserver$1;->val$observer:Lcom/github/javaparser/ast/observer/AstObserver;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/github/javaparser/ast/observer/AstObserver;->propertyChange(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public parentChange(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V
    .locals 1
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

    iget-object v0, p0, Lcom/github/javaparser/ast/observer/PropagatingAstObserver$1;->val$observer:Lcom/github/javaparser/ast/observer/AstObserver;

    invoke-interface {v0, p1, p2, p3}, Lcom/github/javaparser/ast/observer/AstObserver;->parentChange(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V

    return-void
.end method
