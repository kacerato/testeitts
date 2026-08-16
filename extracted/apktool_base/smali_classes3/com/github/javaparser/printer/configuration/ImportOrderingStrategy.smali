.class public interface abstract Lcom/github/javaparser/printer/configuration/ImportOrderingStrategy;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract isSortImportsAlphabetically()Z
.end method

.method public abstract setSortImportsAlphabetically(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sortAlphabetically"
        }
    .end annotation
.end method

.method public abstract sortImports(Lcom/github/javaparser/ast/NodeList;)Ljava/util/List;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imports"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/ImportDeclaration;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/ImportDeclaration;",
            ">;>;"
        }
    .end annotation
.end method
