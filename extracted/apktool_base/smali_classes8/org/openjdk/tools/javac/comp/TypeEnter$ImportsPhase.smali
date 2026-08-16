.class final Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;
.super Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/TypeEnter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ImportsPhase"
.end annotation


# instance fields
.field cfHandler:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCImport;",
            "Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;",
            ">;"
        }
    .end annotation
.end field

.field env:Lorg/openjdk/tools/javac/comp/Env;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation
.end field

.field staticImportFilter:Lorg/openjdk/tools/javac/code/Scope$ImportFilter;

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

.field typeImportFilter:Lorg/openjdk/tools/javac/code/Scope$ImportFilter;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/TypeEnter;)V
    .locals 2

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    sget-object v0, Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;->IMPORTS_PHASE:Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;

    new-instance v1, Lorg/openjdk/tools/javac/comp/TypeEnter$HierarchyPhase;

    invoke-direct {v1, p1}, Lorg/openjdk/tools/javac/comp/TypeEnter$HierarchyPhase;-><init>(Lorg/openjdk/tools/javac/comp/TypeEnter;)V

    invoke-direct {p0, p1, v0, v1}, Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;-><init>(Lorg/openjdk/tools/javac/comp/TypeEnter;Lorg/openjdk/tools/javac/util/Dependencies$CompletionCause;Lorg/openjdk/tools/javac/comp/TypeEnter$Phase;)V

    new-instance p1, Lorg/openjdk/tools/javac/comp/A2;

    invoke-direct {p1, p0}, Lorg/openjdk/tools/javac/comp/A2;-><init>(Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->cfHandler:Ljava/util/function/BiConsumer;

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Lorg/openjdk/tools/javac/code/Scope;Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->lambda$resolveImports$2(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Lorg/openjdk/tools/javac/code/Scope;Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1700(Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;Lorg/openjdk/tools/javac/comp/Env;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->resolveImports(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;Lorg/openjdk/tools/javac/comp/Env;)V

    return-void
.end method

.method public static synthetic b(Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;Lorg/openjdk/tools/javac/tree/JCTree$JCImport;Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->lambda$new$0(Lorg/openjdk/tools/javac/tree/JCTree$JCImport;Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;)V

    return-void
.end method

.method public static synthetic c(Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Lorg/openjdk/tools/javac/code/Scope;Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->lambda$resolveImports$1(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Lorg/openjdk/tools/javac/code/Scope;Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result p0

    return p0
.end method

.method private checkClassPackageClash(Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;)V
    .locals 5

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;->pid:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v0, v0, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    :goto_0
    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$700(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v2

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symtab;->rootPackage:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    if-eq v1, v2, :cond_1

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->complete()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$700(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v3, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->getQualifiedName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/openjdk/tools/javac/code/Symtab;->lookupPackage(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$700(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v2

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->getQualifiedName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/openjdk/tools/javac/code/Symtab;->getClass(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$100(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v1

    iget v2, p1, Lorg/openjdk/tools/javac/tree/JCTree;->pos:I

    const-string v3, "pkg.clashes.with.class.of.same.name"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(ILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$1100(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/comp/Annotate;

    move-result-object v0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;->annotations:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v2, v1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lorg/openjdk/tools/javac/comp/Annotate;->annotateLater(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V

    return-void
.end method

.method private doImport(Lorg/openjdk/tools/javac/tree/JCTree$JCImport;)V
    .locals 5

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;->qualid:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    invoke-static {v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->name(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {v2, p1}, Lorg/openjdk/tools/javac/comp/Env;->dup(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v3}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$1200(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/comp/Attr;

    move-result-object v3

    invoke-virtual {v3, p1, v2}, Lorg/openjdk/tools/javac/comp/Attr;->attribImportQualifier(Lorg/openjdk/tools/javac/tree/JCTree$JCImport;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v4}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$800(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v4

    iget-object v4, v4, Lorg/openjdk/tools/javac/util/Names;->asterisk:Lorg/openjdk/tools/javac/util/Name;

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$400(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object v1

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/comp/Check;->checkCanonical(Lorg/openjdk/tools/javac/tree/JCTree;)V

    iget-boolean v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;->staticImport:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-direct {p0, p1, v3, v0}, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->importStaticAll(Lorg/openjdk/tools/javac/tree/JCTree$JCImport;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/comp/Env;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-direct {p0, p1, v3, v0}, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->importAll(Lorg/openjdk/tools/javac/tree/JCTree$JCImport;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/comp/Env;)V

    goto :goto_1

    :cond_1
    iget-boolean v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;->staticImport:Z

    if-eqz v4, :cond_2

    invoke-direct {p0, p1, v3, v1, v2}, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->importNamedStatic(Lorg/openjdk/tools/javac/tree/JCTree$JCImport;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/comp/Env;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$400(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object p1

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;->selected:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/comp/Check;->checkCanonical(Lorg/openjdk/tools/javac/tree/JCTree;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0, v2}, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->attribImportType(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Type;->getOriginalType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    sget-object v3, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v1, v2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    goto :goto_0

    :cond_3
    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    :goto_0
    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$400(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/comp/Check;->checkCanonical(Lorg/openjdk/tools/javac/tree/JCTree;)V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v0

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-direct {p0, v0, v1, v2, p1}, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->importNamed(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCImport;)V

    :goto_1
    return-void
.end method

.method private importAll(Lorg/openjdk/tools/javac/tree/JCTree$JCImport;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/comp/Env;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCImport;",
            "Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    iget-object p3, p3, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v0, p3, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->starImportScope:Lorg/openjdk/tools/javac/code/Scope$StarImportScope;

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {p3}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$1300(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v1

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->typeImportFilter:Lorg/openjdk/tools/javac/code/Scope$ImportFilter;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->cfHandler:Ljava/util/function/BiConsumer;

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/openjdk/tools/javac/code/Scope$StarImportScope;->importAll(Lorg/openjdk/tools/javac/code/Types;Lorg/openjdk/tools/javac/code/Scope;Lorg/openjdk/tools/javac/code/Scope$ImportFilter;Lorg/openjdk/tools/javac/tree/JCTree$JCImport;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method private importNamed(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCImport;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;",
            "Lorg/openjdk/tools/javac/code/Symbol;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCImport;",
            ")V"
        }
    .end annotation

    iget-object p1, p2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne p1, v0, :cond_0

    iget-object p1, p3, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->namedImportScope:Lorg/openjdk/tools/javac/code/Scope$NamedImportScope;

    iget-object p3, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Symbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object p3

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v0

    invoke-virtual {p1, p3, v0, p2}, Lorg/openjdk/tools/javac/code/Scope$NamedImportScope;->importType(Lorg/openjdk/tools/javac/code/Scope;Lorg/openjdk/tools/javac/code/Scope;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope;

    move-result-object p1

    iput-object p1, p4, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;->importScope:Lorg/openjdk/tools/javac/code/Scope;

    :cond_0
    return-void
.end method

.method private importNamedStatic(Lorg/openjdk/tools/javac/tree/JCTree$JCImport;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/comp/Env;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCImport;",
            "Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;",
            "Lorg/openjdk/tools/javac/util/Name;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v0, v1, :cond_0

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {p2}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$100(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object p2

    sget-object p3, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;->RECOVERABLE:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    const/4 p4, 0x0

    new-array p4, p4, [Ljava/lang/Object;

    const-string v0, "static.imp.only.classes.and.interfaces"

    invoke-virtual {p2, p3, p1, v0, p4}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p4, p4, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v0, p4, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->namedImportScope:Lorg/openjdk/tools/javac/code/Scope$NamedImportScope;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v2

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {p2}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$1300(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v1

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->staticImportFilter:Lorg/openjdk/tools/javac/code/Scope$ImportFilter;

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->cfHandler:Ljava/util/function/BiConsumer;

    move-object v3, p3

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lorg/openjdk/tools/javac/code/Scope$NamedImportScope;->importByName(Lorg/openjdk/tools/javac/code/Types;Lorg/openjdk/tools/javac/code/Scope;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Scope$ImportFilter;Lorg/openjdk/tools/javac/tree/JCTree$JCImport;Ljava/util/function/BiConsumer;)Lorg/openjdk/tools/javac/code/Scope;

    move-result-object p2

    iput-object p2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;->importScope:Lorg/openjdk/tools/javac/code/Scope;

    return-void
.end method

.method private importStaticAll(Lorg/openjdk/tools/javac/tree/JCTree$JCImport;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/comp/Env;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCImport;",
            "Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    iget-object p3, p3, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v0, p3, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->starImportScope:Lorg/openjdk/tools/javac/code/Scope$StarImportScope;

    iget-object p3, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {p3}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$1300(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v1

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->staticImportFilter:Lorg/openjdk/tools/javac/code/Scope$ImportFilter;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->cfHandler:Ljava/util/function/BiConsumer;

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lorg/openjdk/tools/javac/code/Scope$StarImportScope;->importAll(Lorg/openjdk/tools/javac/code/Types;Lorg/openjdk/tools/javac/code/Scope;Lorg/openjdk/tools/javac/code/Scope$ImportFilter;Lorg/openjdk/tools/javac/tree/JCTree$JCImport;Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method private synthetic lambda$new$0(Lorg/openjdk/tools/javac/tree/JCTree$JCImport;Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$400(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object v0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/comp/Check;->completionError(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;)Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method

.method private synthetic lambda$resolveImports$1(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Lorg/openjdk/tools/javac/code/Scope;Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 1

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/code/Symbol;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$400(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object v0

    invoke-virtual {v0, p3, p1}, Lorg/openjdk/tools/javac/comp/Check;->importAccessible(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p2, Lorg/openjdk/tools/javac/code/Scope;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {p2}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$1300(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lorg/openjdk/tools/javac/code/Symbol;->isMemberOf(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Types;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private synthetic lambda$resolveImports$2(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Lorg/openjdk/tools/javac/code/Scope;Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 1

    iget-object p2, p3, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {p2}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$400(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object p2

    invoke-virtual {p2, p3, p1}, Lorg/openjdk/tools/javac/comp/Check;->importAccessible(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private resolveImports(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;Lorg/openjdk/tools/javac/comp/Env;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->starImportScope:Lorg/openjdk/tools/javac/code/Scope$StarImportScope;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Scope$StarImportScope;->isFilled()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->staticImportFilter:Lorg/openjdk/tools/javac/code/Scope$ImportFilter;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->typeImportFilter:Lorg/openjdk/tools/javac/code/Scope$ImportFilter;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$200(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    move-result-object v2

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->immediate()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v3}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$400(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v4}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$600(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/comp/Check;->setLint(Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v3

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->env:Lorg/openjdk/tools/javac/comp/Env;

    :try_start_0
    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v5, p2, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v5, v5, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    new-instance v6, Lorg/openjdk/tools/javac/comp/y2;

    invoke-direct {v6, p0, v5}, Lorg/openjdk/tools/javac/comp/y2;-><init>(Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)V

    iput-object v6, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->staticImportFilter:Lorg/openjdk/tools/javac/code/Scope$ImportFilter;

    new-instance v6, Lorg/openjdk/tools/javac/comp/z2;

    invoke-direct {v6, p0, v5}, Lorg/openjdk/tools/javac/comp/z2;-><init>(Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)V

    iput-object v6, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->typeImportFilter:Lorg/openjdk/tools/javac/code/Scope$ImportFilter;

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v5}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$700(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v5

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v6}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$700(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v6

    iget-object v6, v6, Lorg/openjdk/tools/javac/code/Symtab;->java_base:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v7}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$800(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v7

    iget-object v7, v7, Lorg/openjdk/tools/javac/util/Names;->java_lang:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v5, v6, v7}, Lorg/openjdk/tools/javac/code/Symtab;->enterPackage(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v5

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v6

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/code/Scope;->isEmpty()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/openjdk/tools/javac/util/FatalError;

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {p2}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$900(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    move-result-object p2

    const-string v5, "fatal.err.no.java.lang"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {p2, v5, v6}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/openjdk/tools/javac/util/FatalError;-><init>(Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    throw p1

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_2
    :goto_0
    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v6}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$1000(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v6

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v6

    iget-object v8, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v8}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$1000(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v8

    invoke-virtual {v8, v5}, Lorg/openjdk/tools/javac/tree/TreeMaker;->QualIdent(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object v8

    invoke-virtual {v6, v8, v7}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Import(Lorg/openjdk/tools/javac/tree/JCTree;Z)Lorg/openjdk/tools/javac/tree/JCTree$JCImport;

    move-result-object v6

    invoke-direct {p0, v6, v5, p2}, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->importAll(Lorg/openjdk/tools/javac/tree/JCTree$JCImport;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/comp/Env;)V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->getModuleDecl()Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;

    move-result-object v5

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->getPackage()Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;

    move-result-object v6

    if-eqz v6, :cond_3

    if-nez v5, :cond_3

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->getPackage()Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->checkClassPackageClash(Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;)V

    :cond_3
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->getImports()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/openjdk/tools/javac/tree/JCTree$JCImport;

    invoke-direct {p0, v6}, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->doImport(Lorg/openjdk/tools/javac/tree/JCTree$JCImport;)V

    goto :goto_1

    :cond_4
    if-eqz v5, :cond_5

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    iget-object v6, v5, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v7, v5, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-object v7, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->annotations:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p1, v6, v7, p2}, Lorg/openjdk/tools/javac/comp/TypeEnter;->markDeprecated(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$1100(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/comp/Annotate;

    move-result-object p1

    iget-object v5, v5, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-object v5, v5, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->annotations:Lorg/openjdk/tools/javac/util/List;

    iget-object v6, p2, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v6, v6, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    const/4 v7, 0x0

    invoke-virtual {p1, v5, p2, v6, v7}, Lorg/openjdk/tools/javac/comp/Annotate;->annotateLater(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    iput-object v4, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$400(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object p1

    invoke-virtual {p1, v3}, Lorg/openjdk/tools/javac/comp/Check;->setLint(Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$200(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->setPos(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->staticImportFilter:Lorg/openjdk/tools/javac/code/Scope$ImportFilter;

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->typeImportFilter:Lorg/openjdk/tools/javac/code/Scope$ImportFilter;

    return-void

    :goto_2
    iput-object v4, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {p2}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$400(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object p2

    invoke-virtual {p2, v3}, Lorg/openjdk/tools/javac/comp/Check;->setLint(Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {p2}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$200(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/code/DeferredLintHandler;

    move-result-object p2

    invoke-virtual {p2, v2}, Lorg/openjdk/tools/javac/code/DeferredLintHandler;->setPos(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;)Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->staticImportFilter:Lorg/openjdk/tools/javac/code/Scope$ImportFilter;

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->typeImportFilter:Lorg/openjdk/tools/javac/code/Scope$ImportFilter;

    throw p1
.end method


# virtual methods
.method public attribImportType(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Type;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    iget-boolean v0, v0, Lorg/openjdk/tools/javac/comp/TypeEnter;->completionEnabled:Z

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$400(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    iget-boolean v2, v1, Lorg/openjdk/tools/javac/comp/TypeEnter;->allowDeprecationOnImport:Z

    if-eqz v2, :cond_0

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$600(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$600(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v1

    sget-object v2, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->DEPRECATION:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    sget-object v3, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->REMOVAL:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    filled-new-array {v2, v3}, [Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Lint;->suppress([Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/comp/Check;->setLint(Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lorg/openjdk/tools/javac/comp/TypeEnter;->completionEnabled:Z

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$1200(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/comp/Attr;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lorg/openjdk/tools/javac/comp/Attr;->attribType(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    iput-boolean v1, p2, Lorg/openjdk/tools/javac/comp/TypeEnter;->completionEnabled:Z

    invoke-static {p2}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$400(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object p2

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/comp/Check;->setLint(Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    iput-boolean v1, p2, Lorg/openjdk/tools/javac/comp/TypeEnter;->completionEnabled:Z

    invoke-static {p2}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$400(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object p2

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/comp/Check;->setLint(Lorg/openjdk/tools/javac/code/Lint;)Lorg/openjdk/tools/javac/code/Lint;

    throw p1
.end method

.method public runPhase(Lorg/openjdk/tools/javac/comp/Env;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->PCK:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    sget-object v2, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->TOPLEVEL:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/comp/Env;->enclosing(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->resolveImports(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;Lorg/openjdk/tools/javac/comp/Env;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/TypeEnter$ImportsPhase;->this$0:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/TypeEnter;->access$500(Lorg/openjdk/tools/javac/comp/TypeEnter;)Lorg/openjdk/tools/javac/comp/Todo;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/comp/Todo;->append(Lorg/openjdk/tools/javac/comp/Env;)V

    :cond_0
    iget-object p1, v0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v1, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->complete()V

    :cond_1
    return-void
.end method
