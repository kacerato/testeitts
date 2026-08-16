.class public Lorg/openjdk/tools/javac/comp/Enter;
.super Lorg/openjdk/tools/javac/tree/JCTree$Visitor;
.source "SourceFile"


# static fields
.field protected static final enterKey:Lorg/openjdk/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "Lorg/openjdk/tools/javac/comp/Enter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field annotate:Lorg/openjdk/tools/javac/comp/Annotate;

.field chk:Lorg/openjdk/tools/javac/comp/Check;

.field diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

.field protected env:Lorg/openjdk/tools/javac/comp/Env;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation
.end field

.field fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

.field lint:Lorg/openjdk/tools/javac/code/Lint;

.field log:Lorg/openjdk/tools/javac/util/Log;

.field make:Lorg/openjdk/tools/javac/tree/TreeMaker;

.field modules:Lorg/openjdk/tools/javac/comp/Modules;

.field names:Lorg/openjdk/tools/javac/util/Names;

.field pkginfoOpt:Lorg/openjdk/tools/javac/main/Option$PkgInfo;

.field private predefClassDef:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

.field result:Lorg/openjdk/tools/javac/code/Type;

.field syms:Lorg/openjdk/tools/javac/code/Symtab;

.field private final todo:Lorg/openjdk/tools/javac/comp/Todo;

.field typeEnter:Lorg/openjdk/tools/javac/comp/TypeEnter;

.field typeEnvs:Lorg/openjdk/tools/javac/comp/TypeEnvs;

.field types:Lorg/openjdk/tools/javac/code/Types;

.field uncompleted:Lorg/openjdk/tools/javac/util/ListBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            ">;"
        }
    .end annotation
.end field

