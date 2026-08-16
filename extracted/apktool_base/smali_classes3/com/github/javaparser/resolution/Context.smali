.class public interface abstract Lcom/github/javaparser/resolution/Context;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a(Ljava/lang/String;Lcom/github/javaparser/ast/expr/TypePatternExpr;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/resolution/Context;->lambda$typePatternExprInScope$2(Ljava/lang/String;Lcom/github/javaparser/ast/expr/TypePatternExpr;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Ljava/lang/String;Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/resolution/Context;->lambda$fieldDeclarationInScope$3(Ljava/lang/String;Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Ljava/lang/String;Lcom/github/javaparser/ast/body/Parameter;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/resolution/Context;->lambda$parameterDeclarationInScope$1(Ljava/lang/String;Lcom/github/javaparser/ast/body/Parameter;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Ljava/lang/String;Lcom/github/javaparser/ast/body/VariableDeclarator;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/resolution/Context;->lambda$localVariableDeclarationInScope$0(Ljava/lang/String;Lcom/github/javaparser/ast/body/VariableDeclarator;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$fieldDeclarationInScope$3(Ljava/lang/String;Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "name",
            "vd"
        }
    .end annotation

    invoke-interface {p1}, Lcom/github/javaparser/resolution/declarations/ResolvedDeclaration;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$localVariableDeclarationInScope$0(Ljava/lang/String;Lcom/github/javaparser/ast/body/VariableDeclarator;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "name",
            "vd"
        }
    .end annotation

    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithSimpleName;->getNameAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$parameterDeclarationInScope$1(Ljava/lang/String;Lcom/github/javaparser/ast/body/Parameter;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "name",
            "vd"
        }
    .end annotation

    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithSimpleName;->getNameAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$typePatternExprInScope$2(Ljava/lang/String;Lcom/github/javaparser/ast/expr/TypePatternExpr;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "name",
            "vd"
        }
    .end annotation

    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithSimpleName;->getNameAsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public fieldDeclarationInScope(Ljava/lang/String;)Ljava/util/Optional;
    .locals 3
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
            ")",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/resolution/Context;->getParent()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p0}, Lcom/github/javaparser/resolution/Context;->getParent()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/resolution/Context;

    invoke-interface {p0}, Lcom/github/javaparser/resolution/Context;->getWrappedNode()Lcom/github/javaparser/ast/Node;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/github/javaparser/resolution/Context;->fieldsExposedToChild(Lcom/github/javaparser/ast/Node;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lg0/b;

    invoke-direct {v2, p1}, Lg0/b;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    invoke-interface {v0, p1}, Lcom/github/javaparser/resolution/Context;->fieldDeclarationInScope(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public fieldsExposedToChild(Lcom/github/javaparser/ast/Node;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "child"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/Node;",
            ")",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public abstract getParent()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/resolution/Context;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWrappedNode()Lcom/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lcom/github/javaparser/ast/Node;",
            ">()TN;"
        }
    .end annotation
.end method

.method public localVariableDeclarationInScope(Ljava/lang/String;)Ljava/util/Optional;
    .locals 3
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
            ")",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/body/VariableDeclarator;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/resolution/Context;->getParent()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p0}, Lcom/github/javaparser/resolution/Context;->getWrappedNode()Lcom/github/javaparser/ast/Node;

    move-result-object v0

    invoke-interface {p0}, Lcom/github/javaparser/resolution/Context;->getParent()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/resolution/Context;

    invoke-interface {v1, v0}, Lcom/github/javaparser/resolution/Context;->localVariablesExposedToChild(Lcom/github/javaparser/ast/Node;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lg0/a;

    invoke-direct {v2, p1}, Lg0/a;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    invoke-interface {v1, p1}, Lcom/github/javaparser/resolution/Context;->localVariableDeclarationInScope(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public localVariablesExposedToChild(Lcom/github/javaparser/ast/Node;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "child"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/Node;",
            ")",
            "Ljava/util/List<",
            "Lcom/github/javaparser/ast/body/VariableDeclarator;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public negatedTypePatternExprsExposedFromChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/ast/expr/TypePatternExpr;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public parameterDeclarationInScope(Ljava/lang/String;)Ljava/util/Optional;
    .locals 3
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
            ")",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/body/Parameter;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/resolution/Context;->getParent()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p0}, Lcom/github/javaparser/resolution/Context;->getWrappedNode()Lcom/github/javaparser/ast/Node;

    move-result-object v0

    invoke-interface {p0}, Lcom/github/javaparser/resolution/Context;->getParent()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/resolution/Context;

    invoke-interface {v1, v0}, Lcom/github/javaparser/resolution/Context;->parametersExposedToChild(Lcom/github/javaparser/ast/Node;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lg0/c;

    invoke-direct {v2, p1}, Lg0/c;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    invoke-interface {v1, p1}, Lcom/github/javaparser/resolution/Context;->parameterDeclarationInScope(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public parametersExposedToChild(Lcom/github/javaparser/ast/Node;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "child"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/Node;",
            ")",
            "Ljava/util/List<",
            "Lcom/github/javaparser/ast/body/Parameter;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public solveConstructor(Ljava/util/List;)Lcom/github/javaparser/resolution/model/SymbolReference;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "argumentsTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;)",
            "Lcom/github/javaparser/resolution/model/SymbolReference<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedConstructorDeclaration;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Constructor resolution is available only on Class Context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public solveGenericType(Ljava/lang/String;)Ljava/util/Optional;
    .locals 0
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
            ")",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;"
        }
    .end annotation

    invoke-interface {p0, p1}, Lcom/github/javaparser/resolution/Context;->solveGenericTypeInParentContext(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public solveGenericTypeInParentContext(Ljava/lang/String;)Ljava/util/Optional;
    .locals 2
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
            ")",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/resolution/Context;->getParent()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/resolution/Context;

    invoke-interface {v0, p1}, Lcom/github/javaparser/resolution/Context;->solveGenericType(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public solveMethod(Ljava/lang/String;Ljava/util/List;Z)Lcom/github/javaparser/resolution/model/SymbolReference;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "argumentsTypes",
            "staticOnly"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;Z)",
            "Lcom/github/javaparser/resolution/model/SymbolReference<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;",
            ">;"
        }
    .end annotation

    invoke-interface {p0, p1, p2, p3}, Lcom/github/javaparser/resolution/Context;->solveMethodInParentContext(Ljava/lang/String;Ljava/util/List;Z)Lcom/github/javaparser/resolution/model/SymbolReference;

    move-result-object p1

    return-object p1
.end method

.method public abstract solveMethodAsUsage(Ljava/lang/String;Ljava/util/List;)Ljava/util/Optional;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "argumentsTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;)",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/resolution/MethodUsage;",
            ">;"
        }
    .end annotation
.end method

.method public solveMethodInParentContext(Ljava/lang/String;Ljava/util/List;Z)Lcom/github/javaparser/resolution/model/SymbolReference;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "argumentsTypes",
            "staticOnly"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;Z)",
            "Lcom/github/javaparser/resolution/model/SymbolReference<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/resolution/Context;->getParent()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/github/javaparser/resolution/model/SymbolReference;->unsolved()Lcom/github/javaparser/resolution/model/SymbolReference;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/resolution/Context;

    invoke-interface {v0, p1, p2, p3}, Lcom/github/javaparser/resolution/Context;->solveMethod(Ljava/lang/String;Ljava/util/List;Z)Lcom/github/javaparser/resolution/model/SymbolReference;

    move-result-object p1

    return-object p1
.end method

.method public solveSymbol(Ljava/lang/String;)Lcom/github/javaparser/resolution/model/SymbolReference;
    .locals 0
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
            ")",
            "Lcom/github/javaparser/resolution/model/SymbolReference<",
            "+",
            "Lcom/github/javaparser/resolution/declarations/ResolvedValueDeclaration;",
            ">;"
        }
    .end annotation

    invoke-interface {p0, p1}, Lcom/github/javaparser/resolution/Context;->solveSymbolInParentContext(Ljava/lang/String;)Lcom/github/javaparser/resolution/model/SymbolReference;

    move-result-object p1

    return-object p1
.end method

.method public solveSymbolAsValue(Ljava/lang/String;)Ljava/util/Optional;
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
            ")",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/resolution/model/Value;",
            ">;"
        }
    .end annotation

    invoke-interface {p0, p1}, Lcom/github/javaparser/resolution/Context;->solveSymbol(Ljava/lang/String;)Lcom/github/javaparser/resolution/model/SymbolReference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/model/SymbolReference;->isSolved()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/resolution/model/SymbolReference;->getCorrespondingDeclaration()Lcom/github/javaparser/resolution/declarations/ResolvedDeclaration;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/resolution/declarations/ResolvedValueDeclaration;

    invoke-static {p1}, Lcom/github/javaparser/resolution/model/Value;->from(Lcom/github/javaparser/resolution/declarations/ResolvedValueDeclaration;)Lcom/github/javaparser/resolution/model/Value;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public solveSymbolAsValueInParentContext(Ljava/lang/String;)Ljava/util/Optional;
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
            ")",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/resolution/model/Value;",
            ">;"
        }
    .end annotation

    invoke-interface {p0, p1}, Lcom/github/javaparser/resolution/Context;->solveSymbolInParentContext(Ljava/lang/String;)Lcom/github/javaparser/resolution/model/SymbolReference;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/model/SymbolReference;->isSolved()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/resolution/model/SymbolReference;->getCorrespondingDeclaration()Lcom/github/javaparser/resolution/declarations/ResolvedDeclaration;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/resolution/declarations/ResolvedValueDeclaration;

    invoke-static {p1}, Lcom/github/javaparser/resolution/model/Value;->from(Lcom/github/javaparser/resolution/declarations/ResolvedValueDeclaration;)Lcom/github/javaparser/resolution/model/Value;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public solveSymbolInParentContext(Ljava/lang/String;)Lcom/github/javaparser/resolution/model/SymbolReference;
    .locals 2
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
            ")",
            "Lcom/github/javaparser/resolution/model/SymbolReference<",
            "+",
            "Lcom/github/javaparser/resolution/declarations/ResolvedValueDeclaration;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/resolution/Context;->getParent()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/github/javaparser/resolution/model/SymbolReference;->unsolved()Lcom/github/javaparser/resolution/model/SymbolReference;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/resolution/Context;

    invoke-interface {v0, p1}, Lcom/github/javaparser/resolution/Context;->solveSymbol(Ljava/lang/String;)Lcom/github/javaparser/resolution/model/SymbolReference;

    move-result-object p1

    return-object p1
.end method

.method public solveType(Ljava/lang/String;)Lcom/github/javaparser/resolution/model/SymbolReference;
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
            ")",
            "Lcom/github/javaparser/resolution/model/SymbolReference<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, p1, v0}, Lcom/github/javaparser/resolution/Context;->solveType(Ljava/lang/String;Ljava/util/List;)Lcom/github/javaparser/resolution/model/SymbolReference;

    move-result-object p1

    return-object p1
.end method

.method public solveType(Ljava/lang/String;Ljava/util/List;)Lcom/github/javaparser/resolution/model/SymbolReference;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "typeArguments"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;)",
            "Lcom/github/javaparser/resolution/model/SymbolReference<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-interface {p0, p1, p2}, Lcom/github/javaparser/resolution/Context;->solveTypeInParentContext(Ljava/lang/String;Ljava/util/List;)Lcom/github/javaparser/resolution/model/SymbolReference;

    move-result-object p1

    return-object p1
.end method

.method public solveTypeInParentContext(Ljava/lang/String;)Lcom/github/javaparser/resolution/model/SymbolReference;
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
            ")",
            "Lcom/github/javaparser/resolution/model/SymbolReference<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-interface {p0, p1, v0}, Lcom/github/javaparser/resolution/Context;->solveTypeInParentContext(Ljava/lang/String;Ljava/util/List;)Lcom/github/javaparser/resolution/model/SymbolReference;

    move-result-object p1

    return-object p1
.end method

.method public solveTypeInParentContext(Ljava/lang/String;Ljava/util/List;)Lcom/github/javaparser/resolution/model/SymbolReference;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "name",
            "typeArguments"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;)",
            "Lcom/github/javaparser/resolution/model/SymbolReference<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-interface {p0}, Lcom/github/javaparser/resolution/Context;->getParent()Ljava/util/Optional;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    invoke-static {}, Lcom/github/javaparser/resolution/model/SymbolReference;->unsolved()Lcom/github/javaparser/resolution/model/SymbolReference;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/resolution/Context;

    invoke-interface {v0, p1, p2}, Lcom/github/javaparser/resolution/Context;->solveType(Ljava/lang/String;Ljava/util/List;)Lcom/github/javaparser/resolution/model/SymbolReference;

    move-result-object p1

    return-object p1
.end method

.method public typePatternExprInScope(Ljava/lang/String;)Ljava/util/Optional;
    .locals 3
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
            ")",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/expr/TypePatternExpr;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/resolution/Context;->getParent()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p0}, Lcom/github/javaparser/resolution/Context;->getParent()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/resolution/Context;

    invoke-interface {p0}, Lcom/github/javaparser/resolution/Context;->getWrappedNode()Lcom/github/javaparser/ast/Node;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/github/javaparser/resolution/Context;->typePatternExprsExposedToChild(Lcom/github/javaparser/ast/Node;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lg0/d;

    invoke-direct {v2, p1}, Lg0/d;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    invoke-interface {v0, p1}, Lcom/github/javaparser/resolution/Context;->typePatternExprInScope(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public typePatternExprsExposedFromChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/ast/expr/TypePatternExpr;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public typePatternExprsExposedToChild(Lcom/github/javaparser/ast/Node;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "child"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/Node;",
            ")",
            "Ljava/util/List<",
            "Lcom/github/javaparser/ast/expr/TypePatternExpr;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
