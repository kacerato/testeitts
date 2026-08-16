.class public final Lcom/github/javaparser/resolution/logic/FunctionalInterfaceLogic;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static JAVA_LANG_FUNCTIONAL_INTERFACE:Ljava/lang/String;

.field private static OBJECT_PUBLIC_METHODS_SIGNATURES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Ljava/lang/FunctionalInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/github/javaparser/resolution/logic/FunctionalInterfaceLogic;->JAVA_LANG_FUNCTIONAL_INTERFACE:Ljava/lang/String;

    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lh0/e;

    invoke-direct {v1}, Lh0/e;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lh0/f;

    invoke-direct {v1}, Lh0/f;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sput-object v0, Lcom/github/javaparser/resolution/logic/FunctionalInterfaceLogic;->OBJECT_PUBLIC_METHODS_SIGNATURES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/resolution/logic/FunctionalInterfaceLogic;->lambda$static$4(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/reflect/Method;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/resolution/logic/FunctionalInterfaceLogic;->lambda$static$3(Ljava/lang/reflect/Method;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/github/javaparser/resolution/MethodUsage;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/resolution/logic/FunctionalInterfaceLogic;->lambda$getFunctionalMethod$1(Lcom/github/javaparser/resolution/MethodUsage;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Ljava/lang/reflect/Parameter;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/resolution/logic/FunctionalInterfaceLogic;->lambda$getSignature$2(Ljava/lang/reflect/Parameter;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/github/javaparser/resolution/MethodUsage;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/resolution/logic/FunctionalInterfaceLogic;->lambda$getFunctionalMethod$0(Lcom/github/javaparser/resolution/MethodUsage;)Z

    move-result p0

    return p0
.end method

.method public static getFunctionalMethod(Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)Ljava/util/Optional;
    .locals 4
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
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/resolution/MethodUsage;",
            ">;"
        }
    .end annotation

    .line 8
    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->getAllMethods()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lh0/b;

    invoke-direct {v0}, Lh0/b;-><init>()V

    .line 9
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lh0/c;

    invoke-direct {v0}, Lh0/c;-><init>()V

    .line 10
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 11
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    .line 12
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 13
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 14
    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/resolution/MethodUsage;

    .line 16
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/resolution/MethodUsage;

    .line 18
    invoke-virtual {v0, v1}, Lcom/github/javaparser/resolution/MethodUsage;->isSameSignature(Lcom/github/javaparser/resolution/MethodUsage;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 19
    invoke-virtual {v0, v1}, Lcom/github/javaparser/resolution/MethodUsage;->isSubSignature(Lcom/github/javaparser/resolution/MethodUsage;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 20
    invoke-virtual {v1, v0}, Lcom/github/javaparser/resolution/MethodUsage;->isSubSignature(Lcom/github/javaparser/resolution/MethodUsage;)Z

    move-result v2

    if-nez v2, :cond_2

    :goto_0
    move-object v0, v3

    goto :goto_1

    .line 21
    :cond_2
    invoke-virtual {v0, v1}, Lcom/github/javaparser/resolution/MethodUsage;->isReturnTypeSubstituable(Lcom/github/javaparser/resolution/MethodUsage;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 22
    :cond_3
    :goto_1
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static getFunctionalMethod(Lcom/github/javaparser/resolution/types/ResolvedType;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/resolution/MethodUsage;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getTypeDeclaration()Ljava/util/Optional;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    .line 5
    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isReferenceType()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {v0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;->isInterface()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 6
    invoke-static {v0}, Lcom/github/javaparser/resolution/logic/FunctionalInterfaceLogic;->getFunctionalMethod(Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 7
    :cond_1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private static getSignature(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "m"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/reflect/Executable;->getParameters()[Ljava/lang/reflect/Parameter;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lh0/d;

    invoke-direct {v1}, Lh0/d;-><init>()V

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    const-string v1, ", "

    invoke-static {v1, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s(%s)"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isFunctionalInterfaceType(Lcom/github/javaparser/resolution/types/ResolvedType;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isReferenceType()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->asReferenceType()Lcom/github/javaparser/resolution/types/ResolvedReferenceType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/resolution/types/ResolvedReferenceType;->getTypeDeclaration()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    sget-object v1, Lcom/github/javaparser/resolution/logic/FunctionalInterfaceLogic;->JAVA_LANG_FUNCTIONAL_INTERFACE:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;->hasAnnotation(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {p0}, Lcom/github/javaparser/resolution/logic/FunctionalInterfaceLogic;->getFunctionalMethod(Lcom/github/javaparser/resolution/types/ResolvedType;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    return p0
.end method

.method private static isPublicMemberOfObject(Lcom/github/javaparser/resolution/MethodUsage;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "m"
        }
    .end annotation

    sget-object v0, Lcom/github/javaparser/resolution/logic/FunctionalInterfaceLogic;->OBJECT_PUBLIC_METHODS_SIGNATURES:Ljava/util/List;

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/MethodUsage;->getDeclaration()Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    move-result-object p0

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodLikeDeclaration;->getSignature()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getFunctionalMethod$0(Lcom/github/javaparser/resolution/MethodUsage;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "m"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/resolution/MethodUsage;->getDeclaration()Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;

    move-result-object p0

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedMethodDeclaration;->isAbstract()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getFunctionalMethod$1(Lcom/github/javaparser/resolution/MethodUsage;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "m"
        }
    .end annotation

    invoke-static {p0}, Lcom/github/javaparser/resolution/logic/FunctionalInterfaceLogic;->isPublicMemberOfObject(Lcom/github/javaparser/resolution/MethodUsage;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$getSignature$2(Ljava/lang/reflect/Parameter;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "p"
        }
    .end annotation

    invoke-static {p0}, Lcom/github/javaparser/resolution/logic/FunctionalInterfaceLogic;->toSignature(Ljava/lang/reflect/Parameter;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$static$3(Ljava/lang/reflect/Method;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "m"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$static$4(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "method"
        }
    .end annotation

    invoke-static {p0}, Lcom/github/javaparser/resolution/logic/FunctionalInterfaceLogic;->getSignature(Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static toSignature(Ljava/lang/reflect/Parameter;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/reflect/Parameter;->getType()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
