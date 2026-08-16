.class Lorg/openjdk/tools/javac/comp/ArgumentAttr$ConditionalType;
.super Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/ArgumentAttr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ConditionalType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType<",
        "Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/ArgumentAttr;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;",
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

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ConditionalType;-><init>(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;",
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ConditionalType;->this$0:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    .line 3
    invoke-direct/range {p0 .. p5}, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;-><init>(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public dup(Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)",
            "Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v6, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ConditionalType;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ConditionalType;->this$0:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;->speculativeTree:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-object v4, v0

    check-cast v4, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;->speculativeTypes:Ljava/util/Map;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ConditionalType;-><init>(Lorg/openjdk/tools/javac/comp/ArgumentAttr;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;Ljava/util/Map;)V

    return-object v6
.end method

.method public bridge synthetic dup(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;
    .locals 0

    .line 1
    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ConditionalType;->dup(Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;

    move-result-object p1

    return-object p1
.end method

.method public overloadCheck(Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredAttrContext;)Lorg/openjdk/tools/javac/code/Type;
    .locals 4

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ConditionalType;->this$0:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    invoke-static {p2}, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->access$100(Lorg/openjdk/tools/javac/comp/ArgumentAttr;)Lorg/openjdk/tools/javac/comp/Attr;

    move-result-object p2

    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/comp/Attr;->conditionalContext(Lorg/openjdk/tools/javac/comp/Check$CheckContext;)Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->dup(Lorg/openjdk/tools/javac/comp/Check$CheckContext;)Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;

    move-result-object p2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;->speculativeTree:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree$JCPolyExpression;->isStandalone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;->speculativeTree:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-object v0, p1

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p2, p1, v0}, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->check(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pt:Lorg/openjdk/tools/javac/code/Type;

    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->VOID:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p2, p1, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->checkContext:Lorg/openjdk/tools/javac/comp/Check$CheckContext;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/DeferredAttr$DeferredType;->tree:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ConditionalType;->this$0:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->access$100(Lorg/openjdk/tools/javac/comp/ArgumentAttr;)Lorg/openjdk/tools/javac/comp/Attr;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Attr;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "conditional.target.cant.be.void"

    invoke-virtual {v1, v3, v2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lorg/openjdk/tools/javac/comp/Check$CheckContext;->report(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ConditionalType;->this$0:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    invoke-static {p2}, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->access$100(Lorg/openjdk/tools/javac/comp/ArgumentAttr;)Lorg/openjdk/tools/javac/comp/Attr;

    move-result-object p2

    iget-object p2, p2, Lorg/openjdk/tools/javac/comp/Attr;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pt:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ConditionalType;->this$0:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;->speculativeTree:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->truepart:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p1, v0, p2}, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->checkSpeculative(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ConditionalType;->this$0:Lorg/openjdk/tools/javac/comp/ArgumentAttr;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/ArgumentAttr$ArgumentType;->speculativeTree:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCConditional;->falsepart:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p1, v0, p2}, Lorg/openjdk/tools/javac/comp/ArgumentAttr;->checkSpeculative(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;)Lorg/openjdk/tools/javac/code/Type;

    iget-object p1, p2, Lorg/openjdk/tools/javac/comp/Attr$ResultInfo;->pt:Lorg/openjdk/tools/javac/code/Type;

    return-object p1
.end method
