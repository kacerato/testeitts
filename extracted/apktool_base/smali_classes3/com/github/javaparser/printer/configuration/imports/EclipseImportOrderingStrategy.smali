.class public Lcom/github/javaparser/printer/configuration/imports/EclipseImportOrderingStrategy;
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

    iput-boolean v0, p0, Lcom/github/javaparser/printer/configuration/imports/EclipseImportOrderingStrategy;->sortImportsAlphabetically:Z

    return-void
.end method


# virtual methods
.method public isSortImportsAlphabetically()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/javaparser/printer/configuration/imports/EclipseImportOrderingStrategy;->sortImportsAlphabetically:Z

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

    iput-boolean p1, p0, Lcom/github/javaparser/printer/configuration/imports/EclipseImportOrderingStrategy;->sortImportsAlphabetically:Z

    return-void
.end method

.method public sortImports(Lcom/github/javaparser/ast/NodeList;)Ljava/util/List;
    .locals 9
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

    new-instance v3, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v3}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    new-instance v4, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v4}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    new-instance v5, Lcom/github/javaparser/ast/NodeList;

    invoke-direct {v5}, Lcom/github/javaparser/ast/NodeList;-><init>()V

    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/javaparser/ast/ImportDeclaration;

    invoke-virtual {v6}, Lcom/github/javaparser/ast/ImportDeclaration;->isStatic()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v0, v6}, Lcom/github/javaparser/ast/NodeList;->add(Lcom/github/javaparser/ast/Node;)Z

    goto :goto_0

    :cond_0
    invoke-interface {v6}, Lcom/github/javaparser/ast/nodeTypes/NodeWithName;->getNameAsString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "java."

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v1, v6}, Lcom/github/javaparser/ast/NodeList;->add(Lcom/github/javaparser/ast/Node;)Z

    goto :goto_0

    :cond_1
    const-string v8, "javax."

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v2, v6}, Lcom/github/javaparser/ast/NodeList;->add(Lcom/github/javaparser/ast/Node;)Z

    goto :goto_0

    :cond_2
    const-string v8, "org."

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v3, v6}, Lcom/github/javaparser/ast/NodeList;->add(Lcom/github/javaparser/ast/Node;)Z

    goto :goto_0

    :cond_3
    const-string v8, "com."

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v4, v6}, Lcom/github/javaparser/ast/NodeList;->add(Lcom/github/javaparser/ast/Node;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v5, v6}, Lcom/github/javaparser/ast/NodeList;->add(Lcom/github/javaparser/ast/Node;)Z

    goto :goto_0

    :cond_5
    iget-boolean p1, p0, Lcom/github/javaparser/printer/configuration/imports/EclipseImportOrderingStrategy;->sortImportsAlphabetically:Z

    if-eqz p1, :cond_6

    new-instance p1, Lcom/github/javaparser/printer/P;

    invoke-direct {p1}, Lcom/github/javaparser/printer/P;-><init>()V

    invoke-static {p1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/github/javaparser/ast/NodeList;->sort(Ljava/util/Comparator;)V

    invoke-virtual {v1, p1}, Lcom/github/javaparser/ast/NodeList;->sort(Ljava/util/Comparator;)V

    invoke-virtual {v2, p1}, Lcom/github/javaparser/ast/NodeList;->sort(Ljava/util/Comparator;)V

    invoke-virtual {v3, p1}, Lcom/github/javaparser/ast/NodeList;->sort(Ljava/util/Comparator;)V

    invoke-virtual {v4, p1}, Lcom/github/javaparser/ast/NodeList;->sort(Ljava/util/Comparator;)V

    invoke-virtual {v5, p1}, Lcom/github/javaparser/ast/NodeList;->sort(Ljava/util/Comparator;)V

    :cond_6
    filled-new-array/range {v0 .. v5}, [Lcom/github/javaparser/ast/NodeList;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
