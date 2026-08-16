.class public interface abstract Lcom/github/javaparser/ast/nodeTypes/NodeWithScope;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/ast/nodeTypes/NodeWithTraversableScope;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lcom/github/javaparser/ast/Node;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/github/javaparser/ast/nodeTypes/NodeWithTraversableScope;"
    }
.end annotation


# virtual methods
.method public abstract getScope()Lcom/github/javaparser/ast/expr/Expression;
.end method

.method public abstract setScope(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scope"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/expr/Expression;",
            ")TN;"
        }
    .end annotation
.end method

.method public traverseScope()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/expr/Expression;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithScope;->getScope()Lcom/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method
