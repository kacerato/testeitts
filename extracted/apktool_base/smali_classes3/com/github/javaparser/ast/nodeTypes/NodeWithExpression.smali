.class public interface abstract Lcom/github/javaparser/ast/nodeTypes/NodeWithExpression;
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
.method public abstract getExpression()Lcom/github/javaparser/ast/expr/Expression;
.end method

.method public abstract setExpression(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expression"
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

.method public setExpression(Ljava/lang/String;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expression"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TN;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/github/javaparser/StaticJavaParser;->parseExpression(Ljava/lang/String;)Lcom/github/javaparser/ast/expr/Expression;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithExpression;->setExpression(Lcom/github/javaparser/ast/expr/Expression;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method
