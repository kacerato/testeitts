.class final Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lcom/github/javaparser/printer/lexicalpreservation/Removed;",
        ">;"
    }
.end annotation


# instance fields
.field private final firstElementIndex:Ljava/lang/Integer;

.field private final hasOnlyWhitespaceBehindFunction:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lcom/github/javaparser/TokenRange;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final hasOnlyWhitespaceInFrontFunction:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lcom/github/javaparser/TokenRange;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final hasOnlyWhitespaceJavaTokenBehindFunction:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lcom/github/javaparser/JavaToken;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final hasOnlyWhitespaceJavaTokenInFrontFunction:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lcom/github/javaparser/JavaToken;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private isProcessed:Z

.field private final removedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/javaparser/printer/lexicalpreservation/Removed;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Integer;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "firstElementIndex",
            "removedList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/github/javaparser/printer/lexicalpreservation/Removed;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;->isProcessed:Z

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/Y;

    invoke-direct {v0, p0}, Lcom/github/javaparser/printer/lexicalpreservation/Y;-><init>(Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;)V

    iput-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;->hasOnlyWhitespaceJavaTokenInFrontFunction:Ljava/util/function/Function;

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/Z;

    invoke-direct {v0, p0}, Lcom/github/javaparser/printer/lexicalpreservation/Z;-><init>(Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;)V

    iput-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;->hasOnlyWhitespaceJavaTokenBehindFunction:Ljava/util/function/Function;

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/a0;

    invoke-direct {v0, p0}, Lcom/github/javaparser/printer/lexicalpreservation/a0;-><init>(Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;)V

    iput-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;->hasOnlyWhitespaceInFrontFunction:Ljava/util/function/Function;

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/b0;

    invoke-direct {v0, p0}, Lcom/github/javaparser/printer/lexicalpreservation/b0;-><init>(Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;)V

    iput-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;->hasOnlyWhitespaceBehindFunction:Ljava/util/function/Function;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;->firstElementIndex:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;->removedList:Ljava/util/List;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "removedList should not be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "firstElementIndex should not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic a(Lcom/github/javaparser/JavaToken;)Ljava/util/Optional;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;->lambda$null$2(Lcom/github/javaparser/JavaToken;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000(Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;->removedList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic b(Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;Lcom/github/javaparser/JavaToken;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;->lambda$new$1(Lcom/github/javaparser/JavaToken;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;Lcom/github/javaparser/TokenRange;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;->lambda$new$4(Lcom/github/javaparser/TokenRange;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;Lcom/github/javaparser/TokenRange;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;->lambda$new$5(Lcom/github/javaparser/TokenRange;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/github/javaparser/JavaToken;)Ljava/util/Optional;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;->lambda$null$0(Lcom/github/javaparser/JavaToken;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;Lcom/github/javaparser/JavaToken;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;->lambda$new$3(Lcom/github/javaparser/JavaToken;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private getIndicesBeingRemoved()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;->firstElementIndex:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;->firstElementIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;->removedList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private hasOnlyWhiteSpaceForTokenFunction(Lcom/github/javaparser/JavaToken;Ljava/util/function/Function;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "token",
            "tokenFunction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/JavaToken;",
            "Ljava/util/function/Function<",
            "Lcom/github/javaparser/JavaToken;",
            "Ljava/util/Optional<",
            "Lcom/github/javaparser/JavaToken;",
            ">;>;)Z"
        }
    .end annotation

    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/JavaToken;

    invoke-virtual {v0}, Lcom/github/javaparser/JavaToken;->getKind()I

    move-result v0

    invoke-static {v0}, Lcom/github/javaparser/TokenTypes;->isWhitespaceButNotEndOfLine(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/JavaToken;

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;->hasOnlyWhiteSpaceForTokenFunction(Lcom/github/javaparser/JavaToken;Ljava/util/function/Function;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/JavaToken;

    invoke-virtual {p1}, Lcom/github/javaparser/JavaToken;->getKind()I

    move-result p1

    invoke-static {p1}, Lcom/github/javaparser/TokenTypes;->isEndOfLineToken(I)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    return v1
.end method

.method private hasOnlyWhitespace(Lcom/github/javaparser/printer/lexicalpreservation/Removed;Ljava/util/function/Function;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startElement",
            "hasOnlyWhitespaceFunction"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/printer/lexicalpreservation/Removed;",
            "Ljava/util/function/Function<",
            "Lcom/github/javaparser/TokenRange;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;->isChild()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/Removed;->getElement()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;->getChild()Lcom/github/javaparser/ast/Node;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/Removed;->isToken()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/Removed;->getElement()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;->isNewLine()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method private synthetic lambda$new$1(Lcom/github/javaparser/JavaToken;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "begin"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/c0;

    invoke-direct {v0}, Lcom/github/javaparser/printer/lexicalpreservation/c0;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;->hasOnlyWhiteSpaceForTokenFunction(Lcom/github/javaparser/JavaToken;Ljava/util/function/Function;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$new$3(Lcom/github/javaparser/JavaToken;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "end"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/X;

    invoke-direct {v0}, Lcom/github/javaparser/printer/lexicalpreservation/X;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;->hasOnlyWhiteSpaceForTokenFunction(Lcom/github/javaparser/JavaToken;Ljava/util/function/Function;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private synthetic lambda$new$4(Lcom/github/javaparser/TokenRange;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "tokenRange"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;->hasOnlyWhitespaceJavaTokenInFrontFunction:Ljava/util/function/Function;

    invoke-virtual {p1}, Lcom/github/javaparser/TokenRange;->getBegin()Lcom/github/javaparser/JavaToken;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method private synthetic lambda$new$5(Lcom/github/javaparser/TokenRange;)Ljava/lang/Boolean;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "tokenRange"
        }
    .end annotation

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;->hasOnlyWhitespaceJavaTokenBehindFunction:Ljava/util/function/Function;

    invoke-virtual {p1}, Lcom/github/javaparser/TokenRange;->getEnd()Lcom/github/javaparser/JavaToken;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method private static synthetic lambda$null$0(Lcom/github/javaparser/JavaToken;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "token"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/JavaToken;->getPreviousToken()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$null$2(Lcom/github/javaparser/JavaToken;)Ljava/util/Optional;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "token"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/JavaToken;->getNextToken()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method public static of(Ljava/lang/Integer;Ljava/util/List;)Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "firstElementIndex",
            "removedList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/github/javaparser/printer/lexicalpreservation/Removed;",
            ">;)",
            "Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;

    invoke-direct {v0, p0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;-><init>(Ljava/lang/Integer;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public final getFirstElement()Lcom/github/javaparser/printer/lexicalpreservation/Removed;
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;->removedList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/printer/lexicalpreservation/Removed;

    return-object v0
.end method

.method public final getIndentation()Ljava/util/Optional;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/printer/lexicalpreservation/Removed;

    invoke-virtual {v1}, Lcom/github/javaparser/printer/lexicalpreservation/Removed;->isNewLine()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;->isChild()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lcom/github/javaparser/printer/lexicalpreservation/Removed;->getElement()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;->getChild()Lcom/github/javaparser/ast/Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/Node;->getTokenRange()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/TokenRange;

    invoke-virtual {v0}, Lcom/github/javaparser/TokenRange;->getBegin()Lcom/github/javaparser/JavaToken;

    move-result-object v0

    iget-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;->hasOnlyWhitespaceJavaTokenInFrontFunction:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/github/javaparser/JavaToken;->getPreviousToken()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/JavaToken;

    invoke-virtual {v2}, Lcom/github/javaparser/JavaToken;->getKind()I

    move-result v2

    invoke-static {v2}, Lcom/github/javaparser/TokenTypes;->isWhitespaceButNotEndOfLine(I)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/JavaToken;

    invoke-virtual {v0}, Lcom/github/javaparser/JavaToken;->getPreviousToken()Ljava/util/Optional;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/JavaToken;

    invoke-virtual {v0}, Lcom/github/javaparser/JavaToken;->getKind()I

    move-result v0

    invoke-static {v0}, Lcom/github/javaparser/TokenTypes;->isEndOfLineToken(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    :cond_4
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public final getLastElement()Lcom/github/javaparser/printer/lexicalpreservation/Removed;
    .locals 2

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;->removedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/printer/lexicalpreservation/Removed;

    return-object v0
.end method

.method public final getLastElementIndex()Ljava/lang/Integer;
    .locals 2

    invoke-direct {p0}, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;->getIndicesBeingRemoved()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public final isACompleteLine()Z
    .locals 2

    invoke-virtual {p0}, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;->getFirstElement()Lcom/github/javaparser/printer/lexicalpreservation/Removed;

    move-result-object v0

    iget-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;->hasOnlyWhitespaceInFrontFunction:Ljava/util/function/Function;

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;->hasOnlyWhitespace(Lcom/github/javaparser/printer/lexicalpreservation/Removed;Ljava/util/function/Function;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;->getLastElement()Lcom/github/javaparser/printer/lexicalpreservation/Removed;

    move-result-object v0

    iget-object v1, p0, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;->hasOnlyWhitespaceBehindFunction:Ljava/util/function/Function;

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;->hasOnlyWhitespace(Lcom/github/javaparser/printer/lexicalpreservation/Removed;Ljava/util/function/Function;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isLastElement(Lcom/github/javaparser/printer/lexicalpreservation/Removed;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "element"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;->getLastElement()Lcom/github/javaparser/printer/lexicalpreservation/Removed;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/Removed;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final isProcessed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;->isProcessed:Z

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/github/javaparser/printer/lexicalpreservation/Removed;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup$1;

    invoke-direct {v0, p0}, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup$1;-><init>(Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;)V

    return-object v0
.end method

.method public final processed()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/RemovedGroup;->isProcessed:Z

    return-void
.end method
