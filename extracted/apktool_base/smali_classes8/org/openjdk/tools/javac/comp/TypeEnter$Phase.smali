.class abstract Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/TypeEnter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "Phase"
.end annotation


# instance fields
.field private final next:Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;

.field private final phaseName:Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;

.field private final queue:Lorg/openjdk/tools/javac/util/ListBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/TypeEnter;Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {p1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;->queue:Lorg/openjdk/tools/javac/util/ListBuffer;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;->phaseName:Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;->next:Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;

    return-void
.end method


# virtual methods
.method public final completeEnvs(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;>;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;->queue:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$000(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v2, p0}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$002(Lorg/openjdk/tools/javac/comp/TypeEnter;Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;)Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;->doCompleteEnvs(Lorg/openjdk/tools/javac/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {p1, v1}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$002(Lorg/openjdk/tools/javac/comp/TypeEnter;Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;)Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;

    if-eqz v0, :cond_1

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;->queue:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;->queue:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->clear()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;->next:Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;->completeEnvs(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    :cond_0
    return-object p1

    :cond_1
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$002(Lorg/openjdk/tools/javac/comp/TypeEnter;Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;)Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;

    throw p1
.end method

.method public doCompleteEnvs(Lorg/openjdk/tools/javac/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/comp/Env;

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;->queue:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$100(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v2

    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v3}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$200(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    move-result-object v3

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->setPos(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    :try_start_0
    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v4}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$300(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/util/Dependencies;

    move-result-object v4

    iget-object v5, v0, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v5, v5, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;->phaseName:Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;

    invoke-virtual {v4, v5, v6}, Lorg/openjdk/tools/javac/util/Dependencies;->push(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;)V

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;->runPhase(Lorg/openjdk/tools/javac/comp/Env;)V
    :try_end_0
    .catch Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$300(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/util/Dependencies;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/Dependencies;->pop()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$200(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->setPos(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$100(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v4}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$400(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object v4

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    invoke-virtual {v4, v1, v0}, Lorg/openjdk/tools/javac/comp/Check;->completionError(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;)Lorg/openjdk/tools/javac/code/Type;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$300(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/util/Dependencies;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/Dependencies;->pop()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$200(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->setPos(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$100(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    throw p1

    :cond_0
    return-void
.end method

.method public abstract runPhase(Lorg/openjdk/tools/javac/comp/Env;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation
.end method
