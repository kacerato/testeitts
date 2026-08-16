.class public Lcom/github/javaparser/resolution/model/typesystem/ReferenceTypeImpl;
.super Lcom/github/javaparser/resolution/types/ResolvedReferenceType;
.source "SourceFile"


# static fields
.field private static final ASSIGNABLE_REFERENCE_TYPE:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "java.lang.Cloneable"

    const-string v1, "java.io.Serializable"

    const-string v2, "java.lang.Object"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/github/javaparser/resolution/model/typesystem/ReferenceTypeImpl;->ASSIGNABLE_REFERENCE_TYPE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeDeclaration"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;-><init>(Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "typeDeclaration",
            "typeArguments"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;-><init>(Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;Ljava/util/List;)V

    return-void
.end method

.method private isAssignableByReferenceType(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "qname"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/resolution/model/typesystem/ReferenceTypeImpl;->ASSIGNABLE_REFERENCE_TYPE:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lj0/a;

    invoke-direct {v1, p1}, Lj0/a;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$getAllAncestors$4(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)Lcom/github/javaparser/resolution/types/ResolvedReferenceType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "a"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersMap()Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->replaceAll(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$getDeclaredMethods$2(Ljava/util/Set;Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "methods",
            "referenceTypeDeclaration"
        }
    .end annotation

    invoke-interface {p1}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getDeclaredMethods()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    new-instance v1, Lcom/github/javaparser/resolution/MethodUsage;

    invoke-direct {v1, v0}, Lcom/github/javaparser/resolution/MethodUsage;-><init>(Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;)V

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private synthetic lambda$getDirectAncestors$5(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)Lcom/github/javaparser/resolution/types/ResolvedReferenceType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "a"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersMap()Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->replaceAll(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$isAssignableBy$0(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)Ljava/lang/Boolean;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "ancestor"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/github/javaparser/resolution/model/typesystem/ReferenceTypeImpl;->isAssignableBy(Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$isAssignableByReferenceType$1(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "qname",
            "ref"
        }
    .end annotation

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$mention$3(Ljava/util/List;Lcom/github/javaparser/resolution/types/ResolvedType;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "typeParameters",
            "tp"
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->mention(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static synthetic p(Ljava/util/Set;Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/resolution/model/typesystem/ReferenceTypeImpl;->lambda$getDeclaredMethods$2(Ljava/util/Set;Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)V

    return-void
.end method

.method public static synthetic q(Lcom/github/javaparser/resolution/model/typesystem/ReferenceTypeImpl;Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)Lcom/github/javaparser/resolution/types/ResolvedReferenceType;
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/javaparser/resolution/model/typesystem/ReferenceTypeImpl;->lambda$getDirectAncestors$5(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic r(Ljava/util/List;Lcom/github/javaparser/resolution/types/ResolvedType;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/resolution/model/typesystem/ReferenceTypeImpl;->lambda$mention$3(Ljava/util/List;Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result p0

    return p0
.end method

.method public static synthetic s(Lcom/github/javaparser/resolution/model/typesystem/ReferenceTypeImpl;Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)Lcom/github/javaparser/resolution/types/ResolvedReferenceType;
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/javaparser/resolution/model/typesystem/ReferenceTypeImpl;->lambda$getAllAncestors$4(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic t(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/resolution/model/typesystem/ReferenceTypeImpl;->lambda$isAssignableByReferenceType$1(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic u(Lcom/github/javaparser/resolution/model/typesystem/ReferenceTypeImpl;Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/javaparser/resolution/model/typesystem/ReferenceTypeImpl;->lambda$isAssignableBy$0(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static undeterminedParameters(Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)Lcom/github/javaparser/resolution/types/ResolvedReferenceType;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeDeclaration"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/resolution/model/typesystem/ReferenceTypeImpl;

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParametrizable;->getTypeParameters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lj0/d;

    invoke-direct {v2}, Lj0/d;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/github/javaparser/resolution/model/typesystem/ReferenceTypeImpl;-><init>(Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public asTypeParameter()Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeDeclaration:Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    invoke-interface {v0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;->asTypeParameter()Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public create(Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)Lcom/github/javaparser/resolution/types/ResolvedReferenceType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeDeclaration"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/github/javaparser/resolution/model/typesystem/ReferenceTypeImpl;

    invoke-direct {v0, p1}, Lcom/github/javaparser/resolution/model/typesystem/ReferenceTypeImpl;-><init>(Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)V

    return-object v0
.end method

.method public create(Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;Ljava/util/List;)Lcom/github/javaparser/resolution/types/ResolvedReferenceType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "typeDeclaration",
            "typeParametersCorrected"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;)",
            "Lcom/github/javaparser/resolution/types/ResolvedReferenceType;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/github/javaparser/resolution/model/typesystem/ReferenceTypeImpl;

    invoke-direct {v0, p1, p2}, Lcom/github/javaparser/resolution/model/typesystem/ReferenceTypeImpl;-><init>(Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;Ljava/util/List;)V

    return-object v0
.end method

.method public deriveTypeParameters(Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;)Lcom/github/javaparser/resolution/types/ResolvedReferenceType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeParametersMap"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeDeclaration:Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    invoke-virtual {p0, v0, p1}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->create(Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;)Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object p1

    return-object p1
.end method

.method public getAllAncestors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedReferenceType;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->depthFirstFunc:Ljava/util/function/Function;

    invoke-virtual {p0, v0}, Lcom/github/javaparser/resolution/model/typesystem/ReferenceTypeImpl;->getAllAncestors(Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAllAncestors(Ljava/util/function/Function;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "traverser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedReferenceType;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedReferenceType;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeDeclaration:Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    invoke-interface {v0, p1}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getAllAncestors(Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lj0/f;

    invoke-direct {v0, p0}, Lj0/f;-><init>(Lcom/github/javaparser/resolution/model/typesystem/ReferenceTypeImpl;)V

    .line 4
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 5
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public getDeclaredFields()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getTypeDeclaration()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getTypeDeclaration()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    invoke-interface {v1}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getDeclaredFields()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method public getDeclaredMethods()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/github/javaparser/resolution/MethodUsage;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getTypeDeclaration()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lj0/b;

    invoke-direct {v2, v0}, Lj0/b;-><init>(Ljava/util/Set;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public getDirectAncestors()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedReferenceType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeDeclaration:Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    invoke-interface {v0}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getAncestors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lj0/c;

    invoke-direct {v1, p0}, Lj0/c;-><init>(Lcom/github/javaparser/resolution/model/typesystem/ReferenceTypeImpl;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getTypeDeclaration()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getTypeDeclaration()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    invoke-interface {v1}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;->isClass()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;->asClass()Lcom/github/javaparser/resolution/declarations/ResolvedClassDeclaration;

    move-result-object v2

    invoke-interface {v2}, Lcom/github/javaparser/resolution/declarations/ResolvedClassDeclaration;->getSuperClass()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    invoke-virtual {v3}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->isJavaLangObject()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;->asClass()Lcom/github/javaparser/resolution/declarations/ResolvedClassDeclaration;

    move-result-object v1

    invoke-interface {v1}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->isJavaLangObject()Z

    move-result v1

    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method public isAssignableBy(Lcom/github/javaparser/resolution/types/ResolvedType;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    instance-of v0, p1, Lcom/github/javaparser/resolution/model/typesystem/NullType;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isPrimitive()Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_0
    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isVoid()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->isJavaLangObject()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isPrimitive()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->isJavaLangObject()Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->describe()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->isCorrespondingBoxingType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isNumericType()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->isReferenceType()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getQualifiedName()Ljava/lang/String;

    move-result-object p1

    const-class v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    move v1, v2

    :goto_0
    return v1

    :cond_5
    instance-of v0, p1, Lcom/github/javaparser/resolution/model/LambdaArgumentTypePlaceholder;

    if-eqz v0, :cond_6

    invoke-static {p0}, Lcom/github/javaparser/resolution/logic/FunctionalInterfaceLogic;->isFunctionalInterfaceType(Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result p1

    return p1

    :cond_6
    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isReferenceType()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->compareConsideringTypeParameters(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    :cond_7
    invoke-virtual {p1}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getAllAncestors()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    invoke-virtual {p0, v0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->compareConsideringTypeParameters(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)Z

    move-result v0

    if-eqz v0, :cond_8

    return v1

    :cond_9
    return v2

    :cond_a
    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isTypeVariable()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asTypeVariable()Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;->asTypeParameter()Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    move-result-object p1

    invoke-interface {p1}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getBounds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;

    invoke-virtual {v0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;->isExtends()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;->getType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/github/javaparser/resolution/model/typesystem/ReferenceTypeImpl;->isAssignableBy(Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result v0

    if-eqz v0, :cond_b

    return v1

    :cond_c
    return v2

    :cond_d
    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isConstraint()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asConstraintType()Lcom/github/javaparser/resolution/types/ResolvedLambdaConstraintType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/types/ResolvedLambdaConstraintType;->getBound()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/javaparser/resolution/model/typesystem/ReferenceTypeImpl;->isAssignableBy(Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result p1

    return p1

    :cond_e
    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isWildcard()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->isJavaLangObject()Z

    move-result v0

    if-eqz v0, :cond_f

    return v1

    :cond_f
    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asWildcard()Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->isExtends()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asWildcard()Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->getBoundedType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/javaparser/resolution/model/typesystem/ReferenceTypeImpl;->isAssignableBy(Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result p1

    return p1

    :cond_10
    return v2

    :cond_11
    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isUnionType()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asUnionType()Lcom/github/javaparser/resolution/types/ResolvedUnionType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/types/ResolvedUnionType;->getCommonAncestor()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lj0/e;

    invoke-direct {v0, p0}, Lj0/e;-><init>(Lcom/github/javaparser/resolution/model/typesystem/ReferenceTypeImpl;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_12
    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isArray()Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getQualifiedName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/javaparser/resolution/model/typesystem/ReferenceTypeImpl;->isAssignableByReferenceType(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_13
    return v2
.end method

.method public mention(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeParameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lj0/g;

    invoke-direct {v1, p1}, Lj0/g;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method public toRawType()Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 3

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->isRawType()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lcom/github/javaparser/resolution/model/typesystem/ReferenceTypeImpl;

    iget-object v1, p0, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeDeclaration:Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/github/javaparser/resolution/model/typesystem/ReferenceTypeImpl;-><init>(Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;Ljava/util/List;)V

    return-object v0
.end method

.method public transformTypeParameters(Lcom/github/javaparser/resolution/types/ResolvedTypeTransformer;)Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transformer"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, p0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/resolution/types/ResolvedType;

    invoke-interface {p1, v3}, Lcom/github/javaparser/resolution/types/ResolvedTypeTransformer;->transform(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v4

    if-eq v4, v3, :cond_0

    invoke-interface {v2}, Lcom/github/javaparser/resolution/types/ResolvedType;->asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeDeclaration:Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    invoke-virtual {p0, v3, v2}, Lcom/github/javaparser/resolution/model/typesystem/ReferenceTypeImpl;->create(Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;Ljava/util/List;)Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method
