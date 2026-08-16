.class public abstract Lcom/android/tools/r8/internal/Lu;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;
    .locals 20

    .line 24
    new-instance v0, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 25
    new-instance v6, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 26
    new-instance v9, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v9}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 27
    new-instance v1, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 28
    new-instance v17, Lcom/android/tools/r8/graph/G;

    move-object/from16 v2, p0

    iget-object v13, v2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    new-instance v2, Lcom/android/tools/r8/internal/pa;

    sget-object v3, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v5, Lcom/android/tools/r8/internal/pa;

    const/4 v7, 0x1

    invoke-direct {v5, v3, v7}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v8, Lcom/android/tools/r8/internal/Q9;

    sget-object v10, Lcom/android/tools/r8/internal/NB;->g:Lcom/android/tools/r8/internal/NB;

    invoke-direct {v8, v10, v3, v6}, Lcom/android/tools/r8/internal/Q9;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/ka;)V

    new-instance v10, Lcom/android/tools/r8/internal/z9;

    const-wide/16 v11, 0x1

    invoke-direct {v10, v11, v12, v3}, Lcom/android/tools/r8/internal/z9;-><init>(JLcom/android/tools/r8/internal/Kw0;)V

    new-instance v11, Lcom/android/tools/r8/internal/M9;

    invoke-direct {v11, v9}, Lcom/android/tools/r8/internal/M9;-><init>(Lcom/android/tools/r8/internal/ka;)V

    new-instance v12, Lcom/android/tools/r8/internal/G9;

    new-instance v14, Lcom/android/tools/r8/internal/zF;

    filled-new-array {v4, v7}, [I

    move-result-object v15

    .line 29
    sget v16, Lcom/android/tools/r8/internal/jy;->a:I

    sget-object v16, Lcom/android/tools/r8/internal/NH;->c:Lcom/android/tools/r8/internal/NH;

    const/4 v7, 0x2

    move-object/from16 v18, v13

    new-array v13, v7, [Lcom/android/tools/r8/internal/jy;

    aput-object v16, v13, v4

    const/4 v7, 0x1

    aput-object v16, v13, v7

    invoke-direct {v14, v15, v13}, Lcom/android/tools/r8/internal/zF;-><init>([I[Ljava/lang/Object;)V

    invoke-direct {v12, v14}, Lcom/android/tools/r8/internal/G9;-><init>(Lcom/android/tools/r8/internal/zF;)V

    new-instance v13, Lcom/android/tools/r8/internal/z9;

    const-wide/16 v14, 0x0

    invoke-direct {v13, v14, v15, v3}, Lcom/android/tools/r8/internal/z9;-><init>(JLcom/android/tools/r8/internal/Kw0;)V

    new-instance v14, Lcom/android/tools/r8/internal/G9;

    new-instance v15, Lcom/android/tools/r8/internal/zF;

    move-object/from16 v19, v9

    filled-new-array {v4, v7}, [I

    move-result-object v9

    const/4 v7, 0x2

    .line 30
    new-array v7, v7, [Lcom/android/tools/r8/internal/jy;

    aput-object v16, v7, v4

    const/4 v4, 0x1

    aput-object v16, v7, v4

    invoke-direct {v15, v9, v7}, Lcom/android/tools/r8/internal/zF;-><init>([I[Ljava/lang/Object;)V

    new-instance v7, Ljava/util/ArrayDeque;

    .line 31
    filled-new-array/range {v16 .. v16}, [Lcom/android/tools/r8/internal/NH;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    invoke-direct {v14, v15, v7}, Lcom/android/tools/r8/internal/G9;-><init>(Lcom/android/tools/r8/internal/zF;Ljava/util/ArrayDeque;)V

    new-instance v15, Lcom/android/tools/r8/internal/ab;

    invoke-direct {v15, v3}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    new-array v9, v4, [Lcom/android/tools/r8/internal/W9;

    const/4 v3, 0x0

    aput-object v1, v9, v3

    move-object v1, v2

    move-object v2, v5

    move-object v3, v8

    move-object v4, v10

    move-object v5, v11

    move-object v7, v12

    move-object v8, v13

    move-object v12, v9

    move-object/from16 v9, v19

    move-object v10, v14

    move-object v11, v15

    .line 32
    invoke-static/range {v0 .. v12}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v14

    .line 33
    sget-object v16, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    const/4 v12, 0x2

    const/4 v13, 0x2

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v15, v16

    .line 34
    invoke-direct/range {v10 .. v16}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v17
.end method

.method public static a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;
    .locals 25

    move-object/from16 v0, p0

    .line 7
    new-instance v1, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 8
    new-instance v5, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 9
    new-instance v11, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v11}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 10
    new-instance v2, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 11
    new-instance v19, Lcom/android/tools/r8/graph/G;

    move-object/from16 v3, p1

    iget-object v13, v3, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    new-instance v3, Lcom/android/tools/r8/internal/pa;

    sget-object v4, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v7, Lcom/android/tools/r8/internal/O9;

    sget-object v8, Lcom/android/tools/r8/internal/NB;->g:Lcom/android/tools/r8/internal/NB;

    invoke-direct {v7, v8, v4, v5}, Lcom/android/tools/r8/internal/O9;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/ka;)V

    new-instance v8, Lcom/android/tools/r8/internal/x9;

    invoke-direct {v8}, Lcom/android/tools/r8/internal/x9;-><init>()V

    new-instance v9, Lcom/android/tools/r8/internal/M9;

    invoke-direct {v9, v11}, Lcom/android/tools/r8/internal/M9;-><init>(Lcom/android/tools/r8/internal/ka;)V

    new-instance v10, Lcom/android/tools/r8/internal/G9;

    new-instance v12, Lcom/android/tools/r8/internal/zF;

    filled-new-array {v6}, [I

    move-result-object v14

    .line 12
    sget v15, Lcom/android/tools/r8/internal/jy;->a:I

    sget-object v15, Lcom/android/tools/r8/internal/NH;->c:Lcom/android/tools/r8/internal/NH;

    move-object/from16 v16, v13

    const/4 v13, 0x1

    move-object/from16 v17, v11

    new-array v11, v13, [Lcom/android/tools/r8/internal/jy;

    aput-object v15, v11, v6

    invoke-direct {v12, v14, v11}, Lcom/android/tools/r8/internal/zF;-><init>([I[Ljava/lang/Object;)V

    invoke-direct {v10, v12}, Lcom/android/tools/r8/internal/G9;-><init>(Lcom/android/tools/r8/internal/zF;)V

    new-instance v11, Lcom/android/tools/r8/internal/pa;

    invoke-direct {v11, v4, v6}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v12, Lcom/android/tools/r8/internal/z9;

    const-wide/16 v13, 0x1

    invoke-direct {v12, v13, v14, v4}, Lcom/android/tools/r8/internal/z9;-><init>(JLcom/android/tools/r8/internal/Kw0;)V

    new-instance v13, Lcom/android/tools/r8/internal/V8;

    sget-object v4, Lcom/android/tools/r8/internal/V8$a;->c:Lcom/android/tools/r8/internal/V8$a;

    sget-object v14, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    invoke-direct {v13, v4, v14}, Lcom/android/tools/r8/internal/V8;-><init>(Lcom/android/tools/r8/internal/V8$a;Lcom/android/tools/r8/internal/T10;)V

    new-instance v14, Lcom/android/tools/r8/internal/ga;

    .line 13
    const-string v4, "Ljava/lang/Integer;"

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    move-object/from16 v20, v13

    .line 14
    invoke-virtual {v0, v4}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v13

    move-object/from16 v21, v12

    iget-object v12, v0, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v12}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v12

    invoke-virtual {v0, v13, v12}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v12

    .line 15
    const-string v13, "valueOf"

    invoke-virtual {v0, v13}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v13

    .line 16
    invoke-virtual {v0, v6, v12, v13}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    const/16 v12, 0xb8

    const/4 v13, 0x0

    invoke-direct {v14, v12, v6, v13}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance v6, Lcom/android/tools/r8/internal/G9;

    new-instance v12, Lcom/android/tools/r8/internal/zF;

    move-object/from16 v22, v14

    filled-new-array {v13}, [I

    move-result-object v14

    move-object/from16 v24, v10

    move-object/from16 v23, v11

    const/4 v11, 0x1

    .line 17
    new-array v10, v11, [Lcom/android/tools/r8/internal/jy;

    aput-object v15, v10, v13

    invoke-direct {v12, v14, v10}, Lcom/android/tools/r8/internal/zF;-><init>([I[Ljava/lang/Object;)V

    new-instance v10, Ljava/util/ArrayDeque;

    .line 18
    invoke-virtual {v0, v4}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v0

    filled-new-array {v0}, [Lcom/android/tools/r8/internal/DD;

    move-result-object v0

    .line 20
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v10, v0}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    invoke-direct {v6, v12, v10}, Lcom/android/tools/r8/internal/G9;-><init>(Lcom/android/tools/r8/internal/zF;Ljava/util/ArrayDeque;)V

    new-instance v0, Lcom/android/tools/r8/internal/ab;

    sget-object v4, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v0, v4}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    const/4 v4, 0x3

    new-array v12, v4, [Lcom/android/tools/r8/internal/W9;

    const/4 v4, 0x0

    aput-object v6, v12, v4

    const/4 v4, 0x1

    aput-object v0, v12, v4

    const/4 v0, 0x2

    aput-object v2, v12, v0

    move-object v0, v1

    move-object v1, v3

    move-object v2, v7

    move-object v3, v8

    move-object v4, v9

    move-object/from16 v6, v24

    move-object/from16 v7, v23

    move-object/from16 v8, v21

    move-object/from16 v9, v20

    move-object/from16 v10, v22

    move-object/from16 v11, v17

    .line 21
    invoke-static/range {v0 .. v12}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    .line 22
    sget-object v18, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    const/4 v14, 0x2

    const/4 v15, 0x1

    move-object/from16 v12, v19

    move-object/from16 v13, v16

    move-object/from16 v16, v0

    move-object/from16 v17, v18

    .line 23
    invoke-direct/range {v12 .. v18}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v19
.end method

.method public static a(Lcom/android/tools/r8/graph/u1;)V
    .locals 1

    .line 1
    const-string v0, "Ljava/lang/Integer;"

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
    const-string v0, "Ljava/lang/NullPointerException;"

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/graph/u1;->c(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 6
    monitor-exit p0

    throw v0
.end method

.method public static b(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/G;
    .locals 29

    move-object/from16 v0, p0

    new-instance v1, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v3, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v8, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v8}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v2, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v4, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v5, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v16, Lcom/android/tools/r8/graph/G;

    move-object/from16 v6, p1

    iget-object v13, v6, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    new-instance v6, Lcom/android/tools/r8/internal/pa;

    sget-object v7, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    const/4 v9, 0x0

    invoke-direct {v6, v7, v9}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v10, Lcom/android/tools/r8/internal/O9;

    sget-object v11, Lcom/android/tools/r8/internal/NB;->g:Lcom/android/tools/r8/internal/NB;

    invoke-direct {v10, v11, v7, v8}, Lcom/android/tools/r8/internal/O9;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/ka;)V

    new-instance v12, Lcom/android/tools/r8/internal/wa;

    const-string v14, "Ljava/lang/NullPointerException;"

    invoke-virtual {v0, v14}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v15

    invoke-direct {v12, v15}, Lcom/android/tools/r8/internal/wa;-><init>(Lcom/android/tools/r8/graph/M2;)V

    new-instance v15, Lcom/android/tools/r8/internal/kb;

    sget-object v9, Lcom/android/tools/r8/internal/kb$a;->e:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {v15, v9}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    new-instance v9, Lcom/android/tools/r8/internal/ga;

    invoke-virtual {v0, v14}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v14

    move-object/from16 v17, v13

    iget-object v13, v0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v18, v8

    move-object/from16 v19, v15

    const/4 v8, 0x0

    new-array v15, v8, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v13, v15}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v13

    const-string v15, "<init>"

    invoke-virtual {v0, v15}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v15

    invoke-virtual {v0, v14, v13, v15}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    const/16 v13, 0xb7

    invoke-direct {v9, v13, v0, v8}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance v13, Lcom/android/tools/r8/internal/Cb;

    invoke-direct {v13}, Lcom/android/tools/r8/internal/Cb;-><init>()V

    new-instance v14, Lcom/android/tools/r8/internal/G9;

    new-instance v0, Lcom/android/tools/r8/internal/zF;

    const/4 v15, 0x1

    move-object/from16 p0, v13

    filled-new-array {v8, v15}, [I

    move-result-object v13

    sget v20, Lcom/android/tools/r8/internal/jy;->a:I

    sget-object v20, Lcom/android/tools/r8/internal/NH;->c:Lcom/android/tools/r8/internal/NH;

    const/4 v15, 0x2

    move-object/from16 v21, v9

    new-array v9, v15, [Lcom/android/tools/r8/internal/jy;

    aput-object v20, v9, v8

    const/4 v15, 0x1

    aput-object v20, v9, v15

    invoke-direct {v0, v13, v9}, Lcom/android/tools/r8/internal/zF;-><init>([I[Ljava/lang/Object;)V

    invoke-direct {v14, v0}, Lcom/android/tools/r8/internal/G9;-><init>(Lcom/android/tools/r8/internal/zF;)V

    new-instance v13, Lcom/android/tools/r8/internal/pa;

    invoke-direct {v13, v7, v8}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v9, Lcom/android/tools/r8/internal/pa;

    invoke-direct {v9, v7, v15}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v0, Lcom/android/tools/r8/internal/Q9;

    invoke-direct {v0, v11, v7, v2}, Lcom/android/tools/r8/internal/Q9;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/ka;)V

    new-instance v8, Lcom/android/tools/r8/internal/z9;

    move-object/from16 v22, v13

    move-object v11, v14

    const-wide/16 v13, 0x1

    invoke-direct {v8, v13, v14, v7}, Lcom/android/tools/r8/internal/z9;-><init>(JLcom/android/tools/r8/internal/Kw0;)V

    new-instance v13, Lcom/android/tools/r8/internal/M9;

    invoke-direct {v13, v4}, Lcom/android/tools/r8/internal/M9;-><init>(Lcom/android/tools/r8/internal/ka;)V

    new-instance v14, Lcom/android/tools/r8/internal/G9;

    move-object/from16 v23, v9

    new-instance v9, Lcom/android/tools/r8/internal/zF;

    move-object/from16 v24, v11

    move-object/from16 v25, v12

    const/4 v11, 0x0

    filled-new-array {v11, v15}, [I

    move-result-object v12

    move-object/from16 v26, v3

    const/4 v15, 0x2

    new-array v3, v15, [Lcom/android/tools/r8/internal/jy;

    aput-object v20, v3, v11

    const/4 v15, 0x1

    aput-object v20, v3, v15

    invoke-direct {v9, v12, v3}, Lcom/android/tools/r8/internal/zF;-><init>([I[Ljava/lang/Object;)V

    invoke-direct {v14, v9}, Lcom/android/tools/r8/internal/G9;-><init>(Lcom/android/tools/r8/internal/zF;)V

    new-instance v3, Lcom/android/tools/r8/internal/z9;

    const-wide/16 v11, 0x0

    invoke-direct {v3, v11, v12, v7}, Lcom/android/tools/r8/internal/z9;-><init>(JLcom/android/tools/r8/internal/Kw0;)V

    new-instance v9, Lcom/android/tools/r8/internal/G9;

    new-instance v11, Lcom/android/tools/r8/internal/zF;

    move-object/from16 v27, v10

    const/4 v12, 0x0

    filled-new-array {v12, v15}, [I

    move-result-object v10

    move-object/from16 v28, v6

    const/4 v15, 0x2

    new-array v6, v15, [Lcom/android/tools/r8/internal/jy;

    aput-object v20, v6, v12

    const/4 v12, 0x1

    aput-object v20, v6, v12

    invoke-direct {v11, v10, v6}, Lcom/android/tools/r8/internal/zF;-><init>([I[Ljava/lang/Object;)V

    new-instance v6, Ljava/util/ArrayDeque;

    filled-new-array/range {v20 .. v20}, [Lcom/android/tools/r8/internal/NH;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    invoke-direct {v9, v11, v6}, Lcom/android/tools/r8/internal/G9;-><init>(Lcom/android/tools/r8/internal/zF;Ljava/util/ArrayDeque;)V

    new-instance v6, Lcom/android/tools/r8/internal/ab;

    invoke-direct {v6, v7}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    const/16 v7, 0xa

    new-array v12, v7, [Lcom/android/tools/r8/internal/W9;

    const/4 v7, 0x0

    aput-object v0, v12, v7

    const/4 v0, 0x1

    aput-object v8, v12, v0

    const/4 v0, 0x2

    aput-object v13, v12, v0

    const/4 v0, 0x3

    aput-object v2, v12, v0

    const/4 v0, 0x4

    aput-object v14, v12, v0

    const/4 v0, 0x5

    aput-object v3, v12, v0

    const/4 v0, 0x6

    aput-object v4, v12, v0

    const/4 v0, 0x7

    aput-object v9, v12, v0

    const/16 v0, 0x8

    aput-object v6, v12, v0

    const/16 v0, 0x9

    aput-object v5, v12, v0

    move-object v0, v1

    move-object/from16 v1, v28

    move-object/from16 v2, v27

    move-object/from16 v3, v26

    move-object/from16 v4, v25

    move-object/from16 v5, v19

    move-object/from16 v6, v21

    move-object/from16 v7, p0

    move-object/from16 v8, v18

    move-object/from16 v11, v23

    move-object/from16 v9, v24

    move-object/from16 v10, v22

    invoke-static/range {v0 .. v12}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v13

    sget-object v15, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    const/4 v11, 0x2

    const/4 v12, 0x2

    move-object/from16 v9, v16

    move-object/from16 v10, v17

    move-object v14, v15

    invoke-direct/range {v9 .. v15}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v16
.end method
