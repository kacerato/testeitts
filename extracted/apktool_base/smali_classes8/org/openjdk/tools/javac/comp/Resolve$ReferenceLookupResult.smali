.class Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Resolve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReferenceLookupResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;
    }
.end annotation


# instance fields
.field staticKind:Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;

.field sym:Lorg/openjdk/tools/javac/code/Symbol;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;->staticKind(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;)Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;

    move-result-object p2

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;->staticKind:Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext$Candidate;)Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;->lambda$staticKind$1(Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext$Candidate;)Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext$Candidate;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;->lambda$staticKind$0(Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext$Candidate;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$staticKind$0(Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext$Candidate;)Z
    .locals 1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext$Candidate;->isApplicable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext$Candidate;->step:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->step:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$staticKind$1(Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext$Candidate;)Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext$Candidate;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-static {p0}, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;->from(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;

    move-result-object p0

    return-object p0
.end method

.method private staticKind(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;)Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/comp/Resolve$17;->$SwitchMap$com$sun$tools$javac$code$Kinds$Kind:[I

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    sget-object p1, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;->UNDEFINED:Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;

    return-object p1

    :cond_0
    invoke-static {p2}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->access$100(Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/openjdk/tools/javac/comp/p2;

    invoke-direct {v0, p2}, Lorg/openjdk/tools/javac/comp/p2;-><init>(Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lorg/openjdk/tools/javac/comp/q2;

    invoke-direct {p2}, Lorg/openjdk/tools/javac/comp/q2;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lorg/openjdk/tools/javac/comp/r2;

    invoke-direct {p2}, Lorg/openjdk/tools/javac/comp/r2;-><init>()V

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->reduce(Ljava/util/function/BinaryOperator;)Ljava/util/Optional;

    move-result-object p1

    sget-object p2, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;->UNDEFINED:Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;

    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;

    return-object p1
.end method


# virtual methods
.method public canIgnore()Z
    .locals 4

    sget-object v0, Lorg/openjdk/tools/javac/comp/Resolve$17;->$SwitchMap$com$sun$tools$javac$code$Kinds$Kind:[I

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->baseSymbol()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolsError;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolsError;->access$1200(Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolsError;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolsError;->filterCandidates(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->baseSymbol()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolError;

    new-instance v1, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$Template;

    sget-object v3, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;->ARITY_MISMATCH:Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;->regex()Ljava/lang/String;

    move-result-object v3

    new-array v2, v2, [Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$Template;

    invoke-direct {v1, v3, v2}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$Template;-><init>(Ljava/lang/String;[Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$Template;)V

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolError;->errCandidate()Lorg/openjdk/tools/javac/util/Pair;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$Template;->matches(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public hasKind(Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;)Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;->staticKind:Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isSuccess()Z
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult;->staticKind:Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;

    sget-object v1, Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;->UNDEFINED:Lorg/openjdk/tools/javac/comp/Resolve$ReferenceLookupResult$StaticKind;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
