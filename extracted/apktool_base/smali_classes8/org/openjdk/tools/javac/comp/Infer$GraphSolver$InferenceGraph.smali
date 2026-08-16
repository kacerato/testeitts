.class Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Infer$GraphSolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InferenceGraph"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;
    }
.end annotation


# instance fields
.field nodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$1:Lorg/openjdk/tools/javac/comp/Infer$GraphSolver;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Infer$GraphSolver;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph;->this$1:Lorg/openjdk/tools/javac/comp/Infer$GraphSolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph;->initNodes()V

    return-void
.end method


# virtual methods
.method public deleteNode(Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph;->notifyUpdate(Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;)V

    return-void
.end method

.method public findNode(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;

    iget-object v2, v1, Lorg/openjdk/tools/javac/util/GraphUtils$AbstractNode;->data:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v2, p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public initNodes()V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph;->nodes:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph;->this$1:Lorg/openjdk/tools/javac/comp/Infer$GraphSolver;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver;->inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/InferenceContext;->restvars()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph;->nodes:Ljava/util/ArrayList;

    new-instance v3, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;

    invoke-direct {v3, p0, v1}, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;-><init>(Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph;Lorg/openjdk/tools/javac/code/Type;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;

    iget-object v2, v1, Lorg/openjdk/tools/javac/util/GraphUtils$AbstractNode;->data:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->first()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;

    iget-object v5, v4, Lorg/openjdk/tools/javac/util/GraphUtils$AbstractNode;->data:Ljava/lang/Object;

    check-cast v5, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/util/ListBuffer;->first()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjdk/tools/javac/code/Type;

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph;->this$1:Lorg/openjdk/tools/javac/comp/Infer$GraphSolver;

    iget-object v6, v6, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver;->inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    invoke-virtual {v6, v2}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asUndetVar(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v6

    check-cast v6, Lorg/openjdk/tools/javac/code/Type$UndetVar;

    invoke-static {}, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->values()[Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->getBounds([Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    invoke-static {v5}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    invoke-static {v6, v5}, Lorg/openjdk/tools/javac/code/Type;->containsAny(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1, v4}, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;->addDependency(Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;)V

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph;->nodes:Ljava/util/ArrayList;

    invoke-static {v1}, Lorg/openjdk/tools/javac/util/GraphUtils;->tarjan(Ljava/lang/Iterable;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_4

    iget-object v3, v2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;

    iget-object v4, v2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;->mergeWith(Lorg/openjdk/tools/javac/util/List;)V

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;

    invoke-virtual {p0, v5, v3}, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph;->notifyUpdate(Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;)V

    goto :goto_3

    :cond_4
    iget-object v2, v2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph;->nodes:Ljava/util/ArrayList;

    return-void
.end method

.method public notifyUpdate(Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;

    invoke-static {v1, p1, p2}, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;->access$700(Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toDot()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph;->this$1:Lorg/openjdk/tools/javac/comp/Infer$GraphSolver;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver;->inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/InferenceContext;->undetvars:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Type;

    check-cast v2, Lorg/openjdk/tools/javac/code/Type$UndetVar;

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Type$DelegatedType;->qtype:Lorg/openjdk/tools/javac/code/Type;

    sget-object v4, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->UPPER:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    filled-new-array {v4}, [Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->getBounds([Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    sget-object v5, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->LOWER:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    filled-new-array {v5}, [Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->getBounds([Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    sget-object v6, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->EQ:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    filled-new-array {v6}, [Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->getBounds([Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    filled-new-array {v3, v4, v5, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "var %s - upper bounds = %s, lower bounds = %s, eq bounds = %s\\n"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph;->nodes:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inferenceGraph"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lorg/openjdk/tools/javac/util/GraphUtils;->toDot(Ljava/util/Collection;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
