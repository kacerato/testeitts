.class public final Lk0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/lang/String;Lk0/a;IILjava/lang/String;)Lcom/google/ai/edge/litertlm/BenchmarkInfo;
    .locals 23
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lk0/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "modelPath",
            "backend",
            "prefillTokens",
            "decodeTokens",
            "cacheDir"
        }
    .end annotation

    .annotation build Lk0/i;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "modelPath"

    move-object/from16 v3, p0

    invoke-static {v3, v1}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "backend"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/google/ai/edge/litertlm/LiteRtLmJni;->a:Lcom/google/ai/edge/litertlm/LiteRtLmJni;

    invoke-virtual/range {p1 .. p1}, Lk0/a;->a()Ljava/lang/String;

    move-result-object v4

    const-string v2, ""

    if-nez p4, :cond_0

    move-object v7, v2

    goto :goto_0

    :cond_0
    move-object/from16 v7, p4

    :goto_0
    instance-of v5, v0, Lk0/a$c;

    const/4 v13, 0x0

    if-eqz v5, :cond_1

    check-cast v0, Lk0/a$c;

    goto :goto_1

    :cond_1
    move-object v0, v13

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lk0/a$c;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move-object v8, v0

    goto :goto_3

    :cond_3
    :goto_2
    move-object v8, v2

    :goto_3
    move-object v2, v1

    move-object/from16 v3, p0

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-virtual/range {v2 .. v8}, Lcom/google/ai/edge/litertlm/LiteRtLmJni;->nativeCreateBenchmark(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)J

    move-result-wide v14

    :try_start_0
    const-string v6, "[]"

    const-string v7, "[]"

    const-string v9, "{}"

    sget-object v0, Lk0/j;->a:Lk0/j;

    invoke-virtual {v0}, Lk0/j;->e()Z

    move-result v11

    invoke-virtual {v0}, Lk0/j;->f()Ljava/lang/String;

    move-result-object v12

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v2, v1

    move-wide v3, v14

    invoke-virtual/range {v2 .. v12}, Lcom/google/ai/edge/litertlm/LiteRtLmJni;->nativeCreateConversation(JLcom/google/ai/edge/litertlm/SamplerConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)J

    move-result-wide v17

    new-instance v2, Lcom/google/ai/edge/litertlm/c;

    const/16 v21, 0x6

    const/16 v22, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v22}, Lcom/google/ai/edge/litertlm/c;-><init>(JLk0/A;ZILkotlin/jvm/internal/x;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v0, "Engine ignore this message in this mode."

    const/4 v3, 0x2

    invoke-static {v2, v0, v13, v3, v13}, Lcom/google/ai/edge/litertlm/c;->r(Lcom/google/ai/edge/litertlm/c;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Lcom/google/ai/edge/litertlm/d;

    invoke-virtual {v2}, Lcom/google/ai/edge/litertlm/c;->f()Lcom/google/ai/edge/litertlm/BenchmarkInfo;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v2, v13}, LJf/a;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1, v14, v15}, Lcom/google/ai/edge/litertlm/LiteRtLmJni;->nativeDeleteEngine(J)V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v0

    move-object v3, v0

    :try_start_4
    invoke-static {v2, v1}, LJf/a;->c(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_4
    sget-object v1, Lcom/google/ai/edge/litertlm/LiteRtLmJni;->a:Lcom/google/ai/edge/litertlm/LiteRtLmJni;

    invoke-virtual {v1, v14, v15}, Lcom/google/ai/edge/litertlm/LiteRtLmJni;->nativeDeleteEngine(J)V

    throw v0
.end method

.method public static synthetic b(Ljava/lang/String;Lk0/a;IILjava/lang/String;ILjava/lang/Object;)Lcom/google/ai/edge/litertlm/BenchmarkInfo;
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/16 v0, 0x100

    if-eqz p6, :cond_0

    move p2, v0

    :cond_0
    and-int/lit8 p6, p5, 0x8

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x10

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lk0/b;->a(Ljava/lang/String;Lk0/a;IILjava/lang/String;)Lcom/google/ai/edge/litertlm/BenchmarkInfo;

    move-result-object p0

    return-object p0
.end method
