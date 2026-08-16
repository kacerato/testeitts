.class Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$1;
.super Lorg/openjdk/tools/javac/tree/TreeScanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

.field topLevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$1;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/TreeScanner;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$1;Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$1;->lambda$visitTopLevel$0(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;Lorg/openjdk/tools/javac/code/Symbol;)V

    return-void
.end method

.method private synthetic lambda$visitTopLevel$0(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;
        }
    .end annotation

    iget-object p2, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$1;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {p2}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$2800(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/comp/Modules;

    move-result-object p2

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->module_info:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {p2, v0, p1}, Lorg/openjdk/tools/javac/comp/Modules;->enter(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Z

    return-void
.end method


# virtual methods
.method public scan(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    :cond_0
    return-void
.end method

.method public visitAnnotation(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;->attribute:Lorg/openjdk/tools/javac/code/Attribute$Compound;

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitAnnotation(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;)V

    return-void
.end method

.method public visitAssignop(Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->operator:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitAssignop(Lorg/openjdk/tools/javac/tree/JCTree$JCAssignOp;)V

    return-void
.end method

.method public visitBinary(Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->operator:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitBinary(Lorg/openjdk/tools/javac/tree/JCTree$JCBinary;)V

    return-void
.end method

.method public visitClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    .locals 6

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    :goto_0
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->METHODDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide v4, 0x1000000000L

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    :goto_1
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_1

    :cond_1
    iput-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    :cond_2
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    if-eqz v0, :cond_3

    new-instance v1, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ImplicitCompleter;

    iget-object v2, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$1;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    iget-object v3, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$1;->topLevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    invoke-direct {v1, v2, v3}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ImplicitCompleter;-><init>(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)V

    iput-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->completer:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    return-void
.end method

.method public visitIdent(Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitIdent(Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;)V

    return-void
.end method

.method public visitMethodDef(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;)V
    .locals 4

    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isConstructor(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->stats:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->stats:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isSuperCall(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->body:Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;

    iget-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->stats:Lorg/openjdk/tools/javac/util/List;

    iget-object v2, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCStatement;

    iget v2, v2, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    iget v3, v0, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    if-ne v2, v3, :cond_0

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    iput-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;->stats:Lorg/openjdk/tools/javac/util/List;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitMethodDef(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;)V

    return-void
.end method

.method public visitNewClass(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;->constructor:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitNewClass(Lorg/openjdk/tools/javac/tree/JCTree$JCNewClass;)V

    return-void
.end method

.method public visitSelect(Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitSelect(Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;)V

    return-void
.end method

.method public visitTopLevel(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)V
    .locals 3

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->package_info:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->reset()V

    :cond_0
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->reset()V

    :cond_1
    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    const-string v1, "module-info"

    sget-object v2, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->SOURCE:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    invoke-interface {v0, v1, v2}, Lorg/openjdk/javax/tools/JavaFileObject;->isNameCompatible(Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->reset()V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    new-instance v1, Lorg/openjdk/tools/javac/processing/d;

    invoke-direct {v1, p0, p1}, Lorg/openjdk/tools/javac/processing/d;-><init>(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$1;Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)V

    iput-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->completer:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->module_info:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->reset()V

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->module_info:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-static {v0}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->create(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v1

    iput-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members_field:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    iput-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$1;->topLevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    :try_start_0
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitTopLevel(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$1;->topLevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    return-void

    :catchall_0
    move-exception p1

    iput-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$1;->topLevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    throw p1
.end method

.method public visitUnary(Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCOperatorExpression;->operator:Lorg/openjdk/tools/javac/code/Symbol$OperatorSymbol;

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitUnary(Lorg/openjdk/tools/javac/tree/JCTree$JCUnary;)V

    return-void
.end method

.method public visitVarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitVarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V

    return-void
.end method
