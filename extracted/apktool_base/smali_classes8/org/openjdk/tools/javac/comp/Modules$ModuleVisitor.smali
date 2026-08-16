.class Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;
.super Lorg/openjdk/tools/javac/tree/JCTree$Visitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/comp/Modules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ModuleVisitor"
.end annotation


# instance fields
.field private final allExports:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;",
            ">;>;"
        }
    .end annotation
.end field

.field private final allOpens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Directive$OpensDirective;",
            ">;>;"
        }
    .end annotation
.end field

.field private final allRequires:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            ">;"
        }
    .end annotation
.end field

.field private sym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

.field final synthetic this$0:Lorg/openjdk/tools/javac/comp/Modules;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/comp/Modules;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/tree/JCTree$Visitor;-><init>()V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->allRequires:Ljava/util/Set;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->allExports:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->allOpens:Ljava/util/Map;

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;Lorg/openjdk/tools/javac/tree/JCTree$JCDirective;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->lambda$visitModuleDef$0(Lorg/openjdk/tools/javac/tree/JCTree$JCDirective;)V

    return-void
.end method

.method public static synthetic b(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)Lorg/openjdk/tools/javac/util/List;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->lambda$visitOpens$2(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)Lorg/openjdk/tools/javac/util/List;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->lambda$visitExports$1(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p0

    return-object p0
.end method

.method private checkDuplicateExportsToModule(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;)V
    .locals 1

    iget-object p3, p3, Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;->modules:Lorg/openjdk/tools/javac/util/List;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->reportExportsConflictToModule(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private checkDuplicateOpensToModule(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/code/Directive$OpensDirective;)V
    .locals 1

    iget-object p3, p3, Lorg/openjdk/tools/javac/code/Directive$OpensDirective;->modules:Lorg/openjdk/tools/javac/util/List;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->reportOpensConflictToModule(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private ensureJavaBase()V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->sym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/Modules;->access$1000(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->java_base:Lorg/openjdk/tools/javac/util/Name;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->sym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->requires:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;->module:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->name:Lorg/openjdk/tools/javac/util/Name;

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/Modules;->access$1000(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v2

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/Names;->java_base:Lorg/openjdk/tools/javac/util/Name;

    if-ne v1, v2, :cond_1

    return-void

    :cond_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Modules;->access$700(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/Modules;->access$1000(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v1

    iget-object v1, v1, Lorg/openjdk/tools/javac/util/Names;->java_base:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/code/Symtab;->enterModule(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object v0

    new-instance v1, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;

    sget-object v2, Lorg/openjdk/tools/javac/code/Directive$RequiresFlag;->MANDATED:Lorg/openjdk/tools/javac/code/Directive$RequiresFlag;

    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;-><init>(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/util/Set;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->sym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v2, v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->requires:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iput-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->requires:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method

.method private static synthetic lambda$visitExports$1(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)Lorg/openjdk/tools/javac/util/List;
    .locals 0

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$visitModuleDef$0(Lorg/openjdk/tools/javac/tree/JCTree$JCDirective;)V
    .locals 0

    invoke-virtual {p1, p0}, Lorg/openjdk/tools/javac/tree/JCTree;->accept(Lorg/openjdk/tools/javac/tree/JCTree$Visitor;)V

    return-void
.end method

.method private static synthetic lambda$visitOpens$2(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)Lorg/openjdk/tools/javac/util/List;
    .locals 0

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p0

    return-object p0
.end method

.method private lookupModule(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;
    .locals 2

    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->fullName(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/Modules;->access$000(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/code/ModuleFinder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/code/ModuleFinder;->findModule(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->setSymbol(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Symbol;)V

    return-object v0
.end method

.method private reportExportsConflict(Lorg/openjdk/tools/javac/tree/JCTree$JCExports;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Modules;->access$300(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExports;->qualid:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    invoke-static {p2}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->ConflictingExports(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    return-void
.end method

.method private reportExportsConflictToModule(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Modules;->access$300(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    invoke-static {p2}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->ConflictingExportsToModule(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    return-void
.end method

.method private reportOpensConflict(Lorg/openjdk/tools/javac/tree/JCTree$JCOpens;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Modules;->access$300(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCOpens;->qualid:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    invoke-static {p2}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->ConflictingOpens(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    return-void
.end method

.method private reportOpensConflictToModule(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/Modules;->access$300(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    invoke-static {p2}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->ConflictingOpensToModule(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    return-void
.end method


# virtual methods
.method public visitExports(Lorg/openjdk/tools/javac/tree/JCTree$JCExports;)V
    .locals 8

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExports;->qualid:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->fullName(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/Modules;->access$700(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->sym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {v1, v2, v0}, Lorg/openjdk/tools/javac/code/Symtab;->enterPackage(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/Modules;->access$800(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/comp/Attr;

    move-result-object v1

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExports;->qualid:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1, v2, v0}, Lorg/openjdk/tools/javac/comp/Attr;->setPackageSymbols(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->allExports:Ljava/util/Map;

    new-instance v2, Lorg/openjdk/tools/javac/comp/n1;

    invoke-direct {v2}, Lorg/openjdk/tools/javac/comp/n1;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->reportExportsConflict(Lorg/openjdk/tools/javac/tree/JCTree$JCExports;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)V

    goto :goto_0

    :cond_0
    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExports;->moduleNames:Lorg/openjdk/tools/javac/util/List;

    if-eqz v2, :cond_4

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExports;->moduleNames:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-direct {p0, v4}, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->lookupModule(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object v5

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v6}, Lorg/openjdk/tools/javac/comp/Modules;->access$900(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object v6

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lorg/openjdk/tools/javac/comp/Check;->checkModuleExists(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;

    invoke-direct {p0, v4, v5, v7}, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->checkDuplicateExportsToModule(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;)V

    goto :goto_2

    :cond_2
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-direct {p0, v4, v5}, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->reportExportsConflictToModule(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lorg/openjdk/tools/javac/util/List;->from(Ljava/lang/Iterable;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    const-class v3, Lorg/openjdk/tools/javac/code/Directive$ExportsFlag;

    invoke-static {v3}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v3

    new-instance v4, Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;

    invoke-direct {v4, v0, v2, v3}, Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;-><init>(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Lorg/openjdk/tools/javac/util/List;Ljava/util/Set;)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->sym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->exports:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    iput-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->exports:Lorg/openjdk/tools/javac/util/List;

    iput-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCExports;->directive:Lorg/openjdk/tools/javac/code/Directive$ExportsDirective;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->allExports:Ljava/util/Map;

    invoke-virtual {v1, v4}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-void
.end method

.method public visitModuleDef(Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;)V
    .locals 7

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iput-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->sym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->getModuleType()Lorg/openjdk/source/tree/ModuleTree$ModuleKind;

    move-result-object v0

    sget-object v1, Lorg/openjdk/source/tree/ModuleTree$ModuleKind;->OPEN:Lorg/openjdk/source/tree/ModuleTree$ModuleKind;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->sym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->flags:Ljava/util/Set;

    sget-object v1, Lorg/openjdk/tools/javac/code/Symbol$ModuleFlags;->OPEN:Lorg/openjdk/tools/javac/code/Symbol$ModuleFlags;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->sym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-wide v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v3, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/32 v5, 0x20000

    and-long/2addr v3, v5

    or-long/2addr v1, v3

    iput-wide v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->flags_field:J

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iput-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->requires:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->sym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iput-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->exports:Lorg/openjdk/tools/javac/util/List;

    iget-object v0, p0, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->sym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iput-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->opens:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->directives:Lorg/openjdk/tools/javac/util/List;

    new-instance v0, Lorg/openjdk/tools/javac/comp/l1;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/comp/l1;-><init>(Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->sym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->requires:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->reverse()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->requires:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->sym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->exports:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->reverse()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->exports:Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->sym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->opens:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->reverse()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->opens:Lorg/openjdk/tools/javac/util/List;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->ensureJavaBase()V

    return-void
.end method

.method public visitOpens(Lorg/openjdk/tools/javac/tree/JCTree$JCOpens;)V
    .locals 8

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCOpens;->qualid:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-static {v0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->fullName(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/Modules;->access$700(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->sym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {v1, v2, v0}, Lorg/openjdk/tools/javac/code/Symtab;->enterPackage(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/Modules;->access$800(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/comp/Attr;

    move-result-object v1

    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCOpens;->qualid:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {v1, v2, v0}, Lorg/openjdk/tools/javac/comp/Attr;->setPackageSymbols(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->sym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->flags:Ljava/util/Set;

    sget-object v2, Lorg/openjdk/tools/javac/code/Symbol$ModuleFlags;->OPEN:Lorg/openjdk/tools/javac/code/Symbol$ModuleFlags;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/Modules;->access$300(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v2

    sget-object v3, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->NoOpensUnlessStrong:Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    invoke-virtual {v1, v2, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->allOpens:Ljava/util/Map;

    new-instance v2, Lorg/openjdk/tools/javac/comp/m1;

    invoke-direct {v2}, Lorg/openjdk/tools/javac/comp/m1;-><init>()V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/code/Directive$OpensDirective;

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->reportOpensConflict(Lorg/openjdk/tools/javac/tree/JCTree$JCOpens;Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;)V

    goto :goto_0

    :cond_1
    iget-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCOpens;->moduleNames:Lorg/openjdk/tools/javac/util/List;

    if-eqz v2, :cond_5

    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v3, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCOpens;->moduleNames:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-direct {p0, v4}, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->lookupModule(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object v5

    iget-object v6, p0, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v6}, Lorg/openjdk/tools/javac/comp/Modules;->access$900(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object v6

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v7

    invoke-virtual {v6, v7, v5}, Lorg/openjdk/tools/javac/comp/Check;->checkModuleExists(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/openjdk/tools/javac/code/Directive$OpensDirective;

    invoke-direct {p0, v4, v5, v7}, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->checkDuplicateOpensToModule(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/code/Directive$OpensDirective;)V

    goto :goto_2

    :cond_3
    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-direct {p0, v4, v5}, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->reportOpensConflictToModule(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)V

    goto :goto_1

    :cond_4
    invoke-static {v2}, Lorg/openjdk/tools/javac/util/List;->from(Ljava/lang/Iterable;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    const-class v3, Lorg/openjdk/tools/javac/code/Directive$OpensFlag;

    invoke-static {v3}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v3

    new-instance v4, Lorg/openjdk/tools/javac/code/Directive$OpensDirective;

    invoke-direct {v4, v0, v2, v3}, Lorg/openjdk/tools/javac/code/Directive$OpensDirective;-><init>(Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;Lorg/openjdk/tools/javac/util/List;Ljava/util/Set;)V

    iget-object v2, p0, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->sym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->opens:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    iput-object v3, v2, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->opens:Lorg/openjdk/tools/javac/util/List;

    iput-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCOpens;->directive:Lorg/openjdk/tools/javac/code/Directive$OpensDirective;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->allOpens:Ljava/util/Map;

    invoke-virtual {v1, v4}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    return-void
.end method

.method public visitProvides(Lorg/openjdk/tools/javac/tree/JCTree$JCProvides;)V
    .locals 0

    return-void
.end method

.method public visitRequires(Lorg/openjdk/tools/javac/tree/JCTree$JCRequires;)V
    .locals 3

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCRequires;->moduleName:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->lookupModule(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object v0

    iget-object v1, v0, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->MDL:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/Modules;->access$300(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v1

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCRequires;->moduleName:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    invoke-static {v0}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->ModuleNotFound(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Modules;->access$600(Lorg/openjdk/tools/javac/comp/Modules;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->allRequires:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->this$0:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/Modules;->access$300(Lorg/openjdk/tools/javac/comp/Modules;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v1

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCRequires;->moduleName:Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p1

    invoke-static {v0}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->DuplicateRequires(Lorg/openjdk/tools/javac/code/Symbol;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->allRequires:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-class v1, Lorg/openjdk/tools/javac/code/Directive$RequiresFlag;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    iget-boolean v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCRequires;->isTransitive:Z

    if-eqz v2, :cond_2

    sget-object v2, Lorg/openjdk/tools/javac/code/Directive$RequiresFlag;->TRANSITIVE:Lorg/openjdk/tools/javac/code/Directive$RequiresFlag;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-boolean v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCRequires;->isStaticPhase:Z

    if-eqz v2, :cond_3

    sget-object v2, Lorg/openjdk/tools/javac/code/Directive$RequiresFlag;->STATIC_PHASE:Lorg/openjdk/tools/javac/code/Directive$RequiresFlag;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v2, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;

    invoke-direct {v2, v0, v1}, Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;-><init>(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/util/Set;)V

    iput-object v2, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCRequires;->directive:Lorg/openjdk/tools/javac/code/Directive$RequiresDirective;

    iget-object p1, p0, Lorg/openjdk/tools/javac/comp/Modules$ModuleVisitor;->sym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->requires:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->requires:Lorg/openjdk/tools/javac/util/List;

    :goto_0
    return-void
.end method

.method public visitUses(Lorg/openjdk/tools/javac/tree/JCTree$JCUses;)V
    .locals 0

    return-void
.end method
