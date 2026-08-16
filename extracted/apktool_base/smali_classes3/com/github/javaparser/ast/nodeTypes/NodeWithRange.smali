.class public interface abstract Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static synthetic H(Lcom/github/javaparser/Range;)Lcom/github/javaparser/Position;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->lambda$getEnd$1(Lcom/github/javaparser/Range;)Lcom/github/javaparser/Position;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic M(Lcom/github/javaparser/Range;)Lcom/github/javaparser/Position;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->lambda$getBegin$0(Lcom/github/javaparser/Range;)Lcom/github/javaparser/Position;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getBegin$0(Lcom/github/javaparser/Range;)Lcom/github/javaparser/Position;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "r"
        }
    .end annotation

    iget-object p0, p0, Lcom/github/javaparser/Range;->begin:Lcom/github/javaparser/Position;

    return-object p0
.end method

.method private static synthetic lambda$getEnd$1(Lcom/github/javaparser/Range;)Lcom/github/javaparser/Position;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "r"
        }
    .end annotation

    iget-object p0, p0, Lcom/github/javaparser/Range;->end:Lcom/github/javaparser/Position;

    return-object p0
.end method


# virtual methods
.method public containsWithin(Lcom/github/javaparser/ast/Node;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-interface {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->containsWithinRange(Lcom/github/javaparser/ast/Node;)Z

    move-result p1

    return p1
.end method

.method public containsWithinRange(Lcom/github/javaparser/ast/Node;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->hasRange()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->hasRange()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->getRange()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/Range;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/Range;

    invoke-virtual {v0, p1}, Lcom/github/javaparser/Range;->contains(Lcom/github/javaparser/Range;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getBegin()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/Position;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->getRange()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/nodeTypes/L;

    invoke-direct {v1}, Lcom/github/javaparser/ast/nodeTypes/L;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public getEnd()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/Position;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->getRange()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/nodeTypes/M;

    invoke-direct {v1}, Lcom/github/javaparser/ast/nodeTypes/M;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public abstract getRange()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/Range;",
            ">;"
        }
    .end annotation
.end method

.method public hasRange()Z
    .locals 1

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->getRange()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    return v0
.end method

.method public abstract setRange(Lcom/github/javaparser/Range;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "range"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/Range;",
            ")TN;"
        }
    .end annotation
.end method
