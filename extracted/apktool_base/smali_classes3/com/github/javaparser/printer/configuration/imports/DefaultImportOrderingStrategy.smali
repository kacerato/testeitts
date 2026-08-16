.class public Lcom/github/javaparser/printer/configuration/imports/DefaultImportOrderingStrategy;
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

    iput-boolean v0, p0, Lcom/github/javaparser/printer/configuration/imports/DefaultImportOrderingStrategy;->sortImportsAlphabetically:Z

    return-void
.end method

.method public static synthetic a(Lcom/github/javaparser/ast/ImportDeclaration;)I
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/printer/configuration/imports/DefaultImportOrderingStrategy;->lambda$sortImports$0(Lcom/github/javaparser/ast/ImportDeclaration;)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$sortImports$0(Lcom/github/javaparser/ast/ImportDeclaration;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "i"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/ImportDeclaration;->isStatic()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public isSortImportsAlphabetically()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/javaparser/printer/configuration/imports/DefaultImportOrderingStrategy;->sortImportsAlphabetically:Z

    return v0
.end method

.method public setSortImportsAlphabetically(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sortImportsAlphabetically"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/github/javaparser/printer/configuration/imports/DefaultImportOrderingStrategy;->sortImportsAlphabetically:Z

    return-void
.end method

.method public sortImports(Lcom/github/javaparser/ast/NodeList;)Ljava/util/List;
    .locals 2
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

    iget-boolean v0, p0, Lcom/github/javaparser/printer/configuration/imports/DefaultImportOrderingStrategy;->sortImportsAlphabetically:Z

    if-eqz v0, :cond_0

    new-instance v0, Lf0/a;

    invoke-direct {v0}, Lf0/a;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/printer/P;

    invoke-direct {v1}, Lcom/github/javaparser/printer/P;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/github/javaparser/ast/NodeList;->sort(Ljava/util/Comparator;)V

    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
