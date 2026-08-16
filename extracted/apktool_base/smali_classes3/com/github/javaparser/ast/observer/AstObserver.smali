.class public interface abstract Lcom/github/javaparser/ast/observer/AstObserver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/javaparser/ast/observer/AstObserver$ListChangeType;
    }
.end annotation


# virtual methods
.method public abstract listChange(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/observer/AstObserver$ListChangeType;ILcom/github/javaparser/ast/Node;)V
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
.end method

.method public abstract listReplacement(Lcom/github/javaparser/ast/NodeList;ILcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V
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
.end method

.method public abstract parentChange(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V
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
.end method

.method public abstract propertyChange(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V
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
.end method
