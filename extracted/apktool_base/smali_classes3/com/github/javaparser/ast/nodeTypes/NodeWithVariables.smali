.class public interface abstract Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables;
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


# direct methods
.method public static synthetic a(Lcom/github/javaparser/ast/body/VariableDeclarator;)Lcom/github/javaparser/ast/type/Type;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables;->lambda$getMaximumCommonType$0(Lcom/github/javaparser/ast/body/VariableDeclarator;)Lcom/github/javaparser/ast/type/Type;

    move-result-object p0

    return-object p0
.end method

.method public static calculateMaximumCommonType(Ljava/util/List;)Ljava/util/Optional;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "types"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/javaparser/ast/type/Type;",
            ">;)",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/type/Type;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables$1Helper;

    invoke-direct {v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables$1Helper;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v4, v1

    move v3, v2

    :goto_0
    if-eqz v3, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/github/javaparser/ast/nodeTypes/O;

    invoke-direct {v6, v0, v4}, Lcom/github/javaparser/ast/nodeTypes/O;-><init>(Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables$1Helper;I)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/stream/Stream;->toArray()[Ljava/lang/Object;

    move-result-object v5

    array-length v6, v5

    if-ne v6, v2, :cond_0

    aget-object v5, v5, v1

    if-eqz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_0

    :cond_1
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/ast/type/Type;

    add-int/lit8 v4, v4, -0x1

    invoke-static {v0, p0, v4}, Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables$1Helper;->access$000(Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables$1Helper;Lcom/github/javaparser/ast/type/Type;I)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables$1Helper;ILcom/github/javaparser/ast/type/Type;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables;->lambda$calculateMaximumCommonType$1(Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables$1Helper;ILcom/github/javaparser/ast/type/Type;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$calculateMaximumCommonType$1(Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables$1Helper;ILcom/github/javaparser/ast/type/Type;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "helper",
            "currentLevel",
            "v"
        }
    .end annotation

    invoke-static {p0, p2, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables$1Helper;->access$000(Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables$1Helper;Lcom/github/javaparser/ast/type/Type;I)Ljava/util/Optional;

    move-result-object p0

    new-instance p1, Lcom/github/javaparser/ast/nodeTypes/P;

    invoke-direct {p1}, Lcom/github/javaparser/ast/nodeTypes/P;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic lambda$getMaximumCommonType$0(Lcom/github/javaparser/ast/body/VariableDeclarator;)Lcom/github/javaparser/ast/type/Type;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/ast/body/VariableDeclarator;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addVariable(Lcom/github/javaparser/ast/body/VariableDeclarator;)Lcom/github/javaparser/ast/Node;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variableDeclarator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/body/VariableDeclarator;",
            ")TN;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables;->getVariables()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/ast/NodeList;->add(Lcom/github/javaparser/ast/Node;)Z

    move-object p1, p0

    check-cast p1, Lcom/github/javaparser/ast/Node;

    return-object p1
.end method

.method public getCommonType()Lcom/github/javaparser/ast/type/Type;
    .locals 4

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables;->getVariables()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/body/VariableDeclarator;

    invoke-virtual {v1}, Lcom/github/javaparser/ast/body/VariableDeclarator;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/ast/body/VariableDeclarator;

    invoke-virtual {v3}, Lcom/github/javaparser/ast/body/VariableDeclarator;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/github/javaparser/ast/Node;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "The variables do not have a common type."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    return-object v1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "There is no common type since there are no variables."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public getElementType()Lcom/github/javaparser/ast/type/Type;
    .locals 4

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables;->getVariables()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/body/VariableDeclarator;

    invoke-virtual {v1}, Lcom/github/javaparser/ast/body/VariableDeclarator;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/javaparser/ast/type/Type;->getElementType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/ast/body/VariableDeclarator;

    invoke-virtual {v3}, Lcom/github/javaparser/ast/body/VariableDeclarator;->getType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/javaparser/ast/type/Type;->getElementType()Lcom/github/javaparser/ast/type/Type;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/github/javaparser/ast/Node;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "The variables do not have a common type."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_1
    return-object v1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "There is no element type since there are no variables."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public getMaximumCommonType()Ljava/util/Optional;
    .locals 2
    .annotation runtime Lcom/github/javaparser/metamodel/DerivedProperty;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/type/Type;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables;->getVariables()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/nodeTypes/Q;

    invoke-direct {v1}, Lcom/github/javaparser/ast/nodeTypes/Q;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables;->calculateMaximumCommonType(Ljava/util/List;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getVariable(I)Lcom/github/javaparser/ast/body/VariableDeclarator;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables;->getVariables()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/ast/NodeList;->get(I)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/body/VariableDeclarator;

    return-object p1
.end method

.method public abstract getVariables()Lcom/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/body/VariableDeclarator;",
            ">;"
        }
    .end annotation
.end method

.method public setAllTypes(Lcom/github/javaparser/ast/type/Type;)Lcom/github/javaparser/ast/Node;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/type/Type;",
            ")TN;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables;->getVariables()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/body/VariableDeclarator;

    invoke-virtual {v1, p1}, Lcom/github/javaparser/ast/body/VariableDeclarator;->setType(Lcom/github/javaparser/ast/type/Type;)Lcom/github/javaparser/ast/body/VariableDeclarator;

    goto :goto_0

    :cond_0
    move-object p1, p0

    check-cast p1, Lcom/github/javaparser/ast/Node;

    return-object p1
.end method

.method public setVariable(ILcom/github/javaparser/ast/body/VariableDeclarator;)Lcom/github/javaparser/ast/Node;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "variableDeclarator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/github/javaparser/ast/body/VariableDeclarator;",
            ")TN;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithVariables;->getVariables()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/github/javaparser/ast/NodeList;->set(ILcom/github/javaparser/ast/Node;)Lcom/github/javaparser/ast/Node;

    move-object p1, p0

    check-cast p1, Lcom/github/javaparser/ast/Node;

    return-object p1
.end method

.method public abstract setVariables(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variables"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/body/VariableDeclarator;",
            ">;)TN;"
        }
    .end annotation
.end method
