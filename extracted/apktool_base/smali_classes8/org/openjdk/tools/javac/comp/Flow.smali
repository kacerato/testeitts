.class public Lorg/openjdk/tools/javac/comp/Flow;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/comp/Flow$CaptureAnalyzer;,
        Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;,
        Lorg/openjdk/tools/javac/comp/Flow$LambdaFlowAnalyzer;,
        Lorg/openjdk/tools/javac/comp/Flow$LambdaAssignAnalyzer;,
        Lorg/openjdk/tools/javac/comp/Flow$LambdaAliveAnalyzer;,
        Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;,
        Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;,
        Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;,
        Lorg/openjdk/tools/javac/comp/Flow$FlowKind;
    }
.end annotation


# static fields
.field protected static final flowKey:Lorg/openjdk/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "Lorg/openjdk/tools/javac/comp/Flow;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final allowEffectivelyFinalInInnerClasses:Z

.field private final allowImprovedCatchAnalysis:Z

.field private final allowImprovedRethrowAnalysis:Z

.field private attrEnv:Lorg/openjdk/tools/javac/comp/Env;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation
.end field

.field private final chk:Lorg/openjdk/tools/javac/comp/Check;

.field private final diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

.field private final enforceThisDotInit:Z

.field private lint:Lorg/openjdk/tools/javac/code/Lint;

.field private final log:Lorg/openjdk/tools/javac/util/Log;

.field private make:Lorg/openjdk/tools/javac/tree/TreeMaker;

.field private final names:Lorg/openjdk/tools/javac/util/Names;

.field private final rs:Lorg/openjdk/tools/javac/comp/Resolve;

.field private final syms:Lorg/openjdk/tools/javac/code/Symtab;

.field private final types:Lorg/openjdk/tools/javac/code/Types;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/comp/Flow;->flowKey:Lorg/openjdk/tools/javac/util/Context$Key;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/openjdk/tools/javac/comp/Flow;->flowKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Names;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Log;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Symtab;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Types;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Check;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Lint;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow;->lint:Lorg/openjdk/tools/javac/code/Lint;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Resolve;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Resolve;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Source;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Source;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Source;->allowImprovedRethrowAnalysis()Z

    move-result v0

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Flow;->allowImprovedRethrowAnalysis:Z

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Source;->allowImprovedCatchAnalysis()Z

    move-result v0

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Flow;->allowImprovedCatchAnalysis:Z

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Source;->allowEffectivelyFinalInInnerClasses()Z

    move-result v0

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Flow;->allowEffectivelyFinalInInnerClasses:Z

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Source;->enforceThisDotInit()Z

    move-result p1

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/comp/Flow;->enforceThisDotInit:Z

    return-void
.end method

