.class public Lorg/openjdk/tools/javac/comp/DeferredAttr;
.super Lorg/openjdk/tools/javac/tree/JCTree$Visitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/comp/DeferredAttr$OverloadStuckPolicy;,
        Lorg/openjdk/tools/javac/comp/DeferredAttr$CheckStuckPolicy;,
        Lorg/openjdk/tools/javac/comp/DeferredAttr$LambdaReturnScanner;,
        Lorg/openjdk/tools/javac/comp/DeferredAttr$PolyScanner;,
        Lorg/openjdk/tools/javac/comp/DeferredAttr$FilterScanner;,
        Lorg/openjdk/tools/javac/comp/DeferredAttr$RecoveryDeferredTypeMap;,
        Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredTypeMap;,
        Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;,
        Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;,
        Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrDiagHandler;,
        Lorg/openjdk/tools/javac/comp/DeferredAttr$UnenterScanner;,
        Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;,
        Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredStuckPolicy;,
        Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredTypeCompleter;,
        Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;
    }
.end annotation


# static fields
.field protected static final deferredAttrKey:Lorg/openjdk/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "Lorg/openjdk/tools/javac/comp/DeferredAttr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final argumentAttr:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

.field final attr:Lorg/openjdk/tools/javac/comp/Attr;

.field basicCompleter:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredTypeCompleter;

.field final chk:Lorg/openjdk/tools/javac/comp/Check;

.field final deferredCopier:Lorg/openjdk/tools/javac/code/Types$TypeMapping;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/code/Types$TypeMapping<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field final diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

.field dummyStuckPolicy:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredStuckPolicy;

.field final emptyDeferredAttrContext:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

.field final enter:Lorg/openjdk/tools/javac/comp/Enter;

.field final flow:Lorg/openjdk/tools/javac/comp/Flow;

.field final infer:Lorg/openjdk/tools/javac/comp/Infer;

.field final log:Lorg/openjdk/tools/javac/util/Log;

.field final make:Lorg/openjdk/tools/javac/tree/TreeMaker;

.field final names:Lorg/openjdk/tools/javac/util/Names;

.field final rs:Lorg/openjdk/tools/javac/comp/Resolve;

.field final stuckTree:Lorg/openjdk/tools/javac/tree/JCTree;

.field final syms:Lorg/openjdk/tools/javac/code/Symtab;

.field final treeCopier:Lorg/openjdk/tools/javac/tree/TreeCopier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/tree/TreeCopier<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field final typeEnvs:Lorg/openjdk/tools/javac/comp/TypeEnvs;

