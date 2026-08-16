.class public Lorg/openjdk/tools/javac/api/JavacTaskImpl;
.super Lorg/openjdk/tools/javac/api/BasicJavacTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/api/JavacTaskImpl$Filter;
    }
.end annotation


# instance fields
.field private addModules:Lorg/openjdk/tools/javac/util/ListBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final args:Lorg/openjdk/tools/javac/main/Arguments;

.field private compiler:Lorg/openjdk/tools/javac/main/JavaCompiler;

.field private fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

.field private genList:Lorg/openjdk/tools/javac/util/ListBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;>;"
        }
    .end annotation
.end field

.field private locale:Ljava/util/Locale;

.field private notYetEntered:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;",
            ">;"
        }
    .end annotation
.end field

.field private parsed:Z

.field private processors:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/annotation/processing/Processor;",
            ">;"
        }
    .end annotation
.end field

.field private final used:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/api/BasicJavacTask;-><init>(Lorg/openjdk/tools/javac/util/Context;Z)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->used:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->addModules:Lorg/openjdk/tools/javac/util/ListBuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->parsed:Z

    invoke-static {p1}, Lorg/openjdk/tools/javac/main/Arguments;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/main/Arguments;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->args:Lorg/openjdk/tools/javac/main/Arguments;

    const-class v0, Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/javax/tools/JavaFileManager;

    iput-object p1, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    return-void
.end method

.method public static synthetic access$000(Lorg/openjdk/tools/javac/api/JavacTaskImpl;)Lorg/openjdk/tools/javac/main/JavaCompiler;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->compiler:Lorg/openjdk/tools/javac/main/JavaCompiler;

    return-object p0
.end method

