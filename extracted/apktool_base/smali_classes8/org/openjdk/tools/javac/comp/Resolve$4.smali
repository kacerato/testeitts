.class Lorg/openjdk/tools/javac/comp/Resolve$4;
.super Lorg/openjdk/tools/javac/comp/Resolve$AbstractMethodCheck;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Resolve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Resolve;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Resolve;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$4;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Resolve$AbstractMethodCheck;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;)V

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/comp/Resolve$4;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/InferenceContext;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Resolve$4;->lambda$varargsAccessible$0(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/InferenceContext;)V

    return-void
.end method

.method private synthetic lambda$varargsAccessible$0(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/InferenceContext;)V
    .locals 0

    invoke-virtual {p3, p2}, Lorg/openjdk/tools/javac/comp/InferenceContext;->asInstType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Resolve$4;->varargsAccessible(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/InferenceContext;)V

    return-void
.end method

.method private methodCheckResult(ZLorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;Lorg/openjdk/tools/javac/util/Warner;)Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;
    .locals 7

    new-instance v6, Lorg/openjdk/tools/javac/comp/Resolve$4$1;

    iget-object v0, p3, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->phase:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;->isBoxingRequired()Z

    move-result v0

    xor-int/lit8 v2, v0, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v3, p3

    move-object v4, p4

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/Resolve$4$1;-><init>(Lorg/openjdk/tools/javac/comp/Resolve$4;ZLorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;Lorg/openjdk/tools/javac/util/Warner;Z)V

    new-instance p1, Lorg/openjdk/tools/javac/comp/Resolve$MethodResultInfo;

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Resolve$4;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-direct {p1, p3, p2, v6}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResultInfo;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)V

    return-object p1
.end method

.method private varargsAccessible(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/InferenceContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/comp/InferenceContext;",
            ")V"
        }
    .end annotation

    invoke-virtual {p3, p2}, Lorg/openjdk/tools/javac/comp/InferenceContext;->free(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    new-instance v1, Lorg/openjdk/tools/javac/comp/h2;

    invoke-direct {v1, p0, p1, p2}, Lorg/openjdk/tools/javac/comp/h2;-><init>(Lorg/openjdk/tools/javac/comp/Resolve$4;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;)V

    invoke-virtual {p3, v0, v1}, Lorg/openjdk/tools/javac/comp/InferenceContext;->addFreeTypeListener(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Infer$FreeTypeListener;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$4;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v1, p2}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/openjdk/tools/javac/comp/Resolve;->isAccessible(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v1, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;->INACCESSIBLE_VARARGS:Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;

    invoke-static {v0}, Lorg/openjdk/tools/javac/code/Kinds;->kindName(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Kinds$KindName;

    move-result-object v2

    filled-new-array {p2, v2, v0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p3, p2}, Lorg/openjdk/tools/javac/comp/Resolve$AbstractMethodCheck;->reportMC(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckDiag;Lorg/openjdk/tools/javac/comp/InferenceContext;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public argumentsAcceptable(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/Warner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/Warner;",
            ")V"
        }
    .end annotation

    invoke-super/range {p0 .. p5}, Lorg/openjdk/tools/javac/comp/Resolve$AbstractMethodCheck;->argumentsAcceptable(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/Warner;)V

    iget-object p3, p2, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->phase:Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/comp/Resolve$MethodResolutionPhase;->isVarargsRequired()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p2, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->mode:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    sget-object p5, Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;->CHECK:Lorg/openjdk/tools/javac/comp/DeferredAttr$AttrMode;

    if-eq p3, p5, :cond_0

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Resolve$4;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-boolean p3, p3, Lorg/openjdk/tools/javac/comp/Resolve;->checkVarargsAccessAfterResolution:Z

    if-nez p3, :cond_1

    :cond_0
    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Resolve$4;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object p3, p3, Lorg/openjdk/tools/javac/comp/Resolve;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {p4}, Lorg/openjdk/tools/javac/util/List;->last()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p3, p4}, Lorg/openjdk/tools/javac/code/Types;->elemtype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p3

    iget-object p2, p2, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    invoke-direct {p0, p1, p3, p2}, Lorg/openjdk/tools/javac/comp/Resolve$4;->varargsAccessible(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/InferenceContext;)V

    :cond_1
    return-void
.end method

.method public checkArg(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;ZLorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;Lorg/openjdk/tools/javac/util/Warner;)V
    .locals 0

    invoke-direct {p0, p2, p4, p5, p6}, Lorg/openjdk/tools/javac/comp/Resolve$4;->methodCheckResult(ZLorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;Lorg/openjdk/tools/javac/util/Warner;)Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->check(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method

.method public mostSpecificCheck(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/comp/Resolve$MethodCheck;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)",
            "Lorg/openjdk/tools/javac/comp/Resolve$MethodCheck;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve$4;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    invoke-direct {v0, v1, p1}, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;-><init>(Lorg/openjdk/tools/javac/comp/Resolve;Lorg/openjdk/tools/javac/util/List;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "resolveMethodCheck"

    return-object v0
.end method
