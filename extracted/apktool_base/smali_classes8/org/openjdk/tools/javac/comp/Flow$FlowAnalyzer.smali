.class Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;
.super Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Flow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FlowAnalyzer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer$FlowPendingExit;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer<",
        "Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer$FlowPendingExit;",
        ">;"
    }
.end annotation


# instance fields
.field caught:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field

.field classDef:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

.field preciseRethrowTypes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Flow;

.field thrown:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Flow;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;-><init>()V

    return-void
.end method

.method private isExceptionOrThrowable(Lorg/openjdk/tools/javac/code/Type;)Z
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/Flow;->access$800(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->throwableType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-eq v0, v1, :cond_1

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Flow;->access$800(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->exceptionType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
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
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v1, p1}, Lorg/openjdk/tools/javac/comp/Flow;->access$302(Lorg/openjdk/tools/javac/comp/Flow;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;

    .line 3
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {p1, p3}, Lorg/openjdk/tools/javac/comp/Flow;->access$402(Lorg/openjdk/tools/javac/comp/Flow;Lorg/openjdk/tools/javac/tree/TreeMaker;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    .line 4
    new-instance p1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {p1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    .line 5
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->preciseRethrowTypes:Ljava/util/HashMap;

    .line 6
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->caught:Lorg/openjdk/tools/javac/util/List;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->thrown:Lorg/openjdk/tools/javac/util/List;

    .line 7
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->classDef:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    .line 8
    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    .line 10
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {p1, v0}, Lorg/openjdk/tools/javac/comp/Flow;->access$402(Lorg/openjdk/tools/javac/comp/Flow;Lorg/openjdk/tools/javac/tree/TreeMaker;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    .line 11
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->caught:Lorg/openjdk/tools/javac/util/List;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->thrown:Lorg/openjdk/tools/javac/util/List;

    .line 12
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->classDef:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    return-void

    :catchall_0
    move-exception p1

    .line 13
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    .line 14
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {p2, v0}, Lorg/openjdk/tools/javac/comp/Flow;->access$402(Lorg/openjdk/tools/javac/comp/Flow;Lorg/openjdk/tools/javac/tree/TreeMaker;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    .line 15
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->caught:Lorg/openjdk/tools/javac/util/List;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->thrown:Lorg/openjdk/tools/javac/util/List;

    .line 16
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->classDef:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    .line 17
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

    invoke-virtual {p0, p1, v0, p2}, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->analyzeTree(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/TreeMaker;)V

    return-void
.end method

.method public checkCaughtType(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/code/Type;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Flow;->access$500(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object v0

    invoke-virtual {v0, p2, p4}, Lorg/openjdk/tools/javac/comp/Check;->subset(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {p3}, Lorg/openjdk/tools/javac/comp/Flow;->access$100(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object p3

    const-string p4, "except.already.caught"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, p1, p4, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Flow;->access$500(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/comp/Check;->isUnchecked(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->isExceptionOrThrowable(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Flow;->access$500(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/openjdk/tools/javac/comp/Check;->intersects(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {p3}, Lorg/openjdk/tools/javac/comp/Flow;->access$100(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object p3

    const-string p4, "except.never.thrown.in.try"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p3, p1, p4, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Flow;->access$1000(Lorg/openjdk/tools/javac/comp/Flow;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Flow;->access$500(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object v0

    invoke-static {p2}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lorg/openjdk/tools/javac/comp/Check;->intersect(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Flow;->access$500(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lorg/openjdk/tools/javac/comp/Check;->diff(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p4

    invoke-virtual {p4}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->isExceptionOrThrowable(Lorg/openjdk/tools/javac/code/Type;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/util/List;->length()I

    move-result p2

    const/4 p4, 0x1

    if-ne p2, p4, :cond_2

    const-string p2, "unreachable.catch"

    goto :goto_0

    :cond_2
    const-string p2, "unreachable.catch.1"

    :goto_0
    iget-object p4, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {p4}, Lorg/openjdk/tools/javac/comp/Flow;->access$100(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object p4

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p4, p1, p2, p3}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public errorUncaught()V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer$FlowPendingExit;

    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->classDef:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    if-eqz v1, :cond_0

    iget v1, v1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$PendingExit;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    iget v2, v2, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/Flow;->access$100(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v1

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$PendingExit;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer$FlowPendingExit;->thrown:Lorg/openjdk/tools/javac/code/Type;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "unreported.exception.default.constructor"

    invoke-virtual {v1, v2, v3, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$PendingExit;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->VARDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$PendingExit;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;->isResourceVariable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/Flow;->access$100(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v1

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$PendingExit;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer$FlowPendingExit;->thrown:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$PendingExit;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "unreported.exception.implicit.close"

    invoke-virtual {v1, v2, v3, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/Flow;->access$100(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v1

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$PendingExit;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer$FlowPendingExit;->thrown:Lorg/openjdk/tools/javac/code/Type;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v3, "unreported.exception.need.to.catch.or.throw"

    invoke-virtual {v1, v2, v3, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer$FlowPendingExit;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public markDead()V
    .locals 0

    return-void
.end method

.method public markThrown(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Flow;->access$500(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object v0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lorg/openjdk/tools/javac/comp/Check;->isUnchecked(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Flow;->access$500(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->caught:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, p2, v1}, Lorg/openjdk/tools/javac/comp/Check;->isHandled(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    new-instance v1, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer$FlowPendingExit;

    invoke-direct {v1, p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer$FlowPendingExit;-><init>(Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)V

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    :cond_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Flow;->access$500(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->thrown:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p1, p2, v0}, Lorg/openjdk/tools/javac/comp/Check;->incl(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->thrown:Lorg/openjdk/tools/javac/util/List;

    :cond_1
    return-void
.end method

.method public visitApply(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->args:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodInvocation;->meth:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getThrownTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1, v1}, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->markThrown(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)V

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public visitBlock(Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)V
    .locals 0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->stats:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method

.method public visitBreak(Lorg/openjdk/tools/javac/tree/JCTree$JCBreak;)V
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer$FlowPendingExit;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer$FlowPendingExit;-><init>(Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)V

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->recordExit(Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$PendingExit;)V

    return-void
.end method

.method public visitClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, v1, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->classDef:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v3, v1, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->thrown:Lorg/openjdk/tools/javac/util/List;

    iget-object v4, v1, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->caught:Lorg/openjdk/tools/javac/util/List;

    iget-object v5, v1, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v6, v1, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v6}, Lorg/openjdk/tools/javac/comp/Flow;->access$200(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v6

    iget-object v7, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v8, v1, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v8}, Lorg/openjdk/tools/javac/comp/Flow;->access$600(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v8

    iget-object v8, v8, Lorg/openjdk/tools/javac/util/Names;->empty:Lorg/openjdk/tools/javac/util/Name;

    const/4 v10, 0x1

    if-ne v7, v8, :cond_1

    move v7, v10

    goto :goto_0

    :cond_1
    const/4 v7, 0x0

    :goto_0
    new-instance v8, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v8}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object v8, v1, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    if-nez v7, :cond_2

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v8

    iput-object v8, v1, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->caught:Lorg/openjdk/tools/javac/util/List;

    :cond_2
    iput-object v0, v1, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->classDef:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v8

    iput-object v8, v1, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->thrown:Lorg/openjdk/tools/javac/util/List;

    iget-object v8, v1, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v8}, Lorg/openjdk/tools/javac/comp/Flow;->access$200(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v11

    iget-object v12, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v11, v12}, Lorg/openjdk/tools/javac/code/Lint;->augment(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v11

    invoke-static {v8, v11}, Lorg/openjdk/tools/javac/comp/Flow;->access$202(Lorg/openjdk/tools/javac/comp/Flow;Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;

    :try_start_0
    iget-object v8, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    :goto_1
    invoke-virtual {v8}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v11

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x8

    if-eqz v11, :cond_4

    iget-object v11, v8, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v11, Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v9, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->METHODDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v11, v9}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, v8, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v9, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {v9}, Lorg/openjdk/tools/javac/tree/TreeInfo;->flags(Lorg/openjdk/tools/javac/tree/JCTree;)J

    move-result-wide v16

    and-long v14, v16, v14

    cmp-long v9, v14, v12

    if-eqz v9, :cond_3

    iget-object v9, v8, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v9, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v1, v9}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    invoke-virtual/range {p0 .. p0}, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->errorUncaught()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_3
    :goto_2
    iget-object v8, v8, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_1

    :cond_4
    if-nez v7, :cond_7

    iget-object v8, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    :goto_3
    invoke-virtual {v8}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, v8, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v9, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {v9}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isInitialConstructor(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, v8, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v9, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object v9, v9, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v9, v9, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v9}, Lorg/openjdk/tools/javac/code/Type;->getThrownTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v9

    if-eqz v10, :cond_5

    iput-object v9, v1, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->caught:Lorg/openjdk/tools/javac/util/List;

    const/4 v10, 0x0

    goto :goto_4

    :cond_5
    iget-object v11, v1, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v11}, Lorg/openjdk/tools/javac/comp/Flow;->access$500(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object v11

    iget-object v12, v1, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->caught:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v11, v9, v12}, Lorg/openjdk/tools/javac/comp/Check;->intersect(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v9

    iput-object v9, v1, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->caught:Lorg/openjdk/tools/javac/util/List;

    :cond_6
    :goto_4
    iget-object v8, v8, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    const-wide/16 v12, 0x0

    goto :goto_3

    :cond_7
    iget-object v8, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    :goto_5
    invoke-virtual {v8}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, v8, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v9, Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v10, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->METHODDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v9, v10}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v9

    if-nez v9, :cond_8

    iget-object v9, v8, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v9, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {v9}, Lorg/openjdk/tools/javac/tree/TreeInfo;->flags(Lorg/openjdk/tools/javac/tree/JCTree;)J

    move-result-wide v9

    and-long/2addr v9, v14

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-nez v9, :cond_9

    iget-object v9, v8, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v9, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v1, v9}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    invoke-virtual/range {p0 .. p0}, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->errorUncaught()V

    goto :goto_6

    :cond_8
    const-wide/16 v11, 0x0

    :cond_9
    :goto_6
    iget-object v8, v8, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_5

    :cond_a
    if-eqz v7, :cond_d

    iget-object v8, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    :goto_7
    invoke-virtual {v8}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v9

    if-eqz v9, :cond_c

    iget-object v9, v8, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v9, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {v9}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isConstructor(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, v8, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v9, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    invoke-virtual {v1, v9}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v10, v1, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v10}, Lorg/openjdk/tools/javac/comp/Flow;->access$400(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v10

    iget-object v11, v1, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->thrown:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v10, v11}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Types(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v10

    iput-object v10, v9, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->thrown:Lorg/openjdk/tools/javac/util/List;

    iget-object v10, v9, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v11, v1, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v11}, Lorg/openjdk/tools/javac/comp/Flow;->access$700(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v11

    iget-object v9, v9, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v9, v9, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v12, v1, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->thrown:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v11, v9, v12}, Lorg/openjdk/tools/javac/code/Types;->createMethodTypeWithThrown(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v9

    iput-object v9, v10, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    :cond_b
    iget-object v8, v8, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_7

    :cond_c
    iget-object v8, v1, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v8}, Lorg/openjdk/tools/javac/comp/Flow;->access$500(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object v8

    iget-object v9, v1, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->thrown:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v8, v9, v3}, Lorg/openjdk/tools/javac/comp/Check;->union(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    :cond_d
    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    :goto_8
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v8

    if-eqz v8, :cond_10

    if-eqz v7, :cond_e

    iget-object v8, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v8, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {v8}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isConstructor(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v8

    if-eqz v8, :cond_e

    goto :goto_9

    :cond_e
    iget-object v8, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v8, Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v9, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->METHODDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v8, v9}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v8, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v8, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v1, v8}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    invoke-virtual/range {p0 .. p0}, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->errorUncaught()V

    :cond_f
    :goto_9
    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_8

    :cond_10
    iput-object v3, v1, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->thrown:Lorg/openjdk/tools/javac/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v5, v1, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iput-object v4, v1, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->caught:Lorg/openjdk/tools/javac/util/List;

    iput-object v2, v1, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->classDef:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v1, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v0, v6}, Lorg/openjdk/tools/javac/comp/Flow;->access$202(Lorg/openjdk/tools/javac/comp/Flow;Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;

    return-void

    :goto_a
    iput-object v5, v1, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iput-object v4, v1, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->caught:Lorg/openjdk/tools/javac/util/List;

    iput-object v2, v1, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->classDef:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v2, v1, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v2, v6}, Lorg/openjdk/tools/javac/comp/Flow;->access$202(Lorg/openjdk/tools/javac/comp/Flow;Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;

    throw v0
.end method

.method public visitContinue(Lorg/openjdk/tools/javac/tree/JCTree$JCContinue;)V
    .locals 2

    new-instance v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer$FlowPendingExit;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer$FlowPendingExit;-><init>(Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)V

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->recordExit(Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$PendingExit;)V

    return-void
.end method

.method public visitDoLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCDoWhileLoop;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCDoWhileLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->resolveContinues(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCDoWhileLoop;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->resolveBreaks(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/ListBuffer;)Z

    return-void
.end method

.method public visitForLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->init:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    :cond_0
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->resolveContinues(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCForLoop;->step:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->resolveBreaks(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/ListBuffer;)Z

    return-void
.end method

.method public visitForeachLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->var:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->visitVarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCEnhancedForLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->resolveContinues(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->resolveBreaks(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/ListBuffer;)Z

    return-void
.end method

.method public visitIf(Lorg/openjdk/tools/javac/tree/JCTree$JCIf;)V
    .locals 1

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;->thenpart:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIf;->elsepart:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    :cond_0
    return-void
.end method

.method public visitLabelled(Lorg/openjdk/tools/javac/tree/JCTree$JCLabeledStatement;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLabeledStatement;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->resolveBreaks(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/ListBuffer;)Z

    return-void
.end method

.method public visitLambda(Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;)V
    .locals 5

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->caught:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->thrown:Lorg/openjdk/tools/javac/util/List;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    :try_start_0
    new-instance v3, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v3}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object v3, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v3}, Lorg/openjdk/tools/javac/comp/Flow;->access$700(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/openjdk/tools/javac/tree/JCTree$JCFunctionalExpression;->getDescriptorType(Lorg/openjdk/tools/javac/code/Types;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Type;->getThrownTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    iput-object v3, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->caught:Lorg/openjdk/tools/javac/util/List;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    iput-object v3, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->thrown:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCLambda;->body:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    new-instance v3, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v3}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object v3, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer$FlowPendingExit;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object v4, v3, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer$FlowPendingExit;->thrown:Lorg/openjdk/tools/javac/code/Type;

    if-nez v4, :cond_1

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$PendingExit;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v4, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->RETURN:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v3

    invoke-static {v3}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v4, v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->errorUncaught()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v2, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->caught:Lorg/openjdk/tools/javac/util/List;

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->thrown:Lorg/openjdk/tools/javac/util/List;

    return-void

    :goto_1
    iput-object v2, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->caught:Lorg/openjdk/tools/javac/util/List;

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->thrown:Lorg/openjdk/tools/javac/util/List;

    throw p1
.end method

.method public visitMethodDef(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;)V
    .locals 7

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->caught:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getThrownTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/Flow;->access$200(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v3}, Lorg/openjdk/tools/javac/comp/Flow;->access$200(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v4

    iget-object v5, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/code/Lint;->augment(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/openjdk/tools/javac/comp/Flow;->access$202(Lorg/openjdk/tools/javac/comp/Flow;Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->isEmpty()Z

    move-result v3

    invoke-static {v3}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    :try_start_0
    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->params:Lorg/openjdk/tools/javac/util/List;

    :goto_0
    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v4, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {p0, v4}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isInitialConstructor(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v3}, Lorg/openjdk/tools/javac/comp/Flow;->access$500(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->caught:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v3, v4, v1}, Lorg/openjdk/tools/javac/comp/Check;->union(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->caught:Lorg/openjdk/tools/javac/util/List;

    goto :goto_1

    :cond_2
    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v3

    const-wide/32 v5, 0x100008

    and-long/2addr v3, v5

    const-wide/32 v5, 0x100000

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->caught:Lorg/openjdk/tools/javac/util/List;

    :cond_3
    :goto_1
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    :goto_2
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer$FlowPendingExit;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iget-object v3, v1, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer$FlowPendingExit;->thrown:Lorg/openjdk/tools/javac/code/Type;

    if-nez v3, :cond_4

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$PendingExit;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->RETURN:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v1

    invoke-static {v1}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v3, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_5
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->caught:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {p1, v2}, Lorg/openjdk/tools/javac/comp/Flow;->access$202(Lorg/openjdk/tools/javac/comp/Flow;Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;

    return-void

    :goto_3
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->caught:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v0, v2}, Lorg/openjdk/tools/javac/comp/Flow;->access$202(Lorg/openjdk/tools/javac/comp/Flow;Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;

    throw p1
.end method

.method public visitModuleDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;)V
    .locals 0

    return-void
.end method

.method public visitNewClass(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;)V
    .locals 5

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->encl:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->args:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->constructorType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->getThrownTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1, v1}, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->markThrown(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)V

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->caught:Lorg/openjdk/tools/javac/util/List;

    :try_start_0
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->def:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->constructor:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getThrownTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    :goto_1
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/Flow;->access$500(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object v2

    iget-object v3, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/code/Type;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->caught:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v2, v3, v4}, Lorg/openjdk/tools/javac/comp/Check;->incl(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    iput-object v2, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->caught:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->def:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->caught:Lorg/openjdk/tools/javac/util/List;

    return-void

    :goto_2
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->caught:Lorg/openjdk/tools/javac/util/List;

    throw p1
.end method

.method public visitReturn(Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCReturn;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    new-instance v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer$FlowPendingExit;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer$FlowPendingExit;-><init>(Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)V

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->recordExit(Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer$PendingExit;)V

    return-void
.end method

.method public visitSwitch(Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;)V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;->selector:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCSwitch;->cases:Lorg/openjdk/tools/javac/util/List;

    :goto_0
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCCase;

    iget-object v3, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCCase;->pat:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v3, :cond_0

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    :cond_0
    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCCase;->stats:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->resolveBreaks(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/ListBuffer;)Z

    return-void
.end method

.method public visitThrow(Lorg/openjdk/tools/javac/tree/JCTree$JCThrow;)V
    .locals 5

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCThrow;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCThrow;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbol(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->VAR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v1

    const-wide v3, 0x20000000010L

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->preciseRethrowTypes:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/Flow;->access$1100(Lorg/openjdk/tools/javac/comp/Flow;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->preciseRethrowTypes:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1, v1}, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->markThrown(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCThrow;->expr:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->markThrown(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)V

    :cond_1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->markDead()V

    return-void
.end method

.method public visitTry(Lorg/openjdk/tools/javac/tree/JCTree$JCTry;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v8, p1

    iget-object v9, v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->caught:Lorg/openjdk/tools/javac/util/List;

    iget-object v10, v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->thrown:Lorg/openjdk/tools/javac/util/List;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iput-object v1, v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->thrown:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, v8, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->catchers:Lorg/openjdk/tools/javac/util/List;

    :goto_0
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;

    invoke-static {v2}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isMultiCatch(Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;->param:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeUnion;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeUnion;->alternatives:Lorg/openjdk/tools/javac/util/List;

    goto :goto_1

    :cond_0
    iget-object v2, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;->param:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v2}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    :goto_1
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v4, v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v4}, Lorg/openjdk/tools/javac/comp/Flow;->access$500(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object v4

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v5, v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->caught:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v4, v3, v5}, Lorg/openjdk/tools/javac/comp/Check;->incl(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    iput-object v3, v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->caught:Lorg/openjdk/tools/javac/util/List;

    goto :goto_2

    :cond_1
    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_2
    iget-object v11, v0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object v1, v0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v1, v8, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->resources:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree;

    instance-of v3, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    if-eqz v3, :cond_3

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->visitVarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V

    goto :goto_3

    :cond_3
    instance-of v3, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v3, :cond_4

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    goto :goto_3

    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_5
    iget-object v1, v8, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->resources:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object v1, v13, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->isCompound()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/Flow;->access$700(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v1

    iget-object v2, v13, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Types;->interfaces(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/Flow;->access$700(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v2

    iget-object v3, v13, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Types;->supertype(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    goto :goto_4

    :cond_7
    iget-object v1, v13, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    :goto_4
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_8
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Type;

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/Flow;->access$700(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v2

    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v3}, Lorg/openjdk/tools/javac/comp/Flow;->access$800(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v3

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symtab;->autoCloseableType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v2, v1, v3}, Lorg/openjdk/tools/javac/code/Types;->asSuper(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/Flow;->access$900(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/comp/Resolve;

    move-result-object v2

    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v3}, Lorg/openjdk/tools/javac/comp/Flow;->access$300(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v3

    iget-object v4, v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v4}, Lorg/openjdk/tools/javac/comp/Flow;->access$700(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Lorg/openjdk/tools/javac/code/Types;->skipTypeVars(Lorg/openjdk/tools/javac/code/Type;Z)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v4

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/Flow;->access$600(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v1

    iget-object v5, v1, Lorg/openjdk/tools/javac/util/Names;->close:Lorg/openjdk/tools/javac/util/Name;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v7

    move-object v1, v2

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v7}, Lorg/openjdk/tools/javac/comp/Resolve;->resolveQualifiedMethod(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/Flow;->access$700(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v2

    iget-object v3, v13, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2, v3, v1}, Lorg/openjdk/tools/javac/code/Types;->memberType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v1, v3, :cond_8

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Type;->getThrownTypes()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {p0, v13, v2}, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->markThrown(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Type;)V

    goto :goto_5

    :cond_9
    iget-object v1, v8, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/Flow;->access$1000(Lorg/openjdk/tools/javac/comp/Flow;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/Flow;->access$500(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object v1

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->thrown:Lorg/openjdk/tools/javac/util/List;

    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v3}, Lorg/openjdk/tools/javac/comp/Flow;->access$800(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v3

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symtab;->runtimeExceptionType:Lorg/openjdk/tools/javac/code/Type;

    iget-object v4, v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v4}, Lorg/openjdk/tools/javac/comp/Flow;->access$800(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v4

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symtab;->errorType:Lorg/openjdk/tools/javac/code/Type;

    invoke-static {v3, v4}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/openjdk/tools/javac/comp/Check;->union(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    goto :goto_6

    :cond_a
    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->thrown:Lorg/openjdk/tools/javac/util/List;

    :goto_6
    iput-object v10, v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->thrown:Lorg/openjdk/tools/javac/util/List;

    iput-object v9, v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->caught:Lorg/openjdk/tools/javac/util/List;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    iget-object v3, v8, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->catchers:Lorg/openjdk/tools/javac/util/List;

    :goto_7
    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, v3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    move-object v5, v4

    check-cast v5, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;

    iget-object v5, v5, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;->param:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    check-cast v4, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;

    invoke-static {v4}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isMultiCatch(Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, v3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v4, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;

    iget-object v4, v4, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;->param:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v4, v4, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    check-cast v4, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeUnion;

    iget-object v4, v4, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeUnion;->alternatives:Lorg/openjdk/tools/javac/util/List;

    goto :goto_8

    :cond_b
    iget-object v4, v3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v4, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;

    iget-object v4, v4, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;->param:Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;

    iget-object v4, v4, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v4}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    :goto_8
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    iget-object v7, v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v7}, Lorg/openjdk/tools/javac/comp/Flow;->access$500(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Lorg/openjdk/tools/javac/comp/Check;->diff(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v7

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v9, v9, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v12, v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v12}, Lorg/openjdk/tools/javac/comp/Flow;->access$800(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v12

    iget-object v12, v12, Lorg/openjdk/tools/javac/code/Symtab;->unknownType:Lorg/openjdk/tools/javac/code/Type;

    if-eq v9, v12, :cond_c

    invoke-virtual {v6, v9}, Lorg/openjdk/tools/javac/util/List;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    iget-object v12, v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v12}, Lorg/openjdk/tools/javac/comp/Flow;->access$700(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v12

    iget-object v13, v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v13}, Lorg/openjdk/tools/javac/comp/Flow;->access$800(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v13

    iget-object v13, v13, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v12, v9, v13}, Lorg/openjdk/tools/javac/code/Types;->isSameType(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v12

    if-eqz v12, :cond_d

    goto :goto_9

    :cond_d
    iget-object v12, v3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v12, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;

    invoke-virtual {v12}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v12

    invoke-virtual {p0, v12, v9, v1, v2}, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->checkCaughtType(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)V

    iget-object v12, v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v12}, Lorg/openjdk/tools/javac/comp/Flow;->access$500(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object v12

    invoke-virtual {v12, v9, v2}, Lorg/openjdk/tools/javac/comp/Check;->incl(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    goto :goto_9

    :cond_e
    invoke-virtual {p0, v5}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v4, v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->preciseRethrowTypes:Ljava/util/HashMap;

    iget-object v9, v5, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v12, v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v12}, Lorg/openjdk/tools/javac/comp/Flow;->access$500(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Lorg/openjdk/tools/javac/comp/Check;->intersect(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    invoke-virtual {v4, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v4, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;

    iget-object v4, v4, Lorg/openjdk/tools/javac/tree/JCTree$JCCatch;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v4}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v4, v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->preciseRethrowTypes:Ljava/util/HashMap;

    iget-object v5, v5, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto/16 :goto_7

    :cond_f
    iget-object v3, v8, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->finalizer:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    if-eqz v3, :cond_11

    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->thrown:Lorg/openjdk/tools/javac/util/List;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    iput-object v4, v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->thrown:Lorg/openjdk/tools/javac/util/List;

    iget-object v4, v0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iput-object v11, v0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v5, v8, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->finalizer:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    invoke-virtual {p0, v5}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-boolean v5, v8, Lorg/openjdk/tools/javac/tree/JCTree$JCTry;->finallyCanCompleteNormally:Z

    if-nez v5, :cond_10

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/Flow;->access$500(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object v1

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->thrown:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1, v2, v10}, Lorg/openjdk/tools/javac/comp/Check;->union(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iput-object v1, v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->thrown:Lorg/openjdk/tools/javac/util/List;

    goto :goto_c

    :cond_10
    iget-object v5, v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v5}, Lorg/openjdk/tools/javac/comp/Flow;->access$500(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object v5

    iget-object v6, v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->thrown:Lorg/openjdk/tools/javac/util/List;

    iget-object v7, v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v7}, Lorg/openjdk/tools/javac/comp/Flow;->access$500(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object v7

    invoke-virtual {v7, v1, v2}, Lorg/openjdk/tools/javac/comp/Check;->diff(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Lorg/openjdk/tools/javac/comp/Check;->union(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iput-object v1, v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->thrown:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/Flow;->access$500(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object v1

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->thrown:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1, v2, v3}, Lorg/openjdk/tools/javac/comp/Check;->union(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iput-object v1, v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->thrown:Lorg/openjdk/tools/javac/util/List;

    :goto_a
    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/ListBuffer;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/ListBuffer;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_a

    :cond_11
    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v3}, Lorg/openjdk/tools/javac/comp/Flow;->access$500(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object v3

    iget-object v4, v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->thrown:Lorg/openjdk/tools/javac/util/List;

    iget-object v5, v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v5}, Lorg/openjdk/tools/javac/comp/Flow;->access$500(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Lorg/openjdk/tools/javac/comp/Check;->diff(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lorg/openjdk/tools/javac/comp/Check;->union(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iput-object v1, v0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->thrown:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iput-object v11, v0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    :goto_b
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_b

    :cond_12
    :goto_c
    return-void
.end method

.method public visitVarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V
    .locals 4

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->init:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Flow;->access$200(Lorg/openjdk/tools/javac/comp/Flow;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

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

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {p1, v0}, Lorg/openjdk/tools/javac/comp/Flow;->access$202(Lorg/openjdk/tools/javac/comp/Flow;Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;

    goto :goto_0

    :catchall_0
    move-exception p1

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$FlowAnalyzer;->this$0:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {v1, v0}, Lorg/openjdk/tools/javac/comp/Flow;->access$202(Lorg/openjdk/tools/javac/comp/Flow;Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public visitWhileLoop(Lorg/openjdk/tools/javac/tree/JCTree$JCWhileLoop;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->pendingExits:Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCWhileLoop;->cond:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCWhileLoop;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->resolveContinues(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Flow$BaseAnalyzer;->resolveBreaks(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/util/ListBuffer;)Z

    return-void
.end method
