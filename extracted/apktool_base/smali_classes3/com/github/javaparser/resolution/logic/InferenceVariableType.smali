.class public Lcom/github/javaparser/resolution/logic/InferenceVariableType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/resolution/types/ResolvedType;


# instance fields
.field private correspondingTp:Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

.field private equivalentTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;"
        }
    .end annotation
.end field

.field private id:I

.field private superTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;"
        }
    .end annotation
.end field

.field private typeSolver:Lcom/github/javaparser/resolution/TypeSolver;


# direct methods
.method public constructor <init>(ILcom/github/javaparser/resolution/TypeSolver;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "typeSolver"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/github/javaparser/resolution/logic/InferenceVariableType;->equivalentTypes:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/github/javaparser/resolution/logic/InferenceVariableType;->superTypes:Ljava/util/Set;

    iput p1, p0, Lcom/github/javaparser/resolution/logic/InferenceVariableType;->id:I

    iput-object p2, p0, Lcom/github/javaparser/resolution/logic/InferenceVariableType;->typeSolver:Lcom/github/javaparser/resolution/TypeSolver;

    return-void
.end method

.method public static synthetic b(Lcom/github/javaparser/resolution/types/ResolvedType;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/resolution/logic/InferenceVariableType;->lambda$concreteEquivalentTypesAlsoIndirectly$1(Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/github/javaparser/resolution/types/ResolvedType;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/resolution/logic/InferenceVariableType;->lambda$concreteEquivalentTypesAlsoIndirectly$0(Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result p0

    return p0
.end method

.method private concreteEquivalentTypesAlsoIndirectly(Ljava/util/Set;Lcom/github/javaparser/resolution/logic/InferenceVariableType;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "considered",
            "inferenceVariableType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/github/javaparser/resolution/logic/InferenceVariableType;",
            ">;",
            "Lcom/github/javaparser/resolution/logic/InferenceVariableType;",
            ")",
            "Ljava/util/Set<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;"
        }
    .end annotation

    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p2, Lcom/github/javaparser/resolution/logic/InferenceVariableType;->equivalentTypes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lh0/l;

    invoke-direct {v2}, Lh0/l;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p2, Lcom/github/javaparser/resolution/logic/InferenceVariableType;->equivalentTypes:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lh0/m;

    invoke-direct {v1}, Lh0/m;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lh0/n;

    invoke-direct {v1, p0, p1, v0}, Lh0/n;-><init>(Lcom/github/javaparser/resolution/logic/InferenceVariableType;Ljava/util/Set;Ljava/util/Set;)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public static synthetic d(Lcom/github/javaparser/resolution/logic/InferenceVariableType;Ljava/util/Set;Ljava/util/Set;Lcom/github/javaparser/resolution/types/ResolvedType;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/github/javaparser/resolution/logic/InferenceVariableType;->lambda$concreteEquivalentTypesAlsoIndirectly$2(Ljava/util/Set;Ljava/util/Set;Lcom/github/javaparser/resolution/types/ResolvedType;)V

    return-void
.end method

.method public static synthetic e(Lcom/github/javaparser/resolution/logic/InferenceVariableType;Lcom/github/javaparser/resolution/types/ResolvedType;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/javaparser/resolution/logic/InferenceVariableType;->lambda$equivalentType$3(Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result p0

    return p0
.end method

.method private hasInferenceVariables(Lcom/github/javaparser/resolution/types/ResolvedType;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    instance-of v0, p1, Lcom/github/javaparser/resolution/logic/InferenceVariableType;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isReferenceType()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersValues()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/resolution/types/ResolvedType;

    invoke-direct {p0, v0}, Lcom/github/javaparser/resolution/logic/InferenceVariableType;->hasInferenceVariables(Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_2
    return v2

    :cond_3
    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isWildcard()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asWildcard()Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->getBoundedType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/javaparser/resolution/logic/InferenceVariableType;->hasInferenceVariables(Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result p1

    return p1

    :cond_4
    return v2
.end method

.method private static synthetic lambda$concreteEquivalentTypesAlsoIndirectly$0(Lcom/github/javaparser/resolution/types/ResolvedType;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isTypeVariable()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of p0, p0, Lcom/github/javaparser/resolution/logic/InferenceVariableType;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$concreteEquivalentTypesAlsoIndirectly$1(Lcom/github/javaparser/resolution/types/ResolvedType;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    instance-of p0, p0, Lcom/github/javaparser/resolution/logic/InferenceVariableType;

    return p0
.end method

.method private synthetic lambda$concreteEquivalentTypesAlsoIndirectly$2(Ljava/util/Set;Ljava/util/Set;Lcom/github/javaparser/resolution/types/ResolvedType;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "considered",
            "result",
            "t"
        }
    .end annotation

    check-cast p3, Lcom/github/javaparser/resolution/logic/InferenceVariableType;

    invoke-interface {p1, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p3}, Lcom/github/javaparser/resolution/logic/InferenceVariableType;->concreteEquivalentTypesAlsoIndirectly(Ljava/util/Set;Lcom/github/javaparser/resolution/logic/InferenceVariableType;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$equivalentType$3(Lcom/github/javaparser/resolution/types/ResolvedType;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "t"
        }
    .end annotation

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isTypeVariable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/github/javaparser/resolution/logic/InferenceVariableType;->hasInferenceVariables(Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public describe()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InferenceVariable_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/github/javaparser/resolution/logic/InferenceVariableType;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/github/javaparser/resolution/logic/InferenceVariableType;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/github/javaparser/resolution/logic/InferenceVariableType;

    iget v1, p0, Lcom/github/javaparser/resolution/logic/InferenceVariableType;->id:I

    iget p1, p1, Lcom/github/javaparser/resolution/logic/InferenceVariableType;->id:I

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public equivalentType()Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-direct {p0, v0, p0}, Lcom/github/javaparser/resolution/logic/InferenceVariableType;->concreteEquivalentTypesAlsoIndirectly(Ljava/util/Set;Lcom/github/javaparser/resolution/logic/InferenceVariableType;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/github/javaparser/resolution/logic/InferenceVariableType;->correspondingTp:Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    if-nez v0, :cond_0

    new-instance v0, Lcom/github/javaparser/resolution/model/typesystem/ReferenceTypeImpl;

    iget-object v1, p0, Lcom/github/javaparser/resolution/logic/InferenceVariableType;->typeSolver:Lcom/github/javaparser/resolution/TypeSolver;

    invoke-interface {v1}, Lcom/github/javaparser/resolution/TypeSolver;->getSolvedJavaLangObject()Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/github/javaparser/resolution/model/typesystem/ReferenceTypeImpl;-><init>(Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)V

    return-object v0

    :cond_0
    new-instance v1, Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;

    invoke-direct {v1, v0}, Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;-><init>(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;)V

    return-object v1

    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/resolution/types/ResolvedType;

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/github/javaparser/resolution/logic/InferenceVariableType;->equivalentTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lh0/o;

    invoke-direct {v1, p0}, Lh0/o;-><init>(Lcom/github/javaparser/resolution/logic/InferenceVariableType;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v1, v2, :cond_3

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/resolution/types/ResolvedType;

    return-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/github/javaparser/resolution/logic/InferenceVariableType;->superTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/github/javaparser/resolution/logic/InferenceVariableType;->superTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/github/javaparser/resolution/logic/InferenceVariableType;->superTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/resolution/types/ResolvedType;

    return-object v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Super types are: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/github/javaparser/resolution/logic/InferenceVariableType;->superTypes:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Equivalent types are: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/github/javaparser/resolution/logic/InferenceVariableType;->equivalentTypes:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lcom/github/javaparser/resolution/logic/InferenceVariableType;->id:I

    return v0
.end method

.method public isAssignableBy(Lcom/github/javaparser/resolution/types/ResolvedType;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public registerEquivalentType(Lcom/github/javaparser/resolution/types/ResolvedType;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/resolution/logic/InferenceVariableType;->equivalentTypes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setCorrespondingTp(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "correspondingTp"
        }
    .end annotation

    iput-object p1, p0, Lcom/github/javaparser/resolution/logic/InferenceVariableType;->correspondingTp:Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InferenceVariableType{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/github/javaparser/resolution/logic/InferenceVariableType;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
