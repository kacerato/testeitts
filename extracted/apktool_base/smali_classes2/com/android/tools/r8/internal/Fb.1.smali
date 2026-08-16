.class public abstract Lcom/android/tools/r8/internal/Fb;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;
    .locals 20

    move-object/from16 v0, p0

    .line 7
    new-instance v1, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 8
    new-instance v5, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 9
    new-instance v8, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v8}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 10
    new-instance v11, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v11}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 11
    new-instance v19, Lcom/android/tools/r8/graph/G;

    move-object/from16 v2, p1

    iget-object v13, v2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    new-instance v2, Lcom/android/tools/r8/internal/pa;

    sget-object v3, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v6, Lcom/android/tools/r8/internal/O9;

    sget-object v7, Lcom/android/tools/r8/internal/NB;->b:Lcom/android/tools/r8/internal/NB;

    invoke-direct {v6, v7, v3, v5}, Lcom/android/tools/r8/internal/O9;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/ka;)V

    new-instance v3, Lcom/android/tools/r8/internal/z9;

    sget-object v7, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    const-wide/16 v9, 0x1

    invoke-direct {v3, v9, v10, v7}, Lcom/android/tools/r8/internal/z9;-><init>(JLcom/android/tools/r8/internal/Kw0;)V

    new-instance v9, Lcom/android/tools/r8/internal/M9;

    invoke-direct {v9, v8}, Lcom/android/tools/r8/internal/M9;-><init>(Lcom/android/tools/r8/internal/ka;)V

    new-instance v10, Lcom/android/tools/r8/internal/G9;

    new-instance v12, Lcom/android/tools/r8/internal/zF;

    filled-new-array {v4}, [I

    move-result-object v14

    iget-object v15, v0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    .line 12
    invoke-static {v15}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v15

    move-object/from16 v16, v13

    const/4 v13, 0x1

    move-object/from16 v17, v11

    new-array v11, v13, [Lcom/android/tools/r8/internal/jy;

    aput-object v15, v11, v4

    invoke-direct {v12, v14, v11}, Lcom/android/tools/r8/internal/zF;-><init>([I[Ljava/lang/Object;)V

    invoke-direct {v10, v12}, Lcom/android/tools/r8/internal/G9;-><init>(Lcom/android/tools/r8/internal/zF;)V

    new-instance v11, Lcom/android/tools/r8/internal/z9;

    const-wide/16 v14, 0x0

    invoke-direct {v11, v14, v15, v7}, Lcom/android/tools/r8/internal/z9;-><init>(JLcom/android/tools/r8/internal/Kw0;)V

    new-instance v12, Lcom/android/tools/r8/internal/G9;

    new-instance v14, Lcom/android/tools/r8/internal/zF;

    filled-new-array {v4}, [I

    move-result-object v15

    iget-object v0, v0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    .line 13
    invoke-static {v0}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v0

    new-array v13, v13, [Lcom/android/tools/r8/internal/jy;

    aput-object v0, v13, v4

    invoke-direct {v14, v15, v13}, Lcom/android/tools/r8/internal/zF;-><init>([I[Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayDeque;

    .line 14
    sget-object v13, Lcom/android/tools/r8/internal/NH;->c:Lcom/android/tools/r8/internal/NH;

    filled-new-array {v13}, [Lcom/android/tools/r8/internal/NH;

    move-result-object v13

    invoke-static {v13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-direct {v0, v13}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    invoke-direct {v12, v14, v0}, Lcom/android/tools/r8/internal/G9;-><init>(Lcom/android/tools/r8/internal/zF;Ljava/util/ArrayDeque;)V

    new-instance v13, Lcom/android/tools/r8/internal/ab;

    invoke-direct {v13, v7}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    new-array v14, v4, [Lcom/android/tools/r8/internal/W9;

    move-object v0, v1

    move-object v1, v2

    move-object v2, v6

    move-object v4, v9

    move-object v6, v10

    move-object v7, v11

    move-object v9, v12

    move-object v10, v13

    move-object/from16 v11, v17

    move-object v12, v14

    .line 15
    invoke-static/range {v0 .. v12}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    .line 16
    sget-object v18, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object/from16 v12, v19

    move-object/from16 v13, v16

    move-object/from16 v16, v0

    move-object/from16 v17, v18

    .line 17
    invoke-direct/range {v12 .. v18}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v19
.end method

.method public static a(Lcom/android/tools/r8/graph/u1;)V
    .locals 4

    .line 1
    const-string v0, "Ljava/lang/ClassCastException;"

    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/u1;->d(Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;)V

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    const-string v0, "Ljava/lang/IllegalAccessError;"

    const-string v1, "Ljava/lang/IncompatibleClassChangeError;"

    const-string v2, "Ljava/lang/NoSuchMethodError;"

    const-string v3, "Ljava/lang/RuntimeException;"

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/tools/r8/internal/r5;->a(Lcom/android/tools/r8/graph/u1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 6
    monitor-exit p0

    throw v0
.end method
