.class Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Round"
.end annotation


# instance fields
.field annotationsPresent:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/element/TypeElement;",
            ">;"
        }
    .end annotation
.end field

.field final deferredDiagnosticHandler:Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;

.field genClassFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;>;"
        }
    .end annotation
.end field

.field moduleInfoFiles:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            ">;"
        }
    .end annotation
.end field

.field final number:I

.field packageInfoFiles:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;",
            ">;"
        }
    .end annotation
.end field

.field roots:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

.field topLevelClasses:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            ">;"
        }
    .end annotation
.end field

.field treesToClean:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;ILjava/util/Set;Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;",
            ">;",
            "Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->number:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 3
    invoke-static {p4}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iput-object p4, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->deferredDiagnosticHandler:Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;

    goto :goto_0

    .line 5
    :cond_0
    new-instance p2, Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;

    iget-object p4, p1, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-direct {p2, p4}, Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;-><init>(Lorg/openjdk/tools/javac/util/Log;)V

    iput-object p2, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->deferredDiagnosticHandler:Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;

    .line 6
    invoke-static {p1}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$400(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/main/JavaCompiler;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/main/JavaCompiler;->setDeferredDiagnosticHandler(Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;)V

    .line 7
    :goto_0
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->topLevelClasses:Lorg/openjdk/tools/javac/util/List;

    .line 8
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->packageInfoFiles:Lorg/openjdk/tools/javac/util/List;

    .line 9
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->moduleInfoFiles:Lorg/openjdk/tools/javac/util/List;

    .line 10
    iput-object p3, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->treesToClean:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;Ljava/util/Set;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;",
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;>;)V"
        }
    .end annotation

    .line 18
    iget v0, p2, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->number:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p2, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->treesToClean:Ljava/util/Set;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;-><init>(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;ILjava/util/Set;Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;)V

    .line 19
    invoke-direct {p2}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->newRound()V

    .line 20
    iget-object v0, p2, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->genClassFiles:Ljava/util/Map;

    iput-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->genClassFiles:Ljava/util/Map;

    .line 21
    invoke-static {p1}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$400(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/main/JavaCompiler;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/openjdk/tools/javac/main/JavaCompiler;->parseFiles(Ljava/lang/Iterable;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p3

    .line 22
    iget-object p2, p2, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->roots:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p2, p3}, Lorg/openjdk/tools/javac/util/List;->appendList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    iput-object p2, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->roots:Lorg/openjdk/tools/javac/util/List;

    .line 23
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->unrecoverableError()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 24
    invoke-static {p1}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$400(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/main/JavaCompiler;

    move-result-object p1

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/main/JavaCompiler;->initModules(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    return-void

    .line 25
    :cond_0
    invoke-static {p1}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$400(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/main/JavaCompiler;

    move-result-object p2

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->roots:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->initModules(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    iput-object p2, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->roots:Lorg/openjdk/tools/javac/util/List;

    .line 26
    iget-object p2, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->genClassFiles:Ljava/util/Map;

    invoke-direct {p0, p2}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->enterClassFiles(Ljava/util/Map;)Lorg/openjdk/tools/javac/util/List;

    .line 27
    invoke-direct {p0, p4}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->enterClassFiles(Ljava/util/Map;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    .line 28
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 29
    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->genClassFiles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lorg/openjdk/tools/javac/processing/e;

    invoke-direct {v3}, Lorg/openjdk/tools/javac/processing/e;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 30
    :cond_1
    iget-object p4, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->roots:Lorg/openjdk/tools/javac/util/List;

    invoke-direct {p0, p4}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->enterTrees(Lorg/openjdk/tools/javac/util/List;)V

    .line 31
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->unrecoverableError()Z

    move-result p4

    if-eqz p4, :cond_2

    return-void

    .line 32
    :cond_2
    invoke-static {p1, p3}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$500(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p4

    .line 33
    invoke-static {p1, p2}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$800(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    .line 34
    invoke-static {p4, v0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$900(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p4

    iput-object p4, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->topLevelClasses:Lorg/openjdk/tools/javac/util/List;

    .line 35
    invoke-static {p1, p3}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$600(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p3

    .line 36
    invoke-static {p1, p2}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$1000(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    .line 37
    invoke-static {p3, p1}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$900(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->packageInfoFiles:Lorg/openjdk/tools/javac/util/List;

    .line 38
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->moduleInfoFiles:Lorg/openjdk/tools/javac/util/List;

    .line 39
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->findAnnotationsPresent()V

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Ljava/util/Set;Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            ">;",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;",
            ">;",
            "Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 11
    invoke-direct {p0, p1, v0, p4, p5}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;-><init>(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;ILjava/util/Set;Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;)V

    .line 12
    iput-object p2, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->roots:Lorg/openjdk/tools/javac/util/List;

    .line 13
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->genClassFiles:Ljava/util/Map;

    .line 14
    invoke-static {p1, p2}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$500(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p4

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/util/List;->reverse()Lorg/openjdk/tools/javac/util/List;

    move-result-object p3

    invoke-virtual {p4, p3}, Lorg/openjdk/tools/javac/util/List;->prependList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p3

    iput-object p3, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->topLevelClasses:Lorg/openjdk/tools/javac/util/List;

    .line 15
    invoke-static {p1, p2}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$600(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p3

    iput-object p3, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->packageInfoFiles:Lorg/openjdk/tools/javac/util/List;

    .line 16
    invoke-static {p1, p2}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$700(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->moduleInfoFiles:Lorg/openjdk/tools/javac/util/List;

    .line 17
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->findAnnotationsPresent()V

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Ljava/util/Map;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->lambda$new$0(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private enterClassFiles(Ljava/util/Map;)Lorg/openjdk/tools/javac/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;>;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    iget-object v4, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {v4}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$1500(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-interface {v3}, Lorg/openjdk/javax/tools/JavaFileObject;->getKind()Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    move-result-object v5

    sget-object v6, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->CLASS:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    if-ne v5, v6, :cond_4

    iget-object v5, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {v5, v3, v6}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$1600(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v4}, Lorg/openjdk/tools/javac/util/Convert;->packagePart(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v5

    iget-object v6, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {v6}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$1700(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {v6, v7, v5}, Lorg/openjdk/tools/javac/code/Symtab;->enterPackage(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v5

    iget-object v6, v5, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->package_info:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    if-nez v6, :cond_1

    iget-object v6, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {v6}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$1700(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-static {v4}, Lorg/openjdk/tools/javac/util/Convert;->shortName(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v4

    invoke-virtual {v6, v7, v4, v5}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v4

    iput-object v4, v5, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->package_info:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    :cond_1
    iget-object v4, v5, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->package_info:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->reset()V

    iget-object v5, v4, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->classfile:Lorg/openjdk/javax/tools/JavaFileObject;

    if-nez v5, :cond_2

    iput-object v3, v4, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->classfile:Lorg/openjdk/javax/tools/JavaFileObject;

    :cond_2
    iget-object v3, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {v3}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$1800(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/code/Symbol$Completer;

    move-result-object v3

    iput-object v3, v4, Lorg/openjdk/tools/javac/code/Symbol;->completer:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {v5}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$1700(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {v5, v6, v4}, Lorg/openjdk/tools/javac/code/Symtab;->enterClass(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object v4

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->reset()V

    iput-object v3, v4, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->classfile:Lorg/openjdk/javax/tools/JavaFileObject;

    iget-object v3, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {v3}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$1800(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/code/Symbol$Completer;

    move-result-object v3

    iput-object v3, v4, Lorg/openjdk/tools/javac/code/Symbol;->completer:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    iget-object v3, v4, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Symbol;->members()Lorg/openjdk/tools/javac/code/Scope$WriteableScope;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/code/Scope$WriteableScope;->enter(Lorg/openjdk/tools/javac/code/Symbol;)V

    :goto_1
    invoke-virtual {v0, v4}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    goto/16 :goto_0

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_5
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->reverse()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method private enterTrees(Lorg/openjdk/tools/javac/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {v0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$400(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/main/JavaCompiler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->enterTrees(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    return-void
.end method

.method private static synthetic lambda$new$0(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;)Ljava/util/Map;
    .locals 0

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-object p0
.end method

.method private newRound()V
    .locals 5

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {v0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$2500(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/comp/Enter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/Enter;->getEnvs()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/comp/Env;

    iget-object v2, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->treesToClean:Ljava/util/Set;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->treesToClean:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v2, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {v2}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$2600(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/tree/TreeScanner;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {v0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$2700(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/Check;->newRound()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {v0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$2500(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/comp/Enter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/Enter;->newRound()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {v0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$2000(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/processing/JavacFiler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/processing/JavacFiler;->newRound()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {v0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$1100(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/processing/JavacMessager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/processing/JavacMessager;->newRound()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {v0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$400(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/main/JavaCompiler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->newRound()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {v0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$2800(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/comp/Modules;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/Modules;->newRound()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {v0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$2900(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Types;->newRound()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {v0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$3000(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/comp/Annotate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/Annotate;->newRound()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {v0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$1700(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symtab;->getAllClasses()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->ERR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v1, v2, :cond_2

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {v0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$1700(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/Symtab;->getAllClasses()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->classfile:Lorg/openjdk/javax/tools/JavaFileObject;

    if-nez v2, :cond_4

    iget-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v3, Lorg/openjdk/tools/javac/code/Kinds$Kind;->ERR:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v2, v3, :cond_3

    :cond_4
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->reset()V

    new-instance v2, Lorg/openjdk/tools/javac/code/Type$ClassType;

    iget-object v3, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/code/Type;->getEnclosingType()Lorg/openjdk/tools/javac/code/Type;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v1}, Lorg/openjdk/tools/javac/code/Type$ClassType;-><init>(Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)V

    iput-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->type:Lorg/openjdk/tools/javac/code/Type;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Symbol;->isCompleted()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {v2}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$1800(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/code/Symbol$Completer;

    move-result-object v2

    iput-object v2, v1, Lorg/openjdk/tools/javac/code/Symbol;->completer:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    goto :goto_2

    :cond_5
    return-void
.end method

.method private printRoundInfo(Z)V
    .locals 6

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {v0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$2300(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {v0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$2400(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->topLevelClasses:Lorg/openjdk/tools/javac/util/List;

    :goto_0
    if-eqz p1, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->annotationsPresent:Ljava/util/Set;

    :goto_1
    iget-object v2, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    iget-object v2, v2, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->log:Lorg/openjdk/tools/javac/util/Log;

    iget v3, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->number:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v0, v5}, Lorg/openjdk/tools/javac/util/List;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {v3, v0, v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "x.print.rounds"

    invoke-virtual {v2, v0, p1}, Lorg/openjdk/tools/javac/util/Log;->printLines(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public errorCount()I
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {v0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$400(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/main/JavaCompiler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->errorCount()I

    move-result v0

    return v0
.end method

.method public finalCompiler()V
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->newRound()V

    return-void
.end method

.method public findAnnotationsPresent()V
    .locals 4

    new-instance v0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ComputeAnnotationSet;

    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {v1}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$1400(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/model/JavacElements;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ComputeAnnotationSet;-><init>(Lorg/openjdk/javax/lang/model/util/Elements;)V

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->annotationsPresent:Ljava/util/Set;

    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->topLevelClasses:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v3, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->annotationsPresent:Ljava/util/Set;

    invoke-virtual {v0, v2, v3}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ComputeAnnotationSet;->scan(Lorg/openjdk/javax/lang/model/element/Element;Ljava/util/Set;)Ljava/util/Set;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->packageInfoFiles:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    iget-object v3, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->annotationsPresent:Ljava/util/Set;

    invoke-virtual {v0, v2, v3}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ComputeAnnotationSet;->scan(Lorg/openjdk/javax/lang/model/element/Element;Ljava/util/Set;)Ljava/util/Set;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->moduleInfoFiles:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object v3, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->annotationsPresent:Ljava/util/Set;

    invoke-virtual {v0, v2, v3}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ComputeAnnotationSet;->scan(Lorg/openjdk/javax/lang/model/element/Element;Ljava/util/Set;)Ljava/util/Set;

    goto :goto_2

    :cond_2
    return-void
.end method

.method public next(Ljava/util/Set;Ljava/util/Map;)Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;",
            "Ljava/util/Map<",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;>;)",
            "Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;

    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-direct {v0, v1, p0, p1, p2}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;-><init>(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;Ljava/util/Set;Ljava/util/Map;)V

    return-object v0
.end method

.method public run(ZZ)V
    .locals 3

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->printRoundInfo(Z)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {v0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$1900(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/api/MultiTaskListener;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {v0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$1900(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/api/MultiTaskListener;

    move-result-object v0

    new-instance v1, Lorg/openjdk/source/util/TaskEvent;

    sget-object v2, Lorg/openjdk/source/util/TaskEvent$Kind;->ANNOTATION_PROCESSING_ROUND:Lorg/openjdk/source/util/TaskEvent$Kind;

    invoke-direct {v1, v2}, Lorg/openjdk/source/util/TaskEvent;-><init>(Lorg/openjdk/source/util/TaskEvent$Kind;)V

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->started(Lorg/openjdk/source/util/TaskEvent;)V

    :cond_0
    if-eqz p1, :cond_1

    :try_start_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {p1}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$2000(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/processing/JavacFiler;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/processing/JavacFiler;->setLastRound(Z)V

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p1

    new-instance v1, Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment;

    iget-object v2, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-direct {v1, v0, p2, p1, v2}, Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment;-><init>(ZZLjava/util/Set;Lorg/openjdk/javax/annotation/processing/ProcessingEnvironment;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {p1}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$2100(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;->iterator()Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;

    move-result-object p1

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->runContributingProcs(Lorg/openjdk/javax/annotation/processing/RoundEnvironment;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    iget-object p2, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->annotationsPresent:Ljava/util/Set;

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->topLevelClasses:Lorg/openjdk/tools/javac/util/List;

    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->packageInfoFiles:Lorg/openjdk/tools/javac/util/List;

    iget-object v2, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->moduleInfoFiles:Lorg/openjdk/tools/javac/util/List;

    invoke-static {p1, p2, v0, v1, v2}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$2200(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;Ljava/util/Set;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {p1}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$1900(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/api/MultiTaskListener;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {p1}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$1900(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/api/MultiTaskListener;

    move-result-object p1

    new-instance p2, Lorg/openjdk/source/util/TaskEvent;

    sget-object v0, Lorg/openjdk/source/util/TaskEvent$Kind;->ANNOTATION_PROCESSING_ROUND:Lorg/openjdk/source/util/TaskEvent$Kind;

    invoke-direct {p2, v0}, Lorg/openjdk/source/util/TaskEvent;-><init>(Lorg/openjdk/source/util/TaskEvent$Kind;)V

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->finished(Lorg/openjdk/source/util/TaskEvent;)V

    :cond_2
    return-void

    :goto_1
    :try_start_1
    iget-object p2, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->deferredDiagnosticHandler:Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;->reportDeferredDiagnostics()V

    iget-object p2, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    iget-object p2, p2, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->deferredDiagnosticHandler:Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/util/Log;->popDiagnosticHandler(Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;)V

    iget-object p2, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {p2}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$400(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/main/JavaCompiler;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->setDeferredDiagnosticHandler(Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    iget-object p2, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {p2}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$1900(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/api/MultiTaskListener;

    move-result-object p2

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {p2}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$1900(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/api/MultiTaskListener;

    move-result-object p2

    new-instance v0, Lorg/openjdk/source/util/TaskEvent;

    sget-object v1, Lorg/openjdk/source/util/TaskEvent$Kind;->ANNOTATION_PROCESSING_ROUND:Lorg/openjdk/source/util/TaskEvent$Kind;

    invoke-direct {v0, v1}, Lorg/openjdk/source/util/TaskEvent;-><init>(Lorg/openjdk/source/util/TaskEvent$Kind;)V

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->finished(Lorg/openjdk/source/util/TaskEvent;)V

    :cond_3
    throw p1
.end method

.method public showDiagnostics(Z)V
    .locals 1

    const-class v0, Lorg/openjdk/javax/tools/Diagnostic$Kind;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    if-nez p1, :cond_0

    sget-object p1, Lorg/openjdk/javax/tools/Diagnostic$Kind;->ERROR:Lorg/openjdk/javax/tools/Diagnostic$Kind;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->deferredDiagnosticHandler:Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;->reportDeferredDiagnostics(Ljava/util/Set;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    iget-object p1, p1, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->deferredDiagnosticHandler:Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/Log;->popDiagnosticHandler(Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {p1}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$400(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/main/JavaCompiler;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->setDeferredDiagnosticHandler(Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;)V

    return-void
.end method

.method public unrecoverableError()Z
    .locals 5

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {v0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$1100(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/processing/JavacMessager;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/processing/JavacMessager;->errorRaised()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->deferredDiagnosticHandler:Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;->getDiagnostics()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/util/JCDiagnostic;

    sget-object v3, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$2;->$SwitchMap$javax$tools$Diagnostic$Kind:[I

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getKind()Lorg/openjdk/javax/tools/Diagnostic$Kind;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v1, :cond_4

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {v3}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$1300(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;->RECOVERABLE:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->isFlagSet(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    return v1

    :cond_4
    iget-object v2, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {v2}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$1200(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method public warningCount()I
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->this$0:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-static {v0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->access$400(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/main/JavaCompiler;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->warningCount()I

    move-result v0

    return v0
.end method
