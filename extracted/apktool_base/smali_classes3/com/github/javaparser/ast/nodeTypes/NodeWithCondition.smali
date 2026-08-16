.class public interface abstract Lcom/github/javaparser/ast/nodeTypes/NodeWithCondition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lcom/github/javaparser/ast/Node;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getCondition()Lcom/github/javaparser/ast/expr/Expression;
.end method

.method public abstract setCondition(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "condition"
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
