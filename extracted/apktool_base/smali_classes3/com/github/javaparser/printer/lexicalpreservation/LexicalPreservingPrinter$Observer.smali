.class Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;
.super Lcom/github/javaparser/ast/observer/PropagatingAstObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Observer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/github/javaparser/ast/observer/PropagatingAstObserver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/util/Optional;Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/printer/lexicalpreservation/NodeText;
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;->lambda$concretePropertyChange$0(Ljava/util/Optional;Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;->lambda$selectMatchingChildElements$5(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/github/javaparser/ast/comments/Comment;Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;->lambda$findChildTextElementForComment$2(Lcom/github/javaparser/ast/comments/Comment;Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lcom/github/javaparser/ast/comments/Comment;Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;->lambda$findTokenTextElementForComment$8(Lcom/github/javaparser/ast/comments/Comment;Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/github/javaparser/ast/comments/Comment;Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;->lambda$findTokenTextElementForComment$14(Lcom/github/javaparser/ast/comments/Comment;Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;->lambda$selectMatchingChildElements$4(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)Z

    move-result p0

    return p0
.end method

.method private findChildTextElementForComment(Lcom/github/javaparser/ast/comments/Comment;Lcom/github/javaparser/printer/lexicalpreservation/NodeText;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oldValue",
            "nodeText"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/comments/Comment;",
            "Lcom/github/javaparser/printer/lexicalpreservation/NodeText;",
            ")",
            "Ljava/util/List<",
            "Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;->selectMatchingChildElements(Lcom/github/javaparser/ast/comments/Comment;Lcom/github/javaparser/printer/lexicalpreservation/NodeText;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/I;

    invoke-direct {v0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/I;-><init>(Lcom/github/javaparser/ast/comments/Comment;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/J;

    invoke-direct {v0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/J;-><init>(Lcom/github/javaparser/ast/comments/Comment;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/util/List;

    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, v1, :cond_1

    return-object p2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The matching child text element for the comment to be removed could not be found."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private findTokenTextElementForComment(Lcom/github/javaparser/ast/comments/Comment;Lcom/github/javaparser/printer/lexicalpreservation/NodeText;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oldValue",
            "nodeText"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/comments/Comment;",
            "Lcom/github/javaparser/printer/lexicalpreservation/NodeText;",
            ")",
            "Ljava/util/List<",
            "Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;",
            ">;"
        }
    .end annotation

    instance-of v0, p1, Lcom/github/javaparser/ast/comments/JavadocComment;

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->getElements()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/N;

    invoke-direct {v0}, Lcom/github/javaparser/printer/lexicalpreservation/N;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/O;

    invoke-direct {v0}, Lcom/github/javaparser/printer/lexicalpreservation/O;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/P;

    invoke-direct {v0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/P;-><init>(Lcom/github/javaparser/ast/comments/Comment;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/github/javaparser/ast/comments/BlockComment;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->getElements()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/Q;

    invoke-direct {v0}, Lcom/github/javaparser/printer/lexicalpreservation/Q;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/S;

    invoke-direct {v0}, Lcom/github/javaparser/printer/lexicalpreservation/S;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/T;

    invoke-direct {v0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/T;-><init>(Lcom/github/javaparser/ast/comments/Comment;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->getElements()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/U;

    invoke-direct {v0}, Lcom/github/javaparser/printer/lexicalpreservation/U;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/V;

    invoke-direct {v0}, Lcom/github/javaparser/printer/lexicalpreservation/V;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/G;

    invoke-direct {v0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/G;-><init>(Lcom/github/javaparser/ast/comments/Comment;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    :goto_0
    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/H;

    invoke-direct {v0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/H;-><init>(Lcom/github/javaparser/ast/comments/Comment;)V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method private fixIndentOfAddedNode(Lcom/github/javaparser/printer/lexicalpreservation/NodeText;I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nodeText",
            "index"
        }
    .end annotation

    if-gtz p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, p2

    :goto_0
    if-ltz v1, :cond_4

    invoke-virtual {p1, v1}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->getTextElement(I)Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isSpaceOrTab()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1, v1}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->getTextElement(I)Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    move-result-object v0

    :cond_1
    invoke-virtual {v2}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isSpaceOrTab()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isNewline()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eq v1, p2, :cond_4

    sub-int v1, p2, v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_4

    if-eqz v0, :cond_2

    new-instance v3, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    sget-object v4, Lcom/github/javaparser/JavaToken$Kind;->SPACE:Lcom/github/javaparser/JavaToken$Kind;

    invoke-virtual {v4}, Lcom/github/javaparser/JavaToken$Kind;->getKind()I

    move-result v4

    invoke-virtual {v0}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->expand()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2, v3}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->addElement(ILcom/github/javaparser/printer/lexicalpreservation/TextElement;)V

    goto :goto_2

    :cond_2
    new-instance v3, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    sget-object v4, Lcom/github/javaparser/JavaToken$Kind;->SPACE:Lcom/github/javaparser/JavaToken$Kind;

    invoke-virtual {v4}, Lcom/github/javaparser/JavaToken$Kind;->getKind()I

    move-result v4

    invoke-direct {v3, v4}, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;-><init>(I)V

    invoke-virtual {p1, p2, v3}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->addElement(ILcom/github/javaparser/printer/lexicalpreservation/TextElement;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public static synthetic g(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;->lambda$findTokenTextElementForComment$6(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)Z

    move-result p0

    return p0
.end method

.method private getIndexOfComment(Lcom/github/javaparser/ast/comments/Comment;Lcom/github/javaparser/printer/lexicalpreservation/NodeText;)I
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oldValue",
            "nodeText"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;->findTokenTextElementForComment(Lcom/github/javaparser/ast/comments/Comment;Lcom/github/javaparser/printer/lexicalpreservation/NodeText;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->matchByRange()Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;->and(Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;)Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->findElement(Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;)I

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;->findChildTextElementForComment(Lcom/github/javaparser/ast/comments/Comment;Lcom/github/javaparser/printer/lexicalpreservation/NodeText;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->matchByRange()Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;->and(Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;)Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->findElement(Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;)I

    move-result p1

    return p1
.end method

.method public static synthetic h(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;->lambda$findTokenTextElementForComment$10(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;->lambda$findTokenTextElementForComment$13(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    move-result-object p0

    return-object p0
.end method

.method private isCompleteLine(Ljava/util/List;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "elements",
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/javaparser/printer/lexicalpreservation/TextElement;",
            ">;I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-lez p2, :cond_7

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p2, v1, :cond_0

    goto :goto_5

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    invoke-virtual {v2}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isNewline()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isSpaceOrTab()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x1

    :goto_2
    invoke-interface {p1, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result p2

    if-eqz p2, :cond_6

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    invoke-virtual {p2}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isNewline()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p2}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isSpaceOrTab()Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_3

    :cond_5
    move v1, v0

    goto :goto_3

    :cond_6
    :goto_4
    return v1

    :cond_7
    :goto_5
    return v0
.end method

.method private isSameComment(Lcom/github/javaparser/ast/comments/Comment;Lcom/github/javaparser/ast/comments/Comment;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "childValue",
            "oldValue"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/ast/comments/Comment;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/github/javaparser/ast/comments/Comment;->getContent()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public static synthetic j(Lcom/github/javaparser/ast/comments/Comment;Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;->lambda$findChildTextElementForComment$3(Lcom/github/javaparser/ast/comments/Comment;Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;)Z

    move-result p0

    return p0
.end method

.method public static synthetic k(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;->lambda$findTokenTextElementForComment$12(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)Z

    move-result p0

    return p0
.end method

.method public static synthetic l(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;->lambda$findTokenTextElementForComment$9(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$concretePropertyChange$0(Ljava/util/Optional;Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/printer/lexicalpreservation/NodeText;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "parentNode",
            "parent"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/javaparser/ast/Node;

    invoke-static {p0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->getOrCreateNodeText(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$concretePropertyChange$1(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/printer/lexicalpreservation/NodeText;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "observedNode"
        }
    .end annotation

    invoke-static {p0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->getOrCreateNodeText(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$findChildTextElementForComment$2(Lcom/github/javaparser/ast/comments/Comment;Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "oldValue",
            "t"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;->getChild()Lcom/github/javaparser/ast/Node;

    move-result-object p1

    invoke-interface {p1}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->hasRange()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->hasRange()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$findChildTextElementForComment$3(Lcom/github/javaparser/ast/comments/Comment;Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "oldValue",
            "t"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;->getChild()Lcom/github/javaparser/ast/Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/Range;

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/javaparser/Range;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;->getChild()Lcom/github/javaparser/ast/Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;->getChild()Lcom/github/javaparser/ast/Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->hasRange()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;->getChild()Lcom/github/javaparser/ast/Node;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/ast/comments/Comment;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/Range;

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/github/javaparser/Range;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static synthetic lambda$findTokenTextElementForComment$10(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "e"
        }
    .end annotation

    check-cast p0, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    return-object p0
.end method

.method private static synthetic lambda$findTokenTextElementForComment$11(Lcom/github/javaparser/ast/comments/Comment;Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "oldValue",
            "t"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/github/javaparser/ast/comments/Comment;->asString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$findTokenTextElementForComment$12(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "e"
        }
    .end annotation

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isToken(I)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$findTokenTextElementForComment$13(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "e"
        }
    .end annotation

    check-cast p0, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    return-object p0
.end method

.method private static synthetic lambda$findTokenTextElementForComment$14(Lcom/github/javaparser/ast/comments/Comment;Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "oldValue",
            "t"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/github/javaparser/ast/comments/Comment;->asString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$findTokenTextElementForComment$15(Lcom/github/javaparser/ast/comments/Comment;Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "oldValue",
            "t"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;->getToken()Lcom/github/javaparser/JavaToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/JavaToken;->hasRange()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->hasRange()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;->getToken()Lcom/github/javaparser/JavaToken;

    move-result-object v0

    invoke-virtual {v0}, Lcom/github/javaparser/JavaToken;->hasRange()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Lcom/github/javaparser/ast/nodeTypes/NodeWithRange;->hasRange()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;->getToken()Lcom/github/javaparser/JavaToken;

    move-result-object p1

    invoke-virtual {p1}, Lcom/github/javaparser/JavaToken;->getRange()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/Range;

    invoke-virtual {p0}, Lcom/github/javaparser/ast/Node;->getRange()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/github/javaparser/Range;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$findTokenTextElementForComment$6(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "e"
        }
    .end annotation

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isToken(I)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$findTokenTextElementForComment$7(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "e"
        }
    .end annotation

    check-cast p0, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    return-object p0
.end method

.method private static synthetic lambda$findTokenTextElementForComment$8(Lcom/github/javaparser/ast/comments/Comment;Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "oldValue",
            "t"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/github/javaparser/ast/comments/Comment;->asString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$findTokenTextElementForComment$9(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "e"
        }
    .end annotation

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isToken(I)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$selectMatchingChildElements$4(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "e"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isChild()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$selectMatchingChildElements$5(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "c"
        }
    .end annotation

    check-cast p0, Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;

    return-object p0
.end method

.method public static synthetic m(Lcom/github/javaparser/ast/comments/Comment;Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;->lambda$findTokenTextElementForComment$11(Lcom/github/javaparser/ast/comments/Comment;Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;)Z

    move-result p0

    return p0
.end method

.method private makeCommentToken(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newComment"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/ast/comments/Comment;->isJavadocComment()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/github/javaparser/ast/comments/Comment;->getHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/comments/Comment;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/comments/Comment;->getFooter()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x8

    invoke-direct {v0, v1, p1}, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/ast/comments/Comment;->isLineComment()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/github/javaparser/ast/comments/Comment;->getHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/comments/Comment;->getContent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x5

    invoke-direct {v0, v1, p1}, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/github/javaparser/ast/comments/Comment;->isBlockComment()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/github/javaparser/ast/comments/Comment;->getHeader()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/comments/Comment;->getContent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/comments/Comment;->getFooter()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x9

    invoke-direct {v0, v1, p1}, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type of comment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic n(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;->lambda$findTokenTextElementForComment$7(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/printer/lexicalpreservation/NodeText;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;->lambda$concretePropertyChange$1(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lcom/github/javaparser/ast/comments/Comment;Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;->lambda$findTokenTextElementForComment$15(Lcom/github/javaparser/ast/comments/Comment;Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;)Z

    move-result p0

    return p0
.end method

.method private removeAllExtraCharacters(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "elements",
            "index"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/javaparser/printer/lexicalpreservation/TextElement;",
            ">;I)V"
        }
    .end annotation

    if-ltz p2, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;->removeAllExtraCharactersStartingFrom(Ljava/util/ListIterator;)V

    invoke-interface {p1, p2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;->removeAllExtraCharactersBeforePosition(Ljava/util/ListIterator;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private removeAllExtraCharactersBeforePosition(Ljava/util/ListIterator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iterator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "Lcom/github/javaparser/printer/lexicalpreservation/TextElement;",
            ">;)V"
        }
    .end annotation

    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isSpaceOrTab()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removeAllExtraCharactersStartingFrom(Ljava/util/ListIterator;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iterator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ListIterator<",
            "Lcom/github/javaparser/printer/lexicalpreservation/TextElement;",
            ">;)V"
        }
    .end annotation

    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isSpaceOrTab()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isNewline()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    :cond_1
    return-void
.end method

.method private selectMatchingChildElements(Lcom/github/javaparser/ast/comments/Comment;Lcom/github/javaparser/printer/lexicalpreservation/NodeText;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oldValue",
            "nodeText"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/comments/Comment;",
            "Lcom/github/javaparser/printer/lexicalpreservation/NodeText;",
            ")",
            "Ljava/util/List<",
            "Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->getElements()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lcom/github/javaparser/printer/lexicalpreservation/F;

    invoke-direct {v1}, Lcom/github/javaparser/printer/lexicalpreservation/F;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lcom/github/javaparser/printer/lexicalpreservation/M;

    invoke-direct {v1}, Lcom/github/javaparser/printer/lexicalpreservation/M;-><init>()V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;

    invoke-virtual {v1}, Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;->isComment()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;->getChild()Lcom/github/javaparser/ast/Node;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/ast/comments/Comment;

    invoke-direct {p0, v2, p1}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;->isSameComment(Lcom/github/javaparser/ast/comments/Comment;Lcom/github/javaparser/ast/comments/Comment;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;->getChild()Lcom/github/javaparser/ast/Node;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/github/javaparser/ast/Node;->getComment()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/ast/comments/Comment;

    invoke-direct {p0, v2, p1}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;->isSameComment(Lcom/github/javaparser/ast/comments/Comment;Lcom/github/javaparser/ast/comments/Comment;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public concreteListChange(Lcom/github/javaparser/ast/NodeList;Lcom/github/javaparser/ast/observer/AstObserver$ListChangeType;ILcom/github/javaparser/ast/Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "changedList",
            "type",
            "index",
            "nodeAddedOrRemoved"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "*>;",
            "Lcom/github/javaparser/ast/observer/AstObserver$ListChangeType;",
            "I",
            "Lcom/github/javaparser/ast/Node;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->getParentNodeForChildren()Lcom/github/javaparser/ast/Node;

    move-result-object v0

    invoke-static {v0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->getOrCreateNodeText(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    move-result-object v0

    sget-object v1, Lcom/github/javaparser/ast/observer/AstObserver$ListChangeType;->REMOVAL:Lcom/github/javaparser/ast/observer/AstObserver$ListChangeType;

    if-ne p2, v1, :cond_0

    invoke-static {}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->access$100()Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;

    move-result-object p2

    invoke-static {p1}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->access$200(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/observer/ObservableProperty;

    move-result-object p4

    invoke-virtual {p2, p4, p1, p3}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculateListRemovalDifference(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/ast/NodeList;I)Ljava/util/List;

    move-result-object p2

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/github/javaparser/ast/observer/AstObserver$ListChangeType;->ADDITION:Lcom/github/javaparser/ast/observer/AstObserver$ListChangeType;

    if-ne p2, v1, :cond_1

    invoke-static {}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->access$100()Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;

    move-result-object p2

    invoke-static {p1}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->access$200(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/observer/ObservableProperty;

    move-result-object v1

    invoke-virtual {p2, v1, p1, p3, p4}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculateListAdditionDifference(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/ast/NodeList;ILcom/github/javaparser/ast/Node;)Ljava/util/List;

    move-result-object p2

    :goto_0
    new-instance p3, Lcom/github/javaparser/printer/lexicalpreservation/Difference;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->getParentNodeForChildren()Lcom/github/javaparser/ast/Node;

    move-result-object p1

    invoke-direct {p3, p2, v0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;-><init>(Ljava/util/List;Lcom/github/javaparser/printer/lexicalpreservation/NodeText;Lcom/github/javaparser/ast/Node;)V

    invoke-virtual {p3}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->apply()V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unknown change type: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public concreteListReplacement(Lcom/github/javaparser/ast/NodeList;ILcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "changedList",
            "index",
            "oldValue",
            "newValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/ast/NodeList<",
            "*>;I",
            "Lcom/github/javaparser/ast/Node;",
            "Lcom/github/javaparser/ast/Node;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->getParentNodeForChildren()Lcom/github/javaparser/ast/Node;

    move-result-object p3

    invoke-static {p3}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->getOrCreateNodeText(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    move-result-object p3

    invoke-static {}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->access$100()Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;

    move-result-object v0

    invoke-static {p1}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->access$200(Lcom/github/javaparser/ast/NodeList;)Lcom/github/javaparser/ast/observer/ObservableProperty;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2, p4}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculateListReplacementDifference(Lcom/github/javaparser/ast/observer/ObservableProperty;Lcom/github/javaparser/ast/NodeList;ILcom/github/javaparser/ast/Node;)Ljava/util/List;

    move-result-object p2

    new-instance p4, Lcom/github/javaparser/printer/lexicalpreservation/Difference;

    invoke-virtual {p1}, Lcom/github/javaparser/ast/NodeList;->getParentNodeForChildren()Lcom/github/javaparser/ast/Node;

    move-result-object p1

    invoke-direct {p4, p2, p3, p1}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;-><init>(Ljava/util/List;Lcom/github/javaparser/printer/lexicalpreservation/NodeText;Lcom/github/javaparser/ast/Node;)V

    invoke-virtual {p4}, Lcom/github/javaparser/printer/lexicalpreservation/Difference;->apply()V

    return-void
.end method

.method public concretePropertyChange(Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "observedNode",
            "property",
            "oldValue",
            "newValue"
        }
    .end annotation

    if-ne p3, p4, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/github/javaparser/ast/observer/ObservableProperty;->RANGE:Lcom/github/javaparser/ast/observer/ObservableProperty;

    if-eq p2, v0, :cond_b

    sget-object v0, Lcom/github/javaparser/ast/observer/ObservableProperty;->COMMENTED_NODE:Lcom/github/javaparser/ast/observer/ObservableProperty;

    if-ne p2, v0, :cond_1

    goto/16 :goto_1

    :cond_1
    sget-object v0, Lcom/github/javaparser/ast/observer/ObservableProperty;->COMMENT:Lcom/github/javaparser/ast/observer/ObservableProperty;

    if-ne p2, v0, :cond_9

    invoke-virtual {p1}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/github/javaparser/printer/lexicalpreservation/K;

    invoke-direct {v1, v0}, Lcom/github/javaparser/printer/lexicalpreservation/K;-><init>(Ljava/util/Optional;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/github/javaparser/printer/lexicalpreservation/L;

    invoke-direct {v2, p1}, Lcom/github/javaparser/printer/lexicalpreservation/L;-><init>(Lcom/github/javaparser/ast/Node;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    const/4 v2, 0x0

    if-nez p3, :cond_3

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1, p1}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->findChild(Lcom/github/javaparser/ast/Node;)I

    move-result v2

    :cond_2
    add-int/lit8 v0, v2, -0x1

    invoke-direct {p0, v1, v0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;->fixIndentOfAddedNode(Lcom/github/javaparser/printer/lexicalpreservation/NodeText;I)V

    sget-object v0, Lcom/github/javaparser/utils/LineSeparator;->SYSTEM:Lcom/github/javaparser/utils/LineSeparator;

    invoke-virtual {p1, v0}, Lcom/github/javaparser/ast/Node;->getLineEndingStyleOrDefault(Lcom/github/javaparser/utils/LineSeparator;)Lcom/github/javaparser/utils/LineSeparator;

    move-result-object v0

    add-int/lit8 v3, v2, 0x1

    move-object v4, p4

    check-cast v4, Lcom/github/javaparser/ast/comments/Comment;

    invoke-direct {p0, v4}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;->makeCommentToken(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->addElement(ILcom/github/javaparser/printer/lexicalpreservation/TextElement;)V

    invoke-static {v0}, Lcom/github/javaparser/TokenTypes;->eolTokenKind(Lcom/github/javaparser/utils/LineSeparator;)I

    move-result v2

    invoke-virtual {v0}, Lcom/github/javaparser/utils/LineSeparator;->asRawString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v2, v0}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->addToken(IILjava/lang/String;)V

    goto :goto_0

    :cond_3
    if-nez p4, :cond_7

    instance-of v0, p3, Lcom/github/javaparser/ast/comments/Comment;

    if-eqz v0, :cond_6

    move-object v0, p3

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-virtual {v0}, Lcom/github/javaparser/ast/comments/Comment;->isOrphan()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p1}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->getOrCreateNodeText(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    move-result-object v1

    :cond_4
    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;->getIndexOfComment(Lcom/github/javaparser/ast/comments/Comment;Lcom/github/javaparser/printer/lexicalpreservation/NodeText;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->removeElement(I)V

    invoke-virtual {v1}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->getElements()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;->isCompleteLine(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->getElements()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;->removeAllExtraCharacters(Ljava/util/List;I)V

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->getElements()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;->removeAllExtraCharactersStartingFrom(Ljava/util/ListIterator;)V

    goto :goto_0

    :cond_6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Trying to remove something that is not a comment!"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    move-object v0, p3

    check-cast v0, Lcom/github/javaparser/ast/comments/Comment;

    invoke-direct {p0, v0, v1}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;->findTokenTextElementForComment(Lcom/github/javaparser/ast/comments/Comment;Lcom/github/javaparser/printer/lexicalpreservation/NodeText;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    move-object v3, p4

    check-cast v3, Lcom/github/javaparser/ast/comments/Comment;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->matchByRange()Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;->and(Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;)Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;

    move-result-object v0

    invoke-direct {p0, v3}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter$Observer;->makeCommentToken(Lcom/github/javaparser/ast/comments/Comment;)Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->replace(Lcom/github/javaparser/printer/lexicalpreservation/TextElementMatcher;Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)V

    goto :goto_0

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "The matching comment to be replaced could not be found"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_0
    invoke-static {p1}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->getOrCreateNodeText(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->access$100()Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;

    move-result-object v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator;->calculatePropertyChange(Lcom/github/javaparser/printer/lexicalpreservation/NodeText;Lcom/github/javaparser/ast/Node;Lcom/github/javaparser/ast/observer/ObservableProperty;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_a
    new-instance p2, Ljava/lang/NullPointerException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_b
    :goto_1
    return-void
.end method
