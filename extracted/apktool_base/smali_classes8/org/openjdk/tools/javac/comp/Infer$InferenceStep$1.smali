.class final enum Lorg/openjdk/tools/javac/comp/Infer$InferenceStep$1;
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
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;->filterBounds(Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/comp/InferenceContext;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/code/Type;

    return-object p1
.end method
