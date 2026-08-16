.class public interface abstract Lcom/github/javaparser/HasParentNode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/ast/observer/Observable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/github/javaparser/ast/observer/Observable;"
    }
.end annotation


# direct methods
.method public static synthetic C(Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/HasParentNode;->lambda$findAncestor$0(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$findAncestor$0(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "x"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method private static synthetic lambda$isDescendantOf$1(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "ancestor",
            "n"
        }
    .end annotation

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic x(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/HasParentNode;->lambda$isDescendantOf$1(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public findAncestor(Ljava/lang/Class;Ljava/util/function/Predicate;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "predicate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TN;>;",
            "Ljava/util/function/Predicate<",
            "TN;>;)",
            "Ljava/util/Optional<",
            "TN;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    filled-new-array {p1}, [Ljava/lang/Class;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Lcom/github/javaparser/HasParentNode;->findAncestor(Ljava/util/function/Predicate;[Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public varargs findAncestor(Ljava/util/function/Predicate;[Ljava/lang/Class;)Ljava/util/Optional;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "predicate",
            "types"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Predicate<",
            "TN;>;[",
            "Ljava/lang/Class<",
            "TN;>;)",
            "Ljava/util/Optional<",
            "TN;>;"
        }
    .end annotation

    .line 3
    invoke-interface {p0}, Lcom/github/javaparser/HasParentNode;->hasParentNode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-interface {p0}, Lcom/github/javaparser/HasParentNode;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/Node;

    .line 5
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p2, v2

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 7
    invoke-virtual {v3, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    return-object p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-interface {v0, p1, p2}, Lcom/github/javaparser/HasParentNode;->findAncestor(Ljava/util/function/Predicate;[Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public varargs findAncestor([Ljava/lang/Class;)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "types"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Class<",
            "TN;>;)",
            "Ljava/util/Optional<",
            "TN;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/github/javaparser/k;

    invoke-direct {v0}, Lcom/github/javaparser/k;-><init>()V

    invoke-interface {p0, v0, p1}, Lcom/github/javaparser/HasParentNode;->findAncestor(Ljava/util/function/Predicate;[Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public abstract getParentNode()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/ast/Node;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getParentNodeForChildren()Lcom/github/javaparser/ast/Node;
.end method

.method public hasParentNode()Z
    .locals 1

    invoke-interface {p0}, Lcom/github/javaparser/HasParentNode;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    return v0
.end method

.method public isDescendantOf(Lcom/github/javaparser/ast/Node;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ancestor"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/j;

    invoke-direct {v0, p1}, Lcom/github/javaparser/j;-><init>(Lcom/github/javaparser/ast/Node;)V

    const-class p1, Lcom/github/javaparser/ast/Node;

    filled-new-array {p1}, [Ljava/lang/Class;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/github/javaparser/HasParentNode;->findAncestor(Ljava/util/function/Predicate;[Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    return p1
.end method

.method public abstract setParentNode(Lcom/github/javaparser/ast/Node;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parentNode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/Node;",
            ")TT;"
        }
    .end annotation
.end method
