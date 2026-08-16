.class Lorg/openjdk/tools/javac/comp/ArgumentAttr$ExplicitLambdaType;
.super Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/ArgumentAttr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExplicitLambdaType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType<",
        "Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;",
        ">;"
    }
.end annotation


# instance fields
.field argtypes:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;>;"
        }
    .end annotation
.end field

.field returnExpressions:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/ArgumentAttr;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ExplicitLambdaType;-><init>(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;",
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ExplicitLambdaType;->this$0:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    .line 3
    invoke-direct/range {p0 .. p5}, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;-><init>(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Ljava/util/Map;)V

    .line 4
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ExplicitLambdaType;->argtypes:Ljava/util/Optional;

    .line 5
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ExplicitLambdaType;->returnExpressions:Ljava/util/Optional;

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/comp/ArgumentAttr$ExplicitLambdaType;)Lorg/openjdk/tools/javac/util/List;
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ExplicitLambdaType;->lambda$returnExpressions$1()Lorg/openjdk/tools/javac/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lorg/openjdk/tools/javac/comp/ArgumentAttr$ExplicitLambdaType;)Lorg/openjdk/tools/javac/util/List;
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ExplicitLambdaType;->lambda$argtypes$0()Lorg/openjdk/tools/javac/util/List;

    move-result-object p0

    return-object p0
.end method

.method private checkLambdaCompatible(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)V
    .locals 6

    iget-object v0, p2, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ExplicitLambdaType;->this$0:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->access$100(Lorg/openjdk/tools/javac/comp/ArgumentAttr;)Lorg/openjdk/tools/javac/comp/Attr;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;->speculativeTree:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;

    invoke-virtual {v1, v2, p1, p2}, Lorg/openjdk/tools/javac/comp/Attr;->lambdaBodyResult(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    move-result-object p2

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ExplicitLambdaType;->returnExpressions()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ExplicitLambdaType;->getReturnType(Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;->speculativeTree:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    check-cast v4, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->getBodyKind()Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;

    move-result-object v4

    sget-object v5, Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;->EXPRESSION:Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;

    if-eq v4, v5, :cond_1

    sget-object v4, Lorg/openjdk/tools/javac/code/TypeTag;->VOID:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v4

    if-nez v4, :cond_0

    :cond_1
    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ExplicitLambdaType;->this$0:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v4, v2, v3, p2}, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->checkSpeculative(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ExplicitLambdaType;->this$0:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    invoke-static {p2}, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->access$100(Lorg/openjdk/tools/javac/comp/ArgumentAttr;)Lorg/openjdk/tools/javac/comp/Attr;

    move-result-object p2

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;->speculativeTree:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;

    invoke-virtual {p2, v1, p1, v0}, Lorg/openjdk/tools/javac/comp/Attr;->checkLambdaCompatible(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Check$CheckContext;)V

    return-void
.end method

.method private synthetic lambda$argtypes$0()Lorg/openjdk/tools/javac/util/List;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;->speculativeTree:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->params:Lorg/openjdk/tools/javac/util/List;

    invoke-static {v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->types(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ExplicitLambdaType;->argtypes:Ljava/util/Optional;

    return-object v0
.end method

.method private synthetic lambda$returnExpressions$1()Lorg/openjdk/tools/javac/util/List;
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;->speculativeTree:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->getBodyKind()Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;

    move-result-object v0

    sget-object v1, Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;->EXPRESSION:Lorg/openjdk/source/tree/LambdaExpressionTree$BodyKind;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ExplicitLambdaType;->this$0:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->access$100(Lorg/openjdk/tools/javac/comp/ArgumentAttr;)Lorg/openjdk/tools/javac/comp/Attr;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Attr;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;->speculativeTree:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->body:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Return(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    new-instance v1, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ExplicitLambdaType$1;

    invoke-direct {v1, p0, v0}, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ExplicitLambdaType$1;-><init>(Lorg/openjdk/tools/javac/comp/ArgumentAttr$ExplicitLambdaType;Lorg/openjdk/tools/javac/util/ListBuffer;)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;->speculativeTree:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->body:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/comp/DeferredAttr$FilterScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ExplicitLambdaType;->returnExpressions:Ljava/util/Optional;

    return-object v0
.end method


# virtual methods
.method public argtypes()Lorg/openjdk/tools/javac/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ExplicitLambdaType;->argtypes:Ljava/util/Optional;

    new-instance v1, Lorg/openjdk/tools/javac/comp/u;

    invoke-direct {v1, p0}, Lorg/openjdk/tools/javac/comp/u;-><init>(Lorg/openjdk/tools/javac/comp/ArgumentAttr$ExplicitLambdaType;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/util/List;

    return-object v0
.end method

.method public bridge synthetic dup(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;
    .locals 0

    .line 1
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ExplicitLambdaType;->dup(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;

    move-result-object p1

    return-object p1
.end method

.method public dup(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)",
            "Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v6, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ExplicitLambdaType;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ExplicitLambdaType;->this$0:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;->speculativeTree:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-object v4, v0

    check-cast v4, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;->speculativeTypes:Ljava/util/Map;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ExplicitLambdaType;-><init>(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;Ljava/util/Map;)V

    return-object v6
.end method

.method public getReturnType(Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;)Lorg/openjdk/tools/javac/code/Type;
    .locals 0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ExplicitLambdaType;->this$0:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->access$200(Lorg/openjdk/tools/javac/comp/ArgumentAttr;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object p1

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->voidType:Lorg/openjdk/tools/javac/code/Type$JCVoidType;

    return-object p1

    :cond_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    return-object p1
.end method

.method public overloadCheck(Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;)Lorg/openjdk/tools/javac/code/Type;
    .locals 2

    :try_start_0
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ExplicitLambdaType;->this$0:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    invoke-static {p2}, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->access$100(Lorg/openjdk/tools/javac/comp/ArgumentAttr;)Lorg/openjdk/tools/javac/comp/Attr;

    move-result-object p2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;->speculativeTree:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ExplicitLambdaType;->argtypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {p2, v0, p1, v1}, Lorg/openjdk/tools/javac/comp/Attr;->getTargetInfo(Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/comp/Attr$TargetInfo;

    move-result-object p2

    iget-object v0, p2, Lorg/openjdk/tools/javac/comp/Attr$TargetInfo;->descriptor:Lorg/openjdk/tools/javac/code/Type;

    iget-object p2, p2, Lorg/openjdk/tools/javac/comp/Attr$TargetInfo;->target:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {p0, v0, p1}, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ExplicitLambdaType;->checkLambdaCompatible(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)V
    :try_end_0
    .catch Lorg/openjdk/tools/javac/code/Types$FunctionDescriptorLookupError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Types$FunctionDescriptorLookupError;->getDiagnostic()Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    return-object v0
.end method

.method public returnExpressions()Lorg/openjdk/tools/javac/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ExplicitLambdaType;->returnExpressions:Ljava/util/Optional;

    new-instance v1, Lorg/openjdk/tools/javac/comp/v;

    invoke-direct {v1, p0}, Lorg/openjdk/tools/javac/comp/v;-><init>(Lorg/openjdk/tools/javac/comp/ArgumentAttr$ExplicitLambdaType;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElseGet(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/util/List;

    return-object v0
.end method
