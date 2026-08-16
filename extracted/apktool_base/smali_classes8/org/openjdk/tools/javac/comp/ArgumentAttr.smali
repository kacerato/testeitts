.class public Lorg/openjdk/tools/javac/comp/ArgumentAttr;
.super Lorg/openjdk/tools/javac/tree/JCTree$Visitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/comp/ArgumentAttr$UniquePos;,
        Lorg/openjdk/tools/javac/comp/ArgumentAttr$ResolvedConstructorType;,
        Lorg/openjdk/tools/javac/comp/ArgumentAttr$ResolvedMethodType;,
        Lorg/openjdk/tools/javac/comp/ArgumentAttr$ResolvedMemberType;,
        Lorg/openjdk/tools/javac/comp/ArgumentAttr$ExplicitLambdaType;,
        Lorg/openjdk/tools/javac/comp/ArgumentAttr$ConditionalType;,
        Lorg/openjdk/tools/javac/comp/ArgumentAttr$ParensType;,
        Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;,
        Lorg/openjdk/tools/javac/comp/ArgumentAttr$LocalCacheContext;
    }
.end annotation


# static fields
.field protected static final methodAttrKey:Lorg/openjdk/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "Lorg/openjdk/tools/javac/comp/ArgumentAttr;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field argumentTypeCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/comp/ArgumentAttr$UniquePos;",
            "Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final attr:Lorg/openjdk/tools/javac/comp/Attr;

.field private final deferredAttr:Lorg/openjdk/tools/javac/comp/DeferredAttr;

.field private env:Lorg/openjdk/tools/javac/comp/Env;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation
.end field

.field private final log:Lorg/openjdk/tools/javac/util/Log;

.field result:Lorg/openjdk/tools/javac/code/Type;

.field private final syms:Lorg/openjdk/tools/javac/code/Symtab;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->methodAttrKey:Lorg/openjdk/tools/javac/util/Context$Key;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 1

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->argumentTypeCache:Ljava/util/Map;

    sget-object v0, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->methodAttrKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/DeferredAttr;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/DeferredAttr;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->deferredAttr:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Attr;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Attr;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Symtab;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Log;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->log:Lorg/openjdk/tools/javac/util/Log;

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;)Lorg/openjdk/tools/javac/comp/ArgumentAttr$ExplicitLambdaType;
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->lambda$visitLambda$3(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;)Lorg/openjdk/tools/javac/comp/ArgumentAttr$ExplicitLambdaType;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000(Lorg/openjdk/tools/javac/comp/ArgumentAttr;)Lorg/openjdk/tools/javac/comp/DeferredAttr;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->deferredAttr:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/openjdk/tools/javac/comp/ArgumentAttr;)Lorg/openjdk/tools/javac/comp/Attr;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/openjdk/tools/javac/comp/ArgumentAttr;)Lorg/openjdk/tools/javac/code/Symtab;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    return-object p0
.end method

.method public static synthetic access$300(Lorg/openjdk/tools/javac/comp/ArgumentAttr;)Lorg/openjdk/tools/javac/util/Log;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->log:Lorg/openjdk/tools/javac/util/Log;

    return-object p0
.end method

.method public static synthetic b(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCParens;Lorg/openjdk/tools/javac/tree/JCTree$JCParens;)Lorg/openjdk/tools/javac/comp/ArgumentAttr$ParensType;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->lambda$visitParens$1(Lorg/openjdk/tools/javac/tree/JCTree$JCParens;Lorg/openjdk/tools/javac/tree/JCTree$JCParens;)Lorg/openjdk/tools/javac/comp/ArgumentAttr$ParensType;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;)Lorg/openjdk/tools/javac/comp/ArgumentAttr$ResolvedMethodType;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->lambda$visitApply$4(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;)Lorg/openjdk/tools/javac/comp/ArgumentAttr$ResolvedMethodType;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/ArgumentAttr$UniquePos;Ljava/util/function/Function;)Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->lambda$processArg$0(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/ArgumentAttr$UniquePos;Ljava/util/function/Function;)Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;)Lorg/openjdk/tools/javac/comp/ArgumentAttr$ConditionalType;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->lambda$visitConditional$2(Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;)Lorg/openjdk/tools/javac/comp/ArgumentAttr$ConditionalType;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;)Lorg/openjdk/tools/javac/comp/ArgumentAttr$ResolvedConstructorType;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->lambda$visitNewClass$5(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;)Lorg/openjdk/tools/javac/comp/ArgumentAttr$ResolvedConstructorType;

    move-result-object p0

    return-object p0
.end method

.method public static instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/ArgumentAttr;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->methodAttrKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Lorg/openjdk/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/ArgumentAttr;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    :cond_0
    return-object v0
.end method

