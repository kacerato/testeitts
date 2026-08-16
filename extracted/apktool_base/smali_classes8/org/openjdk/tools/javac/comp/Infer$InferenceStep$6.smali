.class final enum Lorg/openjdk/tools/javac/comp/Infer$InferenceStep$6;
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
    .locals 2

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->isCaptured()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->UPPER:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    sget-object v1, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->LOWER:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    filled-new-array {v0, v1}, [Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->getBounds([Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/comp/InferenceContext;->free(Lorg/openjdk/tools/javac/util/List;)Z

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
    .locals 8

    iget-object v0, p2, Lorg/openjdk/tools/javac/comp/InferenceContext;->infer:Lorg/openjdk/tools/javac/comp/Infer;

    sget-object v1, Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;->UPPER:Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;

    invoke-virtual {v1, p1, p2}, Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;->filterBounds(Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/comp/InferenceContext;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1, p2}, Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;->solve(Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/comp/InferenceContext;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    :goto_0
    move-object v5, v1

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Infer;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    goto :goto_0

    :goto_1
    sget-object v1, Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;->LOWER:Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;

    invoke-virtual {v1, p1, p2}, Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;->filterBounds(Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/comp/InferenceContext;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, p1, p2}, Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;->solve(Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/comp/InferenceContext;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    :goto_2
    move-object v6, p2

    goto :goto_3

    :cond_1
    iget-object p2, v0, Lorg/openjdk/tools/javac/comp/Infer;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symtab;->botType:Lorg/openjdk/tools/javac/code/Type;

    goto :goto_2

    :goto_3
    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type$DelegatedType;->qtype:Lorg/openjdk/tools/javac/code/Type;

    check-cast p1, Lorg/openjdk/tools/javac/code/Type$CapturedType;

    new-instance p2, Lorg/openjdk/tools/javac/code/Type$CapturedType;

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v3, v0, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v4, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v7, p1, Lorg/openjdk/tools/javac/code/Type$CapturedType;->wildcard:Lorg/openjdk/tools/javac/code/Type$WildcardType;

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Lorg/openjdk/tools/javac/code/Type$CapturedType;-><init>(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type$WildcardType;)V

    return-object p2
.end method
