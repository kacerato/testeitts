.class public interface abstract Lcom/github/javaparser/ast/nodeTypes/NodeWithSimpleName;
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
.method public abstract getName()Lcom/github/javaparser/ast/expr/SimpleName;
.end method

.method public getNameAsExpression()Lcom/github/javaparser/ast/expr/NameExpr;
    .locals 2

    new-instance v0, Lcom/github/javaparser/ast/expr/NameExpr;

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithSimpleName;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/github/javaparser/ast/expr/NameExpr;-><init>(Lcom/github/javaparser/ast/expr/SimpleName;)V

    return-object v0
.end method

.method public getNameAsString()Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithSimpleName;->getName()Lcom/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/expr/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract setName(Lcom/github/javaparser/ast/expr/SimpleName;)Lcom/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/expr/SimpleName;",
            ")TN;"
        }
    .end annotation
.end method

.method public setName(Ljava/lang/String;)Lcom/github/javaparser/ast/Node;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
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
    invoke-static {p1}, Lcom/github/javaparser/utils/Utils;->assertNonEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    new-instance v0, Lcom/github/javaparser/ast/expr/SimpleName;

    invoke-direct {v0, p1}, Lcom/github/javaparser/ast/expr/SimpleName;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithSimpleName;->setName(Lcom/github/javaparser/ast/expr/SimpleName;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method
