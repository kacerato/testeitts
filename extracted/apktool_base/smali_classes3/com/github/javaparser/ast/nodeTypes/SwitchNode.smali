.class public interface abstract Lcom/github/javaparser/ast/nodeTypes/SwitchNode;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract clone()Lcom/github/javaparser/ast/nodeTypes/SwitchNode;
.end method

.method public abstract getComment()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/comments/Comment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEntries()Lcom/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/stmt/SwitchEntry;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEntry(I)Lcom/github/javaparser/ast/stmt/SwitchEntry;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation
.end method

.method public abstract getSelector()Lcom/github/javaparser/ast/expr/Expression;
.end method

.method public isEmpty()Z
    .locals 1

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/SwitchNode;->getEntries()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public abstract remove(Lcom/github/javaparser/ast/Node;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "node"
        }
    .end annotation
.end method

.method public abstract replace(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "replacementNode"
        }
    .end annotation
.end method

.method public abstract setEntries(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/nodeTypes/SwitchNode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entries"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/stmt/SwitchEntry;",
            ">;)",
            "Lcom/github/javaparser/ast/nodeTypes/SwitchNode;"
        }
    .end annotation
.end method

.method public abstract setSelector(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/nodeTypes/SwitchNode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selector"
        }
    .end annotation
.end method