.field final types:Lorg/openjdk/tools/javac/code/Types;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->deferredAttrKey:Lorg/openjdk/tools/javac/util/Context$Key;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 10

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;-><init>()V

    new-instance v0, Lorg/openjdk/tools/javac/comp/DeferredAttr$4;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/DeferredAttr$4;-><init>(Lorg/openjdk/tools/javac/comp/DeferredAttr;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->basicCompleter:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredTypeCompleter;

    new-instance v0, Lorg/openjdk/tools/javac/comp/DeferredAttr$5;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/DeferredAttr$5;-><init>(Lorg/openjdk/tools/javac/comp/DeferredAttr;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->dummyStuckPolicy:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredStuckPolicy;

    sget-object v0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->deferredAttrKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Attr;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Attr;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->argumentAttr:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Check;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Enter;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Enter;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->enter:Lorg/openjdk/tools/javac/comp/Enter;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Infer;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Infer;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->infer:Lorg/openjdk/tools/javac/comp/Infer;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Resolve;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Resolve;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Log;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Symtab;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Types;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v2

    iput-object v2, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Flow;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Flow;

    move-result-object v2

    iput-object v2, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->flow:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Names;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v2

    iput-object v2, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/Names;->empty:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v2

    sget-object v3, Lorg/openjdk/tools/javac/code/Type;->stuckType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;->setType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v2

    iput-object v2, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->stuckTree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/TypeEnvs;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/TypeEnvs;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->typeEnvs:Lorg/openjdk/tools/javac/comp/TypeEnvs;

    new-instance p1, Lorg/openjdk/tools/javac/comp/DeferredAttr$1;

    sget-object v4, Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;->CHECK:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    sget-object v6, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;->BOX:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    iget-object v7, v0, Lorg/openjdk/tools/javac/comp/Infer;->emptyContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lorg/openjdk/tools/javac/comp/DeferredAttr$1;-><init>(Lorg/openjdk/tools/javac/comp/DeferredAttr;Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;Lorg/openjdk/tools/javac/util/Warner;)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->emptyDeferredAttrContext:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

    new-instance p1, Lorg/openjdk/tools/javac/comp/DeferredAttr$2;

    invoke-direct {p1, p0, v1}, Lorg/openjdk/tools/javac/comp/DeferredAttr$2;-><init>(Lorg/openjdk/tools/javac/comp/DeferredAttr;Lorg/openjdk/tools/javac/tree/TreeMaker;)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->treeCopier:Lorg/openjdk/tools/javac/tree/TreeCopier;

    new-instance p1, Lorg/openjdk/tools/javac/comp/DeferredAttr$3;

    invoke-direct {p1, p0}, Lorg/openjdk/tools/javac/comp/DeferredAttr$3;-><init>(Lorg/openjdk/tools/javac/comp/DeferredAttr;)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->deferredCopier:Lorg/openjdk/tools/javac/code/Types$TypeMapping;

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/comp/DeferredAttr;->lambda$attribSpeculativeLambda$1(Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/openjdk/tools/javac/comp/DeferredAttr;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/DeferredAttr;->lambda$attribSpeculative$3(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;)Z
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/comp/DeferredAttr;->lambda$attribSpeculativeLambda$0(Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;)Z

    move-result p0

    return p0
.end method

.method public static synthetic d(Lorg/openjdk/tools/javac/comp/DeferredAttr;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/DeferredAttr;->lambda$attribSpeculative$2(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;

    move-result-object p0

    return-object p0
.end method

.method public static instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/DeferredAttr;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->deferredAttrKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Lorg/openjdk/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/comp/DeferredAttr;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/comp/DeferredAttr;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/DeferredAttr;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    :cond_0
    return-object v0
.end method

.method private synthetic lambda$attribSpeculative$2(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrDiagHandler;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-direct {v0, v1, p1}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrDiagHandler;-><init>(Lorg/openjdk/tools/javac/util/Log;Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-object v0
.end method

.method private synthetic lambda$attribSpeculative$3(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrDiagHandler;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-direct {v0, v1, p1}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrDiagHandler;-><init>(Lorg/openjdk/tools/javac/util/Log;Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-object v0
.end method

.method private static synthetic lambda$attribSpeculativeLambda$0(Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;)Z
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->VARDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$attribSpeculativeLambda$1(Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;
    .locals 0

    check-cast p0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    return-object p0
.end method


# virtual methods
.method public attribSpeculative(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;",
            ")",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 1
    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->treeCopier:Lorg/openjdk/tools/javac/tree/TreeCopier;

    new-instance v5, Lorg/openjdk/tools/javac/comp/Y;

    invoke-direct {v5, p0}, Lorg/openjdk/tools/javac/comp/Y;-><init>(Lorg/openjdk/tools/javac/comp/DeferredAttr;)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lorg/openjdk/tools/javac/comp/DeferredAttr;->attribSpeculative(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/tree/TreeCopier;Ljava/util/function/Function;Lorg/openjdk/tools/javac/comp/ArgumentAttr$LocalCacheContext;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public attribSpeculative(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/comp/ArgumentAttr$LocalCacheContext;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;",
            "Lorg/openjdk/tools/javac/comp/ArgumentAttr$LocalCacheContext;",
            ")",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 2
    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->treeCopier:Lorg/openjdk/tools/javac/tree/TreeCopier;

    new-instance v5, Lorg/openjdk/tools/javac/comp/Z;

    invoke-direct {v5, p0}, Lorg/openjdk/tools/javac/comp/Z;-><init>(Lorg/openjdk/tools/javac/comp/DeferredAttr;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lorg/openjdk/tools/javac/comp/DeferredAttr;->attribSpeculative(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/tree/TreeCopier;Ljava/util/function/Function;Lorg/openjdk/tools/javac/comp/ArgumentAttr$LocalCacheContext;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    return-object p1
.end method

.method public attribSpeculative(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/tree/TreeCopier;Ljava/util/function/Function;Lorg/openjdk/tools/javac/comp/ArgumentAttr$LocalCacheContext;)Lorg/openjdk/tools/javac/tree/JCTree;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;",
            "Lorg/openjdk/tools/javac/tree/TreeCopier<",
            "TZ;>;",
            "Ljava/util/function/Function<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;",
            ">;",
            "Lorg/openjdk/tools/javac/comp/ArgumentAttr$LocalCacheContext;",
            ")",
            "Lorg/openjdk/tools/javac/tree/JCTree;"
        }
    .end annotation

    .line 3
    invoke-virtual {p4, p1}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    .line 4
    iget-object p4, p2, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    move-object v0, p4

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    move-object v1, p4

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    check-cast p4, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object p4, p4, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object p4, p4, Lorg/openjdk/tools/javac/code/Scope;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v1, p4}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->dupUnshared(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object p4

    invoke-virtual {v0, p4}, Lorg/openjdk/tools/javac/comp/AttrContext;->dup(Lorg/openjdk/tools/javac/code/Scope$WriteableScope;)Lorg/openjdk/tools/javac/comp/AttrContext;

    move-result-object p4

    invoke-virtual {p2, p1, p4}, Lorg/openjdk/tools/javac/comp/Env;->dup(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object p4

    .line 5
    iget-object v0, p4, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->isSpeculative:Z

    .line 6
    invoke-interface {p5, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;

    .line 7
    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-virtual {v0, p1, p4, p3}, Lorg/openjdk/tools/javac/comp/Attr;->attribTree(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    new-instance p3, Lorg/openjdk/tools/javac/comp/DeferredAttr$UnenterScanner;

    iget-object p2, p2, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object p2, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-direct {p3, p0, p2}, Lorg/openjdk/tools/javac/comp/DeferredAttr$UnenterScanner;-><init>(Lorg/openjdk/tools/javac/comp/DeferredAttr;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V

    invoke-virtual {p3, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    .line 9
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2, p5}, Lorg/openjdk/tools/javac/util/Log;->popDiagnosticHandler(Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;)V

    if-eqz p6, :cond_0

    .line 10
    invoke-virtual {p6}, Lorg/openjdk/tools/javac/comp/ArgumentAttr$LocalCacheContext;->leave()V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p3

    .line 11
    new-instance p4, Lorg/openjdk/tools/javac/comp/DeferredAttr$UnenterScanner;

    iget-object p2, p2, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object p2, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-direct {p4, p0, p2}, Lorg/openjdk/tools/javac/comp/DeferredAttr$UnenterScanner;-><init>(Lorg/openjdk/tools/javac/comp/DeferredAttr;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V

    invoke-virtual {p4, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    .line 12
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1, p5}, Lorg/openjdk/tools/javac/util/Log;->popDiagnosticHandler(Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;)V

    if-eqz p6, :cond_1

    .line 13
    invoke-virtual {p6}, Lorg/openjdk/tools/javac/comp/ArgumentAttr$LocalCacheContext;->leave()V

    .line 14
    :cond_1
    throw p3
.end method

.method public attribSpeculativeLambda(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;",
            ")",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->params:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->getBodyKind()Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;

    move-result-object v1

    sget-object v2, Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;->EXPRESSION:Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->body:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Return(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->body:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    const-wide/16 v2, 0x0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Block(JLorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-virtual {v1, p1, p2}, Lorg/openjdk/tools/javac/comp/Attr;->lambdaEnv(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object p1

    :try_start_0
    iget-object v1, p1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iput-object p3, v1, Lorg/openjdk/tools/javac/comp/AttrContext;->returnResult:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    invoke-virtual {p0, v0, p1, p3}, Lorg/openjdk/tools/javac/comp/DeferredAttr;->attribSpeculative(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p3

    check-cast p3, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->getStatements()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/openjdk/tools/javac/comp/W;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/comp/W;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/openjdk/tools/javac/comp/X;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/comp/X;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->collector()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->getStatements()Lorg/openjdk/tools/javac/util/List;

    move-result-object p3

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->RETURN:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p3, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast p3, Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;

    iget-object p3, p3, Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_2

    :cond_1
    :goto_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-virtual {v1, v0, p3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Lambda(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;

    move-result-object p3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-virtual {v0, p3}, Lorg/openjdk/tools/javac/comp/Attr;->preFlow(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->flow:Lorg/openjdk/tools/javac/comp/Flow;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    const/4 v2, 0x0

    invoke-virtual {v0, p2, p3, v1, v2}, Lorg/openjdk/tools/javac/comp/Flow;->analyzeLambda(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;Lorg/openjdk/tools/javac/tree/TreeMaker;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->leave()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    return-object p3

    :goto_2
    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->leave()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    throw p2
.end method
