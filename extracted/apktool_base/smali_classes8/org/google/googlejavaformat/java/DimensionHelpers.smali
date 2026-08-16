.class Lorg/google/googlejavaformat/java/DimensionHelpers;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/google/googlejavaformat/java/DimensionHelpers$SortedDims;,
        Lorg/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractDims(Lorg/openjdk/source/tree/Tree;Lorg/google/googlejavaformat/java/DimensionHelpers$SortedDims;)Lorg/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "sorted"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 2
    invoke-static {v0, p0}, Lorg/google/googlejavaformat/java/DimensionHelpers;->extractDims(Ljava/util/Deque;Lorg/openjdk/source/tree/Tree;)Lorg/openjdk/source/tree/Tree;

    move-result-object p0

    .line 3
    sget-object v1, Lorg/google/googlejavaformat/java/DimensionHelpers$SortedDims;->YES:Lorg/google/googlejavaformat/java/DimensionHelpers$SortedDims;

    if-ne p1, v1, :cond_0

    .line 4
    invoke-static {v0}, Lorg/google/googlejavaformat/java/DimensionHelpers;->reorderBySourcePosition(Ljava/util/Deque;)Ljava/lang/Iterable;

    move-result-object v0

    .line 5
    :cond_0
    new-instance p1, Lorg/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;

    invoke-static {v0}, Lcom/google/common/collect/g1;->p(Ljava/lang/Iterable;)Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lorg/google/googlejavaformat/java/DimensionHelpers$TypeWithDims;-><init>(Lorg/openjdk/source/tree/Tree;Lcom/google/common/collect/g1;)V

    return-object p1
.end method

.method private static extractDims(Ljava/util/Deque;Lorg/openjdk/source/tree/Tree;)Lorg/openjdk/source/tree/Tree;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dims",
            "node"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "Ljava/util/List<",
            "Lorg/openjdk/source/tree/AnnotationTree;",
            ">;>;",
            "Lorg/openjdk/source/tree/Tree;",
            ")",
            "Lorg/openjdk/source/tree/Tree;"
        }
    .end annotation

    .line 6
    sget-object v0, Lorg/google/googlejavaformat/java/DimensionHelpers$1;->$SwitchMap$org$openjdk$source$tree$Tree$Kind:[I

    invoke-interface {p1}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-object p1

    .line 7
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/openjdk/source/tree/AnnotatedTypeTree;

    .line 8
    invoke-interface {v0}, Lorg/openjdk/source/tree/AnnotatedTypeTree;->getUnderlyingType()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object v1

    invoke-interface {v1}, Lorg/openjdk/source/tree/Tree;->getKind()Lorg/openjdk/source/tree/Tree$Kind;

    move-result-object v1

    sget-object v2, Lorg/openjdk/source/tree/Tree$Kind;->ARRAY_TYPE:Lorg/openjdk/source/tree/Tree$Kind;

    if-eq v1, v2, :cond_1

    return-object p1

    .line 9
    :cond_1
    invoke-interface {v0}, Lorg/openjdk/source/tree/AnnotatedTypeTree;->getUnderlyingType()Lorg/openjdk/source/tree/ExpressionTree;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/google/googlejavaformat/java/DimensionHelpers;->extractDims(Ljava/util/Deque;Lorg/openjdk/source/tree/Tree;)Lorg/openjdk/source/tree/Tree;

    move-result-object p1

    .line 10
    invoke-interface {v0}, Lorg/openjdk/source/tree/AnnotatedTypeTree;->getAnnotations()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/g1;->r(Ljava/util/Collection;)Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    return-object p1

    .line 11
    :cond_2
    check-cast p1, Lorg/openjdk/source/tree/ArrayTypeTree;

    invoke-interface {p1}, Lorg/openjdk/source/tree/ArrayTypeTree;->getType()Lorg/openjdk/source/tree/Tree;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/google/googlejavaformat/java/DimensionHelpers;->extractDims(Ljava/util/Deque;Lorg/openjdk/source/tree/Tree;)Lorg/openjdk/source/tree/Tree;

    move-result-object p0

    return-object p0
.end method

.method private static reorderBySourcePosition(Ljava/util/Deque;)Ljava/lang/Iterable;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dims"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "Ljava/util/List<",
            "Lorg/openjdk/source/tree/AnnotationTree;",
            ">;>;)",
            "Ljava/lang/Iterable<",
            "Ljava/util/List<",
            "Lorg/openjdk/source/tree/AnnotationTree;",
            ">;>;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    move v3, v1

    move v4, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/tree/JCTree;->getStartPosition()I

    move-result v5

    if-ge v5, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    add-int/lit8 v3, v3, 0x1

    neg-int p0, v3

    invoke-static {v0, p0}, Ljava/util/Collections;->rotate(Ljava/util/List;I)V

    return-object v0

    :cond_0
    move v3, v4

    move v1, v5

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method