.method public static synthetic access$100(Lorg/openjdk/tools/javac/api/JavacTaskImpl;Ljava/util/Queue;Lorg/openjdk/tools/javac/util/ListBuffer;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->handleFlowResults(Ljava/util/Queue;Lorg/openjdk/tools/javac/util/ListBuffer;)V

    return-void
.end method

.method public static synthetic b(Lorg/openjdk/tools/javac/api/JavacTaskImpl;)Lorg/openjdk/tools/javac/main/Main$Result;
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->lambda$doCall$0()Lorg/openjdk/tools/javac/main/Main$Result;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/openjdk/tools/javac/api/JavacTaskImpl;)Ljava/lang/Iterable;
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->parseInternal()Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/openjdk/tools/javac/api/JavacTaskImpl;)Ljava/lang/Iterable;
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->lambda$generate$2()Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lorg/openjdk/tools/javac/api/JavacTaskImpl;)Ljava/lang/Iterable;
    .locals 0

    invoke-direct {p0}, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->lambda$analyze$1()Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method private handleExceptions(Ljava/util/concurrent/Callable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;TT;TT;)TT;"
        }
    .end annotation

    const-string v0, "dev"

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lorg/openjdk/tools/javac/util/FatalError; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lorg/openjdk/tools/javac/processing/AnnotationProcessingError; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/openjdk/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lorg/openjdk/tools/javac/util/PropagatedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    iget-object p2, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->compiler:Lorg/openjdk/tools/javac/main/JavaCompiler;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/main/JavaCompiler;->errorCount()I

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lorg/openjdk/tools/javac/api/BasicJavacTask;->context:Lorg/openjdk/tools/javac/util/Context;

    invoke-static {p2}, Lorg/openjdk/tools/javac/util/Options;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Options;

    move-result-object p2

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    iget-object p2, p0, Lorg/openjdk/tools/javac/api/BasicJavacTask;->context:Lorg/openjdk/tools/javac/util/Context;

    invoke-static {p2}, Lorg/openjdk/tools/javac/util/Log;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object p2

    sget-object v0, Lorg/openjdk/tools/javac/util/Log$PrefixKind;->JAVAC:Lorg/openjdk/tools/javac/util/Log$PrefixKind;

    invoke-static {}, Lorg/openjdk/tools/javac/main/JavaCompiler;->version()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "msg.bug"

    invoke-virtual {p2, v0, v2, v1}, Lorg/openjdk/tools/javac/util/Log;->printLines(Lorg/openjdk/tools/javac/util/Log$PrefixKind;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lorg/openjdk/tools/javac/util/Log$WriterKind;->NOTICE:Lorg/openjdk/tools/javac/util/Log$WriterKind;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/util/Log;->getWriter(Lorg/openjdk/tools/javac/util/Log$WriterKind;)Ljava/io/PrintWriter;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    :cond_1
    return-object p3

    :catch_2
    move-exception p1

    throw p1

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/PropagatedException;->getCause()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :catch_4
    move-exception p1

    goto :goto_1

    :catch_5
    move-exception p1

    :goto_1
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_6
    move-exception p1

    iget-object p3, p0, Lorg/openjdk/tools/javac/api/BasicJavacTask;->context:Lorg/openjdk/tools/javac/util/Context;

    invoke-static {p3}, Lorg/openjdk/tools/javac/util/Log;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object p3

    iget-object v1, p0, Lorg/openjdk/tools/javac/api/BasicJavacTask;->context:Lorg/openjdk/tools/javac/util/Context;

    invoke-static {v1}, Lorg/openjdk/tools/javac/util/Options;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Options;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lorg/openjdk/tools/javac/util/Log;->printRawLines(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    sget-object v0, Lorg/openjdk/tools/javac/util/Log$WriterKind;->NOTICE:Lorg/openjdk/tools/javac/util/Log$WriterKind;

    invoke-virtual {p3, v0}, Lorg/openjdk/tools/javac/util/Log;->getWriter(Lorg/openjdk/tools/javac/util/Log$WriterKind;)Ljava/io/PrintWriter;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    :cond_2
    return-object p2
.end method

.method private handleFlowResults(Ljava/util/Queue;Lorg/openjdk/tools/javac/util/ListBuffer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;>;",
            "Lorg/openjdk/tools/javac/util/ListBuffer<",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/comp/Env;

    sget-object v2, Lorg/openjdk/tools/javac/api/JavacTaskImpl$3;->$SwitchMap$com$sun$tools$javac$tree$JCTree$Tag:[I

    iget-object v3, v1, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/tree/JCTree;->getTag()Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    if-eqz v1, :cond_0

    invoke-virtual {p2, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_2
    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    if-eqz v1, :cond_0

    invoke-virtual {p2, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_3
    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    if-eqz v1, :cond_0

    invoke-virtual {p2, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_4
    iget-object p2, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->genList:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private synthetic lambda$analyze$1()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->analyze(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method private synthetic lambda$doCall$0()Lorg/openjdk/tools/javac/main/Main$Result;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->prepareCompiler(Z)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->compiler:Lorg/openjdk/tools/javac/main/JavaCompiler;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->errorCount()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lorg/openjdk/tools/javac/main/Main$Result;->ERROR:Lorg/openjdk/tools/javac/main/Main$Result;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->compiler:Lorg/openjdk/tools/javac/main/JavaCompiler;

    iget-object v1, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->args:Lorg/openjdk/tools/javac/main/Arguments;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/main/Arguments;->getFileObjects()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->args:Lorg/openjdk/tools/javac/main/Arguments;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/main/Arguments;->getClassNames()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->processors:Ljava/lang/Iterable;

    iget-object v4, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->addModules:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/openjdk/tools/javac/main/JavaCompiler;->compile(Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/Iterable;Ljava/util/Collection;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->compiler:Lorg/openjdk/tools/javac/main/JavaCompiler;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->errorCount()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lorg/openjdk/tools/javac/main/Main$Result;->ERROR:Lorg/openjdk/tools/javac/main/Main$Result;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/openjdk/tools/javac/main/Main$Result;->OK:Lorg/openjdk/tools/javac/main/Main$Result;

    :goto_0
    return-object v0
.end method

.method private synthetic lambda$generate$2()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->generate(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method private parseInternal()Ljava/lang/Iterable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/source/tree/CompilationUnitTree;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->prepareCompiler(Z)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->compiler:Lorg/openjdk/tools/javac/main/JavaCompiler;

    iget-object v2, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->args:Lorg/openjdk/tools/javac/main/Arguments;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/main/Arguments;->getFileObjects()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/main/JavaCompiler;->parseFiles(Ljava/lang/Iterable;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->getSourceFile()Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v4

    iget-object v5, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->notYetEntered:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->notYetEntered:Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    iput-boolean v0, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->parsed:Z

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->compiler:Lorg/openjdk/tools/javac/main/JavaCompiler;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/Log;->flush()V

    :cond_2
    return-object v1

    :goto_1
    iput-boolean v0, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->parsed:Z

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->compiler:Lorg/openjdk/tools/javac/main/JavaCompiler;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/Log;->flush()V

    :cond_3
    throw v1
.end method

.method private prepareCompiler(Z)V
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->used:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->compiler:Lorg/openjdk/tools/javac/main/JavaCompiler;

    if-eqz p1, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance p1, Lorg/openjdk/tools/javac/util/PropagatedException;

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-direct {p1, v0}, Lorg/openjdk/tools/javac/util/PropagatedException;-><init>(Ljava/lang/RuntimeException;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->args:Lorg/openjdk/tools/javac/main/Arguments;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/main/Arguments;->validate()Z

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/BasicJavacTask;->context:Lorg/openjdk/tools/javac/util/Context;

    const-class v2, Ljava/util/Locale;

    iget-object v3, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v2, v3}, Lorg/openjdk/tools/javac/util/Context;->put(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/BasicJavacTask;->context:Lorg/openjdk/tools/javac/util/Context;

    sget-object v2, Lorg/openjdk/tools/javac/util/JavacMessages;->messagesKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/Context;->get(Lorg/openjdk/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/util/JavacMessages;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/JavacMessages;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->locale:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->locale:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/JavacMessages;->setCurrentLocale(Ljava/util/Locale;)V

    :cond_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->args:Lorg/openjdk/tools/javac/main/Arguments;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/main/Arguments;->getPluginOpts()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/api/BasicJavacTask;->initPlugins(Ljava/util/Set;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->args:Lorg/openjdk/tools/javac/main/Arguments;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/main/Arguments;->getDocLintOpts()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/api/BasicJavacTask;->initDocLint(Lorg/openjdk/tools/javac/util/List;)V

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/BasicJavacTask;->context:Lorg/openjdk/tools/javac/util/Context;

    invoke-static {v0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/main/JavaCompiler;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->compiler:Lorg/openjdk/tools/javac/main/JavaCompiler;

    iput-boolean v1, v0, Lorg/openjdk/tools/javac/main/JavaCompiler;->keepComments:Z

    iput-boolean v1, v0, Lorg/openjdk/tools/javac/main/JavaCompiler;->genEndPos:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->notYetEntered:Ljava/util/Map;

    if-eqz p1, :cond_4

    iget-object p1, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->compiler:Lorg/openjdk/tools/javac/main/JavaCompiler;

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->processors:Ljava/lang/Iterable;

    iget-object v1, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->args:Lorg/openjdk/tools/javac/main/Arguments;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/main/Arguments;->getFileObjects()Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->args:Lorg/openjdk/tools/javac/main/Arguments;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/main/Arguments;->getClassNames()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lorg/openjdk/tools/javac/main/JavaCompiler;->initProcessAnnotations(Ljava/lang/Iterable;Ljava/util/Collection;Ljava/util/Collection;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->args:Lorg/openjdk/tools/javac/main/Arguments;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/main/Arguments;->getFileObjects()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/javax/tools/JavaFileObject;

    iget-object v1, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->notYetEntered:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    new-instance p1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {p1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->genList:Lorg/openjdk/tools/javac/util/ListBuffer;

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public addModules(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->used:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->addModules:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public analyze()Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/api/b;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/api/b;-><init>(Lorg/openjdk/tools/javac/api/JavacTaskImpl;)V

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->handleExceptions(Ljava/util/concurrent/Callable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    return-object v0
.end method

.method public analyze(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            ">;)",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->enter(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    .line 3
    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    if-nez p1, :cond_0

    .line 4
    :try_start_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->compiler:Lorg/openjdk/tools/javac/main/JavaCompiler;

    iget-object v1, p1, Lorg/openjdk/tools/javac/main/JavaCompiler;->todo:Lorg/openjdk/tools/javac/comp/Todo;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->attribute(Ljava/util/Queue;)Ljava/util/Queue;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->flow(Ljava/util/Queue;)Ljava/util/Queue;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->handleFlowResults(Ljava/util/Queue;Lorg/openjdk/tools/javac/util/ListBuffer;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 5
    :cond_0
    new-instance v1, Lorg/openjdk/tools/javac/api/JavacTaskImpl$1;

    invoke-direct {v1, p0, v0}, Lorg/openjdk/tools/javac/api/JavacTaskImpl$1;-><init>(Lorg/openjdk/tools/javac/api/JavacTaskImpl;Lorg/openjdk/tools/javac/util/ListBuffer;)V

    .line 6
    iget-object v2, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->compiler:Lorg/openjdk/tools/javac/main/JavaCompiler;

    iget-object v2, v2, Lorg/openjdk/tools/javac/main/JavaCompiler;->todo:Lorg/openjdk/tools/javac/comp/Todo;

    invoke-virtual {v1, v2, p1}, Lorg/openjdk/tools/javac/api/JavacTaskImpl$Filter;->run(Ljava/util/Queue;Ljava/lang/Iterable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :goto_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->compiler:Lorg/openjdk/tools/javac/main/JavaCompiler;

    iget-object p1, p1, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/Log;->flush()V

    return-object v0

    :goto_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->compiler:Lorg/openjdk/tools/javac/main/JavaCompiler;

    iget-object v0, v0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/Log;->flush()V

    .line 8
    throw p1
.end method

.method public call()Ljava/lang/Boolean;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->doCall()Lorg/openjdk/tools/javac/main/Main$Result;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/main/Main$Result;->isOK()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public cleanup()V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->compiler:Lorg/openjdk/tools/javac/main/JavaCompiler;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->close()V

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    instance-of v1, v0, Lorg/openjdk/tools/javac/file/BaseFileManager;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lorg/openjdk/tools/javac/file/BaseFileManager;

    iget-boolean v1, v1, Lorg/openjdk/tools/javac/file/BaseFileManager;->autoClose:Z

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v0}, Lorg/openjdk/javax/tools/JavaFileManager;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->compiler:Lorg/openjdk/tools/javac/main/JavaCompiler;

    iput-object v0, p0, Lorg/openjdk/tools/javac/api/BasicJavacTask;->context:Lorg/openjdk/tools/javac/util/Context;

    iput-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->notYetEntered:Ljava/util/Map;

    return-void
.end method

.method public doCall()Lorg/openjdk/tools/javac/main/Main$Result;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/openjdk/tools/javac/api/c;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/api/c;-><init>(Lorg/openjdk/tools/javac/api/JavacTaskImpl;)V

    sget-object v1, Lorg/openjdk/tools/javac/main/Main$Result;->SYSERR:Lorg/openjdk/tools/javac/main/Main$Result;

    sget-object v2, Lorg/openjdk/tools/javac/main/Main$Result;->ABNORMAL:Lorg/openjdk/tools/javac/main/Main$Result;

    invoke-direct {p0, v0, v1, v2}, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->handleExceptions(Ljava/util/concurrent/Callable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/main/Main$Result;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->cleanup()V
    :try_end_1
    .catch Lorg/openjdk/tools/javac/util/ClientCodeException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->cleanup()V
    :try_end_2
    .catch Lorg/openjdk/tools/javac/util/ClientCodeException; {:try_start_2 .. :try_end_2} :catch_1

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public ensureEntered()V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->args:Lorg/openjdk/tools/javac/main/Arguments;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/main/Arguments;->allowEmpty()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->enter(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    return-void
.end method

.method public enter()Ljava/lang/Iterable;
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

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->enter(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public enter(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/source/tree/CompilationUnitTree;",
            ">;)",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->notYetEntered:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->compiler:Lorg/openjdk/tools/javac/main/JavaCompiler;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    :goto_0
    invoke-direct {p0, v1}, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->prepareCompiler(Z)V

    const/4 v1, 0x0

    if-nez p1, :cond_6

    .line 6
    iget-object v2, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->notYetEntered:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 7
    iget-boolean v2, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->parsed:Z

    if-nez v2, :cond_2

    .line 8
    invoke-direct {p0}, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->parseInternal()Ljava/lang/Iterable;

    .line 9
    :cond_2
    iget-object v2, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->args:Lorg/openjdk/tools/javac/main/Arguments;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/main/Arguments;->getFileObjects()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/javax/tools/JavaFileObject;

    .line 10
    iget-object v4, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->notYetEntered:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    if-eqz v3, :cond_3

    if-nez v1, :cond_4

    .line 11
    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    .line 12
    :cond_4
    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_1

    .line 13
    :cond_5
    iget-object v2, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->notYetEntered:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    goto :goto_3

    .line 14
    :cond_6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/source/tree/CompilationUnitTree;

    .line 15
    instance-of v4, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    if-eqz v4, :cond_8

    if-nez v1, :cond_7

    .line 16
    new-instance v1, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    .line 17
    :cond_7
    move-object v4, v3

    check-cast v4, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    invoke-virtual {v1, v4}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    .line 18
    iget-object v4, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->notYetEntered:Ljava/util/Map;

    invoke-interface {v3}, Lorg/openjdk/source/tree/CompilationUnitTree;->getSourceFile()Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 19
    :cond_8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_3
    if-nez v1, :cond_b

    if-nez p1, :cond_a

    if-nez v0, :cond_a

    .line 20
    iget-object p1, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->compiler:Lorg/openjdk/tools/javac/main/JavaCompiler;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->initModules(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    .line 21
    :cond_a
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1

    .line 22
    :cond_b
    iget-object p1, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->compiler:Lorg/openjdk/tools/javac/main/JavaCompiler;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->initModules(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    .line 23
    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->compiler:Lorg/openjdk/tools/javac/main/JavaCompiler;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->enterTrees(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    .line 24
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->notYetEntered:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 25
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->compiler:Lorg/openjdk/tools/javac/main/JavaCompiler;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->processAnnotations(Lorg/openjdk/tools/javac/util/List;)V

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_7

    .line 26
    :cond_c
    :goto_4
    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    .line 27
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    .line 28
    iget-object v2, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    const-string v3, "package-info"

    sget-object v4, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->SOURCE:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    invoke-interface {v2, v3, v4}, Lorg/openjdk/javax/tools/JavaFileObject;->isNameCompatible(Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 29
    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_5

    .line 30
    :cond_e
    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->defs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree;

    .line 31
    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->CLASSDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 32
    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    .line 33
    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    if-eqz v2, :cond_f

    .line 34
    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_6

    .line 35
    :cond_10
    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->MODULEDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 36
    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;

    .line 37
    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    if-eqz v2, :cond_f

    .line 38
    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_6

    .line 39
    :cond_11
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->compiler:Lorg/openjdk/tools/javac/main/JavaCompiler;

    iget-object v0, v0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/Log;->flush()V

    return-object p1

    :goto_7
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->compiler:Lorg/openjdk/tools/javac/main/JavaCompiler;

    iget-object v0, v0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/Log;->flush()V

    .line 41
    throw p1
.end method

.method public generate()Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/api/d;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/api/d;-><init>(Lorg/openjdk/tools/javac/api/JavacTaskImpl;)V

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->handleExceptions(Ljava/util/concurrent/Callable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    return-object v0
.end method

.method public generate(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/Element;",
            ">;)",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    const/4 v1, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->analyze(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->compiler:Lorg/openjdk/tools/javac/main/JavaCompiler;

    iget-object v1, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->genList:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->desugar(Ljava/util/Queue;)Ljava/util/Queue;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->generate(Ljava/util/Queue;Ljava/util/Queue;)V

    .line 5
    iget-object p1, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->genList:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->clear()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 6
    :cond_0
    new-instance v1, Lorg/openjdk/tools/javac/api/JavacTaskImpl$2;

    invoke-direct {v1, p0, v0}, Lorg/openjdk/tools/javac/api/JavacTaskImpl$2;-><init>(Lorg/openjdk/tools/javac/api/JavacTaskImpl;Lorg/openjdk/tools/javac/util/ListBuffer;)V

    .line 7
    iget-object v2, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->genList:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {v1, v2, p1}, Lorg/openjdk/tools/javac/api/JavacTaskImpl$Filter;->run(Ljava/util/Queue;Ljava/lang/Iterable;)V

    .line 8
    :goto_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->genList:Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/ListBuffer;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->compiler:Lorg/openjdk/tools/javac/main/JavaCompiler;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->reportDeferredDiagnostics()V

    .line 10
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->cleanup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :cond_1
    iget-object p1, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->compiler:Lorg/openjdk/tools/javac/main/JavaCompiler;

    if-eqz p1, :cond_2

    .line 12
    iget-object p1, p1, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/Log;->flush()V

    :cond_2
    return-object v0

    .line 13
    :goto_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->compiler:Lorg/openjdk/tools/javac/main/JavaCompiler;

    if-eqz v0, :cond_3

    .line 14
    iget-object v0, v0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/Log;->flush()V

    .line 15
    :cond_3
    throw p1
.end method

.method public parse()Ljava/lang/Iterable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/source/tree/CompilationUnitTree;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/api/e;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/api/e;-><init>(Lorg/openjdk/tools/javac/api/JavacTaskImpl;)V

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->handleExceptions(Ljava/util/concurrent/Callable;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    return-object v0
.end method

.method public parseType(Ljava/lang/String;Lorg/openjdk/javax/lang/model/element/TypeElement;)Lorg/openjdk/tools/javac/code/Type;
    .locals 5

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/BasicJavacTask;->context:Lorg/openjdk/tools/javac/util/Context;

    invoke-static {v0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/main/JavaCompiler;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->compiler:Lorg/openjdk/tools/javac/main/JavaCompiler;

    iget-object v0, v0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/api/BasicJavacTask;->context:Lorg/openjdk/tools/javac/util/Context;

    invoke-static {v1}, Lorg/openjdk/tools/javac/parser/ParserFactory;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/parser/ParserFactory;

    move-result-object v1

    iget-object v2, p0, Lorg/openjdk/tools/javac/api/BasicJavacTask;->context:Lorg/openjdk/tools/javac/util/Context;

    invoke-static {v2}, Lorg/openjdk/tools/javac/comp/Attr;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Attr;

    move-result-object v2

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u0000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v4, 0x0

    invoke-static {v3, v4, p1}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object p1

    invoke-virtual {v1, p1, v4, v4, v4}, Lorg/openjdk/tools/javac/parser/ParserFactory;->newParser(Ljava/lang/CharSequence;ZZZ)Lorg/openjdk/tools/javac/parser/JavacParser;

    move-result-object p1

    invoke-interface {p1}, Lorg/openjdk/tools/javac/parser/Parser;->parseType()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p1

    check-cast p2, Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;

    invoke-virtual {v2, p1, p2}, Lorg/openjdk/tools/javac/comp/Attr;->attribType(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/code/Type;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->compiler:Lorg/openjdk/tools/javac/main/JavaCompiler;

    iget-object p2, p2, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->compiler:Lorg/openjdk/tools/javac/main/JavaCompiler;

    iget-object p2, p2, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public pathFor(Lorg/openjdk/source/tree/CompilationUnitTree;Lorg/openjdk/source/tree/Tree;)Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/source/tree/CompilationUnitTree;",
            "Lorg/openjdk/source/tree/Tree;",
            ")",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/source/tree/Tree;",
            ">;"
        }
    .end annotation

    check-cast p2, Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    invoke-static {p2, p1}, Lorg/openjdk/tools/javac/tree/TreeInfo;->pathFor(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->reverse()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->used:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->locale:Ljava/util/Locale;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public setProcessors(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/annotation/processing/Processor;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->used:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->processors:Ljava/lang/Iterable;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public toString(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v1, ""

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v1, p2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
