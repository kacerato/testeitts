.class Lorg/openjdk/tools/javac/comp/Check$CycleChecker;
.super Lorg/openjdk/tools/javac/tree/TreeScanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Check;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CycleChecker"
.end annotation


# instance fields
.field errorFound:Z

.field partialCheck:Z

.field seenClasses:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Check;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Check;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Check$CycleChecker;->this$0:Lorg/openjdk/tools/javac/comp/Check;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/TreeScanner;-><init>()V

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Check$CycleChecker;->seenClasses:Lorg/openjdk/tools/javac/util/List;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/comp/Check$CycleChecker;->errorFound:Z

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/comp/Check$CycleChecker;->partialCheck:Z

    return-void
.end method

.method private checkSymbol(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 3

    if-eqz p2, :cond_1

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check$CycleChecker;->this$0:Lorg/openjdk/tools/javac/comp/Check;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Check;->access$600(Lorg/openjdk/tools/javac/comp/Check;)Lorg/openjdk/tools/javac/comp/Enter;

    move-result-object v0

    move-object v2, p2

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/comp/Enter;->getEnv(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Check$CycleChecker;->this$0:Lorg/openjdk/tools/javac/comp/Check;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Check;->access$000(Lorg/openjdk/tools/javac/comp/Check;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->currentSource()Lorg/openjdk/tools/javac/util/DiagnosticSource;

    move-result-object p1

    :try_start_0
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Check$CycleChecker;->this$0:Lorg/openjdk/tools/javac/comp/Check;

    invoke-static {p2}, Lorg/openjdk/tools/javac/comp/Check;->access$000(Lorg/openjdk/tools/javac/comp/Check;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object p2

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-virtual {p2, v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    iget-object p2, v0, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Check$CycleChecker;->this$0:Lorg/openjdk/tools/javac/comp/Check;

    invoke-static {p2}, Lorg/openjdk/tools/javac/comp/Check;->access$000(Lorg/openjdk/tools/javac/comp/Check;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object p2

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/DiagnosticSource;->getFile()Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    goto :goto_0

    :catchall_0
    move-exception p2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check$CycleChecker;->this$0:Lorg/openjdk/tools/javac/comp/Check;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Check;->access$000(Lorg/openjdk/tools/javac/comp/Check;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/DiagnosticSource;->getFile()Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    throw p2

    :cond_0
    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v1, :cond_2

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/openjdk/tools/javac/comp/Check$CycleChecker;->checkClass(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/List;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/comp/Check$CycleChecker;->partialCheck:Z

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public checkClass(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">;)V"
        }
    .end annotation

    iget-wide v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/32 v2, 0x40000000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check$CycleChecker;->seenClasses:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lorg/openjdk/tools/javac/comp/Check$CycleChecker;->errorFound:Z

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/Check$CycleChecker;->this$0:Lorg/openjdk/tools/javac/comp/Check;

    check-cast p2, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-static {p3, p1, p2}, Lorg/openjdk/tools/javac/comp/Check;->access$700(Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    goto/16 :goto_5

    :cond_1
    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Type;->isErroneous()Z

    move-result v0

    if-nez v0, :cond_7

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check$CycleChecker;->seenClasses:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, p2}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Check$CycleChecker;->seenClasses:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    sget-object v2, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p3}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_4

    :cond_2
    iget-object p3, p2, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    check-cast p3, Lorg/openjdk/tools/javac/code/Type$ClassType;

    iget-object v0, p3, Lorg/openjdk/tools/javac/code/Type$ClassType;->supertype_field:Lorg/openjdk/tools/javac/code/Type;

    if-eqz v0, :cond_5

    iget-object v2, p3, Lorg/openjdk/tools/javac/code/Type$ClassType;->interfaces_field:Lorg/openjdk/tools/javac/util/List;

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Check$CycleChecker;->checkSymbol(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object p3, p3, Lorg/openjdk/tools/javac/code/Type$ClassType;->interfaces_field:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Check$CycleChecker;->checkSymbol(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)V

    goto :goto_0

    :cond_4
    :goto_1
    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object p3, p2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne p3, v0, :cond_6

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Check$CycleChecker;->checkSymbol(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)V

    goto :goto_3

    :cond_5
    :goto_2
    iput-boolean v1, p0, Lorg/openjdk/tools/javac/comp/Check$CycleChecker;->partialCheck:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Check$CycleChecker;->seenClasses:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Check$CycleChecker;->seenClasses:Lorg/openjdk/tools/javac/util/List;

    return-void

    :cond_6
    :goto_3
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Check$CycleChecker;->seenClasses:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Check$CycleChecker;->seenClasses:Lorg/openjdk/tools/javac/util/List;

    goto :goto_5

    :goto_4
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Check$CycleChecker;->seenClasses:Lorg/openjdk/tools/javac/util/List;

    iget-object p2, p2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/Check$CycleChecker;->seenClasses:Lorg/openjdk/tools/javac/util/List;

    throw p1

    :cond_7
    :goto_5
    return-void
.end method

.method public visitClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    .locals 3

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->getExtendsClause()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->getExtendsClause()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->getImplementsClause()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->getImplementsClause()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {p0, v1, p1, v0}, Lorg/openjdk/tools/javac/comp/Check$CycleChecker;->checkClass(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method

.method public visitIdent(Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;)V
    .locals 1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-direct {p0, v0, p1}, Lorg/openjdk/tools/javac/comp/Check$CycleChecker;->checkSymbol(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)V

    return-void
.end method

.method public visitSelect(Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitSelect(Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;)V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-direct {p0, v0, p1}, Lorg/openjdk/tools/javac/comp/Check$CycleChecker;->checkSymbol(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;)V

    return-void
.end method

.method public visitTypeApply(Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;)V
    .locals 0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method

.method public visitTypeArray(Lorg/openjdk/tools/javac/tree/JCTree$JCArrayTypeTree;)V
    .locals 0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCArrayTypeTree;->elemtype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    return-void
.end method