.method public static synthetic access$100(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/util/Log;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Flow;->log:Lorg/openjdk/tools/javac/util/Log;

    return-object p0
.end method

.method public static synthetic access$1000(Lorg/openjdk/tools/javac/comp/Flow;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/openjdk/tools/javac/comp/Flow;->allowImprovedCatchAnalysis:Z

    return p0
.end method

.method public static synthetic access$1100(Lorg/openjdk/tools/javac/comp/Flow;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/openjdk/tools/javac/comp/Flow;->allowImprovedRethrowAnalysis:Z

    return p0
.end method

.method public static synthetic access$1200(Lorg/openjdk/tools/javac/comp/Flow;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/openjdk/tools/javac/comp/Flow;->enforceThisDotInit:Z

    return p0
.end method

.method public static synthetic access$1300(Lorg/openjdk/tools/javac/comp/Flow;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/openjdk/tools/javac/comp/Flow;->allowEffectivelyFinalInInnerClasses:Z

    return p0
.end method

.method public static synthetic access$1400(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Flow;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/code/Lint;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Flow;->lint:Lorg/openjdk/tools/javac/code/Lint;

    return-object p0
.end method

.method public static synthetic access$202(Lorg/openjdk/tools/javac/comp/Flow;Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow;->lint:Lorg/openjdk/tools/javac/code/Lint;

    return-object p1
.end method

.method public static synthetic access$300(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/comp/Env;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Flow;->attrEnv:Lorg/openjdk/tools/javac/comp/Env;

    return-object p0
.end method

.method public static synthetic access$302(Lorg/openjdk/tools/javac/comp/Flow;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow;->attrEnv:Lorg/openjdk/tools/javac/comp/Env;

    return-object p1
.end method

.method public static synthetic access$400(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/tree/TreeMaker;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Flow;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    return-object p0
.end method

.method public static synthetic access$402(Lorg/openjdk/tools/javac/comp/Flow;Lorg/openjdk/tools/javac/tree/TreeMaker;)Lorg/openjdk/tools/javac/tree/TreeMaker;
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    return-object p1
.end method

.method public static synthetic access$500(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/comp/Check;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Flow;->chk:Lorg/openjdk/tools/javac/comp/Check;

    return-object p0
.end method

.method public static synthetic access$600(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/util/Names;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Flow;->names:Lorg/openjdk/tools/javac/util/Names;

    return-object p0
.end method

.method public static synthetic access$700(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/code/Types;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Flow;->types:Lorg/openjdk/tools/javac/code/Types;

    return-object p0
.end method

.method public static synthetic access$800(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/code/Symtab;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Flow;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    return-object p0
.end method

.method public static synthetic access$900(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/comp/Resolve;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/Flow;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    return-object p0
.end method

.method public static instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Flow;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/comp/Flow;->flowKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Lorg/openjdk/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/comp/Flow;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/comp/Flow;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/Flow;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public analyzeLambda(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;Lorg/openjdk/tools/javac/tree/TreeMaker;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;",
            "Lorg/openjdk/tools/javac/tree/TreeMaker;",
            "Z)V"
        }
    .end annotation

    if-nez p4, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/util/Log$DiscardDiagnosticHandler;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-direct {v0, v1}, Lorg/openjdk/tools/javac/util/Log$DiscardDiagnosticHandler;-><init>(Lorg/openjdk/tools/javac/util/Log;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    new-instance v1, Lorg/openjdk/tools/javac/comp/Flow$LambdaAliveAnalyzer;

    invoke-direct {v1, p0}, Lorg/openjdk/tools/javac/comp/Flow$LambdaAliveAnalyzer;-><init>(Lorg/openjdk/tools/javac/comp/Flow;)V

    invoke-virtual {v1, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->analyzeTree(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/TreeMaker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p4, :cond_1

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/Log;->popDiagnosticHandler(Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    if-nez p4, :cond_2

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Flow;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/util/Log;->popDiagnosticHandler(Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;)V

    :cond_2
    throw p1
.end method

.method public analyzeLambdaThrownTypes(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;Lorg/openjdk/tools/javac/tree/TreeMaker;)Lorg/openjdk/tools/javac/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;",
            "Lorg/openjdk/tools/javac/tree/TreeMaker;",
            ")",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/Log$DiscardDiagnosticHandler;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-direct {v0, v1}, Lorg/openjdk/tools/javac/util/Log$DiscardDiagnosticHandler;-><init>(Lorg/openjdk/tools/javac/util/Log;)V

    :try_start_0
    new-instance v1, Lorg/openjdk/tools/javac/comp/Flow$LambdaAssignAnalyzer;

    invoke-direct {v1, p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$LambdaAssignAnalyzer;-><init>(Lorg/openjdk/tools/javac/comp/Flow;Lorg/openjdk/tools/javac/comp/Env;)V

    invoke-virtual {v1, p1, p2}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->analyzeTree(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree;)V

    new-instance v1, Lorg/openjdk/tools/javac/comp/Flow$LambdaFlowAnalyzer;

    invoke-direct {v1, p0}, Lorg/openjdk/tools/javac/comp/Flow$LambdaFlowAnalyzer;-><init>(Lorg/openjdk/tools/javac/comp/Flow;)V

    invoke-virtual {v1, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->analyzeTree(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/TreeMaker;)V

    iget-object p1, v1, Lorg/openjdk/tools/javac/comp/Flow$LambdaFlowAnalyzer;->inferredThrownTypes:Lorg/openjdk/tools/javac/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Flow;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/util/Log;->popDiagnosticHandler(Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Flow;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/util/Log;->popDiagnosticHandler(Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;)V

    throw p1
.end method

.method public analyzeTree(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/TreeMaker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/TreeMaker;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;-><init>(Lorg/openjdk/tools/javac/comp/Flow;)V

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->analyzeTree(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/TreeMaker;)V

    new-instance v0, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;-><init>(Lorg/openjdk/tools/javac/comp/Flow;)V

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/comp/Flow$AssignAnalyzer;->analyzeTree(Lorg/openjdk/tools/javac/comp/Env;)V

    new-instance v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;-><init>(Lorg/openjdk/tools/javac/comp/Flow;)V

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->analyzeTree(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/TreeMaker;)V

    new-instance v0, Lorg/openjdk/tools/javac/comp/Flow$CaptureAnalyzer;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/Flow$CaptureAnalyzer;-><init>(Lorg/openjdk/tools/javac/comp/Flow;)V

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/comp/Flow$CaptureAnalyzer;->analyzeTree(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/TreeMaker;)V

    return-void
.end method
