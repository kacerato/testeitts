.class public Lorg/openjdk/tools/javac/comp/Infer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/comp/Infer$FreeTypeListener;,
        Lorg/openjdk/tools/javac/comp/Infer$GraphSolver;,
        Lorg/openjdk/tools/javac/comp/Infer$DependencyKind;,
        Lorg/openjdk/tools/javac/comp/Infer$GraphInferenceSteps;,
        Lorg/openjdk/tools/javac/comp/Infer$LegacyInferenceSteps;,
        Lorg/openjdk/tools/javac/comp/Infer$InferenceStep;,
        Lorg/openjdk/tools/javac/comp/Infer$BestLeafSolver;,
        Lorg/openjdk/tools/javac/comp/Infer$LeafSolver;,
        Lorg/openjdk/tools/javac/comp/Infer$GraphStrategy;,
        Lorg/openjdk/tools/javac/comp/Infer$BoundFilter;,
        Lorg/openjdk/tools/javac/comp/Infer$IncorporationBinaryOp;,
        Lorg/openjdk/tools/javac/comp/Infer$IncorporationBinaryOpKind;,
        Lorg/openjdk/tools/javac/comp/Infer$AbstractIncorporationEngine;,
        Lorg/openjdk/tools/javac/comp/Infer$PropagateBounds;,
        Lorg/openjdk/tools/javac/comp/Infer$CheckUpperBounds;,
        Lorg/openjdk/tools/javac/comp/Infer$SubstBounds;,
        Lorg/openjdk/tools/javac/comp/Infer$CheckInst;,
        Lorg/openjdk/tools/javac/comp/Infer$EqCheckLegacy;,
        Lorg/openjdk/tools/javac/comp/Infer$CheckBounds;,
        Lorg/openjdk/tools/javac/comp/Infer$IncorporationAction;,
        Lorg/openjdk/tools/javac/comp/Infer$ImplicitArgType;,
        Lorg/openjdk/tools/javac/comp/Infer$PartiallyInferredMethodType;,
        Lorg/openjdk/tools/javac/comp/Infer$InferenceException;
    }
.end annotation


# static fields
.field static final MAX_INCORPORATION_STEPS:I = 0x2710

.field public static final anyPoly:Lorg/openjdk/tools/javac/code/Type;

.field protected static final inferKey:Lorg/openjdk/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "Lorg/openjdk/tools/javac/comp/Infer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field allowGraphInference:Z

.field chk:Lorg/openjdk/tools/javac/comp/Check;

.field private final dependenciesFolder:Ljava/lang/String;

.field diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

.field final emptyContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

.field fromTypeVarFun:Lorg/openjdk/tools/javac/code/Types$TypeMapping;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/code/Types$TypeMapping<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field graphEngine:Lorg/openjdk/tools/javac/comp/Infer$AbstractIncorporationEngine;

.field incorporationCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/comp/Infer$IncorporationBinaryOp;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected final inferenceException:Lorg/openjdk/tools/javac/comp/Infer$InferenceException;

.field legacyEngine:Lorg/openjdk/tools/javac/comp/Infer$AbstractIncorporationEngine;

.field log:Lorg/openjdk/tools/javac/util/Log;

.field private pendingGraphs:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field rs:Lorg/openjdk/tools/javac/comp/Resolve;

.field syms:Lorg/openjdk/tools/javac/code/Symtab;

