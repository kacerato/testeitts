.class public Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor$MatchClassification;
    }
.end annotation


# instance fields
.field private final nodeText:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;


# direct methods
.method private constructor <init>(Lcom/github/javaparser/printer/lexicalpreservation/NodeText;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nodeText"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor;->nodeText:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    return-void
.end method

.method private findIndexOfCorrespondingNodeTextElement(Ljava/util/List;Lcom/github/javaparser/printer/lexicalpreservation/NodeText;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "elements",
            "nodeText"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;",
            ">;",
            "Lcom/github/javaparser/printer/lexicalpreservation/NodeText;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;

    invoke-direct {v1, p1}, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;-><init>(Ljava/util/List;)V

    :goto_0
    invoke-virtual {v1}, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v1}, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;->hasPrevious()Z

    move-result v2

    invoke-virtual {v1}, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;->previousIndex()I

    move-result v3

    invoke-virtual {v1}, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    new-instance v5, Ljava/util/EnumMap;

    const-class v6, Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor$MatchClassification;

    invoke-direct {v5, v6}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    new-instance v6, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;

    invoke-virtual {p2}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->getElements()Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;-><init>(Ljava/util/List;)V

    :cond_0
    :goto_1
    invoke-virtual {v6}, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v6}, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;->hasPrevious()Z

    move-result v7

    invoke-virtual {v6}, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    invoke-virtual {v6}, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;->currentIndex()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-interface {v4, v8}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->isCorrespondingElement(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)Z

    move-result v10

    if-eqz v10, :cond_6

    const/4 v8, 0x0

    if-eqz v7, :cond_1

    if-eqz v2, :cond_1

    add-int/lit8 v7, v9, -0x1

    invoke-virtual {p2, v7}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->getTextElement(I)Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    move-result-object v7

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    invoke-interface {v10, v7}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->isCorrespondingElement(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)Z

    move-result v7

    goto :goto_2

    :cond_1
    move v7, v8

    :goto_2
    invoke-virtual {v1}, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v6}, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    invoke-virtual {v1}, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;->nextIndex()I

    move-result v10

    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    invoke-interface {v10, v8}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->isCorrespondingElement(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)Z

    move-result v8

    :cond_2
    if-eqz v7, :cond_3

    if-eqz v8, :cond_3

    sget-object v7, Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor$MatchClassification;->ALL:Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor$MatchClassification;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    if-eqz v7, :cond_4

    sget-object v7, Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor$MatchClassification;->PREVIOUS_AND_SAME:Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor$MatchClassification;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    if-eqz v8, :cond_5

    sget-object v7, Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor$MatchClassification;->NEXT_AND_SAME:Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor$MatchClassification;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    sget-object v7, Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor$MatchClassification;->SAME_ONLY:Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor$MatchClassification;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_6
    invoke-direct {p0, v8, v4}, Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor;->isAlmostCorrespondingElement(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor$MatchClassification;->ALMOST:Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor$MatchClassification;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_7
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/github/javaparser/printer/lexicalpreservation/e0;

    invoke-direct {v3}, Lcom/github/javaparser/printer/lexicalpreservation/e0;-><init>()V

    invoke-static {v3}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->min(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    return-object v0
.end method

.method private getCorrespondanceBetweenNextOrderAndPreviousOrder(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "elementsFromPreviousOrder",
            "elementsFromNextOrder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;",
            "Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/github/javaparser/printer/lexicalpreservation/Difference$ArrayIterator;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;->getElements()Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/github/javaparser/printer/lexicalpreservation/Difference$ArrayIterator;-><init>(Ljava/util/List;)V

    const/4 p1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/github/javaparser/printer/lexicalpreservation/Difference$ArrayIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Lcom/github/javaparser/printer/lexicalpreservation/Difference$ArrayIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    new-instance v3, Lcom/github/javaparser/printer/lexicalpreservation/Difference$ArrayIterator;

    invoke-virtual {p2}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;->getElements()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Lcom/github/javaparser/printer/lexicalpreservation/Difference$ArrayIterator;-><init>(Ljava/util/List;I)V

    :cond_1
    invoke-virtual {v3}, Lcom/github/javaparser/printer/lexicalpreservation/Difference$ArrayIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/github/javaparser/printer/lexicalpreservation/Difference$ArrayIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v1}, Lcom/github/javaparser/printer/lexicalpreservation/Difference$ArrayIterator;->index()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v4, v2}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;->matching(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/github/javaparser/printer/lexicalpreservation/Difference$ArrayIterator;->index()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1}, Lcom/github/javaparser/printer/lexicalpreservation/Difference$ArrayIterator;->index()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/github/javaparser/printer/lexicalpreservation/Difference$ArrayIterator;->nextIndex()I

    move-result p1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private isAlmostCorrespondingElement(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "textElement",
            "csmElement"
        }
    .end annotation

    invoke-interface {p2, p1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;->isCorrespondingElement(Lcom/github/javaparser/printer/lexicalpreservation/TextElement;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;->isWhiteSpace()Z

    move-result p1

    if-eqz p1, :cond_1

    instance-of p1, p2, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    if-eqz p1, :cond_1

    check-cast p2, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    invoke-virtual {p2}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;->isWhiteSpace()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static of(Lcom/github/javaparser/printer/lexicalpreservation/NodeText;)Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nodeText"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor;

    invoke-direct {v0, p0}, Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor;-><init>(Lcom/github/javaparser/printer/lexicalpreservation/NodeText;)V

    return-object v0
.end method


# virtual methods
.method public extract(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "diffElements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/Difference$ArrayIterator;

    invoke-direct {v0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/Difference$ArrayIterator;-><init>(Ljava/util/List;)V

    :cond_0
    invoke-virtual {v0}, Lcom/github/javaparser/printer/lexicalpreservation/Difference$ArrayIterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-virtual {v0}, Lcom/github/javaparser/printer/lexicalpreservation/Difference$ArrayIterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;

    instance-of v1, p1, Lcom/github/javaparser/printer/lexicalpreservation/Reshuffled;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/github/javaparser/printer/lexicalpreservation/Reshuffled;

    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/Reshuffled;->getPreviousOrder()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    move-result-object v1

    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/Reshuffled;->getNextOrder()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor;->getCorrespondanceBetweenNextOrderAndPreviousOrder(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;->getElements()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor;->nodeText:Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    invoke-direct {p0, v3, v4}, Lcom/github/javaparser/printer/lexicalpreservation/ReshuffledDiffElementExtractor;->findIndexOfCorrespondingNodeTextElement(Ljava/util/List;Lcom/github/javaparser/printer/lexicalpreservation/NodeText;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;

    invoke-direct {v4, v3}, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;-><init>(Ljava/util/List;)V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    :cond_1
    :goto_0
    invoke-virtual {v4}, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;->hasNext()Z

    move-result v6

    const/4 v7, -0x1

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v8, v7, :cond_1

    invoke-virtual {v4}, Lcom/github/javaparser/printer/lexicalpreservation/PeekingIterator;->currentIndex()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/tools/r8/internal/iQ0;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/iQ0;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;->getElements()Ljava/util/List;

    move-result-object p1

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const/4 v8, 0x0

    move v9, v8

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v2, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    add-int/lit8 v10, v9, 0x1

    move v11, v7

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v12

    if-ge v10, v12, :cond_5

    if-ne v11, v7, :cond_5

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v2, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-interface {v6, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v6, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-interface {v6, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v11, v12

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_5
    if-ne v11, v7, :cond_6

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Lcom/github/javaparser/printer/lexicalpreservation/Difference$ArrayIterator;->remove()V

    if-eq v3, v7, :cond_b

    :goto_3
    if-gt v8, v3, :cond_b

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v5, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v6, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    new-instance v11, Lcom/github/javaparser/printer/lexicalpreservation/Added;

    invoke-direct {v11, v10}, Lcom/github/javaparser/printer/lexicalpreservation/Added;-><init>(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    invoke-virtual {v0, v11}, Lcom/github/javaparser/printer/lexicalpreservation/Difference$ArrayIterator;->add(Ljava/lang/Object;)V

    goto :goto_4

    :cond_8
    invoke-virtual {v1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;->getElements()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    new-instance p1, Lcom/github/javaparser/printer/lexicalpreservation/Kept;

    invoke-direct {p1, v7}, Lcom/github/javaparser/printer/lexicalpreservation/Kept;-><init>(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    invoke-virtual {v0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/Difference$ArrayIterator;->add(Ljava/lang/Object;)V

    goto :goto_5

    :cond_9
    new-instance p1, Lcom/github/javaparser/printer/lexicalpreservation/Removed;

    invoke-direct {p1, v7}, Lcom/github/javaparser/printer/lexicalpreservation/Removed;-><init>(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    invoke-virtual {v0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/Difference$ArrayIterator;->add(Ljava/lang/Object;)V

    :cond_a
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_b
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    new-instance v2, Lcom/github/javaparser/printer/lexicalpreservation/Added;

    invoke-direct {v2, v1}, Lcom/github/javaparser/printer/lexicalpreservation/Added;-><init>(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    invoke-virtual {v0, v2}, Lcom/github/javaparser/printer/lexicalpreservation/Difference$ArrayIterator;->add(Ljava/lang/Object;)V

    goto :goto_6

    :cond_c
    return-void
.end method
