.class public Lcom/github/javaparser/resolution/logic/ConstructorResolutionLogic;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/util/List;Lcom/github/javaparser/resolution/TypeSolver;ZLcom/github/javaparser/resolution/declarations/ResolvedConstructorDeclaration;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/github/javaparser/resolution/logic/ConstructorResolutionLogic;->lambda$findMostApplicable$0(Ljava/util/List;Lcom/github/javaparser/resolution/TypeSolver;ZLcom/github/javaparser/resolution/declarations/ResolvedConstructorDeclaration;)Z

    move-result p0

    return p0
.end method

.method private static findCommonType(Ljava/util/List;)Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variadicValues"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;)",
            "Lcom/github/javaparser/resolution/types/ResolvedType;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/resolution/types/ResolvedType;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static findMostApplicable(Ljava/util/List;Ljava/util/List;Lcom/github/javaparser/resolution/TypeSolver;)Lcom/github/javaparser/resolution/model/SymbolReference;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "constructors",
            "argumentsTypes",
            "typeSolver"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedConstructorDeclaration;",
            ">;",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;",
            "Lcom/github/javaparser/resolution/TypeSolver;",
            ")",
            "Lcom/github/javaparser/resolution/model/SymbolReference<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedConstructorDeclaration;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcom/github/javaparser/resolution/logic/ConstructorResolutionLogic;->findMostApplicable(Ljava/util/List;Ljava/util/List;Lcom/github/javaparser/resolution/TypeSolver;Z)Lcom/github/javaparser/resolution/model/SymbolReference;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/github/javaparser/resolution/model/SymbolReference;->isSolved()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-static {p0, p1, p2, v0}, Lcom/github/javaparser/resolution/logic/ConstructorResolutionLogic;->findMostApplicable(Ljava/util/List;Ljava/util/List;Lcom/github/javaparser/resolution/TypeSolver;Z)Lcom/github/javaparser/resolution/model/SymbolReference;

    move-result-object p0

    return-object p0
.end method