.method private synthetic lambda$processArg$0(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/ArgumentAttr$UniquePos;Ljava/util/function/Function;)Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->deferredAttr:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->env:Lorg/openjdk/tools/javac/comp/Env;

    new-instance v2, Lorg/openjdk/tools/javac/comp/ArgumentAttr$1;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, p0, v3, p2}, Lorg/openjdk/tools/javac/comp/ArgumentAttr$1;-><init>(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/comp/Attr;Lorg/openjdk/tools/javac/comp/ArgumentAttr$UniquePos;)V

    invoke-virtual {v0, p1, v1, v2}, Lorg/openjdk/tools/javac/comp/DeferredAttr;->attribSpeculative(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-interface {p3, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;

    return-object p1
.end method

.method private synthetic lambda$visitApply$4(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;)Lorg/openjdk/tools/javac/comp/ArgumentAttr$ResolvedMethodType;
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ResolvedMethodType;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-direct {v0, p0, p1, v1, p2}, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ResolvedMethodType;-><init>(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;)V

    return-object v0
.end method

.method private synthetic lambda$visitConditional$2(Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;)Lorg/openjdk/tools/javac/comp/ArgumentAttr$ConditionalType;
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ConditionalType;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-direct {v0, p0, p1, v1, p2}, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ConditionalType;-><init>(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;)V

    return-object v0
.end method

.method private synthetic lambda$visitLambda$3(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;)Lorg/openjdk/tools/javac/comp/ArgumentAttr$ExplicitLambdaType;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->deferredAttr:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/Attr;->methodAttrInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    invoke-virtual {v0, p1, v1, v2}, Lorg/openjdk/tools/javac/comp/DeferredAttr;->attribSpeculativeLambda(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;

    move-result-object v0

    new-instance v1, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ExplicitLambdaType;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-direct {v1, p0, p1, v2, v0}, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ExplicitLambdaType;-><init>(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;)V

    return-object v1
.end method

.method private synthetic lambda$visitNewClass$5(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;)Lorg/openjdk/tools/javac/comp/ArgumentAttr$ResolvedConstructorType;
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ResolvedConstructorType;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-direct {v0, p0, p1, v1, p2}, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ResolvedConstructorType;-><init>(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;)V

    return-object v0
.end method

.method private synthetic lambda$visitParens$1(Lorg/openjdk/tools/javac/tree/JCTree$JCParens;Lorg/openjdk/tools/javac/tree/JCTree$JCParens;)Lorg/openjdk/tools/javac/comp/ArgumentAttr$ParensType;
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ParensType;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-direct {v0, p0, p1, v1, p2}, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ParensType;-><init>(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCParens;)V

    return-object v0
.end method


# virtual methods
.method public attribArg(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->env:Lorg/openjdk/tools/javac/comp/Env;

    :try_start_0
    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/tree/JCTree;->accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->result:Lorg/openjdk/tools/javac/code/Type;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->env:Lorg/openjdk/tools/javac/comp/Env;

    return-object p1

    :catchall_0
    move-exception p1

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->env:Lorg/openjdk/tools/javac/comp/Env;

    throw p1
.end method

.method public checkSpeculative(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    .line 1
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1, v0, p2}, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->checkSpeculative(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public checkSpeculative(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;
    .locals 1

    .line 2
    sget-object v0, Lorg/openjdk/tools/javac/code/TypeTag;->DEFERRED:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    check-cast p2, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;

    invoke-virtual {p2, p3}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->check(Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p3, p1, p2}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->check(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1
.end method

.method public processArg(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Ljava/util/function/Function;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Z:",
            "Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType<",
            "TT;>;>(TT;",
            "Ljava/util/function/Function<",
            "TT;TZ;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$UniquePos;

    invoke-direct {v0, p0, p1}, Lorg/openjdk/tools/javac/comp/ArgumentAttr$UniquePos;-><init>(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree;)V

    .line 2
    new-instance v1, Lorg/openjdk/tools/javac/comp/s;

    invoke-direct {v1, p0, p1, v0, p2}, Lorg/openjdk/tools/javac/comp/s;-><init>(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/ArgumentAttr$UniquePos;Ljava/util/function/Function;)V

    invoke-virtual {p0, p1, v1}, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->processArg(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Ljava/util/function/Supplier;)V

    return-void
.end method

.method public processArg(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Ljava/util/function/Supplier;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Z:",
            "Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType<",
            "TT;>;>(TT;",
            "Ljava/util/function/Supplier<",
            "TZ;>;)V"
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$UniquePos;

    invoke-direct {v0, p0, p1}, Lorg/openjdk/tools/javac/comp/ArgumentAttr$UniquePos;-><init>(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree;)V

    .line 4
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->argumentTypeCache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;

    if-eqz v1, :cond_0

    .line 5
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {v1, p1, p2}, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;->dup(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->setResult(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;

    .line 7
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->argumentTypeCache:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->setResult(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)V

    :goto_0
    return-void
.end method

.method public setResult(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 1

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->result:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-boolean v0, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->isSpeculative:Z

    if-eqz v0, :cond_0

    iput-object p2, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    :cond_0
    return-void
.end method

.method public visitApply(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;)V
    .locals 3

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->getTypeArguments()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/comp/r;

    invoke-direct {v0, p0, p1}, Lorg/openjdk/tools/javac/comp/r;-><init>(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;)V

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->processArg(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Ljava/util/function/Function;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Attr;->unknownExprInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    invoke-virtual {v0, p1, v1, v2}, Lorg/openjdk/tools/javac/comp/Attr;->attribTree(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->setResult(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)V

    :goto_0
    return-void
.end method

.method public visitConditional(Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;)V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/comp/q;

    invoke-direct {v0, p0, p1}, Lorg/openjdk/tools/javac/comp/q;-><init>(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;)V

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->processArg(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Ljava/util/function/Function;)V

    return-void
.end method

.method public visitLambda(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;)V
    .locals 3

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->paramKind:Lorg/openjdk/tools/javac/tree/JCTree$JCLambda$ParameterKind;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda$ParameterKind;->EXPLICIT:Lorg/openjdk/tools/javac/tree/JCTree$JCLambda$ParameterKind;

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/comp/o;

    invoke-direct {v0, p0, p1}, Lorg/openjdk/tools/javac/comp/o;-><init>(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;)V

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->processArg(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Ljava/util/function/Supplier;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->deferredAttr:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-direct {v0, v1, p1, v2}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;-><init>(Lorg/openjdk/tools/javac/comp/DeferredAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;)V

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->setResult(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)V

    :goto_0
    return-void
.end method

.method public visitNewClass(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;)V
    .locals 3

    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isDiamond(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/comp/t;

    invoke-direct {v0, p0, p1}, Lorg/openjdk/tools/javac/comp/t;-><init>(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;)V

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->processArg(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Ljava/util/function/Function;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Attr;->unknownExprInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    invoke-virtual {v0, p1, v1, v2}, Lorg/openjdk/tools/javac/comp/Attr;->attribTree(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->setResult(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)V

    :goto_0
    return-void
.end method

.method public visitParens(Lorg/openjdk/tools/javac/tree/JCTree$JCParens;)V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/comp/p;

    invoke-direct {v0, p0, p1}, Lorg/openjdk/tools/javac/comp/p;-><init>(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCParens;)V

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->processArg(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Ljava/util/function/Function;)V

    return-void
.end method

.method public visitReference(Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;)V
    .locals 7

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/comp/Env;->dup(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->deferredAttr:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->getQualifierExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-virtual {v2, p1}, Lorg/openjdk/tools/javac/comp/Attr;->memberReferenceQualifierResult(Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;)Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    move-result-object v2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->withLocalCacheContext()Lorg/openjdk/tools/javac/comp/ArgumentAttr$LocalCacheContext;

    move-result-object v4

    invoke-virtual {v0, v1, v3, v2, v4}, Lorg/openjdk/tools/javac/comp/DeferredAttr;->attribSpeculative(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/comp/ArgumentAttr$LocalCacheContext;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    new-instance v1, Lorg/openjdk/tools/javac/tree/TreeCopier;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/Attr;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-direct {v1, v2}, Lorg/openjdk/tools/javac/tree/TreeCopier;-><init>(Lorg/openjdk/tools/javac/tree/TreeMaker;)V

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    iput-object v0, v4, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbol(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    iget-object v2, v3, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/comp/AttrContext;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v5, v1, Lorg/openjdk/tools/javac/util/Name;->table:Lorg/openjdk/tools/javac/util/Name$Table;

    iget-object v5, v5, Lorg/openjdk/tools/javac/util/Name$Table;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v5, v5, Lorg/openjdk/tools/javac/util/Names;->_super:Lorg/openjdk/tools/javac/util/Name;

    if-ne v1, v5, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v2, Lorg/openjdk/tools/javac/comp/AttrContext;->selectSuper:Z

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Attr;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v5, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v6, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->name:Lorg/openjdk/tools/javac/util/Name;

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lorg/openjdk/tools/javac/comp/Resolve;->getMemberReference(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Kinds$Kind;->isResolutionError()Z

    move-result v2

    if-nez v2, :cond_1

    iput-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    :cond_1
    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Kinds$Kind;->isResolutionTargetError()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    if-eqz v2, :cond_2

    sget-object v3, Lorg/openjdk/tools/javac/code/TypeTag;->FORALL:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_2
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v1

    const-wide v3, 0x400000000L

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Name;->table:Lorg/openjdk/tools/javac/util/Name$Table;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Name$Table;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isStaticSelector(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/Names;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->isRaw()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->ARRAY:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$OverloadKind;->UNOVERLOADED:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$OverloadKind;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->setOverloadKind(Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$OverloadKind;)V

    goto :goto_2

    :cond_4
    :goto_1
    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$OverloadKind;->OVERLOADED:Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$OverloadKind;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->setOverloadKind(Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$OverloadKind;)V

    :goto_2
    new-instance v0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->deferredAttr:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-direct {v0, v1, p1, v2}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;-><init>(Lorg/openjdk/tools/javac/comp/DeferredAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;)V

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->setResult(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Type;)V

    return-void
.end method

.method public visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Attr;->result:Lorg/openjdk/tools/javac/code/Type;

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->result:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method

.method public withLocalCacheContext()Lorg/openjdk/tools/javac/comp/ArgumentAttr$LocalCacheContext;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$LocalCacheContext;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/ArgumentAttr$LocalCacheContext;-><init>(Lorg/openjdk/tools/javac/comp/ArgumentAttr;)V

    return-object v0
.end method