.field unfinishedModules:Lorg/openjdk/tools/javac/util/ListBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/comp/Enter;->enterKey:Lorg/openjdk/tools/javac/util/Context$Key;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 8

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;-><init>()V

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Enter;->unfinishedModules:Lorg/openjdk/tools/javac/util/ListBuffer;

    sget-object v0, Lorg/openjdk/tools/javac/comp/Enter;->enterKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Log;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Enter;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Enter;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Symtab;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Enter;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Check;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Enter;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/TypeEnter;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/TypeEnter;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Enter;->typeEnter:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Types;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Enter;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Annotate;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Annotate;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Enter;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Lint;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Enter;->lint:Lorg/openjdk/tools/javac/code/Lint;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Names;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Enter;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Modules;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Modules;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Enter;->modules:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Enter;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Enter;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Modifiers(J)Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    move-result-object v2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Enter;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symtab;->predefClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v3, v0, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v7

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Lorg/openjdk/tools/javac/tree/TreeMaker;->ClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Enter;->predefClassDef:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Enter;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->predefClass:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iput-object v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Todo;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Todo;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Enter;->todo:Lorg/openjdk/tools/javac/comp/Todo;

    const-class v0, Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/javax/tools/JavaFileManager;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Enter;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Options;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Options;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/main/Option$PkgInfo;->get(Lorg/openjdk/tools/javac/util/Options;)Lorg/openjdk/tools/javac/main/Option$PkgInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Enter;->pkginfoOpt:Lorg/openjdk/tools/javac/main/Option$PkgInfo;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/TypeEnvs;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/TypeEnvs;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Enter;->typeEnvs:Lorg/openjdk/tools/javac/comp/TypeEnvs;

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/comp/Enter;->lambda$visitTopLevel$0(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/comp/Enter;->lambda$visitClassDef$2(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/openjdk/tools/javac/comp/Enter;Ljava/util/Map;Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/comp/Enter;->lambda$visitTopLevel$1(Ljava/util/Map;Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Z

    move-result p0

    return p0
.end method

.method private static classNameMatchesFileName(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/comp/Env;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)Z"
        }
    .end annotation

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    iget-object p0, p0, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->SOURCE:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    invoke-interface {p1, p0, v0}, Lorg/openjdk/javax/tools/JavaFileObject;->isNameCompatible(Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Z

    move-result p0

    return p0
.end method

.method public static instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Enter;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/comp/Enter;->enterKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Lorg/openjdk/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/comp/Enter;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/comp/Enter;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/Enter;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    :cond_0
    return-object v0
.end method

.method private static synthetic lambda$visitClassDef$2(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/code/Symbol;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$visitTopLevel$0(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Z
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$visitTopLevel$1(Ljava/util/Map;Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Z
    .locals 1

    iget-object v0, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->fullname:Lorg/openjdk/tools/javac/util/Name;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Enter;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p2, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->fullname:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0, p3, p2}, Lorg/openjdk/tools/javac/code/Symtab;->getPackage(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public classEnter(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;
    .locals 2
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

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Enter;->env:Lorg/openjdk/tools/javac/comp/Env;

    .line 2
    :try_start_0
    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/Enter;->env:Lorg/openjdk/tools/javac/comp/Env;

    .line 3
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Enter;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/comp/Annotate;->blockAnnotations()V

    .line 4
    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/tree/JCTree;->accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V

    .line 5
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Enter;->result:Lorg/openjdk/tools/javac/code/Type;
    :try_end_0
    .catch Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_0
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Enter;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/comp/Annotate;->unblockAnnotations()V

    .line 7
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Enter;->env:Lorg/openjdk/tools/javac/comp/Env;

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p2

    .line 8
    :try_start_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Enter;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Lorg/openjdk/tools/javac/comp/Check;->completionError(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 9
    :goto_1
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Enter;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/comp/Annotate;->unblockAnnotations()V

    .line 10
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Enter;->env:Lorg/openjdk/tools/javac/comp/Env;

    .line 11
    throw p1
.end method

.method public classEnter(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/openjdk/tools/javac/tree/JCTree;",
            ">(",
            "Lorg/openjdk/tools/javac/util/List<",
            "TT;>;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Type;",
            ">;"
        }
    .end annotation

    .line 12
    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    .line 13
    :goto_0
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 14
    iget-object v1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {p0, v1, p2}, Lorg/openjdk/tools/javac/comp/Enter;->classEnter(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 15
    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    .line 16
    :cond_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public classEnv(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation

    iget-object v0, p2, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-static {v1}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->create(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/comp/AttrContext;->dup(Lorg/openjdk/tools/javac/code/Scope$WriteableScope;)Lorg/openjdk/tools/javac/comp/AttrContext;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/openjdk/tools/javac/comp/Env;->dup(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v0

    iput-object p1, v0, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iput-object p2, v0, Lorg/openjdk/tools/javac/comp/Env;->outer:Lorg/openjdk/tools/javac/comp/Env;

    iget-object p1, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lorg/openjdk/tools/javac/comp/AttrContext;->isSelfCall:Z

    move-object v1, p1

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/openjdk/tools/javac/comp/AttrContext;->lint:Lorg/openjdk/tools/javac/code/Lint;

    check-cast p1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object p2, p2, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-static {p2}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isDiamond(Lorg/openjdk/tools/javac/tree/JCTree;)Z

    move-result p2

    iput-boolean p2, p1, Lorg/openjdk/tools/javac/comp/AttrContext;->isAnonymousDiamond:Z

    return-object v0
.end method

.method public complete(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;",
            ">;",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Enter;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/Annotate;->blockAnnotations()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Enter;->uncompleted:Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Enter;->typeEnter:Lorg/openjdk/tools/javac/comp/TypeEnter;

    iget-boolean v1, v1, Lorg/openjdk/tools/javac/comp/TypeEnter;->completionEnabled:Z

    if-eqz v1, :cond_0

    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object v1, p0, Lorg/openjdk/tools/javac/comp/Enter;->uncompleted:Lorg/openjdk/tools/javac/util/ListBuffer;

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lorg/openjdk/tools/javac/comp/Enter;->classEnter(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/util/List;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Enter;->typeEnter:Lorg/openjdk/tools/javac/comp/TypeEnter;

    iget-boolean v1, v1, Lorg/openjdk/tools/javac/comp/TypeEnter;->completionEnabled:Z

    if-eqz v1, :cond_6

    :goto_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Enter;->uncompleted:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Enter;->uncompleted:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    if-eqz p2, :cond_2

    if-eq p2, v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_1
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->complete()V

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Enter;->modules:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/comp/Modules;->modulesInitialized()Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->getModuleDecl()Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Enter;->unfinishedModules:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v1, p2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Enter;->typeEnter:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-static {p2}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/openjdk/tools/javac/comp/TypeEnter;->ensureImportsChecked(Lorg/openjdk/tools/javac/util/List;)V

    goto :goto_2

    :cond_5
    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Enter;->typeEnter:Lorg/openjdk/tools/javac/comp/TypeEnter;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Enter;->unfinishedModules:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/openjdk/tools/javac/comp/TypeEnter;->ensureImportsChecked(Lorg/openjdk/tools/javac/util/List;)V

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Enter;->unfinishedModules:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/ListBuffer;->clear()V

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Enter;->typeEnter:Lorg/openjdk/tools/javac/comp/TypeEnter;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/comp/TypeEnter;->ensureImportsChecked(Lorg/openjdk/tools/javac/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Enter;->uncompleted:Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Enter;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/comp/Annotate;->unblockAnnotations()V

    return-void

    :goto_3
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Enter;->uncompleted:Lorg/openjdk/tools/javac/util/ListBuffer;

    iget-object p2, p0, Lorg/openjdk/tools/javac/comp/Enter;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/comp/Annotate;->unblockAnnotations()V

    throw p1
.end method

.method public duplicateClass(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Enter;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object p2, p2, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->fullname:Lorg/openjdk/tools/javac/util/Name;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v1, "duplicate.class"

    invoke-virtual {v0, p1, v1, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public enterScope(Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Scope$WriteableScope;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)",
            "Lorg/openjdk/tools/javac/code/Scope$WriteableScope;"
        }
    .end annotation

    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v1, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->CLASSDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members_field:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    :goto_0
    return-object p1
.end method

.method public getClassEnv(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/comp/Env;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;",
            ")",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Enter;->getEnv(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    move-object v1, v0

    :goto_0
    iget-object v2, v1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    move-object v3, v2

    check-cast v3, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/AttrContext;->lint:Lorg/openjdk/tools/javac/code/Lint;

    if-nez v3, :cond_1

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Env;->next:Lorg/openjdk/tools/javac/comp/Env;

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    check-cast v2, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/AttrContext;->lint:Lorg/openjdk/tools/javac/code/Lint;

    invoke-virtual {v2, p1}, Lorg/openjdk/tools/javac/code/Lint;->augment(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object p1

    iput-object p1, v1, Lorg/openjdk/tools/javac/comp/AttrContext;->lint:Lorg/openjdk/tools/javac/code/Lint;

    return-object v0
.end method

.method public getEnv(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/comp/Env;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;",
            ")",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Enter;->typeEnvs:Lorg/openjdk/tools/javac/comp/TypeEnvs;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/comp/TypeEnvs;->get(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object p1

    return-object p1
.end method

.method public getEnvs()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Enter;->typeEnvs:Lorg/openjdk/tools/javac/comp/TypeEnvs;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/TypeEnvs;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getTopLevelEnv(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)Lorg/openjdk/tools/javac/comp/Env;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;",
            ")",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/comp/Env;

    new-instance v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/comp/AttrContext;-><init>()V

    invoke-direct {v0, p1, v1}, Lorg/openjdk/tools/javac/comp/Env;-><init>(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)V

    iput-object p1, v0, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Enter;->predefClassDef:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iput-object v1, v0, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->toplevelScope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iput-object p1, v2, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Enter;->lint:Lorg/openjdk/tools/javac/code/Lint;

    iput-object p1, v1, Lorg/openjdk/tools/javac/comp/AttrContext;->lint:Lorg/openjdk/tools/javac/code/Lint;

    return-object v0
.end method

.method public main(Lorg/openjdk/tools/javac/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Enter;->complete(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    return-void
.end method

.method public moduleEnv(Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p2, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-static {v1}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->create(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/comp/AttrContext;->dup(Lorg/openjdk/tools/javac/code/Scope$WriteableScope;)Lorg/openjdk/tools/javac/comp/AttrContext;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lorg/openjdk/tools/javac/comp/Env;->dup(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Enter;->predefClassDef:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iput-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iput-object p2, p1, Lorg/openjdk/tools/javac/comp/Env;->outer:Lorg/openjdk/tools/javac/comp/Env;

    iget-object p2, p1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Lorg/openjdk/tools/javac/comp/AttrContext;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/openjdk/tools/javac/comp/AttrContext;->isSelfCall:Z

    check-cast p2, Lorg/openjdk/tools/javac/comp/AttrContext;

    const/4 v0, 0x0

    iput-object v0, p2, Lorg/openjdk/tools/javac/comp/AttrContext;->lint:Lorg/openjdk/tools/javac/code/Lint;

    return-object p1
.end method

.method public newRound()V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Enter;->typeEnvs:Lorg/openjdk/tools/javac/comp/TypeEnvs;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/TypeEnvs;->clear()V

    return-void
.end method

.method public topLevelEnv(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)Lorg/openjdk/tools/javac/comp/Env;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;",
            ")",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/comp/Env;

    new-instance v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/comp/AttrContext;-><init>()V

    invoke-direct {v0, p1, v1}, Lorg/openjdk/tools/javac/comp/Env;-><init>(Lorg/openjdk/tools/javac/tree/JCTree;Ljava/lang/Object;)V

    iput-object p1, v0, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Enter;->predefClassDef:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iput-object v1, v0, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    invoke-static {v1}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->create(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v1

    iput-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->toplevelScope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    new-instance v1, Lorg/openjdk/tools/javac/code/Scope$NamedImportScope;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->toplevelScope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-direct {v1, v2, v3}, Lorg/openjdk/tools/javac/code/Scope$NamedImportScope;-><init>(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Scope;)V

    iput-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->namedImportScope:Lorg/openjdk/tools/javac/code/Scope$NamedImportScope;

    new-instance v1, Lorg/openjdk/tools/javac/code/Scope$StarImportScope;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    invoke-direct {v1, v2}, Lorg/openjdk/tools/javac/code/Scope$StarImportScope;-><init>(Lorg/openjdk/tools/javac/code/Symbol;)V

    iput-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->starImportScope:Lorg/openjdk/tools/javac/code/Scope$StarImportScope;

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->toplevelScope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iput-object p1, v2, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    check-cast v1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Enter;->lint:Lorg/openjdk/tools/javac/code/Lint;

    iput-object p1, v1, Lorg/openjdk/tools/javac/comp/AttrContext;->lint:Lorg/openjdk/tools/javac/code/Lint;

    return-object v0
.end method

.method public visitClassDef(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Enter;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v2, v1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object v8, v2, Lorg/openjdk/tools/javac/code/Scope;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/comp/Enter;->enterScope(Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v1

    iget-object v2, v8, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$Kind;->PCK:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    const/4 v9, 0x0

    const-wide/16 v4, 0x200

    const-wide/16 v10, 0x0

    if-ne v2, v3, :cond_4

    move-object v2, v8

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-object v3, v2

    :goto_0
    if-eqz v3, :cond_0

    iget-object v6, v3, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v12, Lorg/openjdk/tools/javac/code/Kinds$Kind;->PCK:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v6, v12, :cond_0

    iget-wide v12, v3, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/32 v14, 0x800000

    or-long/2addr v12, v14

    iput-wide v12, v3, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lorg/openjdk/tools/javac/comp/Enter;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v6, v0, Lorg/openjdk/tools/javac/comp/Enter;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v6, v6, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v6, v6, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v12, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v3, v6, v12, v2}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v3

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->enterIfAbsent(Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object v2, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v12, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v14, 0x1

    and-long/2addr v12, v14

    cmp-long v2, v12, v10

    if-eqz v2, :cond_3

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Enter;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-static {v3, v2}, Lorg/openjdk/tools/javac/comp/Enter;->classNameMatchesFileName(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/comp/Env;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$KindName;->CLASS:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    iget-object v6, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v12, v6, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v14, 0x4000

    and-long/2addr v14, v12

    cmp-long v6, v14, v10

    if-eqz v6, :cond_1

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$KindName;->ENUM:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    goto :goto_1

    :cond_1
    and-long/2addr v4, v12

    cmp-long v4, v4, v10

    if-eqz v4, :cond_2

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$KindName;->INTERFACE:Lorg/openjdk/tools/javac/code/Kinds$KindName;

    :cond_2
    :goto_1
    iget-object v4, v0, Lorg/openjdk/tools/javac/comp/Enter;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v5

    iget-object v6, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->name:Lorg/openjdk/tools/javac/util/Name;

    filled-new-array {v2, v6}, [Ljava/lang/Object;

    move-result-object v2

    const-string v6, "class.public.should.be.in.file"

    invoke-virtual {v4, v5, v6, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_2
    move-object v12, v3

    goto/16 :goto_4

    :cond_4
    iget-object v2, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/Name;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Enter;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v3

    iget-object v6, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v2, v3, v6, v1}, Lorg/openjdk/tools/javac/comp/Check;->checkUniqueClassName(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Scope;)Z

    move-result v2

    if-nez v2, :cond_5

    iput-object v9, v0, Lorg/openjdk/tools/javac/comp/Enter;->result:Lorg/openjdk/tools/javac/code/Type;

    return-void

    :cond_5
    iget-object v2, v8, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v2, v3, :cond_b

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Enter;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v6, v0, Lorg/openjdk/tools/javac/comp/Enter;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v6, v6, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v6, v6, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v12, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->name:Lorg/openjdk/tools/javac/util/Name;

    move-object v13, v8

    check-cast v13, Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v2, v6, v12, v13}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v2

    iget-object v6, v2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    if-eq v6, v8, :cond_9

    iget-object v6, v8, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v6, v6, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eq v6, v3, :cond_6

    move v6, v13

    goto :goto_3

    :cond_6
    move v6, v12

    :goto_3
    new-instance v14, Lorg/openjdk/tools/javac/comp/g0;

    invoke-direct {v14, v8}, Lorg/openjdk/tools/javac/comp/g0;-><init>(Lorg/openjdk/tools/javac/code/Symbol;)V

    invoke-static {v6, v14}, Lorg/openjdk/tools/javac/util/Assert;->check(ZLjava/util/function/Supplier;)V

    iget-object v6, v2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v6, v6, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v6, v3, :cond_7

    move v12, v13

    :cond_7
    new-instance v3, Lorg/openjdk/tools/javac/comp/h0;

    invoke-direct {v3, v2}, Lorg/openjdk/tools/javac/comp/h0;-><init>(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    invoke-static {v12, v3}, Lorg/openjdk/tools/javac/util/Assert;->check(ZLjava/util/function/Supplier;)V

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    check-cast v3, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members_field:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    if-eqz v3, :cond_8

    invoke-virtual {v3, v2}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->remove(Lorg/openjdk/tools/javac/code/Symbol;)V

    :cond_8
    iput-object v8, v2, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    :cond_9
    iget-wide v12, v8, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    and-long v3, v12, v4

    cmp-long v3, v3, v10

    if-eqz v3, :cond_a

    iget-object v3, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v4, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v12, 0x9

    or-long/2addr v4, v12

    iput-wide v4, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    :cond_a
    move-object v12, v2

    goto :goto_4

    :cond_b
    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Enter;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v3, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v2, v3, v8}, Lorg/openjdk/tools/javac/code/Symtab;->defineClass(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v3

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Enter;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/comp/Check;->localClassName(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v2

    iput-object v2, v3, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flatname:Lorg/openjdk/tools/javac/util/Name;

    iget-object v2, v3, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/Name;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Enter;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v4

    iget-object v5, v0, Lorg/openjdk/tools/javac/comp/Enter;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v5, v5, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v5, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v5, v5, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v2, v4, v3, v5}, Lorg/openjdk/tools/javac/comp/Check;->checkTransparentClass(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/code/Scope;)V

    goto/16 :goto_2

    :goto_4
    iput-object v12, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Enter;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v2, v12}, Lorg/openjdk/tools/javac/comp/Check;->getCompiled(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v2

    if-eqz v2, :cond_c

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    invoke-virtual {v0, v1, v12}, Lorg/openjdk/tools/javac/comp/Enter;->duplicateClass(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Enter;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v2, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->name:Lorg/openjdk/tools/javac/util/Name;

    check-cast v8, Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    sget-object v3, Lorg/openjdk/tools/javac/code/Type;->noType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    invoke-virtual {v1, v2, v8, v3}, Lorg/openjdk/tools/javac/code/Types;->createErrorType(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v1

    iput-object v1, v0, Lorg/openjdk/tools/javac/comp/Enter;->result:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iput-object v1, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    return-void

    :cond_c
    iget-object v2, v0, Lorg/openjdk/tools/javac/comp/Enter;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v2, v12}, Lorg/openjdk/tools/javac/comp/Check;->putCompiled(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    invoke-virtual {v1, v12}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->enter(Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Enter;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {v0, v7, v1}, Lorg/openjdk/tools/javac/comp/Enter;->classEnv(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v13

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Enter;->typeEnvs:Lorg/openjdk/tools/javac/comp/TypeEnvs;

    invoke-virtual {v1, v12, v13}, Lorg/openjdk/tools/javac/comp/TypeEnvs;->put(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;

    sget-object v1, Lorg/openjdk/tools/javac/code/Symbol$Completer;->NULL_COMPLETER:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    iput-object v1, v12, Lorg/openjdk/tools/javac/code/Symbol;->completer:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Enter;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    iget-object v3, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v3, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    move-object v5, v12

    move-object/from16 v6, p1

    invoke-virtual/range {v1 .. v6}, Lorg/openjdk/tools/javac/comp/Check;->checkFlags(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;JLorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/tree/JCTree;)J

    move-result-wide v1

    iput-wide v1, v12, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Enter;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    iput-object v1, v12, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-static {v12}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->create(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v1

    iput-object v1, v12, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members_field:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v12}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->clearAnnotationMetadata()V

    iget-object v1, v12, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    check-cast v1, Lorg/openjdk/tools/javac/code/Type$ClassType;

    iget-object v2, v8, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$Kind;->PCK:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v2, v3, :cond_e

    iget-wide v2, v12, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/16 v4, 0x8

    and-long/2addr v2, v4

    cmp-long v2, v2, v10

    if-nez v2, :cond_e

    :goto_5
    iget-object v2, v8, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$KindSelector;->VAL_MTH:Lorg/openjdk/tools/javac/code/Kinds$KindSelector;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/code/Kinds$Kind;->matches(Lorg/openjdk/tools/javac/code/Kinds$KindSelector;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-wide v2, v8, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    and-long/2addr v2, v4

    cmp-long v2, v2, v10

    if-nez v2, :cond_d

    iget-object v8, v8, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    goto :goto_5

    :cond_d
    iget-object v2, v8, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v2, v3, :cond_e

    iget-object v2, v8, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Type$ClassType;->setEnclosingType(Lorg/openjdk/tools/javac/code/Type;)V

    :cond_e
    iget-object v2, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->typarams:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, v2, v13}, Lorg/openjdk/tools/javac/comp/Enter;->classEnter(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    iput-object v2, v1, Lorg/openjdk/tools/javac/code/Type$ClassType;->typarams_field:Lorg/openjdk/tools/javac/util/List;

    iput-object v9, v1, Lorg/openjdk/tools/javac/code/Type$ClassType;->allparams_field:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Enter;->typeEnter:Lorg/openjdk/tools/javac/comp/TypeEnter;

    iput-object v1, v12, Lorg/openjdk/tools/javac/code/Symbol;->completer:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    invoke-virtual {v12}, Lorg/openjdk/tools/javac/code/Symbol;->isLocal()Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, v0, Lorg/openjdk/tools/javac/comp/Enter;->uncompleted:Lorg/openjdk/tools/javac/util/ListBuffer;

    if-eqz v1, :cond_f

    invoke-virtual {v1, v12}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    :cond_f
    iget-object v1, v7, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->defs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, v1, v13}, Lorg/openjdk/tools/javac/comp/Enter;->classEnter(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/util/List;

    iget-object v1, v12, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    iput-object v1, v0, Lorg/openjdk/tools/javac/comp/Enter;->result:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method

.method public visitModuleDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;)V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Enter;->env:Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Enter;->moduleEnv(Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Enter;->typeEnvs:Lorg/openjdk/tools/javac/comp/TypeEnvs;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {v1, v2, v0}, Lorg/openjdk/tools/javac/comp/TypeEnvs;->put(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Enter;->modules:Lorg/openjdk/tools/javac/comp/Modules;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/comp/Modules;->isInModuleGraph(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Enter;->todo:Lorg/openjdk/tools/javac/comp/Todo;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/comp/Todo;->append(Lorg/openjdk/tools/javac/comp/Env;)V

    :cond_0
    return-void
.end method

.method public visitTopLevel(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)V
    .locals 11

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Enter;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    const-string v2, "package-info"

    sget-object v3, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->SOURCE:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    invoke-interface {v1, v2, v3}, Lorg/openjdk/javax/tools/JavaFileObject;->isNameCompatible(Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Z

    move-result v1

    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->isModuleInfo(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->getPackage()Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Enter;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    sget-object v4, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->NoPkgInModuleInfoJava:Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    invoke-virtual {v2, v1, v4}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Enter;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symtab;->rootPackage:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    iput-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Enter;->topLevelEnv(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v1

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->defs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, v2, v1}, Lorg/openjdk/tools/javac/comp/Enter;->classEnter(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Enter;->modules:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/comp/Modules;->getUsesProvidesCompleter()Lorg/openjdk/tools/javac/code/Symbol$Completer;

    move-result-object v1

    iput-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->usesProvidesCompleter:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    goto/16 :goto_4

    :cond_1
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->getPackage()Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;

    move-result-object v2

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Enter;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v6, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v7, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;->pid:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v7}, Lorg/openjdk/tools/javac/tree/TreeInfo;->fullName(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/openjdk/tools/javac/code/Symtab;->enterPackage(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v5

    iput-object v5, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    iput-object v5, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    iget-object v5, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;->annotations:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Enter;->pkginfoOpt:Lorg/openjdk/tools/javac/main/Option$PkgInfo;

    sget-object v6, Lorg/openjdk/tools/javac/main/Option$PkgInfo;->ALWAYS:Lorg/openjdk/tools/javac/main/Option$PkgInfo;

    if-eq v5, v6, :cond_2

    iget-object v5, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->docComments:Lorg/openjdk/tools/javac/tree/DocCommentTable;

    if-eqz v5, :cond_5

    :cond_2
    if-eqz v1, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    iget-object v5, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;->annotations:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Enter;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v6, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;->annotations:Lorg/openjdk/tools/javac/util/List;

    iget-object v6, v6, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v6, Lorg/openjdk/tools/javac/tree/JCTree$JCAnnotation;

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v6

    const-string v7, "pkg.annotations.sb.in.package-info.java"

    new-array v8, v4, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7, v8}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object v5, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->unnamedPackage:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    iput-object v5, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    :cond_5
    :goto_0
    iget-object v5, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->visiblePackages:Ljava/util/Map;

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Enter;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v7, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    iget-object v7, v7, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->fullname:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v6, v7}, Lorg/openjdk/tools/javac/code/Symtab;->listPackageModules(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lorg/openjdk/tools/javac/comp/e0;

    invoke-direct {v7, p1}, Lorg/openjdk/tools/javac/comp/e0;-><init>(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)V

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v6

    new-instance v7, Lorg/openjdk/tools/javac/comp/f0;

    invoke-direct {v7, p0, v5, p1}, Lorg/openjdk/tools/javac/comp/f0;-><init>(Lorg/openjdk/tools/javac/comp/Enter;Ljava/util/Map;Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)V

    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Optional;->isPresent()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Enter;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v5}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjdk/tools/javac/code/Symbol;

    invoke-static {v5}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->PackageInOtherModule(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v5

    invoke-virtual {v6, v2, v5}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    :cond_6
    iget-object v5, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/code/Symbol;->complete()V

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/comp/Enter;->topLevelEnv(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v5

    if-eqz v1, :cond_7

    invoke-virtual {v5, v2}, Lorg/openjdk/tools/javac/comp/Env;->dup(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v6

    goto :goto_1

    :cond_7
    move-object v6, v3

    :goto_1
    if-eqz v1, :cond_b

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Enter;->typeEnvs:Lorg/openjdk/tools/javac/comp/TypeEnvs;

    iget-object v7, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    invoke-virtual {v1, v7}, Lorg/openjdk/tools/javac/comp/TypeEnvs;->get(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Enter;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    iget-object v8, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-interface {v7, v8, v1}, Lorg/openjdk/javax/tools/JavaFileManager;->isSameFile(Lorg/openjdk/javax/tools/FileObject;Lorg/openjdk/javax/tools/FileObject;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Enter;->log:Lorg/openjdk/tools/javac/util/Log;

    if-eqz v2, :cond_8

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;->pid:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    goto :goto_2

    :cond_8
    move-object v2, v3

    :goto_2
    iget-object v7, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "pkg-info.already.seen"

    invoke-virtual {v1, v2, v8, v7}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Enter;->typeEnvs:Lorg/openjdk/tools/javac/comp/TypeEnvs;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    invoke-virtual {v1, v2, v6}, Lorg/openjdk/tools/javac/comp/TypeEnvs;->put(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    :goto_3
    if-eqz v1, :cond_a

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v7, Lorg/openjdk/tools/javac/code/Kinds$Kind;->PCK:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v2, v7, :cond_a

    iget-wide v7, v1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/32 v9, 0x800000

    or-long/2addr v7, v9

    iput-wide v7, v1, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    goto :goto_3

    :cond_a
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Enter;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->package_info:Lorg/openjdk/tools/javac/util/Name;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Enter;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v7, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v8, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    invoke-virtual {v2, v7, v1, v8}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v2

    iget-object v7, p0, Lorg/openjdk/tools/javac/comp/Enter;->names:Lorg/openjdk/tools/javac/util/Names;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v1

    iput-object v1, v2, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flatname:Lorg/openjdk/tools/javac/util/Name;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    iput-object v1, v2, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    sget-object v1, Lorg/openjdk/tools/javac/code/Symbol$Completer;->NULL_COMPLETER:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    iput-object v1, v2, Lorg/openjdk/tools/javac/code/Symbol;->completer:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    invoke-static {v2}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->create(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v1

    iput-object v1, v2, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members_field:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    iput-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->package_info:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    :cond_b
    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->defs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p0, p1, v5}, Lorg/openjdk/tools/javac/comp/Enter;->classEnter(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/util/List;

    if-eqz v4, :cond_c

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Enter;->todo:Lorg/openjdk/tools/javac/comp/Todo;

    invoke-virtual {p1, v6}, Lorg/openjdk/tools/javac/comp/Todo;->append(Lorg/openjdk/tools/javac/comp/Env;)V

    :cond_c
    :goto_4
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Enter;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    iput-object v3, p0, Lorg/openjdk/tools/javac/comp/Enter;->result:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method

.method public visitTree(Lorg/openjdk/tools/javac/tree/JCTree;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Enter;->result:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method

.method public visitTypeParameter(Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;)V
    .locals 4

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    if-eqz v0, :cond_0

    check-cast v0, Lorg/openjdk/tools/javac/code/Type$TypeVar;

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/code/Type$TypeVar;

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCTypeParameter;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Enter;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Scope;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Enter;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symtab;->botType:Lorg/openjdk/tools/javac/code/Type;

    invoke-direct {v0, v1, v2, v3}, Lorg/openjdk/tools/javac/code/Type$TypeVar;-><init>(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Type;)V

    :goto_0
    iput-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Enter;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    iget-object v2, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Enter;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v3, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object v3, v3, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    invoke-virtual {v1, p1, v2, v3}, Lorg/openjdk/tools/javac/comp/Check;->checkUnique(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Scope;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Enter;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/AttrContext;->scope:Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->enter(Lorg/openjdk/tools/javac/code/Symbol;)V

    :cond_1
    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Enter;->result:Lorg/openjdk/tools/javac/code/Type;

    return-void
.end method
