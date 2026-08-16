.class public interface abstract Lcom/github/javaparser/resolution/declarations/ResolvedEnumDeclaration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/resolution/declarations/ResolvedReferenceTypeDeclaration;
.implements Lcom/github/javaparser/resolution/declarations/HasAccessSpecifier;


# direct methods
.method public static synthetic c(Ljava/lang/String;Lcom/github/javaparser/resolution/declarations/ResolvedEnumConstantDeclaration;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/resolution/declarations/ResolvedEnumDeclaration;->lambda$hasEnumConstant$0(Ljava/lang/String;Lcom/github/javaparser/resolution/declarations/ResolvedEnumConstantDeclaration;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getEnumConstant$1(Ljava/lang/String;Lcom/github/javaparser/resolution/declarations/ResolvedEnumConstantDeclaration;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "name",
            "c"
        }
    .end annotation

    invoke-interface {p1}, Lcom/github/javaparser/resolution/declarations/ResolvedEnumConstantDeclaration;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$getEnumConstant$2(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "name"
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No constant named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static synthetic lambda$hasEnumConstant$0(Ljava/lang/String;Lcom/github/javaparser/resolution/declarations/ResolvedEnumConstantDeclaration;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "name",
            "c"
        }
    .end annotation

    invoke-interface {p1}, Lcom/github/javaparser/resolution/declarations/ResolvedEnumConstantDeclaration;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic m(Ljava/lang/String;Lcom/github/javaparser/resolution/declarations/ResolvedEnumConstantDeclaration;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/resolution/declarations/ResolvedEnumDeclaration;->lambda$getEnumConstant$1(Ljava/lang/String;Lcom/github/javaparser/resolution/declarations/ResolvedEnumConstantDeclaration;)Z

    move-result p0

    return p0
.end method

.method public static synthetic u(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedEnumDeclaration;->lambda$getEnumConstant$2(Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public asEnum()Lcom/github/javaparser/resolution/declarations/ResolvedEnumDeclaration;
    .locals 0

    return-object p0
.end method

.method public getEnumConstant(Ljava/lang/String;)Lcom/github/javaparser/resolution/declarations/ResolvedEnumConstantDeclaration;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedEnumDeclaration;->getEnumConstants()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/resolution/declarations/b;

    invoke-direct {v1, p1}, Lcom/github/javaparser/resolution/declarations/b;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/resolution/declarations/c;

    invoke-direct {v1, p1}, Lcom/github/javaparser/resolution/declarations/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/resolution/declarations/ResolvedEnumConstantDeclaration;

    return-object p1
.end method

.method public abstract getEnumConstants()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/declarations/ResolvedEnumConstantDeclaration;",
            ">;"
        }
    .end annotation
.end method

.method public hasEnumConstant(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/resolution/declarations/ResolvedEnumDeclaration;->getEnumConstants()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/resolution/declarations/d;

    invoke-direct {v1, p1}, Lcom/github/javaparser/resolution/declarations/d;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method public isEnum()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
