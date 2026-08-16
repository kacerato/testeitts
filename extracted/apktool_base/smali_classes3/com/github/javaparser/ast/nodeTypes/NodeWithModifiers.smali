.class public interface abstract Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Lcom/github/javaparser/ast/Node;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static synthetic L(Lcom/github/javaparser/ast/Modifier$Keyword;Lcom/github/javaparser/ast/Modifier;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;->lambda$addModifier$0(Lcom/github/javaparser/ast/Modifier$Keyword;Lcom/github/javaparser/ast/Modifier;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Ljava/util/List;Lcom/github/javaparser/ast/Modifier;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;->lambda$removeModifier$1(Ljava/util/List;Lcom/github/javaparser/ast/Modifier;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$addModifier$0(Lcom/github/javaparser/ast/Modifier$Keyword;Lcom/github/javaparser/ast/Modifier;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "newModifier",
            "m"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Modifier;->getKeyword()Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$removeModifier$1(Ljava/util/List;Lcom/github/javaparser/ast/Modifier;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "modifiersToRemoveAsList",
            "existingModifier"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Modifier;->getKeyword()Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method


# virtual methods
.method public varargs addModifier([Lcom/github/javaparser/ast/Modifier$Keyword;)Lcom/github/javaparser/ast/Node;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newModifiers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/github/javaparser/ast/Modifier$Keyword;",
            ")TN;"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/ast/NodeList;

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/github/javaparser/ast/NodeList;-><init>(Ljava/util/Collection;)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/github/javaparser/ast/nodeTypes/A;

    invoke-direct {v5, v3}, Lcom/github/javaparser/ast/nodeTypes/A;-><init>(Lcom/github/javaparser/ast/Modifier$Keyword;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lcom/github/javaparser/ast/Modifier;

    invoke-direct {v4, v3}, Lcom/github/javaparser/ast/Modifier;-><init>(Lcom/github/javaparser/ast/Modifier$Keyword;)V

    invoke-virtual {v0, v4}, Lcom/github/javaparser/ast/NodeList;->add(Lcom/github/javaparser/ast/Node;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p0, v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;->setModifiers(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/Node;

    move-object p1, p0

    check-cast p1, Lcom/github/javaparser/ast/Node;

    return-object p1
.end method

.method public getAccessSpecifier()Lcom/github/javaparser/ast/AccessSpecifier;
    .locals 3

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/Modifier;

    sget-object v2, Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers$1;->$SwitchMap$com$github$javaparser$ast$Modifier$Keyword:[I

    invoke-virtual {v1}, Lcom/github/javaparser/ast/Modifier;->getKeyword()Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/github/javaparser/ast/AccessSpecifier;->PRIVATE:Lcom/github/javaparser/ast/AccessSpecifier;

    return-object v0

    :cond_1
    sget-object v0, Lcom/github/javaparser/ast/AccessSpecifier;->PROTECTED:Lcom/github/javaparser/ast/AccessSpecifier;

    return-object v0

    :cond_2
    sget-object v0, Lcom/github/javaparser/ast/AccessSpecifier;->PUBLIC:Lcom/github/javaparser/ast/AccessSpecifier;

    return-object v0

    :cond_3
    sget-object v0, Lcom/github/javaparser/ast/AccessSpecifier;->NONE:Lcom/github/javaparser/ast/AccessSpecifier;

    return-object v0
.end method

.method public abstract getModifiers()Lcom/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/Modifier;",
            ">;"
        }
    .end annotation
.end method

.method public hasModifier(Lcom/github/javaparser/ast/Modifier$Keyword;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modifier"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/ast/Modifier;

    invoke-virtual {v1}, Lcom/github/javaparser/ast/Modifier;->getKeyword()Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object v1

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public varargs removeModifier([Lcom/github/javaparser/ast/Modifier$Keyword;)Lcom/github/javaparser/ast/Node;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modifiersToRemove"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/github/javaparser/ast/Modifier$Keyword;",
            ")TN;"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;->getModifiers()Lcom/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/ast/nodeTypes/B;

    invoke-direct {v1, p1}, Lcom/github/javaparser/ast/nodeTypes/B;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Lcom/github/javaparser/ast/NodeList;->toNodeList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/NodeList;

    invoke-interface {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;->setModifiers(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/Node;

    move-object p1, p0

    check-cast p1, Lcom/github/javaparser/ast/Node;

    return-object p1
.end method

.method public setModifier(Lcom/github/javaparser/ast/Modifier$Keyword;Z)Lcom/github/javaparser/ast/Node;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "m",
            "set"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/Modifier$Keyword;",
            "Z)TN;"
        }
    .end annotation

    if-eqz p2, :cond_0

    filled-new-array {p1}, [Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;->addModifier([Lcom/github/javaparser/ast/Modifier$Keyword;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1

    :cond_0
    filled-new-array {p1}, [Lcom/github/javaparser/ast/Modifier$Keyword;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;->removeModifier([Lcom/github/javaparser/ast/Modifier$Keyword;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method

.method public abstract setModifiers(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modifiers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "Lcom/github/javaparser/ast/Modifier;",
            ">;)TN;"
        }
    .end annotation
.end method

.method public varargs setModifiers([Lcom/github/javaparser/ast/Modifier$Keyword;)Lcom/github/javaparser/ast/Node;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "modifiers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/github/javaparser/ast/Modifier$Keyword;",
            ")TN;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/github/javaparser/ast/x;

    invoke-direct {v0}, Lcom/github/javaparser/ast/x;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Lcom/github/javaparser/ast/NodeList;->toNodeList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/NodeList;

    invoke-interface {p0, p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithModifiers;->setModifiers(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method
