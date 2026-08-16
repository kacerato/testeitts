.class Lorg/openjdk/tools/javac/comp/Modules$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/code/Symbol$Completer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/comp/Modules;->getSourceCompleter(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)Lorg/openjdk/tools/javac/code/Symbol$Completer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Modules;

.field final synthetic val$tree:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Modules;Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Modules$2;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/Modules$2;->val$tree:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;
        }
    .end annotation

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-wide v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/32 v2, 0x10000000

    or-long/2addr v0, v2

    iput-wide v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    new-instance v0, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Modules$2;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-direct {v0, v1}, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;-><init>(Lorg/openjdk/tools/javac/comp/Modules;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Modules$2;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/Modules;->access$300(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Modules$2;->val$tree:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Modules$2;->val$tree:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->getModuleDecl()Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Modules$2;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v3}, Lorg/openjdk/tools/javac/comp/Modules;->access$400(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    move-result-object v3

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->setPos(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    const-wide/32 v4, -0x10000001

    :try_start_0
    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules$2;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/comp/Modules;->access$200(Lorg/openjdk/tools/javac/comp/Modules;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules$2;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v0, v2}, Lorg/openjdk/tools/javac/comp/Modules;->access$500(Lorg/openjdk/tools/javac/comp/Modules;Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules$2;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Modules;->access$300(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules$2;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Modules;->access$400(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->setPos(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    iget-wide v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    and-long/2addr v0, v4

    iput-wide v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    return-void

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Modules$2;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/Modules;->access$300(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Modules$2;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/Modules;->access$400(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->setPos(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    iget-wide v1, p1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    and-long/2addr v1, v4

    iput-wide v1, p1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SourceCompleter: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Modules$2;->val$tree:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-interface {v1}, Lorg/openjdk/javax/tools/FileObject;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
