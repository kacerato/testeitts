.class Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$ChildPositionInfo;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$ChildPositionInfo;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;->lambda$calculate$4(Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$ChildPositionInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(ILjava/lang/Integer;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;->lambda$calculate$2(ILjava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$ChildPositionInfo;Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$ChildPositionInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;->lambda$calculate$3(Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$ChildPositionInfo;Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$ChildPositionInfo;)Z

    move-result p0

    return p0
.end method

.method public static calculate(Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "original",
            "after"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;",
            "Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;",
            ")",
            "Ljava/util/List<",
            "Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;->findChildrenPositions(Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;->findChildrenPositions(Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2, v1}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, -0x1

    move v6, v4

    move v7, v5

    move v8, v7

    move v5, v6

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_7

    add-int/lit8 v9, v4, 0x1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$ChildPositionInfo;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v10

    new-instance v11, Lcom/github/javaparser/printer/lexicalpreservation/j;

    invoke-direct {v11, v4}, Lcom/github/javaparser/printer/lexicalpreservation/j;-><init>(Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$ChildPositionInfo;)V

    invoke-interface {v10, v11}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v10

    new-instance v11, Lcom/github/javaparser/printer/lexicalpreservation/k;

    invoke-direct {v11}, Lcom/github/javaparser/printer/lexicalpreservation/k;-><init>()V

    invoke-interface {v10, v11}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v10

    new-instance v11, Lcom/github/javaparser/printer/lexicalpreservation/l;

    invoke-direct {v11, v7}, Lcom/github/javaparser/printer/lexicalpreservation/l;-><init>(I)V

    invoke-interface {v10, v11}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v10, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v10

    new-instance v11, Lcom/github/javaparser/printer/lexicalpreservation/m;

    invoke-direct {v11, v4}, Lcom/github/javaparser/printer/lexicalpreservation/m;-><init>(Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$ChildPositionInfo;)V

    invoke-interface {v10, v11}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v10

    new-instance v11, Lcom/github/javaparser/printer/lexicalpreservation/n;

    invoke-direct {v11}, Lcom/github/javaparser/printer/lexicalpreservation/n;-><init>()V

    invoke-interface {v10, v11}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v10

    new-instance v11, Lcom/github/javaparser/printer/lexicalpreservation/o;

    invoke-direct {v11, v8}, Lcom/github/javaparser/printer/lexicalpreservation/o;-><init>(I)V

    invoke-interface {v10, v11}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-lt v5, v7, :cond_0

    if-ge v6, v8, :cond_3

    :cond_0
    if-ge v5, v7, :cond_1

    invoke-virtual {p0, v5, v7}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->sub(II)Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    move-result-object v10

    goto :goto_1

    :cond_1
    new-instance v10, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    sget-object v11, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v10, v11}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;-><init>(Ljava/util/List;)V

    :goto_1
    if-ge v6, v8, :cond_2

    invoke-virtual {p1, v6, v8}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->sub(II)Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    move-result-object v11

    goto :goto_2

    :cond_2
    new-instance v11, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    sget-object v12, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {v11, v12}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;-><init>(Ljava/util/List;)V

    :goto_2
    invoke-static {v10, v11}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;->calculateImpl(Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    if-gt v6, v8, :cond_4

    new-instance v10, Lcom/github/javaparser/printer/lexicalpreservation/Kept;

    new-instance v11, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    iget-object v4, v4, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$ChildPositionInfo;->node:Lcom/github/javaparser/ast/Node;

    invoke-direct {v11, v4}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;-><init>(Lcom/github/javaparser/ast/Node;)V

    invoke-direct {v10, v11}, Lcom/github/javaparser/printer/lexicalpreservation/Kept;-><init>(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    new-instance v10, Lcom/github/javaparser/printer/lexicalpreservation/Removed;

    new-instance v11, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    iget-object v4, v4, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$ChildPositionInfo;->node:Lcom/github/javaparser/ast/Node;

    invoke-direct {v11, v4}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;-><init>(Lcom/github/javaparser/ast/Node;)V

    invoke-direct {v10, v11}, Lcom/github/javaparser/printer/lexicalpreservation/Removed;-><init>(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    if-gt v5, v7, :cond_5

    add-int/lit8 v4, v7, 0x1

    move v5, v4

    :cond_5
    if-gt v6, v8, :cond_6

    add-int/lit8 v4, v8, 0x1

    move v6, v4

    :cond_6
    move v4, v9

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v5, v0, :cond_8

    iget-object v0, p1, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_b

    :cond_8
    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_9

    iget-object v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v5, v0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->sub(II)Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    move-result-object p0

    goto :goto_4

    :cond_9
    new-instance p0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;-><init>(Ljava/util/List;)V

    :goto_4
    iget-object v0, p1, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_a

    iget-object v0, p1, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->elements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v6, v0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->sub(II)Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    move-result-object p1

    goto :goto_5

    :cond_a
    new-instance p1, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {p1, v0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;-><init>(Ljava/util/List;)V

    :goto_5
    invoke-static {p0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;->calculateImpl(Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v3, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_b
    return-object v3
.end method

.method private static calculateImpl(Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "original",
            "after"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;",
            "Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;",
            ")",
            "Ljava/util/List<",
            "Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    iget-object v3, p0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->elements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v3, p1, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->elements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_1

    iget-object v3, p0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->elements:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    invoke-static {v3, v1, v0}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;->considerRemoval(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;ILjava/util/List;)I

    move-result v1

    goto/16 :goto_4

    :cond_1
    iget-object v3, p0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->elements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_2

    iget-object v3, p1, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->elements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    new-instance v3, Lcom/github/javaparser/printer/lexicalpreservation/Added;

    iget-object v4, p1, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->elements:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    invoke-direct {v3, v4}, Lcom/github/javaparser/printer/lexicalpreservation/Added;-><init>(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    :cond_2
    iget-object v3, p0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->elements:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    iget-object v4, p1, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->elements:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    instance-of v5, v3, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    if-eqz v5, :cond_4

    instance-of v5, v4, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    if-eqz v5, :cond_4

    check-cast v4, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    invoke-virtual {v4}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;->getElements()Ljava/util/List;

    move-result-object v5

    check-cast v3, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;

    invoke-virtual {v3}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;->getElements()Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;->getElements()Ljava/util/List;

    move-result-object v3

    new-instance v4, Lcom/github/javaparser/printer/lexicalpreservation/h;

    invoke-direct {v4, v0}, Lcom/github/javaparser/printer/lexicalpreservation/h;-><init>(Ljava/util/List;)V

    invoke-interface {v3, v4}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_1

    :cond_3
    new-instance v5, Lcom/github/javaparser/printer/lexicalpreservation/Reshuffled;

    invoke-direct {v5, v3, v4}, Lcom/github/javaparser/printer/lexicalpreservation/Reshuffled;-><init>(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmMix;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-static {v3, v4}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;->matching(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v4, Lcom/github/javaparser/printer/lexicalpreservation/Kept;

    invoke-direct {v4, v3}, Lcom/github/javaparser/printer/lexicalpreservation/Kept;-><init>(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-static {v3, v4}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;->replacement(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v3, v1, v0}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;->considerRemoval(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;ILjava/util/List;)I

    move-result v1

    new-instance v3, Lcom/github/javaparser/printer/lexicalpreservation/Added;

    invoke-direct {v3, v4}, Lcom/github/javaparser/printer/lexicalpreservation/Added;-><init>(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v1}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->from(I)Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1, v6}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->from(I)Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;->calculate(Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;)Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;->cost(Ljava/util/List;)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_7

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p0, v7}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->from(I)Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    move-result-object v7

    invoke-virtual {p1, v2}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->from(I)Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;->calculate(Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;)Ljava/util/List;

    move-result-object v7

    goto :goto_2

    :cond_7
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_9

    invoke-static {v7}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;->cost(Ljava/util/List;)J

    move-result-wide v7

    invoke-static {v5}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;->cost(Ljava/util/List;)J

    move-result-wide v9

    cmp-long v5, v7, v9

    if-lez v5, :cond_8

    goto :goto_3

    :cond_8
    new-instance v4, Lcom/github/javaparser/printer/lexicalpreservation/Removed;

    invoke-direct {v4, v3}, Lcom/github/javaparser/printer/lexicalpreservation/Removed;-><init>(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    :goto_3
    new-instance v2, Lcom/github/javaparser/printer/lexicalpreservation/Added;

    invoke-direct {v2, v4}, Lcom/github/javaparser/printer/lexicalpreservation/Added;-><init>(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v6

    :goto_4
    iget-object v3, p0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->elements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_0

    iget-object v3, p1, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->elements:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    return-object v0
.end method

.method private static considerRemoval(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;ILjava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "removedElement",
            "originalIndex",
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;",
            "I",
            "Ljava/util/List<",
            "Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;",
            ">;)I"
        }
    .end annotation

    .line 9
    instance-of v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    if-eqz v0, :cond_0

    .line 10
    move-object v0, p0

    check-cast v0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    .line 11
    invoke-virtual {v0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;->getChild()Lcom/github/javaparser/ast/Node;

    move-result-object v1

    instance-of v1, v1, Lcom/github/javaparser/ast/type/Type;

    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {v0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;->getChild()Lcom/github/javaparser/ast/Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 13
    invoke-virtual {v0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;->getChild()Lcom/github/javaparser/ast/Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/github/javaparser/ast/body/VariableDeclarator;

    if-eqz v1, :cond_0

    .line 14
    invoke-virtual {v0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;->getChild()Lcom/github/javaparser/ast/Node;

    move-result-object v0

    invoke-static {v0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->getOrCreateNodeText(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    move-result-object v0

    .line 15
    invoke-static {v0, p2}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;->considerRemoval(Lcom/github/javaparser/printer/lexicalpreservation/NodeText;Ljava/util/List;)V

    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 16
    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/Removed;

    invoke-direct {v0, p0}, Lcom/github/javaparser/printer/lexicalpreservation/Removed;-><init>(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    :cond_1
    return p1
.end method

.method private static considerRemoval(Lcom/github/javaparser/printer/lexicalpreservation/NodeText;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "nodeTextForChild",
            "elements"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/printer/lexicalpreservation/NodeText;",
            "Ljava/util/List<",
            "Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/github/javaparser/printer/lexicalpreservation/NodeText;->getElements()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/javaparser/printer/lexicalpreservation/TextElement;

    .line 2
    instance-of v1, v0, Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;

    .line 4
    invoke-virtual {v0}, Lcom/github/javaparser/printer/lexicalpreservation/ChildTextElement;->getChild()Lcom/github/javaparser/ast/Node;

    move-result-object v0

    invoke-static {v0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalPreservingPrinter;->getOrCreateNodeText(Lcom/github/javaparser/ast/Node;)Lcom/github/javaparser/printer/lexicalpreservation/NodeText;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;->considerRemoval(Lcom/github/javaparser/printer/lexicalpreservation/NodeText;Ljava/util/List;)V

    goto :goto_0

    .line 5
    :cond_0
    instance-of v1, v0, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    if-eqz v1, :cond_1

    .line 6
    check-cast v0, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;

    .line 7
    new-instance v1, Lcom/github/javaparser/printer/lexicalpreservation/Removed;

    new-instance v2, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    invoke-virtual {v0}, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;->getTokenKind()I

    move-result v3

    invoke-virtual {v0}, Lcom/github/javaparser/printer/lexicalpreservation/TokenTextElement;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;-><init>(ILjava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/github/javaparser/printer/lexicalpreservation/Removed;-><init>(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method

.method private static cost(Ljava/util/List;)J
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
            "Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;",
            ">;)J"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/i;

    invoke-direct {v0}, Lcom/github/javaparser/printer/lexicalpreservation/i;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/Stream;->count()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic d(ILjava/lang/Integer;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;->lambda$calculate$5(ILjava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;->lambda$removeIndentationElements$8(Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;)Z

    move-result p0

    return p0
.end method

.method public static synthetic f(Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$ChildPositionInfo;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;->lambda$calculate$1(Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$ChildPositionInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private static findChildrenPositions(Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "calculatedSyntaxModel"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;",
            ")",
            "Ljava/util/List<",
            "Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$ChildPositionInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->elements:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CalculatedSyntaxModel;->elements:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    instance-of v3, v2, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    if-eqz v3, :cond_0

    new-instance v3, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$ChildPositionInfo;

    check-cast v2, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    invoke-virtual {v2}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;->getChild()Lcom/github/javaparser/ast/Node;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$ChildPositionInfo;-><init>(Lcom/github/javaparser/ast/Node;Ljava/lang/Integer;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static synthetic g(Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$ChildPositionInfo;Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$ChildPositionInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;->lambda$calculate$0(Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$ChildPositionInfo;Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$ChildPositionInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic h(Ljava/util/List;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;->lambda$calculateImpl$6(Ljava/util/List;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    return-void
.end method

.method public static synthetic i(Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;)Z
    .locals 0

    invoke-static {p0}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator;->lambda$cost$7(Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$calculate$0(Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$ChildPositionInfo;Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$ChildPositionInfo;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "child",
            "i"
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$ChildPositionInfo;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$calculate$1(Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$ChildPositionInfo;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "i"
        }
    .end annotation

    iget-object p0, p0, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$ChildPositionInfo;->position:Ljava/lang/Integer;

    return-object p0
.end method

.method private static synthetic lambda$calculate$2(ILjava/lang/Integer;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "currentPosOfNextChildInOriginal",
            "position"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-le p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$calculate$3(Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$ChildPositionInfo;Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$ChildPositionInfo;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "child",
            "i"
        }
    .end annotation

    invoke-virtual {p1, p0}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$ChildPositionInfo;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$calculate$4(Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$ChildPositionInfo;)Ljava/lang/Integer;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "i"
        }
    .end annotation

    iget-object p0, p0, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElementCalculator$ChildPositionInfo;->position:Ljava/lang/Integer;

    return-object p0
.end method

.method private static synthetic lambda$calculate$5(ILjava/lang/Integer;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "currentPosOfNextChildInAfter",
            "position"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-le p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$calculateImpl$6(Ljava/util/List;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "elements",
            "el"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/Kept;

    invoke-direct {v0, p1}, Lcom/github/javaparser/printer/lexicalpreservation/Kept;-><init>(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static synthetic lambda$cost$7(Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "e"
        }
    .end annotation

    instance-of p0, p0, Lcom/github/javaparser/printer/lexicalpreservation/Kept;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$removeIndentationElements$8(Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "el"
        }
    .end annotation

    invoke-interface {p0}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;->getElement()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object v0

    instance-of v0, v0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmIndent;

    if-nez v0, :cond_1

    invoke-interface {p0}, Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;->getElement()Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    move-result-object p0

    instance-of p0, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmUnindent;

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

.method public static matching(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    instance-of v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    const-string v1, " "

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    instance-of v0, p1, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    check-cast p1, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    invoke-virtual {p0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;->getChild()Lcom/github/javaparser/ast/Node;

    move-result-object p0

    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;->getChild()Lcom/github/javaparser/ast/Node;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/github/javaparser/ast/Node;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    instance-of v0, p1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    if-eqz v0, :cond_1

    return v2

    :cond_1
    instance-of v0, p1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmIndent;

    if-eqz v0, :cond_2

    return v2

    :cond_2
    instance-of v0, p1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmUnindent;

    if-eqz v0, :cond_3

    return v2

    :cond_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    instance-of v0, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    if-eqz v0, :cond_9

    instance-of v0, p1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    if-eqz v0, :cond_5

    check-cast p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    check-cast p1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    invoke-virtual {p0, p1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_5
    instance-of v0, p1, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    if-eqz v0, :cond_6

    return v2

    :cond_6
    instance-of v0, p1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmIndent;

    if-eqz v0, :cond_7

    return v2

    :cond_7
    instance-of v0, p1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmUnindent;

    if-eqz v0, :cond_8

    return v2

    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    instance-of v0, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmIndent;

    if-eqz v0, :cond_a

    instance-of p0, p1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmIndent;

    return p0

    :cond_a
    instance-of v0, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmUnindent;

    if-eqz v0, :cond_b

    instance-of p0, p1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmUnindent;

    return p0

    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static removeIndentationElements(Ljava/util/List;)V
    .locals 1
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
            "Lcom/github/javaparser/printer/lexicalpreservation/DifferenceElement;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/github/javaparser/printer/lexicalpreservation/p;

    invoke-direct {v0}, Lcom/github/javaparser/printer/lexicalpreservation/p;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    return-void
.end method

.method private static replacement(Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lcom/github/javaparser/printer/concretesyntaxmodel/CsmElement;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "b"
        }
    .end annotation

    instance-of v0, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmIndent;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    instance-of v0, p1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmIndent;

    if-nez v0, :cond_7

    instance-of v0, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmUnindent;

    if-nez v0, :cond_7

    instance-of v0, p1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmUnindent;

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    instance-of v0, p0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    const-string v2, " "

    if-eqz v0, :cond_3

    instance-of v0, p1, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    check-cast p1, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    invoke-virtual {p0}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;->getChild()Lcom/github/javaparser/ast/Node;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p1}, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;->getChild()Lcom/github/javaparser/ast/Node;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    instance-of v0, p1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    if-eqz v0, :cond_2

    return v1

    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    instance-of v0, p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    if-eqz v0, :cond_6

    instance-of v0, p1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    if-eqz v0, :cond_5

    check-cast p0, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    check-cast p1, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;

    invoke-virtual {p0}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;->getTokenType()I

    move-result p0

    invoke-virtual {p1}, Lcom/github/javaparser/printer/concretesyntaxmodel/CsmToken;->getTokenType()I

    move-result p1

    if-ne p0, p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1

    :cond_5
    instance-of v0, p1, Lcom/github/javaparser/printer/lexicalpreservation/LexicalDifferenceCalculator$CsmChild;

    if-eqz v0, :cond_6

    return v1

    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_0
    return v1
.end method
