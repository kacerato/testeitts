.class public final Lcom/android/tools/r8/internal/G60;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/L60;


# instance fields
.field public final a:Lcom/android/tools/r8/internal/xr;

.field public final b:Lcom/android/tools/r8/internal/zr;

.field public final c:Lcom/android/tools/r8/internal/K60;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/H60;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/H60;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/J60;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/J60;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/android/tools/r8/internal/G60;->c:Lcom/android/tools/r8/internal/K60;

    new-instance v1, Lcom/android/tools/r8/internal/xr;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/xr;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object v1, p0, Lcom/android/tools/r8/internal/G60;->a:Lcom/android/tools/r8/internal/xr;

    new-instance v1, Lcom/android/tools/r8/internal/zr;

    invoke-direct {v1, p1, v0}, Lcom/android/tools/r8/internal/zr;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/K60;)V

    iput-object v1, p0, Lcom/android/tools/r8/internal/G60;->b:Lcom/android/tools/r8/internal/zr;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/D60;ZZI)Ljava/util/ArrayList;
    .locals 19

    move-object/from16 v0, p0

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eqz p4, :cond_a

    .line 1
    iget-object v13, v0, Lcom/android/tools/r8/internal/G60;->b:Lcom/android/tools/r8/internal/zr;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/i0;->C()Lcom/android/tools/r8/graph/J0;

    move-result-object v15

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j1;

    iget-object v5, v13, Lcom/android/tools/r8/internal/zr;->a:Lcom/android/tools/r8/graph/y;

    .line 5
    invoke-virtual {v15}, Lcom/android/tools/r8/graph/J0;->E0()Lcom/android/tools/r8/graph/W0;

    move-result-object v6

    if-nez v6, :cond_0

    .line 6
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v5

    .line 7
    sget-boolean v6, Lcom/android/tools/r8/graph/W0;->d:Z

    .line 8
    new-instance v6, Lcom/android/tools/r8/graph/W0$a;

    .line 9
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/j1;->V0()Lcom/android/tools/r8/graph/O2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v4

    new-array v4, v4, [Lcom/android/tools/r8/graph/L2;

    iget-object v5, v5, Lcom/android/tools/r8/graph/u1;->r:Lcom/android/tools/r8/graph/O0$b;

    new-array v7, v1, [Lcom/android/tools/r8/graph/O0;

    aput-object v5, v7, v3

    invoke-direct {v6, v3, v4, v7}, Lcom/android/tools/r8/graph/W0$a;-><init>(I[Lcom/android/tools/r8/graph/L2;[Lcom/android/tools/r8/graph/O0;)V

    move-object v12, v6

    goto :goto_2

    .line 10
    :cond_0
    sget-boolean v6, Lcom/android/tools/r8/internal/zr;->c:Z

    if-nez v6, :cond_2

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/j1;->V0()Lcom/android/tools/r8/graph/O2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v4

    invoke-virtual {v15}, Lcom/android/tools/r8/graph/J0;->E0()Lcom/android/tools/r8/graph/W0;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/W0;->o0()I

    move-result v7

    if-ne v4, v7, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 11
    :cond_2
    :goto_0
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v4

    invoke-static {v15, v4}, Lcom/android/tools/r8/graph/W0;->a(Lcom/android/tools/r8/graph/J0;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/W0$a;

    move-result-object v4

    if-nez v6, :cond_4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_4
    :goto_1
    move-object v12, v4

    .line 13
    :goto_2
    new-instance v9, Lcom/android/tools/r8/internal/IH;

    invoke-direct {v9, v2}, Lcom/android/tools/r8/internal/IH;-><init>(I)V

    .line 14
    new-instance v2, Lcom/android/tools/r8/internal/o50;

    const/4 v4, 0x0

    .line 15
    invoke-direct {v2, v4, v4}, Lcom/android/tools/r8/internal/o50;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16
    new-instance v11, Lcom/android/tools/r8/internal/yr;

    iget v6, v12, Lcom/android/tools/r8/graph/W0$a;->e:I

    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    move-object v7, v4

    check-cast v7, Lcom/android/tools/r8/graph/A2;

    .line 18
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/h1;->F0()Z

    move-result v8

    move-object v4, v11

    move-object v5, v13

    move-object v10, v2

    move-object v3, v11

    move-object/from16 v11, p2

    move-object v1, v12

    move-object v12, v14

    invoke-direct/range {v4 .. v12}, Lcom/android/tools/r8/internal/yr;-><init>(Lcom/android/tools/r8/internal/zr;ILcom/android/tools/r8/graph/A2;ZLcom/android/tools/r8/internal/IH;Lcom/android/tools/r8/internal/o50;Lcom/android/tools/r8/internal/D60;Ljava/util/ArrayList;)V

    .line 19
    iget-object v1, v1, Lcom/android/tools/r8/graph/W0$a;->g:[Lcom/android/tools/r8/graph/O0;

    array-length v4, v1

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_5

    aget-object v6, v1, v5

    .line 20
    invoke-virtual {v6, v3}, Lcom/android/tools/r8/graph/O0;->a(Lcom/android/tools/r8/graph/V0;)V

    const/4 v6, 0x1

    add-int/2addr v5, v6

    goto :goto_3

    :cond_5
    const/4 v6, 0x1

    .line 21
    iget-object v1, v15, Lcom/android/tools/r8/graph/J0;->j:[Lcom/android/tools/r8/internal/Np;

    invoke-static {v1}, Lcom/android/tools/r8/internal/oj;->a([Lcom/android/tools/r8/internal/Np;)Lcom/android/tools/r8/internal/Np;

    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/Np;->u()I

    move-result v1

    .line 23
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/o50;->b()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 24
    iget-object v3, v13, Lcom/android/tools/r8/internal/zr;->b:Lcom/android/tools/r8/internal/K60;

    .line 25
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v1, v6

    .line 26
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/o50;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/B60;

    move-object/from16 v8, p2

    .line 27
    invoke-virtual {v8, v2}, Lcom/android/tools/r8/internal/D60;->a(Lcom/android/tools/r8/internal/B60;)Lcom/android/tools/r8/internal/o50;

    move-result-object v2

    .line 28
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/o50;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/internal/B60;

    :goto_4
    if-ge v4, v1, :cond_6

    .line 29
    new-instance v5, Lcom/android/tools/r8/internal/UU;

    .line 30
    invoke-interface {v3, v4}, Lcom/android/tools/r8/internal/K60;->a(I)I

    move-result v6

    invoke-direct {v5, v6, v2}, Lcom/android/tools/r8/internal/UU;-><init>(ILcom/android/tools/r8/internal/B60;)V

    .line 31
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    add-int/2addr v4, v5

    goto :goto_4

    :cond_6
    const/4 v5, 0x1

    goto :goto_5

    :cond_7
    move v5, v6

    .line 32
    :goto_5
    sget-boolean v1, Lcom/android/tools/r8/internal/zr;->c:Z

    if-nez v1, :cond_9

    invoke-virtual {v14}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v15, Lcom/android/tools/r8/graph/J0;->j:[Lcom/android/tools/r8/internal/Np;

    array-length v2, v1

    if-eq v2, v5, :cond_9

    .line 33
    array-length v2, v1

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v2, :cond_9

    aget-object v4, v1, v3

    .line 34
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Np;->l()Z

    move-result v4

    if-nez v4, :cond_8

    add-int/2addr v3, v5

    goto :goto_6

    .line 35
    :cond_8
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 36
    :cond_9
    iget-object v1, v13, Lcom/android/tools/r8/internal/zr;->b:Lcom/android/tools/r8/internal/K60;

    move-object/from16 v3, p1

    move/from16 v2, p5

    invoke-interface {v1, v3, v2}, Lcom/android/tools/r8/internal/K60;->a(Lcom/android/tools/r8/graph/H5;I)V

    return-object v14

    :cond_a
    move-object/from16 v3, p1

    move-object/from16 v8, p2

    .line 37
    iget-object v1, v0, Lcom/android/tools/r8/internal/G60;->a:Lcom/android/tools/r8/internal/xr;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 39
    iget-object v5, v1, Lcom/android/tools/r8/internal/xr;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/h;->a()Lcom/android/tools/r8/graph/x0;

    move-result-object v5

    .line 40
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/i0;->C()Lcom/android/tools/r8/graph/J0;

    move-result-object v13

    .line 41
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/j1;

    iget-object v7, v1, Lcom/android/tools/r8/internal/xr;->a:Lcom/android/tools/r8/graph/y;

    .line 42
    invoke-virtual {v13}, Lcom/android/tools/r8/graph/J0;->E0()Lcom/android/tools/r8/graph/W0;

    move-result-object v9

    if-nez v9, :cond_b

    .line 43
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v7

    .line 44
    sget-boolean v9, Lcom/android/tools/r8/graph/W0;->d:Z

    .line 45
    new-instance v9, Lcom/android/tools/r8/graph/W0$a;

    .line 46
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/j1;->V0()Lcom/android/tools/r8/graph/O2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v6

    new-array v6, v6, [Lcom/android/tools/r8/graph/L2;

    iget-object v7, v7, Lcom/android/tools/r8/graph/u1;->r:Lcom/android/tools/r8/graph/O0$b;

    const/4 v10, 0x1

    new-array v11, v10, [Lcom/android/tools/r8/graph/O0;

    const/4 v14, 0x0

    aput-object v7, v11, v14

    invoke-direct {v9, v14, v6, v11}, Lcom/android/tools/r8/graph/W0$a;-><init>(I[Lcom/android/tools/r8/graph/L2;[Lcom/android/tools/r8/graph/O0;)V

    move-object v15, v9

    goto :goto_9

    :cond_b
    const/4 v14, 0x0

    .line 47
    sget-boolean v9, Lcom/android/tools/r8/internal/xr;->c:Z

    if-nez v9, :cond_d

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/j1;->V0()Lcom/android/tools/r8/graph/O2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v6

    invoke-virtual {v13}, Lcom/android/tools/r8/graph/J0;->E0()Lcom/android/tools/r8/graph/W0;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/tools/r8/graph/W0;->o0()I

    move-result v10

    if-ne v6, v10, :cond_c

    goto :goto_7

    :cond_c
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 48
    :cond_d
    :goto_7
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v6

    invoke-static {v13, v6}, Lcom/android/tools/r8/graph/W0;->a(Lcom/android/tools/r8/graph/J0;Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/W0$a;

    move-result-object v6

    if-nez v9, :cond_f

    if-eqz v6, :cond_e

    goto :goto_8

    .line 49
    :cond_e
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_f
    :goto_8
    move-object v15, v6

    .line 50
    :goto_9
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 51
    new-instance v11, Lcom/android/tools/r8/internal/wr;

    iget-object v5, v5, Lcom/android/tools/r8/graph/x0;->e:Lcom/android/tools/r8/graph/u1;

    .line 52
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/A2;

    invoke-direct {v11, v5, v6, v12}, Lcom/android/tools/r8/internal/wr;-><init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/graph/A2;Ljava/util/ArrayList;)V

    .line 53
    new-instance v10, Lcom/android/tools/r8/internal/vr;

    iget-object v5, v1, Lcom/android/tools/r8/internal/xr;->a:Lcom/android/tools/r8/graph/y;

    .line 54
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    iget v9, v15, Lcom/android/tools/r8/graph/W0$a;->e:I

    .line 55
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    move-object/from16 v16, v5

    check-cast v16, Lcom/android/tools/r8/graph/A2;

    .line 56
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/h1;->F0()Z

    move-result v17

    move-object v5, v10

    move-object v6, v11

    move-object v7, v4

    move-object/from16 v8, p2

    move/from16 v18, v9

    move-object v9, v12

    move-object v14, v10

    move/from16 v10, v18

    move-object v2, v11

    move-object/from16 v11, v16

    move-object v0, v12

    move/from16 v12, v17

    invoke-direct/range {v5 .. v12}, Lcom/android/tools/r8/internal/vr;-><init>(Lcom/android/tools/r8/internal/wr;Ljava/util/ArrayList;Lcom/android/tools/r8/internal/D60;Ljava/util/ArrayList;ILcom/android/tools/r8/graph/A2;Z)V

    .line 57
    iget-object v5, v15, Lcom/android/tools/r8/graph/W0$a;->g:[Lcom/android/tools/r8/graph/O0;

    .line 58
    array-length v6, v5

    const/4 v7, 0x0

    :goto_a
    if-ge v7, v6, :cond_10

    aget-object v8, v5, v7

    .line 59
    invoke-virtual {v8, v14}, Lcom/android/tools/r8/graph/O0;->a(Lcom/android/tools/r8/graph/V0;)V

    const/4 v8, 0x1

    add-int/2addr v7, v8

    goto :goto_a

    .line 60
    :cond_10
    new-instance v5, Lcom/android/tools/r8/graph/W0$a;

    .line 61
    iget v2, v2, Lcom/android/tools/r8/internal/wr;->b:I

    const/4 v6, -0x1

    if-eq v2, v6, :cond_12

    .line 62
    sget-boolean v6, Lcom/android/tools/r8/internal/wr;->g:Z

    if-nez v6, :cond_13

    if-ltz v2, :cond_11

    goto :goto_b

    :cond_11
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_12
    const/4 v2, 0x0

    .line 63
    :cond_13
    :goto_b
    iget-object v6, v15, Lcom/android/tools/r8/graph/W0$a;->f:[Lcom/android/tools/r8/graph/L2;

    sget-object v7, Lcom/android/tools/r8/graph/O0;->b:[Lcom/android/tools/r8/graph/O0;

    .line 64
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/tools/r8/graph/O0;

    invoke-direct {v5, v2, v6, v0}, Lcom/android/tools/r8/graph/W0$a;-><init>(I[Lcom/android/tools/r8/graph/L2;[Lcom/android/tools/r8/graph/O0;)V

    .line 65
    sget-boolean v0, Lcom/android/tools/r8/internal/xr;->c:Z

    if-nez v0, :cond_1d

    iget-boolean v0, v1, Lcom/android/tools/r8/internal/xr;->b:Z

    if-eqz v0, :cond_1d

    iget-boolean v0, v14, Lcom/android/tools/r8/internal/vr;->l:Z

    if-nez v0, :cond_1d

    .line 66
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h1;->F0()Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_d

    .line 67
    :cond_14
    iget-object v0, v15, Lcom/android/tools/r8/graph/W0$a;->g:[Lcom/android/tools/r8/graph/O0;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_1d

    aget-object v6, v0, v2

    .line 68
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    instance-of v7, v6, Lcom/android/tools/r8/graph/S0;

    if-eqz v7, :cond_15

    .line 70
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/O0;->m0()Lcom/android/tools/r8/graph/S0;

    move-result-object v6

    .line 71
    iget-object v6, v6, Lcom/android/tools/r8/graph/S0;->d:Lcom/android/tools/r8/internal/B60;

    .line 72
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/A2;

    .line 73
    iget-object v8, v6, Lcom/android/tools/r8/internal/B60;->c:Lcom/android/tools/r8/graph/A2;

    .line 74
    invoke-virtual {v7, v8}, Lcom/android/tools/r8/graph/A2;->a(Lcom/android/tools/r8/graph/A2;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 75
    iget-boolean v7, v6, Lcom/android/tools/r8/internal/B60;->f:Z

    if-eqz v7, :cond_16

    .line 76
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/B60;->k()Z

    move-result v7

    if-nez v7, :cond_16

    .line 77
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/B60;->p()Z

    move-result v7

    if-nez v7, :cond_16

    .line 78
    iget-boolean v6, v6, Lcom/android/tools/r8/internal/B60;->e:Z

    if-eqz v6, :cond_15

    goto :goto_d

    :cond_15
    const/4 v6, 0x1

    goto :goto_12

    .line 79
    :cond_16
    :goto_d
    sget-boolean v0, Lcom/android/tools/r8/internal/xr;->c:Z

    if-nez v0, :cond_18

    iget v1, v5, Lcom/android/tools/r8/graph/W0$a;->e:I

    iget v2, v15, Lcom/android/tools/r8/graph/W0$a;->e:I

    if-ne v1, v2, :cond_17

    goto :goto_e

    :cond_17
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_18
    :goto_e
    if-nez v0, :cond_1a

    .line 80
    iget-object v0, v5, Lcom/android/tools/r8/graph/W0$a;->g:[Lcom/android/tools/r8/graph/O0;

    array-length v0, v0

    iget-object v1, v15, Lcom/android/tools/r8/graph/W0$a;->g:[Lcom/android/tools/r8/graph/O0;

    array-length v1, v1

    if-ne v0, v1, :cond_19

    goto :goto_f

    :cond_19
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1a
    :goto_f
    const/4 v3, 0x0

    .line 81
    :goto_10
    iget-object v0, v15, Lcom/android/tools/r8/graph/W0$a;->g:[Lcom/android/tools/r8/graph/O0;

    array-length v1, v0

    if-ge v3, v1, :cond_1d

    .line 82
    sget-boolean v1, Lcom/android/tools/r8/internal/xr;->c:Z

    if-nez v1, :cond_1b

    iget-object v1, v5, Lcom/android/tools/r8/graph/W0$a;->g:[Lcom/android/tools/r8/graph/O0;

    aget-object v1, v1, v3

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/graph/O0;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_1b
    const/4 v6, 0x1

    goto :goto_11

    :cond_1c
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :goto_11
    add-int/2addr v3, v6

    goto :goto_10

    :goto_12
    add-int/2addr v2, v6

    goto :goto_c

    .line 83
    :cond_1d
    invoke-virtual {v13, v5}, Lcom/android/tools/r8/graph/J0;->a(Lcom/android/tools/r8/graph/W0;)V

    return-object v4
.end method

.method public final a()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/tools/r8/internal/G60;->c:Lcom/android/tools/r8/internal/K60;

    invoke-interface {v0}, Lcom/android/tools/r8/internal/K60;->a()V

    return-void
.end method
