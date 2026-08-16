.class Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$StructuralStuckChecker;
.super Lorg/openjdk/tools/javac/tree/TreeScanner;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredTypeCompleter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StructuralStuckChecker"
.end annotation


# instance fields
.field env:Lorg/openjdk/tools/javac/comp/Env;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation
.end field

.field inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

.field resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

.field final synthetic this$1:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$StructuralStuckChecker;->this$1:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/TreeScanner;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$StructuralStuckChecker;Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$StructuralStuckChecker;->lambda$canLambdaBodyCompleteNormally$0(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$canLambdaBodyCompleteNormally$0(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$StructuralStuckChecker;->this$1:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Erroneous()Lorg/openjdk/tools/javac/tree/JCTree$JCErroneous;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->VarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public canLambdaBodyCompleteNormally(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;)Z
    .locals 5

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->params:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$StructuralStuckChecker;->this$1:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/DeferredAttr;->argumentAttr:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->withLocalCacheContext()Lorg/openjdk/tools/javac/comp/ArgumentAttr$LocalCacheContext;

    move-result-object v1

    :try_start_0
    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->params:Lorg/openjdk/tools/javac/util/List;

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/openjdk/tools/javac/comp/c0;

    invoke-direct {v3, p0}, Lorg/openjdk/tools/javac/comp/c0;-><init>(Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$StructuralStuckChecker;)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->collector()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/util/List;

    iput-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->params:Lorg/openjdk/tools/javac/util/List;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$StructuralStuckChecker;->this$1:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$StructuralStuckChecker;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v4, v2, Lorg/openjdk/tools/javac/comp/DeferredAttr;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v4, v4, Lorg/openjdk/tools/javac/comp/Attr;->unknownExprInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    invoke-virtual {v2, p1, v3, v4}, Lorg/openjdk/tools/javac/comp/DeferredAttr;->attribSpeculativeLambda(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;

    move-result-object v2

    iget-boolean v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->canCompleteNormally:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/comp/ArgumentAttr$LocalCacheContext;->leave()V

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->params:Lorg/openjdk/tools/javac/util/List;

    return v2

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/comp/ArgumentAttr$LocalCacheContext;->leave()V

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->params:Lorg/openjdk/tools/javac/util/List;

    throw v2
.end method

.method public complete(Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$StructuralStuckChecker;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object p3, p3, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;->inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$StructuralStuckChecker;->inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    iget-object p3, p1, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->env:Lorg/openjdk/tools/javac/comp/Env;

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$StructuralStuckChecker;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object p3, p1, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p3, p0}, Lorg/openjdk/tools/javac/tree/JCTree;->accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->speculativeCache:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType$SpeculativeCache;

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$StructuralStuckChecker;->this$1:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;

    iget-object p3, p3, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    iget-object p3, p3, Lorg/openjdk/tools/javac/comp/DeferredAttr;->stuckTree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p1, p3, p2}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType$SpeculativeCache;->put(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)V

    sget-object p1, Lorg/openjdk/tools/javac/code/Type;->noType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    return-object p1
.end method

.method public visitApply(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;)V
    .locals 0

    return-void
.end method

.method public visitLambda(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;)V
    .locals 8

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$StructuralStuckChecker;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pt:Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$StructuralStuckChecker;->inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/InferenceContext;->inferencevars:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :try_start_0
    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$StructuralStuckChecker;->this$1:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/DeferredAttr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/code/Types;->findDescriptorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0
    :try_end_0
    .catch Lorg/openjdk/tools/javac/code/Types$FunctionDescriptorLookupError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Types$FunctionDescriptorLookupError;->getDiagnostic()Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    move-object v0, v2

    :goto_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v2

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->params:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result v3

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$StructuralStuckChecker;->this$1:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/DeferredAttr;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    const-string v3, "incompatible.arg.types.in.lambda"

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    :cond_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->VOID:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->getBodyKind()Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;

    move-result-object v2

    sget-object v3, Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;->EXPRESSION:Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;

    const-string v5, "missing.ret.val"

    const-string v6, "incompatible.ret.type.in.lambda"

    if-ne v2, v3, :cond_2

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->getBody()Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isExpressionStatement(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$StructuralStuckChecker;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$StructuralStuckChecker;->this$1:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/DeferredAttr;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    goto/16 :goto_2

    :cond_2
    new-instance v2, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$LambdaBodyStructChecker;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$StructuralStuckChecker;->this$1:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;

    invoke-direct {v2, v3}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$LambdaBodyStructChecker;-><init>(Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;)V

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->body:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v3, v2}, Lorg/openjdk/tools/javac/tree/JCTree;->accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V

    iget-boolean v3, v2, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$LambdaBodyStructChecker;->isVoidCompatible:Z

    if-eqz v1, :cond_3

    if-nez v3, :cond_6

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$StructuralStuckChecker;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$StructuralStuckChecker;->this$1:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/DeferredAttr;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    const-string v2, "unexpected.ret.val"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    goto :goto_2

    :cond_3
    iget-boolean v1, v2, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$LambdaBodyStructChecker;->isPotentiallyValueCompatible:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$StructuralStuckChecker;->canLambdaBodyCompleteNormally(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    move v1, v4

    :goto_1
    if-nez v1, :cond_5

    if-nez v3, :cond_5

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$StructuralStuckChecker;->this$1:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/DeferredAttr;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->body:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    const-string v7, "lambda.body.neither.value.nor.void.compatible"

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v7, v4}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    if-nez v1, :cond_6

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$StructuralStuckChecker;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$StructuralStuckChecker;->this$1:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/DeferredAttr;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public visitNewClass(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;)V
    .locals 0

    return-void
.end method

.method public visitReference(Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;)V
    .locals 14

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->getOverloadKind()Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference$OverloadKind;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$StructuralStuckChecker;->resultInfo:Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pt:Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$StructuralStuckChecker;->inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/InferenceContext;->inferencevars:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :try_start_0
    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$StructuralStuckChecker;->this$1:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/DeferredAttr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/code/Types;->findDescriptorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;
    :try_end_0
    .catch Lorg/openjdk/tools/javac/code/Types$FunctionDescriptorLookupError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x0

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Types$FunctionDescriptorLookupError;->getDiagnostic()Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    :goto_0
    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$StructuralStuckChecker;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {v2, p1}, Lorg/openjdk/tools/javac/comp/Env;->dup(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v4

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$StructuralStuckChecker;->this$1:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->getQualifierExpression()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v3

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$StructuralStuckChecker;->this$1:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;

    iget-object v5, v5, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    iget-object v5, v5, Lorg/openjdk/tools/javac/comp/DeferredAttr;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-virtual {v5, p1}, Lorg/openjdk/tools/javac/comp/Attr;->memberReferenceQualifierResult(Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;)Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    move-result-object v5

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$StructuralStuckChecker;->this$1:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;

    iget-object v6, v6, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    iget-object v6, v6, Lorg/openjdk/tools/javac/comp/DeferredAttr;->argumentAttr:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->withLocalCacheContext()Lorg/openjdk/tools/javac/comp/ArgumentAttr$LocalCacheContext;

    move-result-object v6

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/openjdk/tools/javac/comp/DeferredAttr;->attribSpeculative(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/comp/ArgumentAttr$LocalCacheContext;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    new-instance v13, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v13}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$StructuralStuckChecker;->this$1:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/DeferredAttr;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-virtual {v3, v0}, Lorg/openjdk/tools/javac/code/Types;->findDescriptorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getParameterTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/code/Type;

    sget-object v3, Lorg/openjdk/tools/javac/code/Type;->noType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    invoke-virtual {v13, v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_1

    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/tree/TreeCopier;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$StructuralStuckChecker;->this$1:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/DeferredAttr;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-direct {v0, v3}, Lorg/openjdk/tools/javac/tree/TreeCopier;-><init>(Lorg/openjdk/tools/javac/tree/TreeMaker;)V

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/tree/TreeCopier;->copy(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;

    iput-object v2, v5, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$StructuralStuckChecker;->this$1:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v6, v2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v7, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v13}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v8

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v9

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$StructuralStuckChecker;->this$1:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->rs:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v10, v0, Lorg/openjdk/tools/javac/comp/Resolve;->arityMethodCheck:Lorg/openjdk/tools/javac/comp/Resolve$MethodCheck;

    iget-object v11, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$StructuralStuckChecker;->inferenceContext:Lorg/openjdk/tools/javac/comp/InferenceContext;

    iget-object v12, v0, Lorg/openjdk/tools/javac/comp/Resolve;->structuralReferenceChooser:Lorg/openjdk/tools/javac/comp/Resolve$ReferenceChooser;

    invoke-virtual/range {v3 .. v12}, Lorg/openjdk/tools/javac/comp/Resolve;->resolveMemberReference(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Resolve$MethodCheck;Lorg/openjdk/tools/javac/comp/InferenceContext;Lorg/openjdk/tools/javac/comp/Resolve$ReferenceChooser;)Lorg/openjdk/tools/javac/util/Pair;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol;

    sget-object v3, Lorg/openjdk/tools/javac/comp/DeferredAttr$6;->$SwitchMap$com$sun$tools$javac$code$Kinds$Kind:[I

    iget-object v4, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    const/4 v4, 0x4

    if-eq v3, v4, :cond_1

    goto :goto_2

    :cond_1
    move-object v5, v0

    check-cast v5, Lorg/openjdk/tools/javac/comp/Resolve$ResolveError;

    sget-object v6, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;->FRAGMENT:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;

    iget-object v9, v2, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v8, v9, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v10, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v13}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v11

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v12

    move-object v7, p1

    invoke-virtual/range {v5 .. v12}, Lorg/openjdk/tools/javac/comp/Resolve$ResolveError;->getDiagnostic(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticType;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode$StructuralStuckChecker;->this$1:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrNode;->this$0:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/DeferredAttr;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    sget-object v2, Lorg/openjdk/tools/javac/resources/CompilerProperties$Fragments;->IncompatibleArgTypesInMref:Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Lorg/openjdk/tools/javac/util/JCDiagnostic$Fragment;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    :cond_3
    :goto_2
    return-void
.end method
