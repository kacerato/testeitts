.class public abstract Lcom/github/javaparser/resolution/types/ResolvedReferenceType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/resolution/types/ResolvedType;
.implements Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametrized;
.implements Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParameterValueProvider;


# static fields
.field protected static JAVA_LANG_ENUM:Ljava/lang/String;

.field protected static JAVA_LANG_OBJECT:Ljava/lang/String;

.field protected static JAVA_LANG_RECORD:Ljava/lang/String;


# instance fields
.field protected typeDeclaration:Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

.field protected typeParametersMap:Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->JAVA_LANG_ENUM:Ljava/lang/String;

    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->JAVA_LANG_OBJECT:Ljava/lang/String;

    const-string v0, "java.lang.Record"

    sput-object v0, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->JAVA_LANG_RECORD:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeDeclaration"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->deriveParams(Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;-><init>(Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;Ljava/util/List;)V
    .locals 4
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    .line 3
    invoke-interface {p1}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;->isTypeParameter()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParametrizable;->getTypeParameters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 7
    invoke-interface {p1}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParametrizable;->getTypeParameters()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 8
    const-string p2, "expected either zero type arguments or has many as defined in the declaration (%d). Found %d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 9
    :cond_1
    :goto_0
    new-instance v0, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;

    invoke-direct {v0}, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;-><init>()V

    const/4 v1, 0x0

    .line 10
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 11
    invoke-interface {p1}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParametrizable;->getTypeParameters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/resolution/types/ResolvedType;

    .line 12
    invoke-virtual {v0, v2, v3}, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;->setValue(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {v0}, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap$Builder;->build()Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    move-result-object p2

    iput-object p2, p0, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersMap:Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    .line 14
    iput-object p1, p0, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeDeclaration:Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    return-void

    .line 15
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "You should use only Classes, Interfaces and enums"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "TypeDeclaration is not expected to be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic b(Ljava/util/List;Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->lambda$getAllFieldsVisibleToInheritors$8(Ljava/util/List;Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)V

    return-void
.end method

.method public static synthetic c(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;)Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->lambda$typeParametersValues$5(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p0

    return-object p0
.end method

.method private compareConsideringVariableTypeParameters(Lcom/github/javaparser/resolution/types/ResolvedType;Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "referenceType",
            "typeVariable"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;->asTypeVariable()Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;

    move-result-object p2

    invoke-virtual {p2}, Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;->asTypeParameter()Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    move-result-object p2

    invoke-interface {p2}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getBounds()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;

    invoke-virtual {p2}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration$Bound;->getType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p2

    invoke-interface {p2}, Lcom/github/javaparser/resolution/types/ResolvedType;->isReferenceType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/github/javaparser/resolution/types/ResolvedType;->asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object v0

    iget-object v0, v0, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersMap:Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    invoke-virtual {v0}, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p2}, Lcom/github/javaparser/resolution/types/ResolvedType;->asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->compareConsideringTypeParameters(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-interface {p2, p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isAssignableBy(Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result p1

    :goto_0
    return p1

    :cond_1
    return v2
.end method

.method public static synthetic d(Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->lambda$getAllFieldsVisibleToInheritors$7(Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;)Z

    move-result p0

    return p0
.end method

.method private static deriveParams(Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeDeclaration"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;",
            ")",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParametrizable;->getTypeParameters()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lj0/d;

    invoke-direct {v0}, Lj0/d;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Type parameters are not expected to be null"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "TypeDeclaration is not expected to be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic e(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->lambda$getAllClassesAncestors$3(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)Z

    move-result p0

    return p0
.end method

.method private erasureOfParamaters(Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeParametersMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;",
            ")",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;"
        }
    .end annotation

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public static synthetic f(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->lambda$describe$0(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->lambda$getAllMethodsVisibleToInheritors$9(Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->lambda$toUnboxedType$13(Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;)Z

    move-result p0

    return p0
.end method

.method public static synthetic i(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->lambda$getAllInterfacesAncestors$1(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)Z

    move-result p0

    return p0
.end method

.method private isJavaObject(Lcom/github/javaparser/resolution/types/ResolvedType;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rt"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->isReferenceType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->isJavaLangObject()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static synthetic j(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->lambda$compareConsideringTypeParameters$11(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->lambda$getAllInterfacesAncestors$2(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)Z

    move-result p0

    return p0
.end method

.method public static synthetic l(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->lambda$getAllClassesAncestors$4(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$compareConsideringTypeParameters$10(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "type"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->erasure()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$compareConsideringTypeParameters$11(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "type"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->erasure()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$describe$0(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "tp"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersMap()Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->getValue(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    invoke-interface {p1}, Lcom/github/javaparser/resolution/types/ResolvedType;->describe()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static synthetic lambda$getAllClassesAncestors$3(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "it"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getTypeDeclaration()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getAllClassesAncestors$4(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "it"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getTypeDeclaration()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;->isClass()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getAllFieldsVisibleToInheritors$7(Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "f"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/HasAccessSpecifier;->accessSpecifier()Lcom/github/javaparser/ast/AccessSpecifier;

    move-result-object p0

    sget-object v0, Lcom/github/javaparser/ast/AccessSpecifier;->PRIVATE:Lcom/github/javaparser/ast/AccessSpecifier;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getAllFieldsVisibleToInheritors$8(Ljava/util/List;Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "res",
            "a"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getAllFieldsVisibleToInheritors()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private static synthetic lambda$getAllInterfacesAncestors$1(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "it"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getTypeDeclaration()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getAllInterfacesAncestors$2(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "it"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getTypeDeclaration()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;->isInterface()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getAllMethods$6(Ljava/util/List;Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "allMethods",
            "a"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getAllMethods()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private static synthetic lambda$getAllMethodsVisibleToInheritors$9(Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "m"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/HasAccessSpecifier;->accessSpecifier()Lcom/github/javaparser/ast/AccessSpecifier;

    move-result-object p0

    sget-object v0, Lcom/github/javaparser/ast/AccessSpecifier;->PRIVATE:Lcom/github/javaparser/ast/AccessSpecifier;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$isUnboxable$12(Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pt"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->getBoxTypeQName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$toUnboxedType$13(Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "pt"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->getBoxTypeQName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$typeParametersValues$5(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;)Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "tp"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersMap:Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    invoke-virtual {v0, p1}, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->getValue(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic m(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->lambda$isUnboxable$12(Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;)Z

    move-result p0

    return p0
.end method

.method public static synthetic n(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->lambda$compareConsideringTypeParameters$10(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Ljava/util/List;Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->lambda$getAllMethods$6(Ljava/util/List;Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)V

    return-void
.end method


# virtual methods
.method public asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;
    .locals 0

    return-object p0
.end method

.method public compareConsideringTypeParameters(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->isRawType()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->isRawType()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersValues()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersValues()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_c

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_b

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/javaparser/resolution/types/ResolvedType;

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersValues()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/javaparser/resolution/types/ResolvedType;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    instance-of v6, v4, Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    if-eqz v6, :cond_5

    check-cast v4, Lcom/github/javaparser/resolution/types/ResolvedWildcard;

    invoke-virtual {v4}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->isSuper()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->getBoundedType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/github/javaparser/resolution/types/ResolvedType;->isAssignableBy(Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-virtual {v4}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->isExtends()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v4}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->getBoundedType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/github/javaparser/resolution/types/ResolvedType;->isAssignableBy(Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-virtual {v4}, Lcom/github/javaparser/resolution/types/ResolvedWildcard;->isBounded()Z

    move-result v4

    if-nez v4, :cond_4

    goto/16 :goto_2

    :cond_4
    return v2

    :cond_5
    instance-of p1, v4, Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;

    if-eqz p1, :cond_7

    instance-of v0, v5, Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;

    if-eqz v0, :cond_7

    invoke-interface {v4}, Lcom/github/javaparser/resolution/types/ResolvedType;->asTypeVariable()Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;->asTypeParameter()Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    move-result-object p1

    invoke-interface {p1}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getBounds()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/github/javaparser/resolution/types/s;

    invoke-direct {v0}, Lcom/github/javaparser/resolution/types/s;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/github/javaparser/resolution/types/t;

    invoke-direct {v0}, Lcom/github/javaparser/resolution/types/t;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {v5}, Lcom/github/javaparser/resolution/types/ResolvedType;->asTypeVariable()Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;->asTypeParameter()Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    move-result-object v0

    invoke-interface {v0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getBounds()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/github/javaparser/resolution/types/s;

    invoke-direct {v3}, Lcom/github/javaparser/resolution/types/s;-><init>()V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v3, Lcom/github/javaparser/resolution/types/f;

    invoke-direct {v3}, Lcom/github/javaparser/resolution/types/f;-><init>()V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ne v3, v4, :cond_6

    invoke-interface {v0, p1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    move v1, v2

    :goto_1
    return v1

    :cond_7
    if-nez p1, :cond_8

    instance-of v0, v5, Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;

    if-eqz v0, :cond_8

    check-cast v5, Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;

    invoke-direct {p0, v4, v5}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->compareConsideringVariableTypeParameters(Lcom/github/javaparser/resolution/types/ResolvedType;Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;)Z

    move-result p1

    return p1

    :cond_8
    if-eqz p1, :cond_9

    instance-of p1, v5, Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;

    if-nez p1, :cond_9

    check-cast v4, Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;

    invoke-direct {p0, v5, v4}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->compareConsideringVariableTypeParameters(Lcom/github/javaparser/resolution/types/ResolvedType;Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;)Z

    move-result p1

    return p1

    :cond_9
    return v2

    :cond_a
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_b
    return v1

    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_d
    :goto_3
    return v1

    :cond_e
    return v2
.end method

.method public abstract create(Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)Lcom/github/javaparser/resolution/types/ResolvedReferenceType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeDeclaration"
        }
    .end annotation
.end method

.method public create(Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;)Lcom/github/javaparser/resolution/types/ResolvedReferenceType;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "typeDeclaration",
            "typeParametersMap"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParametrizable;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/github/javaparser/resolution/types/i;

    invoke-direct {v1, p2}, Lcom/github/javaparser/resolution/types/i;-><init>(Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    .line 3
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->create(Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;Ljava/util/List;)Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object p1

    return-object p1
.end method

.method public abstract create(Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;Ljava/util/List;)Lcom/github/javaparser/resolution/types/ResolvedReferenceType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "typeDeclaration",
            "typeParameters"
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
.end method

.method public abstract deriveTypeParameters(Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;)Lcom/github/javaparser/resolution/types/ResolvedReferenceType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeParametersMap"
        }
    .end annotation
.end method

.method public describe()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->hasName()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeDeclaration:Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    invoke-interface {v1}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "<anonymous class>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersMap()Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeDeclaration:Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    invoke-interface {v1}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParametrizable;->getTypeParameters()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/github/javaparser/resolution/types/h;

    invoke-direct {v2, p0}, Lcom/github/javaparser/resolution/types/h;-><init>(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    const-string v2, ", "

    invoke-static {v2, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
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
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lcom/github/javaparser/resolution/model/typesystem/LazyType;

    if-eqz v2, :cond_3

    check-cast p1, Lcom/github/javaparser/resolution/model/typesystem/LazyType;

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/model/typesystem/LazyType;->isReferenceType()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Lcom/github/javaparser/resolution/model/typesystem/LazyType;->asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    check-cast p1, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    iget-object v2, p0, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeDeclaration:Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    iget-object v3, p1, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeDeclaration:Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object v2, p0, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersMap:Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    iget-object p1, p1, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersMap:Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    invoke-virtual {v2, p1}, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public erasure()Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeDeclaration:Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    invoke-interface {v0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParametrizable;->isGeneric()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeDeclaration:Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    iget-object v1, p0, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersMap:Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    invoke-direct {p0, v1}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->erasureOfParamaters(Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->create(Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;Ljava/util/List;)Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object v0

    return-object v0
.end method

.method public abstract getAllAncestors()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedReferenceType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAllAncestors(Ljava/util/function/Function;)Ljava/util/List;
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
.end method

.method public final getAllClassesAncestors()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedReferenceType;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getAllAncestors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/resolution/types/m;

    invoke-direct {v1}, Lcom/github/javaparser/resolution/types/m;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/resolution/types/n;

    invoke-direct {v1}, Lcom/github/javaparser/resolution/types/n;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getAllFieldsVisibleToInheritors()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getDeclaredFields()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/github/javaparser/resolution/types/j;

    invoke-direct {v2}, Lcom/github/javaparser/resolution/types/j;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getDirectAncestors()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/github/javaparser/resolution/types/k;

    invoke-direct {v2, v0}, Lcom/github/javaparser/resolution/types/k;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public final getAllInterfacesAncestors()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedReferenceType;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getAllAncestors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/resolution/types/q;

    invoke-direct {v1}, Lcom/github/javaparser/resolution/types/q;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/resolution/types/r;

    invoke-direct {v1}, Lcom/github/javaparser/resolution/types/r;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getAllMethods()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getTypeDeclaration()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getTypeDeclaration()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    invoke-interface {v1}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getDeclaredMethods()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getDirectAncestors()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/github/javaparser/resolution/types/o;

    invoke-direct {v2, v0}, Lcom/github/javaparser/resolution/types/o;-><init>(Ljava/util/List;)V

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public getAllMethodsVisibleToInheritors()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getAllMethods()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/resolution/types/l;

    invoke-direct {v1}, Lcom/github/javaparser/resolution/types/l;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public abstract getDeclaredFields()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDeclaredMethods()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/github/javaparser/resolution/MethodUsage;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDirectAncestors()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedReferenceType;",
            ">;"
        }
    .end annotation
.end method

.method public getFieldType(Ljava/lang/String;)Ljava/util/Optional;
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
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeDeclaration:Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    invoke-interface {v0, p1}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->hasField(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeDeclaration:Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    invoke-interface {v0, p1}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getField(Ljava/lang/String;)Lcom/github/javaparser/resolution/declarations/ResolvedFieldDeclaration;

    move-result-object p1

    invoke-interface {p1}, Lcom/github/javaparser/resolution/declarations/ResolvedValueDeclaration;->getType()Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParameterValueProvider;->useThisTypeParametersOnTheGivenType(Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public getGenericParameterByName(Ljava/lang/String;)Ljava/util/Optional;
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
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeDeclaration:Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    invoke-interface {v0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParametrizable;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    invoke-interface {v1}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersMap()Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->getValue(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeDeclaration:Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    invoke-interface {v0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQualifiedName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeDeclaration:Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    invoke-interface {v0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTypeDeclaration()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeDeclaration:Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getTypeParametersMap()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/utils/Pair<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->isRawType()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeDeclaration:Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    invoke-interface {v2}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParametrizable;->getTypeParameters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v2, Lcom/github/javaparser/utils/Pair;

    iget-object v3, p0, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeDeclaration:Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    invoke-interface {v3}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParametrizable;->getTypeParameters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersValues()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/github/javaparser/utils/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public hasName()Z
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeDeclaration:Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    invoke-interface {v0}, Lcom/github/javaparser/resolution/declarations/ResolvedDeclaration;->hasName()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeDeclaration:Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersMap:Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    invoke-virtual {v1}, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public abstract isAssignableBy(Lcom/github/javaparser/resolution/types/ResolvedType;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation
.end method

.method public isCorrespondingBoxingType(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeName"
        }
    .end annotation

    invoke-static {p1}, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->byName(Ljava/lang/String;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->getBoxTypeQName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isJavaLangEnum()Z
    .locals 2

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->isReferenceType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->hasName()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->JAVA_LANG_ENUM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isJavaLangObject()Z
    .locals 2

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->isReferenceType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->hasName()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->JAVA_LANG_OBJECT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isJavaLangRecord()Z
    .locals 2

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->isReferenceType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->hasName()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->JAVA_LANG_RECORD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRawType()Z
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeDeclaration:Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    invoke-interface {v0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParametrizable;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersMap()Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final isReferenceType()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isUnboxable()Z
    .locals 2

    invoke-static {}, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->values()[Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/resolution/types/g;

    invoke-direct {v1, p0}, Lcom/github/javaparser/resolution/types/g;-><init>(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public isUnboxableTo(Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "primitiveType"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->getBoxTypeQName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->describe()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public replaceTypeVariables(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lcom/github/javaparser/resolution/types/ResolvedType;Ljava/util/Map;)Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tpToReplace",
            "replaced",
            "inferredTypes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            "Ljava/util/Map<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;)",
            "Lcom/github/javaparser/resolution/types/ResolvedType;"
        }
    .end annotation

    if-eqz p2, :cond_3

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

    invoke-interface {v3, p1, p2, p3}, Lcom/github/javaparser/resolution/types/ResolvedType;->replaceTypeVariables(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lcom/github/javaparser/resolution/types/ResolvedType;Ljava/util/Map;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object v4

    invoke-interface {v3}, Lcom/github/javaparser/resolution/types/ResolvedType;->isTypeVariable()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Lcom/github/javaparser/resolution/types/ResolvedType;->asTypeVariable()Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/javaparser/resolution/types/ResolvedTypeVariable;->describe()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Lcom/github/javaparser/resolution/types/ResolvedType;->asTypeParameter()Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;

    move-result-object v3

    invoke-interface {p3, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v2}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersValues()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeDeclaration:Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    invoke-virtual {p0, v3, v2}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->create(Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;Ljava/util/List;)Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersValues()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-interface {p3, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getTypeDeclaration()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v2}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getTypeDeclaration()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    invoke-virtual {p0, p1, p3}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->create(Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;Ljava/util/List;)Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v2

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public toDescriptor()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "L%s;"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract toRawType()Lcom/github/javaparser/resolution/types/ResolvedType;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReferenceType{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", typeParametersMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersMap:Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toUnboxedType()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;->values()[Lcom/github/javaparser/resolution/types/ResolvedPrimitiveType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/resolution/types/e;

    invoke-direct {v1, p0}, Lcom/github/javaparser/resolution/types/e;-><init>(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public abstract transformTypeParameters(Lcom/github/javaparser/resolution/types/ResolvedTypeTransformer;)Lcom/github/javaparser/resolution/types/ResolvedType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transformer"
        }
    .end annotation
.end method

.method public typeParamValue(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;)Ljava/util/Optional;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeParameterDeclaration"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->declaredOnMethod()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getTypeDeclaration()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getTypeDeclaration()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    invoke-interface {v0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getContainerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersMap()Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->getValue(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getAllAncestors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    invoke-virtual {v1}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;->getContainerId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersMap()Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->getValue(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    return-object p1

    :cond_3
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public typeParametersMap()Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersMap:Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    return-object v0
.end method

.method public typeParametersValues()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeParametersMap:Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;

    invoke-virtual {v0}, Lcom/github/javaparser/resolution/types/parametrization/ResolvedTypeParametersMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->typeDeclaration:Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    invoke-interface {v0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeParametrizable;->getTypeParameters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/resolution/types/p;

    invoke-direct {v1, p0}, Lcom/github/javaparser/resolution/types/p;-><init>(Lcom/github/javaparser/resolution/types/ResolvedReferenceType;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    :goto_0
    return-object v0
.end method
