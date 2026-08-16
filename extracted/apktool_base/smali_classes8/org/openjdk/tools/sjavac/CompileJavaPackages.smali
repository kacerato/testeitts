.class public Lorg/openjdk/tools/sjavac/CompileJavaPackages;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/sjavac/Transformer;


# static fields
.field static final limitOnConcurrency:I = 0x3


# instance fields
.field args:Lorg/openjdk/tools/sjavac/options/Options;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lorg/openjdk/tools/sjavac/CompileJavaPackages;Lorg/openjdk/tools/sjavac/Log;Lorg/openjdk/tools/sjavac/comp/CompilationService;Ljava/lang/String;Lorg/openjdk/tools/sjavac/CompileChunk;Ljava/util/Set;Ljava/lang/Object;)Lorg/openjdk/tools/sjavac/server/CompilationSubResult;
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/openjdk/tools/sjavac/CompileJavaPackages;->lambda$transform$0(Lorg/openjdk/tools/sjavac/Log;Lorg/openjdk/tools/sjavac/comp/CompilationService;Ljava/lang/String;Lorg/openjdk/tools/sjavac/CompileChunk;Ljava/util/Set;Ljava/lang/Object;)Lorg/openjdk/tools/sjavac/server/CompilationSubResult;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$transform$0(Lorg/openjdk/tools/sjavac/Log;Lorg/openjdk/tools/sjavac/comp/CompilationService;Ljava/lang/String;Lorg/openjdk/tools/sjavac/CompileChunk;Ljava/util/Set;Ljava/lang/Object;)Lorg/openjdk/tools/sjavac/server/CompilationSubResult;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p1}, Lorg/openjdk/tools/sjavac/Log;->setLogForCurrentThread(Lorg/openjdk/tools/sjavac/Log;)V

    const-string v1, "n/a"

    iget-object p1, p0, Lorg/openjdk/tools/sjavac/CompileJavaPackages;->args:Lorg/openjdk/tools/sjavac/options/Options;

    invoke-virtual {p1}, Lorg/openjdk/tools/sjavac/options/Options;->prepJavacArgs()[Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    iget-object v5, p4, Lorg/openjdk/tools/sjavac/CompileChunk;->srcs:Ljava/util/Set;

    move-object v0, p2

    move-object v2, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/openjdk/tools/sjavac/comp/CompilationService;->compile(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/util/List;Ljava/util/Set;Ljava/util/Set;)Lorg/openjdk/tools/sjavac/server/CompilationSubResult;

    move-result-object p1

    monitor-enter p6

    :try_start_0
    iget-object p2, p1, Lorg/openjdk/tools/sjavac/server/CompilationSubResult;->stdout:Ljava/lang/String;

    invoke-static {p2}, Lorg/openjdk/tools/sjavac/Util;->getLines(Ljava/lang/String;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance p3, Lorg/openjdk/tools/sjavac/e;

    invoke-direct {p3}, Lorg/openjdk/tools/sjavac/e;-><init>()V

    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    iget-object p2, p1, Lorg/openjdk/tools/sjavac/server/CompilationSubResult;->stderr:Ljava/lang/String;

    invoke-static {p2}, Lorg/openjdk/tools/sjavac/Util;->getLines(Ljava/lang/String;)Ljava/util/stream/Stream;

    move-result-object p2

    new-instance p3, Lorg/openjdk/tools/sjavac/f;

    invoke-direct {p3}, Lorg/openjdk/tools/sjavac/f;-><init>()V

    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    monitor-exit p6

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public createCompileChunks(Ljava/util/Map;Ljava/util/Map;II)[Lorg/openjdk/tools/sjavac/CompileChunk;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/net/URI;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;II)[",
            "Lorg/openjdk/tools/sjavac/CompileChunk;"
        }
    .end annotation

    move/from16 v0, p3

    new-array v1, v0, [Lorg/openjdk/tools/sjavac/CompileChunk;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    new-instance v4, Lorg/openjdk/tools/sjavac/CompileChunk;

    invoke-direct {v4}, Lorg/openjdk/tools/sjavac/CompileChunk;-><init>()V

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    array-length v4, v3

    move v6, v2

    const/4 v7, 0x0

    :goto_1
    if-ge v2, v4, :cond_5

    aget-object v8, v3, v2

    aget-object v9, v1, v6

    move-object/from16 v10, p1

    invoke-interface {v10, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Set;

    iget-object v12, v9, Lorg/openjdk/tools/sjavac/CompileChunk;->srcs:Ljava/util/Set;

    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v12

    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v13

    add-int/2addr v12, v13

    move/from16 v13, p4

    if-le v12, v13, :cond_1

    add-int/lit8 v12, v0, -0x1

    if-ge v6, v12, :cond_1

    add-int/lit8 v6, v6, 0x1

    aget-object v9, v1, v6

    const/4 v7, 0x0

    :cond_1
    iget v12, v9, Lorg/openjdk/tools/sjavac/CompileChunk;->numPackages:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v9, Lorg/openjdk/tools/sjavac/CompileChunk;->numPackages:I

    iget-object v12, v9, Lorg/openjdk/tools/sjavac/CompileChunk;->srcs:Ljava/util/Set;

    invoke-interface {v12, v11}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static {v8}, Lorg/openjdk/tools/sjavac/Util;->justPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v14, p2

    invoke-interface {v14, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    if-eqz v8, :cond_2

    iget v15, v9, Lorg/openjdk/tools/sjavac/CompileChunk;->numDependents:I

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    add-int/2addr v15, v8

    iput v15, v9, Lorg/openjdk/tools/sjavac/CompileChunk;->numDependents:I

    :cond_2
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v15, ""

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    :cond_3
    move-object v7, v12

    :cond_4
    iget-object v8, v9, Lorg/openjdk/tools/sjavac/CompileChunk;->pkgNames:Ljava/lang/StringBuilder;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") "

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " to "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v9, Lorg/openjdk/tools/sjavac/CompileChunk;->pkgFromTos:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_5
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    return-object v1
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public setExtra(Lorg/openjdk/tools/sjavac/options/Options;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/openjdk/tools/sjavac/CompileJavaPackages;->args:Lorg/openjdk/tools/sjavac/options/Options;

    return-void
.end method

.method public transform(Lorg/openjdk/tools/sjavac/comp/CompilationService;Ljava/util/Map;Ljava/util/Set;Ljava/util/Map;Ljava/net/URI;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;IZI)Z
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/sjavac/comp/CompilationService;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/net/URI;",
            ">;>;",
            "Ljava/util/Set<",
            "Ljava/net/URI;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/net/URI;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/net/URI;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/openjdk/tools/sjavac/pubapi/PubApi;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/openjdk/tools/sjavac/pubapi/PubApi;",
            ">;IZI)Z"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    move/from16 v3, p13

    const-string v4, "Performing CompileJavaPackages transform..."

    invoke-static {v4}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lorg/openjdk/tools/sjavac/comp/CompilationService;->getSysInfo()Lorg/openjdk/tools/sjavac/server/SysInfo;

    move-result-object v5

    iget-wide v6, v5, Lorg/openjdk/tools/sjavac/server/SysInfo;->maxMemory:J

    const-wide/32 v8, 0x100000

    div-long/2addr v6, v8

    long-to-int v6, v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Server reports "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "MiB of memory and "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Lorg/openjdk/tools/sjavac/server/SysInfo;->numCores:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " cores"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    if-gtz v3, :cond_0

    iget v3, v5, Lorg/openjdk/tools/sjavac/server/SysInfo;->numCores:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Number of jobs not explicitly set, defaulting to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Lorg/openjdk/tools/sjavac/server/SysInfo;->numCores:I

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget v7, v5, Lorg/openjdk/tools/sjavac/server/SysInfo;->numCores:I

    if-ge v7, v3, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Limiting jobs from explicitly set "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " to cores available on server: "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v5, Lorg/openjdk/tools/sjavac/server/SysInfo;->numCores:I

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    iget v3, v5, Lorg/openjdk/tools/sjavac/server/SysInfo;->numCores:I

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Number of jobs explicitly set to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    :goto_0
    const/4 v5, 0x3

    if-le v3, v5, :cond_2

    move v3, v5

    :cond_2
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v8, 0x0

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v9

    add-int/2addr v8, v9

    goto :goto_1

    :cond_3
    div-int v5, v8, v3

    const-string v9, "os.arch"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "sun.arch.data.model"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "32"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/16 v10, 0x77

    goto :goto_2

    :cond_4
    const/16 v10, 0xaf

    :goto_2
    mul-int v11, v10, v8

    div-int/lit16 v11, v11, 0x400

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "For os.arch "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " the empirically determined heap required per file is "

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "KiB"

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Server has "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "MiB of heap."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Heuristics say that we need "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "MiB of heap for all source files."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    const/4 v9, 0x1

    if-ge v6, v11, :cond_7

    const/16 v6, 0x1f4

    if-ge v8, v6, :cond_6

    const-string v3, "Compiling as a single source code chunk to stay within heap size limitations!"

    invoke-static {v3}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    move v5, v8

    move v3, v9

    :cond_5
    :goto_3
    const/4 v6, 0x0

    goto :goto_4

    :cond_6
    if-le v5, v6, :cond_5

    div-int/lit16 v3, v8, 0x1f4

    div-int v5, v8, v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Compiling source as "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " code chunks serially to stay within heap size limitations!"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    if-le v3, v9, :cond_8

    int-to-float v10, v11

    int-to-float v11, v3

    const v12, 0x3f333333    # 0.7f

    mul-float/2addr v12, v11

    div-float/2addr v10, v12

    mul-float/2addr v10, v11

    float-to-int v10, v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Heuristics say that for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " concurrent compiles we need "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "MiB"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    if-le v10, v6, :cond_8

    const-string v3, "Limiting compile to a single thread to stay within heap size limitations!"

    invoke-static {v3}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    move v5, v8

    move v3, v9

    move v6, v3

    goto :goto_4

    :cond_8
    move v6, v9

    :goto_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Compiling sources in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " chunk(s)"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    move-object/from16 v10, p0

    move-object/from16 v11, p4

    invoke-virtual {v10, v0, v11, v3, v5}, Lorg/openjdk/tools/sjavac/CompileJavaPackages;->createCompileChunks(Ljava/util/Map;Ljava/util/Map;II)[Lorg/openjdk/tools/sjavac/CompileChunk;

    move-result-object v0

    invoke-static {}, Lorg/openjdk/tools/sjavac/Log;->isDebugging()Z

    move-result v5

    if-eqz v5, :cond_a

    array-length v5, v0

    move v12, v9

    const/4 v11, 0x0

    :goto_5
    if-ge v11, v5, :cond_a

    aget-object v13, v0, v11

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Chunk "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v15, " for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " ---------------"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    add-int/2addr v12, v9

    iget-object v13, v13, Lorg/openjdk/tools/sjavac/CompileChunk;->srcs:Ljava/util/Set;

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_6
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/net/URI;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    goto :goto_6

    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    const/4 v15, 0x0

    :goto_7
    if-ge v15, v3, :cond_c

    aget-object v14, v0, v15

    iget-object v11, v14, Lorg/openjdk/tools/sjavac/CompileChunk;->srcs:Ljava/util/Set;

    invoke-interface {v11}, Ljava/util/Set;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_b

    move/from16 v21, v15

    goto :goto_8

    :cond_b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "-"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static {}, Lorg/openjdk/tools/sjavac/Log;->get()Lorg/openjdk/tools/sjavac/Log;

    move-result-object v13

    new-instance v12, Lorg/openjdk/tools/sjavac/c;

    move-object v11, v12

    move-object v9, v12

    move-object/from16 v12, p0

    move-object/from16 v17, v14

    move-object/from16 v14, p1

    move/from16 v21, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move-object/from16 v17, p3

    move-object/from16 v18, v7

    invoke-direct/range {v11 .. v18}, Lorg/openjdk/tools/sjavac/c;-><init>(Lorg/openjdk/tools/sjavac/CompileJavaPackages;Lorg/openjdk/tools/sjavac/Log;Lorg/openjdk/tools/sjavac/comp/CompilationService;Ljava/lang/String;Lorg/openjdk/tools/sjavac/CompileChunk;Ljava/util/Set;Ljava/lang/Object;)V

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_8
    add-int/lit8 v15, v21, 0x1

    const/4 v9, 0x1

    goto :goto_7

    :cond_c
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v6, :cond_d

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_9

    :cond_d
    const/4 v4, 0x1

    :goto_9
    invoke-static {v4}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/Callable;

    invoke-interface {v4, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_e
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    :try_start_0
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :catch_0
    move-exception v0

    goto :goto_c

    :catch_1
    move-exception v0

    goto :goto_d

    :goto_c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Compilation interrupted: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/openjdk/tools/sjavac/Log;->error(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/Log;->error(Ljava/lang/Throwable;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_b

    :goto_d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Compilation failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/openjdk/tools/sjavac/Log;->error(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/Log;->error(Ljava/lang/Throwable;)V

    goto :goto_b

    :cond_f
    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v9, 0x1

    :cond_10
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/openjdk/tools/sjavac/server/CompilationSubResult;

    iget-object v4, v3, Lorg/openjdk/tools/sjavac/server/CompilationSubResult;->packageArtifacts:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, v3, Lorg/openjdk/tools/sjavac/server/CompilationSubResult;->packageArtifacts:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    new-instance v7, Lorg/openjdk/tools/sjavac/b;

    invoke-direct {v7}, Lorg/openjdk/tools/sjavac/b;-><init>()V

    move-object/from16 v11, p6

    invoke-interface {v11, v5, v6, v7}, Ljava/util/Map;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    goto :goto_f

    :cond_11
    move-object/from16 v11, p6

    iget-object v4, v3, Lorg/openjdk/tools/sjavac/server/CompilationSubResult;->packageDependencies:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    iget-object v7, v3, Lorg/openjdk/tools/sjavac/server/CompilationSubResult;->packageDependencies:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_10

    :cond_12
    iget-object v4, v3, Lorg/openjdk/tools/sjavac/server/CompilationSubResult;->packageCpDependencies:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    iget-object v7, v3, Lorg/openjdk/tools/sjavac/server/CompilationSubResult;->packageCpDependencies:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_11

    :cond_13
    iget-object v4, v3, Lorg/openjdk/tools/sjavac/server/CompilationSubResult;->packagePubapis:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, v3, Lorg/openjdk/tools/sjavac/server/CompilationSubResult;->packagePubapis:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    new-instance v7, Lorg/openjdk/tools/sjavac/d;

    invoke-direct {v7}, Lorg/openjdk/tools/sjavac/d;-><init>()V

    move-object/from16 v12, p9

    invoke-interface {v12, v5, v6, v7}, Ljava/util/Map;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    goto :goto_12

    :cond_14
    move-object/from16 v12, p9

    iget-object v4, v3, Lorg/openjdk/tools/sjavac/server/CompilationSubResult;->dependencyPubapis:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, v3, Lorg/openjdk/tools/sjavac/server/CompilationSubResult;->dependencyPubapis:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    new-instance v7, Lorg/openjdk/tools/sjavac/d;

    invoke-direct {v7}, Lorg/openjdk/tools/sjavac/d;-><init>()V

    move-object/from16 v13, p10

    invoke-interface {v13, v5, v6, v7}, Ljava/util/Map;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    goto :goto_13

    :cond_15
    move-object/from16 v13, p10

    iget-object v3, v3, Lorg/openjdk/tools/sjavac/server/CompilationSubResult;->result:Lorg/openjdk/tools/javac/main/Main$Result;

    sget-object v4, Lorg/openjdk/tools/javac/main/Main$Result;->OK:Lorg/openjdk/tools/javac/main/Main$Result;

    if-eq v3, v4, :cond_10

    const/4 v9, 0x0

    goto/16 :goto_e

    :cond_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, v0, v19

    const-wide/32 v2, 0xea60

    div-long v4, v0, v2

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Compilation of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " source files took "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "m "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "s"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/sjavac/Log;->debug(Ljava/lang/String;)V

    return v9
.end method
