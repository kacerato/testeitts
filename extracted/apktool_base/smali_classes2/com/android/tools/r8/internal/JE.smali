.class public abstract Lcom/android/tools/r8/internal/JE;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/H2;
    .locals 30

    move-object/from16 v0, p0

    .line 1
    new-instance v22, Lcom/android/tools/r8/graph/H2;

    move-object/from16 v1, v22

    .line 2
    const-string v9, "Lcom/android/tools/r8/startup/InstrumentationServerImpl;"

    invoke-virtual {v0, v9}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    sget-object v3, Lcom/android/tools/r8/ProgramResource$Kind;->CF:Lcom/android/tools/r8/ProgramResource$Kind;

    .line 3
    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v4

    const/16 v5, 0x21

    .line 4
    invoke-static {v5}, Lcom/android/tools/r8/graph/Q;->e(I)Lcom/android/tools/r8/graph/Q;

    move-result-object v5

    .line 5
    const-string v6, "Lcom/android/tools/r8/startup/InstrumentationServer;"

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    .line 6
    invoke-static {}, Lcom/android/tools/r8/graph/O2;->k0()Lcom/android/tools/r8/graph/O2;

    move-result-object v7

    .line 7
    const-string v8, "InstrumentationServerImpl.java"

    invoke-virtual {v0, v8}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v8

    .line 8
    sget-boolean v10, Lcom/android/tools/r8/graph/o5;->c:Z

    .line 9
    sget-object v14, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object v10, v14

    move-object v11, v14

    move-object v12, v14

    .line 10
    sget-boolean v13, Lcom/android/tools/r8/graph/i3;->c:Z

    .line 11
    invoke-static {}, Lcom/android/tools/r8/graph/H3$b;->f()Lcom/android/tools/r8/graph/H3$b;

    move-result-object v15

    .line 12
    invoke-static {}, Lcom/android/tools/r8/graph/u0;->l0()Lcom/android/tools/r8/graph/u0;

    move-result-object v16

    .line 13
    sget-object v13, Lcom/android/tools/r8/graph/g1;->o:[Lcom/android/tools/r8/graph/g1;

    .line 14
    new-instance v13, Lcom/android/tools/r8/graph/g1$a;

    move-object/from16 v23, v1

    const/4 v1, 0x1

    invoke-direct {v13, v1}, Lcom/android/tools/r8/graph/g1$a;-><init>(Z)V

    .line 15
    invoke-virtual {v0, v9}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    move-object/from16 v24, v2

    .line 16
    const-string v2, "Ljava/util/LinkedHashSet;"

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    move-object/from16 v25, v3

    .line 17
    const-string v3, "lines"

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    .line 18
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object v1

    .line 19
    invoke-virtual {v13, v1}, Lcom/android/tools/r8/graph/g1$a;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1$a;

    move-result-object v1

    const/16 v2, 0x12

    .line 20
    invoke-static {v2}, Lcom/android/tools/r8/graph/k3;->e(I)Lcom/android/tools/r8/graph/k3;

    move-result-object v2

    .line 21
    iput-object v2, v1, Lcom/android/tools/r8/graph/g1$a;->c:Lcom/android/tools/r8/graph/k3;

    .line 22
    sget v2, Lcom/android/tools/r8/androidapi/f;->a:I

    sget-object v2, Lcom/android/tools/r8/androidapi/h;->b:Lcom/android/tools/r8/androidapi/h;

    .line 23
    iput-object v2, v1, Lcom/android/tools/r8/graph/g1$a;->h:Lcom/android/tools/r8/androidapi/f;

    .line 24
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/g1$a;->a()Lcom/android/tools/r8/graph/g1;

    move-result-object v1

    filled-new-array {v1}, [Lcom/android/tools/r8/graph/g1;

    move-result-object v1

    .line 25
    new-instance v3, Lcom/android/tools/r8/graph/g1$a;

    const/4 v13, 0x1

    invoke-direct {v3, v13}, Lcom/android/tools/r8/graph/g1$a;-><init>(Z)V

    .line 26
    invoke-virtual {v0, v9}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v13

    move-object/from16 v26, v4

    .line 27
    invoke-virtual {v0, v9}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    move-object/from16 v27, v5

    .line 28
    const-string v5, "INSTANCE"

    invoke-virtual {v0, v5}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    .line 29
    invoke-virtual {v0, v13, v4, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object v4

    .line 30
    invoke-virtual {v3, v4}, Lcom/android/tools/r8/graph/g1$a;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1$a;

    move-result-object v3

    const/16 v4, 0x1a

    .line 31
    invoke-static {v4}, Lcom/android/tools/r8/graph/k3;->e(I)Lcom/android/tools/r8/graph/k3;

    move-result-object v4

    .line 32
    iput-object v4, v3, Lcom/android/tools/r8/graph/g1$a;->c:Lcom/android/tools/r8/graph/k3;

    .line 33
    iput-object v2, v3, Lcom/android/tools/r8/graph/g1$a;->h:Lcom/android/tools/r8/androidapi/f;

    .line 34
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/g1$a;->a()Lcom/android/tools/r8/graph/g1;

    move-result-object v3

    .line 35
    new-instance v4, Lcom/android/tools/r8/graph/g1$a;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lcom/android/tools/r8/graph/g1$a;-><init>(Z)V

    .line 36
    invoke-virtual {v0, v9}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 37
    const-string v13, "Z"

    move-object/from16 v28, v6

    invoke-virtual {v0, v13}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    move-object/from16 v29, v7

    .line 38
    const-string v7, "writeToLogcat"

    invoke-virtual {v0, v7}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v7

    .line 39
    invoke-virtual {v0, v5, v6, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object v5

    .line 40
    invoke-virtual {v4, v5}, Lcom/android/tools/r8/graph/g1$a;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1$a;

    move-result-object v4

    const/16 v5, 0xa

    .line 41
    invoke-static {v5}, Lcom/android/tools/r8/graph/k3;->e(I)Lcom/android/tools/r8/graph/k3;

    move-result-object v6

    .line 42
    iput-object v6, v4, Lcom/android/tools/r8/graph/g1$a;->c:Lcom/android/tools/r8/graph/k3;

    .line 43
    iput-object v2, v4, Lcom/android/tools/r8/graph/g1$a;->h:Lcom/android/tools/r8/androidapi/f;

    .line 44
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/g1$a;->a()Lcom/android/tools/r8/graph/g1;

    move-result-object v4

    .line 45
    new-instance v6, Lcom/android/tools/r8/graph/g1$a;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Lcom/android/tools/r8/graph/g1$a;-><init>(Z)V

    .line 46
    invoke-virtual {v0, v9}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    .line 47
    invoke-virtual {v0, v13}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v13

    .line 48
    const-string v5, "writeToLogcatIncludeDuplicates"

    invoke-virtual {v0, v5}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    .line 49
    invoke-virtual {v0, v7, v13, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object v5

    .line 50
    invoke-virtual {v6, v5}, Lcom/android/tools/r8/graph/g1$a;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1$a;

    move-result-object v5

    const/16 v6, 0xa

    .line 51
    invoke-static {v6}, Lcom/android/tools/r8/graph/k3;->e(I)Lcom/android/tools/r8/graph/k3;

    move-result-object v7

    .line 52
    iput-object v7, v5, Lcom/android/tools/r8/graph/g1$a;->c:Lcom/android/tools/r8/graph/k3;

    .line 53
    iput-object v2, v5, Lcom/android/tools/r8/graph/g1$a;->h:Lcom/android/tools/r8/androidapi/f;

    .line 54
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/g1$a;->a()Lcom/android/tools/r8/graph/g1;

    move-result-object v5

    .line 55
    new-instance v6, Lcom/android/tools/r8/graph/g1$a;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Lcom/android/tools/r8/graph/g1$a;-><init>(Z)V

    .line 56
    invoke-virtual {v0, v9}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    .line 57
    const-string v9, "Ljava/lang/String;"

    invoke-virtual {v0, v9}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    .line 58
    const-string v13, "logcatTag"

    invoke-virtual {v0, v13}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v13

    .line 59
    invoke-virtual {v0, v7, v9, v13}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object v7

    .line 60
    invoke-virtual {v6, v7}, Lcom/android/tools/r8/graph/g1$a;->a(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/g1$a;

    move-result-object v6

    const/16 v7, 0xa

    .line 61
    invoke-static {v7}, Lcom/android/tools/r8/graph/k3;->e(I)Lcom/android/tools/r8/graph/k3;

    move-result-object v7

    .line 62
    iput-object v7, v6, Lcom/android/tools/r8/graph/g1$a;->c:Lcom/android/tools/r8/graph/k3;

    .line 63
    iput-object v2, v6, Lcom/android/tools/r8/graph/g1$a;->h:Lcom/android/tools/r8/androidapi/f;

    .line 64
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/g1$a;->a()Lcom/android/tools/r8/graph/g1;

    move-result-object v2

    filled-new-array {v3, v4, v5, v2}, [Lcom/android/tools/r8/graph/g1;

    move-result-object v2

    .line 65
    invoke-static {v1, v2}, Lcom/android/tools/r8/graph/q3;->a([Lcom/android/tools/r8/graph/g1;[Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/graph/q3;

    move-result-object v17

    .line 66
    invoke-static/range {p0 .. p0}, Lcom/android/tools/r8/internal/JE;->b(Lcom/android/tools/r8/graph/u1;)[Lcom/android/tools/r8/graph/j1;

    move-result-object v1

    invoke-static/range {p0 .. p0}, Lcom/android/tools/r8/internal/JE;->c(Lcom/android/tools/r8/graph/u1;)[Lcom/android/tools/r8/graph/j1;

    move-result-object v2

    .line 67
    invoke-static {v1, v2}, Lcom/android/tools/r8/graph/N4$a;->a([Lcom/android/tools/r8/graph/j1;[Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/N4$a;

    move-result-object v18

    .line 68
    iget-boolean v0, v0, Lcom/android/tools/r8/graph/u1;->D6:Z

    move/from16 v19, v0

    .line 69
    new-instance v0, Lcom/android/tools/r8/l2;

    move-object/from16 v20, v0

    invoke-direct {v0}, Lcom/android/tools/r8/l2;-><init>()V

    sget-object v21, Lcom/android/tools/r8/internal/Jb0;->b:Lcom/android/tools/r8/internal/Jb0;

    const/4 v9, 0x0

    const/4 v13, 0x0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    move-object/from16 v5, v27

    move-object/from16 v6, v28

    move-object/from16 v7, v29

    invoke-direct/range {v1 .. v21}, Lcom/android/tools/r8/graph/H2;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/ProgramResource$Kind;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/graph/Q;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/O2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/o5;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/graph/i3;Ljava/util/List;Lcom/android/tools/r8/graph/H3$b;Lcom/android/tools/r8/graph/u0;Lcom/android/tools/r8/graph/q3;Lcom/android/tools/r8/graph/N4$a;ZLcom/android/tools/r8/graph/H2$a;Lcom/android/tools/r8/internal/Jb0;)V

    return-object v22
.end method

.method public static a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 20

    move-object/from16 v0, p0

    .line 70
    new-instance v1, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 71
    new-instance v3, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 72
    new-instance v9, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v9}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 73
    new-instance v11, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v11}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 74
    new-instance v19, Lcom/android/tools/r8/graph/G;

    move-object/from16 v2, p1

    iget-object v13, v2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    new-instance v2, Lcom/android/tools/r8/internal/pa;

    sget-object v4, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v6, Lcom/android/tools/r8/internal/ga;

    .line 75
    const-string v7, "Lcom/android/tools/r8/startup/InstrumentationServer;"

    invoke-virtual {v0, v7}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    iget-object v8, v0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    new-array v10, v5, [Lcom/android/tools/r8/graph/M2;

    .line 76
    invoke-virtual {v0, v8, v10}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v8

    .line 77
    const-string v10, "<init>"

    invoke-virtual {v0, v10}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v12

    .line 78
    invoke-virtual {v0, v7, v8, v12}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v7

    const/16 v8, 0xb7

    invoke-direct {v6, v8, v7, v5}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance v7, Lcom/android/tools/r8/internal/pa;

    invoke-direct {v7, v4, v5}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v12, Lcom/android/tools/r8/internal/wa;

    .line 79
    const-string v4, "Ljava/util/LinkedHashSet;"

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v14

    invoke-direct {v12, v14}, Lcom/android/tools/r8/internal/wa;-><init>(Lcom/android/tools/r8/graph/M2;)V

    new-instance v14, Lcom/android/tools/r8/internal/kb;

    sget-object v15, Lcom/android/tools/r8/internal/kb$a;->e:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {v14, v15}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    new-instance v15, Lcom/android/tools/r8/internal/ga;

    .line 80
    invoke-virtual {v0, v4}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    move-object/from16 v16, v13

    iget-object v13, v0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v17, v11

    new-array v11, v5, [Lcom/android/tools/r8/graph/M2;

    .line 81
    invoke-virtual {v0, v13, v11}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v11

    .line 82
    invoke-virtual {v0, v10}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v10

    .line 83
    invoke-virtual {v0, v8, v11, v10}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v8

    const/16 v10, 0xb7

    invoke-direct {v15, v10, v8, v5}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance v8, Lcom/android/tools/r8/internal/U9;

    .line 84
    const-string v10, "Lcom/android/tools/r8/startup/InstrumentationServerImpl;"

    invoke-virtual {v0, v10}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v10

    .line 85
    invoke-virtual {v0, v4}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    .line 86
    const-string v11, "lines"

    invoke-virtual {v0, v11}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v11

    .line 87
    invoke-virtual {v0, v10, v4, v11}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/android/tools/r8/internal/U9;-><init>(Lcom/android/tools/r8/graph/l1;)V

    new-instance v10, Lcom/android/tools/r8/internal/bb;

    invoke-direct {v10}, Lcom/android/tools/r8/internal/bb;-><init>()V

    new-array v13, v5, [Lcom/android/tools/r8/internal/W9;

    move-object v0, v1

    move-object v1, v2

    move-object v2, v6

    move-object v4, v7

    move-object v5, v12

    move-object v6, v14

    move-object v7, v15

    move-object/from16 v11, v17

    move-object v12, v13

    .line 88
    invoke-static/range {v0 .. v12}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    .line 89
    sget-object v18, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    const/4 v14, 0x3

    const/4 v15, 0x1

    move-object/from16 v12, v19

    move-object/from16 v13, v16

    move-object/from16 v16, v0

    move-object/from16 v17, v18

    .line 90
    invoke-direct/range {v12 .. v18}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v19
.end method

.method public static b(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 9

    .line 98
    new-instance v0, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 99
    new-instance v8, Lcom/android/tools/r8/graph/G;

    iget-object v2, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    new-instance p1, Lcom/android/tools/r8/internal/vb;

    .line 100
    const-string v1, "Lcom/android/tools/r8/startup/InstrumentationServerImpl;"

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 101
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 102
    const-string v4, "INSTANCE"

    invoke-virtual {p0, v4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    .line 103
    invoke-virtual {p0, v3, v1, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/vb;-><init>(Lcom/android/tools/r8/graph/l1;)V

    new-instance p0, Lcom/android/tools/r8/internal/ab;

    sget-object v1, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {p0, v1}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    .line 104
    invoke-static {v0, p1, p0}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v5

    .line 105
    sget-object v7, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, v8

    move-object v6, v7

    .line 106
    invoke-direct/range {v1 .. v7}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v8
.end method

.method public static b(Lcom/android/tools/r8/graph/u1;)[Lcom/android/tools/r8/graph/j1;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Lcom/android/tools/r8/graph/j1;->u:[Lcom/android/tools/r8/graph/j1;

    .line 2
    new-instance v1, Lcom/android/tools/r8/graph/j1$a;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/tools/r8/graph/j1$a;-><init>(Z)V

    const/4 v3, 0x2

    .line 3
    invoke-static {v3, v2}, Lcom/android/tools/r8/graph/L4;->a(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v1

    .line 4
    sget v4, Lcom/android/tools/r8/androidapi/f;->a:I

    sget-object v4, Lcom/android/tools/r8/androidapi/h;->b:Lcom/android/tools/r8/androidapi/h;

    .line 5
    iput-object v4, v1, Lcom/android/tools/r8/graph/j1$a;->m:Lcom/android/tools/r8/androidapi/f;

    .line 6
    iput-object v4, v1, Lcom/android/tools/r8/graph/j1$a;->l:Lcom/android/tools/r8/androidapi/f;

    .line 7
    sget-object v5, Lcom/android/tools/r8/internal/Ib;->i:Lcom/android/tools/r8/internal/Ib;

    .line 8
    iput-object v5, v1, Lcom/android/tools/r8/graph/j1$a;->k:Lcom/android/tools/r8/internal/Ib;

    .line 9
    const-string v6, "Lcom/android/tools/r8/startup/InstrumentationServerImpl;"

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    .line 10
    const-string v8, "V"

    invoke-virtual {v0, v8}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    const/4 v10, 0x0

    new-array v11, v10, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v9, v11}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v9

    .line 11
    const-string v11, "<init>"

    invoke-virtual {v0, v11}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v11

    .line 12
    invoke-virtual {v0, v7, v9, v11}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v7

    .line 13
    invoke-virtual {v1, v7}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v1

    new-instance v7, Lcom/android/tools/r8/internal/pJ0;

    invoke-direct {v7, v0}, Lcom/android/tools/r8/internal/pJ0;-><init>(Lcom/android/tools/r8/graph/u1;)V

    .line 14
    invoke-virtual {v1, v7}, Lcom/android/tools/r8/graph/j1$a;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v11

    .line 16
    new-instance v1, Lcom/android/tools/r8/graph/j1$a;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/graph/j1$a;-><init>(Z)V

    const/16 v7, 0x9

    .line 17
    invoke-static {v7, v10}, Lcom/android/tools/r8/graph/L4;->a(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v1

    .line 18
    iput-object v4, v1, Lcom/android/tools/r8/graph/j1$a;->m:Lcom/android/tools/r8/androidapi/f;

    .line 19
    iput-object v4, v1, Lcom/android/tools/r8/graph/j1$a;->l:Lcom/android/tools/r8/androidapi/f;

    .line 20
    iput-object v5, v1, Lcom/android/tools/r8/graph/j1$a;->k:Lcom/android/tools/r8/internal/Ib;

    .line 21
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    .line 22
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v12

    new-array v13, v10, [Lcom/android/tools/r8/graph/M2;

    .line 23
    invoke-virtual {v0, v12, v13}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v12

    .line 24
    const-string v13, "getInstance"

    invoke-virtual {v0, v13}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v13

    .line 25
    invoke-virtual {v0, v9, v12, v13}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v9

    .line 26
    invoke-virtual {v1, v9}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v1

    new-instance v9, Lcom/android/tools/r8/internal/qJ0;

    invoke-direct {v9, v0}, Lcom/android/tools/r8/internal/qJ0;-><init>(Lcom/android/tools/r8/graph/u1;)V

    .line 27
    invoke-virtual {v1, v9}, Lcom/android/tools/r8/graph/j1$a;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v12

    .line 29
    new-instance v1, Lcom/android/tools/r8/graph/j1$a;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/graph/j1$a;-><init>(Z)V

    .line 30
    invoke-static {v7, v10}, Lcom/android/tools/r8/graph/L4;->a(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v1

    .line 31
    iput-object v4, v1, Lcom/android/tools/r8/graph/j1$a;->m:Lcom/android/tools/r8/androidapi/f;

    .line 32
    iput-object v4, v1, Lcom/android/tools/r8/graph/j1$a;->l:Lcom/android/tools/r8/androidapi/f;

    .line 33
    iput-object v5, v1, Lcom/android/tools/r8/graph/j1$a;->k:Lcom/android/tools/r8/internal/Ib;

    .line 34
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    .line 35
    invoke-virtual {v0, v8}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v13

    .line 36
    const-string v14, "Ljava/lang/String;"

    invoke-virtual {v0, v14}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v15

    .line 37
    invoke-virtual {v0, v14}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    filled-new-array {v15, v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 38
    invoke-virtual {v0, v13, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    .line 39
    const-string v13, "addCall"

    invoke-virtual {v0, v13}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v13

    .line 40
    invoke-virtual {v0, v9, v3, v13}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    .line 41
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v1

    new-instance v3, Lcom/android/tools/r8/internal/rJ0;

    invoke-direct {v3, v0}, Lcom/android/tools/r8/internal/rJ0;-><init>(Lcom/android/tools/r8/graph/u1;)V

    .line 42
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v13

    .line 44
    new-instance v1, Lcom/android/tools/r8/graph/j1$a;

    invoke-direct {v1, v2}, Lcom/android/tools/r8/graph/j1$a;-><init>(Z)V

    .line 45
    invoke-static {v7, v10}, Lcom/android/tools/r8/graph/L4;->a(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v1

    .line 46
    iput-object v4, v1, Lcom/android/tools/r8/graph/j1$a;->m:Lcom/android/tools/r8/androidapi/f;

    .line 47
    iput-object v4, v1, Lcom/android/tools/r8/graph/j1$a;->l:Lcom/android/tools/r8/androidapi/f;

    .line 48
    iput-object v5, v1, Lcom/android/tools/r8/graph/j1$a;->k:Lcom/android/tools/r8/internal/Ib;

    .line 49
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 50
    invoke-virtual {v0, v8}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    .line 51
    invoke-virtual {v0, v14}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    filled-new-array {v9}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    .line 52
    invoke-virtual {v0, v7, v9}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v7

    .line 53
    const-string v9, "addMethod"

    invoke-virtual {v0, v9}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v9

    .line 54
    invoke-virtual {v0, v3, v7, v9}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    .line 55
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v1

    new-instance v3, Lcom/android/tools/r8/internal/sJ0;

    invoke-direct {v3, v0}, Lcom/android/tools/r8/internal/sJ0;-><init>(Lcom/android/tools/r8/graph/u1;)V

    .line 56
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v1

    .line 57
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v1

    .line 58
    new-instance v3, Lcom/android/tools/r8/graph/j1$a;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/graph/j1$a;-><init>(Z)V

    const/4 v7, 0x2

    .line 59
    invoke-static {v7, v10}, Lcom/android/tools/r8/graph/L4;->a(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v3

    .line 60
    iput-object v4, v3, Lcom/android/tools/r8/graph/j1$a;->m:Lcom/android/tools/r8/androidapi/f;

    .line 61
    iput-object v4, v3, Lcom/android/tools/r8/graph/j1$a;->l:Lcom/android/tools/r8/androidapi/f;

    .line 62
    iput-object v5, v3, Lcom/android/tools/r8/graph/j1$a;->k:Lcom/android/tools/r8/internal/Ib;

    .line 63
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    .line 64
    invoke-virtual {v0, v8}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    .line 65
    invoke-virtual {v0, v14}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v15

    filled-new-array {v15}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v15

    .line 66
    invoke-virtual {v0, v9, v15}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v9

    .line 67
    const-string v15, "addLine"

    invoke-virtual {v0, v15}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v15

    .line 68
    invoke-virtual {v0, v7, v9, v15}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v7

    .line 69
    invoke-virtual {v3, v7}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v3

    new-instance v7, Lcom/android/tools/r8/internal/tJ0;

    invoke-direct {v7, v0}, Lcom/android/tools/r8/internal/tJ0;-><init>(Lcom/android/tools/r8/graph/u1;)V

    .line 70
    invoke-virtual {v3, v7}, Lcom/android/tools/r8/graph/j1$a;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v3

    .line 71
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v15

    .line 72
    new-instance v3, Lcom/android/tools/r8/graph/j1$a;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/graph/j1$a;-><init>(Z)V

    const/16 v7, 0xa

    .line 73
    invoke-static {v7, v10}, Lcom/android/tools/r8/graph/L4;->a(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v3

    .line 74
    iput-object v4, v3, Lcom/android/tools/r8/graph/j1$a;->m:Lcom/android/tools/r8/androidapi/f;

    .line 75
    iput-object v4, v3, Lcom/android/tools/r8/graph/j1$a;->l:Lcom/android/tools/r8/androidapi/f;

    .line 76
    iput-object v5, v3, Lcom/android/tools/r8/graph/j1$a;->k:Lcom/android/tools/r8/internal/Ib;

    .line 77
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    .line 78
    invoke-virtual {v0, v8}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    .line 79
    invoke-virtual {v0, v14}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v14

    filled-new-array {v14}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v14

    .line 80
    invoke-virtual {v0, v9, v14}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v9

    .line 81
    const-string v14, "writeToLogcat"

    invoke-virtual {v0, v14}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v14

    .line 82
    invoke-virtual {v0, v7, v9, v14}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v7

    .line 83
    invoke-virtual {v3, v7}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v3

    new-instance v7, Lcom/android/tools/r8/internal/uJ0;

    invoke-direct {v7, v0}, Lcom/android/tools/r8/internal/uJ0;-><init>(Lcom/android/tools/r8/graph/u1;)V

    .line 84
    invoke-virtual {v3, v7}, Lcom/android/tools/r8/graph/j1$a;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v3

    .line 85
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v16

    .line 86
    new-instance v3, Lcom/android/tools/r8/graph/j1$a;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/graph/j1$a;-><init>(Z)V

    const/16 v7, 0x8

    .line 87
    invoke-static {v7, v2}, Lcom/android/tools/r8/graph/L4;->a(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v2

    .line 88
    iput-object v4, v2, Lcom/android/tools/r8/graph/j1$a;->m:Lcom/android/tools/r8/androidapi/f;

    .line 89
    iput-object v4, v2, Lcom/android/tools/r8/graph/j1$a;->l:Lcom/android/tools/r8/androidapi/f;

    .line 90
    iput-object v5, v2, Lcom/android/tools/r8/graph/j1$a;->k:Lcom/android/tools/r8/internal/Ib;

    .line 91
    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 92
    invoke-virtual {v0, v8}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    new-array v5, v10, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v4, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v4

    .line 93
    const-string v5, "<clinit>"

    invoke-virtual {v0, v5}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    .line 94
    invoke-virtual {v0, v3, v4, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    .line 95
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/internal/vJ0;

    invoke-direct {v3, v0}, Lcom/android/tools/r8/internal/vJ0;-><init>(Lcom/android/tools/r8/graph/u1;)V

    .line 96
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v17

    move-object v14, v1

    filled-new-array/range {v11 .. v17}, [Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    return-object v0
.end method

.method public static c(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 20

    move-object/from16 v0, p0

    .line 17
    new-instance v1, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 18
    new-instance v2, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 19
    new-instance v3, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 20
    new-instance v13, Lcom/android/tools/r8/graph/G;

    move-object/from16 v4, p1

    iget-object v14, v4, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    new-instance v4, Lcom/android/tools/r8/internal/wa;

    iget-object v5, v0, Lcom/android/tools/r8/graph/u1;->F2:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v4, v5}, Lcom/android/tools/r8/internal/wa;-><init>(Lcom/android/tools/r8/graph/M2;)V

    new-instance v5, Lcom/android/tools/r8/internal/kb;

    sget-object v6, Lcom/android/tools/r8/internal/kb$a;->e:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {v5, v6}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    new-instance v6, Lcom/android/tools/r8/internal/ga;

    iget-object v7, v0, Lcom/android/tools/r8/graph/u1;->F2:Lcom/android/tools/r8/graph/M2;

    iget-object v8, v0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    const/4 v9, 0x0

    new-array v10, v9, [Lcom/android/tools/r8/graph/M2;

    .line 21
    invoke-virtual {v0, v8, v10}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v8

    .line 22
    const-string v10, "<init>"

    invoke-virtual {v0, v10}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v10

    .line 23
    invoke-virtual {v0, v7, v8, v10}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v7

    const/16 v8, 0xb7

    invoke-direct {v6, v8, v7, v9}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance v7, Lcom/android/tools/r8/internal/pa;

    sget-object v8, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v7, v8, v9}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v10, Lcom/android/tools/r8/internal/ga;

    iget-object v11, v0, Lcom/android/tools/r8/graph/u1;->F2:Lcom/android/tools/r8/graph/M2;

    iget-object v12, v0, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v12}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v12

    .line 24
    invoke-virtual {v0, v11, v12}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v12

    .line 25
    const-string v15, "append"

    invoke-virtual {v0, v15}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v9

    .line 26
    invoke-virtual {v0, v11, v12, v9}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v9

    const/16 v11, 0xb6

    const/4 v12, 0x0

    invoke-direct {v10, v11, v9, v12}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance v9, Lcom/android/tools/r8/internal/A9;

    .line 27
    const-string v12, " -> "

    invoke-virtual {v0, v12}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v12

    invoke-direct {v9, v12}, Lcom/android/tools/r8/internal/A9;-><init>(Lcom/android/tools/r8/graph/L2;)V

    new-instance v12, Lcom/android/tools/r8/internal/ga;

    iget-object v11, v0, Lcom/android/tools/r8/graph/u1;->F2:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v16, v14

    iget-object v14, v0, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v14}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v14

    .line 28
    invoke-virtual {v0, v11, v14}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v14

    move-object/from16 v17, v13

    .line 29
    invoke-virtual {v0, v15}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v13

    .line 30
    invoke-virtual {v0, v11, v14, v13}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v11

    const/4 v13, 0x0

    const/16 v14, 0xb6

    invoke-direct {v12, v14, v11, v13}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance v11, Lcom/android/tools/r8/internal/pa;

    const/4 v13, 0x1

    invoke-direct {v11, v8, v13}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v8, Lcom/android/tools/r8/internal/ga;

    iget-object v13, v0, Lcom/android/tools/r8/graph/u1;->F2:Lcom/android/tools/r8/graph/M2;

    iget-object v14, v0, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v14}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v14

    .line 31
    invoke-virtual {v0, v13, v14}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v14

    .line 32
    invoke-virtual {v0, v15}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v15

    .line 33
    invoke-virtual {v0, v13, v14, v15}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v13

    const/4 v14, 0x0

    const/16 v15, 0xb6

    invoke-direct {v8, v15, v13, v14}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance v13, Lcom/android/tools/r8/internal/ga;

    iget-object v15, v0, Lcom/android/tools/r8/graph/u1;->F2:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v18, v8

    iget-object v8, v0, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v19, v11

    new-array v11, v14, [Lcom/android/tools/r8/graph/M2;

    .line 34
    invoke-virtual {v0, v8, v11}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v8

    .line 35
    const-string v11, "toString"

    invoke-virtual {v0, v11}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v11

    .line 36
    invoke-virtual {v0, v15, v8, v11}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v8

    const/16 v11, 0xb6

    invoke-direct {v13, v11, v8, v14}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance v11, Lcom/android/tools/r8/internal/ga;

    .line 37
    const-string v8, "Lcom/android/tools/r8/startup/InstrumentationServerImpl;"

    invoke-virtual {v0, v8}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    iget-object v14, v0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iget-object v15, v0, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v15}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v15

    .line 38
    invoke-virtual {v0, v14, v15}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v14

    .line 39
    const-string v15, "writeToLogcat"

    invoke-virtual {v0, v15}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v15

    .line 40
    invoke-virtual {v0, v8, v14, v15}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    const/16 v8, 0xb8

    const/4 v14, 0x0

    invoke-direct {v11, v8, v0, v14}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance v0, Lcom/android/tools/r8/internal/bb;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/bb;-><init>()V

    const/4 v8, 0x3

    new-array v15, v8, [Lcom/android/tools/r8/internal/W9;

    aput-object v2, v15, v14

    const/4 v2, 0x1

    aput-object v0, v15, v2

    const/4 v0, 0x2

    aput-object v3, v15, v0

    move-object v0, v1

    move-object v1, v4

    move-object v2, v5

    move-object v3, v6

    move-object v4, v7

    move-object v5, v10

    move-object v6, v9

    move-object v7, v12

    move-object/from16 v9, v18

    move-object/from16 v8, v19

    move-object v10, v13

    move-object v12, v15

    .line 41
    invoke-static/range {v0 .. v12}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v8

    .line 42
    sget-object v10, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    const/4 v6, 0x2

    const/4 v7, 0x2

    move-object/from16 v4, v17

    move-object/from16 v5, v16

    move-object v9, v10

    .line 43
    invoke-direct/range {v4 .. v10}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v17
.end method

.method public static c(Lcom/android/tools/r8/graph/u1;)[Lcom/android/tools/r8/graph/j1;
    .locals 4

    .line 1
    sget-object v0, Lcom/android/tools/r8/graph/j1;->u:[Lcom/android/tools/r8/graph/j1;

    .line 2
    new-instance v0, Lcom/android/tools/r8/graph/j1$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/graph/j1$a;-><init>(Z)V

    const/4 v2, 0x0

    .line 3
    invoke-static {v1, v2}, Lcom/android/tools/r8/graph/L4;->a(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 4
    sget v1, Lcom/android/tools/r8/androidapi/f;->a:I

    sget-object v1, Lcom/android/tools/r8/androidapi/h;->b:Lcom/android/tools/r8/androidapi/h;

    .line 5
    iput-object v1, v0, Lcom/android/tools/r8/graph/j1$a;->m:Lcom/android/tools/r8/androidapi/f;

    .line 6
    iput-object v1, v0, Lcom/android/tools/r8/graph/j1$a;->l:Lcom/android/tools/r8/androidapi/f;

    .line 7
    sget-object v1, Lcom/android/tools/r8/internal/Ib;->i:Lcom/android/tools/r8/internal/Ib;

    .line 8
    iput-object v1, v0, Lcom/android/tools/r8/graph/j1$a;->k:Lcom/android/tools/r8/internal/Ib;

    .line 9
    const-string v1, "Lcom/android/tools/r8/startup/InstrumentationServerImpl;"

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    .line 10
    const-string v2, "V"

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    const-string v3, "Ljava/io/File;"

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    filled-new-array {v3}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 11
    invoke-virtual {p0, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    .line 12
    const-string v3, "writeToFile"

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    .line 13
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/oJ0;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/oJ0;-><init>(Lcom/android/tools/r8/graph/u1;)V

    .line 15
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/j1$a;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object p0

    .line 16
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object p0

    filled-new-array {p0}, [Lcom/android/tools/r8/graph/j1;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 15

    move-object v0, p0

    new-instance v1, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v4, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v6, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v14, Lcom/android/tools/r8/graph/G;

    move-object/from16 v2, p1

    iget-object v8, v2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    new-instance v2, Lcom/android/tools/r8/internal/ga;

    const-string v3, "Lcom/android/tools/r8/startup/InstrumentationServerImpl;"

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    const/4 v9, 0x0

    new-array v10, v9, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, v7, v10}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v7

    const-string v10, "getInstance"

    invoke-virtual {p0, v10}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v10

    invoke-virtual {p0, v5, v7, v10}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    const/16 v7, 0xb8

    invoke-direct {v2, v7, v5, v9}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance v5, Lcom/android/tools/r8/internal/pa;

    sget-object v7, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v5, v7, v9}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v7, Lcom/android/tools/r8/internal/ga;

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    iget-object v10, v0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iget-object v11, v0, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v11}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v11

    invoke-virtual {p0, v10, v11}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v10

    const-string v11, "addLine"

    invoke-virtual {p0, v11}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v11

    invoke-virtual {p0, v3, v10, v11}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    const/16 v3, 0xb7

    invoke-direct {v7, v3, v0, v9}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance v9, Lcom/android/tools/r8/internal/bb;

    invoke-direct {v9}, Lcom/android/tools/r8/internal/bb;-><init>()V

    move-object v0, v1

    move-object v1, v2

    move-object v2, v5

    move-object v3, v7

    move-object v5, v9

    invoke-static/range {v0 .. v6}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v11

    sget-object v13, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    const/4 v9, 0x2

    const/4 v10, 0x1

    move-object v7, v14

    move-object v12, v13

    invoke-direct/range {v7 .. v13}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v14
.end method

.method public static e(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 62

    move-object/from16 v0, p0

    new-instance v1, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v6, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v9, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v9}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v11, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v11}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v14, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v14}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v2, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v15, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v15}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v13, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v13}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v12, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v12}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v10, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v10}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v8, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v8}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v3, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v4, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v5, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v7, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v23, Lcom/android/tools/r8/graph/G;

    move-object/from16 v16, v9

    move-object/from16 v9, p1

    iget-object v9, v9, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v17, v9

    new-instance v9, Lcom/android/tools/r8/internal/vb;

    move-object/from16 v18, v6

    const-string v6, "Lcom/android/tools/r8/startup/InstrumentationServerImpl;"

    move-object/from16 v19, v1

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    move-object/from16 v20, v7

    iget-object v7, v0, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v21, v4

    const-string v4, "writeToLogcat"

    move-object/from16 v22, v8

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v8

    invoke-virtual {v0, v1, v7, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object v1

    invoke-direct {v9, v1}, Lcom/android/tools/r8/internal/vb;-><init>(Lcom/android/tools/r8/graph/l1;)V

    new-instance v7, Lcom/android/tools/r8/internal/O9;

    sget-object v1, Lcom/android/tools/r8/internal/NB;->b:Lcom/android/tools/r8/internal/NB;

    sget-object v8, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v7, v1, v8, v11}, Lcom/android/tools/r8/internal/O9;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/ka;)V

    move-object/from16 p1, v7

    new-instance v7, Lcom/android/tools/r8/internal/vb;

    move-object/from16 v24, v9

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    move-object/from16 v25, v10

    iget-object v10, v0, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v26, v12

    const-string v12, "writeToLogcatIncludeDuplicates"

    invoke-virtual {v0, v12}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v12

    invoke-virtual {v0, v9, v10, v12}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object v9

    invoke-direct {v7, v9}, Lcom/android/tools/r8/internal/vb;-><init>(Lcom/android/tools/r8/graph/l1;)V

    new-instance v9, Lcom/android/tools/r8/internal/O9;

    invoke-direct {v9, v1, v8, v11}, Lcom/android/tools/r8/internal/O9;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/ka;)V

    new-instance v10, Lcom/android/tools/r8/internal/pa;

    sget-object v12, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    move-object/from16 v27, v11

    const/4 v11, 0x1

    invoke-direct {v10, v12, v11}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v11, Lcom/android/tools/r8/internal/ga;

    move-object/from16 v29, v10

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v10

    move-object/from16 v30, v9

    iget-object v9, v0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v31, v7

    iget-object v7, v0, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v7}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    invoke-virtual {v0, v9, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v7

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v9

    invoke-virtual {v0, v10, v7, v9}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v7

    const/16 v9, 0xb8

    const/4 v10, 0x0

    invoke-direct {v11, v9, v7, v10}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance v32, Lcom/android/tools/r8/internal/bb;

    invoke-direct/range {v32 .. v32}, Lcom/android/tools/r8/internal/bb;-><init>()V

    new-instance v7, Lcom/android/tools/r8/internal/G9;

    new-instance v9, Lcom/android/tools/r8/internal/zF;

    move-object/from16 v34, v11

    move-object/from16 v35, v15

    const/4 v11, 0x1

    filled-new-array {v10, v11}, [I

    move-result-object v15

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v28

    iget-object v11, v0, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    invoke-static {v11}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v11

    move-object/from16 v36, v2

    const/4 v2, 0x2

    move-object/from16 v37, v14

    new-array v14, v2, [Lcom/android/tools/r8/internal/jy;

    aput-object v28, v14, v10

    const/16 v28, 0x1

    aput-object v11, v14, v28

    invoke-direct {v9, v15, v14}, Lcom/android/tools/r8/internal/zF;-><init>([I[Ljava/lang/Object;)V

    invoke-direct {v7, v9}, Lcom/android/tools/r8/internal/G9;-><init>(Lcom/android/tools/r8/internal/zF;)V

    new-instance v9, Lcom/android/tools/r8/internal/pa;

    invoke-direct {v9, v12, v10}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v11, Lcom/android/tools/r8/internal/T9;

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v14

    const-string v15, "Ljava/util/LinkedHashSet;"

    invoke-virtual {v0, v15}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v10

    const-string v2, "lines"

    move-object/from16 v38, v7

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v7

    invoke-virtual {v0, v14, v10, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object v7

    invoke-direct {v11, v7}, Lcom/android/tools/r8/internal/T9;-><init>(Lcom/android/tools/r8/graph/l1;)V

    new-instance v7, Lcom/android/tools/r8/internal/kb;

    sget-object v10, Lcom/android/tools/r8/internal/kb$a;->e:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {v7, v10}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    new-instance v10, Lcom/android/tools/r8/internal/yb;

    const/4 v14, 0x2

    invoke-direct {v10, v12, v14}, Lcom/android/tools/r8/internal/yb;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v14, Lcom/android/tools/r8/internal/sa;

    move-object/from16 v39, v10

    sget-object v10, Lcom/android/tools/r8/internal/XX;->b:Lcom/android/tools/r8/internal/XX;

    invoke-direct {v14, v10}, Lcom/android/tools/r8/internal/sa;-><init>(Lcom/android/tools/r8/internal/XX;)V

    new-instance v10, Lcom/android/tools/r8/internal/pa;

    move-object/from16 v40, v14

    const/4 v14, 0x0

    invoke-direct {v10, v12, v14}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v14, Lcom/android/tools/r8/internal/T9;

    move-object/from16 v41, v10

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v10

    move-object/from16 v42, v7

    invoke-virtual {v0, v15}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v2

    invoke-virtual {v0, v10, v7, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object v2

    invoke-direct {v14, v2}, Lcom/android/tools/r8/internal/T9;-><init>(Lcom/android/tools/r8/graph/l1;)V

    new-instance v2, Lcom/android/tools/r8/internal/pa;

    const/4 v7, 0x1

    invoke-direct {v2, v12, v7}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v7, Lcom/android/tools/r8/internal/ga;

    invoke-virtual {v0, v15}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v10

    iget-object v15, v0, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v43, v2

    iget-object v2, v0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v2}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    invoke-virtual {v0, v15, v2}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v2

    const-string v15, "add"

    invoke-virtual {v0, v15}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v15

    invoke-virtual {v0, v10, v2, v15}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    const/16 v10, 0xb6

    const/4 v15, 0x0

    invoke-direct {v7, v10, v2, v15}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance v2, Lcom/android/tools/r8/internal/O9;

    sget-object v10, Lcom/android/tools/r8/internal/NB;->g:Lcom/android/tools/r8/internal/NB;

    invoke-direct {v2, v10, v8, v13}, Lcom/android/tools/r8/internal/O9;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/ka;)V

    new-instance v10, Lcom/android/tools/r8/internal/pa;

    const/4 v15, 0x2

    invoke-direct {v10, v12, v15}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v15, Lcom/android/tools/r8/internal/sa;

    move-object/from16 v44, v13

    sget-object v13, Lcom/android/tools/r8/internal/XX;->c:Lcom/android/tools/r8/internal/XX;

    invoke-direct {v15, v13}, Lcom/android/tools/r8/internal/sa;-><init>(Lcom/android/tools/r8/internal/XX;)V

    new-instance v45, Lcom/android/tools/r8/internal/bb;

    invoke-direct/range {v45 .. v45}, Lcom/android/tools/r8/internal/bb;-><init>()V

    move-object/from16 v46, v15

    new-instance v15, Lcom/android/tools/r8/internal/G9;

    move-object/from16 v47, v10

    new-instance v10, Lcom/android/tools/r8/internal/zF;

    move-object/from16 v48, v2

    move-object/from16 v49, v7

    move-object/from16 v51, v11

    move-object/from16 v50, v14

    const/4 v2, 0x1

    const/4 v7, 0x0

    const/4 v14, 0x2

    filled-new-array {v7, v2, v14}, [I

    move-result-object v11

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v28

    iget-object v14, v0, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    invoke-static {v14}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v14

    iget-object v2, v0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-static {v2}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v2

    move-object/from16 v52, v9

    const/4 v9, 0x3

    move-object/from16 v53, v1

    new-array v1, v9, [Lcom/android/tools/r8/internal/jy;

    aput-object v28, v1, v7

    const/4 v7, 0x1

    aput-object v14, v1, v7

    const/4 v7, 0x2

    aput-object v2, v1, v7

    invoke-direct {v10, v11, v1}, Lcom/android/tools/r8/internal/zF;-><init>([I[Ljava/lang/Object;)V

    invoke-direct {v15, v10}, Lcom/android/tools/r8/internal/G9;-><init>(Lcom/android/tools/r8/internal/zF;)V

    new-instance v1, Lcom/android/tools/r8/internal/pa;

    invoke-direct {v1, v12, v7}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v2, Lcom/android/tools/r8/internal/sa;

    invoke-direct {v2, v13}, Lcom/android/tools/r8/internal/sa;-><init>(Lcom/android/tools/r8/internal/XX;)V

    new-instance v10, Lcom/android/tools/r8/internal/M9;

    invoke-direct {v10, v3}, Lcom/android/tools/r8/internal/M9;-><init>(Lcom/android/tools/r8/internal/ka;)V

    new-instance v11, Lcom/android/tools/r8/internal/G9;

    new-instance v14, Lcom/android/tools/r8/internal/zF;

    move-object/from16 v54, v3

    move-object/from16 v55, v10

    const/4 v3, 0x0

    const/4 v9, 0x1

    filled-new-array {v3, v9, v7}, [I

    move-result-object v10

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v28

    iget-object v7, v0, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    invoke-static {v7}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v7

    iget-object v9, v0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-static {v9}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v9

    move-object/from16 v58, v1

    move-object/from16 v57, v2

    const/4 v2, 0x3

    new-array v1, v2, [Lcom/android/tools/r8/internal/jy;

    aput-object v28, v1, v3

    const/4 v2, 0x1

    aput-object v7, v1, v2

    const/4 v2, 0x2

    aput-object v9, v1, v2

    invoke-direct {v14, v10, v1}, Lcom/android/tools/r8/internal/zF;-><init>([I[Ljava/lang/Object;)V

    new-instance v1, Ljava/util/ArrayDeque;

    iget-object v2, v0, Lcom/android/tools/r8/graph/u1;->v3:Lcom/android/tools/r8/graph/M2;

    invoke-static {v2}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v2

    filled-new-array {v2}, [Lcom/android/tools/r8/internal/DD;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    invoke-direct {v11, v14, v1}, Lcom/android/tools/r8/internal/G9;-><init>(Lcom/android/tools/r8/internal/zF;Ljava/util/ArrayDeque;)V

    new-instance v1, Lcom/android/tools/r8/internal/yb;

    const/4 v2, 0x3

    invoke-direct {v1, v12, v2}, Lcom/android/tools/r8/internal/yb;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v3, Lcom/android/tools/r8/internal/pa;

    const/4 v7, 0x2

    invoke-direct {v3, v12, v7}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v7, Lcom/android/tools/r8/internal/sa;

    invoke-direct {v7, v13}, Lcom/android/tools/r8/internal/sa;-><init>(Lcom/android/tools/r8/internal/XX;)V

    new-instance v9, Lcom/android/tools/r8/internal/pa;

    invoke-direct {v9, v12, v2}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v2, Lcom/android/tools/r8/internal/Cb;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/Cb;-><init>()V

    new-instance v10, Lcom/android/tools/r8/internal/G9;

    new-instance v13, Lcom/android/tools/r8/internal/zF;

    move-object/from16 v56, v2

    move-object/from16 v59, v9

    const/4 v2, 0x0

    const/4 v14, 0x1

    filled-new-array {v2, v14}, [I

    move-result-object v9

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v28

    iget-object v14, v0, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    invoke-static {v14}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v14

    move-object/from16 v61, v3

    move-object/from16 v60, v7

    const/4 v7, 0x2

    new-array v3, v7, [Lcom/android/tools/r8/internal/jy;

    aput-object v28, v3, v2

    const/4 v2, 0x1

    aput-object v14, v3, v2

    invoke-direct {v13, v9, v3}, Lcom/android/tools/r8/internal/zF;-><init>([I[Ljava/lang/Object;)V

    invoke-direct {v10, v13}, Lcom/android/tools/r8/internal/G9;-><init>(Lcom/android/tools/r8/internal/zF;)V

    new-instance v2, Lcom/android/tools/r8/internal/vb;

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    iget-object v7, v0, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v9

    invoke-virtual {v0, v3, v7, v9}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/vb;-><init>(Lcom/android/tools/r8/graph/l1;)V

    new-instance v3, Lcom/android/tools/r8/internal/O9;

    move-object/from16 v7, v53

    invoke-direct {v3, v7, v8, v5}, Lcom/android/tools/r8/internal/O9;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/ka;)V

    new-instance v7, Lcom/android/tools/r8/internal/pa;

    const/4 v8, 0x1

    invoke-direct {v7, v12, v8}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v8, Lcom/android/tools/r8/internal/ga;

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    iget-object v12, v0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    iget-object v13, v0, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v13}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v13

    invoke-virtual {v0, v12, v13}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v12

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    invoke-virtual {v0, v9, v12, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    const/16 v9, 0xb8

    const/4 v12, 0x0

    invoke-direct {v8, v9, v4, v12}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance v4, Lcom/android/tools/r8/internal/G9;

    new-instance v9, Lcom/android/tools/r8/internal/zF;

    const/4 v13, 0x1

    filled-new-array {v12, v13}, [I

    move-result-object v14

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-static {v6}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v6

    iget-object v13, v0, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    invoke-static {v13}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v13

    move-object/from16 v33, v5

    const/4 v0, 0x2

    new-array v5, v0, [Lcom/android/tools/r8/internal/jy;

    aput-object v6, v5, v12

    const/4 v6, 0x1

    aput-object v13, v5, v6

    invoke-direct {v9, v14, v5}, Lcom/android/tools/r8/internal/zF;-><init>([I[Ljava/lang/Object;)V

    invoke-direct {v4, v9}, Lcom/android/tools/r8/internal/G9;-><init>(Lcom/android/tools/r8/internal/zF;)V

    new-instance v5, Lcom/android/tools/r8/internal/bb;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/bb;-><init>()V

    const/16 v9, 0x29

    new-array v13, v9, [Lcom/android/tools/r8/internal/W9;

    aput-object v52, v13, v12

    aput-object v51, v13, v6

    aput-object v42, v13, v0

    const/4 v0, 0x3

    aput-object v39, v13, v0

    const/4 v0, 0x4

    aput-object v40, v13, v0

    const/4 v0, 0x5

    aput-object v37, v13, v0

    const/4 v0, 0x6

    aput-object v41, v13, v0

    const/4 v0, 0x7

    aput-object v50, v13, v0

    const/16 v0, 0x8

    aput-object v43, v13, v0

    const/16 v0, 0x9

    aput-object v49, v13, v0

    const/16 v0, 0xa

    aput-object v48, v13, v0

    const/16 v0, 0xb

    aput-object v36, v13, v0

    const/16 v0, 0xc

    aput-object v47, v13, v0

    const/16 v0, 0xd

    aput-object v46, v13, v0

    const/16 v0, 0xe

    aput-object v35, v13, v0

    const/16 v0, 0xf

    aput-object v45, v13, v0

    const/16 v0, 0x10

    aput-object v44, v13, v0

    const/16 v0, 0x11

    aput-object v15, v13, v0

    const/16 v0, 0x12

    aput-object v58, v13, v0

    const/16 v0, 0x13

    aput-object v57, v13, v0

    const/16 v0, 0x14

    aput-object v26, v13, v0

    const/16 v0, 0x15

    aput-object v55, v13, v0

    const/16 v0, 0x16

    aput-object v25, v13, v0

    const/16 v0, 0x17

    aput-object v11, v13, v0

    const/16 v0, 0x18

    aput-object v1, v13, v0

    const/16 v0, 0x19

    aput-object v61, v13, v0

    const/16 v0, 0x1a

    aput-object v60, v13, v0

    const/16 v0, 0x1b

    aput-object v22, v13, v0

    const/16 v0, 0x1c

    aput-object v59, v13, v0

    const/16 v0, 0x1d

    aput-object v56, v13, v0

    const/16 v0, 0x1e

    aput-object v54, v13, v0

    const/16 v0, 0x1f

    aput-object v10, v13, v0

    const/16 v0, 0x20

    aput-object v2, v13, v0

    const/16 v0, 0x21

    aput-object v3, v13, v0

    const/16 v0, 0x22

    aput-object v21, v13, v0

    const/16 v0, 0x23

    aput-object v7, v13, v0

    const/16 v0, 0x24

    aput-object v8, v13, v0

    const/16 v0, 0x25

    aput-object v33, v13, v0

    const/16 v0, 0x26

    aput-object v4, v13, v0

    const/16 v0, 0x27

    aput-object v5, v13, v0

    const/16 v0, 0x28

    aput-object v20, v13, v0

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    move-object/from16 v3, p1

    move-object/from16 v4, v31

    move-object/from16 v5, v30

    move-object/from16 v6, v18

    move-object/from16 v0, v38

    move-object/from16 v7, v29

    move-object/from16 v14, v22

    move-object/from16 v8, v34

    move-object/from16 v15, v17

    move-object/from16 v9, v16

    move-object/from16 v12, v25

    move-object/from16 v10, v32

    move-object/from16 v11, v27

    move-object/from16 v15, v26

    move-object v14, v12

    move-object v12, v0

    move-object/from16 v0, v44

    invoke-static/range {v1 .. v13}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v20

    new-instance v1, Lcom/android/tools/r8/internal/Db;

    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/android/tools/r8/graph/u1;->v3:Lcom/android/tools/r8/graph/M2;

    new-instance v4, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v4, v3}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v3, v14}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    move-object/from16 v6, v35

    move-object/from16 v5, v37

    invoke-direct {v1, v5, v6, v4, v3}, Lcom/android/tools/r8/internal/Db;-><init>(Lcom/android/tools/r8/internal/ka;Lcom/android/tools/r8/internal/ka;Ljava/util/List;Ljava/util/List;)V

    new-instance v3, Lcom/android/tools/r8/internal/Db;

    iget-object v4, v2, Lcom/android/tools/r8/graph/u1;->v3:Lcom/android/tools/r8/graph/M2;

    new-instance v5, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v5, v4}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    new-instance v4, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v4, v14}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    invoke-direct {v3, v0, v15, v5, v4}, Lcom/android/tools/r8/internal/Db;-><init>(Lcom/android/tools/r8/internal/ka;Lcom/android/tools/r8/internal/ka;Ljava/util/List;Ljava/util/List;)V

    new-instance v0, Lcom/android/tools/r8/internal/Db;

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->v3:Lcom/android/tools/r8/graph/M2;

    new-instance v4, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v4, v2}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v2, v14}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    move-object/from16 v5, v22

    invoke-direct {v0, v14, v5, v4, v2}, Lcom/android/tools/r8/internal/Db;-><init>(Lcom/android/tools/r8/internal/ka;Lcom/android/tools/r8/internal/ka;Ljava/util/List;Ljava/util/List;)V

    invoke-static {v1, v3, v0}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v21

    sget-object v22, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    const/16 v18, 0x2

    const/16 v19, 0x4

    move-object/from16 v16, v23

    invoke-direct/range {v16 .. v22}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v23
.end method

.method public static f(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 16

    move-object/from16 v0, p0

    new-instance v1, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v5, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v7, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v15, Lcom/android/tools/r8/graph/G;

    move-object/from16 v2, p1

    iget-object v9, v2, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    new-instance v2, Lcom/android/tools/r8/internal/vb;

    const-string v3, "Lcom/android/tools/r8/startup/InstrumentationServerImpl;"

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    iget-object v4, v0, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    const-string v6, "logcatTag"

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v6

    invoke-virtual {v0, v3, v4, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/tools/r8/internal/vb;-><init>(Lcom/android/tools/r8/graph/l1;)V

    new-instance v3, Lcom/android/tools/r8/internal/pa;

    sget-object v4, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v4, Lcom/android/tools/r8/internal/ga;

    const-string v8, "Landroid/util/Log;"

    invoke-virtual {v0, v8}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    iget-object v10, v0, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    iget-object v11, v0, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v11, v11}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v11

    invoke-virtual {v0, v10, v11}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v10

    const-string v11, "i"

    invoke-virtual {v0, v11}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v11

    invoke-virtual {v0, v8, v10, v11}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    const/16 v8, 0xb8

    invoke-direct {v4, v8, v0, v6}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance v6, Lcom/android/tools/r8/internal/kb;

    sget-object v0, Lcom/android/tools/r8/internal/kb$a;->c:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {v6, v0}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    new-instance v8, Lcom/android/tools/r8/internal/bb;

    invoke-direct {v8}, Lcom/android/tools/r8/internal/bb;-><init>()V

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    move-object v6, v8

    invoke-static/range {v0 .. v7}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v12

    sget-object v14, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    const/4 v10, 0x2

    const/4 v11, 0x1

    move-object v8, v15

    move-object v13, v14

    invoke-direct/range {v8 .. v14}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v15
.end method

.method public static g(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 10

    new-instance v0, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v8, Lcom/android/tools/r8/graph/G;

    iget-object p1, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    new-instance v1, Lcom/android/tools/r8/internal/wa;

    const-string v2, "Lcom/android/tools/r8/startup/InstrumentationServerImpl;"

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/tools/r8/internal/wa;-><init>(Lcom/android/tools/r8/graph/M2;)V

    new-instance v3, Lcom/android/tools/r8/internal/kb;

    sget-object v4, Lcom/android/tools/r8/internal/kb$a;->e:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {v3, v4}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    new-instance v4, Lcom/android/tools/r8/internal/ga;

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    iget-object v6, p0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    const/4 v7, 0x0

    new-array v9, v7, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, v6, v9}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    const-string v9, "<init>"

    invoke-virtual {p0, v9}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v9

    invoke-virtual {p0, v5, v6, v9}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    const/16 v6, 0xb7

    invoke-direct {v4, v6, v5, v7}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance v5, Lcom/android/tools/r8/internal/wb;

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    const-string v7, "INSTANCE"

    invoke-virtual {p0, v7}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v7

    invoke-virtual {p0, v6, v2, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object p0

    invoke-direct {v5, p0}, Lcom/android/tools/r8/internal/wb;-><init>(Lcom/android/tools/r8/graph/l1;)V

    new-instance p0, Lcom/android/tools/r8/internal/bb;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/bb;-><init>()V

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v5

    sget-object v7, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object v1, v8

    move-object v2, p1

    move-object v6, v7

    invoke-direct/range {v1 .. v7}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v8
.end method

.method public static h(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 78

    move-object/from16 v0, p0

    new-instance v1, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v14, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v14}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v15, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v15}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v2, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v3, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v4, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v5, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v5}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v13, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v13}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v12, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v12}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v11, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v11}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v10, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v10}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v6, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v6}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v9, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v9}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v8, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v8}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v7, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/ka;-><init>()V

    move-object/from16 v16, v14

    new-instance v14, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v14}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v17, Lcom/android/tools/r8/internal/ka;

    invoke-direct/range {v17 .. v17}, Lcom/android/tools/r8/internal/ka;-><init>()V

    new-instance v25, Lcom/android/tools/r8/graph/G;

    move-object/from16 v18, v1

    move-object/from16 v1, p1

    iget-object v1, v1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v19, v1

    new-instance v1, Lcom/android/tools/r8/internal/wa;

    move-object/from16 v20, v7

    const-string v7, "Ljava/io/PrintWriter;"

    move-object/from16 v21, v8

    invoke-virtual {v0, v7}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    invoke-direct {v1, v8}, Lcom/android/tools/r8/internal/wa;-><init>(Lcom/android/tools/r8/graph/M2;)V

    new-instance v8, Lcom/android/tools/r8/internal/kb;

    move-object/from16 p1, v1

    sget-object v1, Lcom/android/tools/r8/internal/kb$a;->e:Lcom/android/tools/r8/internal/kb$a;

    invoke-direct {v8, v1}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    move-object/from16 v22, v8

    new-instance v8, Lcom/android/tools/r8/internal/pa;

    move-object/from16 v23, v9

    sget-object v9, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    move-object/from16 v24, v6

    const/4 v6, 0x1

    invoke-direct {v8, v9, v6}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v6, Lcom/android/tools/r8/internal/A9;

    move-object/from16 v27, v8

    const-string v8, "UTF-8"

    invoke-virtual {v0, v8}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v8

    invoke-direct {v6, v8}, Lcom/android/tools/r8/internal/A9;-><init>(Lcom/android/tools/r8/graph/L2;)V

    new-instance v8, Lcom/android/tools/r8/internal/ga;

    move-object/from16 v28, v6

    invoke-virtual {v0, v7}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    move-object/from16 v29, v11

    iget-object v11, v0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v30, v12

    const-string v12, "Ljava/io/File;"

    move-object/from16 v31, v13

    invoke-virtual {v0, v12}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v13

    move-object/from16 v32, v4

    iget-object v4, v0, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v13, v4}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {v0, v11, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v4

    const-string v11, "<init>"

    invoke-virtual {v0, v11}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v11

    invoke-virtual {v0, v6, v4, v11}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    const/16 v6, 0xb7

    const/4 v11, 0x0

    invoke-direct {v8, v6, v4, v11}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance v13, Lcom/android/tools/r8/internal/yb;

    const/4 v4, 0x2

    invoke-direct {v13, v9, v4}, Lcom/android/tools/r8/internal/yb;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v6, Lcom/android/tools/r8/internal/pa;

    invoke-direct {v6, v9, v11}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v4, Lcom/android/tools/r8/internal/T9;

    const-string v11, "Lcom/android/tools/r8/startup/InstrumentationServerImpl;"

    move-object/from16 v35, v6

    invoke-virtual {v0, v11}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    move-object/from16 v36, v13

    const-string v13, "Ljava/util/LinkedHashSet;"

    move-object/from16 v37, v8

    invoke-virtual {v0, v13}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    move-object/from16 v38, v3

    const-string v3, "lines"

    move-object/from16 v39, v15

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v15

    invoke-virtual {v0, v6, v8, v15}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/android/tools/r8/internal/T9;-><init>(Lcom/android/tools/r8/graph/l1;)V

    new-instance v15, Lcom/android/tools/r8/internal/kb;

    invoke-direct {v15, v1}, Lcom/android/tools/r8/internal/kb;-><init>(Lcom/android/tools/r8/internal/kb$a;)V

    new-instance v8, Lcom/android/tools/r8/internal/yb;

    const/4 v1, 0x3

    invoke-direct {v8, v9, v1}, Lcom/android/tools/r8/internal/yb;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v6, Lcom/android/tools/r8/internal/sa;

    sget-object v1, Lcom/android/tools/r8/internal/XX;->b:Lcom/android/tools/r8/internal/XX;

    invoke-direct {v6, v1}, Lcom/android/tools/r8/internal/sa;-><init>(Lcom/android/tools/r8/internal/XX;)V

    new-instance v1, Lcom/android/tools/r8/internal/pa;

    move-object/from16 v40, v4

    const/4 v4, 0x0

    invoke-direct {v1, v9, v4}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v4, Lcom/android/tools/r8/internal/T9;

    move-object/from16 v41, v8

    invoke-virtual {v0, v11}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    move-object/from16 v42, v15

    invoke-virtual {v0, v13}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v15

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v3

    invoke-virtual {v0, v8, v15, v3}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/l1;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/android/tools/r8/internal/T9;-><init>(Lcom/android/tools/r8/graph/l1;)V

    new-instance v3, Lcom/android/tools/r8/internal/ga;

    invoke-virtual {v0, v13}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    const-string v13, "Ljava/util/Iterator;"

    invoke-virtual {v0, v13}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v15

    move-object/from16 v44, v1

    move-object/from16 v43, v4

    const/4 v4, 0x0

    new-array v1, v4, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v15, v1}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    const-string v15, "iterator"

    invoke-virtual {v0, v15}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v15

    invoke-virtual {v0, v8, v1, v15}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v1

    const/16 v8, 0xb6

    invoke-direct {v3, v8, v1, v4}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance v1, Lcom/android/tools/r8/internal/yb;

    const/4 v15, 0x4

    invoke-direct {v1, v9, v15}, Lcom/android/tools/r8/internal/yb;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v8, Lcom/android/tools/r8/internal/G9;

    move-object/from16 v45, v1

    new-instance v1, Lcom/android/tools/r8/internal/zF;

    move-object/from16 v46, v3

    move-object/from16 v47, v6

    move-object/from16 v49, v10

    move-object/from16 v48, v14

    const/4 v3, 0x1

    const/4 v6, 0x2

    const/4 v14, 0x3

    filled-new-array {v4, v3, v6, v14, v15}, [I

    move-result-object v10

    invoke-virtual {v0, v11}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-static {v3}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v3

    invoke-virtual {v0, v12}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-static {v4}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v4

    invoke-virtual {v0, v7}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-static {v6}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v6

    iget-object v14, v0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-static {v14}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v14

    invoke-virtual {v0, v13}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v50

    invoke-static/range {v50 .. v50}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v50

    const/4 v15, 0x5

    move-object/from16 v51, v12

    new-array v12, v15, [Lcom/android/tools/r8/internal/jy;

    const/16 v34, 0x0

    aput-object v3, v12, v34

    const/4 v3, 0x1

    aput-object v4, v12, v3

    const/4 v3, 0x2

    aput-object v6, v12, v3

    const/4 v3, 0x3

    aput-object v14, v12, v3

    const/4 v3, 0x4

    aput-object v50, v12, v3

    invoke-direct {v1, v10, v12}, Lcom/android/tools/r8/internal/zF;-><init>([I[Ljava/lang/Object;)V

    invoke-direct {v8, v1}, Lcom/android/tools/r8/internal/G9;-><init>(Lcom/android/tools/r8/internal/zF;)V

    new-instance v1, Lcom/android/tools/r8/internal/pa;

    invoke-direct {v1, v9, v3}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v3, Lcom/android/tools/r8/internal/ga;

    invoke-virtual {v0, v13}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    iget-object v6, v0, Lcom/android/tools/r8/graph/u1;->E1:Lcom/android/tools/r8/graph/M2;

    const/4 v10, 0x0

    new-array v12, v10, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v6, v12}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    const-string v10, "hasNext"

    invoke-virtual {v0, v10}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v10

    invoke-virtual {v0, v4, v6, v10}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    const/16 v6, 0xb9

    const/4 v10, 0x1

    invoke-direct {v3, v6, v4, v10}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance v4, Lcom/android/tools/r8/internal/O9;

    sget-object v10, Lcom/android/tools/r8/internal/NB;->b:Lcom/android/tools/r8/internal/NB;

    sget-object v12, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v4, v10, v12, v5}, Lcom/android/tools/r8/internal/O9;-><init>(Lcom/android/tools/r8/internal/NB;Lcom/android/tools/r8/internal/Kw0;Lcom/android/tools/r8/internal/ka;)V

    new-instance v10, Lcom/android/tools/r8/internal/pa;

    const/4 v12, 0x4

    invoke-direct {v10, v9, v12}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v12, Lcom/android/tools/r8/internal/ga;

    invoke-virtual {v0, v13}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v13

    iget-object v14, v0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    const/4 v15, 0x0

    new-array v6, v15, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v14, v6}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    const-string v14, "next"

    invoke-virtual {v0, v14}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v14

    invoke-virtual {v0, v13, v6, v14}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    const/4 v13, 0x1

    const/16 v14, 0xb9

    invoke-direct {v12, v14, v6, v13}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance v6, Lcom/android/tools/r8/internal/i9;

    iget-object v13, v0, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v6, v13}, Lcom/android/tools/r8/internal/i9;-><init>(Lcom/android/tools/r8/graph/M2;)V

    new-instance v13, Lcom/android/tools/r8/internal/yb;

    const/4 v14, 0x5

    invoke-direct {v13, v9, v14}, Lcom/android/tools/r8/internal/yb;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v15, Lcom/android/tools/r8/internal/pa;

    const/4 v14, 0x2

    invoke-direct {v15, v9, v14}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v14, Lcom/android/tools/r8/internal/pa;

    move-object/from16 v52, v5

    const/4 v5, 0x5

    invoke-direct {v14, v9, v5}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v5, Lcom/android/tools/r8/internal/ga;

    move-object/from16 v53, v14

    invoke-virtual {v0, v7}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v14

    move-object/from16 v54, v15

    iget-object v15, v0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v55, v13

    iget-object v13, v0, Lcom/android/tools/r8/graph/u1;->g2:Lcom/android/tools/r8/graph/M2;

    filled-new-array {v13}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v13

    invoke-virtual {v0, v15, v13}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v13

    const-string v15, "println"

    invoke-virtual {v0, v15}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v15

    invoke-virtual {v0, v14, v13, v15}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v13

    const/4 v14, 0x0

    const/16 v15, 0xb6

    invoke-direct {v5, v15, v13, v14}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance v13, Lcom/android/tools/r8/internal/M9;

    invoke-direct {v13, v2}, Lcom/android/tools/r8/internal/M9;-><init>(Lcom/android/tools/r8/internal/ka;)V

    new-instance v15, Lcom/android/tools/r8/internal/G9;

    move-object/from16 v56, v13

    new-instance v13, Lcom/android/tools/r8/internal/zF;

    move-object/from16 v57, v5

    move-object/from16 v58, v6

    move-object/from16 v60, v10

    move-object/from16 v59, v12

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v12, 0x3

    filled-new-array {v14, v5, v6, v12}, [I

    move-result-object v10

    invoke-virtual {v0, v11}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-static {v6}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v6

    move-object/from16 v12, v51

    invoke-virtual {v0, v12}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v26

    invoke-virtual {v0, v7}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v51

    iget-object v5, v0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-static {v5}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v5

    move-object/from16 v63, v3

    move-object/from16 v62, v4

    const/4 v4, 0x4

    new-array v3, v4, [Lcom/android/tools/r8/internal/jy;

    aput-object v6, v3, v14

    const/4 v4, 0x1

    aput-object v26, v3, v4

    const/4 v4, 0x2

    aput-object v51, v3, v4

    const/4 v4, 0x3

    aput-object v5, v3, v4

    invoke-direct {v13, v10, v3}, Lcom/android/tools/r8/internal/zF;-><init>([I[Ljava/lang/Object;)V

    invoke-direct {v15, v13}, Lcom/android/tools/r8/internal/G9;-><init>(Lcom/android/tools/r8/internal/zF;)V

    new-instance v3, Lcom/android/tools/r8/internal/pa;

    invoke-direct {v3, v9, v4}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v5, Lcom/android/tools/r8/internal/sa;

    sget-object v6, Lcom/android/tools/r8/internal/XX;->c:Lcom/android/tools/r8/internal/XX;

    invoke-direct {v5, v6}, Lcom/android/tools/r8/internal/sa;-><init>(Lcom/android/tools/r8/internal/XX;)V

    new-instance v10, Lcom/android/tools/r8/internal/M9;

    move-object/from16 v13, v49

    invoke-direct {v10, v13}, Lcom/android/tools/r8/internal/M9;-><init>(Lcom/android/tools/r8/internal/ka;)V

    new-instance v14, Lcom/android/tools/r8/internal/G9;

    new-instance v13, Lcom/android/tools/r8/internal/zF;

    move-object/from16 v64, v3

    move-object/from16 v61, v5

    move-object/from16 v51, v10

    move-object/from16 v65, v15

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v10, 0x1

    filled-new-array {v5, v10, v3, v4}, [I

    move-result-object v15

    invoke-virtual {v0, v11}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-static {v3}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v3

    invoke-virtual {v0, v12}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-static {v4}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v4

    invoke-virtual {v0, v7}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v66

    iget-object v10, v0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    invoke-static {v10}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v10

    move-object/from16 v67, v1

    move-object/from16 v68, v8

    const/4 v1, 0x4

    new-array v8, v1, [Lcom/android/tools/r8/internal/jy;

    aput-object v3, v8, v5

    const/4 v1, 0x1

    aput-object v4, v8, v1

    const/4 v1, 0x2

    aput-object v66, v8, v1

    const/4 v1, 0x3

    aput-object v10, v8, v1

    invoke-direct {v13, v15, v8}, Lcom/android/tools/r8/internal/zF;-><init>([I[Ljava/lang/Object;)V

    new-instance v1, Ljava/util/ArrayDeque;

    iget-object v3, v0, Lcom/android/tools/r8/graph/u1;->v3:Lcom/android/tools/r8/graph/M2;

    invoke-static {v3}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v3

    filled-new-array {v3}, [Lcom/android/tools/r8/internal/DD;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    invoke-direct {v14, v13, v1}, Lcom/android/tools/r8/internal/G9;-><init>(Lcom/android/tools/r8/internal/zF;Ljava/util/ArrayDeque;)V

    new-instance v1, Lcom/android/tools/r8/internal/yb;

    const/4 v3, 0x6

    invoke-direct {v1, v9, v3}, Lcom/android/tools/r8/internal/yb;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v4, Lcom/android/tools/r8/internal/pa;

    const/4 v5, 0x3

    invoke-direct {v4, v9, v5}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v5, Lcom/android/tools/r8/internal/sa;

    invoke-direct {v5, v6}, Lcom/android/tools/r8/internal/sa;-><init>(Lcom/android/tools/r8/internal/XX;)V

    new-instance v6, Lcom/android/tools/r8/internal/pa;

    invoke-direct {v6, v9, v3}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v8, Lcom/android/tools/r8/internal/Cb;

    invoke-direct {v8}, Lcom/android/tools/r8/internal/Cb;-><init>()V

    new-instance v10, Lcom/android/tools/r8/internal/G9;

    new-instance v13, Lcom/android/tools/r8/internal/zF;

    move-object/from16 v70, v6

    move-object/from16 v69, v8

    const/4 v3, 0x0

    const/4 v8, 0x2

    const/4 v15, 0x1

    filled-new-array {v3, v15, v8}, [I

    move-result-object v6

    invoke-virtual {v0, v11}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v26

    invoke-virtual {v0, v12}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v33

    invoke-virtual {v0, v7}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v34

    move-object/from16 v72, v5

    const/4 v8, 0x3

    new-array v5, v8, [Lcom/android/tools/r8/internal/jy;

    aput-object v26, v5, v3

    aput-object v33, v5, v15

    const/4 v8, 0x2

    aput-object v34, v5, v8

    invoke-direct {v13, v6, v5}, Lcom/android/tools/r8/internal/zF;-><init>([I[Ljava/lang/Object;)V

    invoke-direct {v10, v13}, Lcom/android/tools/r8/internal/G9;-><init>(Lcom/android/tools/r8/internal/zF;)V

    new-instance v5, Lcom/android/tools/r8/internal/pa;

    invoke-direct {v5, v9, v8}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v6, Lcom/android/tools/r8/internal/ga;

    invoke-virtual {v0, v7}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    iget-object v13, v0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    new-array v15, v3, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v13, v15}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v13

    const-string v15, "close"

    move-object/from16 v71, v5

    invoke-virtual {v0, v15}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    invoke-virtual {v0, v8, v13, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    const/16 v8, 0xb6

    invoke-direct {v6, v8, v5, v3}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance v5, Lcom/android/tools/r8/internal/M9;

    move-object/from16 v8, v48

    invoke-direct {v5, v8}, Lcom/android/tools/r8/internal/M9;-><init>(Lcom/android/tools/r8/internal/ka;)V

    new-instance v13, Lcom/android/tools/r8/internal/G9;

    new-instance v8, Lcom/android/tools/r8/internal/zF;

    move-object/from16 v73, v5

    move-object/from16 v74, v6

    move-object/from16 v75, v10

    const/4 v5, 0x1

    const/4 v6, 0x2

    filled-new-array {v3, v5, v6}, [I

    move-result-object v10

    invoke-virtual {v0, v11}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v26

    invoke-virtual {v0, v12}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v33

    invoke-static/range {v33 .. v33}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v33

    invoke-virtual {v0, v7}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v76

    move-object/from16 v77, v4

    const/4 v6, 0x3

    new-array v4, v6, [Lcom/android/tools/r8/internal/jy;

    aput-object v26, v4, v3

    aput-object v33, v4, v5

    const/4 v3, 0x2

    aput-object v76, v4, v3

    invoke-direct {v8, v10, v4}, Lcom/android/tools/r8/internal/zF;-><init>([I[Ljava/lang/Object;)V

    new-instance v3, Ljava/util/ArrayDeque;

    iget-object v4, v0, Lcom/android/tools/r8/graph/u1;->v3:Lcom/android/tools/r8/graph/M2;

    invoke-static {v4}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v4

    filled-new-array {v4}, [Lcom/android/tools/r8/internal/DD;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    invoke-direct {v13, v8, v3}, Lcom/android/tools/r8/internal/G9;-><init>(Lcom/android/tools/r8/internal/zF;Ljava/util/ArrayDeque;)V

    new-instance v3, Lcom/android/tools/r8/internal/yb;

    const/4 v4, 0x7

    invoke-direct {v3, v9, v4}, Lcom/android/tools/r8/internal/yb;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v5, Lcom/android/tools/r8/internal/pa;

    const/4 v6, 0x2

    invoke-direct {v5, v9, v6}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v6, Lcom/android/tools/r8/internal/ga;

    invoke-virtual {v0, v7}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    iget-object v10, v0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v34, v5

    const/4 v4, 0x0

    new-array v5, v4, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v0, v10, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v5

    invoke-virtual {v0, v15}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v10

    invoke-virtual {v0, v8, v5, v10}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    const/16 v8, 0xb6

    invoke-direct {v6, v8, v5, v4}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance v5, Lcom/android/tools/r8/internal/pa;

    const/4 v8, 0x7

    invoke-direct {v5, v9, v8}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v8, Lcom/android/tools/r8/internal/Cb;

    invoke-direct {v8}, Lcom/android/tools/r8/internal/Cb;-><init>()V

    new-instance v9, Lcom/android/tools/r8/internal/G9;

    new-instance v10, Lcom/android/tools/r8/internal/zF;

    move-object/from16 v33, v5

    move-object/from16 v26, v8

    const/4 v8, 0x2

    const/4 v15, 0x1

    filled-new-array {v4, v15, v8}, [I

    move-result-object v5

    invoke-virtual {v0, v11}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v11

    invoke-static {v11}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v11

    invoke-virtual {v0, v12}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v12

    invoke-static {v12}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v12

    invoke-virtual {v0, v7}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    invoke-static {v7}, Lcom/android/tools/r8/internal/jy;->b(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/internal/DD;

    move-result-object v7

    const/4 v8, 0x3

    new-array v0, v8, [Lcom/android/tools/r8/internal/jy;

    aput-object v11, v0, v4

    aput-object v12, v0, v15

    const/4 v8, 0x2

    aput-object v7, v0, v8

    invoke-direct {v10, v5, v0}, Lcom/android/tools/r8/internal/zF;-><init>([I[Ljava/lang/Object;)V

    invoke-direct {v9, v10}, Lcom/android/tools/r8/internal/G9;-><init>(Lcom/android/tools/r8/internal/zF;)V

    new-instance v0, Lcom/android/tools/r8/internal/bb;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/bb;-><init>()V

    const/16 v5, 0x36

    new-array v12, v5, [Lcom/android/tools/r8/internal/W9;

    aput-object v47, v12, v4

    aput-object v39, v12, v15

    aput-object v44, v12, v8

    const/4 v4, 0x3

    aput-object v43, v12, v4

    const/4 v4, 0x4

    aput-object v46, v12, v4

    const/4 v4, 0x5

    aput-object v45, v12, v4

    const/4 v4, 0x6

    aput-object v2, v12, v4

    const/4 v2, 0x7

    aput-object v68, v12, v2

    const/16 v2, 0x8

    aput-object v67, v12, v2

    const/16 v2, 0x9

    aput-object v63, v12, v2

    const/16 v2, 0xa

    aput-object v62, v12, v2

    const/16 v2, 0xb

    aput-object v60, v12, v2

    const/16 v2, 0xc

    aput-object v59, v12, v2

    const/16 v2, 0xd

    aput-object v58, v12, v2

    const/16 v2, 0xe

    aput-object v55, v12, v2

    const/16 v2, 0xf

    aput-object v38, v12, v2

    const/16 v2, 0x10

    aput-object v54, v12, v2

    const/16 v2, 0x11

    aput-object v53, v12, v2

    const/16 v2, 0x12

    aput-object v57, v12, v2

    const/16 v2, 0x13

    aput-object v32, v12, v2

    const/16 v2, 0x14

    aput-object v56, v12, v2

    const/16 v2, 0x15

    aput-object v52, v12, v2

    const/16 v2, 0x16

    aput-object v65, v12, v2

    const/16 v2, 0x17

    aput-object v64, v12, v2

    const/16 v2, 0x18

    aput-object v61, v12, v2

    const/16 v2, 0x19

    aput-object v31, v12, v2

    const/16 v2, 0x1a

    aput-object v51, v12, v2

    const/16 v2, 0x1b

    aput-object v30, v12, v2

    const/16 v2, 0x1c

    aput-object v14, v12, v2

    const/16 v2, 0x1d

    aput-object v1, v12, v2

    const/16 v1, 0x1e

    aput-object v77, v12, v1

    const/16 v1, 0x1f

    aput-object v72, v12, v1

    const/16 v1, 0x20

    aput-object v29, v12, v1

    const/16 v1, 0x21

    aput-object v70, v12, v1

    const/16 v1, 0x22

    aput-object v69, v12, v1

    const/16 v1, 0x23

    aput-object v49, v12, v1

    const/16 v1, 0x24

    aput-object v75, v12, v1

    const/16 v1, 0x25

    aput-object v71, v12, v1

    const/16 v1, 0x26

    aput-object v74, v12, v1

    const/16 v1, 0x27

    aput-object v24, v12, v1

    const/16 v1, 0x28

    aput-object v73, v12, v1

    const/16 v1, 0x29

    aput-object v23, v12, v1

    const/16 v1, 0x2a

    aput-object v13, v12, v1

    const/16 v1, 0x2b

    aput-object v3, v12, v1

    const/16 v1, 0x2c

    aput-object v21, v12, v1

    const/16 v1, 0x2d

    aput-object v34, v12, v1

    const/16 v1, 0x2e

    aput-object v6, v12, v1

    const/16 v1, 0x2f

    aput-object v20, v12, v1

    const/16 v1, 0x30

    aput-object v33, v12, v1

    const/16 v1, 0x31

    aput-object v26, v12, v1

    const/16 v1, 0x32

    aput-object v48, v12, v1

    const/16 v1, 0x33

    aput-object v9, v12, v1

    const/16 v1, 0x34

    aput-object v0, v12, v1

    const/16 v0, 0x35

    aput-object v17, v12, v0

    move-object/from16 v2, p1

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object/from16 v3, v22

    move-object/from16 v10, v40

    move-object/from16 v4, v27

    move-object/from16 v5, v28

    move-object/from16 v9, v35

    move-object/from16 v6, v37

    move-object/from16 v7, v36

    move-object/from16 v14, v21

    move-object/from16 v13, v41

    move-object/from16 v8, v16

    move-object/from16 v15, v23

    move-object/from16 v11, v49

    move-object/from16 v0, v29

    move-object v14, v11

    move-object/from16 v11, v42

    move-object/from16 v17, v12

    move-object/from16 v49, v14

    move-object/from16 v14, v30

    move-object v12, v13

    move-object/from16 v15, v31

    move-object/from16 v13, v17

    invoke-static/range {v1 .. v13}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v22

    new-instance v1, Lcom/android/tools/r8/internal/Db;

    move-object/from16 v2, p0

    iget-object v3, v2, Lcom/android/tools/r8/graph/u1;->v3:Lcom/android/tools/r8/graph/M2;

    new-instance v4, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v4, v3}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v3, v14}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    move-object/from16 v5, v39

    invoke-direct {v1, v5, v15, v4, v3}, Lcom/android/tools/r8/internal/Db;-><init>(Lcom/android/tools/r8/internal/ka;Lcom/android/tools/r8/internal/ka;Ljava/util/List;Ljava/util/List;)V

    new-instance v3, Lcom/android/tools/r8/internal/Db;

    iget-object v4, v2, Lcom/android/tools/r8/graph/u1;->v3:Lcom/android/tools/r8/graph/M2;

    new-instance v5, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v5, v4}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    new-instance v4, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v4, v14}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    invoke-direct {v3, v14, v0, v5, v4}, Lcom/android/tools/r8/internal/Db;-><init>(Lcom/android/tools/r8/internal/ka;Lcom/android/tools/r8/internal/ka;Ljava/util/List;Ljava/util/List;)V

    new-instance v0, Lcom/android/tools/r8/internal/Db;

    iget-object v4, v2, Lcom/android/tools/r8/graph/u1;->v3:Lcom/android/tools/r8/graph/M2;

    new-instance v5, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v5, v4}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    new-instance v4, Lcom/android/tools/r8/internal/Sm0;

    move-object/from16 v6, v23

    invoke-direct {v4, v6}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    move-object/from16 v7, v16

    move-object/from16 v8, v49

    invoke-direct {v0, v7, v8, v5, v4}, Lcom/android/tools/r8/internal/Db;-><init>(Lcom/android/tools/r8/internal/ka;Lcom/android/tools/r8/internal/ka;Ljava/util/List;Ljava/util/List;)V

    new-instance v4, Lcom/android/tools/r8/internal/Db;

    iget-object v2, v2, Lcom/android/tools/r8/graph/u1;->v3:Lcom/android/tools/r8/graph/M2;

    new-instance v5, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v5, v2}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    new-instance v2, Lcom/android/tools/r8/internal/Sm0;

    invoke-direct {v2, v6}, Lcom/android/tools/r8/internal/Sm0;-><init>(Ljava/lang/Object;)V

    move-object/from16 v7, v21

    invoke-direct {v4, v6, v7, v5, v2}, Lcom/android/tools/r8/internal/Db;-><init>(Lcom/android/tools/r8/internal/ka;Lcom/android/tools/r8/internal/ka;Ljava/util/List;Ljava/util/List;)V

    invoke-static {v1, v3, v0, v4}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v23

    sget-object v24, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    const/16 v20, 0x4

    const/16 v21, 0x8

    move-object/from16 v18, v25

    invoke-direct/range {v18 .. v24}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v25
.end method
