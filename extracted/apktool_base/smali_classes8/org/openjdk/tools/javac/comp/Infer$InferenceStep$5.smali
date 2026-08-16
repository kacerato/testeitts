.class final enum Lorg/openjdk/tools/javac/comp/Infer$InferenceStep$5;
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
.method public accepts(Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/comp/InferenceContext;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;->ib:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    filled-new-array {v0}, [Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->getBounds([Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/comp/InferenceContext;->free(Lorg/openjdk/tools/javac/util/List;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->isCaptured()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public solve(Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/comp/InferenceContext;)Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;->UPPER:Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;->solve(Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/comp/InferenceContext;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method
