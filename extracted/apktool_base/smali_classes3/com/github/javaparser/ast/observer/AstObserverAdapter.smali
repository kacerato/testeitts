.class public abstract Lcom/github/javaparser/ast/observer/AstObserverAdapter;
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


# virtual methods
.method public listChange(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/observer/AstObserver$ListChangeType;ILcom/github/javaparser/ast/Node;)V
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

.method public propertyChange(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V
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
