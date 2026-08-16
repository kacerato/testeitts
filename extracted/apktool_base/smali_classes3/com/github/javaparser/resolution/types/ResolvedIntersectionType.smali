.class public Lcom/github/javaparser/resolution/types/ResolvedIntersectionType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/resolution/types/ResolvedType;


# instance fields
.field private elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0, p1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedIntersectionType;->elements:Ljava/util/List;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "An intersection type should have at least two elements. This has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic b(Lcom/github/javaparser/resolution/types/ResolvedType;Lcom/github/javaparser/resolution/types/ResolvedType;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/resolution/types/ResolvedIntersectionType;->lambda$isAssignableBy$0(Lcom/github/javaparser/resolution/types/ResolvedType;Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lcom/github/javaparser/resolution/types/ResolvedType;Ljava/util/Map;Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/github/javaparser/resolution/types/ResolvedIntersectionType;->lambda$replaceTypeVariables$1(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lcom/github/javaparser/resolution/types/ResolvedType;Ljava/util/Map;Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$isAssignableBy$0(Lcom/github/javaparser/resolution/types/ResolvedType;Lcom/github/javaparser/resolution/types/ResolvedType;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "other",
            "e"
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/github/javaparser/resolution/types/ResolvedType;->isAssignableBy(Lcom/github/javaparser/resolution/types/ResolvedType;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$replaceTypeVariables$1(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lcom/github/javaparser/resolution/types/ResolvedType;Ljava/util/Map;Lcom/github/javaparser/resolution/types/ResolvedType;)Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "tp",
            "replaced",
            "inferredTypes",
            "e"
        }
    .end annotation

    invoke-interface {p3, p0, p1, p2}, Lcom/github/javaparser/resolution/types/ResolvedType;->replaceTypeVariables(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lcom/github/javaparser/resolution/types/ResolvedType;Ljava/util/Map;)Lcom/github/javaparser/resolution/types/ResolvedType;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public describe()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedIntersectionType;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/resolution/types/c;

    invoke-direct {v1}, Lcom/github/javaparser/resolution/types/c;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    const-string v1, " & "

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/github/javaparser/resolution/types/ResolvedIntersectionType;

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/github/javaparser/resolution/types/ResolvedIntersectionType;->elements:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/util/HashSet;

    iget-object p1, p1, Lcom/github/javaparser/resolution/types/ResolvedIntersectionType;->elements:Ljava/util/List;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/resolution/types/ResolvedType;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedIntersectionType;->elements:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/github/javaparser/resolution/types/ResolvedIntersectionType;->elements:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isAssignableBy(Lcom/github/javaparser/resolution/types/ResolvedType;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedIntersectionType;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/resolution/types/a;

    invoke-direct {v1, p1}, Lcom/github/javaparser/resolution/types/a;-><init>(Lcom/github/javaparser/resolution/types/ResolvedType;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method public replaceTypeVariables(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lcom/github/javaparser/resolution/types/ResolvedType;Ljava/util/Map;)Lcom/github/javaparser/resolution/types/ResolvedType;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tp",
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

    iget-object v0, p0, Lcom/github/javaparser/resolution/types/ResolvedIntersectionType;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/resolution/types/b;

    invoke-direct {v1, p1, p2, p3}, Lcom/github/javaparser/resolution/types/b;-><init>(Lcom/github/javaparser/resolution/declarations/ResolvedTypeParameterDeclaration;Lcom/github/javaparser/resolution/types/ResolvedType;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object p2, p0, Lcom/github/javaparser/resolution/types/ResolvedIntersectionType;->elements:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p0

    :cond_0
    new-instance p2, Lcom/github/javaparser/resolution/types/ResolvedIntersectionType;

    invoke-direct {p2, p1}, Lcom/github/javaparser/resolution/types/ResolvedIntersectionType;-><init>(Ljava/util/Collection;)V

    return-object p2
.end method
