.class Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;
.super Lorg/openjdk/tools/javac/util/GraphUtils$TarjanNode;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/util/GraphUtils$DottableNode;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Node"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/tools/javac/util/GraphUtils$TarjanNode<",
        "Lorg/openjdk/tools/javac/util/ListBuffer<",
        "Lorg/openjdk/tools/javac/code/Type;",
        ">;",
        "Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;",
        ">;",
        "Lorg/openjdk/tools/javac/util/GraphUtils$DottableNode<",
        "Lorg/openjdk/tools/javac/util/ListBuffer<",
        "Lorg/openjdk/tools/javac/code/Type;",
        ">;",
        "Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;",
        ">;"
    }
.end annotation


# instance fields
.field deps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$2:Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;->this$2:Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph;

    invoke-static {p2}, Lorg/openjdk/tools/javac/util/ListBuffer;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/util/GraphUtils$TarjanNode;-><init>(Ljava/lang/Object;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;->deps:Ljava/util/Set;

    return-void
.end method

.method public static synthetic access$700(Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;->graphChanged(Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;)V

    return-void
.end method

.method private graphChanged(Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;->removeDependency(Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;->addDependency(Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addDependencies(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;->addDependency(Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addDependency(Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;->deps:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public closure()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;->deps:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-result v2

    goto :goto_1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public dependencyAttributes(Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;Lorg/openjdk/tools/javac/util/GraphUtils$DependencyKind;)Ljava/util/Properties;
    .locals 6

    .line 2
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 3
    check-cast p2, Lorg/openjdk/tools/javac/comp/Infer$DependencyKind;

    iget-object p2, p2, Lorg/openjdk/tools/javac/comp/Infer$DependencyKind;->dotSyle:Ljava/lang/String;

    const-string v1, "style"

    invoke-virtual {v0, v1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    iget-object v1, p0, Lorg/openjdk/tools/javac/util/GraphUtils$AbstractNode;->data:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-string v2, ""

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/code/Type;

    .line 6
    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;->this$2:Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph;

    iget-object v4, v4, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph;->this$1:Lorg/openjdk/tools/javac/comp/Infer$GraphSolver;

    iget-object v4, v4, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver;->inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    invoke-virtual {v4, v3}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asUndetVar(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/code/Type$UndetVar;

    .line 7
    invoke-static {}, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->values()[Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->getBounds([Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/tools/javac/code/Type;

    .line 8
    iget-object v5, p1, Lorg/openjdk/tools/javac/util/GraphUtils$AbstractNode;->data:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Iterable;

    invoke-static {v5}, Lorg/openjdk/tools/javac/util/List;->from(Ljava/lang/Iterable;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/code/Type;->containsAny(Lorg/openjdk/tools/javac/util/List;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 9
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    const-string v2, ","

    goto :goto_0

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "label"

    invoke-virtual {v0, p2, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic dependencyAttributes(Lorg/openjdk/tools/javac/util/GraphUtils$DottableNode;Lorg/openjdk/tools/javac/util/GraphUtils$DependencyKind;)Ljava/util/Properties;
    .locals 0

    .line 1
    check-cast p1, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;->dependencyAttributes(Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;Lorg/openjdk/tools/javac/util/GraphUtils$DependencyKind;)Ljava/util/Properties;

    move-result-object p1

    return-object p1
.end method

.method public getAllDependencies()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;->deps:Ljava/util/Set;

    return-object v0
.end method

.method public getDependenciesByKind(Lorg/openjdk/tools/javac/util/GraphUtils$DependencyKind;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/GraphUtils$DependencyKind;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/openjdk/tools/javac/comp/Infer$DependencyKind;->BOUND:Lorg/openjdk/tools/javac/comp/Infer$DependencyKind;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;->deps:Ljava/util/Set;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public getSupportedDependencyKinds()[Lorg/openjdk/tools/javac/util/GraphUtils$DependencyKind;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/openjdk/tools/javac/util/GraphUtils$DependencyKind;

    sget-object v1, Lorg/openjdk/tools/javac/comp/Infer$DependencyKind;->BOUND:Lorg/openjdk/tools/javac/comp/Infer$DependencyKind;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public isLeaf()Z
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;->deps:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;->deps:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;

    if-eq v2, p0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_2
    return v1
.end method

.method public mergeWith(Lorg/openjdk/tools/javac/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "+",
            "Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;

    iget-object v1, v0, Lorg/openjdk/tools/javac/util/GraphUtils$AbstractNode;->data:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const-string v1, "Attempt to merge a compound node!"

    invoke-static {v2, v1}, Lorg/openjdk/tools/javac/util/Assert;->check(ZLjava/lang/String;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/GraphUtils$AbstractNode;->data:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v2, v0, Lorg/openjdk/tools/javac/util/GraphUtils$AbstractNode;->data:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->appendList(Lorg/openjdk/tools/javac/util/ListBuffer;)Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;->deps:Ljava/util/Set;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;->addDependencies(Ljava/util/Set;)V

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;->deps:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;

    iget-object v2, p0, Lorg/openjdk/tools/javac/util/GraphUtils$AbstractNode;->data:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v3, v1, Lorg/openjdk/tools/javac/util/GraphUtils$AbstractNode;->data:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->first()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;->deps:Ljava/util/Set;

    return-void
.end method

.method public nodeAttributes()Ljava/util/Properties;
    .locals 4

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/GraphUtils$AbstractNode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "label"

    invoke-virtual {v0, v2, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public removeDependency(Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer$GraphSolver$InferenceGraph$Node;->deps:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
