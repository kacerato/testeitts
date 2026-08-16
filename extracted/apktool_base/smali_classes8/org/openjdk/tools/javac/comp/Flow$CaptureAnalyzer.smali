.class Lorg/openjdk/tools/javac/comp/Flow$CaptureAnalyzer;
.super Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CaptureAnalyzer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer<",
        "Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$PendingExit;",
        ">;"
    }
.end annotation


# instance fields
.field currentTree:Lorg/openjdk/tools/javac/tree/JCTree;

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Flow;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Flow;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$CaptureAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;-><init>()V

    return-void
.end method


# virtual methods
.method public analyzeTree(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/TreeMaker;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/tree/TreeMaker;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$CaptureAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v1, p1}, Lorg/openjdk/tools/javac/comp/Flow;->access$302(Lorg/openjdk/tools/javac/comp/Flow;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;

    .line 3
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$CaptureAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {p1, p3}, Lorg/openjdk/tools/javac/comp/Flow;->access$402(Lorg/openjdk/tools/javac/comp/Flow;Lorg/openjdk/tools/javac/tree/TreeMaker;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    .line 4
    new-instance p1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {p1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    .line 5
    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    .line 7
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$CaptureAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {p1, v0}, Lorg/openjdk/tools/javac/comp/Flow;->access$402(Lorg/openjdk/tools/javac/comp/Flow;Lorg/openjdk/tools/javac/tree/TreeMaker;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    return-void

    :catchall_0
    move-exception p1

    .line 8
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    .line 9
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Flow$CaptureAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {p2, v0}, Lorg/openjdk/tools/javac/comp/Flow;->access$402(Lorg/openjdk/tools/javac/comp/Flow;Lorg/openjdk/tools/javac/tree/TreeMaker;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    .line 10
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

    .line 1
    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, p1, v0, p2}, Lorg/openjdk/tools/javac/comp/Flow$CaptureAnalyzer;->analyzeTree(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/TreeMaker;)V

    return-void
.end method

.method public checkEffectivelyFinal(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)V
    .locals 6

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$CaptureAnalyzer;->currentTree:Lorg/openjdk/tools/javac/tree/JCTree;

    if-eqz v0, :cond_2

    iget-object v1, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v1, v2, :cond_2

    iget v1, p2, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->pos:I

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree;->getStartPosition()I

    move-result v0

    if-ge v1, v0, :cond_2

    sget-object v0, Lorg/openjdk/tools/javac/comp/Flow$1;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$CaptureAnalyzer;->currentTree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x8

    const-wide/16 v2, 0x0

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$CaptureAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Flow;->access$1300(Lorg/openjdk/tools/javac/comp/Flow;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide/16 v4, 0x10

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Flow$CaptureAnalyzer;->reportInnerClsNeedsFinalError(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v0

    const-wide v4, 0x20000000010L

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Flow$CaptureAnalyzer;->reportEffectivelyFinalError(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public letInit(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 4

    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->skipParens(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->IDENT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->SELECT:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbol(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$CaptureAnalyzer;->currentTree:Lorg/openjdk/tools/javac/tree/JCTree;

    if-eqz v1, :cond_3

    iget-object v2, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v2, v3, :cond_3

    iget-object v2, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v2, v3, :cond_3

    move-object v2, v0

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget v2, v2, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->pos:I

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree;->getStartPosition()I

    move-result v1

    if-ge v2, v1, :cond_3

    sget-object v1, Lorg/openjdk/tools/javac/comp/Flow$1;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Flow$CaptureAnalyzer;->currentTree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0x8

    if-eq v1, v2, :cond_1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$CaptureAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/Flow;->access$1300(Lorg/openjdk/tools/javac/comp/Flow;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Flow$CaptureAnalyzer;->reportInnerClsNeedsFinalError(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Flow$CaptureAnalyzer;->reportEffectivelyFinalError(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public markDead()V
    .locals 0

    return-void
.end method

.method public reportEffectivelyFinalError(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$CaptureAnalyzer;->currentTree:Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->LAMBDA:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "lambda"

    goto :goto_0

    :cond_0
    const-string v0, "inner.cls"

    :goto_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$CaptureAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/Flow;->access$100(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Flow$CaptureAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/Flow;->access$1400(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v0, v3}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v0

    filled-new-array {p2, v0}, [Ljava/lang/Object;

    move-result-object p2

    const-string v0, "cant.ref.non.effectively.final.var"

    invoke-virtual {v1, p1, v0, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public reportInnerClsNeedsFinalError(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$CaptureAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Flow;->access$100(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    const-string v1, "local.var.accessed.from.icls.needs.final"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, v1, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public visitAssign(Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->skipParens(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v0

    instance-of v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    :cond_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssign;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Flow$CaptureAnalyzer;->letInit(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitAssignop(Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->rhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;->lhs:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$CaptureAnalyzer;->letInit(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$CaptureAnalyzer;->currentTree:Lorg/openjdk/tools/javac/tree/JCTree;

    :try_start_0
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->isLocal()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$CaptureAnalyzer;->currentTree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$CaptureAnalyzer;->currentTree:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void

    :catchall_0
    move-exception p1

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$CaptureAnalyzer;->currentTree:Lorg/openjdk/tools/javac/tree/JCTree;

    throw p1
.end method

.method public visitIdent(Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;)V
    .locals 3

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v1, v2, :cond_0

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Flow$CaptureAnalyzer;->checkEffectivelyFinal(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;)V

    :cond_0
    return-void
.end method

.method public visitLambda(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$CaptureAnalyzer;->currentTree:Lorg/openjdk/tools/javac/tree/JCTree;

    :try_start_0
    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$CaptureAnalyzer;->currentTree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitLambda(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$CaptureAnalyzer;->currentTree:Lorg/openjdk/tools/javac/tree/JCTree;

    return-void

    :catchall_0
    move-exception p1

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$CaptureAnalyzer;->currentTree:Lorg/openjdk/tools/javac/tree/JCTree;

    throw p1
.end method

.method public visitModuleDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;)V
    .locals 0

    return-void
.end method

.method public visitTry(Lorg/openjdk/tools/javac/tree/JCTree$JCTry;)V
    .locals 7

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->resources:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->VARDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbol(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v3

    const-wide v5, 0x20000000010L

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Flow$CaptureAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v3}, Lorg/openjdk/tools/javac/comp/Flow;->access$100(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v3

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v4, "try.with.resources.expr.effectively.final.var"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v1, v4, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitTry(Lorg/openjdk/tools/javac/tree/JCTree$JCTry;)V

    return-void
.end method

.method public visitUnary(Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;)V
    .locals 2

    sget-object v0, Lorg/openjdk/tools/javac/comp/Flow$1;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;->arg:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;->arg:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;->arg:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$CaptureAnalyzer;->letInit(Lorg/openjdk/tools/javac/tree/JCTree;)V

    :goto_0
    return-void
.end method
