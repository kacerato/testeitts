.class Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolsError;
.super Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolError;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Resolve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InapplicableSymbolsError"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Resolve;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;)V
    .locals 2

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolsError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->WRONG_MTHS:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    const-string v1, "inapplicable symbols"

    invoke-direct {p0, p1, v0, v1, p2}, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolError;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Kinds$Kind;Ljava/lang/String;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;)V

    return-void
.end method

.method public static synthetic access$1200(Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolsError;)Ljava/util/Map;
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolsError;->mapCandidates()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private candidateDetails(Ljava/util/Map;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type;",
            ")",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolsError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/Resolve;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-static {v2}, Lorg/openjdk/tools/javac/code/Kinds;->kindName(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Kinds$KindName;

    move-result-object v4

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolsError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v5, v5, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v2, p2, v5}, Lorg/openjdk/tools/javac/code/Symbol;->location(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v5

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolsError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v6, v6, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v2, p2, v6}, Lorg/openjdk/tools/javac/code/Symbol;->asMemberOf(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    filled-new-array {v4, v5, v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "inapplicable.method"

    invoke-virtual {v3, v2, v1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private mapCandidates()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolError;->resolveContext:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->access$100(Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext$Candidate;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext$Candidate;->isApplicable()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iget-object v3, v2, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext$Candidate;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext$Candidate;->details:Lorg/openjdk/tools/javac/util/JCDiagnostic;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public filterCandidates(Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic;",
            ">;)",
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/util/JCDiagnostic;

    new-instance v3, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$Template;

    sget-object v4, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;->ARITY_MISMATCH:Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;->regex()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$Template;

    invoke-direct {v3, v4, v5}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$Template;-><init>(Ljava/lang/String;[Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$Template;)V

    invoke-virtual {v3, v2}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionDiagHelper$Template;->matches(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getDiagnostic(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/JCDiagnostic;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {p0 .. p0}, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolsError;->mapCandidates()Ljava/util/Map;

    move-result-object v1

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolsError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/Resolve;->access$1500(Lorg/openjdk/tools/javac/comp/Resolve;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolsError;->filterCandidates(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-direct/range {p0 .. p0}, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolsError;->mapCandidates()Ljava/util/Map;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v2, v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v3

    const/4 v4, 0x1

    if-eq v1, v3, :cond_2

    move v9, v4

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    move v9, v1

    :goto_1
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v1

    if-le v1, v4, :cond_6

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolsError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v10, v1, Lorg/openjdk/tools/javac/comp/Resolve;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    if-eqz v9, :cond_3

    sget-object v1, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;->COMPRESSED:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    :goto_2
    move-object v13, v1

    goto :goto_3

    :cond_3
    const-class v1, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    goto :goto_2

    :goto_3
    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolsError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Resolve;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->currentSource()Lorg/openjdk/tools/javac/util/DiagnosticSource;

    move-result-object v14

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolsError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Resolve;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    if-ne v6, v1, :cond_4

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$KindName;->CONSTRUCTOR:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    goto :goto_4

    :cond_4
    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Kinds$Kind;->absentKind()Lorg/openjdk/tools/javac/code/Kinds$KindName;

    move-result-object v1

    :goto_4
    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolsError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v4, v3, Lorg/openjdk/tools/javac/comp/Resolve;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v4, v4, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    if-ne v6, v4, :cond_5

    iget-object v4, v5, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    move-object/from16 v7, p6

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    move-object v4, v6

    :goto_5
    invoke-virtual {v3, v7}, Lorg/openjdk/tools/javac/comp/Resolve;->methodArguments(Lorg/openjdk/tools/javac/util/List;)Ljava/lang/Object;

    move-result-object v3

    filled-new-array {v1, v4, v3}, [Ljava/lang/Object;

    move-result-object v17

    const/4 v12, 0x0

    const-string v16, "cant.apply.symbols"

    move-object/from16 v11, p1

    move-object/from16 v15, p2

    invoke-virtual/range {v10 .. v17}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->create(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Lorg/openjdk/tools/javac/code/Lint$LintCategory;Ljava/util/Set;Lorg/openjdk/tools/javac/util/DiagnosticSource;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v1

    new-instance v3, Lorg/openjdk/tools/javac/util/JCDiagnostic$MultilineDiagnostic;

    invoke-direct {v0, v2, v5}, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolsError;->candidateDetails(Ljava/util/Map;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-direct {v3, v1, v2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$MultilineDiagnostic;-><init>(Lorg/openjdk/tools/javac/util/JCDiagnostic;Lorg/openjdk/tools/javac/util/List;)V

    return-object v3

    :cond_6
    move-object/from16 v7, p6

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v1, v4, :cond_8

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v2, Lorg/openjdk/tools/javac/util/Pair;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lorg/openjdk/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolsError$1;

    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolError;->resolveContext:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;

    invoke-direct {v1, v0, v3, v2}, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolsError$1;-><init>(Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolsError;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;Lorg/openjdk/tools/javac/util/Pair;)V

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolError;->getDiagnostic(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v1

    if-eqz v9, :cond_7

    sget-object v2, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;->COMPRESSED:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->setFlag(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;)V

    :cond_7
    return-object v1

    :cond_8
    new-instance v1, Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableSymbolsError;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$Kind;->ABSENT_MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-direct {v1, v2, v3}, Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Kinds$Kind;)V

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lorg/openjdk/tools/javac/comp/Resolve$SymbolNotFoundError;->getDiagnostic(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v1

    return-object v1
.end method
