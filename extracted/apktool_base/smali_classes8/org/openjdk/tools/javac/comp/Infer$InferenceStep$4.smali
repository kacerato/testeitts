.class final enum Lorg/openjdk/tools/javac/comp/Infer$InferenceStep$4;
.super Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;ILorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;-><init>(Ljava/lang/String;ILorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;Lorg/openjdk/tools/javac/comp/Infer$1;)V

    return-void
.end method


# virtual methods
.method public solve(Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/comp/InferenceContext;)Lorg/openjdk/tools/javac/code/Type;
    .locals 3

    iget-object v0, p2, Lorg/openjdk/tools/javac/comp/InferenceContext;->infer:Lorg/openjdk/tools/javac/comp/Infer;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;->filterBounds(Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/comp/InferenceContext;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    iget-object v1, p2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    if-nez v1, :cond_0

    iget-object v1, p2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Infer;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, p2}, Lorg/openjdk/tools/javac/code/Types;->glb(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->isPrimitive()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lorg/openjdk/tools/javac/code/TypeTag;->ERROR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Infer;->inferenceException:Lorg/openjdk/tools/javac/comp/Infer$InferenceException;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type$DelegatedType;->qtype:Lorg/openjdk/tools/javac/code/Type;

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "no.unique.maximal.instance.exists"

    invoke-virtual {v0, p2, p1}, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException;->setMessage(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException;

    move-result-object p1

    throw p1
.end method
