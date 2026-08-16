.class final enum Lorg/openjdk/tools/javac/comp/Infer$InferenceStep$3;
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

.method public static synthetic a(Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/comp/Infer$InferenceStep$3;->lambda$accepts$0(Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lorg/openjdk/tools/javac/code/Types;Lorg/openjdk/tools/javac/code/Symtab;Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Infer$InferenceStep$3;->lambda$accepts$1(Lorg/openjdk/tools/javac/code/Types;Lorg/openjdk/tools/javac/code/Symtab;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$accepts$0(Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/InferenceContext;->free(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static synthetic lambda$accepts$1(Lorg/openjdk/tools/javac/code/Types;Lorg/openjdk/tools/javac/code/Symtab;Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 0

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->runtimeExceptionType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/code/Types;->isSubtype(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public accepts(Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/comp/InferenceContext;)Z
    .locals 3

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->isThrows()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p2, Lorg/openjdk/tools/javac/comp/InferenceContext;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p2, Lorg/openjdk/tools/javac/comp/InferenceContext;->infer:Lorg/openjdk/tools/javac/comp/Infer;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Infer;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    sget-object v2, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->UPPER:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    filled-new-array {v2}, [Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->getBounds([Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v2, Lorg/openjdk/tools/javac/comp/n0;

    invoke-direct {v2, p2}, Lorg/openjdk/tools/javac/comp/n0;-><init>(Lorg/openjdk/tools/javac/comp/InferenceContext;)V

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lorg/openjdk/tools/javac/comp/o0;

    invoke-direct {p2, v0, v1}, Lorg/openjdk/tools/javac/comp/o0;-><init>(Lorg/openjdk/tools/javac/code/Types;Lorg/openjdk/tools/javac/code/Symtab;)V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method public solve(Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/comp/InferenceContext;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    iget-object p1, p2, Lorg/openjdk/tools/javac/comp/InferenceContext;->infer:Lorg/openjdk/tools/javac/comp/Infer;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Infer;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->runtimeExceptionType:Lorg/openjdk/tools/javac/code/Type;

    return-object p1
.end method
