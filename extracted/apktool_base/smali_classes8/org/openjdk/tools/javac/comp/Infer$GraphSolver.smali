.class Lorg/openjdk/tools/javac/comp/Infer$GraphSolver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Infer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GraphSolver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph;
    }
.end annotation


# instance fields
.field inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Infer;

.field warn:Lorg/openjdk/tools/javac/util/Warner;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Infer;Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/util/Warner;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver;->inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver;->warn:Lorg/openjdk/tools/javac/util/Warner;

    return-void
.end method


# virtual methods
.method public solve(Lorg/openjdk/tools/javac/comp/Infer$GraphStrategy;)V
    .locals 9

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver;->inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver;->warn:Lorg/openjdk/tools/javac/util/Warner;

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/comp/Infer;->doIncorporation(Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/util/Warner;)V

    new-instance v0, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph;-><init>(Lorg/openjdk/tools/javac/comp/Infer$GraphSolver;)V

    :goto_0
    invoke-interface {p1}, Lorg/openjdk/tools/javac/comp/Infer$GraphStrategy;->done()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/Infer;->access$500(Lorg/openjdk/tools/javac/comp/Infer;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/Infer;->access$600(Lorg/openjdk/tools/javac/comp/Infer;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph;->toDot()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/openjdk/tools/javac/comp/Infer;->access$602(Lorg/openjdk/tools/javac/comp/Infer;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    :cond_0
    invoke-interface {p1, v0}, Lorg/openjdk/tools/javac/comp/Infer$GraphStrategy;->pickNode(Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph;)Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;

    move-result-object v1

    iget-object v2, v1, Lorg/openjdk/tools/javac/util/GraphUtils$AbstractNode;->data:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lorg/openjdk/tools/javac/util/List;->from(Ljava/lang/Iterable;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver;->inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/comp/InferenceContext;->save()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    :goto_1
    :try_start_0
    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver;->inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/comp/InferenceContext;->restvars()Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    invoke-static {v4, v2}, Lorg/openjdk/tools/javac/code/Type;->containsAny(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lorg/openjdk/tools/javac/comp/Infer$GraphInferenceSteps;->values()[Lorg/openjdk/tools/javac/comp/Infer$GraphInferenceSteps;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    iget-object v8, p0, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver;->inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    iget-object v7, v7, Lorg/openjdk/tools/javac/comp/Infer$GraphInferenceSteps;->steps:Ljava/util/EnumSet;

    invoke-virtual {v8, v2, v7}, Lorg/openjdk/tools/javac/comp/InferenceContext;->solveBasic(Lorg/openjdk/tools/javac/util/List;Ljava/util/EnumSet;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v7

    invoke-virtual {v7}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver;->inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver;->warn:Lorg/openjdk/tools/javac/util/Warner;

    invoke-virtual {v4, v5, v6}, Lorg/openjdk/tools/javac/comp/Infer;->doIncorporation(Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/util/Warner;)V

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    iget-object v4, v4, Lorg/openjdk/tools/javac/comp/Infer;->inferenceException:Lorg/openjdk/tools/javac/comp/Infer$InferenceException;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/comp/Infer$InferenceException;->setMessage()Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException;

    move-result-object v4

    throw v4
    :try_end_0
    .catch Lorg/openjdk/tools/javac/comp/Infer$InferenceException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver;->inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    invoke-virtual {v4, v3}, Lorg/openjdk/tools/javac/comp/InferenceContext;->rollback(Lorg/openjdk/tools/javac/util/List;)V

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver;->inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    invoke-virtual {v3, v2, v4}, Lorg/openjdk/tools/javac/comp/Infer;->instantiateAsUninferredVars(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/InferenceContext;)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver;->this$0:Lorg/openjdk/tools/javac/comp/Infer;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver;->inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver;->warn:Lorg/openjdk/tools/javac/util/Warner;

    invoke-virtual {v2, v3, v4}, Lorg/openjdk/tools/javac/comp/Infer;->doIncorporation(Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/util/Warner;)V

    :cond_3
    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph;->deleteNode(Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;)V

    goto/16 :goto_0

    :cond_4
    return-void
.end method
