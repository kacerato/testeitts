.class Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;
.super Lorg/openjdk/tools/javac/tree/JCTree$Visitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Modules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UsesProvidesVisitor"
.end annotation


# instance fields
.field private final allProvides:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            ">;>;"
        }
    .end annotation
.end field

.field private final allUses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            ">;"
        }
    .end annotation
.end field

.field directiveToTreeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Directive$ProvidesDirective;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCProvides;",
            ">;"
        }
    .end annotation
.end field

.field private final env:Lorg/openjdk/tools/javac/comp/Env;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation
.end field

.field private final msym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Modules;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Modules;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/comp/Env;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;-><init>()V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->allUses:Ljava/util/Set;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->allProvides:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->directiveToTreeMap:Ljava/util/Map;

    iput-object p2, p0, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->msym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iput-object p3, p0, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->env:Lorg/openjdk/tools/javac/comp/Env;

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->lambda$factoryMethod$1(Lorg/openjdk/tools/javac/code/Symbol;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Ljava/util/Set;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->lambda$visitProvides$2(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;Lorg/openjdk/tools/javac/tree/JCTree$JCDirective;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->lambda$visitModuleDef$0(Lorg/openjdk/tools/javac/tree/JCTree$JCDirective;)V

    return-void
.end method

.method private checkForCorrectness()V
    .locals 10

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->msym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->provides:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Directive$ProvidesDirective;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->directiveToTreeMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCProvides;

    iget-object v3, v1, Lorg/openjdk/tools/javac/code/Directive$ProvidesDirective;->impls:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v4

    iget-object v5, v4, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->msym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    if-eq v5, v6, :cond_2

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v5}, Lorg/openjdk/tools/javac/comp/Modules;->access$300(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v5

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v6

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-static {v4}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->ServiceImplementationNotInRightModule(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    :cond_2
    iget-object v4, v1, Lorg/openjdk/tools/javac/code/Directive$ProvidesDirective;->service:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v4

    iget-object v5, v4, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->msym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-ne v5, v6, :cond_3

    move v5, v7

    goto :goto_1

    :cond_3
    move v5, v8

    :goto_1
    iget-object v6, v6, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->visiblePackages:Ljava/util/Map;

    iget-object v9, v4, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->fullname:Lorg/openjdk/tools/javac/util/Name;

    invoke-interface {v6, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v4, :cond_4

    move v6, v7

    goto :goto_2

    :cond_4
    move v6, v8

    :goto_2
    if-eqz v5, :cond_1

    if-nez v6, :cond_1

    iget-object v5, p0, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->msym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->exports:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;

    iget-object v6, v6, Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    if-ne v4, v6, :cond_5

    move v7, v8

    :cond_6
    if-eqz v7, :cond_8

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->msym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->uses:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/openjdk/tools/javac/code/Directive$UsesDirective;

    iget-object v6, v1, Lorg/openjdk/tools/javac/code/Directive$ProvidesDirective;->service:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Directive$UsesDirective;->service:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    if-ne v6, v5, :cond_7

    goto :goto_3

    :cond_8
    move v8, v7

    :goto_3
    if-eqz v8, :cond_1

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v4}, Lorg/openjdk/tools/javac/comp/Modules;->access$300(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v4

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v5

    iget-object v6, v1, Lorg/openjdk/tools/javac/code/Directive$ProvidesDirective;->service:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-static {v6}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Warnings;->ServiceProvidedButNotExportedOrUsed(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;)V

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method private static synthetic lambda$factoryMethod$1(Lorg/openjdk/tools/javac/code/Symbol;)Z
    .locals 1

    iget-object p0, p0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v0, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MTH:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$visitModuleDef$0(Lorg/openjdk/tools/javac/tree/JCTree$JCDirective;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/tree/JCTree;->accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V

    return-void
.end method

.method private static synthetic lambda$visitProvides$2(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Ljava/util/Set;
    .locals 0

    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method


# virtual methods
.method public factoryMethod(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;
    .locals 5

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Modules;->access$1000(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Names;->provider:Lorg/openjdk/tools/javac/util/Name;

    new-instance v1, Lorg/openjdk/tools/javac/comp/q1;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/comp/q1;-><init>()V

    invoke-virtual {p1, v0, v1}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/util/Filter;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol;

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->isStatic()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->params()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public noArgsConstructor(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;
    .locals 2

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Modules;->access$1000(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Names;->init:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/code/Scope;->getSymbolsByName(Lorg/openjdk/tools/javac/util/Name;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol;

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;->params()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public visitExports(Lorg/openjdk/tools/javac/tree/JCTree$JCExports;)V
    .locals 6

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExports;->directive:Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Scope;->getSymbols()Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol;

    iget-object v4, v2, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v5, Lorg/openjdk/tools/javac/code/Kinds$Kind;->TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    move-object v4, v2

    check-cast v4, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol;->completer:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    invoke-interface {v2}, Lorg/openjdk/tools/javac/code/Symbol$Completer;->isTerminal()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, v4, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->classfile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-interface {v2}, Lorg/openjdk/javax/tools/JavaFileObject;->getKind()Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    move-result-object v2

    sget-object v5, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->CLASS:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    if-ne v2, v5, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, v4, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->classfile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-interface {v2}, Lorg/openjdk/javax/tools/JavaFileObject;->getKind()Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    move-result-object v2

    sget-object v3, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->SOURCE:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    if-ne v2, v3, :cond_0

    iget-object v2, v4, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->classfile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    goto :goto_0

    :cond_3
    :goto_1
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    move v0, v3

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/javax/tools/JavaFileObject;

    iget-object v4, p0, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    iget-object v4, v4, Lorg/openjdk/tools/javac/comp/Modules;->findPackageInFile:Lorg/openjdk/tools/javac/comp/Modules$PackageNameFinder;

    invoke-interface {v4, v2}, Lorg/openjdk/tools/javac/comp/Modules$PackageNameFinder;->findPackageNameOf(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v2

    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExports;->directive:Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    iget-object v4, v4, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->fullname:Lorg/openjdk/tools/javac/util/Name;

    if-ne v2, v4, :cond_5

    goto :goto_3

    :cond_6
    move v3, v0

    :goto_3
    if-nez v3, :cond_7

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Modules;->access$300(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExports;->qualid:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExports;->directive:Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    invoke-static {v2}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->PackageEmptyOrNotFound(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    :cond_7
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->msym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->directives:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExports;->directive:Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->directives:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method

.method public visitModuleDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;)V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->msym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iput-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->directives:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->msym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iput-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->provides:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->msym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iput-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->uses:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->directives:Lorg/openjdk/tools/javac/util/List;

    new-instance v0, Lorg/openjdk/tools/javac/comp/p1;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/p1;-><init>(Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->msym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->directives:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->reverse()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->directives:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->msym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->provides:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->reverse()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->provides:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->msym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->uses:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->reverse()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->uses:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->msym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->requires:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->msym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->requires:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast p1, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;->flags:Ljava/util/Set;

    sget-object v0, Lorg/openjdk/tools/javac/code/Directive$RequiresFlag;->MANDATED:Lorg/openjdk/tools/javac/code/Directive$RequiresFlag;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->msym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->directives:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->requires:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->directives:Lorg/openjdk/tools/javac/util/List;

    :cond_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->msym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->directives:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/Modules;->access$1100(Lorg/openjdk/tools/javac/comp/Modules;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->msym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lorg/openjdk/tools/javac/util/List;->from(Ljava/lang/Iterable;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/List;->appendList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->directives:Lorg/openjdk/tools/javac/util/List;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->checkForCorrectness()V

    return-void
.end method

.method public visitOpens(Lorg/openjdk/tools/javac/tree/JCTree$JCOpens;)V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Modules;->access$900(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCOpens;->qualid:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCOpens;->directive:Lorg/openjdk/tools/javac/code/Directive$OpensDirective;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Directive$OpensDirective;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/comp/Check;->checkPackageExistsForOpens(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->msym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->directives:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCOpens;->directive:Lorg/openjdk/tools/javac/code/Directive$OpensDirective;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->directives:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method

.method public visitProvides(Lorg/openjdk/tools/javac/tree/JCTree$JCProvides;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/Modules;->access$800(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/comp/Attr;

    move-result-object v2

    iget-object v3, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCProvides;->serviceName:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v4, v1, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v5, v1, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v5}, Lorg/openjdk/tools/javac/comp/Modules;->access$700(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v5

    iget-object v5, v5, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v2, v3, v4, v5}, Lorg/openjdk/tools/javac/comp/Attr;->attribType(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v2

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    check-cast v3, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v4, v1, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->allProvides:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v1, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v4}, Lorg/openjdk/tools/javac/comp/Modules;->access$300(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v4

    iget-object v5, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCProvides;->serviceName:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v5

    invoke-static {v3}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->RepeatedProvidesForService(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    :cond_0
    new-instance v4, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v4}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iget-object v5, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCProvides;->implNames:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v5}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v7, v1, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v7, v7, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    move-object v8, v7

    check-cast v8, Lorg/openjdk/tools/javac/comp/AttrContext;

    iget-boolean v8, v8, Lorg/openjdk/tools/javac/comp/AttrContext;->visitingServiceImplementation:Z

    :try_start_0
    check-cast v7, Lorg/openjdk/tools/javac/comp/AttrContext;

    const/4 v9, 0x1

    iput-boolean v9, v7, Lorg/openjdk/tools/javac/comp/AttrContext;->visitingServiceImplementation:Z

    iget-object v7, v1, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v7}, Lorg/openjdk/tools/javac/comp/Modules;->access$800(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/comp/Attr;

    move-result-object v7

    iget-object v9, v1, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v10, v1, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v10}, Lorg/openjdk/tools/javac/comp/Modules;->access$700(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v10

    iget-object v10, v10, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v7, v6, v9, v10}, Lorg/openjdk/tools/javac/comp/Attr;->attribType(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v9, v1, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v9, v9, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v9, Lorg/openjdk/tools/javac/comp/AttrContext;

    iput-boolean v8, v9, Lorg/openjdk/tools/javac/comp/AttrContext;->visitingServiceImplementation:Z

    iget-object v8, v7, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    check-cast v8, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-wide v9, v8, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    const-wide/16 v11, 0x1

    and-long/2addr v9, v11

    const-wide/16 v13, 0x0

    cmp-long v9, v9, v13

    if-nez v9, :cond_2

    iget-object v9, v1, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v9}, Lorg/openjdk/tools/javac/comp/Modules;->access$300(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v9

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v10

    invoke-virtual {v8}, Lorg/openjdk/tools/javac/code/Symbol;->location()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v15

    invoke-static {v8, v15}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->NotDefPublic(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v15

    invoke-virtual {v9, v10, v15}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    :cond_2
    invoke-virtual {v1, v8}, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->factoryMethod(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v9

    if-eqz v9, :cond_3

    iget-object v9, v9, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v9}, Lorg/openjdk/tools/javac/code/Type;->getReturnType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v9

    iget-object v10, v1, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v10}, Lorg/openjdk/tools/javac/comp/Modules;->access$1200(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v10

    invoke-virtual {v10, v9, v2}, Lorg/openjdk/tools/javac/code/Types;->isSubtype(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v9

    if-nez v9, :cond_8

    iget-object v9, v1, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v9}, Lorg/openjdk/tools/javac/comp/Modules;->access$300(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v9

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v10

    sget-object v11, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->ServiceImplementationProviderReturnMustBeSubtypeOfServiceInterface:Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    invoke-virtual {v9, v10, v11}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    goto/16 :goto_1

    :cond_3
    iget-object v9, v1, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v9}, Lorg/openjdk/tools/javac/comp/Modules;->access$1200(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v9

    invoke-virtual {v9, v7, v2}, Lorg/openjdk/tools/javac/code/Types;->isSubtype(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Type;)Z

    move-result v9

    if-nez v9, :cond_4

    iget-object v9, v1, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v9}, Lorg/openjdk/tools/javac/comp/Modules;->access$300(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v9

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v10

    sget-object v11, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->ServiceImplementationMustBeSubtypeOfServiceInterface:Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    invoke-virtual {v9, v10, v11}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v8}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flags()J

    move-result-wide v9

    const-wide/16 v15, 0x400

    and-long/2addr v9, v15

    cmp-long v9, v9, v13

    if-eqz v9, :cond_5

    iget-object v9, v1, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v9}, Lorg/openjdk/tools/javac/comp/Modules;->access$300(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v9

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v10

    invoke-static {v8}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->ServiceImplementationIsAbstract(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v8}, Lorg/openjdk/tools/javac/code/Symbol;->isInner()Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, v1, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v9}, Lorg/openjdk/tools/javac/comp/Modules;->access$300(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v9

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v10

    invoke-static {v8}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->ServiceImplementationIsInner(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v1, v8}, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->noArgsConstructor(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Lorg/openjdk/tools/javac/code/Symbol$MethodSymbol;

    move-result-object v9

    if-nez v9, :cond_7

    iget-object v9, v1, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v9}, Lorg/openjdk/tools/javac/comp/Modules;->access$300(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v9

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v10

    invoke-static {v8}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->ServiceImplementationDoesntHaveANoArgsConstructor(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    goto :goto_1

    :cond_7
    invoke-virtual {v9}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v9

    and-long/2addr v9, v11

    cmp-long v9, v9, v13

    if-nez v9, :cond_8

    iget-object v9, v1, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v9}, Lorg/openjdk/tools/javac/comp/Modules;->access$300(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v9

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v10

    invoke-static {v8}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->ServiceImplementationNoArgsConstructorNotPublic(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    :cond_8
    :goto_1
    sget-object v9, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v7, v9}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v1, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->allProvides:Ljava/util/Map;

    new-instance v9, Lorg/openjdk/tools/javac/comp/o1;

    invoke-direct {v9}, Lorg/openjdk/tools/javac/comp/o1;-><init>()V

    invoke-interface {v7, v3, v9}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v4, v8}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto/16 :goto_0

    :cond_9
    iget-object v7, v1, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v7}, Lorg/openjdk/tools/javac/comp/Modules;->access$300(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v7

    invoke-virtual {v6}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v6

    invoke-static {v3, v8}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->DuplicateProvides(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    iget-object v2, v1, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v2, v2, Lorg/openjdk/tools/javac/comp/Env;->info:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/comp/AttrContext;

    iput-boolean v8, v2, Lorg/openjdk/tools/javac/comp/AttrContext;->visitingServiceImplementation:Z

    throw v0

    :cond_a
    sget-object v5, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v2, v5}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/ListBuffer;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b

    new-instance v2, Lorg/openjdk/tools/javac/code/Directive$ProvidesDirective;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/openjdk/tools/javac/code/Directive$ProvidesDirective;-><init>(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;Lorg/openjdk/tools/javac/util/List;)V

    iget-object v3, v1, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->msym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v4, v3, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->provides:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v4, v2}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    iput-object v4, v3, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->provides:Lorg/openjdk/tools/javac/util/List;

    iget-object v3, v1, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->msym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v4, v3, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->directives:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v4, v2}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v4

    iput-object v4, v3, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->directives:Lorg/openjdk/tools/javac/util/List;

    iget-object v3, v1, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->directiveToTreeMap:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method public visitRequires(Lorg/openjdk/tools/javac/tree/JCTree$JCRequires;)V
    .locals 4

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCRequires;->directive:Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/Modules;->allModules()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCRequires;->directive:Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;->module:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Modules;->access$900(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCRequires;->moduleName:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->msym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCRequires;->directive:Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;->module:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {v0, v1, v2, v3}, Lorg/openjdk/tools/javac/comp/Check;->checkDeprecated(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Modules;->access$900(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCRequires;->moduleName:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCRequires;->directive:Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/comp/Check;->checkModuleRequires(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->msym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->directives:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCRequires;->directive:Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->directives:Lorg/openjdk/tools/javac/util/List;

    :cond_0
    return-void
.end method

.method public visitUses(Lorg/openjdk/tools/javac/tree/JCTree$JCUses;)V
    .locals 5

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Modules;->access$800(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/comp/Attr;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCUses;->qualid:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->env:Lorg/openjdk/tools/javac/comp/Env;

    iget-object v3, p0, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v3}, Lorg/openjdk/tools/javac/comp/Modules;->access$700(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v3

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symtab;->objectType:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v0, v1, v2, v3}, Lorg/openjdk/tools/javac/comp/Attr;->attribType(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/code/Type;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object v0

    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCUses;->qualid:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->symbol(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->flags()J

    move-result-wide v1

    const-wide/16 v3, 0x4000

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/Modules;->access$300(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v1

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCUses;->qualid:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-static {v0}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->ServiceDefinitionIsEnum(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/openjdk/tools/javac/code/TypeTag;->CLASS:Lorg/openjdk/tools/javac/code/TypeTag;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Type;->hasTag(Lorg/openjdk/tools/javac/code/TypeTag;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Type;->tsym:Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->allUses:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p1, Lorg/openjdk/tools/javac/code/Directive$UsesDirective;

    invoke-direct {p1, v0}, Lorg/openjdk/tools/javac/code/Directive$UsesDirective;-><init>(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->msym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->uses:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iput-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->uses:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->msym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->directives:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->directives:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Modules$UsesProvidesVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/Modules;->access$300(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    invoke-static {v0}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->DuplicateUses(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    :cond_2
    :goto_0
    return-void
.end method
