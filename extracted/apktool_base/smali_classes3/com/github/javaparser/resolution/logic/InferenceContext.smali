.class public Lcom/github/javaparser/resolution/logic/InferenceContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private inferenceVariableTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/github/javaparser/resolution/logic/InferenceVariableType;",
            ">;"
        }
    .end annotation
.end field

.field private inferenceVariableTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/logic/InferenceVariableType;",
            ">;"
        }
    .end annotation
.end field

.field private nextInferenceVariableId:I

.field private typeSolver:Lcom/github/javaparser/resolution/TypeSolver;


# direct methods
.method public constructor <init>(Lcom/github/javaparser/resolution/TypeSolver;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeSolver"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/javaparser/resolution/logic/InferenceContext;->nextInferenceVariableId:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/javaparser/resolution/logic/InferenceContext;->inferenceVariableTypes:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/github/javaparser/resolution/logic/InferenceContext;->inferenceVariableTypeMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/github/javaparser/resolution/logic/InferenceContext;->typeSolver:Lcom/github/javaparser/resolution/TypeSolver;

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/resolution/logic/InferenceContext;->lambda$registerCorrespondance$2(Ljava/lang/String;Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lcom/github/javaparser/resolution/logic/InferenceContext;Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/javaparser/resolution/logic/InferenceContext;->lambda$resolve$4(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/github/javaparser/resolution/logic/InferenceContext;Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/javaparser/resolution/logic/InferenceContext;->lambda$placeInferenceVariables$3(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/String;Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/resolution/logic/InferenceContext;->lambda$registerCorrespondance$1(Ljava/lang/String;Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)Lcom/github/javaparser/resolution/types/ResolvedReferenceType;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/resolution/logic/InferenceContext;->lambda$registerCorrespondance$0(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object p0

    return-object p0
.end method

.method private inferenceVariableTypeForTp(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;)Lcom/github/javaparser/resolution/logic/InferenceVariableType;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tp"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/resolution/logic/InferenceContext;->inferenceVariableTypeMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/github/javaparser/resolution/logic/InferenceVariableType;

    iget v1, p0, Lcom/github/javaparser/resolution/logic/InferenceContext;->nextInferenceVariableId:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/github/javaparser/resolution/logic/InferenceContext;->nextInferenceVariableId:I

    iget-object v2, p0, Lcom/github/javaparser/resolution/logic/InferenceContext;->typeSolver:Lcom/github/javaparser/resolution/TypeSolver;

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/resolution/logic/InferenceVariableType;-><init>(ILcom/github/javaparser/resolution/TypeSolver;)V

    iget-object v1, p0, Lcom/github/javaparser/resolution/logic/InferenceContext;->inferenceVariableTypes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, p1}, Lcom/github/javaparser/resolution/logic/InferenceVariableType;->setCorrespondingTp(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;)V

    iget-object v1, p0, Lcom/github/javaparser/resolution/logic/InferenceContext;->inferenceVariableTypeMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/github/javaparser/resolution/logic/InferenceContext;->inferenceVariableTypeMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/resolution/logic/InferenceVariableType;

    return-object p1
.end method

.method private synthetic lambda$placeInferenceVariables$3(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "tp"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/github/javaparser/resolution/logic/InferenceContext;->placeInferenceVariables(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$registerCorrespondance$0(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)Lcom/github/javaparser/resolution/types/ResolvedReferenceType;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "ancestor"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$registerCorrespondance$1(Ljava/lang/String;Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "formalParamTypeQName",
            "a"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getQualifiedName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$registerCorrespondance$2(Ljava/lang/String;Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "actualParamTypeQname",
            "a"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getQualifiedName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$resolve$4(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "tp"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/github/javaparser/resolution/logic/InferenceContext;->resolve(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    return-object p1
.end method

.method private placeInferenceVariables(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isWildcard()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asWildcard()Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->isExtends()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asWildcard()Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->getBoundedType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/javaparser/resolution/logic/InferenceContext;->placeInferenceVariables(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    invoke-static {p1}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->extendsBound(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asWildcard()Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->isSuper()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asWildcard()Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->getBoundedType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/javaparser/resolution/logic/InferenceContext;->placeInferenceVariables(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    invoke-static {p1}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->superBound(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object p1

    :cond_1
    return-object p1

    :cond_2
    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isTypeVariable()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asTypeParameter()Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/javaparser/resolution/logic/InferenceContext;->inferenceVariableTypeForTp(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;)Lcom/github/javaparser/resolution/logic/InferenceVariableType;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isReferenceType()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object p1

    new-instance v0, Lh0/k;

    invoke-direct {v0, p0}, Lh0/k;-><init>(Lcom/github/javaparser/resolution/logic/InferenceContext;)V

    invoke-virtual {p1, v0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->transformTypeParameters(Lcom/github/javaparser/resolution/types/ResolvedTypeTransformer;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isArray()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/github/javaparser/resolution/types/ResolvedArrayType;

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asArrayType()Lcom/github/javaparser/resolution/types/ResolvedArrayType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/types/ResolvedArrayType;->getComponentType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/javaparser/resolution/logic/InferenceContext;->placeInferenceVariables(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/github/javaparser/resolution/types/ResolvedArrayType;-><init>(Lcom/github/javaparser/resolution/types/ResolvedType;)V

    return-object v0

    :cond_5
    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isNull()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isVoid()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isConstraint()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asConstraintType()Lcom/github/javaparser/resolution/types/ResolvedLambdaConstraintType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/types/ResolvedLambdaConstraintType;->getBound()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/javaparser/resolution/logic/InferenceContext;->placeInferenceVariables(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    invoke-static {p1}, Lcom/github/javaparser/resolution/types/ResolvedLambdaConstraintType;->bound(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedLambdaConstraintType;

    move-result-object p1

    return-object p1

    :cond_7
    instance-of v0, p1, Lcom/github/javaparser/resolution/logic/InferenceVariableType;

    if-eqz v0, :cond_8

    return-object p1

    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->describe()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_0
    return-object p1
.end method

.method private registerCorrespondance(Lcom/github/javaparser/resolution/types/ResolvedType;Lcom/github/javaparser/resolution/types/ResolvedType;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "formalType",
            "actualType"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isReferenceType()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p2}, Lcom/github/javaparser/resolution/types/ResolvedType;->isReferenceType()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object v2

    invoke-interface {p2}, Lcom/github/javaparser/resolution/types/ResolvedType;->asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object v3

    invoke-virtual {v2}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getQualifiedName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getQualifiedName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getAllAncestors()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getQualifiedName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "java.lang.Object"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance v5, Ljava/util/ArrayList;

    new-array v6, v0, [Lcom/github/javaparser/resolution/types/ResolvedType;

    aput-object p2, v6, v1

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v5}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v6, Lh0/g;

    invoke-direct {v6}, Lh0/g;-><init>()V

    invoke-interface {v4, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    invoke-static {v5, v4}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    goto :goto_0

    :cond_0
    invoke-interface {v4}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v6, Lh0/h;

    invoke-direct {v6, v5}, Lh0/h;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getAllAncestors()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getQualifiedName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lh0/i;

    invoke-direct {v5, v3}, Lh0/i;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/github/javaparser/resolution/logic/ConflictingGenericTypesException;

    invoke-direct {v0, p1, p2}, Lcom/github/javaparser/resolution/logic/ConflictingGenericTypesException;-><init>(Lcom/github/javaparser/resolution/types/ResolvedType;Lcom/github/javaparser/resolution/types/ResolvedType;)V

    throw v0

    :cond_2
    :goto_1
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/resolution/types/ResolvedType;

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object v3

    :cond_3
    invoke-virtual {v2}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getQualifiedName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getQualifiedName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-virtual {v2}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersValues()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_14

    invoke-virtual {v3}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->isRawType()Z

    move-result p1

    if-eqz p1, :cond_4

    goto/16 :goto_4

    :cond_4
    invoke-virtual {v2}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersValues()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_14

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/resolution/types/ResolvedType;

    invoke-virtual {v3}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/resolution/types/ResolvedType;

    invoke-direct {p0, p2, v2}, Lcom/github/javaparser/resolution/logic/InferenceContext;->registerCorrespondance(Lcom/github/javaparser/resolution/types/ResolvedType;Lcom/github/javaparser/resolution/types/ResolvedType;)V

    add-int/2addr v1, v0

    goto :goto_2

    :cond_5
    instance-of v0, p1, Lcom/github/javaparser/resolution/logic/InferenceVariableType;

    if-eqz v0, :cond_6

    invoke-interface {p2}, Lcom/github/javaparser/resolution/types/ResolvedType;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_6

    move-object v0, p1

    check-cast v0, Lcom/github/javaparser/resolution/logic/InferenceVariableType;

    invoke-virtual {v0, p2}, Lcom/github/javaparser/resolution/logic/InferenceVariableType;->registerEquivalentType(Lcom/github/javaparser/resolution/types/ResolvedType;)V

    instance-of v0, p2, Lcom/github/javaparser/resolution/logic/InferenceVariableType;

    if-eqz v0, :cond_14

    check-cast p2, Lcom/github/javaparser/resolution/logic/InferenceVariableType;

    invoke-virtual {p2, p1}, Lcom/github/javaparser/resolution/logic/InferenceVariableType;->registerEquivalentType(Lcom/github/javaparser/resolution/types/ResolvedType;)V

    goto/16 :goto_4

    :cond_6
    invoke-interface {p2}, Lcom/github/javaparser/resolution/types/ResolvedType;->isNull()Z

    move-result v1

    if-eqz v1, :cond_7

    goto/16 :goto_4

    :cond_7
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto/16 :goto_4

    :cond_8
    invoke-interface {p2}, Lcom/github/javaparser/resolution/types/ResolvedType;->isArray()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isArray()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asArrayType()Lcom/github/javaparser/resolution/types/ResolvedArrayType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/types/ResolvedArrayType;->getComponentType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    invoke-interface {p2}, Lcom/github/javaparser/resolution/types/ResolvedType;->asArrayType()Lcom/github/javaparser/resolution/types/ResolvedArrayType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/github/javaparser/resolution/types/ResolvedArrayType;->getComponentType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/resolution/logic/InferenceContext;->registerCorrespondance(Lcom/github/javaparser/resolution/types/ResolvedType;Lcom/github/javaparser/resolution/types/ResolvedType;)V

    goto/16 :goto_4

    :cond_9
    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isWildcard()Z

    move-result v1

    if-eqz v1, :cond_d

    instance-of v0, p2, Lcom/github/javaparser/resolution/logic/InferenceVariableType;

    if-eqz v0, :cond_a

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asWildcard()Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->isBounded()Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, p2

    check-cast v0, Lcom/github/javaparser/resolution/logic/InferenceVariableType;

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asWildcard()Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->getBoundedType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/javaparser/resolution/logic/InferenceVariableType;->registerEquivalentType(Lcom/github/javaparser/resolution/types/ResolvedType;)V

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asWildcard()Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->getBoundedType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    instance-of v0, v0, Lcom/github/javaparser/resolution/logic/InferenceVariableType;

    if-eqz v0, :cond_a

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asWildcard()Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->getBoundedType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/resolution/logic/InferenceVariableType;

    invoke-virtual {v0, p2}, Lcom/github/javaparser/resolution/logic/InferenceVariableType;->registerEquivalentType(Lcom/github/javaparser/resolution/types/ResolvedType;)V

    :cond_a
    invoke-interface {p2}, Lcom/github/javaparser/resolution/types/ResolvedType;->isWildcard()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asWildcard()Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object v0

    invoke-interface {p2}, Lcom/github/javaparser/resolution/types/ResolvedType;->asWildcard()Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object v1

    invoke-virtual {v0}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->isBounded()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v0}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->getBoundedType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v2

    instance-of v2, v2, Lcom/github/javaparser/resolution/logic/InferenceVariableType;

    if-eqz v2, :cond_c

    invoke-virtual {v0}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->isSuper()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v1}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->isSuper()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asWildcard()Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->getBoundedType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/resolution/logic/InferenceVariableType;

    invoke-virtual {v1}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->getBoundedType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/javaparser/resolution/logic/InferenceVariableType;->registerEquivalentType(Lcom/github/javaparser/resolution/types/ResolvedType;)V

    goto :goto_3

    :cond_b
    invoke-virtual {v0}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->isExtends()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v1}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->isExtends()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asWildcard()Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->getBoundedType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/resolution/logic/InferenceVariableType;

    invoke-virtual {v1}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->getBoundedType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/javaparser/resolution/logic/InferenceVariableType;->registerEquivalentType(Lcom/github/javaparser/resolution/types/ResolvedType;)V

    :cond_c
    :goto_3
    invoke-interface {p2}, Lcom/github/javaparser/resolution/types/ResolvedType;->isReferenceType()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asWildcard()Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->isBounded()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asWildcard()Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->getBoundedType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/resolution/logic/InferenceContext;->registerCorrespondance(Lcom/github/javaparser/resolution/types/ResolvedType;Lcom/github/javaparser/resolution/types/ResolvedType;)V

    goto/16 :goto_4

    :cond_d
    instance-of v1, p2, Lcom/github/javaparser/resolution/logic/InferenceVariableType;

    if-eqz v1, :cond_f

    instance-of v1, p1, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    if-eqz v1, :cond_e

    check-cast p2, Lcom/github/javaparser/resolution/logic/InferenceVariableType;

    invoke-virtual {p2, p1}, Lcom/github/javaparser/resolution/logic/InferenceVariableType;->registerEquivalentType(Lcom/github/javaparser/resolution/types/ResolvedType;)V

    goto/16 :goto_4

    :cond_e
    if-eqz v0, :cond_14

    check-cast p2, Lcom/github/javaparser/resolution/logic/InferenceVariableType;

    invoke-virtual {p2, p1}, Lcom/github/javaparser/resolution/logic/InferenceVariableType;->registerEquivalentType(Lcom/github/javaparser/resolution/types/ResolvedType;)V

    goto/16 :goto_4

    :cond_f
    invoke-interface {p2}, Lcom/github/javaparser/resolution/types/ResolvedType;->isConstraint()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p2}, Lcom/github/javaparser/resolution/types/ResolvedType;->asConstraintType()Lcom/github/javaparser/resolution/types/ResolvedLambdaConstraintType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/github/javaparser/resolution/types/ResolvedLambdaConstraintType;->getBound()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    instance-of v0, v0, Lcom/github/javaparser/resolution/logic/InferenceVariableType;

    if-eqz v0, :cond_14

    invoke-virtual {p2}, Lcom/github/javaparser/resolution/types/ResolvedLambdaConstraintType;->getBound()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/resolution/logic/InferenceVariableType;

    invoke-virtual {p2, p1}, Lcom/github/javaparser/resolution/logic/InferenceVariableType;->registerEquivalentType(Lcom/github/javaparser/resolution/types/ResolvedType;)V

    goto :goto_4

    :cond_10
    invoke-interface {p2}, Lcom/github/javaparser/resolution/types/ResolvedType;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_4

    :cond_11
    iget-object v0, p0, Lcom/github/javaparser/resolution/logic/InferenceContext;->typeSolver:Lcom/github/javaparser/resolution/TypeSolver;

    invoke-interface {p2}, Lcom/github/javaparser/resolution/types/ResolvedType;->asPrimitive()Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->getBoxTypeQName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/github/javaparser/resolution/TypeSolver;->solveType(Ljava/lang/String;)Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    move-result-object p2

    new-instance v0, Lcom/github/javaparser/resolution/model/typesystem/ReferenceTypeImpl;

    invoke-direct {v0, p2}, Lcom/github/javaparser/resolution/model/typesystem/ReferenceTypeImpl;-><init>(Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)V

    invoke-direct {p0, p1, v0}, Lcom/github/javaparser/resolution/logic/InferenceContext;->registerCorrespondance(Lcom/github/javaparser/resolution/types/ResolvedType;Lcom/github/javaparser/resolution/types/ResolvedType;)V

    goto :goto_4

    :cond_12
    invoke-interface {p2}, Lcom/github/javaparser/resolution/types/ResolvedType;->isReferenceType()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asPrimitive()Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->getBoxTypeQName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/github/javaparser/resolution/types/ResolvedType;->describe()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/github/javaparser/resolution/logic/InferenceContext;->typeSolver:Lcom/github/javaparser/resolution/TypeSolver;

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asPrimitive()Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->getBoxTypeQName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/github/javaparser/resolution/TypeSolver;->solveType(Ljava/lang/String;)Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    move-result-object p1

    new-instance v0, Lcom/github/javaparser/resolution/model/typesystem/ReferenceTypeImpl;

    invoke-direct {v0, p1}, Lcom/github/javaparser/resolution/model/typesystem/ReferenceTypeImpl;-><init>(Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)V

    invoke-direct {p0, v0, p2}, Lcom/github/javaparser/resolution/logic/InferenceContext;->registerCorrespondance(Lcom/github/javaparser/resolution/types/ResolvedType;Lcom/github/javaparser/resolution/types/ResolvedType;)V

    goto :goto_4

    :cond_13
    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isReferenceType()Z

    move-result v0

    const-string v1, " "

    if-eqz v0, :cond_16

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->isJavaLangObject()Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_14
    :goto_4
    return-void

    :cond_15
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->describe()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/github/javaparser/resolution/types/ResolvedType;->describe()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->describe()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lcom/github/javaparser/resolution/types/ResolvedType;->describe()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addPair(Lcom/github/javaparser/resolution/types/ResolvedType;Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "target",
            "actual"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/github/javaparser/resolution/logic/InferenceContext;->placeInferenceVariables(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/github/javaparser/resolution/logic/InferenceContext;->placeInferenceVariables(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/resolution/logic/InferenceContext;->registerCorrespondance(Lcom/github/javaparser/resolution/types/ResolvedType;Lcom/github/javaparser/resolution/types/ResolvedType;)V

    return-object p1
.end method

.method public addSingle(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "actual"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/github/javaparser/resolution/logic/InferenceContext;->placeInferenceVariables(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    return-object p1
.end method

.method public resolve(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    instance-of v0, p1, Lcom/github/javaparser/resolution/logic/InferenceVariableType;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/github/javaparser/resolution/logic/InferenceVariableType;

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/logic/InferenceVariableType;->equivalentType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isReferenceType()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object p1

    new-instance v0, Lh0/j;

    invoke-direct {v0, p0}, Lh0/j;-><init>(Lcom/github/javaparser/resolution/logic/InferenceContext;)V

    invoke-virtual {p1, v0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->transformTypeParameters(Lcom/github/javaparser/resolution/types/ResolvedTypeTransformer;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isNull()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isVoid()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isArray()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/github/javaparser/resolution/types/ResolvedArrayType;

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asArrayType()Lcom/github/javaparser/resolution/types/ResolvedArrayType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/types/ResolvedArrayType;->getComponentType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/javaparser/resolution/logic/InferenceContext;->resolve(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/github/javaparser/resolution/types/ResolvedArrayType;-><init>(Lcom/github/javaparser/resolution/types/ResolvedType;)V

    return-object v0

    :cond_3
    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isWildcard()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asWildcard()Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->isExtends()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asWildcard()Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->getBoundedType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/javaparser/resolution/logic/InferenceContext;->resolve(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    invoke-static {p1}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->extendsBound(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asWildcard()Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->isSuper()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asWildcard()Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->getBoundedType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/javaparser/resolution/logic/InferenceContext;->resolve(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    invoke-static {p1}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->superBound(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object p1

    :cond_5
    return-object p1

    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->describe()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_0
    return-object p1
.end method
