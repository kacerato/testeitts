.class Lorg/openjdk/tools/javac/comp/Check$4;
.super Lorg/openjdk/tools/javac/tree/TreeScanner;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/openjdk/tools/javac/comp/Check;->checkLeaksNotAccessible(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field inSuperType:Z

.field lint:Lorg/openjdk/tools/javac/code/Lint;

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Check;

.field final synthetic val$check:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

.field final synthetic val$env:Lorg/openjdk/tools/javac/comp/Env;

.field final synthetic val$toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Check$4;->this$0:Lorg/openjdk/tools/javac/comp/Check;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/Check$4;->val$env:Lorg/openjdk/tools/javac/comp/Env;

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/Check$4;->val$check:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iput-object p4, p0, Lorg/openjdk/tools/javac/comp/Check$4;->val$toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/TreeScanner;-><init>()V

    iget-object p1, p2, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/AttrContext;->lint:Lorg/openjdk/tools/javac/code/Lint;

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Check$4;->lint:Lorg/openjdk/tools/javac/code/Lint;

    return-void
.end method


# virtual methods
.method public visitAnnotation(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;->attribute:Lorg/openjdk/tools/javac/code/Attribute$Compound;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Attribute;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    const-class v1, Ljava/lang/annotation/Documented;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/AnnoConstruct;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitAnnotation(Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;)V

    :cond_0
    return-void
.end method

.method public visitBlock(Lorg/openjdk/tools/javac/tree/JCTree$JCBlock;)V
    .locals 0

    return-void
.end method

.method public visitClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check$4;->val$check:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check$4;->this$0:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/comp/Check;->access$1300(Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check$4;->lint:Lorg/openjdk/tools/javac/code/Lint;

    :try_start_0
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Lint;->augment(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Check$4;->lint:Lorg/openjdk/tools/javac/code/Lint;

    sget-object v2, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->EXPORTS:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Lint;->isEnabled(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->typarams:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_1
    iput-boolean v1, p0, Lorg/openjdk/tools/javac/comp/Check$4;->inSuperType:Z

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->extending:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->implementing:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iput-boolean v2, p0, Lorg/openjdk/tools/javac/comp/Check$4;->inSuperType:Z

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    iput-boolean v2, p0, Lorg/openjdk/tools/javac/comp/Check$4;->inSuperType:Z

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_0
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Check$4;->lint:Lorg/openjdk/tools/javac/code/Lint;

    return-void

    :goto_1
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Check$4;->lint:Lorg/openjdk/tools/javac/code/Lint;

    throw p1
.end method

.method public visitIdent(Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;)V
    .locals 4

    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbol(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    sget-object v2, Lorg/openjdk/tools/javac/code/TypeTag;->TYPEVAR:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check$4;->this$0:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Check$4;->val$toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    iget-boolean v3, p0, Lorg/openjdk/tools/javac/comp/Check$4;->inSuperType:Z

    invoke-static {v1, p1, v0, v2, v3}, Lorg/openjdk/tools/javac/comp/Check;->access$1400(Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Z)V

    :cond_0
    return-void
.end method

.method public visitMethodDef(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;)V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check$4;->this$0:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/comp/Check;->access$1300(Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check$4;->lint:Lorg/openjdk/tools/javac/code/Lint;

    :try_start_0
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Lint;->augment(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Check$4;->lint:Lorg/openjdk/tools/javac/code/Lint;

    sget-object v2, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->EXPORTS:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Lint;->isEnabled(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitMethodDef(Lorg/openjdk/tools/javac/tree/JCTree$JCMethodDecl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Check$4;->lint:Lorg/openjdk/tools/javac/code/Lint;

    return-void

    :goto_1
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Check$4;->lint:Lorg/openjdk/tools/javac/code/Lint;

    throw p1
.end method

.method public visitSelect(Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;)V
    .locals 4

    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbol(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbol(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    iget-object v2, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v2, v3, :cond_0

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->PCK:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Check$4;->this$0:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Check$4;->val$toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    iget-boolean v3, p0, Lorg/openjdk/tools/javac/comp/Check$4;->inSuperType:Z

    invoke-static {v1, p1, v0, v2, v3}, Lorg/openjdk/tools/javac/comp/Check;->access$1400(Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Z)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->visitSelect(Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;)V

    :goto_0
    return-void
.end method

.method public visitTypeApply(Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;)V
    .locals 2

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;->clazz:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Check$4;->inSuperType:Z

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lorg/openjdk/tools/javac/comp/Check$4;->inSuperType:Z

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeApply;->arguments:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Check$4;->inSuperType:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/comp/Check$4;->inSuperType:Z

    throw p1
.end method

.method public visitVarDef(Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;)V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check$4;->this$0:Lorg/openjdk/tools/javac/comp/Check;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/comp/Check;->access$1300(Lorg/openjdk/tools/javac/comp/Check;Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Check$4;->lint:Lorg/openjdk/tools/javac/code/Lint;

    :try_start_0
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$VarSymbol;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Lint;->augment(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Check$4;->lint:Lorg/openjdk/tools/javac/code/Lint;

    sget-object v2, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->EXPORTS:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Lint;->isEnabled(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCVariableDecl;->vartype:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Check$4;->lint:Lorg/openjdk/tools/javac/code/Lint;

    return-void

    :goto_1
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Check$4;->lint:Lorg/openjdk/tools/javac/code/Lint;

    throw p1
.end method
