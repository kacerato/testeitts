.class public Lorg/openjdk/tools/sjavac/comp/CompilationService;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private logJavacInvocation([Ljava/lang/String;)V
    .locals 3

    const-string v0, "Invoking javac with args"

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\-(d|cp|classpath|sourcepath|source|target)"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {v1}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public compile(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;)Lorg/openjdk/tools/sjavac/server/CompilationSubResult;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/net/URI;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/net/URI;",
            ">;)",
            "Lorg/openjdk/tools/sjavac/server/CompilationSubResult;"
        }
    .end annotation

    invoke-static {}, Lorg/openjdk/javax/tools/ToolProvider;->getSystemJavaCompiler()Lorg/openjdk/javax/tools/JavaCompiler;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/openjdk/tools/javac/api/JavacTool;

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v0, v0}, Lorg/openjdk/tools/javac/api/JavacTool;->getStandardFileManager(Lorg/openjdk/javax/tools/DiagnosticListener;Ljava/util/Locale;Ljava/nio/charset/Charset;)Lorg/openjdk/tools/javac/file/JavacFileManager;

    move-result-object v9
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    :try_start_1
    new-instance v10, Lorg/openjdk/tools/sjavac/comp/SmartFileManager;

    invoke-direct {v10, v9}, Lorg/openjdk/tools/sjavac/comp/SmartFileManager;-><init>(Lorg/openjdk/javax/tools/JavaFileManager;)V

    new-instance v0, Lorg/openjdk/tools/javac/util/Context;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context;-><init>()V

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Dependencies$GraphDependencies;->preRegister(Lorg/openjdk/tools/javac/util/Context;)V

    new-instance v11, Lorg/openjdk/tools/sjavac/server/CompilationSubResult;

    sget-object v2, Lorg/openjdk/tools/javac/main/Main$Result;->OK:Lorg/openjdk/tools/javac/main/Main$Result;

    invoke-direct {v11, v2}, Lorg/openjdk/tools/sjavac/server/CompilationSubResult;-><init>(Lorg/openjdk/tools/javac/main/Main$Result;)V

    new-instance v7, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v7}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    move-object/from16 v2, p4

    invoke-interface {v9, v2}, Lorg/openjdk/javax/tools/StandardJavaFileManager;->getJavaFileObjectsFromFiles(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v3, :cond_0

    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/javax/tools/JavaFileObject;

    sget-object v4, Lorg/openjdk/javax/tools/StandardLocation;->SOURCE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-static {v3, v4}, Lorg/openjdk/tools/sjavac/comp/SmartFileManager;->locWrap(Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/javax/tools/JavaFileManager$Location;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v3

    invoke-virtual {v7, v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v3, p0

    move-object v1, v0

    move-object/from16 p1, v9

    goto/16 :goto_6

    :cond_0
    :try_start_3
    new-instance v2, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v2}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-interface/range {p5 .. p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v4, :cond_1

    :try_start_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/URI;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v2, v5}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :cond_1
    :try_start_5
    invoke-interface {v9, v2}, Lorg/openjdk/javax/tools/StandardJavaFileManager;->getJavaFileObjectsFromFiles(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v3, :cond_2

    :try_start_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/javax/tools/JavaFileObject;

    sget-object v4, Lorg/openjdk/javax/tools/StandardLocation;->SOURCE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-static {v3, v4}, Lorg/openjdk/tools/sjavac/comp/SmartFileManager;->locWrap(Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/javax/tools/JavaFileManager$Location;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v3

    invoke-virtual {v7, v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :cond_2
    :try_start_7
    new-instance v12, Ljava/io/StringWriter;

    invoke-direct {v12}, Ljava/io/StringWriter;-><init>()V

    new-instance v13, Lorg/openjdk/tools/sjavac/comp/dependencies/PublicApiCollector;

    invoke-direct {v13, v0, v7}, Lorg/openjdk/tools/sjavac/comp/dependencies/PublicApiCollector;-><init>(Lorg/openjdk/tools/javac/util/Context;Ljava/util/Collection;)V

    new-instance v14, Lorg/openjdk/tools/sjavac/comp/PathAndPackageVerifier;

    invoke-direct {v14}, Lorg/openjdk/tools/sjavac/comp/PathAndPackageVerifier;-><init>()V

    new-instance v15, Lorg/openjdk/tools/sjavac/comp/dependencies/NewDependencyCollector;

    invoke-direct {v15, v0, v7}, Lorg/openjdk/tools/sjavac/comp/dependencies/NewDependencyCollector;-><init>(Lorg/openjdk/tools/javac/util/Context;Ljava/util/Collection;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    const/4 v8, 0x0

    const/4 v6, 0x1

    :try_start_8
    invoke-virtual {v7}, Lorg/openjdk/tools/javac/util/ListBuffer;->size()I

    move-result v2

    if-lez v2, :cond_3

    move-object/from16 v2, p6

    invoke-virtual {v10, v2}, Lorg/openjdk/tools/sjavac/comp/SmartFileManager;->setVisibleSources(Ljava/util/Set;)V

    invoke-virtual {v10}, Lorg/openjdk/tools/sjavac/comp/SmartFileManager;->cleanArtifacts()V

    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v12}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-static/range {p3 .. p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    const/16 v16, 0x0

    const/4 v4, 0x0

    move-object v3, v10

    move-object/from16 v6, v16

    move-object/from16 p1, v9

    move v9, v8

    move-object v8, v0

    :try_start_9
    invoke-virtual/range {v1 .. v8}, Lorg/openjdk/tools/javac/api/JavacTool;->getTask(Ljava/io/Writer;Lorg/openjdk/javax/tools/JavaFileManager;Lorg/openjdk/javax/tools/DiagnosticListener;Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/lang/Iterable;Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/source/util/JavacTask;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/api/JavacTaskImpl;

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Options;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Options;

    move-result-object v0

    const-string v2, "ignore.symbol.file"

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    :try_start_a
    invoke-virtual {v10, v0}, Lorg/openjdk/tools/sjavac/comp/SmartFileManager;->setSymbolFileEnabled(Z)V

    invoke-virtual {v1, v15}, Lorg/openjdk/tools/javac/api/BasicJavacTask;->addTaskListener(Lorg/openjdk/source/util/TaskListener;)V

    invoke-virtual {v1, v13}, Lorg/openjdk/tools/javac/api/BasicJavacTask;->addTaskListener(Lorg/openjdk/source/util/TaskListener;)V

    invoke-virtual {v1, v14}, Lorg/openjdk/tools/javac/api/BasicJavacTask;->addTaskListener(Lorg/openjdk/source/util/TaskListener;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-object/from16 v3, p0

    move-object/from16 v0, p3

    :try_start_b
    invoke-direct {v3, v0}, Lorg/openjdk/tools/sjavac/comp/CompilationService;->logJavacInvocation([Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/api/JavacTaskImpl;->doCall()Lorg/openjdk/tools/javac/main/Main$Result;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "javac result: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    invoke-virtual {v10}, Lorg/openjdk/javax/tools/ForwardingJavaFileManager;->flush()V

    goto :goto_5

    :catchall_1
    move-exception v0

    :goto_3
    move-object v1, v0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object/from16 v3, p0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object/from16 v3, p0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object/from16 v3, p0

    const/4 v2, 0x1

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object/from16 v3, p0

    move-object/from16 p1, v9

    goto :goto_3

    :catch_3
    move-exception v0

    move-object/from16 v3, p0

    move v2, v6

    move-object/from16 p1, v9

    move v9, v8

    goto :goto_4

    :cond_3
    move-object/from16 v3, p0

    move v2, v6

    move-object/from16 p1, v9

    move v9, v8

    sget-object v0, Lorg/openjdk/tools/javac/main/Main$Result;->ERROR:Lorg/openjdk/tools/javac/main/Main$Result;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_5

    :goto_4
    :try_start_c
    invoke-static {v0}, Lorg/openjdk/tools/sjavac/Util;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/openjdk/tools/sjavac/Log;->error(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/Util;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/StringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/StringWriter;

    sget-object v0, Lorg/openjdk/tools/javac/main/Main$Result;->ERROR:Lorg/openjdk/tools/javac/main/Main$Result;

    :goto_5
    invoke-virtual {v10}, Lorg/openjdk/tools/sjavac/comp/SmartFileManager;->getPackageArtifacts()Ljava/util/Map;

    move-result-object v1

    iput-object v1, v11, Lorg/openjdk/tools/sjavac/server/CompilationSubResult;->packageArtifacts:Ljava/util/Map;

    invoke-virtual {v14}, Lorg/openjdk/tools/sjavac/comp/PathAndPackageVerifier;->errorsDiscovered()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v0, Lorg/openjdk/tools/javac/main/Main$Result;->ERROR:Lorg/openjdk/tools/javac/main/Main$Result;

    :cond_4
    invoke-virtual {v15, v9}, Lorg/openjdk/tools/sjavac/comp/dependencies/NewDependencyCollector;->getDependencies(Z)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v11, Lorg/openjdk/tools/sjavac/server/CompilationSubResult;->packageDependencies:Ljava/util/Map;

    invoke-virtual {v15, v2}, Lorg/openjdk/tools/sjavac/comp/dependencies/NewDependencyCollector;->getDependencies(Z)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v11, Lorg/openjdk/tools/sjavac/server/CompilationSubResult;->packageCpDependencies:Ljava/util/Map;

    invoke-virtual {v13, v2}, Lorg/openjdk/tools/sjavac/comp/dependencies/PublicApiCollector;->getPubApis(Z)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v11, Lorg/openjdk/tools/sjavac/server/CompilationSubResult;->packagePubapis:Ljava/util/Map;

    invoke-virtual {v13, v9}, Lorg/openjdk/tools/sjavac/comp/dependencies/PublicApiCollector;->getPubApis(Z)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v11, Lorg/openjdk/tools/sjavac/server/CompilationSubResult;->dependencyPubapis:Ljava/util/Map;

    invoke-virtual {v12}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lorg/openjdk/tools/sjavac/server/CompilationSubResult;->stderr:Ljava/lang/String;

    iput-object v0, v11, Lorg/openjdk/tools/sjavac/server/CompilationSubResult;->result:Lorg/openjdk/tools/javac/main/Main$Result;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    invoke-interface/range {p1 .. p1}, Lorg/openjdk/javax/tools/JavaFileManager;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_4

    return-object v11

    :catch_4
    move-exception v0

    goto :goto_8

    :goto_6
    :try_start_e
    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :catchall_4
    move-exception v0

    move-object v2, v0

    if-eqz p1, :cond_5

    :try_start_f
    invoke-interface/range {p1 .. p1}, Lorg/openjdk/javax/tools/JavaFileManager;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception v0

    move-object v4, v0

    :try_start_10
    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_7
    throw v2
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4

    :catch_5
    move-exception v0

    move-object/from16 v3, p0

    :goto_8
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSysInfo()Lorg/openjdk/tools/sjavac/server/SysInfo;
    .locals 4

    new-instance v0, Lorg/openjdk/tools/sjavac/server/SysInfo;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lorg/openjdk/tools/sjavac/server/SysInfo;-><init>(IJ)V

    return-object v0
.end method
