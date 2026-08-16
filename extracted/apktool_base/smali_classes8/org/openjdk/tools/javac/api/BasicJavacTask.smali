.class public Lorg/openjdk/tools/javac/api/BasicJavacTask;
.super Lorg/openjdk/source/util/JavacTask;
.source "SourceFile"


# instance fields
.field protected context:Lorg/openjdk/tools/javac/util/Context;

.field private taskListener:Lorg/openjdk/source/util/TaskListener;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;Z)V
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/source/util/JavacTask;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/api/BasicJavacTask;->context:Lorg/openjdk/tools/javac/util/Context;

    if-eqz p2, :cond_0

    const-class p2, Lorg/openjdk/source/util/JavacTask;

    invoke-virtual {p1, p2, p0}, Lorg/openjdk/tools/javac/util/Context;->put(Ljava/lang/Class;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/api/BasicJavacTask;->lambda$initPlugins$0(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/source/util/JavacTask;
    .locals 2

    const-class v0, Lorg/openjdk/source/util/JavacTask;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/source/util/JavacTask;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/api/BasicJavacTask;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/openjdk/tools/javac/api/BasicJavacTask;-><init>(Lorg/openjdk/tools/javac/util/Context;Z)V

    :cond_0
    return-object v0
.end method

.method private static synthetic lambda$initPlugins$0(Ljava/util/Map$Entry;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addModules(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public addTaskListener(Lorg/openjdk/source/util/TaskListener;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/BasicJavacTask;->context:Lorg/openjdk/tools/javac/util/Context;

    invoke-static {v0}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/api/MultiTaskListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->add(Lorg/openjdk/source/util/TaskListener;)V

    return-void
.end method

.method public analyze()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public call()Ljava/lang/Boolean;
    .locals 1

    .line 2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/api/BasicJavacTask;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public generate()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getContext()Lorg/openjdk/tools/javac/util/Context;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/BasicJavacTask;->context:Lorg/openjdk/tools/javac/util/Context;

    return-object v0
.end method

.method public getElements()Lorg/openjdk/javax/lang/model/util/Elements;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/BasicJavacTask;->context:Lorg/openjdk/tools/javac/util/Context;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/openjdk/tools/javac/model/JavacElements;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/model/JavacElements;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getTaskListeners()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/openjdk/source/util/TaskListener;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/BasicJavacTask;->context:Lorg/openjdk/tools/javac/util/Context;

    invoke-static {v0}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/api/MultiTaskListener;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->getTaskListeners()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getTypeMirror(Ljava/lang/Iterable;)Lorg/openjdk/javax/lang/model/type/TypeMirror;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/source/tree/Tree;",
            ">;)",
            "Lorg/openjdk/javax/lang/model/type/TypeMirror;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/source/tree/Tree;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/source/tree/Tree;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree;

    iget-object p1, v0, Lorg/openjdk/tools/javac/tree/JCTree;->type:Lorg/openjdk/tools/javac/code/Type;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "empty path"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getTypes()Lorg/openjdk/javax/lang/model/util/Types;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/BasicJavacTask;->context:Lorg/openjdk/tools/javac/util/Context;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/openjdk/tools/javac/model/JavacTypes;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/model/JavacTypes;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public initDocLint(Lorg/openjdk/tools/javac/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/openjdk/tools/doclint/DocLint;

    invoke-direct {v0}, Lorg/openjdk/tools/doclint/DocLint;-><init>()V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lorg/openjdk/tools/doclint/DocLint;->init(Lorg/openjdk/source/util/JavacTask;[Ljava/lang/String;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/api/BasicJavacTask;->context:Lorg/openjdk/tools/javac/util/Context;

    invoke-static {p1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/main/JavaCompiler;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/openjdk/tools/javac/main/JavaCompiler;->keepComments:Z

    return-void
.end method

.method public initPlugins(Ljava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/BasicJavacTask;->context:Lorg/openjdk/tools/javac/util/Context;

    const-class v1, Lorg/openjdk/tools/javac/platform/PlatformDescription;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/platform/PlatformDescription;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/openjdk/tools/javac/platform/PlatformDescription;->getPlugins()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/platform/PlatformDescription$PluginInfo;

    invoke-interface {v1}, Lorg/openjdk/tools/javac/platform/PlatformDescription$PluginInfo;->getOptions()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/openjdk/tools/javac/api/a;

    invoke-direct {v3}, Lorg/openjdk/tools/javac/api/a;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    :try_start_0
    invoke-interface {v1}, Lorg/openjdk/tools/javac/platform/PlatformDescription$PluginInfo;->getPlugin()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/source/util/Plugin;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-interface {v1, p0, v2}, Lorg/openjdk/source/util/Plugin;->init(Lorg/openjdk/source/util/JavacTask;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Lorg/openjdk/tools/javac/util/PropagatedException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/util/PropagatedException;-><init>(Ljava/lang/RuntimeException;)V

    throw v0

    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/api/BasicJavacTask;->context:Lorg/openjdk/tools/javac/util/Context;

    invoke-static {p1}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    move-result-object p1

    const-class v1, Lorg/openjdk/source/util/Plugin;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->getServiceLoader(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/source/util/Plugin;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/util/List;

    invoke-interface {v1}, Lorg/openjdk/source/util/Plugin;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :try_start_1
    iget-object v3, v3, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-interface {v1, p0, v3}, Lorg/openjdk/source/util/Plugin;->init(Lorg/openjdk/source/util/JavacTask;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    new-instance v0, Lorg/openjdk/tools/javac/util/PropagatedException;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/util/PropagatedException;-><init>(Ljava/lang/RuntimeException;)V

    throw v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/util/List;

    iget-object v1, p0, Lorg/openjdk/tools/javac/api/BasicJavacTask;->context:Lorg/openjdk/tools/javac/util/Context;

    invoke-static {v1}, Lorg/openjdk/tools/javac/util/Log;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v1

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "plugin.not.found"

    invoke-virtual {v1, v2, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    return-void
.end method

.method public parse()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/source/tree/CompilationUnitTree;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public removeTaskListener(Lorg/openjdk/source/util/TaskListener;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/BasicJavacTask;->context:Lorg/openjdk/tools/javac/util/Context;

    invoke-static {v0}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/api/MultiTaskListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->remove(Lorg/openjdk/source/util/TaskListener;)V

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public setProcessors(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/annotation/processing/Processor;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public setTaskListener(Lorg/openjdk/source/util/TaskListener;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/BasicJavacTask;->context:Lorg/openjdk/tools/javac/util/Context;

    invoke-static {v0}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/api/MultiTaskListener;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/api/BasicJavacTask;->taskListener:Lorg/openjdk/source/util/TaskListener;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->remove(Lorg/openjdk/source/util/TaskListener;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->add(Lorg/openjdk/source/util/TaskListener;)V

    :cond_1
    iput-object p1, p0, Lorg/openjdk/tools/javac/api/BasicJavacTask;->taskListener:Lorg/openjdk/source/util/TaskListener;

    return-void
.end method
