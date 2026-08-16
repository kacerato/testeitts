.class final Lorg/openjdk/tools/javac/comp/TypeEnter$HeaderPhase;
.super Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/TypeEnter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "HeaderPhase"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/TypeEnter;)V
    .locals 2

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$HeaderPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    sget-object v0, Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;->HEADER_PHASE:Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;

    new-instance v1, Lorg/openjdk/tools/javac/comp/TypeEnter$MembersPhase;

    invoke-direct {v1, p1}, Lorg/openjdk/tools/javac/comp/TypeEnter$MembersPhase;-><init>(Lorg/openjdk/tools/javac/comp/TypeEnter;)V

    invoke-direct {p0, p1, v0, v1}, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase;-><init>(Lorg/openjdk/tools/javac/comp/TypeEnter;Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;)V

    return-void
.end method


# virtual methods
.method public runPhase(Lorg/openjdk/tools/javac/comp/Env;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    check-cast v2, Lorg/openjdk/tools/javac/code/Type$ClassType;

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase;->baseEnv(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v2

    iget-object v3, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->extending:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$HeaderPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v3}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$1100(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/comp/Annotate;

    move-result-object v3

    iget-object v4, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->extending:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v5

    invoke-virtual {v3, v4, v2, v1, v5}, Lorg/openjdk/tools/javac/comp/Annotate;->queueScanTreeAndTypeAnnotate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    :cond_0
    iget-object v3, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->implementing:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$HeaderPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v5}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$1100(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/comp/Annotate;

    move-result-object v5

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v6

    invoke-virtual {v5, v4, v2, v1, v6}, Lorg/openjdk/tools/javac/comp/Annotate;->queueScanTreeAndTypeAnnotate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$HeaderPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v3}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$1100(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/comp/Annotate;

    move-result-object v3

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/comp/Annotate;->flush()V

    invoke-virtual {p0, p1, v2}, Lorg/openjdk/tools/javac/comp/TypeEnter$AbstractHeaderPhase;->attribSuperTypes(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/Env;)V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iget-object v4, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->implementing:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v6, v5, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    sget-object v7, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v6, v7}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$HeaderPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v7}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$400(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object v7

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v5

    iget-object v8, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$HeaderPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v8}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$1300(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v8

    invoke-virtual {v8, v6}, Lorg/openjdk/tools/javac/code/Types;->erasure(Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v6

    invoke-virtual {v7, v5, v6, v3}, Lorg/openjdk/tools/javac/comp/Check;->checkNotRepeated(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Type;Ljava/util/Set;)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$HeaderPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v3}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$1100(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/comp/Annotate;

    move-result-object v3

    iget-object v4, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-object v4, v4, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->annotations:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v5

    invoke-virtual {v3, v4, v2, v1, v5}, Lorg/openjdk/tools/javac/comp/Annotate;->annotateLater(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$HeaderPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v3}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$1200(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/comp/Attr;

    move-result-object v3

    iget-object v4, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->typarams:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v3, v4, v2}, Lorg/openjdk/tools/javac/comp/Attr;->attribTypeVariables(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)V

    iget-object v3, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->typarams:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$HeaderPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v5}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$1100(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/comp/Annotate;

    move-result-object v5

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v6

    invoke-virtual {v5, v4, v2, v1, v6}, Lorg/openjdk/tools/javac/comp/Annotate;->queueScanTreeAndTypeAnnotate(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    goto :goto_2

    :cond_4
    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v4, Lorg/openjdk/tools/javac/code/Kinds$Kind;->PCK:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v3, v4, :cond_5

    iget-object v3, p1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->unnamedPackage:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    if-eq v2, v3, :cond_5

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$HeaderPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$700(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v2

    iget-object v3, p1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v5, v1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->fullname:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v2, v3, v5}, Lorg/openjdk/tools/javac/code/Symtab;->packageExists(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$HeaderPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$100(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v2

    iget v0, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    invoke-static {v1}, Lorg/openjdk/tools/javac/code/Kinds;->kindName(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Kinds$KindName;

    move-result-object v3

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "clash.with.pkg.of.same.name"

    invoke-virtual {v2, v0, v5, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    iget-object v0, v1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v4, :cond_6

    iget-wide v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/16 v4, 0x1

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_6

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    iget-object v0, v1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->SOURCE:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    invoke-interface {p1, v0, v2}, Lorg/openjdk/javax/tools/JavaFileObject;->isNameCompatible(Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-wide v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide v4, 0x100000000000L

    or-long/2addr v2, v4

    iput-wide v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    :cond_6
    return-void
.end method
