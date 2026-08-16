.class public Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static JAVA_LANG_OBJECT:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->JAVA_LANG_OBJECT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/util/List;Lcom/github/javaparser/resolution/TypeSolver;Lcom/github/javaparser/resolution/MethodUsage;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->lambda$findMostApplicableUsage$4(Ljava/lang/String;Ljava/util/List;Lcom/github/javaparser/resolution/TypeSolver;Lcom/github/javaparser/resolution/MethodUsage;)Z

    move-result p0

    return p0
.end method

.method private static areOverride(Lcom/github/javaparser/resolution/MethodUsage;Lcom/github/javaparser/resolution/MethodUsage;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "winningCandidate",
            "other"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/MethodUsage;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/MethodUsage;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/github/javaparser/resolution/MethodUsage;->getNoParams()I

    move-result v0

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/MethodUsage;->getNoParams()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/github/javaparser/resolution/MethodUsage;->getNoParams()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/MethodUsage;->getParamTypes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/resolution/types/ResolvedType;

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/MethodUsage;->getParamTypes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic b(Ljava/util/Set;Ljava/util/function/Function;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->lambda$distinctByKey$1(Ljava/util/Set;Ljava/util/function/Function;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Ljava/lang/String;Ljava/util/List;Lcom/github/javaparser/resolution/TypeSolver;ZLcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->lambda$findMostApplicable$3(Ljava/lang/String;Ljava/util/List;Lcom/github/javaparser/resolution/TypeSolver;ZLcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;)Z

    move-result p0

    return p0
.end method

.method private static convertToVariadicParameter(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedArrayType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->asArrayType()Lcom/github/javaparser/resolution/types/ResolvedArrayType;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/github/javaparser/resolution/types/ResolvedArrayType;

    invoke-direct {v0, p0}, Lcom/github/javaparser/resolution/types/ResolvedArrayType;-><init>(Lcom/github/javaparser/resolution/types/ResolvedType;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static synthetic d(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lcom/github/javaparser/resolution/TypeSolver;Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->lambda$replaceTypeParam$0(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lcom/github/javaparser/resolution/TypeSolver;Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p0

    return-object p0
.end method

.method private static distinctByKey(Ljava/util/function/Function;)Ljava/util/function/Predicate;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyExtractor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;*>;)",
            "Ljava/util/function/Predicate<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/concurrent/ConcurrentHashMap;->newKeySet()Ljava/util/concurrent/ConcurrentHashMap$KeySetView;

    move-result-object v0

    new-instance v1, Lh0/p;

    invoke-direct {v1, v0, p0}, Lh0/p;-><init>(Ljava/util/Set;Ljava/util/function/Function;)V

    return-object v1
.end method

.method public static synthetic e(Ljava/lang/String;Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->lambda$findMostApplicable$2(Ljava/lang/String;Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;)Z

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

.method public static findMostApplicable(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/github/javaparser/resolution/TypeSolver;)Lcom/github/javaparser/resolution/model/SymbolReference;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "methods",
            "name",
            "argumentsTypes",
            "typeSolver"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;",
            "Lcom/github/javaparser/resolution/TypeSolver;",
            ")",
            "Lcom/github/javaparser/resolution/model/SymbolReference<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->findMostApplicable(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/github/javaparser/resolution/TypeSolver;Z)Lcom/github/javaparser/resolution/model/SymbolReference;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/github/javaparser/resolution/model/SymbolReference;->isSolved()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-static {p0, p1, p2, p3, v0}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->findMostApplicable(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/github/javaparser/resolution/TypeSolver;Z)Lcom/github/javaparser/resolution/model/SymbolReference;

    move-result-object p0

    return-object p0
.end method

.method public static findMostApplicable(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/github/javaparser/resolution/TypeSolver;Z)Lcom/github/javaparser/resolution/model/SymbolReference;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "methods",
            "name",
            "argumentsTypes",
            "typeSolver",
            "wildcardTolerance"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;",
            "Lcom/github/javaparser/resolution/TypeSolver;",
            "Z)",
            "Lcom/github/javaparser/resolution/model/SymbolReference<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;",
            ">;"
        }
    .end annotation

    .line 4
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lh0/s;

    invoke-direct {v0, p1}, Lh0/s;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lh0/t;

    invoke-direct {v0}, Lh0/t;-><init>()V

    .line 6
    invoke-static {v0}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->distinctByKey(Ljava/util/function/Function;)Ljava/util/function/Predicate;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lh0/u;

    invoke-direct {v0, p1, p2, p3, p4}, Lh0/u;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/github/javaparser/resolution/TypeSolver;Z)V

    .line 7
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 8
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 9
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    invoke-static {}, Lcom/github/javaparser/resolution/model/SymbolReference;->unsolved()Lcom/github/javaparser/resolution/model/SymbolReference;

    move-result-object p0

    return-object p0

    .line 11
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-le p1, p4, :cond_6

    .line 12
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    move v0, p3

    .line 13
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 14
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/resolution/types/ResolvedType;

    invoke-interface {v1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isNull()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 16
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 17
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 18
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 19
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    .line 20
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->getParam(I)Lcom/github/javaparser/resolution/declarations/ResolvedParameterDeclaration;

    move-result-object v4

    invoke-interface {v4}, Lcom/github/javaparser/resolution/declarations/ResolvedValueDeclaration;->getType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v4

    invoke-interface {v4}, Lcom/github/javaparser/resolution/types/ResolvedType;->isArray()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 21
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 22
    :cond_5
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_6

    .line 23
    invoke-interface {p0, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 24
    :cond_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, p4, :cond_7

    .line 25
    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/resolution/declarations/ResolvedDeclaration;

    invoke-static {p0}, Lcom/github/javaparser/resolution/model/SymbolReference;->solved(Lcom/github/javaparser/resolution/declarations/ResolvedDeclaration;)Lcom/github/javaparser/resolution/model/SymbolReference;

    move-result-object p0

    return-object p0

    .line 26
    :cond_7
    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    const/4 v0, 0x0

    move v2, p3

    move v1, p4

    .line 27
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_d

    .line 28
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    .line 29
    invoke-static {p1, v0, p2}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->isMoreSpecific(Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_8

    move v2, p3

    goto :goto_4

    .line 30
    :cond_8
    invoke-static {v0, p1, p2}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->isMoreSpecific(Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_9

    move v2, p3

    :goto_3
    move-object p1, v0

    goto :goto_4

    .line 31
    :cond_9
    invoke-interface {p1}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParametrizable;->isGeneric()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParametrizable;->isGeneric()Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_3

    .line 32
    :cond_a
    invoke-interface {p1}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParametrizable;->isGeneric()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-interface {v0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParametrizable;->isGeneric()Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_4

    .line 33
    :cond_b
    invoke-interface {p1}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->declaringType()Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    move-result-object v3

    .line 34
    invoke-interface {v3}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;->getQualifiedName()Ljava/lang/String;

    move-result-object v3

    .line 35
    invoke-interface {v0}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->declaringType()Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    move-result-object v4

    invoke-interface {v4}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;->getQualifiedName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    move v2, p4

    :cond_c
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_d
    if-eqz v2, :cond_f

    .line 36
    invoke-static {p1, p2}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->isExactMatch(Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;Ljava/util/List;)Z

    move-result p0

    if-nez p0, :cond_f

    .line 37
    invoke-static {v0, p2}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->isExactMatch(Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_e

    move-object p1, v0

    goto :goto_5

    .line 38
    :cond_e
    new-instance p0, Lcom/github/javaparser/resolution/MethodAmbiguityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ambiguous method call: cannot find a most applicable method: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/javaparser/resolution/MethodAmbiguityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 39
    :cond_f
    :goto_5
    invoke-static {p1}, Lcom/github/javaparser/resolution/model/SymbolReference;->solved(Lcom/github/javaparser/resolution/declarations/ResolvedDeclaration;)Lcom/github/javaparser/resolution/model/SymbolReference;

    move-result-object p0

    return-object p0
.end method

.method public static findMostApplicableUsage(Ljava/util/List;Ljava/lang/String;Ljava/util/List;Lcom/github/javaparser/resolution/TypeSolver;)Ljava/util/Optional;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "methods",
            "name",
            "argumentsTypes",
            "typeSolver"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/MethodUsage;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;",
            "Lcom/github/javaparser/resolution/TypeSolver;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/resolution/MethodUsage;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lh0/q;

    invoke-direct {v0, p1, p2, p3}, Lh0/q;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/github/javaparser/resolution/TypeSolver;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {p0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/resolution/MethodUsage;

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    if-ge v0, p3, :cond_6

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/github/javaparser/resolution/MethodUsage;

    invoke-static {p1, p3, p2}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->isMoreSpecific(Lcom/github/javaparser/resolution/MethodUsage;Lcom/github/javaparser/resolution/MethodUsage;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p3, p1, p2}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->isMoreSpecific(Lcom/github/javaparser/resolution/MethodUsage;Lcom/github/javaparser/resolution/MethodUsage;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object p1, p3

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/github/javaparser/resolution/MethodUsage;->declaringType()Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    move-result-object v1

    invoke-interface {v1}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/github/javaparser/resolution/MethodUsage;->declaringType()Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    move-result-object v2

    invoke-interface {v2}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {p1, p3}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->areOverride(Lcom/github/javaparser/resolution/MethodUsage;Lcom/github/javaparser/resolution/MethodUsage;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    new-instance p0, Lcom/github/javaparser/resolution/MethodAmbiguityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ambiguous method call: cannot find a most applicable method: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ". First declared in "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/MethodUsage;->declaringType()Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    move-result-object p1

    invoke-interface {p1}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;->getQualifiedName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/javaparser/resolution/MethodAmbiguityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private static getLastParameterIndex(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "countOfMethodParametersDeclared"
        }
    .end annotation

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static getMethodUsageExplicitAndVariadicParameterType(Lcom/github/javaparser/resolution/MethodUsage;I)Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "method",
            "i"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/MethodUsage;->getNoParams()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/github/javaparser/resolution/MethodUsage;->getParamType(I)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/github/javaparser/resolution/MethodUsage;->getDeclaration()Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    move-result-object p1

    invoke-interface {p1}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->hasVariadicParameter()Z

    move-result p1

    if-eqz p1, :cond_1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/github/javaparser/resolution/MethodUsage;->getParamType(I)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getMethodsExplicitAndVariadicParameterType(Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;I)Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "method",
            "i"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->getNumberOfParams()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-interface {p0, p1}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->getParam(I)Lcom/github/javaparser/resolution/declarations/ResolvedParameterDeclaration;

    move-result-object p0

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedValueDeclaration;->getType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->hasVariadicParameter()Z

    move-result p1

    if-eqz p1, :cond_1

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->getParam(I)Lcom/github/javaparser/resolution/declarations/ResolvedParameterDeclaration;

    move-result-object p0

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedValueDeclaration;->getType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static groupTrailingArgumentsIntoArray(Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;Ljava/util/List;Lcom/github/javaparser/resolution/types/ResolvedType;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "methodDeclaration",
            "needleArgumentTypes",
            "expectedVariadicParameterType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ")",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->getNumberOfParams()I

    move-result v0

    invoke-static {v0}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->getLastParameterIndex(I)I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->getLastParameterIndex(I)I

    move-result v3

    if-le v2, v0, :cond_0

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->getLastParam()Lcom/github/javaparser/resolution/declarations/ResolvedParameterDeclaration;

    move-result-object v4

    invoke-interface {v4}, Lcom/github/javaparser/resolution/declarations/ResolvedValueDeclaration;->getType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v4

    invoke-static {p1, v1, v4}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->groupVariadicParamValues(Ljava/util/List;ILcom/github/javaparser/resolution/types/ResolvedType;)Ljava/util/List;

    move-result-object p1

    :cond_0
    add-int/lit8 v4, v0, -0x1

    if-ne v2, v4, :cond_1

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->getLastParam()Lcom/github/javaparser/resolution/declarations/ResolvedParameterDeclaration;

    move-result-object p0

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedValueDeclaration;->getType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->groupVariadicParamValues(Ljava/util/List;ILcom/github/javaparser/resolution/types/ResolvedType;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_1
    if-ne v2, v0, :cond_3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/resolution/types/ResolvedType;

    invoke-interface {v0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isArray()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lcom/github/javaparser/resolution/types/ResolvedType;->asArrayType()Lcom/github/javaparser/resolution/types/ResolvedArrayType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/resolution/types/ResolvedArrayType;->getComponentType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isAssignableBy(Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->getLastParam()Lcom/github/javaparser/resolution/declarations/ResolvedParameterDeclaration;

    move-result-object p0

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedValueDeclaration;->getType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p0

    invoke-static {p1, v1, p0}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->groupVariadicParamValues(Ljava/util/List;ILcom/github/javaparser/resolution/types/ResolvedType;)Ljava/util/List;

    move-result-object p1

    :cond_3
    :goto_0
    return-object p1
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
    invoke-static {p0}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->findCommonType(Ljava/util/List;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p0

    invoke-static {p0}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->convertToVariadicParameter(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedArrayType;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0
.end method

.method public static inferTypes(Lcom/github/javaparser/resolution/types/ResolvedType;Lcom/github/javaparser/resolution/types/ResolvedType;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "target",
            "mappings"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            "Ljava/util/Map<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isReferenceType()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isReferenceType()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object p0

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object p1

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->isRawType()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->isRawType()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersValues()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/resolution/types/ResolvedType;

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/resolution/types/ResolvedType;

    invoke-static {v1, v2, p2}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->inferTypes(Lcom/github/javaparser/resolution/types/ResolvedType;Lcom/github/javaparser/resolution/types/ResolvedType;Ljava/util/Map;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isReferenceType()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isWildcard()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asWildcard()Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->isBounded()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asWildcard()Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->getBoundedType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->inferTypes(Lcom/github/javaparser/resolution/types/ResolvedType;Lcom/github/javaparser/resolution/types/ResolvedType;Ljava/util/Map;)V

    :cond_3
    return-void

    :cond_4
    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isWildcard()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isWildcard()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->asWildcard()Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->isBounded()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asWildcard()Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->isBounded()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->asWildcard()Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->getBoundedType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p0

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asWildcard()Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->getBoundedType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->inferTypes(Lcom/github/javaparser/resolution/types/ResolvedType;Lcom/github/javaparser/resolution/types/ResolvedType;Ljava/util/Map;)V

    :cond_5
    return-void

    :cond_6
    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isReferenceType()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isTypeVariable()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asTypeParameter()Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    move-result-object p1

    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_7
    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isWildcard()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isTypeVariable()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asTypeParameter()Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    move-result-object p1

    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_8
    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isArray()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isArray()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->asArrayType()Lcom/github/javaparser/resolution/types/ResolvedArrayType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedArrayType;->getComponentType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p0

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asArrayType()Lcom/github/javaparser/resolution/types/ResolvedArrayType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/types/ResolvedArrayType;->getComponentType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->inferTypes(Lcom/github/javaparser/resolution/types/ResolvedType;Lcom/github/javaparser/resolution/types/ResolvedType;Ljava/util/Map;)V

    return-void

    :cond_9
    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isArray()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isWildcard()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asWildcard()Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->isBounded()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asWildcard()Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->getBoundedType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->inferTypes(Lcom/github/javaparser/resolution/types/ResolvedType;Lcom/github/javaparser/resolution/types/ResolvedType;Ljava/util/Map;)V

    :cond_a
    return-void

    :cond_b
    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isArray()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isTypeVariable()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asTypeParameter()Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    move-result-object p1

    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_c
    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isWildcard()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isReferenceType()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->asWildcard()Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->isBounded()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->asWildcard()Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->getBoundedType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->inferTypes(Lcom/github/javaparser/resolution/types/ResolvedType;Lcom/github/javaparser/resolution/types/ResolvedType;Ljava/util/Map;)V

    :cond_d
    return-void

    :cond_e
    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isConstraint()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isReferenceType()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->asConstraintType()Lcom/github/javaparser/resolution/types/ResolvedLambdaConstraintType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedLambdaConstraintType;->getBound()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->inferTypes(Lcom/github/javaparser/resolution/types/ResolvedType;Lcom/github/javaparser/resolution/types/ResolvedType;Ljava/util/Map;)V

    return-void

    :cond_f
    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isConstraint()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isTypeVariable()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->asConstraintType()Lcom/github/javaparser/resolution/types/ResolvedLambdaConstraintType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedLambdaConstraintType;->getBound()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->inferTypes(Lcom/github/javaparser/resolution/types/ResolvedType;Lcom/github/javaparser/resolution/types/ResolvedType;Ljava/util/Map;)V

    return-void

    :cond_10
    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isTypeVariable()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isTypeVariable()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asTypeParameter()Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    move-result-object p1

    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_11
    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isTypeVariable()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p1, p0, p2}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->inferTypes(Lcom/github/javaparser/resolution/types/ResolvedType;Lcom/github/javaparser/resolution/types/ResolvedType;Ljava/util/Map;)V

    return-void

    :cond_12
    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isPrimitive()Z

    move-result p2

    if-nez p2, :cond_15

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isPrimitive()Z

    move-result p2

    if-eqz p2, :cond_13

    goto :goto_1

    :cond_13
    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isNull()Z

    move-result p0

    if-eqz p0, :cond_14

    return-void

    :cond_14
    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isReferenceType()Z

    move-result p0

    if-eqz p0, :cond_15

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->isJavaLangObject()Z

    :cond_15
    :goto_1
    return-void
.end method

.method public static isApplicable(Lcom/github/javaparser/resolution/MethodUsage;Ljava/lang/String;Ljava/util/List;Lcom/github/javaparser/resolution/TypeSolver;)Z
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "methodUsage",
            "needleName",
            "needleParameterTypes",
            "typeSolver"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/resolution/MethodUsage;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;",
            "Lcom/github/javaparser/resolution/TypeSolver;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 48
    invoke-virtual/range {p0 .. p0}, Lcom/github/javaparser/resolution/MethodUsage;->getName()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    return v4

    .line 49
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/github/javaparser/resolution/MethodUsage;->getNoParams()I

    move-result v3

    .line 50
    invoke-static {v3}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->getLastParameterIndex(I)I

    move-result v5

    .line 51
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    .line 52
    invoke-virtual/range {p0 .. p0}, Lcom/github/javaparser/resolution/MethodUsage;->getDeclaration()Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    move-result-object v7

    invoke-interface {v7}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->hasVariadicParameter()Z

    move-result v7

    if-nez v7, :cond_1

    if-eq v6, v3, :cond_1

    return v4

    :cond_1
    if-eq v6, v3, :cond_2

    if-ge v6, v5, :cond_2

    return v4

    :cond_2
    move v8, v4

    :goto_0
    if-ge v8, v6, :cond_12

    .line 53
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/github/javaparser/resolution/types/ResolvedType;

    if-eqz v7, :cond_4

    if-lt v8, v5, :cond_4

    .line 54
    invoke-virtual {v0, v5}, Lcom/github/javaparser/resolution/MethodUsage;->getParamType(I)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v11

    if-ne v6, v3, :cond_3

    .line 55
    invoke-interface {v11, v10}, Lcom/github/javaparser/resolution/types/ResolvedType;->isAssignableBy(Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result v12

    if-eqz v12, :cond_3

    goto :goto_1

    .line 56
    :cond_3
    invoke-interface {v11}, Lcom/github/javaparser/resolution/types/ResolvedType;->asArrayType()Lcom/github/javaparser/resolution/types/ResolvedArrayType;

    move-result-object v11

    invoke-virtual {v11}, Lcom/github/javaparser/resolution/types/ResolvedArrayType;->getComponentType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v11

    goto :goto_1

    .line 57
    :cond_4
    invoke-virtual {v0, v8}, Lcom/github/javaparser/resolution/MethodUsage;->getParamType(I)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v11

    .line 58
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/github/javaparser/resolution/MethodUsage;->getDeclaration()Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    move-result-object v12

    invoke-interface {v12}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParametrizable;->getTypeParameters()Ljava/util/List;

    move-result-object v12

    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/github/javaparser/resolution/MethodUsage;->declaringType()Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    move-result-object v13

    invoke-interface {v13}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParametrizable;->getTypeParameters()Ljava/util/List;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 60
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    move v14, v4

    :goto_2
    if-ge v14, v3, :cond_7

    .line 61
    invoke-virtual/range {p0 .. p0}, Lcom/github/javaparser/resolution/MethodUsage;->getDeclaration()Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    move-result-object v15

    invoke-interface {v15, v14}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->getParam(I)Lcom/github/javaparser/resolution/declarations/ResolvedParameterDeclaration;

    move-result-object v15

    .line 62
    invoke-interface {v15}, Lcom/github/javaparser/resolution/declarations/ResolvedValueDeclaration;->getType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v16

    .line 63
    invoke-interface {v15}, Lcom/github/javaparser/resolution/declarations/ResolvedParameterDeclaration;->isVariadic()Z

    move-result v15

    if-eqz v15, :cond_6

    if-ne v6, v14, :cond_5

    goto :goto_3

    .line 64
    :cond_5
    invoke-interface/range {v16 .. v16}, Lcom/github/javaparser/resolution/types/ResolvedType;->asArrayType()Lcom/github/javaparser/resolution/types/ResolvedArrayType;

    move-result-object v15

    invoke-virtual {v15}, Lcom/github/javaparser/resolution/types/ResolvedArrayType;->getComponentType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v16

    :cond_6
    move-object/from16 v15, v16

    .line 65
    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Lcom/github/javaparser/resolution/types/ResolvedType;

    invoke-static {v4, v15, v13}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->inferTypes(Lcom/github/javaparser/resolution/types/ResolvedType;Lcom/github/javaparser/resolution/types/ResolvedType;Ljava/util/Map;)V

    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x0

    goto :goto_2

    .line 66
    :cond_7
    :goto_3
    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v13, v11

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 67
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    .line 68
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/github/javaparser/resolution/types/ResolvedType;

    invoke-interface {v13, v15, v14}, Lcom/github/javaparser/resolution/types/ResolvedType;->replaceTypeVariables(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v13

    goto :goto_4

    .line 69
    :cond_8
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v14, v11

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    .line 70
    invoke-interface {v15}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getBounds()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_9

    .line 71
    new-instance v9, Lcom/github/javaparser/resolution/model/typesystem/ReferenceTypeImpl;

    sget-object v0, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->JAVA_LANG_OBJECT:Ljava/lang/String;

    .line 72
    invoke-interface {v2, v0}, Lcom/github/javaparser/resolution/TypeSolver;->solveType(Ljava/lang/String;)Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/github/javaparser/resolution/model/typesystem/ReferenceTypeImpl;-><init>(Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)V

    .line 73
    invoke-static {v9}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->extendsBound(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object v0

    .line 74
    invoke-interface {v14, v15, v0}, Lcom/github/javaparser/resolution/types/ResolvedType;->replaceTypeVariables(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    :goto_6
    move-object v14, v0

    goto :goto_7

    .line 75
    :cond_9
    invoke-interface {v15}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getBounds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v9, 0x1

    if-ne v0, v9, :cond_b

    .line 76
    invoke-interface {v15}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getBounds()Ljava/util/List;

    move-result-object v0

    const/4 v9, 0x0

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;

    .line 77
    invoke-virtual {v0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;->isExtends()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 78
    invoke-virtual {v0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;->getType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    invoke-static {v0}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->extendsBound(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object v0

    .line 79
    invoke-interface {v14, v15, v0}, Lcom/github/javaparser/resolution/types/ResolvedType;->replaceTypeVariables(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    goto :goto_6

    .line 80
    :cond_a
    invoke-virtual {v0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;->getType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    invoke-static {v0}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->superBound(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object v0

    .line 81
    invoke-interface {v14, v15, v0}, Lcom/github/javaparser/resolution/types/ResolvedType;->replaceTypeVariables(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    goto :goto_6

    :goto_7
    move-object/from16 v0, p0

    goto :goto_5

    .line 82
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 83
    :cond_c
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v4, v11

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    .line 84
    invoke-interface {v9}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getBounds()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_d

    .line 85
    new-instance v12, Lcom/github/javaparser/resolution/model/typesystem/ReferenceTypeImpl;

    sget-object v15, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->JAVA_LANG_OBJECT:Ljava/lang/String;

    .line 86
    invoke-interface {v2, v15}, Lcom/github/javaparser/resolution/TypeSolver;->solveType(Ljava/lang/String;)Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    move-result-object v15

    invoke-direct {v12, v15}, Lcom/github/javaparser/resolution/model/typesystem/ReferenceTypeImpl;-><init>(Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)V

    .line 87
    invoke-interface {v4, v9, v12}, Lcom/github/javaparser/resolution/types/ResolvedType;->replaceTypeVariables(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v4

    goto :goto_8

    .line 88
    :cond_d
    invoke-interface {v9}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getBounds()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    const/4 v15, 0x1

    if-ne v12, v15, :cond_f

    .line 89
    invoke-interface {v9}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getBounds()Ljava/util/List;

    move-result-object v12

    const/4 v15, 0x0

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;

    .line 90
    invoke-virtual {v12}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;->isExtends()Z

    move-result v15

    if-eqz v15, :cond_e

    .line 91
    invoke-virtual {v12}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;->getType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v12

    invoke-interface {v4, v9, v12}, Lcom/github/javaparser/resolution/types/ResolvedType;->replaceTypeVariables(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v4

    goto :goto_8

    .line 92
    :cond_e
    new-instance v12, Lcom/github/javaparser/resolution/model/typesystem/ReferenceTypeImpl;

    sget-object v15, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->JAVA_LANG_OBJECT:Ljava/lang/String;

    .line 93
    invoke-interface {v2, v15}, Lcom/github/javaparser/resolution/TypeSolver;->solveType(Ljava/lang/String;)Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    move-result-object v15

    invoke-direct {v12, v15}, Lcom/github/javaparser/resolution/model/typesystem/ReferenceTypeImpl;-><init>(Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)V

    .line 94
    invoke-interface {v4, v9, v12}, Lcom/github/javaparser/resolution/types/ResolvedType;->replaceTypeVariables(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v4

    goto :goto_8

    .line 95
    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 96
    :cond_10
    invoke-interface {v14, v10}, Lcom/github/javaparser/resolution/types/ResolvedType;->isAssignableBy(Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 97
    invoke-interface {v4, v10}, Lcom/github/javaparser/resolution/types/ResolvedType;->isAssignableBy(Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 98
    invoke-interface {v13, v10}, Lcom/github/javaparser/resolution/types/ResolvedType;->isAssignableBy(Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 99
    invoke-interface {v11, v10}, Lcom/github/javaparser/resolution/types/ResolvedType;->isAssignableBy(Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x0

    return v0

    :cond_11
    const/4 v0, 0x0

    add-int/lit8 v8, v8, 0x1

    move v4, v0

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_12
    const/4 v4, 0x1

    return v4
.end method

.method public static isApplicable(Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;Ljava/lang/String;Ljava/util/List;Lcom/github/javaparser/resolution/TypeSolver;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "method",
            "name",
            "argumentsTypes",
            "typeSolver"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;",
            "Lcom/github/javaparser/resolution/TypeSolver;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, p3, v0}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->isApplicable(Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;Ljava/lang/String;Ljava/util/List;Lcom/github/javaparser/resolution/TypeSolver;Z)Z

    move-result p0

    return p0
.end method

.method private static isApplicable(Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;Ljava/lang/String;Ljava/util/List;Lcom/github/javaparser/resolution/TypeSolver;Z)Z
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "methodDeclaration",
            "needleName",
            "needleArgumentTypes",
            "typeSolver",
            "withWildcardTolerance"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;",
            "Lcom/github/javaparser/resolution/TypeSolver;",
            "Z)Z"
        }
    .end annotation

    .line 2
    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedDeclaration;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->getNumberOfParams()I

    move-result p1

    .line 4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 5
    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->hasVariadicParameter()Z

    move-result v2

    if-nez v2, :cond_1

    if-eq v1, p1, :cond_1

    return v0

    :cond_1
    if-eqz v2, :cond_6

    add-int/lit8 v3, p1, -0x2

    if-gt v1, v3, :cond_2

    return v0

    .line 6
    :cond_2
    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->getLastParam()Lcom/github/javaparser/resolution/declarations/ResolvedParameterDeclaration;

    move-result-object v3

    invoke-interface {v3}, Lcom/github/javaparser/resolution/declarations/ResolvedValueDeclaration;->getType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v3

    .line 7
    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParametrizable;->getTypeParameters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    .line 8
    invoke-static {v3, v5, p3}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->replaceTypeParam(Lcom/github/javaparser/resolution/types/ResolvedType;Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lcom/github/javaparser/resolution/TypeSolver;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v3

    goto :goto_0

    :cond_3
    if-le v1, p1, :cond_5

    move v4, p1

    :goto_1
    if-ge v4, v1, :cond_5

    .line 9
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/javaparser/resolution/types/ResolvedType;

    .line 10
    invoke-interface {v3}, Lcom/github/javaparser/resolution/types/ResolvedType;->asArrayType()Lcom/github/javaparser/resolution/types/ResolvedArrayType;

    move-result-object v6

    .line 11
    invoke-virtual {v6}, Lcom/github/javaparser/resolution/types/ResolvedArrayType;->getComponentType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v6

    .line 12
    invoke-interface {v6, v5}, Lcom/github/javaparser/resolution/types/ResolvedType;->isAssignableBy(Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result v5

    if-nez v5, :cond_4

    return v0

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 13
    :cond_5
    invoke-static {p0, p2, v3}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->groupTrailingArgumentsIntoArray(Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;Ljava/util/List;Lcom/github/javaparser/resolution/types/ResolvedType;)Ljava/util/List;

    move-result-object p2

    .line 14
    :cond_6
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, p1, :cond_7

    return v0

    .line 15
    :cond_7
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move v3, v0

    move v4, v3

    :goto_2
    const/4 v5, 0x1

    if-ge v3, p1, :cond_13

    .line 16
    invoke-interface {p0, v3}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->getParam(I)Lcom/github/javaparser/resolution/declarations/ResolvedParameterDeclaration;

    move-result-object v6

    invoke-interface {v6}, Lcom/github/javaparser/resolution/declarations/ResolvedValueDeclaration;->getType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v6

    .line 17
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/github/javaparser/resolution/types/ResolvedType;

    .line 18
    invoke-interface {v6}, Lcom/github/javaparser/resolution/types/ResolvedType;->isTypeVariable()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v6}, Lcom/github/javaparser/resolution/types/ResolvedType;->isWildcard()Z

    move-result v8

    if-nez v8, :cond_8

    .line 19
    invoke-interface {v6}, Lcom/github/javaparser/resolution/types/ResolvedType;->asTypeParameter()Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    move-result-object v8

    invoke-interface {v8}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->declaredOnMethod()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 20
    invoke-interface {v6}, Lcom/github/javaparser/resolution/types/ResolvedType;->asTypeParameter()Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    move-result-object v5

    invoke-interface {v5}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    .line 21
    :cond_8
    invoke-interface {p0, v3}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->getParam(I)Lcom/github/javaparser/resolution/declarations/ResolvedParameterDeclaration;

    move-result-object v8

    invoke-interface {v8}, Lcom/github/javaparser/resolution/declarations/ResolvedParameterDeclaration;->isVariadic()Z

    move-result v8

    if-eqz v8, :cond_9

    add-int/lit8 v8, p1, -0x1

    if-ne v3, v8, :cond_9

    .line 22
    invoke-static {v6}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->isArrayOfObject(Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 23
    invoke-interface {v7}, Lcom/github/javaparser/resolution/types/ResolvedType;->isArray()Z

    move-result v8

    if-eqz v8, :cond_9

    goto/16 :goto_7

    .line 24
    :cond_9
    invoke-interface {v6, v7}, Lcom/github/javaparser/resolution/types/ResolvedType;->isAssignableBy(Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 25
    invoke-interface {p0, v3}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->getParam(I)Lcom/github/javaparser/resolution/declarations/ResolvedParameterDeclaration;

    move-result-object v8

    invoke-interface {v8}, Lcom/github/javaparser/resolution/declarations/ResolvedParameterDeclaration;->isVariadic()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 26
    invoke-static {v6}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->convertToVariadicParameter(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedArrayType;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/github/javaparser/resolution/types/ResolvedArrayType;->isAssignableBy(Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result v8

    if-eqz v8, :cond_a

    goto :goto_3

    :cond_a
    move v8, v0

    goto :goto_4

    :cond_b
    :goto_3
    move v8, v5

    :goto_4
    if-nez v8, :cond_c

    .line 27
    invoke-interface {v6}, Lcom/github/javaparser/resolution/types/ResolvedType;->isReferenceType()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 28
    invoke-interface {v7}, Lcom/github/javaparser/resolution/types/ResolvedType;->isReferenceType()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 29
    invoke-interface {v6}, Lcom/github/javaparser/resolution/types/ResolvedType;->asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object v8

    .line 30
    invoke-interface {v7}, Lcom/github/javaparser/resolution/types/ResolvedType;->asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object v9

    .line 31
    invoke-static {v8, v9, v1}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->isAssignableMatchTypeParameters(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;Lcom/github/javaparser/resolution/types/ResolvedReferenceType;Ljava/util/Map;)Z

    move-result v8

    :cond_c
    if-nez v8, :cond_12

    .line 32
    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParametrizable;->getTypeParameters()Ljava/util/List;

    move-result-object v8

    .line 33
    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->declaringType()Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    move-result-object v9

    invoke-interface {v9}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParametrizable;->getTypeParameters()Ljava/util/List;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 34
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    .line 35
    invoke-static {v6, v9, p3}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->replaceTypeParam(Lcom/github/javaparser/resolution/types/ResolvedType;Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lcom/github/javaparser/resolution/TypeSolver;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v6

    goto :goto_5

    .line 36
    :cond_d
    invoke-interface {v6, v7}, Lcom/github/javaparser/resolution/types/ResolvedType;->isAssignableBy(Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result v8

    if-nez v8, :cond_12

    .line 37
    invoke-interface {v7}, Lcom/github/javaparser/resolution/types/ResolvedType;->isWildcard()Z

    move-result v8

    if-eqz v8, :cond_f

    if-eqz p4, :cond_f

    .line 38
    invoke-interface {v6}, Lcom/github/javaparser/resolution/types/ResolvedType;->isPrimitive()Z

    move-result v8

    if-nez v8, :cond_f

    :cond_e
    :goto_6
    move v4, v5

    goto :goto_7

    .line 39
    :cond_f
    invoke-interface {v7}, Lcom/github/javaparser/resolution/types/ResolvedType;->isConstraint()Z

    move-result v8

    if-eqz v8, :cond_10

    if-eqz p4, :cond_10

    .line 40
    invoke-interface {v7}, Lcom/github/javaparser/resolution/types/ResolvedType;->asConstraintType()Lcom/github/javaparser/resolution/types/ResolvedLambdaConstraintType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/github/javaparser/resolution/types/ResolvedLambdaConstraintType;->getBound()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v8

    invoke-interface {v8}, Lcom/github/javaparser/resolution/types/ResolvedType;->isTypeVariable()Z

    move-result v8

    if-nez v8, :cond_e

    .line 41
    invoke-interface {v7}, Lcom/github/javaparser/resolution/types/ResolvedType;->asConstraintType()Lcom/github/javaparser/resolution/types/ResolvedLambdaConstraintType;

    move-result-object v8

    .line 42
    invoke-virtual {v8}, Lcom/github/javaparser/resolution/types/ResolvedLambdaConstraintType;->getBound()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v8

    .line 43
    invoke-interface {v8}, Lcom/github/javaparser/resolution/types/ResolvedType;->isTypeVariable()Z

    move-result v8

    if-nez v8, :cond_10

    .line 44
    invoke-interface {v7}, Lcom/github/javaparser/resolution/types/ResolvedType;->asConstraintType()Lcom/github/javaparser/resolution/types/ResolvedLambdaConstraintType;

    move-result-object v8

    .line 45
    invoke-virtual {v8}, Lcom/github/javaparser/resolution/types/ResolvedLambdaConstraintType;->getBound()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v8

    .line 46
    invoke-interface {v6, v8}, Lcom/github/javaparser/resolution/types/ResolvedType;->isAssignableBy(Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result v8

    if-eqz v8, :cond_10

    goto :goto_6

    :cond_10
    if-eqz v2, :cond_11

    add-int/lit8 v5, p1, -0x1

    if-ne v3, v5, :cond_11

    .line 47
    invoke-static {v6}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->convertToVariadicParameter(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedArrayType;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/github/javaparser/resolution/types/ResolvedArrayType;->isAssignableBy(Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result v5

    if-eqz v5, :cond_11

    goto :goto_7

    :cond_11
    return v0

    :cond_12
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_13
    if-eqz p4, :cond_14

    if-eqz v4, :cond_15

    :cond_14
    move v0, v5

    :cond_15
    return v0
.end method

.method private static isArrayOfObject(Lcom/github/javaparser/resolution/types/ResolvedType;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->asArrayType()Lcom/github/javaparser/resolution/types/ResolvedArrayType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/resolution/types/ResolvedArrayType;->getComponentType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isReferenceType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->asArrayType()Lcom/github/javaparser/resolution/types/ResolvedArrayType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedArrayType;->getComponentType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p0

    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->isJavaLangObject()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isAssignableMatchTypeParameters(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;Lcom/github/javaparser/resolution/types/ResolvedReferenceType;Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "expected",
            "actual",
            "matchedParameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/resolution/types/ResolvedReferenceType;",
            "Lcom/github/javaparser/resolution/types/ResolvedReferenceType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;)Z"
        }
    .end annotation

    .line 16
    invoke-virtual {p1}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    invoke-static {p0, p1, p2}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->isAssignableMatchTypeParametersMatchingQName(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;Lcom/github/javaparser/resolution/types/ResolvedReferenceType;Ljava/util/Map;)Z

    move-result p0

    return p0

    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getAllAncestors()Ljava/util/List;

    move-result-object p1

    .line 19
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    .line 20
    invoke-static {p0, v0, p2}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->isAssignableMatchTypeParametersMatchingQName(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;Lcom/github/javaparser/resolution/types/ResolvedReferenceType;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static isAssignableMatchTypeParameters(Lcom/github/javaparser/resolution/types/ResolvedType;Lcom/github/javaparser/resolution/types/ResolvedType;Ljava/util/Map;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "expected",
            "actual",
            "matchedParameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isReferenceType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isReferenceType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object p0

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object p1

    .line 3
    invoke-static {p0, p1, p2}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->isAssignableMatchTypeParameters(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;Lcom/github/javaparser/resolution/types/ResolvedReferenceType;Ljava/util/Map;)Z

    move-result p0

    return p0

    .line 4
    :cond_0
    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isReferenceType()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->isBoxType(Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getQualifiedName()Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-static {p2}, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->byBoxTypeQName(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p2

    .line 7
    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/resolution/types/ResolvedType;

    .line 8
    invoke-interface {p2}, Lcom/github/javaparser/resolution/types/ResolvedType;->asPrimitive()Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    .line 9
    invoke-interface {p0, p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isAssignableBy(Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result p0

    return p0

    .line 10
    :cond_1
    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isTypeVariable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 11
    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->asTypeParameter()Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    move-result-object p0

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    .line 12
    :cond_2
    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isArray()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->asArrayType()Lcom/github/javaparser/resolution/types/ResolvedArrayType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedArrayType;->getComponentType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    .line 14
    :cond_3
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private static isAssignableMatchTypeParametersMatchingQName(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;Lcom/github/javaparser/resolution/types/ResolvedReferenceType;Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "expected",
            "actual",
            "matchedParameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/resolution/types/ResolvedReferenceType;",
            "Lcom/github/javaparser/resolution/types/ResolvedReferenceType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_d

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_c

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersValues()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/resolution/types/ResolvedType;

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersValues()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/resolution/types/ResolvedType;

    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isReferenceType()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isReferenceType()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object p0

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->isAssignableMatchTypeParameters(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;Lcom/github/javaparser/resolution/types/ResolvedReferenceType;Ljava/util/Map;)Z

    move-result p0

    return p0

    :cond_1
    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->asArrayType()Lcom/github/javaparser/resolution/types/ResolvedArrayType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedArrayType;->getComponentType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p0

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asArrayType()Lcom/github/javaparser/resolution/types/ResolvedArrayType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/types/ResolvedArrayType;->getComponentType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->isAssignableMatchTypeParameters(Lcom/github/javaparser/resolution/types/ResolvedType;Lcom/github/javaparser/resolution/types/ResolvedType;Ljava/util/Map;)Z

    move-result p0

    return p0

    :cond_2
    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isTypeVariable()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->asTypeParameter()Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isTypeVariable()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asTypeParameter()Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    move-result-object v1

    invoke-interface {v1}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    :goto_0
    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->asTypeVariable()Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->matchTypeVariable(Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;Lcom/github/javaparser/resolution/types/ResolvedType;Ljava/util/Map;)Z

    move-result p0

    return p0

    :cond_5
    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isReferenceType()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isTypeVariable()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asTypeVariable()Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;

    move-result-object p1

    invoke-static {p1, p0, p2}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->matchTypeVariable(Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;Lcom/github/javaparser/resolution/types/ResolvedType;Ljava/util/Map;)Z

    move-result p0

    return p0

    :cond_6
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return v1

    :cond_7
    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isWildcard()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->asWildcard()Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->isExtends()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isWildcard()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asWildcard()Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->isBounded()Z

    move-result v0

    if-nez v0, :cond_8

    return v2

    :cond_8
    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isTypeVariable()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asTypeVariable()Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;

    move-result-object p1

    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->asWildcard()Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->getBoundedType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p0

    invoke-static {p1, p0, p2}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->matchTypeVariable(Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;Lcom/github/javaparser/resolution/types/ResolvedType;Ljava/util/Map;)Z

    move-result p0

    return p0

    :cond_9
    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->asWildcard()Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->getBoundedType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->isAssignableMatchTypeParameters(Lcom/github/javaparser/resolution/types/ResolvedType;Lcom/github/javaparser/resolution/types/ResolvedType;Ljava/util/Map;)Z

    move-result p0

    return p0

    :cond_a
    return v2

    :cond_b
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->describe()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    return v2

    :cond_d
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public static isExactMatch(Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "method",
            "argumentsTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->getNumberOfParams()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-static {p0, v1}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->getMethodsExplicitAndVariadicParameterType(Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;I)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_1

    return v0

    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private static isJavaLangObject(Lcom/github/javaparser/resolution/types/ResolvedType;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paramType"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isReferenceType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getQualifiedName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "java.lang.Object"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isMoreSpecific(Lcom/github/javaparser/resolution/MethodUsage;Lcom/github/javaparser/resolution/MethodUsage;Ljava/util/List;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "methodA",
            "methodB",
            "argumentTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/resolution/MethodUsage;",
            "Lcom/github/javaparser/resolution/MethodUsage;",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;)Z"
        }
    .end annotation

    .line 25
    invoke-virtual {p0}, Lcom/github/javaparser/resolution/MethodUsage;->getDeclaration()Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    move-result-object p0

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/MethodUsage;->getDeclaration()Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->isMoreSpecific(Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static isMoreSpecific(Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;Ljava/util/List;)Z
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "methodA",
            "methodB",
            "argumentTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;",
            "Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    invoke-interface/range {p0 .. p0}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->hasVariadicParameter()Z

    move-result v3

    .line 2
    invoke-interface/range {p1 .. p1}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->hasVariadicParameter()Z

    move-result v4

    .line 3
    invoke-interface/range {p0 .. p0}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->getNumberOfParams()I

    move-result v5

    .line 4
    invoke-interface/range {p1 .. p1}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->getNumberOfParams()I

    move-result v6

    .line 5
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_0

    add-int/lit8 v9, v7, -0x1

    .line 6
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/github/javaparser/resolution/types/ResolvedType;

    goto :goto_0

    :cond_0
    const/4 v9, 0x0

    :goto_0
    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v9, :cond_1

    .line 7
    invoke-interface {v9}, Lcom/github/javaparser/resolution/types/ResolvedType;->isArray()Z

    move-result v9

    if-eqz v9, :cond_1

    move v9, v11

    goto :goto_1

    :cond_1
    move v9, v10

    :goto_1
    if-nez v3, :cond_3

    if-ne v5, v7, :cond_3

    if-eqz v4, :cond_3

    if-ne v6, v7, :cond_2

    if-nez v9, :cond_3

    :cond_2
    return v11

    :cond_3
    if-nez v4, :cond_5

    if-ne v6, v7, :cond_5

    if-eqz v3, :cond_5

    if-ne v5, v7, :cond_4

    if-nez v9, :cond_5

    :cond_4
    return v10

    :cond_5
    if-eqz v3, :cond_6

    if-eqz v4, :cond_6

    if-ne v5, v6, :cond_6

    sub-int/2addr v5, v11

    if-ne v7, v5, :cond_6

    move v5, v11

    goto :goto_2

    :cond_6
    move v5, v10

    :goto_2
    move v6, v10

    move v12, v6

    :goto_3
    add-int v13, v7, v5

    if-ge v6, v13, :cond_13

    .line 8
    invoke-static {v0, v6}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->getMethodsExplicitAndVariadicParameterType(Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;I)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v13

    .line 9
    invoke-static {v1, v6}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->getMethodsExplicitAndVariadicParameterType(Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;I)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v14

    .line 10
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v15

    if-ge v6, v15, :cond_7

    .line 11
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/github/javaparser/resolution/types/ResolvedType;

    goto :goto_4

    :cond_7
    const/4 v15, 0x0

    :goto_4
    if-nez v13, :cond_8

    return v10

    :cond_8
    if-nez v14, :cond_9

    return v11

    :cond_9
    if-eqz v15, :cond_a

    .line 12
    invoke-interface {v13}, Lcom/github/javaparser/resolution/types/ResolvedType;->isPrimitive()Z

    move-result v8

    invoke-interface {v15}, Lcom/github/javaparser/resolution/types/ResolvedType;->isPrimitive()Z

    move-result v10

    if-ne v8, v10, :cond_a

    .line 13
    invoke-interface {v14}, Lcom/github/javaparser/resolution/types/ResolvedType;->isPrimitive()Z

    move-result v8

    invoke-interface {v15}, Lcom/github/javaparser/resolution/types/ResolvedType;->isPrimitive()Z

    move-result v10

    if-eq v8, v10, :cond_a

    .line 14
    invoke-interface {v13, v15}, Lcom/github/javaparser/resolution/types/ResolvedType;->isAssignableBy(Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result v8

    if-eqz v8, :cond_a

    return v11

    :cond_a
    if-eqz v15, :cond_b

    .line 15
    invoke-interface {v14}, Lcom/github/javaparser/resolution/types/ResolvedType;->isPrimitive()Z

    move-result v8

    invoke-interface {v15}, Lcom/github/javaparser/resolution/types/ResolvedType;->isPrimitive()Z

    move-result v10

    if-ne v8, v10, :cond_b

    .line 16
    invoke-interface {v13}, Lcom/github/javaparser/resolution/types/ResolvedType;->isPrimitive()Z

    move-result v8

    invoke-interface {v15}, Lcom/github/javaparser/resolution/types/ResolvedType;->isPrimitive()Z

    move-result v10

    if-eq v8, v10, :cond_b

    .line 17
    invoke-interface {v14, v15}, Lcom/github/javaparser/resolution/types/ResolvedType;->isAssignableBy(Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result v8

    if-eqz v8, :cond_b

    const/4 v8, 0x0

    return v8

    :cond_b
    add-int/lit8 v8, v7, -0x1

    if-ge v6, v8, :cond_10

    .line 18
    invoke-static {v14}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->isJavaLangObject(Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result v8

    if-nez v8, :cond_c

    invoke-static {v13}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->isJavaLangObject(Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result v8

    if-eqz v8, :cond_10

    :cond_c
    if-nez v12, :cond_e

    .line 19
    invoke-static {v14}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->isJavaLangObject(Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result v8

    if-eqz v8, :cond_d

    goto :goto_5

    :cond_d
    const/4 v12, 0x0

    goto :goto_6

    :cond_e
    :goto_5
    move v12, v11

    :cond_f
    :goto_6
    const/4 v8, 0x0

    goto :goto_7

    .line 20
    :cond_10
    invoke-interface {v13, v14}, Lcom/github/javaparser/resolution/types/ResolvedType;->isAssignableBy(Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result v8

    .line 21
    invoke-interface {v14, v13}, Lcom/github/javaparser/resolution/types/ResolvedType;->isAssignableBy(Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result v10

    if-eqz v10, :cond_11

    if-nez v8, :cond_11

    return v11

    :cond_11
    if-eqz v8, :cond_f

    if-nez v10, :cond_f

    const/4 v8, 0x0

    return v8

    .line 22
    :goto_7
    invoke-interface/range {p0 .. p0}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->getNumberOfParams()I

    move-result v10

    if-le v10, v6, :cond_12

    invoke-interface/range {p1 .. p1}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->getNumberOfParams()I

    move-result v10

    if-le v10, v6, :cond_12

    .line 23
    invoke-interface {v0, v6}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->getParam(I)Lcom/github/javaparser/resolution/declarations/ResolvedParameterDeclaration;

    move-result-object v10

    invoke-interface {v10}, Lcom/github/javaparser/resolution/declarations/ResolvedParameterDeclaration;->isVariadic()Z

    move-result v10

    .line 24
    invoke-interface {v1, v6}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->getParam(I)Lcom/github/javaparser/resolution/declarations/ResolvedParameterDeclaration;

    move-result-object v13

    invoke-interface {v13}, Lcom/github/javaparser/resolution/declarations/ResolvedParameterDeclaration;->isVariadic()Z

    move-result v13

    if-nez v10, :cond_12

    if-eqz v13, :cond_12

    return v11

    :cond_12
    add-int/lit8 v6, v6, 0x1

    move v10, v8

    goto/16 :goto_3

    :cond_13
    if-eqz v3, :cond_14

    if-nez v4, :cond_14

    return v9

    :cond_14
    if-nez v3, :cond_15

    if-eqz v4, :cond_15

    xor-int/lit8 v0, v9, 0x1

    return v0

    :cond_15
    return v12
.end method

.method private static synthetic lambda$distinctByKey$1(Ljava/util/Set;Ljava/util/function/Function;Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "seen",
            "keyExtractor",
            "t"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$findMostApplicable$2(Ljava/lang/String;Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "name",
            "m"
        }
    .end annotation

    invoke-interface {p1}, Lcom/github/javaparser/resolution/declarations/ResolvedDeclaration;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$findMostApplicable$3(Ljava/lang/String;Ljava/util/List;Lcom/github/javaparser/resolution/TypeSolver;ZLcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "name",
            "argumentsTypes",
            "typeSolver",
            "wildcardTolerance",
            "m"
        }
    .end annotation

    invoke-static {p4, p0, p1, p2, p3}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->isApplicable(Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;Ljava/lang/String;Ljava/util/List;Lcom/github/javaparser/resolution/TypeSolver;Z)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$findMostApplicableUsage$4(Ljava/lang/String;Ljava/util/List;Lcom/github/javaparser/resolution/TypeSolver;Lcom/github/javaparser/resolution/MethodUsage;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "name",
            "argumentsTypes",
            "typeSolver",
            "m"
        }
    .end annotation

    invoke-static {p3, p0, p1, p2}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->isApplicable(Lcom/github/javaparser/resolution/MethodUsage;Ljava/lang/String;Ljava/util/List;Lcom/github/javaparser/resolution/TypeSolver;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$replaceTypeParam$0(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lcom/github/javaparser/resolution/TypeSolver;Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "tp",
            "typeSolver",
            "typeParam"
        }
    .end annotation

    invoke-static {p2, p0, p1}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->replaceTypeParam(Lcom/github/javaparser/resolution/types/ResolvedType;Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lcom/github/javaparser/resolution/TypeSolver;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p0

    return-object p0
.end method

.method private static matchTypeVariable(Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;Lcom/github/javaparser/resolution/types/ResolvedType;Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "typeVariable",
            "type",
            "matchedParameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;->asTypeParameter()Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    move-result-object p0

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/resolution/types/ResolvedType;

    invoke-interface {v0, p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isAssignableBy(Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    invoke-interface {p1, v0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isAssignableBy(Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    invoke-interface {p2, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v1
.end method

.method public static replaceTypeParam(Lcom/github/javaparser/resolution/types/ResolvedType;Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lcom/github/javaparser/resolution/TypeSolver;)Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "tp",
            "typeSolver"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isTypeVariable()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isWildcard()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/github/javaparser/resolution/types/ResolvedArrayType;

    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->asArrayType()Lcom/github/javaparser/resolution/types/ResolvedArrayType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedArrayType;->getComponentType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->replaceTypeParam(Lcom/github/javaparser/resolution/types/ResolvedType;Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lcom/github/javaparser/resolution/TypeSolver;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/github/javaparser/resolution/types/ResolvedArrayType;-><init>(Lcom/github/javaparser/resolution/types/ResolvedType;)V

    return-object v0

    :cond_2
    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isReferenceType()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object p0

    new-instance v0, Lh0/r;

    invoke-direct {v0, p1, p2}, Lh0/r;-><init>(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lcom/github/javaparser/resolution/TypeSolver;)V

    invoke-virtual {p0, v0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->transformTypeParameters(Lcom/github/javaparser/resolution/types/ResolvedTypeTransformer;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p0

    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Replacing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", param "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " with "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_4
    :goto_0
    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->describe()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getBounds()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_6

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v0, :cond_5

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;->getType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p0, Lcom/github/javaparser/resolution/model/typesystem/ReferenceTypeImpl;

    sget-object p1, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->JAVA_LANG_OBJECT:Ljava/lang/String;

    invoke-interface {p2, p1}, Lcom/github/javaparser/resolution/TypeSolver;->solveType(Ljava/lang/String;)Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/javaparser/resolution/model/typesystem/ReferenceTypeImpl;-><init>(Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)V

    return-object p0

    :cond_6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :cond_7
    return-object p0
.end method

.method public static solveMethodInType(Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;Ljava/lang/String;Ljava/util/List;)Lcom/github/javaparser/resolution/model/SymbolReference;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "typeDeclaration",
            "name",
            "argumentsTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;)",
            "Lcom/github/javaparser/resolution/model/SymbolReference<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, p2, v0}, Lcom/github/javaparser/resolution/logic/MethodResolutionLogic;->solveMethodInType(Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;Ljava/lang/String;Ljava/util/List;Z)Lcom/github/javaparser/resolution/model/SymbolReference;

    move-result-object p0

    return-object p0
.end method

.method public static solveMethodInType(Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;Ljava/lang/String;Ljava/util/List;Z)Lcom/github/javaparser/resolution/model/SymbolReference;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "typeDeclaration",
            "name",
            "argumentsTypes",
            "staticOnly"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;Z)",
            "Lcom/github/javaparser/resolution/model/SymbolReference<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;",
            ">;"
        }
    .end annotation

    .line 2
    instance-of v0, p0, Lcom/github/javaparser/resolution/logic/MethodResolutionCapability;

    if-eqz v0, :cond_0

    .line 3
    check-cast p0, Lcom/github/javaparser/resolution/logic/MethodResolutionCapability;

    invoke-interface {p0, p1, p2, p3}, Lcom/github/javaparser/resolution/logic/MethodResolutionCapability;->solveMethod(Ljava/lang/String;Ljava/util/List;Z)Lcom/github/javaparser/resolution/model/SymbolReference;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
