.class Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;
.super Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AliveAnalyzer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer<",
        "Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$PendingExit;",
        ">;"
    }
.end annotation


# instance fields
.field private alive:Z

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Flow;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Flow;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

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
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v1, p1}, Lorg/openjdk/tools/javac/comp/Flow;->access$302(Lorg/openjdk/tools/javac/comp/Flow;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;

    .line 3
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {p1, p3}, Lorg/openjdk/tools/javac/comp/Flow;->access$402(Lorg/openjdk/tools/javac/comp/Flow;Lorg/openjdk/tools/javac/tree/TreeMaker;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    .line 4
    new-instance p1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {p1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->alive:Z

    .line 6
    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    .line 8
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {p1, v0}, Lorg/openjdk/tools/javac/comp/Flow;->access$402(Lorg/openjdk/tools/javac/comp/Flow;Lorg/openjdk/tools/javac/tree/TreeMaker;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    return-void

    :catchall_0
    move-exception p1

    .line 9
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    .line 10
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {p2, v0}, Lorg/openjdk/tools/javac/comp/Flow;->access$402(Lorg/openjdk/tools/javac/comp/Flow;Lorg/openjdk/tools/javac/tree/TreeMaker;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    .line 11
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

    invoke-virtual {p0, p1, v0, p2}, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->analyzeTree(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/TreeMaker;)V

    return-void
.end method

.method public markDead()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->alive:Z

    return-void
.end method

.method public scanDef(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 3

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->scanStat(Lorg/openjdk/tools/javac/tree/JCTree;)V

    if-eqz p1, :cond_0

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->BLOCK:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->alive:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Flow;->access$100(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "initializer.must.be.able.to.complete.normally"

    invoke-virtual {v0, p1, v2, v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public scanStat(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 4

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->alive:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Flow;->access$100(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "unreachable.stmt"

    invoke-virtual {v0, v1, v3, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->SKIP:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->alive:Z

    :cond_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public scanStats(Lorg/openjdk/tools/javac/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "+",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->scanStat(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public visitApply(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method

.method public visitBlock(Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)V
    .locals 0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->stats:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->scanStats(Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method

.method public visitBreak(Lorg/openjdk/tools/javac/tree/JCTree$JCBreak;)V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$PendingExit;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$PendingExit;-><init>(Lorg/openjdk/tools/javac/tree/JCTree;)V

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->recordExit(Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$PendingExit;)V

    return-void
.end method

.method public visitClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    .locals 11

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->alive:Z

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/Flow;->access$200(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v2

    new-instance v3, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v3}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object v3, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v3}, Lorg/openjdk/tools/javac/comp/Flow;->access$200(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v4

    iget-object v5, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/code/Lint;->augment(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/openjdk/tools/javac/comp/Flow;->access$202(Lorg/openjdk/tools/javac/comp/Flow;Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;

    :try_start_0
    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    :goto_0
    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v4

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x8

    if-eqz v4, :cond_2

    iget-object v4, v3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v4, Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v9, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->METHODDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v4, v9}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v4, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {v4}, Lorg/openjdk/tools/javac/tree/TreeInfo;->flags(Lorg/openjdk/tools/javac/tree/JCTree;)J

    move-result-wide v9

    and-long/2addr v7, v9

    cmp-long v4, v7, v5

    if-eqz v4, :cond_1

    iget-object v4, v3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v4, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v4}, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->scanDef(Lorg/openjdk/tools/javac/tree/JCTree;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_1
    :goto_1
    iget-object v3, v3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_2
    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    :goto_2
    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, v3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v4, Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v9, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->METHODDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v4, v9}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, v3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v4, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {v4}, Lorg/openjdk/tools/javac/tree/TreeInfo;->flags(Lorg/openjdk/tools/javac/tree/JCTree;)J

    move-result-wide v9

    and-long/2addr v9, v7

    cmp-long v4, v9, v5

    if-nez v4, :cond_3

    iget-object v4, v3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v4, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v4}, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->scanDef(Lorg/openjdk/tools/javac/tree/JCTree;)V

    :cond_3
    iget-object v3, v3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_2

    :cond_4
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    :goto_3
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v4, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->METHODDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    :cond_5
    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :cond_6
    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->alive:Z

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {p1, v2}, Lorg/openjdk/tools/javac/comp/Flow;->access$202(Lorg/openjdk/tools/javac/comp/Flow;Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;

    return-void

    :goto_4
    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->alive:Z

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v0, v2}, Lorg/openjdk/tools/javac/comp/Flow;->access$202(Lorg/openjdk/tools/javac/comp/Flow;Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;

    throw p1
.end method

.method public visitContinue(Lorg/openjdk/tools/javac/tree/JCTree$JCContinue;)V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$PendingExit;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$PendingExit;-><init>(Lorg/openjdk/tools/javac/tree/JCTree;)V

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->recordExit(Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$PendingExit;)V

    return-void
.end method

.method public visitDoLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCDoWhileLoop;)V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCDoWhileLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->scanStat(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-boolean v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->alive:Z

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->resolveContinues(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->alive:Z

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCDoWhileLoop;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-boolean v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->alive:Z

    if-eqz v1, :cond_0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCDoWhileLoop;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->isTrue()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->alive:Z

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->resolveBreaks(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/ListBuffer;)Z

    move-result p1

    or-int/2addr p1, v1

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->alive:Z

    return-void
.end method

.method public visitForLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;)V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->init:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->scanStats(Lorg/openjdk/tools/javac/util/List;)V

    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->isFalse()Z

    move-result v1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->alive:Z

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->alive:Z

    :goto_0
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->scanStat(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-boolean v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->alive:Z

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->resolveContinues(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v3

    or-int/2addr v1, v3

    iput-boolean v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->alive:Z

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->step:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->resolveBreaks(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/ListBuffer;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->isTrue()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_1
    iput-boolean v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->alive:Z

    return-void
.end method

.method public visitForeachLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;)V
    .locals 3

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->var:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->visitVarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->scanStat(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-boolean v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->alive:Z

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->resolveContinues(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->alive:Z

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->resolveBreaks(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/ListBuffer;)Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->alive:Z

    return-void
.end method

.method public visitIf(Lorg/openjdk/tools/javac/tree/JCTree$JCIf;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;->thenpart:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->scanStat(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;->elsepart:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->alive:Z

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->alive:Z

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->scanStat(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-boolean p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->alive:Z

    or-int/2addr p1, v1

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->alive:Z

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->alive:Z

    :goto_0
    return-void
.end method

.method public visitLabelled(Lorg/openjdk/tools/javac/tree/JCTree$JCLabeledStatement;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLabeledStatement;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->scanStat(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-boolean v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->alive:Z

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->resolveBreaks(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/ListBuffer;)Z

    move-result p1

    or-int/2addr p1, v1

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->alive:Z

    return-void
.end method

.method public visitLambda(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;)V
    .locals 3

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-boolean v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->alive:Z

    :try_start_0
    new-instance v2, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object v2, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->alive:Z

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->body:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->scanStat(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-boolean v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->alive:Z

    iput-boolean v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->canCompleteNormally:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iput-boolean v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->alive:Z

    return-void

    :catchall_0
    move-exception p1

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iput-boolean v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->alive:Z

    throw p1
.end method

.method public visitMethodDef(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;)V
    .locals 4

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Flow;->access$200(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/Flow;->access$200(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v2

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Lint;->augment(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/openjdk/tools/javac/comp/Flow;->access$202(Lorg/openjdk/tools/javac/comp/Flow;Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->isEmpty()Z

    move-result v1

    invoke-static {v1}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->alive:Z

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->scanStat(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-boolean v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->alive:Z

    if-eqz v1, :cond_1

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    sget-object v2, Lorg/openjdk/tools/javac/code/TypeTag;->VOID:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/Flow;->access$100(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v1

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->diagEndPos(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    const-string v2, "missing.ret.stmt"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    :goto_1
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$PendingExit;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$PendingExit;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->RETURN:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v1

    invoke-static {v1}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {p1, v0}, Lorg/openjdk/tools/javac/comp/Flow;->access$202(Lorg/openjdk/tools/javac/comp/Flow;Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;

    return-void

    :goto_2
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v1, v0}, Lorg/openjdk/tools/javac/comp/Flow;->access$202(Lorg/openjdk/tools/javac/comp/Flow;Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;

    throw p1
.end method

.method public visitModuleDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;)V
    .locals 0

    return-void
.end method

.method public visitNewClass(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->encl:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->args:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->def:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    :cond_0
    return-void
.end method

.method public visitReturn(Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    new-instance v0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$PendingExit;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$PendingExit;-><init>(Lorg/openjdk/tools/javac/tree/JCTree;)V

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->recordExit(Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$PendingExit;)V

    return-void
.end method

.method public visitSwitch(Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;)V
    .locals 9

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;->selector:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;->cases:Lorg/openjdk/tools/javac/util/List;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    iput-boolean v5, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->alive:Z

    iget-object v4, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v4, Lorg/openjdk/tools/javac/tree/JCTree$JCCase;

    iget-object v6, v4, Lorg/openjdk/tools/javac/tree/JCTree$JCCase;->pat:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-nez v6, :cond_0

    move v3, v5

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v6}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    :goto_1
    iget-object v5, v4, Lorg/openjdk/tools/javac/tree/JCTree$JCCase;->stats:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v5}, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->scanStats(Lorg/openjdk/tools/javac/util/List;)V

    iget-boolean v5, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->alive:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v5}, Lorg/openjdk/tools/javac/comp/Flow;->access$200(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v5

    sget-object v6, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->FALLTHROUGH:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/code/Lint;->isEnabled(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v4, v4, Lorg/openjdk/tools/javac/tree/JCTree$JCCase;->stats:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v4}, Lorg/openjdk/tools/javac/comp/Flow;->access$100(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v4

    iget-object v5, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object v5, v5, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v5, Lorg/openjdk/tools/javac/tree/JCTree$JCCase;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v5

    const-string v7, "possible.fall-through.into.case"

    new-array v8, v2, [Ljava/lang/Object;

    invoke-virtual {v4, v6, v5, v7, v8}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    iput-boolean v5, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->alive:Z

    :cond_3
    iget-boolean v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->alive:Z

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->resolveBreaks(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/ListBuffer;)Z

    move-result p1

    or-int/2addr p1, v1

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->alive:Z

    return-void
.end method

.method public visitThrow(Lorg/openjdk/tools/javac/tree/JCTree$JCThrow;)V
    .locals 0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCThrow;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->markDead()V

    return-void
.end method

.method public visitTry(Lorg/openjdk/tools/javac/tree/JCTree$JCTry;)V
    .locals 5

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->resources:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree;

    instance-of v3, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->visitVarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V

    goto :goto_0

    :cond_0
    instance-of v3, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v3, :cond_1

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->scanStat(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-boolean v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->alive:Z

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->catchers:Lorg/openjdk/tools/javac/util/List;

    :goto_1
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    iput-boolean v4, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->alive:Z

    iget-object v3, v2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;->param:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v3, v2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->scanStat(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-boolean v3, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->alive:Z

    or-int/2addr v1, v3

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_1

    :cond_3
    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->finalizer:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    if-eqz v2, :cond_6

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iput-boolean v4, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->alive:Z

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->scanStat(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->alive:Z

    iput-boolean v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->finallyCanCompleteNormally:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Flow;->access$200(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v0

    sget-object v1, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->FINALLY:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Lint;->isEnabled(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Flow;->access$100(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->finalizer:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->diagEndPos(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "finally.cannot.complete"

    invoke-virtual {v0, v1, p1, v3, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/code/Lint$LintCategory;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_4
    :goto_2
    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->nonEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_2

    :cond_5
    iput-boolean v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->alive:Z

    goto :goto_4

    :cond_6
    iput-boolean v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->alive:Z

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    :goto_3
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_3

    :cond_7
    :goto_4
    return-void
.end method

.method public visitVarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V
    .locals 4

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->init:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Flow;->access$200(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/Flow;->access$200(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v2

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Lint;->augment(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/openjdk/tools/javac/comp/Flow;->access$202(Lorg/openjdk/tools/javac/comp/Flow;Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;

    :try_start_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->init:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {p1, v0}, Lorg/openjdk/tools/javac/comp/Flow;->access$202(Lorg/openjdk/tools/javac/comp/Flow;Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v1, v0}, Lorg/openjdk/tools/javac/comp/Flow;->access$202(Lorg/openjdk/tools/javac/comp/Flow;Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public visitWhileLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCWhileLoop;)V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCWhileLoop;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCWhileLoop;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->isFalse()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->alive:Z

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCWhileLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->scanStat(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-boolean v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->alive:Z

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->resolveContinues(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v3

    or-int/2addr v1, v3

    iput-boolean v1, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->alive:Z

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->resolveBreaks(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/ListBuffer;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCWhileLoop;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Type;->isTrue()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    iput-boolean v2, p0, Lorg/openjdk/tools/javac/comp/Flow$AliveAnalyzer;->alive:Z

    return-void
.end method
