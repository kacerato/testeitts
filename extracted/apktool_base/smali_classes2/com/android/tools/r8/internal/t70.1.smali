.class public final Lcom/android/tools/r8/internal/t70;
.super Lcom/android/tools/r8/internal/kB;
.source "SourceFile"


# static fields
.field public static final synthetic J:Z = true


# instance fields
.field public final I:Lcom/android/tools/r8/internal/ns0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/kB;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/t70;->I:Lcom/android/tools/r8/internal/ns0;

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Z70;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 196
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/Y9;->a(Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Z70;Lcom/android/tools/r8/graph/H5;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/j1;)Z
    .locals 1

    .line 195
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->b1()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/i0;->t0()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic d(Lcom/android/tools/r8/graph/H5;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/ns0;
    .locals 7

    .line 212
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->Q0()Lcom/android/tools/r8/graph/i0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/i0;->t0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    const-string v0, "Desugar code"

    invoke-virtual {p6, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    move-result-object v0

    .line 214
    :try_start_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/kB;->e:Lcom/android/tools/r8/internal/ba;

    .line 215
    invoke-interface {v1}, Lcom/android/tools/r8/internal/ba;->get()Lcom/android/tools/r8/internal/Y9;

    move-result-object v1

    .line 216
    invoke-virtual {v1, p1, p2}, Lcom/android/tools/r8/internal/Y9;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;)V

    .line 217
    invoke-virtual {v1, p1}, Lcom/android/tools/r8/internal/Y9;->a(Lcom/android/tools/r8/graph/H5;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 218
    invoke-virtual {v1, p1, p2, p5}, Lcom/android/tools/r8/internal/Y9;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Df;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 220
    :goto_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    .line 221
    invoke-static {p2, p1}, Lcom/android/tools/r8/internal/EW;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/EW$a;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v6, p6

    .line 222
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/kB;->c(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/EW$a;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/ns0;

    move-result-object p1

    return-object p1

    .line 223
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    .line 224
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
.end method

.method public final a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Ki;Lcom/android/tools/r8/internal/JI;Lcom/android/tools/r8/internal/ns0;)V
    .locals 5

    .line 197
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->L0()Lcom/android/tools/r8/graph/j1;

    move-result-object v0

    .line 198
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/H2;->h(Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    .line 199
    new-instance v1, Lcom/android/tools/r8/internal/Bt1;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/Bt1;-><init>(Lcom/android/tools/r8/graph/H2;)V

    invoke-static {v1}, Lcom/android/tools/r8/internal/AT;->a(Lcom/android/tools/r8/internal/Yx;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p3, v0, p2, p5}, Lcom/android/tools/r8/internal/Ki;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/ns0;)V

    .line 201
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/tools/r8/graph/H5;

    .line 202
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/G0;->d()Lcom/android/tools/r8/graph/h1;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/j1;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/j1;->f1()Z

    move-result v4

    if-nez v4, :cond_1

    .line 203
    invoke-virtual {p3, v3, p2, p5}, Lcom/android/tools/r8/internal/Ki;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/ns0;)V

    if-eqz p4, :cond_1

    .line 204
    invoke-virtual {p4, v3, p2}, Lcom/android/tools/r8/internal/JI;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;)V

    goto :goto_0

    .line 205
    :cond_2
    iget-object p2, p0, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    .line 206
    iget-object p2, p2, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    .line 207
    instance-of p2, p2, Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz p2, :cond_3

    .line 208
    iget-object p2, p1, Lcom/android/tools/r8/graph/H2;->v:Lcom/android/tools/r8/internal/Ib;

    if-eqz p2, :cond_3

    .line 209
    iget-object p2, p0, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    .line 210
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H2;->G1()Lcom/android/tools/r8/internal/Ib;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/tools/r8/internal/nJ;->a(Lcom/android/tools/r8/internal/Ib;)Lcom/android/tools/r8/internal/Ib;

    move-result-object p2

    .line 211
    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/internal/Ib;)V

    :cond_3
    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/Ki;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/ns0;)V
    .locals 11

    move-object v2, p1

    .line 153
    iget-object v0, v2, Lcom/android/tools/r8/graph/G0;->b:Lcom/android/tools/r8/graph/E0;

    .line 154
    iget-object v8, v0, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    .line 155
    new-instance v9, Lcom/android/tools/r8/position/MethodPosition;

    .line 156
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/A2;->v0()Lcom/android/tools/r8/references/MethodReference;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/android/tools/r8/position/MethodPosition;-><init>(Lcom/android/tools/r8/references/MethodReference;)V

    new-instance v10, Lcom/android/tools/r8/internal/Gt1;

    move-object v0, v10

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/tools/r8/internal/Gt1;-><init>(Lcom/android/tools/r8/internal/t70;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/dX;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/ns0;)V

    .line 157
    invoke-static {v8, v9, v10}, Lcom/android/tools/r8/internal/lv;->a(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/ns0;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)V
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    iget-object v3, v3, Lcom/android/tools/r8/internal/nJ;->L0:Lcom/android/tools/r8/internal/nJ$f;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nJ$f;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/tools/r8/internal/lR;->a(Lcom/android/tools/r8/graph/y;Ljava/util/Collection;)V

    .line 3
    :cond_0
    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/kB;->a(Ljava/util/concurrent/ExecutorService;)V

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h;->a()Lcom/android/tools/r8/graph/x0;

    move-result-object v3

    .line 5
    invoke-static/range {p1 .. p1}, Lcom/android/tools/r8/internal/M70;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/M70;

    move-result-object v4

    .line 6
    new-instance v5, Lcom/android/tools/r8/internal/Ki;

    invoke-direct {v5, v4, v0, v2}, Lcom/android/tools/r8/internal/Ki;-><init>(Lcom/android/tools/r8/internal/M70;Lcom/android/tools/r8/internal/t70;Ljava/util/concurrent/ExecutorService;)V

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v6

    invoke-static {v6}, Lcom/android/tools/r8/internal/yI;->a(Lcom/android/tools/r8/internal/nJ;)I

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-ne v6, v7, :cond_1

    move-object v7, v8

    goto :goto_0

    .line 8
    :cond_1
    new-instance v7, Lcom/android/tools/r8/internal/JI;

    invoke-direct {v7, v1, v6}, Lcom/android/tools/r8/internal/JI;-><init>(Lcom/android/tools/r8/graph/y;I)V

    .line 9
    :goto_0
    iget-object v6, v0, Lcom/android/tools/r8/internal/t70;->I:Lcom/android/tools/r8/internal/ns0;

    const-string v9, "IR conversion"

    invoke-virtual {v6, v9}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 10
    iget-object v6, v0, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    .line 11
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/nJ;->l()Lcom/android/tools/r8/internal/nJ$e;

    move-result-object v9

    iget-boolean v9, v9, Lcom/android/tools/r8/internal/nJ$e;->b:Z

    if-eqz v9, :cond_2

    .line 12
    new-instance v9, Lcom/android/tools/r8/internal/Fc;

    invoke-direct {v9, v6, v0, v5, v7}, Lcom/android/tools/r8/internal/Fc;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/t70;Lcom/android/tools/r8/internal/Ki;Lcom/android/tools/r8/internal/JI;)V

    goto :goto_1

    .line 13
    :cond_2
    new-instance v9, Lcom/android/tools/r8/internal/Ec;

    invoke-direct {v9, v6, v0, v5, v7}, Lcom/android/tools/r8/internal/Ec;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/t70;Lcom/android/tools/r8/internal/Ki;Lcom/android/tools/r8/internal/JI;)V

    .line 14
    :goto_1
    iget-object v6, v0, Lcom/android/tools/r8/internal/t70;->I:Lcom/android/tools/r8/internal/ns0;

    .line 15
    invoke-virtual {v9, v2, v6}, Lcom/android/tools/r8/internal/Gc;->a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/Ic;

    move-result-object v6

    .line 16
    iget-object v9, v0, Lcom/android/tools/r8/internal/kB;->e:Lcom/android/tools/r8/internal/ba;

    iget-object v10, v0, Lcom/android/tools/r8/internal/t70;->I:Lcom/android/tools/r8/internal/ns0;

    invoke-interface {v9, v5, v2, v10}, Lcom/android/tools/r8/internal/ba;->a(Lcom/android/tools/r8/internal/Ki;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    .line 17
    iget-object v9, v5, Lcom/android/tools/r8/internal/Ki;->f:Lcom/android/tools/r8/internal/lr0;

    .line 18
    invoke-virtual {v9, v8}, Lcom/android/tools/r8/internal/lr0;->a(Ljava/util/function/Consumer;)V

    .line 19
    iget-object v9, v5, Lcom/android/tools/r8/internal/Ki;->e:Lcom/android/tools/r8/internal/lr0;

    .line 20
    invoke-virtual {v9, v8}, Lcom/android/tools/r8/internal/lr0;->a(Ljava/util/function/Consumer;)V

    .line 21
    sget-boolean v9, Lcom/android/tools/r8/internal/Ki;->h:Z

    if-nez v9, :cond_4

    iget-object v10, v5, Lcom/android/tools/r8/internal/Ki;->e:Lcom/android/tools/r8/internal/lr0;

    .line 22
    iget-object v10, v10, Lcom/android/tools/r8/internal/xr0;->c:Ljava/util/ArrayList;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_3

    goto :goto_2

    .line 23
    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_4
    :goto_2
    if-nez v9, :cond_6

    .line 24
    iget-object v9, v5, Lcom/android/tools/r8/internal/Ki;->f:Lcom/android/tools/r8/internal/lr0;

    .line 25
    iget-object v9, v9, Lcom/android/tools/r8/internal/xr0;->c:Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_5

    goto :goto_3

    .line 26
    :cond_5
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 27
    :cond_6
    :goto_3
    iget-object v9, v0, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    .line 28
    iget-object v6, v6, Lcom/android/tools/r8/internal/Ic;->a:Ljava/util/IdentityHashMap;

    .line 29
    iget-object v10, v0, Lcom/android/tools/r8/internal/t70;->I:Lcom/android/tools/r8/internal/ns0;

    .line 30
    invoke-static {v9, v6, v10}, Lcom/android/tools/r8/internal/Hi;->a(Lcom/android/tools/r8/graph/y;Ljava/util/IdentityHashMap;Lcom/android/tools/r8/internal/ns0;)V

    .line 31
    iget-object v6, v0, Lcom/android/tools/r8/internal/kB;->e:Lcom/android/tools/r8/internal/ba;

    iget-object v9, v0, Lcom/android/tools/r8/internal/t70;->I:Lcom/android/tools/r8/internal/ns0;

    invoke-interface {v6, v9}, Lcom/android/tools/r8/internal/ba;->a(Lcom/android/tools/r8/internal/ns0;)V

    .line 32
    iget-object v6, v0, Lcom/android/tools/r8/internal/kB;->e:Lcom/android/tools/r8/internal/ba;

    invoke-interface {v6}, Lcom/android/tools/r8/internal/ba;->a()V

    .line 33
    iget-object v6, v1, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 34
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v6

    .line 35
    invoke-virtual {v6}, Lcom/android/tools/r8/synthesis/J;->b()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 36
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/graph/y;->b(Lcom/android/tools/r8/graph/x0;)V

    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->e()Lcom/android/tools/r8/graph/x0;

    move-result-object v3

    .line 38
    :cond_7
    sget-boolean v6, Lcom/android/tools/r8/internal/t70;->J:Z

    if-nez v6, :cond_9

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->e()Lcom/android/tools/r8/graph/x0;

    move-result-object v9

    if-ne v3, v9, :cond_8

    goto :goto_4

    :cond_8
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 39
    :cond_9
    :goto_4
    invoke-virtual {v0, v5, v7, v2}, Lcom/android/tools/r8/internal/t70;->a(Lcom/android/tools/r8/internal/Ki;Lcom/android/tools/r8/internal/JI;Ljava/util/concurrent/ExecutorService;)V

    .line 40
    iget-object v5, v1, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 41
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v5

    .line 42
    invoke-virtual {v5}, Lcom/android/tools/r8/synthesis/J;->b()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 43
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/graph/y;->b(Lcom/android/tools/r8/graph/x0;)V

    .line 44
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->e()Lcom/android/tools/r8/graph/x0;

    move-result-object v3

    :cond_a
    if-nez v6, :cond_c

    .line 45
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->e()Lcom/android/tools/r8/graph/x0;

    move-result-object v5

    if-ne v3, v5, :cond_b

    goto :goto_5

    :cond_b
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 46
    :cond_c
    :goto_5
    instance-of v5, v4, Lcom/android/tools/r8/internal/b10;

    if-eqz v5, :cond_d

    .line 47
    sget-object v5, Lcom/android/tools/r8/internal/ni;->a:Lcom/android/tools/r8/internal/ni;

    goto :goto_6

    .line 48
    :cond_d
    sget-object v6, Lcom/android/tools/r8/internal/ni;->a:Lcom/android/tools/r8/internal/ni;

    if-eqz v5, :cond_e

    move-object v5, v6

    goto :goto_6

    .line 49
    :cond_e
    new-instance v5, Lcom/android/tools/r8/internal/S70;

    .line 50
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/M70;->a()Lcom/android/tools/r8/internal/vg;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/tools/r8/internal/S70;-><init>(Lcom/android/tools/r8/internal/vg;)V

    .line 51
    :goto_6
    iget-object v6, v0, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    .line 52
    invoke-static {v6}, Lcom/android/tools/r8/internal/mi;->a(Lcom/android/tools/r8/graph/y;)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 53
    new-instance v7, Lcom/android/tools/r8/internal/mi;

    invoke-direct {v7, v6, v0}, Lcom/android/tools/r8/internal/mi;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/t70;)V

    .line 54
    invoke-virtual {v7, v5, v2}, Lcom/android/tools/r8/internal/mi;->a(Lcom/android/tools/r8/internal/oi;Ljava/util/concurrent/ExecutorService;)V

    .line 55
    :cond_f
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/x0;->c()Lcom/android/tools/r8/graph/w0;

    move-result-object v2

    .line 56
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v3

    .line 57
    iget-object v3, v3, Lcom/android/tools/r8/internal/WR;->a:Lcom/android/tools/r8/internal/xU;

    .line 58
    iget-boolean v3, v3, Lcom/android/tools/r8/internal/xU;->a:Z

    if-eqz v3, :cond_2c

    .line 59
    new-instance v3, Lcom/android/tools/r8/internal/du;

    invoke-direct {v3, v1}, Lcom/android/tools/r8/internal/du;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 60
    sget-boolean v5, Lcom/android/tools/r8/internal/du;->c:Z

    if-nez v5, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v5

    .line 61
    iget-object v5, v5, Lcom/android/tools/r8/internal/WR;->a:Lcom/android/tools/r8/internal/xU;

    .line 62
    iget-boolean v5, v5, Lcom/android/tools/r8/internal/xU;->a:Z

    if-eqz v5, :cond_10

    goto :goto_7

    .line 63
    :cond_10
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 64
    :cond_11
    :goto_7
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 65
    iget-object v6, v2, Lcom/android/tools/r8/graph/w0;->a:Ljava/util/ArrayList;

    .line 66
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v10, 0x0

    :goto_8
    if-ge v10, v7, :cond_25

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Lcom/android/tools/r8/graph/H2;

    .line 67
    iget-object v12, v3, Lcom/android/tools/r8/internal/du;->b:Ljava/util/IdentityHashMap;

    iget-object v13, v11, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v12, v13}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_24

    .line 68
    iget-object v12, v3, Lcom/android/tools/r8/internal/du;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v12, v11}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/H2;)Z

    move-result v12

    if-eqz v12, :cond_12

    move-object/from16 v34, v6

    move/from16 v16, v7

    goto/16 :goto_13

    .line 69
    :cond_12
    iget-object v12, v3, Lcom/android/tools/r8/internal/du;->b:Ljava/util/IdentityHashMap;

    iget-object v13, v11, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v12, v13}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v14, v12

    check-cast v14, Lcom/android/tools/r8/graph/M2;

    .line 70
    sget-boolean v12, Lcom/android/tools/r8/internal/du;->c:Z

    if-nez v12, :cond_14

    if-eqz v14, :cond_13

    goto :goto_9

    :cond_13
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 71
    :cond_14
    :goto_9
    invoke-virtual {v3, v11, v14}, Lcom/android/tools/r8/internal/du;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/M2;)[Lcom/android/tools/r8/graph/j1;

    move-result-object v15

    .line 72
    sget-object v13, Lcom/android/tools/r8/graph/j1;->u:[Lcom/android/tools/r8/graph/j1;

    if-nez v12, :cond_16

    .line 73
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/E0;->a1()Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    iget-object v8, v3, Lcom/android/tools/r8/internal/du;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v8}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v8

    iget-object v8, v8, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-ne v9, v8, :cond_15

    goto :goto_a

    :cond_15
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_16
    :goto_a
    if-nez v12, :cond_18

    .line 74
    iget-object v8, v11, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    .line 75
    iget-object v8, v8, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    .line 76
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/s3;->f()I

    move-result v8

    if-gtz v8, :cond_17

    goto :goto_b

    .line 77
    :cond_17
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_18
    :goto_b
    if-nez v12, :cond_1a

    .line 78
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/E0;->T0()Lcom/android/tools/r8/graph/M2;

    move-result-object v8

    if-nez v8, :cond_19

    goto :goto_c

    :cond_19
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1a
    :goto_c
    if-nez v12, :cond_1c

    .line 79
    iget-object v8, v11, Lcom/android/tools/r8/graph/E0;->p:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1b

    goto :goto_d

    .line 80
    :cond_1b
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_1c
    :goto_d
    if-nez v12, :cond_1e

    .line 81
    iget-object v8, v11, Lcom/android/tools/r8/graph/E0;->k:Lcom/android/tools/r8/graph/r3;

    .line 82
    iget-object v8, v8, Lcom/android/tools/r8/graph/r3;->b:Lcom/android/tools/r8/graph/s3;

    .line 83
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/s3;->f()I

    move-result v8

    if-gtz v8, :cond_1d

    goto :goto_e

    .line 84
    :cond_1d
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 85
    :cond_1e
    :goto_e
    new-instance v8, Lcom/android/tools/r8/graph/H2;

    move-object v9, v13

    move-object v13, v8

    .line 86
    iget-object v12, v11, Lcom/android/tools/r8/graph/H2;->u:Lcom/android/tools/r8/ProgramResource$Kind;

    move-object/from16 v34, v6

    move-object v6, v15

    move-object v15, v12

    .line 87
    iget-object v12, v11, Lcom/android/tools/r8/graph/E0;->d:Lcom/android/tools/r8/origin/Origin;

    move-object/from16 v16, v12

    .line 88
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/E0;->J0()Lcom/android/tools/r8/graph/Q;

    move-result-object v17

    iget-object v12, v3, Lcom/android/tools/r8/internal/du;->a:Lcom/android/tools/r8/graph/y;

    .line 89
    invoke-virtual {v12}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v12

    iget-object v12, v12, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    move-object/from16 v18, v12

    .line 90
    invoke-static {}, Lcom/android/tools/r8/graph/O2;->k0()Lcom/android/tools/r8/graph/O2;

    move-result-object v19

    .line 91
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/E0;->Z0()Lcom/android/tools/r8/graph/L2;

    move-result-object v20

    .line 92
    sget-object v26, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    move-object/from16 v22, v26

    move-object/from16 v23, v26

    move-object/from16 v24, v26

    .line 93
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/E0;->N0()Lcom/android/tools/r8/graph/H3$b;

    move-result-object v27

    .line 94
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/b1;->k0()Lcom/android/tools/r8/graph/u0;

    move-result-object v28

    .line 95
    invoke-static {}, Lcom/android/tools/r8/graph/q3;->empty()Lcom/android/tools/r8/graph/q3;

    move-result-object v29

    .line 96
    invoke-static {v9, v6}, Lcom/android/tools/r8/graph/N4$a;->a([Lcom/android/tools/r8/graph/j1;[Lcom/android/tools/r8/graph/j1;)Lcom/android/tools/r8/graph/N4$a;

    move-result-object v30

    .line 97
    iget-object v6, v11, Lcom/android/tools/r8/graph/H2;->z:Lcom/android/tools/r8/graph/H2$a;

    move-object/from16 v32, v6

    .line 98
    sget-object v33, Lcom/android/tools/r8/internal/Jb0;->b:Lcom/android/tools/r8/internal/Jb0;

    const/16 v21, 0x0

    const/16 v25, 0x0

    const/16 v31, 0x0

    invoke-direct/range {v13 .. v33}, Lcom/android/tools/r8/graph/H2;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/ProgramResource$Kind;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/graph/Q;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/O2;Lcom/android/tools/r8/graph/L2;Lcom/android/tools/r8/graph/o5;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/graph/i3;Ljava/util/List;Lcom/android/tools/r8/graph/H3$b;Lcom/android/tools/r8/graph/u0;Lcom/android/tools/r8/graph/q3;Lcom/android/tools/r8/graph/N4$a;ZLcom/android/tools/r8/graph/H2$a;Lcom/android/tools/r8/internal/Jb0;)V

    .line 99
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 100
    invoke-virtual {v11}, Lcom/android/tools/r8/graph/E0;->N0()Lcom/android/tools/r8/graph/H3$b;

    move-result-object v9

    const/4 v12, 0x0

    .line 101
    :goto_f
    iget-object v13, v11, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    invoke-virtual {v13}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v13

    if-ge v12, v13, :cond_23

    .line 102
    iget-object v13, v11, Lcom/android/tools/r8/graph/E0;->h:Lcom/android/tools/r8/graph/O2;

    iget-object v13, v13, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    aget-object v13, v13, v12

    .line 103
    iget-object v14, v3, Lcom/android/tools/r8/internal/du;->b:Ljava/util/IdentityHashMap;

    invoke-virtual {v14, v13}, Ljava/util/IdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_22

    if-nez v9, :cond_1f

    .line 104
    sget-object v14, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_11

    .line 105
    :cond_1f
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/H3$b;->e()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/tools/r8/graph/H3$c;

    .line 106
    sget-boolean v15, Lcom/android/tools/r8/internal/du;->c:Z

    if-nez v15, :cond_21

    invoke-virtual {v14}, Lcom/android/tools/r8/graph/H3$c;->q()Lcom/android/tools/r8/graph/M2;

    move-result-object v15

    if-ne v13, v15, :cond_20

    goto :goto_10

    :cond_20
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 107
    :cond_21
    :goto_10
    invoke-virtual {v14}, Lcom/android/tools/r8/graph/H3$c;->r()Ljava/util/List;

    move-result-object v14

    .line 108
    :goto_11
    new-instance v15, Lcom/android/tools/r8/graph/H3$c;

    move/from16 v16, v7

    iget-object v7, v3, Lcom/android/tools/r8/internal/du;->b:Ljava/util/IdentityHashMap;

    .line 109
    invoke-virtual {v7, v13}, Ljava/util/IdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/graph/M2;

    .line 110
    sget-object v13, Lcom/android/tools/r8/graph/H3$k;->b:Lcom/android/tools/r8/graph/H3$k;

    move-object/from16 v17, v9

    const/4 v9, 0x0

    invoke-direct {v15, v7, v14, v9, v13}, Lcom/android/tools/r8/graph/H3$c;-><init>(Lcom/android/tools/r8/graph/M2;Ljava/util/List;Lcom/android/tools/r8/graph/H3$c;Lcom/android/tools/r8/graph/H3$k;)V

    .line 111
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_22
    move/from16 v16, v7

    move-object/from16 v17, v9

    :goto_12
    add-int/lit8 v12, v12, 0x1

    move/from16 v7, v16

    move-object/from16 v9, v17

    goto :goto_f

    :cond_23
    move/from16 v16, v7

    .line 112
    iget-object v7, v3, Lcom/android/tools/r8/internal/du;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v7

    .line 113
    invoke-virtual {v8, v6, v7}, Lcom/android/tools/r8/graph/H2;->a(Ljava/util/List;Lcom/android/tools/r8/graph/u1;)V

    move-object v11, v8

    .line 114
    :goto_13
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_24
    move-object/from16 v34, v6

    move/from16 v16, v7

    .line 115
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_14
    move/from16 v7, v16

    move-object/from16 v6, v34

    const/4 v8, 0x0

    goto/16 :goto_8

    .line 116
    :cond_25
    invoke-virtual {v2, v5}, Lcom/android/tools/r8/graph/w0;->a(Ljava/util/AbstractCollection;)Lcom/android/tools/r8/graph/w0;

    .line 117
    sget-boolean v3, Lcom/android/tools/r8/internal/TQ;->a:Z

    if-nez v3, :cond_27

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v3

    .line 118
    iget-object v3, v3, Lcom/android/tools/r8/internal/WR;->a:Lcom/android/tools/r8/internal/xU;

    .line 119
    iget-boolean v3, v3, Lcom/android/tools/r8/internal/xU;->a:Z

    if-eqz v3, :cond_26

    goto :goto_15

    .line 120
    :cond_26
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 121
    :cond_27
    :goto_15
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_28
    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/graph/H2;

    .line 122
    iget-object v6, v5, Lcom/android/tools/r8/graph/E0;->e:Lcom/android/tools/r8/graph/M2;

    .line 123
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v7

    .line 124
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v7

    .line 125
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/WR;->a()Lcom/android/tools/r8/internal/xU;

    move-result-object v7

    .line 126
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xU;->j()Ljava/util/Map;

    move-result-object v7

    .line 127
    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    .line 128
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/E0;->O0()Lcom/android/tools/r8/graph/i3;

    move-result-object v7

    if-eqz v7, :cond_29

    .line 129
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/E0;->O0()Lcom/android/tools/r8/graph/i3;

    move-result-object v7

    .line 130
    iget-object v7, v7, Lcom/android/tools/r8/graph/i3;->a:Lcom/android/tools/r8/graph/M2;

    if-eqz v7, :cond_29

    .line 131
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v8

    .line 132
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v8

    .line 133
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/WR;->a()Lcom/android/tools/r8/internal/xU;

    move-result-object v8

    .line 134
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xU;->j()Ljava/util/Map;

    move-result-object v8

    .line 135
    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eq v7, v6, :cond_29

    const/4 v7, 0x0

    .line 136
    iput-object v7, v5, Lcom/android/tools/r8/graph/E0;->m:Lcom/android/tools/r8/graph/i3;

    goto :goto_17

    :cond_29
    const/4 v7, 0x0

    .line 137
    :goto_17
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/E0;->Q0()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_28

    .line 138
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 139
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/E0;->Q0()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2a
    :goto_18
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/tools/r8/graph/e4;

    .line 140
    invoke-virtual {v10}, Lcom/android/tools/r8/graph/e4;->b()Lcom/android/tools/r8/graph/M2;

    move-result-object v11

    .line 141
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v12

    .line 142
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/nJ;->x()Lcom/android/tools/r8/internal/WR;

    move-result-object v12

    .line 143
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/WR;->a()Lcom/android/tools/r8/internal/xU;

    move-result-object v12

    .line 144
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/xU;->j()Ljava/util/Map;

    move-result-object v12

    .line 145
    invoke-interface {v12, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-ne v11, v6, :cond_2a

    .line 146
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 147
    :cond_2b
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5}, Lcom/android/tools/r8/graph/E0;->Q0()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-eq v6, v9, :cond_28

    .line 148
    iput-object v8, v5, Lcom/android/tools/r8/graph/E0;->n:Ljava/util/List;

    goto/16 :goto_16

    .line 149
    :cond_2c
    iget-object v3, v0, Lcom/android/tools/r8/internal/t70;->I:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 150
    invoke-virtual {v2}, Lcom/android/tools/r8/graph/w0;->b()Lcom/android/tools/r8/graph/x0;

    move-result-object v2

    .line 151
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/graph/y;->b(Lcom/android/tools/r8/graph/x0;)V

    .line 152
    invoke-virtual {v4, v1}, Lcom/android/tools/r8/internal/M70;->a(Lcom/android/tools/r8/graph/y;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Ki;Lcom/android/tools/r8/internal/JI;Ljava/util/concurrent/ExecutorService;)V
    .locals 5

    .line 158
    iget-object v0, p0, Lcom/android/tools/r8/internal/t70;->I:Lcom/android/tools/r8/internal/ns0;

    const-string v1, "Post processing desugaring"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    move-result-object v0

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    .line 160
    iget-object v2, p1, Lcom/android/tools/r8/internal/Ki;->a:Lcom/android/tools/r8/internal/M70;

    .line 161
    iget-object v3, p0, Lcom/android/tools/r8/internal/kB;->e:Lcom/android/tools/r8/internal/ba;

    .line 162
    new-instance v4, Lcom/android/tools/r8/internal/Ra;

    invoke-direct {v4, p1, v3}, Lcom/android/tools/r8/internal/Ra;-><init>(Lcom/android/tools/r8/internal/Ki;Lcom/android/tools/r8/internal/ba;)V

    .line 163
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 164
    instance-of v3, v2, Lcom/android/tools/r8/internal/b10;

    if-eqz v3, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    new-instance v3, Lcom/android/tools/r8/internal/R70;

    .line 166
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/M70;->a()Lcom/android/tools/r8/internal/vg;

    move-result-object v2

    .line 167
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->q()Lcom/android/tools/r8/internal/s4;

    move-result-object v1

    invoke-direct {v3, v2, v1, v4}, Lcom/android/tools/r8/internal/R70;-><init>(Lcom/android/tools/r8/internal/vg;Lcom/android/tools/r8/internal/s4;Lcom/android/tools/r8/internal/Ta;)V

    move-object v4, v3

    .line 168
    :goto_0
    iget-object v1, p1, Lcom/android/tools/r8/internal/Ki;->b:Lcom/android/tools/r8/internal/t70;

    iget-object v1, v1, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->k()Lcom/android/tools/r8/internal/Ef;

    move-result-object v1

    iput-object v1, p1, Lcom/android/tools/r8/internal/Ki;->g:Lcom/android/tools/r8/internal/Ef;

    .line 169
    iget-object v1, p0, Lcom/android/tools/r8/internal/kB;->e:Lcom/android/tools/r8/internal/ba;

    .line 170
    invoke-interface {v1, p2}, Lcom/android/tools/r8/internal/ba;->a(Lcom/android/tools/r8/internal/JI;)Lcom/android/tools/r8/internal/DI;

    move-result-object p2

    .line 171
    iget-object v1, p0, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    new-instance v2, Lcom/android/tools/r8/internal/Ct1;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/Ct1;-><init>()V

    invoke-static {v1, p2, v2}, Lcom/android/tools/r8/internal/Qa;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/DI;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/Qa;

    move-result-object p2

    iget-object v1, p0, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    .line 172
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/t70;->I:Lcom/android/tools/r8/internal/ns0;

    .line 173
    invoke-virtual {p2, v1, v4, p3, v2}, Lcom/android/tools/r8/internal/Qa;->a(Ljava/util/Collection;Lcom/android/tools/r8/internal/Ta;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    .line 174
    iget-object p2, p1, Lcom/android/tools/r8/internal/Ki;->f:Lcom/android/tools/r8/internal/lr0;

    const/4 p3, 0x0

    .line 175
    invoke-virtual {p2, p3}, Lcom/android/tools/r8/internal/lr0;->a(Ljava/util/function/Consumer;)V

    .line 176
    iget-object p1, p1, Lcom/android/tools/r8/internal/Ki;->e:Lcom/android/tools/r8/internal/lr0;

    .line 177
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/internal/lr0;->a(Ljava/util/function/Consumer;)V

    .line 178
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/Ta;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void

    :catchall_0
    move-exception p1

    .line 180
    :try_start_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    .line 181
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Z70;Lcom/android/tools/r8/graph/H2;)V
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/android/tools/r8/internal/kB;->e:Lcom/android/tools/r8/internal/ba;

    .line 193
    invoke-interface {v0}, Lcom/android/tools/r8/internal/ba;->get()Lcom/android/tools/r8/internal/Y9;

    move-result-object v0

    .line 194
    new-instance v1, Lcom/android/tools/r8/internal/Et1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Et1;-><init>()V

    new-instance v2, Lcom/android/tools/r8/internal/Ft1;

    invoke-direct {v2, v0, p1, p2}, Lcom/android/tools/r8/internal/Ft1;-><init>(Lcom/android/tools/r8/internal/Y9;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Z70;)V

    invoke-virtual {p3, v2, v1}, Lcom/android/tools/r8/graph/H2;->h(Ljava/util/function/Consumer;Ljava/util/function/Predicate;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/ea;Ljava/util/concurrent/ExecutorService;)V
    .locals 5

    .line 182
    iget-object v0, p0, Lcom/android/tools/r8/internal/t70;->I:Lcom/android/tools/r8/internal/ns0;

    const-string v1, "Prepare desugaring"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    move-result-object v0

    .line 183
    :try_start_0
    new-instance v1, Lcom/android/tools/r8/internal/Z70;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Z70;-><init>()V

    .line 184
    iget-object v2, p0, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v2

    .line 185
    iget-object v3, p0, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    .line 186
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v3

    new-instance v4, Lcom/android/tools/r8/internal/Dt1;

    invoke-direct {v4, p0, p1, v1}, Lcom/android/tools/r8/internal/Dt1;-><init>(Lcom/android/tools/r8/internal/t70;Lcom/android/tools/r8/internal/ea;Lcom/android/tools/r8/internal/Z70;)V

    .line 187
    invoke-static {v3, v4, v2, p2}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/Collection;Ljava/util/function/Consumer;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    .line 188
    invoke-virtual {v1, v2, p2}, Lcom/android/tools/r8/internal/Z70;->a(Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void

    :catchall_0
    move-exception p1

    .line 190
    :try_start_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    .line 191
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p1
.end method