.method public static findMostApplicable(Ljava/util/List;Ljava/util/List;Lcom/github/javaparser/resolution/TypeSolver;Z)Lcom/github/javaparser/resolution/model/SymbolReference;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "constructors",
            "argumentsTypes",
            "typeSolver",
            "wildcardTolerance"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedConstructorDeclaration;",
            ">;",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;",
            "Lcom/github/javaparser/resolution/TypeSolver;",
            "Z)",
            "Lcom/github/javaparser/resolution/model/SymbolReference<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedConstructorDeclaration;",
            ">;"
        }
    .end annotation

    .line 4
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lh0/a;

    invoke-direct {v0, p1, p2, p3}, Lh0/a;-><init>(Ljava/util/List;Lcom/github/javaparser/resolution/TypeSolver;Z)V

    .line 5
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 6
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 7
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 8
    invoke-static {}, Lcom/github/javaparser/resolution/model/SymbolReference;->unsolved()Lcom/github/javaparser/resolution/model/SymbolReference;

    move-result-object p0

    return-object p0

    .line 9
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-ne p2, p3, :cond_1

    .line 10
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/resolution/declarations/ResolvedDeclaration;

    invoke-static {p0}, Lcom/github/javaparser/resolution/model/SymbolReference;->solved(Lcom/github/javaparser/resolution/declarations/ResolvedDeclaration;)Lcom/github/javaparser/resolution/model/SymbolReference;

    move-result-object p0

    return-object p0

    .line 11
    :cond_1
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/resolution/declarations/ResolvedConstructorDeclaration;

    move v1, p3

    move v2, v0

    .line 12
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 13
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/resolution/declarations/ResolvedConstructorDeclaration;

    .line 14
    invoke-static {p2, v3, p1}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->isMoreSpecific(Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v0

    goto :goto_1

    .line 15
    :cond_2
    invoke-static {v3, p2, p1}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->isMoreSpecific(Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v0

    move-object p2, v3

    goto :goto_1

    .line 16
    :cond_3
    invoke-interface {p2}, Lcom/github/javaparser/resolution/declarations/ResolvedConstructorDeclaration;->declaringType()Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    move-result-object v4

    .line 17
    invoke-interface {v4}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;->getQualifiedName()Ljava/lang/String;

    move-result-object v4

    .line 18
    invoke-interface {v3}, Lcom/github/javaparser/resolution/declarations/ResolvedConstructorDeclaration;->declaringType()Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    move-result-object v5

    invoke-interface {v5}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;->getQualifiedName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move v2, p3

    :cond_4
    :goto_1
    if-eqz v2, :cond_6

    .line 19
    invoke-static {p2, p1}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->isExactMatch(Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;Ljava/util/List;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 20
    invoke-static {v3, p1}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->isExactMatch(Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object p2, v3

    goto :goto_2

    .line 21
    :cond_5
    new-instance p0, Lcom/github/javaparser/resolution/MethodAmbiguityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ambiguous constructor call: cannot find a most applicable constructor: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/javaparser/resolution/MethodAmbiguityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 22
    :cond_7
    invoke-static {p2}, Lcom/github/javaparser/resolution/model/SymbolReference;->solved(Lcom/github/javaparser/resolution/declarations/ResolvedDeclaration;)Lcom/github/javaparser/resolution/model/SymbolReference;

    move-result-object p0

    return-object p0
.end method

.method private static groupVariadicParamValues(Ljava/util/List;ILcom/github/javaparser/resolution/types/ResolvedType;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "argumentsTypes",
            "startVariadic",
            "variadicType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;I",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ")",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-interface {p0, v1, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p0, p1, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/github/javaparser/resolution/logic/ConstructorResolutionLogic;->findCommonType(Ljava/util/List;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p0

    new-instance p1, Lcom/github/javaparser/resolution/types/ResolvedArrayType;

    invoke-direct {p1, p0}, Lcom/github/javaparser/resolution/types/ResolvedArrayType;-><init>(Lcom/github/javaparser/resolution/types/ResolvedType;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0
.end method

.method public static isApplicable(Lcom/github/javaparser/resolution/declarations/ResolvedConstructorDeclaration;Ljava/util/List;Lcom/github/javaparser/resolution/TypeSolver;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "constructor",
            "argumentsTypes",
            "typeSolver"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/resolution/declarations/ResolvedConstructorDeclaration;",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;",
            "Lcom/github/javaparser/resolution/TypeSolver;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcom/github/javaparser/resolution/logic/ConstructorResolutionLogic;->isApplicable(Lcom/github/javaparser/resolution/declarations/ResolvedConstructorDeclaration;Ljava/util/List;Lcom/github/javaparser/resolution/TypeSolver;Z)Z

    move-result p0

    return p0
.end method

.method private static isApplicable(Lcom/github/javaparser/resolution/declarations/ResolvedConstructorDeclaration;Ljava/util/List;Lcom/github/javaparser/resolution/TypeSolver;Z)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "constructor",
            "argumentsTypes",
            "typeSolver",
            "withWildcardTolerance"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/resolution/declarations/ResolvedConstructorDeclaration;",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;",
            "Lcom/github/javaparser/resolution/TypeSolver;",
            "Z)Z"
        }
    .end annotation

    .line 2
    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->hasVariadicParameter()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 3
    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->getNumberOfParams()I

    move-result v0

    sub-int/2addr v0, v1

    .line 4
    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->getNumberOfParams()I

    move-result v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 5
    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->getLastParam()Lcom/github/javaparser/resolution/declarations/ResolvedParameterDeclaration;

    move-result-object v3

    invoke-interface {v3}, Lcom/github/javaparser/resolution/declarations/ResolvedValueDeclaration;->getType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v3

    .line 6
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/javaparser/resolution/types/ResolvedType;

    .line 7
    invoke-interface {v3, v4}, Lcom/github/javaparser/resolution/types/ResolvedType;->isAssignableBy(Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 8
    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParametrizable;->getTypeParameters()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    .line 9
    invoke-static {v3, v6, p2}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->replaceTypeParam(Lcom/github/javaparser/resolution/types/ResolvedType;Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lcom/github/javaparser/resolution/TypeSolver;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v3

    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {v3, v4}, Lcom/github/javaparser/resolution/types/ResolvedType;->isAssignableBy(Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 11
    invoke-interface {v4}, Lcom/github/javaparser/resolution/types/ResolvedType;->isArray()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 12
    invoke-interface {v4}, Lcom/github/javaparser/resolution/types/ResolvedType;->asArrayType()Lcom/github/javaparser/resolution/types/ResolvedArrayType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/javaparser/resolution/types/ResolvedArrayType;->getComponentType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v5

    .line 13
    invoke-interface {v3, v5}, Lcom/github/javaparser/resolution/types/ResolvedType;->isAssignableBy(Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 14
    invoke-interface {v4}, Lcom/github/javaparser/resolution/types/ResolvedType;->asArrayType()Lcom/github/javaparser/resolution/types/ResolvedArrayType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/github/javaparser/resolution/types/ResolvedArrayType;->getComponentType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 15
    :cond_1
    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->getLastParam()Lcom/github/javaparser/resolution/declarations/ResolvedParameterDeclaration;

    move-result-object v3

    invoke-interface {v3}, Lcom/github/javaparser/resolution/declarations/ResolvedValueDeclaration;->getType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v3

    .line 16
    invoke-static {p1, v0, v3}, Lcom/github/javaparser/resolution/logic/ConstructorResolutionLogic;->groupVariadicParamValues(Ljava/util/List;ILcom/github/javaparser/resolution/types/ResolvedType;)Ljava/util/List;

    move-result-object p1

    goto :goto_1

    .line 17
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-le v0, v3, :cond_3

    return v2

    .line 18
    :cond_3
    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->getLastParam()Lcom/github/javaparser/resolution/declarations/ResolvedParameterDeclaration;

    move-result-object v3

    invoke-interface {v3}, Lcom/github/javaparser/resolution/declarations/ResolvedValueDeclaration;->getType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v3

    .line 19
    invoke-static {p1, v0, v3}, Lcom/github/javaparser/resolution/logic/ConstructorResolutionLogic;->groupVariadicParamValues(Ljava/util/List;ILcom/github/javaparser/resolution/types/ResolvedType;)Ljava/util/List;

    move-result-object p1

    .line 20
    :cond_4
    :goto_1
    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->getNumberOfParams()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v0, v3, :cond_5

    return v2

    .line 21
    :cond_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move v3, v2

    move v4, v3

    .line 22
    :goto_2
    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->getNumberOfParams()I

    move-result v5

    if-ge v3, v5, :cond_f

    .line 23
    invoke-interface {p0, v3}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->getParam(I)Lcom/github/javaparser/resolution/declarations/ResolvedParameterDeclaration;

    move-result-object v5

    invoke-interface {v5}, Lcom/github/javaparser/resolution/declarations/ResolvedValueDeclaration;->getType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v5

    .line 24
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/javaparser/resolution/types/ResolvedType;

    .line 25
    invoke-interface {v5}, Lcom/github/javaparser/resolution/types/ResolvedType;->isTypeVariable()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Lcom/github/javaparser/resolution/types/ResolvedType;->isWildcard()Z

    move-result v7

    if-nez v7, :cond_6

    .line 26
    invoke-interface {v5}, Lcom/github/javaparser/resolution/types/ResolvedType;->asTypeParameter()Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    move-result-object v7

    invoke-interface {v7}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->declaredOnMethod()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 27
    invoke-interface {v5}, Lcom/github/javaparser/resolution/types/ResolvedType;->asTypeParameter()Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    move-result-object v5

    invoke-interface {v5}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 28
    :cond_6
    invoke-interface {v5, v6}, Lcom/github/javaparser/resolution/types/ResolvedType;->isAssignableBy(Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 29
    invoke-interface {p0, v3}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->getParam(I)Lcom/github/javaparser/resolution/declarations/ResolvedParameterDeclaration;

    move-result-object v7

    invoke-interface {v7}, Lcom/github/javaparser/resolution/declarations/ResolvedParameterDeclaration;->isVariadic()Z

    move-result v7

    if-eqz v7, :cond_7

    new-instance v7, Lcom/github/javaparser/resolution/types/ResolvedArrayType;

    invoke-direct {v7, v5}, Lcom/github/javaparser/resolution/types/ResolvedArrayType;-><init>(Lcom/github/javaparser/resolution/types/ResolvedType;)V

    .line 30
    invoke-virtual {v7, v6}, Lcom/github/javaparser/resolution/types/ResolvedArrayType;->isAssignableBy(Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result v7

    if-eqz v7, :cond_7

    goto :goto_3

    :cond_7
    move v7, v2

    goto :goto_4

    :cond_8
    :goto_3
    move v7, v1

    :goto_4
    if-nez v7, :cond_9

    .line 31
    invoke-interface {v5}, Lcom/github/javaparser/resolution/types/ResolvedType;->isReferenceType()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v6}, Lcom/github/javaparser/resolution/types/ResolvedType;->isReferenceType()Z

    move-result v8

    if-eqz v8, :cond_9

    .line 32
    invoke-interface {v5}, Lcom/github/javaparser/resolution/types/ResolvedType;->asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object v7

    invoke-interface {v6}, Lcom/github/javaparser/resolution/types/ResolvedType;->asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object v8

    .line 33
    invoke-static {v7, v8, v0}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->isAssignableMatchTypeParameters(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;Lcom/github/javaparser/resolution/types/ResolvedReferenceType;Ljava/util/Map;)Z

    move-result v7

    :cond_9
    if-nez v7, :cond_e

    .line 34
    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParametrizable;->getTypeParameters()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    .line 35
    invoke-static {v5, v8, p2}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->replaceTypeParam(Lcom/github/javaparser/resolution/types/ResolvedType;Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lcom/github/javaparser/resolution/TypeSolver;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v5

    goto :goto_5

    .line 36
    :cond_a
    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedConstructorDeclaration;->declaringType()Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    move-result-object v7

    invoke-interface {v7}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParametrizable;->getTypeParameters()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    .line 37
    invoke-static {v5, v8, p2}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->replaceTypeParam(Lcom/github/javaparser/resolution/types/ResolvedType;Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lcom/github/javaparser/resolution/TypeSolver;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v5

    goto :goto_6

    .line 38
    :cond_b
    invoke-interface {v5, v6}, Lcom/github/javaparser/resolution/types/ResolvedType;->isAssignableBy(Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 39
    invoke-interface {v6}, Lcom/github/javaparser/resolution/types/ResolvedType;->isWildcard()Z

    move-result v7

    if-eqz v7, :cond_c

    if-eqz p3, :cond_c

    invoke-interface {v5}, Lcom/github/javaparser/resolution/types/ResolvedType;->isPrimitive()Z

    move-result v7

    if-nez v7, :cond_c

    move v4, v1

    goto :goto_7

    .line 40
    :cond_c
    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->hasVariadicParameter()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->getNumberOfParams()I

    move-result v7

    sub-int/2addr v7, v1

    if-ne v3, v7, :cond_d

    .line 41
    new-instance v7, Lcom/github/javaparser/resolution/types/ResolvedArrayType;

    invoke-direct {v7, v5}, Lcom/github/javaparser/resolution/types/ResolvedArrayType;-><init>(Lcom/github/javaparser/resolution/types/ResolvedType;)V

    invoke-virtual {v7, v6}, Lcom/github/javaparser/resolution/types/ResolvedArrayType;->isAssignableBy(Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_7

    :cond_d
    return v2

    :cond_e
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_f
    if-eqz p3, :cond_11

    if-eqz v4, :cond_10

    goto :goto_8

    :cond_10
    move v1, v2

    :cond_11
    :goto_8
    return v1
.end method

.method private static synthetic lambda$findMostApplicable$0(Ljava/util/List;Lcom/github/javaparser/resolution/TypeSolver;ZLcom/github/javaparser/resolution/declarations/ResolvedConstructorDeclaration;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "argumentsTypes",
            "typeSolver",
            "wildcardTolerance",
            "m"
        }
    .end annotation

    invoke-static {p3, p0, p1, p2}, Lcom/github/javaparser/resolution/logic/ConstructorResolutionLogic;->isApplicable(Lcom/github/javaparser/resolution/declarations/ResolvedConstructorDeclaration;Ljava/util/List;Lcom/github/javaparser/resolution/TypeSolver;Z)Z

    move-result p0

    return p0
.end method
