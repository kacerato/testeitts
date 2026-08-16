.class Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;
.super Lorg/openjdk/tools/javac/comp/DeferredAttr$PolyScanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MostSpecificFunctionReturnChecker"
.end annotation


# instance fields
.field result:Z

.field final sRet:Lorg/openjdk/tools/javac/code/Type;

.field final tRet:Lorg/openjdk/tools/javac/code/Type;

.field final synthetic this$2:Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->this$2:Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/DeferredAttr$PolyScanner;-><init>()V

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->tRet:Lorg/openjdk/tools/javac/code/Type;

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->sRet:Lorg/openjdk/tools/javac/code/Type;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->result:Z

    return-void
.end method

.method public static synthetic access$700(Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->asExpr(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p0

    return-object p0
.end method

.method private asExpr(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->DEFERRED:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    check-cast v0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->this$2:Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Resolve$MethodCheckContext;->deferredAttrContext:Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->speculativeTree(Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->this$2:Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;->this$1:Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck;->this$0:Lorg/openjdk/tools/javac/comp/Resolve;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Resolve;->deferredAttr:Lorg/openjdk/tools/javac/comp/DeferredAttr;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/DeferredAttr;->stuckTree:Lorg/openjdk/tools/javac/tree/JCTree;

    if-eq v0, v1, :cond_0

    move-object p1, v0

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    :cond_0
    return-object p1
.end method

.method private lambdaResults(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;)Lorg/openjdk/tools/javac/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;",
            ")",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->getBodyKind()Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;

    move-result-object v0

    sget-object v1, Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;->EXPRESSION:Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->body:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->asExpr(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    new-instance v1, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker$1;

    invoke-direct {v1, p0, v0}, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker$1;-><init>(Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;Lorg/openjdk/tools/javac/util/ListBuffer;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->body:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/comp/DeferredAttr$FilterScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public skip(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->result:Z

    return-void
.end method

.method public visitConditional(Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->truepart:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->asExpr(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/DeferredAttr$FilterScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->falsepart:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->asExpr(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/DeferredAttr$FilterScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitLambda(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;)V
    .locals 5

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->sRet:Lorg/openjdk/tools/javac/code/Type;

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->VOID:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->result:Z

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->result:Z

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->tRet:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->result:Z

    goto/16 :goto_4

    :cond_1
    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->lambdaResults(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->this$2:Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->tRet:Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->sRet:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v0, v2, v3}, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;->access$500(Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-boolean v1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->result:Z

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->this$2:Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->tRet:Lorg/openjdk/tools/javac/code/Type;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->sRet:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v2, v3, v4, v0}, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;->access$600(Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v0

    and-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->result:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->tRet:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isPrimitive()Z

    move-result v0

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->sRet:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->isPrimitive()Z

    move-result v2

    if-eq v0, v2, :cond_5

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;->isStandalone()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    iget-boolean v2, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->result:Z

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->tRet:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/code/Type;->isPrimitive()Z

    move-result v4

    if-ne v0, v4, :cond_4

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->sRet:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/code/Type;->isPrimitive()Z

    move-result v4

    if-eq v0, v4, :cond_4

    goto :goto_3

    :cond_4
    move v3, v1

    :goto_3
    and-int v0, v2, v3

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->result:Z

    goto :goto_1

    :cond_5
    iget-boolean p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->result:Z

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->this$2:Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->tRet:Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->sRet:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v0, v1, v2}, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;->access$400(Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    and-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->result:Z

    :cond_6
    :goto_4
    return-void
.end method

.method public visitParens(Lorg/openjdk/tools/javac/tree/JCTree$JCParens;)V
    .locals 0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCParens;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->asExpr(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/DeferredAttr$FilterScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitReference(Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;)V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->sRet:Lorg/openjdk/tools/javac/code/Type;

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->VOID:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->result:Z

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->result:Z

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->tRet:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->result:Z

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->tRet:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isPrimitive()Z

    move-result v0

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->sRet:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->isPrimitive()Z

    move-result v2

    if-eq v0, v2, :cond_4

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->refPolyKind:Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;

    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;->STANDALONE:Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression$PolyKind;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMemberReference;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->isPrimitive()Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v3

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_0
    iget-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->result:Z

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->tRet:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->isPrimitive()Z

    move-result v2

    if-ne p1, v2, :cond_3

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->sRet:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->isPrimitive()Z

    move-result v2

    if-eq p1, v2, :cond_3

    move v1, v3

    :cond_3
    and-int p1, v0, v1

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->result:Z

    goto :goto_1

    :cond_4
    iget-boolean p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->result:Z

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->this$2:Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->tRet:Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->sRet:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v0, v1, v2}, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;->access$400(Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    and-int/2addr p1, v0

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/comp/Resolve$MostSpecificCheck$MostSpecificCheckContext$MostSpecificFunctionReturnChecker;->result:Z

    :goto_1
    return-void
.end method
