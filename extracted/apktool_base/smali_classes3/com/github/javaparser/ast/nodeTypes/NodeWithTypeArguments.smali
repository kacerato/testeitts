.class public interface abstract Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;
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
.method public abstract getTypeArguments()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/type/Type;",
            ">;>;"
        }
    .end annotation
.end method

.method public isUsingDiamondOperator()Z
    .locals 1
    .annotation runtime Lcom/github/javaparser/metamodel/DerivedProperty;
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;->getTypeArguments()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;->getTypeArguments()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/NodeList;

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeTypeArguments()Lcom/github/javaparser/ast/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;->setTypeArguments(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public setDiamondOperator()Lcom/github/javaparser/ast/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    invoke-interface {p0, v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;->setTypeArguments(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/Node;

    move-result-object v0

    return-object v0
.end method

.method public abstract setTypeArguments(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeArguments"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/type/Type;",
            ">;)TN;"
        }
    .end annotation
.end method

.method public varargs setTypeArguments([Lcom/github/javaparser/ast/type/Type;)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeArguments"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/github/javaparser/ast/type/Type;",
            ")TN;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/github/javaparser/ast/NodeList;->nodeList([Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;->setTypeArguments(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method
