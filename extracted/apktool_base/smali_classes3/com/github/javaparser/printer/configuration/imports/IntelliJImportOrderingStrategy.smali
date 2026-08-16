.class public Lcom/github/javaparser/printer/configuration/imports/IntelliJImportOrderingStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/printer/configuration/ImportOrderingStrategy;


# instance fields
.field private sortImportsAlphabetically:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/javaparser/printer/configuration/imports/IntelliJImportOrderingStrategy;->sortImportsAlphabetically:Z

    return-void
.end method


# virtual methods
.method public isSortImportsAlphabetically()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/javaparser/printer/configuration/imports/IntelliJImportOrderingStrategy;->sortImportsAlphabetically:Z

    return v0
.end method

.method public setSortImportsAlphabetically(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sortAlphabetically"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/github/javaparser/printer/configuration/imports/IntelliJImportOrderingStrategy;->sortImportsAlphabetically:Z

    return-void
.end method

.method public sortImports(Lcom/github/javaparser/ast/NodeList;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nodes"
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

    new-instance v0, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    new-instance v1, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v1}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    new-instance v2, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v2}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/ast/ImportDeclaration;

    invoke-virtual {v3}, Lcom/github/javaparser/ast/ImportDeclaration;->isStatic()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v3}, Lcom/github/javaparser/ast/NodeList;->add(Lcom/github/javaparser/ast/Node;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Lcom/github/javaparser/ast/nodeTypes/NodeWithName;->getNameAsString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "java."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "javax."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Lcom/github/javaparser/ast/NodeList;->add(Lcom/github/javaparser/ast/Node;)Z

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v1, v3}, Lcom/github/javaparser/ast/NodeList;->add(Lcom/github/javaparser/ast/Node;)Z

    goto :goto_0

    :cond_3
    iget-boolean p1, p0, Lcom/github/javaparser/printer/configuration/imports/IntelliJImportOrderingStrategy;->sortImportsAlphabetically:Z

    if-eqz p1, :cond_4

    new-instance p1, Lcom/github/javaparser/printer/P;

    invoke-direct {p1}, Lcom/github/javaparser/printer/P;-><init>()V

    invoke-static {p1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/javaparser/ast/NodeList;->sort(Ljava/util/Comparator;)V

    invoke-virtual {v1, p1}, Lcom/github/javaparser/ast/NodeList;->sort(Ljava/util/Comparator;)V

    invoke-virtual {v2, p1}, Lcom/github/javaparser/ast/NodeList;->sort(Ljava/util/Comparator;)V

    :cond_4
    filled-new-array {v0, v1, v2}, [Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
