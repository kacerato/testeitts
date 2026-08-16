.class public abstract Lcom/android/tools/r8/internal/IE;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/H2;
    .locals 26

    move-object/from16 v0, p0

    .line 1
    new-instance v22, Lcom/android/tools/r8/graph/H2;

    move-object/from16 v1, v22

    .line 2
    const-string v9, "Lcom/android/tools/r8/startup/InstrumentationServer;"

    invoke-virtual {v0, v9}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    sget-object v3, Lcom/android/tools/r8/ProgramResource$Kind;->CF:Lcom/android/tools/r8/ProgramResource$Kind;

    .line 3
    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v4

    const/16 v5, 0x421

    .line 4
    invoke-static {v5}, Lcom/android/tools/r8/graph/Q;->e(I)Lcom/android/tools/r8/graph/Q;

    move-result-object v5

    .line 5
    const-string v6, "Ljava/lang/Object;"

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    .line 6
    invoke-static {}, Lcom/android/tools/r8/graph/O2;->k0()Lcom/android/tools/r8/graph/O2;

    move-result-object v7

    .line 7
    const-string v8, "InstrumentationServer.java"

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

    const/4 v13, 0x0

    move-object/from16 v23, v1

    .line 13
    new-array v1, v13, [Lcom/android/tools/r8/graph/g1;

    move-object/from16 v24, v2

    .line 14
    new-array v2, v13, [Lcom/android/tools/r8/graph/g1;

    .line 15
    invoke-static {v1, v2}, Lcom/android/tools/r8/graph/q3;->a([Lcom/android/tools/r8/graph/g1;[Lcom/android/tools/r8/graph/g1;)Lcom/android/tools/r8/graph/q3;

    move-result-object v17

    .line 16
    invoke-static/range {p0 .. p0}, Lcom/android/tools/r8/internal/IE;->b(Lcom/android/tools/r8/graph/u1;)[Lcom/android/tools/r8/graph/j1;

    move-result-object v1

    .line 17
    sget-object v2, Lcom/android/tools/r8/graph/j1;->u:[Lcom/android/tools/r8/graph/j1;

    .line 18
    new-instance v2, Lcom/android/tools/r8/graph/j1$a;

    const/4 v13, 0x1

    invoke-direct {v2, v13}, Lcom/android/tools/r8/graph/j1$a;-><init>(Z)V

    const/16 v13, 0x401

    move-object/from16 v25, v3

    const/4 v3, 0x0

    .line 19
    invoke-static {v13, v3}, Lcom/android/tools/r8/graph/L4;->a(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v2

    .line 20
    sget v3, Lcom/android/tools/r8/androidapi/f;->a:I

    sget-object v3, Lcom/android/tools/r8/androidapi/h;->b:Lcom/android/tools/r8/androidapi/h;

    .line 21
    iput-object v3, v2, Lcom/android/tools/r8/graph/j1$a;->m:Lcom/android/tools/r8/androidapi/f;

    .line 22
    iput-object v3, v2, Lcom/android/tools/r8/graph/j1$a;->l:Lcom/android/tools/r8/androidapi/f;

    .line 23
    sget-object v3, Lcom/android/tools/r8/internal/Ib;->i:Lcom/android/tools/r8/internal/Ib;

    .line 24
    iput-object v3, v2, Lcom/android/tools/r8/graph/j1$a;->k:Lcom/android/tools/r8/internal/Ib;

    .line 25
    invoke-virtual {v0, v9}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 26
    const-string v9, "V"

    invoke-virtual {v0, v9}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    const-string v13, "Ljava/io/File;"

    invoke-virtual {v0, v13}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v13

    filled-new-array {v13}, [Lcom/android/tools/r8/graph/M2;

    move-result-object v13

    .line 27
    invoke-virtual {v0, v9, v13}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v9

    .line 28
    const-string v13, "writeToFile"

    invoke-virtual {v0, v13}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v13

    .line 29
    invoke-virtual {v0, v3, v9, v13}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v3

    .line 30
    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v2

    .line 31
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v2

    filled-new-array {v2}, [Lcom/android/tools/r8/graph/j1;

    move-result-object v2

    .line 32
    invoke-static {v1, v2}, Lcom/android/tools/r8/graph/N4$a;->a([Lcom/android/tools/r8/graph/j1;[Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/N4$a;

    move-result-object v18

    .line 33
    iget-boolean v0, v0, Lcom/android/tools/r8/graph/u1;->D6:Z

    move/from16 v19, v0

    .line 34
    new-instance v0, Lcom/android/tools/r8/l2;

    move-object/from16 v20, v0

    invoke-direct {v0}, Lcom/android/tools/r8/l2;-><init>()V

    sget-object v21, Lcom/android/tools/r8/internal/Jb0;->b:Lcom/android/tools/r8/internal/Jb0;

    const/4 v9, 0x0

    const/4 v13, 0x0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-direct/range {v1 .. v21}, Lcom/android/tools/r8/graph/H2;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/ProgramResource$Kind;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/graph/Q;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/O2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/o5;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/graph/i3;Ljava/util/List;Lcom/android/tools/r8/graph/H3$b;Lcom/android/tools/r8/graph/u0;Lcom/android/tools/r8/graph/q3;Lcom/android/tools/r8/graph/N4$a;ZLcom/android/tools/r8/graph/H2$a;Lcom/android/tools/r8/internal/Jb0;)V

    return-object v22
.end method

.method public static a(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 10

    .line 35
    new-instance v0, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 36
    new-instance v1, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 37
    new-instance v9, Lcom/android/tools/r8/graph/G;

    iget-object v3, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    new-instance p1, Lcom/android/tools/r8/internal/pa;

    sget-object v2, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    const/4 v4, 0x0

    invoke-direct {p1, v2, v4}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    new-instance v2, Lcom/android/tools/r8/internal/ga;

    iget-object v5, p0, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    iget-object v6, p0, Lcom/android/tools/r8/graph/u1;->M1:Lcom/android/tools/r8/graph/M2;

    new-array v7, v4, [Lcom/android/tools/r8/graph/M2;

    .line 38
    invoke-virtual {p0, v6, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    .line 39
    const-string v7, "<init>"

    invoke-virtual {p0, v7}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v7

    .line 40
    invoke-virtual {p0, v5, v6, v7}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p0

    const/16 v5, 0xb7

    invoke-direct {v2, v5, p0, v4}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance p0, Lcom/android/tools/r8/internal/bb;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/bb;-><init>()V

    .line 41
    invoke-static {v0, p1, v2, p0, v1}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v6

    .line 42
    sget-object v8, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v2, v9

    move-object v7, v8

    .line 43
    invoke-direct/range {v2 .. v8}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v9
.end method

.method public static b(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/i0;
    .locals 9

    .line 29
    new-instance v0, Lcom/android/tools/r8/internal/ka;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ka;-><init>()V

    .line 30
    new-instance v8, Lcom/android/tools/r8/graph/G;

    iget-object v2, p1, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    new-instance p1, Lcom/android/tools/r8/internal/ga;

    .line 31
    const-string v1, "Lcom/android/tools/r8/startup/InstrumentationServerImpl;"

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 32
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v1

    const/4 v4, 0x0

    new-array v5, v4, [Lcom/android/tools/r8/graph/M2;

    .line 33
    invoke-virtual {p0, v1, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v1

    .line 34
    const-string v5, "getInstance"

    invoke-virtual {p0, v5}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v5

    .line 35
    invoke-virtual {p0, v3, v1, v5}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object p0

    const/16 v1, 0xb8

    invoke-direct {p1, v1, p0, v4}, Lcom/android/tools/r8/internal/ga;-><init>(ILcom/android/tools/r8/graph/A2;Z)V

    new-instance p0, Lcom/android/tools/r8/internal/ab;

    sget-object v1, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {p0, v1}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    .line 36
    invoke-static {v0, p1, p0}, Lcom/android/tools/r8/internal/hC;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/hC;

    move-result-object v5

    .line 37
    sget-object v7, Lcom/android/tools/r8/internal/Xe0;->e:Lcom/android/tools/r8/internal/Xe0;

    const/4 v3, 0x1

    move-object v1, v8

    move-object v6, v7

    .line 38
    invoke-direct/range {v1 .. v7}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v8
.end method

.method public static b(Lcom/android/tools/r8/graph/u1;)[Lcom/android/tools/r8/graph/j1;
    .locals 9

    .line 1
    sget-object v0, Lcom/android/tools/r8/graph/j1;->u:[Lcom/android/tools/r8/graph/j1;

    .line 2
    new-instance v0, Lcom/android/tools/r8/graph/j1$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/tools/r8/graph/j1$a;-><init>(Z)V

    .line 3
    invoke-static {v1, v1}, Lcom/android/tools/r8/graph/L4;->a(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 4
    sget v2, Lcom/android/tools/r8/androidapi/f;->a:I

    sget-object v2, Lcom/android/tools/r8/androidapi/h;->b:Lcom/android/tools/r8/androidapi/h;

    .line 5
    iput-object v2, v0, Lcom/android/tools/r8/graph/j1$a;->m:Lcom/android/tools/r8/androidapi/f;

    .line 6
    iput-object v2, v0, Lcom/android/tools/r8/graph/j1$a;->l:Lcom/android/tools/r8/androidapi/f;

    .line 7
    sget-object v3, Lcom/android/tools/r8/internal/Ib;->i:Lcom/android/tools/r8/internal/Ib;

    .line 8
    iput-object v3, v0, Lcom/android/tools/r8/graph/j1$a;->k:Lcom/android/tools/r8/internal/Ib;

    .line 9
    const-string v4, "Lcom/android/tools/r8/startup/InstrumentationServer;"

    invoke-virtual {p0, v4}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 10
    const-string v6, "V"

    invoke-virtual {p0, v6}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    const/4 v7, 0x0

    new-array v8, v7, [Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0, v6, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v6

    .line 11
    const-string v8, "<init>"

    invoke-virtual {p0, v8}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v8

    .line 12
    invoke-virtual {p0, v5, v6, v8}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v5

    .line 13
    invoke-virtual {v0, v5}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    new-instance v5, Lcom/android/tools/r8/internal/DI0;

    invoke-direct {v5, p0}, Lcom/android/tools/r8/internal/DI0;-><init>(Lcom/android/tools/r8/graph/u1;)V

    .line 14
    invoke-virtual {v0, v5}, Lcom/android/tools/r8/graph/j1$a;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    .line 16
    new-instance v5, Lcom/android/tools/r8/graph/j1$a;

    invoke-direct {v5, v1}, Lcom/android/tools/r8/graph/j1$a;-><init>(Z)V

    const/16 v1, 0x9

    .line 17
    invoke-static {v1, v7}, Lcom/android/tools/r8/graph/L4;->a(IZ)Lcom/android/tools/r8/graph/L4;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/L4;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v1

    .line 18
    iput-object v2, v1, Lcom/android/tools/r8/graph/j1$a;->m:Lcom/android/tools/r8/androidapi/f;

    .line 19
    iput-object v2, v1, Lcom/android/tools/r8/graph/j1$a;->l:Lcom/android/tools/r8/androidapi/f;

    .line 20
    iput-object v3, v1, Lcom/android/tools/r8/graph/j1$a;->k:Lcom/android/tools/r8/internal/Ib;

    .line 21
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v2

    .line 22
    invoke-virtual {p0, v4}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    new-array v4, v7, [Lcom/android/tools/r8/graph/M2;

    .line 23
    invoke-virtual {p0, v3, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;[Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/I2;

    move-result-object v3

    .line 24
    const-string v4, "getInstance"

    invoke-virtual {p0, v4}, Lcom/android/tools/r8/graph/u1;->b(Ljava/lang/String;)Lcom/android/tools/r8/graph/L2;

    move-result-object v4

    .line 25
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/tools/r8/graph/u1;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/I2;Lcom/android/tools/r8/graph/L2;)Lcom/android/tools/r8/graph/A2;

    move-result-object v2

    .line 26
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/j1$a;->a(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/internal/EI0;

    invoke-direct {v2, p0}, Lcom/android/tools/r8/internal/EI0;-><init>(Lcom/android/tools/r8/graph/u1;)V

    .line 27
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/j1$a;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/graph/j1$a;

    move-result-object p0

    .line 28
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1$a;->a()Lcom/android/tools/r8/graph/j1;

    move-result-object p0

    filled-new-array {v0, p0}, [Lcom/android/tools/r8/graph/j1;

    move-result-object p0

    return-object p0
.end method