.field types:Lorg/openjdk/tools/javac/code/Types;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/comp/Infer;->inferKey:Lorg/openjdk/tools/javac/util/Context$Key;

    new-instance v0, Lorg/openjdk/tools/javac/code/Type$JCNoType;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/code/Type$JCNoType;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/comp/Infer;->anyPoly:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/openjdk/tools/javac/comp/Infer$1;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/Infer$1;-><init>(Lorg/openjdk/tools/javac/comp/Infer;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer;->fromTypeVarFun:Lorg/openjdk/tools/javac/code/Types$TypeMapping;

    new-instance v0, Lorg/openjdk/tools/javac/comp/Infer$2;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/Infer$2;-><init>(Lorg/openjdk/tools/javac/comp/Infer;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer;->legacyEngine:Lorg/openjdk/tools/javac/comp/Infer$AbstractIncorporationEngine;

    new-instance v0, Lorg/openjdk/tools/javac/comp/Infer$3;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/Infer$3;-><init>(Lorg/openjdk/tools/javac/comp/Infer;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer;->graphEngine:Lorg/openjdk/tools/javac/comp/Infer$AbstractIncorporationEngine;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer;->incorporationCache:Ljava/util/Map;

    sget-object v0, Lorg/openjdk/tools/javac/comp/Infer;->inferKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Resolve;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Resolve;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Check;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Symtab;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Types;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Log;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer;->log:Lorg/openjdk/tools/javac/util/Log;

    new-instance v0, Lorg/openjdk/tools/javac/comp/Infer$InferenceException;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Infer;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-direct {v0, v1}, Lorg/openjdk/tools/javac/comp/Infer$InferenceException;-><init>(Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer;->inferenceException:Lorg/openjdk/tools/javac/comp/Infer$InferenceException;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Options;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Options;

    move-result-object v0

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Source;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Source;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Source;->allowGraphInference()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "useLegacyInference"

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/Options;->isUnset(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lorg/openjdk/tools/javac/comp/Infer;->allowGraphInference:Z

    const-string p1, "debug.dumpInferenceGraphsTo"

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Infer;->dependenciesFolder:Ljava/lang/String;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Infer;->pendingGraphs:Lorg/openjdk/tools/javac/util/List;

    new-instance p1, Lorg/openjdk/tools/javac/comp/InferenceContext;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lorg/openjdk/tools/javac/comp/InferenceContext;-><init>(Lorg/openjdk/tools/javac/comp/Infer;Lorg/openjdk/tools/javac/util/List;)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Infer;->emptyContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/comp/Infer;->lambda$instantiateFunctionalInterface$0(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$000(Lorg/openjdk/tools/javac/comp/Infer;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/comp/InferenceContext;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Infer;->shouldPropagate(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/comp/InferenceContext;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lorg/openjdk/tools/javac/comp/Infer;Lorg/openjdk/tools/javac/code/Type$MethodType;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;)Lorg/openjdk/tools/javac/util/List;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Infer;->roots(Lorg/openjdk/tools/javac/code/Type$MethodType;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$200(Lorg/openjdk/tools/javac/comp/Infer;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Infer;->getParameterizedSupers(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500(Lorg/openjdk/tools/javac/comp/Infer;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Infer;->dependenciesFolder:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$600(Lorg/openjdk/tools/javac/comp/Infer;)Lorg/openjdk/tools/javac/util/List;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Infer;->pendingGraphs:Lorg/openjdk/tools/javac/util/List;

    return-object p0
.end method

.method public static synthetic access$602(Lorg/openjdk/tools/javac/comp/Infer;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Infer;->pendingGraphs:Lorg/openjdk/tools/javac/util/List;

    return-object p1
.end method

.method private asSuper(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;
    .locals 2

    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->ARRAY:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/code/Type$ArrayType;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Infer;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/code/Types;->elemtype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Infer;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, p2}, Lorg/openjdk/tools/javac/code/Types;->elemtype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Infer;->asSuper(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Infer;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symtab;->arrayClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v0, p1, p2}, Lorg/openjdk/tools/javac/code/Type$ArrayType;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/code/Types;->asSuper(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private commonSuperWithDiffParameterization(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 2

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Infer;->getParameterizedSupers(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/util/Pair;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v1, p2, Lorg/openjdk/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    iget-object p2, p2, Lorg/openjdk/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    check-cast p2, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1, p2}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private dumpGraphsIfNeeded(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;)V
    .locals 10

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer;->pendingGraphs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->reverse()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Infer;->dependenciesFolder:Ljava/lang/String;

    invoke-static {v4}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p2, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v5, v4, Lorg/openjdk/tools/javac/util/Name;->table:Lorg/openjdk/tools/javac/util/Name$Table;

    iget-object v5, v5, Lorg/openjdk/tools/javac/util/Name$Table;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v5, v5, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    if-ne v4, v5, :cond_0

    iget-object v4, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_0
    :goto_1
    const-string v5, "%s@%s[mode=%s,step=%s]_%d.dot"

    invoke-interface {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;->getStartPosition()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->attrMode()Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    move-result-object v7

    iget-object v8, p3, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->step:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v4, v6, v7, v8, v9}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Infer;->dependenciesFolder:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    new-array v5, v1, [Ljava/nio/file/OpenOption;

    invoke-static {v4, v5}, Ljava/nio/file/Files;->newBufferedWriter(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/BufferedWriter;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v4, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/Writer;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_1
    move-exception p1

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p2

    if-eqz v4, :cond_1

    :try_start_4
    invoke-virtual {v4}, Ljava/io/Writer;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception p3

    :try_start_5
    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw p2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_2
    :goto_3
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Infer;->pendingGraphs:Lorg/openjdk/tools/javac/util/List;

    goto :goto_5

    :goto_4
    :try_start_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Error occurred when dumping inference graph: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :goto_5
    return-void

    :goto_6
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/Infer;->pendingGraphs:Lorg/openjdk/tools/javac/util/List;

    throw p1
.end method

.method private generateReferenceToTargetConstraint(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/comp/InferenceContext;)Lorg/openjdk/tools/javac/code/Type;
    .locals 2

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Type$DelegatedType;->qtype:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    new-instance v1, Lorg/openjdk/tools/javac/util/Warner;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/Warner;-><init>()V

    invoke-virtual {p5, v0, v1}, Lorg/openjdk/tools/javac/comp/InferenceContext;->solve(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/Warner;)V

    invoke-virtual {p5}, Lorg/openjdk/tools/javac/comp/InferenceContext;->notifyChange()V

    iget-object p5, p4, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-interface {p5}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->inferenceContext()Lorg/openjdk/tools/javac/comp/InferenceContext;

    move-result-object p5

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->getInst()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    iget-object v0, p4, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkMode:Lorg/openjdk/tools/javac/comp/Attr$CheckMode;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/Attr$CheckMode;->updateTreeType()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p5, p1, p2, v0}, Lorg/openjdk/tools/javac/comp/InferenceContext;->cachedCapture(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Z)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Infer;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object p4, p4, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-interface {p4}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->inferenceContext()Lorg/openjdk/tools/javac/comp/InferenceContext;

    move-result-object p4

    invoke-virtual {p4, p3}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asUndetVar(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p4

    invoke-virtual {p2, p1, p4}, Lorg/openjdk/tools/javac/code/Types;->isConvertible(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Infer;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    return-object p1

    :cond_0
    return-object p3
.end method

.method private getParameterizedSupers(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/code/Type;",
            ")",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/util/Pair<",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer;->types:Lorg/openjdk/tools/javac/code/Types;

    filled-new-array {p1, p2}, [Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Types;->lub([Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Infer;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symtab;->errType:Lorg/openjdk/tools/javac/code/Type;

    if-eq v0, v2, :cond_4

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->botType:Lorg/openjdk/tools/javac/code/Type;

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isIntersection()Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast v0, Lorg/openjdk/tools/javac/code/Type$IntersectionClassType;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type$IntersectionClassType;->getComponents()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    :goto_0
    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->isParameterized()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p1, v2}, Lorg/openjdk/tools/javac/comp/Infer;->asSuper(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    invoke-direct {p0, p2, v2}, Lorg/openjdk/tools/javac/comp/Infer;->asSuper(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    new-instance v4, Lorg/openjdk/tools/javac/util/Pair;

    invoke-direct {v4, v3, v2}, Lorg/openjdk/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_2
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public static instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Infer;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/comp/Infer;->inferKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Lorg/openjdk/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/comp/Infer;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/comp/Infer;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/Infer;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    :cond_0
    return-object v0
.end method

.method private static synthetic lambda$instantiateFunctionalInterface$0(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Type;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/code/Type;->containsAny(Lorg/openjdk/tools/javac/util/List;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private needsEagerInstantiation(Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/InferenceContext;)Z
    .locals 7

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->isPrimitive()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-static {}, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->values()[Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->getBounds([Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/code/Type;

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Infer;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p3, p2}, Lorg/openjdk/tools/javac/code/Types;->unboxedType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    if-eqz p2, :cond_0

    sget-object p3, Lorg/openjdk/tools/javac/code/TypeTag;->NONE:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p2, p3}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    return v1

    :cond_3
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/code/Types;->capture(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    if-ne v0, p2, :cond_8

    sget-object v0, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->EQ:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    sget-object v3, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->LOWER:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    filled-new-array {v0, v3}, [Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->getBounds([Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/code/Type;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Infer;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v4, v3}, Lorg/openjdk/tools/javac/code/Types;->capture(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    if-eq v4, v3, :cond_4

    return v2

    :cond_5
    sget-object v0, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->LOWER:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    filled-new-array {v0}, [Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->getBounds([Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/code/Type;

    sget-object v4, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->LOWER:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    filled-new-array {v4}, [Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->getBounds([Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjdk/tools/javac/code/Type;

    if-eq v3, v5, :cond_7

    invoke-virtual {p3, v3}, Lorg/openjdk/tools/javac/comp/InferenceContext;->free(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {p3, v5}, Lorg/openjdk/tools/javac/comp/InferenceContext;->free(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-direct {p0, v3, v5}, Lorg/openjdk/tools/javac/comp/Infer;->commonSuperWithDiffParameterization(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v5

    if-eqz v5, :cond_7

    return v2

    :cond_8
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->isParameterized()Z

    move-result p3

    if-eqz p3, :cond_a

    sget-object p3, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->EQ:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    sget-object v0, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->LOWER:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    filled-new-array {p3, v0}, [Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    move-result-object p3

    invoke-virtual {p1, p3}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->getBounds([Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v3, p2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0, p3, v3}, Lorg/openjdk/tools/javac/code/Types;->asSuper(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p3

    if-eqz p3, :cond_9

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Type;->isRaw()Z

    move-result p3

    if-eqz p3, :cond_9

    return v2

    :cond_a
    return v1
.end method

.method private roots(Lorg/openjdk/tools/javac/code/Type$MethodType;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;)Lorg/openjdk/tools/javac/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Type$MethodType;",
            "Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;",
            ")",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type$MethodType;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    if-eqz p2, :cond_0

    iget-object v1, p2, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->mode:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    sget-object v2, Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;->CHECK:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type$MethodType;->getThrownTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->addAll(Ljava/util/Collection;)Z

    iget-object p1, p2, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->deferredAttrNodes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;

    iget-object v1, p2, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;->deferredStuckPolicy:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredStuckPolicy;

    invoke-interface {v1}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredStuckPolicy;->stuckVars()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->addAll(Ljava/util/Collection;)Z

    iget-object p2, p2, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;->deferredStuckPolicy:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredStuckPolicy;

    invoke-interface {p2}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredStuckPolicy;->depVars()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/util/ListBuffer;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method private shouldPropagate(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/comp/InferenceContext;)Z
    .locals 2

    iget-object v0, p2, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-interface {v0}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->inferenceContext()Lorg/openjdk/tools/javac/comp/InferenceContext;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Infer;->emptyContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    if-eq v0, v1, :cond_1

    invoke-virtual {p3, p1}, Lorg/openjdk/tools/javac/comp/InferenceContext;->free(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p3, Lorg/openjdk/tools/javac/comp/InferenceContext;->inferencevars:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3, p1}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asUndetVar(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/code/Type$UndetVar;

    iget-object p2, p2, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pt:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Infer;->needsEagerInstantiation(Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/InferenceContext;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public doIncorporation(Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/util/Warner;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/comp/Infer$InferenceException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v3, v0

    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    const/16 v2, 0x2710

    if-ge v3, v2, :cond_2

    :try_start_0
    iget-object v2, p1, Lorg/openjdk/tools/javac/comp/InferenceContext;->undetvars:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v4, v0

    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjdk/tools/javac/code/Type;

    check-cast v5, Lorg/openjdk/tools/javac/code/Type$UndetVar;

    iget-object v6, v5, Lorg/openjdk/tools/javac/code/Type$UndetVar;->incorporationActions:Ljava/util/ArrayDeque;

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v4, v5, Lorg/openjdk/tools/javac/code/Type$UndetVar;->incorporationActions:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/tools/javac/comp/Infer$IncorporationAction;

    invoke-virtual {v4, p1, p2}, Lorg/openjdk/tools/javac/comp/Infer$IncorporationAction;->apply(Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/util/Warner;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    move v2, v4

    goto :goto_0

    :goto_2
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Infer;->incorporationCache:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->clear()V

    throw p1

    :cond_2
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Infer;->incorporationCache:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public doIncorporationOp(Lorg/openjdk/tools/javac/comp/Infer$IncorporationBinaryOpKind;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;)Z
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/comp/Infer$IncorporationBinaryOp;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Infer$IncorporationBinaryOp;-><init>(Lorg/openjdk/tools/javac/comp/Infer;Lorg/openjdk/tools/javac/comp/Infer$IncorporationBinaryOpKind;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Infer;->incorporationCache:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Infer;->incorporationCache:Ljava/util/Map;

    invoke-virtual {v0, p4}, Lorg/openjdk/tools/javac/comp/Infer$IncorporationBinaryOp;->apply(Lorg/openjdk/tools/javac/util/Warner;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public generateReturnConstraints(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/code/Type$MethodType;Lorg/openjdk/tools/javac/comp/InferenceContext;)Lorg/openjdk/tools/javac/code/Type;
    .locals 10

    iget-object v0, p2, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-interface {v0}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->inferenceContext()Lorg/openjdk/tools/javac/comp/InferenceContext;

    move-result-object v0

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Type$MethodType;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Type$MethodType;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    iget-object v3, p4, Lorg/openjdk/tools/javac/comp/InferenceContext;->inferencevars:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Type;->containsAny(Lorg/openjdk/tools/javac/util/List;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Infer;->emptyContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Infer;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/code/Types;->capture(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/code/Type;

    sget-object v4, Lorg/openjdk/tools/javac/code/TypeTag;->TYPEVAR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v4

    if-eqz v4, :cond_0

    check-cast v3, Lorg/openjdk/tools/javac/code/Type$TypeVar;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Type$TypeVar;->isCaptured()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p4, v3}, Lorg/openjdk/tools/javac/comp/InferenceContext;->addVar(Lorg/openjdk/tools/javac/code/Type$TypeVar;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p4, v1}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asUndetVar(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    iget-object v6, p2, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pt:Lorg/openjdk/tools/javac/code/Type;

    sget-object v3, Lorg/openjdk/tools/javac/code/TypeTag;->VOID:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v3

    const/4 v9, 0x1

    if-eqz v3, :cond_2

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Infer;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v6, p1, Lorg/openjdk/tools/javac/code/Symtab;->voidType:Lorg/openjdk/tools/javac/code/Type$JCVoidType;

    goto :goto_1

    :cond_2
    sget-object v3, Lorg/openjdk/tools/javac/code/TypeTag;->NONE:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v6, v3}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->isPrimitive()Z

    move-result p1

    if-eqz p1, :cond_3

    move-object v6, v1

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Infer;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    move-object v6, p1

    goto :goto_1

    :cond_4
    sget-object v3, Lorg/openjdk/tools/javac/code/TypeTag;->UNDETVAR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v5, v2

    check-cast v5, Lorg/openjdk/tools/javac/code/Type$UndetVar;

    invoke-direct {p0, v5, v6, p4}, Lorg/openjdk/tools/javac/comp/Infer;->needsEagerInstantiation(Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/InferenceContext;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lorg/openjdk/tools/javac/comp/Infer;->allowGraphInference:Z

    if-nez v3, :cond_5

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/code/Type;->isPrimitive()Z

    move-result v3

    if-nez v3, :cond_7

    :cond_5
    move-object v3, p0

    move-object v4, p1

    move-object v7, p2

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lorg/openjdk/tools/javac/comp/Infer;->generateReferenceToTargetConstraint(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/comp/InferenceContext;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v6

    goto :goto_1

    :cond_6
    iget-object v3, p2, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pt:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/comp/InferenceContext;->free(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v2, p2, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkMode:Lorg/openjdk/tools/javac/comp/Attr$CheckMode;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/comp/Attr$CheckMode;->updateTreeType()Z

    move-result v2

    xor-int/2addr v2, v9

    invoke-virtual {v0, p1, v1, v2}, Lorg/openjdk/tools/javac/comp/InferenceContext;->cachedCapture(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;Z)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {p4, p1}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asUndetVar(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    :cond_7
    :goto_1
    iget-boolean p1, p0, Lorg/openjdk/tools/javac/comp/Infer;->allowGraphInference:Z

    if-nez p1, :cond_9

    invoke-virtual {v0, v6}, Lorg/openjdk/tools/javac/comp/InferenceContext;->free(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_2

    :cond_8
    const/4 v9, 0x0

    :cond_9
    :goto_2
    const-string p1, "legacy inference engine cannot handle constraints on both sides of a subtyping assertion"

    invoke-static {v9, p1}, Lorg/openjdk/tools/javac/util/Assert;->check(ZLjava/lang/String;)V

    new-instance p1, Lorg/openjdk/tools/javac/util/Warner;

    invoke-direct {p1}, Lorg/openjdk/tools/javac/util/Warner;-><init>()V

    iget-object p2, p2, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-virtual {v0, v6}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asUndetVar(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-interface {p2, v2, v0, p1}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->compatible(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;)Z

    move-result p2

    if-eqz p2, :cond_b

    iget-boolean p2, p0, Lorg/openjdk/tools/javac/comp/Infer;->allowGraphInference:Z

    if-nez p2, :cond_a

    sget-object p2, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->UNCHECKED:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/util/Warner;->hasLint(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Z

    move-result p1

    if-nez p1, :cond_b

    :cond_a
    return-object v1

    :cond_b
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Infer;->inferenceException:Lorg/openjdk/tools/javac/comp/Infer$InferenceException;

    invoke-virtual {p4}, Lorg/openjdk/tools/javac/comp/InferenceContext;->restvars()Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Type$MethodType;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p3

    filled-new-array {p2, p3, v6}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "infer.no.conforming.instance.exists"

    invoke-virtual {p1, p3, p2}, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException;->setMessage(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException;

    move-result-object p1

    throw p1
.end method

.method public incorporationEngine()Lorg/openjdk/tools/javac/comp/Infer$AbstractIncorporationEngine;
    .locals 1

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Infer;->allowGraphInference:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer;->graphEngine:Lorg/openjdk/tools/javac/comp/Infer$AbstractIncorporationEngine;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer;->legacyEngine:Lorg/openjdk/tools/javac/comp/Infer$AbstractIncorporationEngine;

    :goto_0
    return-object v0
.end method

.method public instantiateAsUninferredVars(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/InferenceContext;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/comp/InferenceContext;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p2, v2}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asUndetVar(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Type$UndetVar;

    sget-object v3, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->UPPER:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    filled-new-array {v3}, [Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->getBounds([Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    invoke-static {v4, p1}, Lorg/openjdk/tools/javac/code/Type;->containsAny(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v4, Lorg/openjdk/tools/javac/code/Symbol$TypeVariableSymbol;

    iget-object v5, v2, Lorg/openjdk/tools/javac/code/Type$DelegatedType;->qtype:Lorg/openjdk/tools/javac/code/Type;

    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v9, v5, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    const/4 v10, 0x0

    iget-object v11, v5, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    const-wide/16 v7, 0x1000

    move-object v6, v4

    invoke-direct/range {v6 .. v11}, Lorg/openjdk/tools/javac/code/Symbol$TypeVariableSymbol;-><init>(JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    new-instance v5, Lorg/openjdk/tools/javac/code/Type$TypeVar;

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Infer;->types:Lorg/openjdk/tools/javac/code/Types;

    filled-new-array {v3}, [Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->getBounds([Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v6, v3}, Lorg/openjdk/tools/javac/code/Types;->makeIntersectionType(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type$IntersectionClassType;

    move-result-object v3

    const/4 v6, 0x0

    invoke-direct {v5, v4, v3, v6}, Lorg/openjdk/tools/javac/code/Type$TypeVar;-><init>(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)V

    iput-object v5, v4, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v3, v4, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->setInst(Lorg/openjdk/tools/javac/code/Type;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Infer;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/code/Types;->glb(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->setInst(Lorg/openjdk/tools/javac/code/Type;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Infer;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->setInst(Lorg/openjdk/tools/javac/code/Type;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    check-cast v1, Lorg/openjdk/tools/javac/code/Type$UndetVar;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->getInst()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Type$TypeVar;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Infer;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v3, v2}, Lorg/openjdk/tools/javac/code/Types;->getBounds(Lorg/openjdk/tools/javac/code/Type$TypeVar;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    invoke-virtual {p2, v4}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asInstTypes(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/code/Types;->glb(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    iput-object v3, v2, Lorg/openjdk/tools/javac/code/Type$TypeVar;->bound:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->UPPER:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    invoke-virtual {p0, v1, v2}, Lorg/openjdk/tools/javac/comp/Infer;->reportBoundError(Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)V

    :cond_3
    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_1

    :cond_4
    return-void
.end method

.method public instantiateFunctionalInterface(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)Lorg/openjdk/tools/javac/code/Type;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/comp/Check$CheckContext;",
            ")",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/code/Types;->capture(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    if-ne v0, p2, :cond_0

    return-object p2

    :cond_0
    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    new-instance v1, Lorg/openjdk/tools/javac/comp/InferenceContext;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lorg/openjdk/tools/javac/comp/InferenceContext;-><init>(Lorg/openjdk/tools/javac/comp/Infer;Lorg/openjdk/tools/javac/util/List;)V

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-static {v3}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Infer;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v3, v0}, Lorg/openjdk/tools/javac/code/Types;->findDescriptorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/List;->size()I

    move-result v4

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/util/List;->size()I

    move-result v5

    if-eq v4, v5, :cond_2

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Infer;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    const-string v0, "incompatible.arg.types.in.lambda"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {p3, v0, v1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p3

    invoke-interface {p4, p1, p3}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Infer;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "no.suitable.functional.intf.inst"

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/code/Type;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Infer;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asUndetVar(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    iget-object v6, p3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v6, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v5, v3, v6}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Infer;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, v4, v0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p3

    invoke-interface {p4, p1, p3}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Infer;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object p3, p3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Type;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object p3

    iget-object v2, v1, Lorg/openjdk/tools/javac/comp/InferenceContext;->undetvars:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/code/Type;

    check-cast v3, Lorg/openjdk/tools/javac/code/Type$UndetVar;

    sget-object v5, Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;->EQ:Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    filled-new-array {v5}, [Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->getBounds([Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lorg/openjdk/tools/javac/comp/i0;

    invoke-direct {v6, v0}, Lorg/openjdk/tools/javac/comp/i0;-><init>(Lorg/openjdk/tools/javac/code/Type;)V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v5

    iget-object v6, p3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v3, v5}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->setInst(Lorg/openjdk/tools/javac/code/Type;)V

    iget-object p3, p3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_2

    :cond_5
    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asInstType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v0, p3}, Lorg/openjdk/tools/javac/comp/Check;->checkValidGenericType(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v0

    invoke-interface {p4, p1, v0}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    :cond_6
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Infer;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Types;->noWarnings:Lorg/openjdk/tools/javac/util/Warner;

    invoke-interface {p4, p3, p2, p1}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->compatible(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Warner;)Z

    return-object p3
.end method

.method public instantiateMethod(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type$MethodType;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/util/List;ZZLorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;Lorg/openjdk/tools/javac/util/Warner;)Lorg/openjdk/tools/javac/code/Type;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type$MethodType;",
            "Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;",
            "Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;ZZ",
            "Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;",
            "Lorg/openjdk/tools/javac/util/Warner;",
            ")",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/comp/Infer$InferenceException;
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v8, p1

    move-object/from16 v0, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    new-instance v13, Lorg/openjdk/tools/javac/comp/InferenceContext;

    move-object/from16 v1, p2

    invoke-direct {v13, p0, v1}, Lorg/openjdk/tools/javac/comp/InferenceContext;-><init>(Lorg/openjdk/tools/javac/comp/Infer;Lorg/openjdk/tools/javac/util/List;)V

    iget-object v1, v7, Lorg/openjdk/tools/javac/comp/Infer;->inferenceException:Lorg/openjdk/tools/javac/comp/Infer$InferenceException;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/comp/Infer$InferenceException;->clear()V

    :try_start_0
    invoke-virtual {v11, v10, v13, v9, v12}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->deferredAttrContext(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/util/Warner;)Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

    move-result-object v14

    iget-object v1, v11, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->methodCheck:Lorg/openjdk/tools/javac/comp/Resolve$MethodCheck;

    invoke-virtual/range {p3 .. p3}, Lorg/openjdk/tools/javac/code/Type$MethodType;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v5

    move-object/from16 v2, p1

    move-object v3, v14

    move-object/from16 v4, p6

    move-object/from16 v6, p10

    invoke-interface/range {v1 .. v6}, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheck;->argumentsAcceptable(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/Warner;)V

    iget-boolean v1, v7, Lorg/openjdk/tools/javac/comp/Infer;->allowGraphInference:Z

    if-eqz v1, :cond_0

    if-eqz v9, :cond_0

    iget-object v2, v9, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pt:Lorg/openjdk/tools/javac/code/Type;

    sget-object v3, Lorg/openjdk/tools/javac/comp/Infer;->anyPoly:Lorg/openjdk/tools/javac/code/Type;

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v13, v12}, Lorg/openjdk/tools/javac/comp/Infer;->doIncorporation(Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/util/Warner;)V

    new-instance v14, Lorg/openjdk/tools/javac/comp/Infer$PartiallyInferredMethodType;

    move-object v1, v14

    move-object v2, p0

    move-object/from16 v3, p3

    move-object v4, v13

    move-object/from16 v5, p1

    move-object/from16 v6, p10

    invoke-direct/range {v1 .. v6}, Lorg/openjdk/tools/javac/comp/Infer$PartiallyInferredMethodType;-><init>(Lorg/openjdk/tools/javac/comp/Infer;Lorg/openjdk/tools/javac/code/Type$MethodType;Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/util/Warner;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v13}, Lorg/openjdk/tools/javac/comp/InferenceContext;->notifyChange()V

    iget-object v0, v8, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-direct {p0, v0, v10, v11}, Lorg/openjdk/tools/javac/comp/Infer;->dumpGraphsIfNeeded(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;)V

    return-object v14

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_0
    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-eqz v9, :cond_3

    :try_start_1
    invoke-virtual {p0, v13, v12}, Lorg/openjdk/tools/javac/comp/Infer;->doIncorporation(Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/util/Warner;)V

    sget-object v1, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->UNCHECKED:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v12, v1}, Lorg/openjdk/tools/javac/util/Warner;->hasNonSilentLint(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual/range {p3 .. p3}, Lorg/openjdk/tools/javac/code/Type$MethodType;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-direct {p0, v1, v9, v13}, Lorg/openjdk/tools/javac/comp/Infer;->shouldPropagate(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/comp/InferenceContext;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0, v14}, Lorg/openjdk/tools/javac/comp/Infer;->roots(Lorg/openjdk/tools/javac/code/Type$MethodType;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v13, v3, v2, v12}, Lorg/openjdk/tools/javac/comp/InferenceContext;->min(Lorg/openjdk/tools/javac/util/List;ZLorg/openjdk/tools/javac/util/Warner;)Lorg/openjdk/tools/javac/comp/InferenceContext;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v3, v13

    :goto_0
    iget-object v4, v8, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v4, v9, v0, v3}, Lorg/openjdk/tools/javac/comp/Infer;->generateReturnConstraints(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/code/Type$MethodType;Lorg/openjdk/tools/javac/comp/InferenceContext;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    iget-object v5, v7, Lorg/openjdk/tools/javac/comp/Infer;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v5, v0, v4}, Lorg/openjdk/tools/javac/code/Types;->createMethodTypeWithReturn(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Type$MethodType;

    if-eqz v1, :cond_3

    iget-object v1, v9, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-interface {v1}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->inferenceContext()Lorg/openjdk/tools/javac/comp/InferenceContext;

    move-result-object v1

    invoke-virtual {v3, v1}, Lorg/openjdk/tools/javac/comp/InferenceContext;->dupTo(Lorg/openjdk/tools/javac/comp/InferenceContext;)V

    invoke-virtual {v14}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->complete()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v13}, Lorg/openjdk/tools/javac/comp/InferenceContext;->notifyChange()V

    :cond_2
    :goto_1
    iget-object v1, v8, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-direct {p0, v1, v10, v11}, Lorg/openjdk/tools/javac/comp/Infer;->dumpGraphsIfNeeded(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;)V

    return-object v0

    :cond_3
    :try_start_2
    invoke-virtual {v14}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->complete()V

    iget-boolean v1, v7, Lorg/openjdk/tools/javac/comp/Infer;->allowGraphInference:Z

    if-eqz v1, :cond_4

    invoke-virtual {v13, v12}, Lorg/openjdk/tools/javac/comp/InferenceContext;->solve(Lorg/openjdk/tools/javac/util/Warner;)V

    goto :goto_2

    :cond_4
    sget-object v1, Lorg/openjdk/tools/javac/comp/Infer$LegacyInferenceSteps;->EQ_LOWER:Lorg/openjdk/tools/javac/comp/Infer$LegacyInferenceSteps;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Infer$LegacyInferenceSteps;->steps:Ljava/util/EnumSet;

    invoke-virtual {v13, v2, v12, v1}, Lorg/openjdk/tools/javac/comp/InferenceContext;->solveLegacy(ZLorg/openjdk/tools/javac/util/Warner;Ljava/util/EnumSet;)V

    :goto_2
    invoke-virtual {v13, v0}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asInstType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Type$MethodType;

    iget-boolean v1, v7, Lorg/openjdk/tools/javac/comp/Infer;->allowGraphInference:Z

    if-nez v1, :cond_5

    invoke-virtual {v13}, Lorg/openjdk/tools/javac/comp/InferenceContext;->restvars()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v9, :cond_5

    sget-object v1, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->UNCHECKED:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v12, v1}, Lorg/openjdk/tools/javac/util/Warner;->hasNonSilentLint(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v8, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v1, v9, v0, v13}, Lorg/openjdk/tools/javac/comp/Infer;->generateReturnConstraints(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/code/Type$MethodType;Lorg/openjdk/tools/javac/comp/InferenceContext;)Lorg/openjdk/tools/javac/code/Type;

    sget-object v1, Lorg/openjdk/tools/javac/comp/Infer$LegacyInferenceSteps;->EQ_UPPER:Lorg/openjdk/tools/javac/comp/Infer$LegacyInferenceSteps;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Infer$LegacyInferenceSteps;->steps:Ljava/util/EnumSet;

    const/4 v2, 0x0

    invoke-virtual {v13, v2, v12, v1}, Lorg/openjdk/tools/javac/comp/InferenceContext;->solveLegacy(ZLorg/openjdk/tools/javac/util/Warner;Ljava/util/EnumSet;)V

    invoke-virtual {v13, v0}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asInstType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Type$MethodType;

    :cond_5
    if-eqz v9, :cond_6

    iget-object v1, v7, Lorg/openjdk/tools/javac/comp/Infer;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Resolve;->verboseResolutionMode:Ljava/util/EnumSet;

    sget-object v2, Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;->DEFERRED_INST:Lorg/openjdk/tools/javac/comp/Resolve$VerboseResolutionMode;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v7, Lorg/openjdk/tools/javac/comp/Infer;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v2, v8, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    iget v2, v2, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    const-string v3, "deferred.method.inst"

    iget-object v4, v9, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pt:Lorg/openjdk/tools/javac/code/Type;

    filled-new-array {v10, v0, v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/openjdk/tools/javac/util/AbstractLog;->note(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    if-nez v9, :cond_8

    iget-boolean v1, v7, Lorg/openjdk/tools/javac/comp/Infer;->allowGraphInference:Z

    if-nez v1, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v13}, Lorg/openjdk/tools/javac/comp/InferenceContext;->boundedVars()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v13, v1}, Lorg/openjdk/tools/javac/comp/InferenceContext;->notifyChange(Lorg/openjdk/tools/javac/util/List;)V

    goto :goto_4

    :cond_8
    :goto_3
    invoke-virtual {v13}, Lorg/openjdk/tools/javac/comp/InferenceContext;->notifyChange()V

    :goto_4
    if-nez v9, :cond_2

    iget-object v1, v13, Lorg/openjdk/tools/javac/comp/InferenceContext;->captureTypeCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    goto/16 :goto_1

    :goto_5
    if-nez v9, :cond_a

    iget-boolean v1, v7, Lorg/openjdk/tools/javac/comp/Infer;->allowGraphInference:Z

    if-nez v1, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {v13}, Lorg/openjdk/tools/javac/comp/InferenceContext;->boundedVars()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v13, v1}, Lorg/openjdk/tools/javac/comp/InferenceContext;->notifyChange(Lorg/openjdk/tools/javac/util/List;)V

    goto :goto_7

    :cond_a
    :goto_6
    invoke-virtual {v13}, Lorg/openjdk/tools/javac/comp/InferenceContext;->notifyChange()V

    :goto_7
    if-nez v9, :cond_b

    iget-object v1, v13, Lorg/openjdk/tools/javac/comp/InferenceContext;->captureTypeCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    :cond_b
    iget-object v1, v8, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-direct {p0, v1, v10, v11}, Lorg/openjdk/tools/javac/comp/Infer;->dumpGraphsIfNeeded(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;)V

    throw v0
.end method

.method public instantiatePolymorphicSignatureInstance(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;",
            "Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Infer;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Infer;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v2, v3, v0}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v1, Lorg/openjdk/tools/javac/comp/Infer$4;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    iget-object v2, p1, Lorg/openjdk/tools/javac/comp/Env;->next:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v0, :cond_4

    const/4 v0, 0x2

    if-eq v1, v0, :cond_2

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Infer;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->next:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpressionStatement;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->skipParens(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    if-ne v0, p1, :cond_3

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Infer;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->voidType:Lorg/openjdk/tools/javac/code/Type$JCVoidType;

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Infer;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    goto :goto_1

    :cond_4
    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->next:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->skipParens(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    if-ne v1, p1, :cond_5

    iget-object p1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeCast;->clazz:Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Infer;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    :goto_1
    new-instance v0, Lorg/openjdk/tools/javac/comp/Infer$ImplicitArgType;

    iget-object p3, p3, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionContext;->step:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    invoke-direct {v0, p0, p2, p3}, Lorg/openjdk/tools/javac/comp/Infer$ImplicitArgType;-><init>(Lorg/openjdk/tools/javac/comp/Infer;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;)V

    invoke-virtual {p4, v0}, Lorg/openjdk/tools/javac/util/List;->map(Ljava/util/function/Function;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p3

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->getThrownTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    goto :goto_2

    :cond_6
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Infer;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symtab;->throwableType:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {p2}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    :goto_2
    new-instance p4, Lorg/openjdk/tools/javac/code/Type$MethodType;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->methodClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {p4, p3, p1, p2, v0}, Lorg/openjdk/tools/javac/code/Type$MethodType;-><init>(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    return-object p4
.end method

.method public reportBoundError(Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/StringUtils;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "incompatible.%s.bounds"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Type$DelegatedType;->qtype:Lorg/openjdk/tools/javac/code/Type;

    filled-new-array {p2}, [Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    move-result-object p2

    .line 2
    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->getBounds([Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 3
    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/comp/Infer;->reportInferenceError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public reportBoundError(Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)V
    .locals 2

    .line 4
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/StringUtils;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/openjdk/tools/javac/util/StringUtils;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    .line 6
    const-string v1, "incompatible.%s.%s.bounds"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Type$DelegatedType;->qtype:Lorg/openjdk/tools/javac/code/Type;

    filled-new-array {p2}, [Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->getBounds([Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    filled-new-array {p3}, [Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    move-result-object p3

    .line 8
    invoke-virtual {p1, p3}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->getBounds([Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    filled-new-array {v1, p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 9
    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/comp/Infer;->reportInferenceError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs reportInferenceError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Infer;->inferenceException:Lorg/openjdk/tools/javac/comp/Infer$InferenceException;

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException;->setMessage(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/comp/Resolve$InapplicableMethodException;

    move-result-object p1

    throw p1
.end method

.method public reportInstError(Lorg/openjdk/tools/javac/code/Type$UndetVar;Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)V
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/StringUtils;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "inferred.do.not.conform.to.%s.bounds"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->getInst()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    filled-new-array {p2}, [Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/code/Type$UndetVar;->getBounds([Lorg/openjdk/tools/javac/code/Type$UndetVar$InferenceBound;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/comp/Infer;->reportInferenceError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
