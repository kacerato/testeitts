.class abstract Lorg/openjdk/tools/javac/comp/Infer$BestLeafSolver;
.super Lorg/openjdk/tools/javac/comp/Infer$LeafSolver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Infer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "BestLeafSolver"
.end annotation


# instance fields
.field final noPath:Lorg/openjdk/tools/javac/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Pair<",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Infer;

.field final treeCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;",
            "Lorg/openjdk/tools/javac/util/Pair<",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;",
            ">;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field varsToSolve:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Infer;Lorg/openjdk/tools/javac/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Infer$BestLeafSolver;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Infer$LeafSolver;-><init>(Lorg/openjdk/tools/javac/comp/Infer;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Infer$BestLeafSolver;->treeCache:Ljava/util/Map;

    new-instance p1, Lorg/openjdk/tools/javac/util/Pair;

    const v0, 0x7fffffff

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v1, v0}, Lorg/openjdk/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Infer$BestLeafSolver;->noPath:Lorg/openjdk/tools/javac/util/Pair;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/Infer$BestLeafSolver;->varsToSolve:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method


# virtual methods
.method public computeTreeToLeafs(Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;)Lorg/openjdk/tools/javac/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;",
            ")",
            "Lorg/openjdk/tools/javac/util/Pair<",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer$BestLeafSolver;->treeCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/util/Pair;

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;->isLeaf()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/util/Pair;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object v2, p1, Lorg/openjdk/tools/javac/util/GraphUtils$AbstractNode;->data:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/util/Pair;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object v2, p1, Lorg/openjdk/tools/javac/util/GraphUtils$AbstractNode;->data:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/openjdk/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;->getAllDependencies()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;

    if-ne v2, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/comp/Infer$BestLeafSolver;->computeTreeToLeafs(Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;)Lorg/openjdk/tools/javac/util/Pair;

    move-result-object v2

    new-instance v3, Lorg/openjdk/tools/javac/util/Pair;

    iget-object v4, v0, Lorg/openjdk/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast v4, Lorg/openjdk/tools/javac/util/List;

    iget-object v5, v2, Lorg/openjdk/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast v5, Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/util/List;->prependList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lorg/openjdk/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v3

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Infer$BestLeafSolver;->treeCache:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0
.end method

.method public pickNode(Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph;)Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;
    .locals 5

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer$BestLeafSolver;->treeCache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer$BestLeafSolver;->noPath:Lorg/openjdk/tools/javac/util/Pair;

    iget-object v1, p1, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;

    iget-object v3, v2, Lorg/openjdk/tools/javac/util/GraphUtils$AbstractNode;->data:Ljava/lang/Object;

    check-cast v3, Ljava/util/Collection;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Infer$BestLeafSolver;->varsToSolve:Lorg/openjdk/tools/javac/util/List;

    invoke-static {v3, v4}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/comp/Infer$BestLeafSolver;->computeTreeToLeafs(Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;)Lorg/openjdk/tools/javac/util/Pair;

    move-result-object v2

    iget-object v3, v2, Lorg/openjdk/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v0, Lorg/openjdk/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v3, v4, :cond_0

    move-object v0, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Infer$BestLeafSolver;->noPath:Lorg/openjdk/tools/javac/util/Pair;

    if-eq v0, v1, :cond_2

    iget-object p1, v0, Lorg/openjdk/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;

    return-object p1

    :cond_2
    new-instance v0, Lorg/openjdk/tools/javac/comp/Infer$GraphStrategy$NodeNotFoundException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/comp/Infer$GraphStrategy$NodeNotFoundException;-><init>(Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph;)V

    throw v0
.end method
