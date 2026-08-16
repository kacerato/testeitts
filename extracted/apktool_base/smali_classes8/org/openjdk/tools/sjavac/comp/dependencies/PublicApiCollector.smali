.class public Lorg/openjdk/tools/sjavac/comp/dependencies/PublicApiCollector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/source/util/TaskListener;


# instance fields
.field private final classSymbols:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            ">;"
        }
    .end annotation
.end field

.field private context:Lorg/openjdk/tools/javac/util/Context;

.field private final explicitJFOs:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation
.end field

.field private explicitPubApis:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/openjdk/tools/sjavac/pubapi/PubApi;",
            ">;"
        }
    .end annotation
.end field

.field private nonExplicitPubApis:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/openjdk/tools/sjavac/pubapi/PubApi;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/Context;",
            "Ljava/util/Collection<",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/comp/dependencies/PublicApiCollector;->classSymbols:Ljava/util/Set;

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/comp/dependencies/PublicApiCollector;->context:Lorg/openjdk/tools/javac/util/Context;

    iput-object p2, p0, Lorg/openjdk/tools/sjavac/comp/dependencies/PublicApiCollector;->explicitJFOs:Ljava/util/Collection;

    return-void
.end method

.method private collectClassSymbols(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)V
    .locals 2

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->getTypeDecls()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/source/tree/Tree;

    instance-of v1, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/comp/dependencies/PublicApiCollector;->classSymbols:Ljava/util/Set;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private extractPubApis()V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/comp/dependencies/PublicApiCollector;->context:Lorg/openjdk/tools/javac/util/Context;

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/comp/PubAPIs;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/sjavac/comp/PubAPIs;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/sjavac/comp/dependencies/PublicApiCollector;->classSymbols:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lorg/openjdk/tools/sjavac/comp/dependencies/e;

    invoke-direct {v2, v0}, Lorg/openjdk/tools/sjavac/comp/dependencies/e;-><init>(Lorg/openjdk/tools/sjavac/comp/PubAPIs;)V

    invoke-interface {v1, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public finished(Lorg/openjdk/source/util/TaskEvent;)V
    .locals 4

    sget-object v0, Lorg/openjdk/tools/sjavac/comp/dependencies/PublicApiCollector$1;->$SwitchMap$com$sun$source$util$TaskEvent$Kind:[I

    invoke-virtual {p1}, Lorg/openjdk/source/util/TaskEvent;->getKind()Lorg/openjdk/source/util/TaskEvent$Kind;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p1, 0x2

    if-eq v0, p1, :cond_0

    goto :goto_1

    :cond_0
    const-string p1, "Compilation finished"

    invoke-static {p1}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    const-string p1, "Extracting pub APIs for the following symbols:"

    invoke-static {p1}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/openjdk/tools/sjavac/comp/dependencies/PublicApiCollector;->classSymbols:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->fullname:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/openjdk/tools/sjavac/comp/dependencies/PublicApiCollector;->extractPubApis()V

    iget-object p1, p0, Lorg/openjdk/tools/sjavac/comp/dependencies/PublicApiCollector;->context:Lorg/openjdk/tools/javac/util/Context;

    invoke-static {p1}, Lorg/openjdk/tools/sjavac/comp/PubAPIs;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/sjavac/comp/PubAPIs;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/comp/dependencies/PublicApiCollector;->explicitJFOs:Ljava/util/Collection;

    invoke-virtual {p1, v0, v1}, Lorg/openjdk/tools/sjavac/comp/PubAPIs;->getPubapis(Ljava/util/Collection;Z)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/sjavac/comp/dependencies/PublicApiCollector;->explicitPubApis:Ljava/util/Map;

    iget-object v0, p0, Lorg/openjdk/tools/sjavac/comp/dependencies/PublicApiCollector;->explicitJFOs:Ljava/util/Collection;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/openjdk/tools/sjavac/comp/PubAPIs;->getPubapis(Ljava/util/Collection;Z)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/sjavac/comp/dependencies/PublicApiCollector;->nonExplicitPubApis:Ljava/util/Map;

    const-string p1, "done"

    invoke-static {p1}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lorg/openjdk/source/util/TaskEvent;->getCompilationUnit()Lorg/openjdk/source/tree/CompilationUnitTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    invoke-direct {p0, p1}, Lorg/openjdk/tools/sjavac/comp/dependencies/PublicApiCollector;->collectClassSymbols(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)V

    :goto_1
    return-void
.end method

.method public getPubApis(Z)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/openjdk/tools/sjavac/pubapi/PubApi;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/sjavac/comp/dependencies/PublicApiCollector;->explicitPubApis:Ljava/util/Map;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/openjdk/tools/sjavac/comp/dependencies/PublicApiCollector;->nonExplicitPubApis:Ljava/util/Map;

    :goto_0
    return-object p1
.end method
