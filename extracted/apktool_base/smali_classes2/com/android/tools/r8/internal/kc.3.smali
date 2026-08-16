.class public final Lcom/android/tools/r8/internal/kc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lcom/android/tools/r8/internal/o40;

.field public static final synthetic e:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Lcom/android/tools/r8/internal/kB;

.field public final c:Lcom/android/tools/r8/internal/ln0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/tools/r8/internal/o40;->b:Lcom/android/tools/r8/internal/o40;

    sput-object v0, Lcom/android/tools/r8/internal/kc;->d:Lcom/android/tools/r8/internal/o40;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/kB;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/android/tools/r8/internal/mn0;->f:I

    new-instance v0, Lcom/android/tools/r8/internal/ln0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ln0;-><init>()V

    iput-object v0, p0, Lcom/android/tools/r8/internal/kc;->c:Lcom/android/tools/r8/internal/ln0;

    sget-boolean v0, Lcom/android/tools/r8/internal/kc;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/kc;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/kc;->b:Lcom/android/tools/r8/internal/kB;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/l3;)V
    .locals 3

    .line 106
    sget-boolean v0, Lcom/android/tools/r8/internal/l3;->f:Z

    if-nez v0, :cond_1

    .line 107
    iget-object v0, p2, Lcom/android/tools/r8/internal/l3;->c:Lcom/android/tools/r8/internal/p3;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 109
    :cond_1
    :goto_0
    iget-object v0, p2, Lcom/android/tools/r8/internal/l3;->c:Lcom/android/tools/r8/internal/p3;

    .line 110
    iget-object v0, v0, Lcom/android/tools/r8/internal/p3;->j:Lcom/android/tools/r8/internal/zX;

    .line 111
    sget-object v1, Lcom/android/tools/r8/internal/s7;->a:Lcom/android/tools/r8/internal/s7;

    .line 112
    iget-object v2, v0, Lcom/android/tools/r8/internal/yX;->a:Ljava/util/AbstractMap;

    .line 113
    invoke-virtual {v0, p0}, Lcom/android/tools/r8/internal/zX;->a(Lcom/android/tools/r8/graph/H5;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/internal/wX;

    if-eqz p0, :cond_2

    move-object v1, p0

    .line 114
    :cond_2
    invoke-interface {v1}, Lcom/android/tools/r8/internal/wX;->g()Z

    move-result p0

    if-nez p0, :cond_3

    .line 115
    iget-object p0, p2, Lcom/android/tools/r8/internal/l3;->a:Lcom/android/tools/r8/graph/y;

    .line 116
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/graph/A2;

    .line 117
    invoke-virtual {v0, p0, p1, v1}, Lcom/android/tools/r8/internal/yX;->a(Lcom/android/tools/r8/graph/y;Ljava/lang/Object;Lcom/android/tools/r8/internal/wX;)V

    :cond_3
    return-void
.end method

.method public static synthetic a(Ljava/util/BitSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0, v0}, Ljava/util/BitSet;->clear(I)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/F1;Lcom/android/tools/r8/internal/dX;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/kc;->b:Lcom/android/tools/r8/internal/kB;

    .line 2
    iget-object v0, v0, Lcom/android/tools/r8/internal/kB;->B:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 3
    sget-boolean v0, Lcom/android/tools/r8/internal/kc;->e:Z

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/dX;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    instance-of v0, p3, Lcom/android/tools/r8/internal/P60;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 6
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->z0()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->F0()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/F1;->c0()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 8
    monitor-enter p0

    .line 9
    :try_start_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/kc;->c:Lcom/android/tools/r8/internal/ln0;

    .line 10
    iget-object p2, p2, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 11
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 12
    iget-object p2, p0, Lcom/android/tools/r8/internal/kc;->b:Lcom/android/tools/r8/internal/kB;

    new-instance v0, Lcom/android/tools/r8/internal/ih1;

    invoke-direct {v0, p0, p3}, Lcom/android/tools/r8/internal/ih1;-><init>(Lcom/android/tools/r8/internal/kc;Lcom/android/tools/r8/internal/dX;)V

    .line 13
    iget-object p3, p2, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    .line 14
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/y;->m()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 15
    iget-object p2, p2, Lcom/android/tools/r8/internal/kB;->B:Ljava/util/List;

    if-eqz p2, :cond_2

    .line 16
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 17
    :cond_2
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "Attempt to call addWaveDoneAction() outside of wave."

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_3
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string p2, "addWaveDoneAction() should never be used in D8."

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/android/tools/r8/internal/kc;->c:Lcom/android/tools/r8/internal/ln0;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    .line 20
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_5
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/x70;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 34
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    .line 35
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->n1()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_6

    .line 36
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    .line 37
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 38
    iget-object v3, v3, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    .line 39
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/TW;->C()Z

    move-result v4

    if-eqz v4, :cond_1

    goto/16 :goto_6

    .line 40
    :cond_1
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/TW;->i()Lcom/android/tools/r8/internal/F1;

    move-result-object v3

    .line 41
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/F1;->c0()Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_6

    .line 42
    :cond_2
    iget-object v4, v0, Lcom/android/tools/r8/internal/kc;->a:Lcom/android/tools/r8/graph/y;

    .line 43
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v5

    iget-object v5, v5, Lcom/android/tools/r8/graph/E0;->g:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v4

    invoke-static {v4}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_0

    .line 44
    :cond_3
    iget-object v5, v0, Lcom/android/tools/r8/internal/kc;->a:Lcom/android/tools/r8/graph/y;

    .line 45
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/shaking/i;

    .line 46
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v5, v4, v6}, Lcom/android/tools/r8/graph/j;->h(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/Z4;

    move-result-object v4

    .line 47
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/Z4;->o()Lcom/android/tools/r8/graph/Z4$c;

    move-result-object v4

    if-nez v4, :cond_4

    :goto_0
    const/4 v4, 0x0

    goto :goto_1

    .line 48
    :cond_4
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/Z4$c;->r()Lcom/android/tools/r8/graph/H5;

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_11

    .line 49
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/j1;->n1()Z

    move-result v5

    if-nez v5, :cond_5

    goto/16 :goto_6

    .line 50
    :cond_5
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/j1;

    .line 51
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 52
    iget-object v5, v5, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    .line 53
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/TW;->C()Z

    move-result v6

    if-eqz v6, :cond_6

    goto/16 :goto_6

    .line 54
    :cond_6
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/TW;->i()Lcom/android/tools/r8/internal/F1;

    move-result-object v5

    .line 55
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/F1;->c0()Z

    move-result v6

    if-nez v6, :cond_7

    goto/16 :goto_6

    .line 56
    :cond_7
    sget-boolean v6, Lcom/android/tools/r8/internal/kc;->e:Z

    if-nez v6, :cond_9

    iget-object v7, v0, Lcom/android/tools/r8/internal/kc;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v7, v1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object v7

    iget-object v8, v0, Lcom/android/tools/r8/internal/kc;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/tools/r8/shaking/I1;->h(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v7

    if-nez v7, :cond_8

    goto :goto_2

    :cond_8
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_9
    :goto_2
    if-nez v6, :cond_b

    .line 57
    iget-object v6, v0, Lcom/android/tools/r8/internal/kc;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v6, v4}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/shaking/I1;

    move-result-object v6

    iget-object v7, v0, Lcom/android/tools/r8/internal/kc;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/tools/r8/shaking/I1;->h(Lcom/android/tools/r8/shaking/Q0;)Z

    move-result v6

    if-nez v6, :cond_a

    goto :goto_3

    :cond_a
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 58
    :cond_b
    :goto_3
    iget-object v6, v0, Lcom/android/tools/r8/internal/kc;->a:Lcom/android/tools/r8/graph/y;

    .line 59
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/shaking/i;

    .line 60
    iget-object v6, v6, Lcom/android/tools/r8/shaking/i;->t:Lcom/android/tools/r8/graph/t5;

    .line 61
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/tools/r8/graph/t5;->a(Lcom/android/tools/r8/graph/H2;)Z

    move-result v6

    if-eqz v6, :cond_c

    goto/16 :goto_6

    .line 62
    :cond_c
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/graph/j1;

    if-ne v5, v3, :cond_d

    goto/16 :goto_5

    .line 63
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v3

    iget-object v7, v0, Lcom/android/tools/r8/internal/kc;->a:Lcom/android/tools/r8/graph/y;

    .line 64
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/graph/j;

    invoke-static {v3, v4, v7, v8}, Lcom/android/tools/r8/graph/e;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/internal/t40;

    move-result-object v3

    .line 65
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/f7;->d()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 66
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/F1;->h0()Z

    move-result v5

    .line 67
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    invoke-static {v5}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v7

    const/4 v8, 0x2

    mul-int/2addr v7, v8

    const/4 v9, 0x3

    add-int/2addr v7, v9

    new-array v7, v7, [Lcom/android/tools/r8/internal/W9;

    .line 69
    new-instance v10, Lcom/android/tools/r8/internal/pa;

    sget-object v11, Lcom/android/tools/r8/internal/Kw0;->b:Lcom/android/tools/r8/internal/Kw0;

    const/4 v12, 0x0

    invoke-direct {v10, v11, v12}, Lcom/android/tools/r8/internal/pa;-><init>(Lcom/android/tools/r8/internal/Kw0;I)V

    aput-object v10, v7, v12

    .line 70
    new-instance v10, Lcom/android/tools/r8/internal/V9;

    invoke-direct {v10, v3}, Lcom/android/tools/r8/internal/V9;-><init>(Lcom/android/tools/r8/graph/M2;)V

    const/4 v3, 0x1

    aput-object v10, v7, v3

    if-eqz v5, :cond_e

    .line 71
    new-instance v10, Lcom/android/tools/r8/internal/z9;

    sget-object v11, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    const-wide/16 v12, 0x1

    invoke-direct {v10, v12, v13, v11}, Lcom/android/tools/r8/internal/z9;-><init>(JLcom/android/tools/r8/internal/Kw0;)V

    aput-object v10, v7, v8

    .line 72
    new-instance v8, Lcom/android/tools/r8/internal/ra;

    sget-object v10, Lcom/android/tools/r8/internal/qa;->g:Lcom/android/tools/r8/internal/qa;

    sget-object v11, Lcom/android/tools/r8/internal/T10;->e:Lcom/android/tools/r8/internal/T10;

    invoke-direct {v8, v10, v11}, Lcom/android/tools/r8/internal/ra;-><init>(Lcom/android/tools/r8/internal/qa;Lcom/android/tools/r8/internal/T10;)V

    aput-object v8, v7, v9

    const/4 v8, 0x4

    .line 73
    :cond_e
    new-instance v9, Lcom/android/tools/r8/internal/ab;

    sget-object v10, Lcom/android/tools/r8/internal/Kw0;->c:Lcom/android/tools/r8/internal/Kw0;

    invoke-direct {v9, v10}, Lcom/android/tools/r8/internal/ab;-><init>(Lcom/android/tools/r8/internal/Kw0;)V

    aput-object v9, v7, v8

    .line 74
    new-instance v8, Lcom/android/tools/r8/graph/G;

    .line 75
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/graph/A2;

    iget-object v12, v9, Lcom/android/tools/r8/graph/v2;->f:Lcom/android/tools/r8/graph/M2;

    .line 76
    invoke-static {v5}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v5

    add-int/lit8 v13, v5, 0x1

    .line 77
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/h1;->E0()Lcom/android/tools/r8/graph/v2;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/A2;->w0()I

    move-result v5

    add-int/lit8 v14, v5, 0x1

    .line 78
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    .line 79
    sget-object v17, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object v11, v8

    move-object/from16 v16, v17

    .line 80
    invoke-direct/range {v11 .. v17}, Lcom/android/tools/r8/graph/G;-><init>(Lcom/android/tools/r8/graph/M2;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 81
    iget-object v3, v0, Lcom/android/tools/r8/internal/kc;->a:Lcom/android/tools/r8/graph/y;

    .line 82
    invoke-virtual {v4, v8, v3}, Lcom/android/tools/r8/graph/H5;->a(Lcom/android/tools/r8/graph/i0;Lcom/android/tools/r8/graph/y;)V

    .line 83
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v3

    iget-object v5, v0, Lcom/android/tools/r8/internal/kc;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    invoke-static {v5}, Lcom/android/tools/r8/internal/EW;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/EW$a;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/tools/r8/graph/i0;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/EW$a;)Lcom/android/tools/r8/internal/fB;

    move-result-object v3

    .line 85
    iget-object v5, v0, Lcom/android/tools/r8/internal/kc;->b:Lcom/android/tools/r8/internal/kB;

    sget-object v6, Lcom/android/tools/r8/internal/kc;->d:Lcom/android/tools/r8/internal/o40;

    .line 86
    iget-object v5, v5, Lcom/android/tools/r8/internal/kB;->n:Lcom/android/tools/r8/ir/optimize/W;

    if-eqz v5, :cond_f

    .line 87
    invoke-virtual {v5, v3}, Lcom/android/tools/r8/ir/optimize/W;->a(Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/ir/optimize/O;

    move-result-object v5

    goto :goto_4

    :cond_f
    sget-object v5, Lcom/android/tools/r8/ir/optimize/O;->c:Lcom/android/tools/r8/ir/optimize/O;

    .line 88
    :goto_4
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v6, v3, v5}, Lcom/android/tools/r8/internal/o40;->a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/ir/optimize/O;)V

    .line 89
    new-instance v3, Lcom/android/tools/r8/internal/jh1;

    invoke-direct {v3}, Lcom/android/tools/r8/internal/jh1;-><init>()V

    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/o40;->a(Ljava/util/function/Consumer;Lcom/android/tools/r8/graph/H5;)V

    .line 90
    invoke-virtual {v6, v4}, Lcom/android/tools/r8/internal/o40;->d(Lcom/android/tools/r8/graph/H5;)V

    .line 91
    invoke-virtual {v6, v4}, Lcom/android/tools/r8/internal/o40;->f(Lcom/android/tools/r8/graph/H5;)V

    .line 92
    invoke-virtual {v2, v4}, Lcom/android/tools/r8/internal/gX;->b(Lcom/android/tools/r8/graph/H5;)V

    .line 93
    :goto_5
    iget-object v3, v0, Lcom/android/tools/r8/internal/kc;->a:Lcom/android/tools/r8/graph/y;

    new-instance v5, Lcom/android/tools/r8/internal/kh1;

    invoke-direct {v5, v1, v4}, Lcom/android/tools/r8/internal/kh1;-><init>(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/H5;)V

    .line 94
    iget-object v3, v3, Lcom/android/tools/r8/graph/y;->A:Lcom/android/tools/r8/internal/l3;

    if-eqz v3, :cond_10

    .line 95
    invoke-interface {v5, v3}, Lcom/android/tools/r8/internal/Wr0;->accept(Ljava/lang/Object;)V

    .line 96
    :cond_10
    sget-object v3, Lcom/android/tools/r8/internal/kc;->d:Lcom/android/tools/r8/internal/o40;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/android/tools/r8/internal/o40;->j(Lcom/android/tools/r8/graph/H5;)V

    .line 97
    iget-object v2, v2, Lcom/android/tools/r8/internal/x70;->d:Lcom/android/tools/r8/internal/E8;

    .line 98
    invoke-virtual {v2, v4}, Lcom/android/tools/r8/internal/E8;->d(Lcom/android/tools/r8/graph/H5;)V

    .line 99
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/H5;->getHolder()Lcom/android/tools/r8/graph/H2;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/E0;->d(Lcom/android/tools/r8/graph/A2;)Lcom/android/tools/r8/graph/j1;

    .line 100
    iget-object v2, v0, Lcom/android/tools/r8/internal/kc;->b:Lcom/android/tools/r8/internal/kB;

    .line 101
    invoke-virtual {v2, v1}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/graph/H5;)V

    .line 102
    iget-object v2, v2, Lcom/android/tools/r8/internal/kB;->C:Lcom/android/tools/r8/graph/N5;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/A2;

    .line 103
    iget-object v2, v2, Lcom/android/tools/r8/graph/M5;->g:Ljava/util/Set;

    .line 104
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_11
    :goto_6
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/dX;)V
    .locals 5

    .line 21
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/dX;->b()Lcom/android/tools/r8/internal/x70;

    move-result-object p1

    .line 22
    sget-boolean v0, Lcom/android/tools/r8/internal/kc;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/kc;->c:Lcom/android/tools/r8/internal/ln0;

    .line 23
    iget-object v0, v0, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 24
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 26
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/tools/r8/internal/m80;->c()Lcom/android/tools/r8/internal/m80;

    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/android/tools/r8/internal/kc;->c:Lcom/android/tools/r8/internal/ln0;

    .line 28
    iget-object v1, v1, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 29
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 30
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/graph/H5;

    .line 31
    iget-object v3, v0, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 32
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 33
    invoke-virtual {p0, v2, p1}, Lcom/android/tools/r8/internal/kc;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/x70;)V

    goto :goto_1

    :cond_3
    return-void
.end method
