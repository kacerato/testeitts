.class public Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;


# instance fields
.field private elements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
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
            "Ljava/util/List<",
            "Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/printer/concretesyntaxmodel/d;

    invoke-direct {v1}, Lcom/github/javaparser/printer/concretesyntaxmodel/d;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;->elements:Ljava/util/List;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Null element in the mix"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic a(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;->lambda$toString$1(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/printer/SourcePrinter;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;->lambda$prettyPrint$0(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/printer/SourcePrinter;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    return-void
.end method

.method private static synthetic lambda$prettyPrint$0(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/printer/SourcePrinter;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "node",
            "printer",
            "e"
        }
    .end annotation

    invoke-interface {p2, p0, p1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->prettyPrint(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/printer/SourcePrinter;)V

    return-void
.end method

.method private static synthetic lambda$toString$1(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "e"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
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

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    iget-object v2, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;->elements:Ljava/util/List;

    iget-object p1, p1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;->elements:Ljava/util/List;

    if-eqz v2, :cond_2

    invoke-interface {v2, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public getElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;->elements:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;->elements:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public prettyPrint(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/printer/SourcePrinter;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "printer"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;->elements:Ljava/util/List;

    new-instance v1, Lcom/github/javaparser/printer/concretesyntaxmodel/b;

    invoke-direct {v1, p1, p2}, Lcom/github/javaparser/printer/concretesyntaxmodel/b;-><init>(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/printer/SourcePrinter;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/printer/concretesyntaxmodel/c;

    invoke-direct {v1}, Lcom/github/javaparser/printer/concretesyntaxmodel/c;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    const-string v1, "CsmMix["

    const-string v2, "]"

    const-string v3, ","

    invoke-static {v3, v1, v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
