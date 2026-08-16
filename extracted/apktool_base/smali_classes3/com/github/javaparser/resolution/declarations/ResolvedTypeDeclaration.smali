.class public interface abstract Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/resolution/declarations/ResolvedDeclaration;


# direct methods
.method public static synthetic b(Ljava/lang/String;Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;->lambda$getInternalType$0(Ljava/lang/String;Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Ljava/lang/String;)Lcom/github/javaparser/resolution/UnsolvedSymbolException;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;->lambda$getInternalType$1(Ljava/lang/String;)Lcom/github/javaparser/resolution/UnsolvedSymbolException;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getInternalType$0(Ljava/lang/String;Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "name",
            "f"
        }
    .end annotation

    invoke-interface {p1}, Lcom/github/javaparser/resolution/declarations/ResolvedDeclaration;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getInternalType$1(Ljava/lang/String;)Lcom/github/javaparser/resolution/UnsolvedSymbolException;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "name"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/resolution/UnsolvedSymbolException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal type not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/github/javaparser/resolution/UnsolvedSymbolException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static synthetic lambda$hasInternalType$2(Ljava/lang/String;Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "name",
            "f"
        }
    .end annotation

    invoke-interface {p1}, Lcom/github/javaparser/resolution/declarations/ResolvedDeclaration;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic r(Ljava/lang/String;Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;->lambda$hasInternalType$2(Ljava/lang/String;Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public asAnnotation()Lcom/github/javaparser/resolution/declarations/ResolvedAnnotationDeclaration;
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "%s is not an annotation"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asClass()Lcom/github/javaparser/resolution/declarations/ResolvedClassDeclaration;
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "%s is not a class"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asEnum()Lcom/github/javaparser/resolution/declarations/ResolvedEnumDeclaration;
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "%s is not an enum"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asInterface()Lcom/github/javaparser/resolution/declarations/ResolvedInterfaceDeclaration;
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "%s is not an interface"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asRecord()Lcom/github/javaparser/resolution/declarations/ResolvedRecordDeclaration;
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "%s is not a record"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asReferenceType()Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "%s is not a reference type"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public asType()Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;
    .locals 0

    return-object p0
.end method

.method public asTypeParameter()Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;
    .locals 3

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "%s is not a type parameter"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract containerType()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getClassName()Ljava/lang/String;
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedDeclaration;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "<localClass>:%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getInternalType(Ljava/lang/String;)Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;->internalTypes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/resolution/declarations/v;

    invoke-direct {v1, p1}, Lcom/github/javaparser/resolution/declarations/v;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/resolution/declarations/w;

    invoke-direct {v1, p1}, Lcom/github/javaparser/resolution/declarations/w;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;

    return-object p1
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method public abstract getQualifiedName()Ljava/lang/String;
.end method

.method public hasInternalType(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedTypeDeclaration;->internalTypes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/resolution/declarations/x;

    invoke-direct {v1, p1}, Lcom/github/javaparser/resolution/declarations/x;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method public internalTypes()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InternalTypes not available for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isAnnotation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAnonymousClass()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isClass()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEnum()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isInterface()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isRecord()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isReferenceType()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isType()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isTypeParameter()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
