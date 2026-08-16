.class public final Lcom/android/tools/r8/internal/y70;
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

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/kB;-><init>(Lcom/android/tools/r8/graph/y;)V

    iput-object p2, p0, Lcom/android/tools/r8/internal/y70;->I:Lcom/android/tools/r8/internal/ns0;

    if-eqz p3, :cond_0

    iget-object p2, p0, Lcom/android/tools/r8/internal/kB;->c:Lcom/android/tools/r8/internal/ue;

    iget-object p2, p2, Lcom/android/tools/r8/internal/ue;->a:Ljava/util/List;

    new-instance p3, Lcom/android/tools/r8/ir/optimize/c0;

    invoke-direct {p3, p1}, Lcom/android/tools/r8/ir/optimize/c0;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/graph/x0;)Lcom/android/tools/r8/graph/x0;
    .locals 0

    .line 1
    return-object p0
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/graph/x0;
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 2
    invoke-virtual {v7, v9}, Lcom/android/tools/r8/internal/kB;->a(Ljava/util/concurrent/ExecutorService;)V

    .line 3
    const-string v0, "Primary optimization pass"

    invoke-virtual {v7, v0}, Lcom/android/tools/r8/internal/kB;->b(Ljava/lang/String;)V

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v6

    .line 5
    new-instance v0, Lcom/android/tools/r8/internal/wz1;

    invoke-direct {v0, v7, v9}, Lcom/android/tools/r8/internal/wz1;-><init>(Lcom/android/tools/r8/internal/y70;Ljava/util/concurrent/ExecutorService;)V

    .line 6
    iget-object v1, v8, Lcom/android/tools/r8/graph/y;->A:Lcom/android/tools/r8/internal/l3;

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/Wr0;->accept(Ljava/lang/Object;)V

    .line 8
    :cond_0
    iget-object v0, v7, Lcom/android/tools/r8/internal/kB;->r:Lcom/android/tools/r8/internal/xu;

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/internal/xu;->a(Lcom/android/tools/r8/internal/Hz;)V

    .line 9
    iget-object v0, v7, Lcom/android/tools/r8/internal/kB;->s:Lcom/android/tools/r8/internal/E10;

    iget-object v1, v7, Lcom/android/tools/r8/internal/y70;->I:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v0, v9, v1}, Lcom/android/tools/r8/internal/E10;->a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    .line 10
    iget-object v0, v7, Lcom/android/tools/r8/internal/kB;->b:Lcom/android/tools/r8/internal/S40;

    invoke-virtual {v0, v6}, Lcom/android/tools/r8/internal/S40;->a(Lcom/android/tools/r8/internal/Hz;)V

    .line 11
    iget-object v0, v7, Lcom/android/tools/r8/internal/kB;->f:Lcom/android/tools/r8/internal/Sv;

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, v0, Lcom/android/tools/r8/internal/Sv;->b:Lcom/android/tools/r8/internal/Xv;

    if-eqz v0, :cond_1

    .line 13
    iget-object v1, v0, Lcom/android/tools/r8/internal/Xv;->d:Lcom/android/tools/r8/internal/Vv;

    .line 14
    iget-object v2, v0, Lcom/android/tools/r8/internal/Xv;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Vv;->a(Lcom/android/tools/r8/graph/y;)V

    .line 15
    iget-object v1, v0, Lcom/android/tools/r8/internal/Xv;->e:Lcom/android/tools/r8/internal/Wv;

    iget-object v2, v0, Lcom/android/tools/r8/internal/Xv;->b:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Wv;->a(Lcom/android/tools/r8/graph/y;)V

    .line 16
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Xv;->a()V

    .line 17
    :cond_1
    iget-object v10, v7, Lcom/android/tools/r8/internal/kB;->z:Lcom/android/tools/r8/internal/l40;

    .line 18
    new-instance v11, Lcom/android/tools/r8/internal/O60;

    invoke-direct {v11, v6}, Lcom/android/tools/r8/internal/O60;-><init>(Lcom/android/tools/r8/internal/Hz;)V

    .line 19
    iget-object v0, v7, Lcom/android/tools/r8/internal/y70;->I:Lcom/android/tools/r8/internal/ns0;

    const-string v1, "Build primary method processor"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 20
    sget-object v0, Lcom/android/tools/r8/internal/eX;->c:Lcom/android/tools/r8/internal/eX;

    .line 21
    invoke-static/range {p1 .. p1}, Lcom/android/tools/r8/internal/M70;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/M70;

    move-result-object v1

    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    instance-of v2, v1, Lcom/android/tools/r8/internal/b10;

    if-eqz v2, :cond_2

    move-object v12, v0

    goto :goto_0

    .line 24
    :cond_2
    new-instance v2, Lcom/android/tools/r8/internal/U70;

    .line 25
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/M70;->a()Lcom/android/tools/r8/internal/vg;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/android/tools/r8/internal/U70;-><init>(Lcom/android/tools/r8/internal/vg;Lcom/android/tools/r8/internal/eX;)V

    move-object v12, v2

    .line 26
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v0

    iget-object v1, v7, Lcom/android/tools/r8/internal/y70;->I:Lcom/android/tools/r8/internal/ns0;

    .line 27
    sget-boolean v2, Lcom/android/tools/r8/internal/x8;->b:Z

    .line 28
    new-instance v2, Lcom/android/tools/r8/internal/z8;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/internal/z8;-><init>(Lcom/android/tools/r8/graph/y;)V

    .line 29
    invoke-virtual {v2, v9, v1}, Lcom/android/tools/r8/internal/z8;->a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/x8;

    move-result-object v1

    .line 30
    new-instance v2, Lcom/android/tools/r8/internal/x70;

    invoke-direct {v2, v0, v1, v12}, Lcom/android/tools/r8/internal/x70;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/x8;Lcom/android/tools/r8/internal/fX;)V

    .line 31
    iget-object v0, v7, Lcom/android/tools/r8/internal/y70;->I:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 32
    iget-object v0, v7, Lcom/android/tools/r8/internal/y70;->I:Lcom/android/tools/r8/internal/ns0;

    const-string v1, "IR conversion phase 1"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 33
    sget-boolean v13, Lcom/android/tools/r8/internal/y70;->J:Z

    if-nez v13, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    if-ne v0, v6, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 34
    :cond_4
    :goto_1
    new-instance v1, Lcom/android/tools/r8/internal/xz1;

    invoke-direct {v1, v7, v10, v2, v8}, Lcom/android/tools/r8/internal/xz1;-><init>(Lcom/android/tools/r8/internal/y70;Lcom/android/tools/r8/internal/l40;Lcom/android/tools/r8/internal/x70;Lcom/android/tools/r8/graph/y;)V

    new-instance v3, Lcom/android/tools/r8/internal/yz1;

    invoke-direct {v3, v7}, Lcom/android/tools/r8/internal/yz1;-><init>(Lcom/android/tools/r8/internal/y70;)V

    new-instance v4, Lcom/android/tools/r8/internal/zz1;

    invoke-direct {v4, v7}, Lcom/android/tools/r8/internal/zz1;-><init>(Lcom/android/tools/r8/internal/y70;)V

    iget-object v5, v7, Lcom/android/tools/r8/internal/y70;->I:Lcom/android/tools/r8/internal/ns0;

    move-object v0, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object/from16 v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/tools/r8/internal/x70;->a(Lcom/android/tools/r8/internal/u70;Lcom/android/tools/r8/internal/w70;Lcom/android/tools/r8/internal/v70;Lcom/android/tools/r8/internal/ns0;Ljava/util/concurrent/ExecutorService;)V

    .line 35
    invoke-virtual {v7, v11, v9}, Lcom/android/tools/r8/internal/y70;->a(Lcom/android/tools/r8/internal/O60;Ljava/util/concurrent/ExecutorService;)V

    .line 36
    invoke-virtual {v12, v8}, Lcom/android/tools/r8/internal/fX;->a(Lcom/android/tools/r8/graph/y;)V

    if-nez v13, :cond_6

    .line 37
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    if-ne v0, v6, :cond_5

    goto :goto_2

    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 38
    :cond_6
    :goto_2
    iget-object v0, v7, Lcom/android/tools/r8/internal/y70;->I:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 39
    new-instance v0, Lcom/android/tools/r8/naming/D;

    invoke-direct {v0, v8}, Lcom/android/tools/r8/naming/D;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v0, v9}, Lcom/android/tools/r8/naming/D;->c(Ljava/util/concurrent/ExecutorService;)V

    .line 40
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    .line 41
    sget-boolean v1, Lcom/android/tools/r8/shaking/i;->J:Z

    if-nez v1, :cond_7

    .line 42
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->c()V

    goto :goto_3

    .line 43
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    :goto_3
    iget-object v0, v0, Lcom/android/tools/r8/shaking/i;->s:Lcom/android/tools/r8/graph/n3;

    .line 45
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/n3;->a()V

    if-nez v13, :cond_8

    .line 46
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/l40;->b()V

    :cond_8
    const/4 v0, 0x1

    .line 47
    iput-boolean v0, v8, Lcom/android/tools/r8/graph/y;->D:Z

    .line 48
    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v0

    .line 49
    const-string v12, "Clear code rewritings"

    invoke-virtual {v0, v12}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 50
    new-instance v1, Lcom/android/tools/r8/internal/ke;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/ke;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v8, v1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/internal/Hz;)Z

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object v1

    invoke-static {v1, v9}, Lcom/android/tools/r8/internal/VV;->a(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/internal/TV;

    move-result-object v1

    .line 52
    invoke-virtual {v8, v1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/internal/Hz;)Z

    .line 53
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 54
    iget-object v0, v8, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 55
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/android/tools/r8/synthesis/J;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 57
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->e()Lcom/android/tools/r8/graph/x0;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/tools/r8/graph/y;->b(Lcom/android/tools/r8/graph/x0;)V

    .line 58
    :cond_9
    const-string v0, "Post optimization pass"

    invoke-virtual {v7, v0}, Lcom/android/tools/r8/internal/kB;->b(Ljava/lang/String;)V

    .line 59
    iget-object v0, v7, Lcom/android/tools/r8/internal/kB;->s:Lcom/android/tools/r8/internal/E10;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    iget-object v0, v7, Lcom/android/tools/r8/internal/kB;->b:Lcom/android/tools/r8/internal/S40;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/S40;->a()V

    .line 61
    new-instance v0, Lcom/android/tools/r8/internal/Az1;

    invoke-direct {v0, v7, v11, v9}, Lcom/android/tools/r8/internal/Az1;-><init>(Lcom/android/tools/r8/internal/y70;Lcom/android/tools/r8/internal/O60;Ljava/util/concurrent/ExecutorService;)V

    .line 62
    iget-object v1, v8, Lcom/android/tools/r8/graph/y;->A:Lcom/android/tools/r8/internal/l3;

    if-eqz v1, :cond_a

    .line 63
    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/Wr0;->accept(Ljava/lang/Object;)V

    .line 64
    :cond_a
    iget-object v0, v7, Lcom/android/tools/r8/internal/kB;->g:Lcom/android/tools/r8/shaking/h2;

    if-eqz v0, :cond_b

    .line 65
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/h2;->a()V

    .line 66
    :cond_b
    iget-object v0, v7, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ;->i1:Z

    if-nez v0, :cond_c

    .line 67
    new-instance v0, Lcom/android/tools/r8/internal/kt0;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v1

    invoke-direct {v0, v1, v11}, Lcom/android/tools/r8/internal/kt0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/O60;)V

    iget-object v1, v7, Lcom/android/tools/r8/internal/y70;->I:Lcom/android/tools/r8/internal/ns0;

    .line 68
    invoke-virtual {v0, v9, v10, v1}, Lcom/android/tools/r8/internal/kt0;->a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/l40;Lcom/android/tools/r8/internal/ns0;)V

    .line 69
    :cond_c
    iget-object v0, v7, Lcom/android/tools/r8/internal/kB;->s:Lcom/android/tools/r8/internal/E10;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    iget-object v0, v7, Lcom/android/tools/r8/internal/kB;->b:Lcom/android/tools/r8/internal/S40;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/S40;->a()V

    .line 71
    iget-object v0, v7, Lcom/android/tools/r8/internal/kB;->r:Lcom/android/tools/r8/internal/xu;

    iget-object v6, v7, Lcom/android/tools/r8/internal/y70;->I:Lcom/android/tools/r8/internal/ns0;

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    move-object v3, v11

    move-object/from16 v4, p2

    move-object v5, v10

    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/xu;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/y70;Lcom/android/tools/r8/internal/O60;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/l40;Lcom/android/tools/r8/internal/ns0;)V

    .line 72
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->I()Lcom/android/tools/r8/internal/nu;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 74
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v2}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/H2;

    .line 75
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->o1()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 76
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->r()Lcom/android/tools/r8/shaking/y1;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/tools/r8/shaking/y1;->a(Lcom/android/tools/r8/graph/H2;)Lcom/android/tools/r8/shaking/l1;

    move-result-object v4

    .line 77
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    .line 78
    iget-boolean v4, v4, Lcom/android/tools/r8/shaking/l1;->r:Z

    if-eqz v4, :cond_d

    .line 79
    invoke-virtual {v3}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/tools/r8/internal/nu;->b(Lcom/android/tools/r8/graph/M2;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 80
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 81
    :cond_e
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 82
    iget-object v0, v7, Lcom/android/tools/r8/internal/kB;->s:Lcom/android/tools/r8/internal/E10;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 83
    iget-object v0, v7, Lcom/android/tools/r8/internal/kB;->b:Lcom/android/tools/r8/internal/S40;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/S40;->a()V

    .line 84
    iget-object v0, v7, Lcom/android/tools/r8/internal/kB;->s:Lcom/android/tools/r8/internal/E10;

    iget-object v1, v7, Lcom/android/tools/r8/internal/y70;->I:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v0, v11, v1, v9}, Lcom/android/tools/r8/internal/E10;->a(Lcom/android/tools/r8/internal/O60;Lcom/android/tools/r8/internal/ns0;Ljava/util/concurrent/ExecutorService;)V

    .line 85
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v13

    .line 86
    iget-object v0, v7, Lcom/android/tools/r8/internal/kB;->b:Lcom/android/tools/r8/internal/S40;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/S40;->a()V

    .line 87
    invoke-static {v8, v9, v11}, Lcom/android/tools/r8/internal/pX;->a(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/O60;)V

    .line 88
    iget-object v0, v7, Lcom/android/tools/r8/internal/y70;->I:Lcom/android/tools/r8/internal/ns0;

    const-string v1, "IR conversion phase 2"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 89
    sget-object v0, Lcom/android/tools/r8/internal/eX;->c:Lcom/android/tools/r8/internal/eX;

    .line 90
    invoke-static/range {p1 .. p1}, Lcom/android/tools/r8/internal/M70;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/M70;

    move-result-object v1

    .line 91
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 92
    instance-of v2, v1, Lcom/android/tools/r8/internal/b10;

    if-eqz v2, :cond_f

    move-object v14, v0

    goto :goto_5

    .line 93
    :cond_f
    new-instance v2, Lcom/android/tools/r8/internal/U70;

    .line 94
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/M70;->a()Lcom/android/tools/r8/internal/vg;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lcom/android/tools/r8/internal/U70;-><init>(Lcom/android/tools/r8/internal/vg;Lcom/android/tools/r8/internal/eX;)V

    move-object v14, v2

    .line 95
    :goto_5
    iget-object v6, v7, Lcom/android/tools/r8/internal/y70;->I:Lcom/android/tools/r8/internal/ns0;

    new-instance v15, Lcom/android/tools/r8/internal/pz1;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v11

    move-object/from16 v3, p1

    move-object v4, v14

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/pz1;-><init>(Lcom/android/tools/r8/internal/y70;Lcom/android/tools/r8/internal/O60;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fX;Ljava/util/concurrent/ExecutorService;)V

    .line 96
    const-string v0, "Build post method processor"

    invoke-virtual {v6, v0, v15}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/es0;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/P60;

    if-eqz v0, :cond_13

    .line 97
    sget-boolean v11, Lcom/android/tools/r8/internal/y70;->J:Z

    if-nez v11, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v1

    if-ne v1, v13, :cond_10

    goto :goto_6

    :cond_10
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 98
    :cond_11
    :goto_6
    iget-object v1, v7, Lcom/android/tools/r8/internal/y70;->I:Lcom/android/tools/r8/internal/ns0;

    const-string v2, "Process code"

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 99
    new-instance v1, Lcom/android/tools/r8/internal/qz1;

    invoke-direct {v1, v7, v10, v0, v8}, Lcom/android/tools/r8/internal/qz1;-><init>(Lcom/android/tools/r8/internal/y70;Lcom/android/tools/r8/internal/l40;Lcom/android/tools/r8/internal/P60;Lcom/android/tools/r8/graph/y;)V

    .line 100
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v4

    iget-object v6, v7, Lcom/android/tools/r8/internal/y70;->I:Lcom/android/tools/r8/internal/ns0;

    move-object/from16 v2, p0

    move-object v3, v10

    move-object/from16 v5, p2

    .line 101
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/P60;->a(Lcom/android/tools/r8/internal/u70;Lcom/android/tools/r8/internal/y70;Lcom/android/tools/r8/internal/l40;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    .line 102
    iget-object v0, v7, Lcom/android/tools/r8/internal/y70;->I:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 103
    iget-object v0, v7, Lcom/android/tools/r8/internal/y70;->I:Lcom/android/tools/r8/internal/ns0;

    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/internal/rz1;

    invoke-direct {v1, v10}, Lcom/android/tools/r8/internal/rz1;-><init>(Lcom/android/tools/r8/internal/l40;)V

    const-string v2, "Update visible optimization info"

    invoke-virtual {v0, v2, v1}, Lcom/android/tools/r8/internal/ns0;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/Sr0;)V

    .line 104
    invoke-virtual {v14, v8}, Lcom/android/tools/r8/internal/fX;->a(Lcom/android/tools/r8/graph/y;)V

    if-nez v11, :cond_13

    .line 105
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->v()Lcom/android/tools/r8/internal/Hz;

    move-result-object v0

    if-ne v0, v13, :cond_12

    goto :goto_7

    :cond_12
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 106
    :cond_13
    :goto_7
    iget-object v0, v7, Lcom/android/tools/r8/internal/y70;->I:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 107
    sget-object v0, Lcom/android/tools/r8/internal/rX;->b:Lcom/android/tools/r8/internal/rX;

    .line 108
    iput-object v0, v8, Lcom/android/tools/r8/graph/y;->o:Lcom/android/tools/r8/internal/rX;

    .line 109
    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v0

    .line 110
    invoke-virtual {v0, v12}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 111
    new-instance v1, Lcom/android/tools/r8/internal/ke;

    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/ke;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v8, v1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/internal/Hz;)Z

    .line 112
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object v1

    invoke-static {v1, v9}, Lcom/android/tools/r8/internal/VV;->a(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/internal/TV;

    move-result-object v1

    .line 113
    invoke-virtual {v8, v1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/internal/Hz;)Z

    .line 114
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 115
    iget-object v0, v8, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 116
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Lcom/android/tools/r8/synthesis/J;->b()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 118
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->e()Lcom/android/tools/r8/graph/x0;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/android/tools/r8/graph/y;->b(Lcom/android/tools/r8/graph/x0;)V

    .line 119
    :cond_14
    invoke-virtual {v10}, Lcom/android/tools/r8/internal/l40;->c()V

    .line 120
    iget-object v0, v7, Lcom/android/tools/r8/internal/kB;->b:Lcom/android/tools/r8/internal/S40;

    iget-object v1, v7, Lcom/android/tools/r8/internal/y70;->I:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v0, v7, v10, v9, v1}, Lcom/android/tools/r8/internal/S40;->a(Lcom/android/tools/r8/internal/y70;Lcom/android/tools/r8/internal/l40;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    .line 121
    invoke-virtual/range {p0 .. p0}, Lcom/android/tools/r8/internal/y70;->a()V

    .line 122
    iget-object v0, v7, Lcom/android/tools/r8/internal/kB;->o:Lcom/android/tools/r8/naming/E;

    if-eqz v0, :cond_15

    .line 123
    invoke-virtual {v0, v9}, Lcom/android/tools/r8/naming/E;->a(Ljava/util/concurrent/ExecutorService;)V

    .line 124
    :cond_15
    sget-boolean v0, Lcom/android/tools/r8/internal/y70;->J:Z

    if-nez v0, :cond_16

    invoke-virtual {v10}, Lcom/android/tools/r8/internal/l40;->b()V

    .line 125
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->a()Lcom/android/tools/r8/graph/x0;

    move-result-object v0

    return-object v0

    .line 126
    :cond_17
    invoke-static {}, Lcom/android/tools/r8/errors/CheckEnumUnboxedDiagnostic;->builder()Lcom/android/tools/r8/errors/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/errors/d;->a(Ljava/util/ArrayList;)Lcom/android/tools/r8/errors/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/errors/d;->a()Lcom/android/tools/r8/errors/CheckEnumUnboxedDiagnostic;

    move-result-object v0

    .line 127
    invoke-virtual/range {p1 .. p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    const/4 v2, 0x0

    .line 128
    invoke-virtual {v1, v2, v0}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 129
    iget-object v0, v1, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw v0
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/O60;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fX;Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/internal/P60;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/android/tools/r8/internal/y70;->I:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {p1, p2, p3, p4, v0}, Lcom/android/tools/r8/internal/O60;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fX;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/P60;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/l40;Lcom/android/tools/r8/internal/P60;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/internal/ns0;
    .locals 7

    .line 136
    invoke-static {p3}, Lcom/android/tools/r8/internal/EW;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/EW$a;

    move-result-object v5

    .line 137
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->r()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-static {v0, p3}, Lcom/android/tools/r8/internal/ns0;->a(Lcom/android/tools/r8/internal/nJ;Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    move-result-object v6

    move-object v0, p0

    move-object v1, p4

    move-object v2, p1

    move-object v3, p2

    move-object v4, p5

    .line 138
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/gX;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/EW$a;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/ns0;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/l40;Lcom/android/tools/r8/internal/x70;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/Df;)Lcom/android/tools/r8/internal/ns0;
    .locals 7

    .line 131
    invoke-static {p3}, Lcom/android/tools/r8/internal/EW;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/EW$a;

    move-result-object v5

    .line 132
    invoke-virtual {p4}, Lcom/android/tools/r8/graph/G0;->r()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/android/tools/r8/internal/kB;->j:Lcom/android/tools/r8/internal/nJ;

    invoke-static {v0, p3}, Lcom/android/tools/r8/internal/ns0;->a(Lcom/android/tools/r8/internal/nJ;Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    move-result-object v6

    move-object v0, p0

    move-object v1, p4

    move-object v2, p1

    move-object v3, p2

    move-object v4, p5

    .line 133
    invoke-virtual/range {v0 .. v6}, Lcom/android/tools/r8/internal/kB;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/k40;Lcom/android/tools/r8/internal/gX;Lcom/android/tools/r8/internal/Df;Lcom/android/tools/r8/internal/EW$a;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/internal/ns0;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/sz1;

    invoke-direct {v1, p0}, Lcom/android/tools/r8/internal/sz1;-><init>(Lcom/android/tools/r8/internal/y70;)V

    invoke-interface {v0, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/O60;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .line 164
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/y70;->b(Ljava/util/concurrent/ExecutorService;)V

    const/4 v0, 0x0

    .line 165
    iput-object v0, p0, Lcom/android/tools/r8/internal/kB;->f:Lcom/android/tools/r8/internal/Sv;

    .line 166
    iget-object v0, p0, Lcom/android/tools/r8/internal/kB;->n:Lcom/android/tools/r8/ir/optimize/W;

    if-eqz v0, :cond_0

    .line 167
    iget-object v1, p0, Lcom/android/tools/r8/internal/y70;->I:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/tools/r8/ir/optimize/W;->a(Lcom/android/tools/r8/internal/O60;Lcom/android/tools/r8/internal/ns0;Ljava/util/concurrent/ExecutorService;)V

    .line 168
    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->H()Lcom/android/tools/r8/internal/nJ$p;

    move-result-object p2

    new-instance v0, Lcom/android/tools/r8/internal/fi1;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/fi1;-><init>(Lcom/android/tools/r8/internal/O60;)V

    .line 169
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/nJ$p;->a()Lcom/android/tools/r8/internal/Nm;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 170
    invoke-interface {v0, p1}, Lcom/android/tools/r8/internal/Wr0;->a(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final synthetic a(Lcom/android/tools/r8/internal/O60;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/l3;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/android/tools/r8/internal/y70;->I:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {p3, p0, p1, p2, v0}, Lcom/android/tools/r8/internal/l3;->a(Lcom/android/tools/r8/internal/y70;Lcom/android/tools/r8/internal/O60;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/m80;)V
    .locals 0

    .line 140
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/tools/r8/internal/kB;->B:Ljava/util/List;

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/m80;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    .line 141
    iget-object p2, p0, Lcom/android/tools/r8/internal/kB;->z:Lcom/android/tools/r8/internal/l40;

    iget-object v0, p0, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->m()Lcom/android/tools/r8/shaking/i;

    move-result-object v0

    .line 142
    iget-object p2, p2, Lcom/android/tools/r8/internal/l40;->b:Lcom/android/tools/r8/shaking/j;

    .line 143
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/shaking/j;->a(Lcom/android/tools/r8/shaking/i;)V

    .line 144
    iget-object p2, p0, Lcom/android/tools/r8/internal/kB;->z:Lcom/android/tools/r8/internal/l40;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/l40;->c()V

    .line 145
    iget-object p2, p0, Lcom/android/tools/r8/internal/kB;->f:Lcom/android/tools/r8/internal/Sv;

    if-eqz p2, :cond_0

    .line 146
    iget-object p2, p2, Lcom/android/tools/r8/internal/Sv;->b:Lcom/android/tools/r8/internal/Xv;

    if-eqz p2, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/tools/r8/internal/kB;->z:Lcom/android/tools/r8/internal/l40;

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/Xv;->a(Lcom/android/tools/r8/internal/m80;Lcom/android/tools/r8/internal/l40;)V

    .line 148
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    new-instance p2, Lcom/android/tools/r8/internal/uz1;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/uz1;-><init>()V

    .line 149
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->A:Lcom/android/tools/r8/internal/l3;

    if-eqz p1, :cond_1

    .line 150
    invoke-interface {p2, p1}, Lcom/android/tools/r8/internal/Wr0;->accept(Ljava/lang/Object;)V

    .line 151
    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->a0()Lcom/android/tools/r8/internal/nJ$n;

    move-result-object p1

    .line 152
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ$n;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 153
    iget-object p1, p0, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    .line 154
    iget-object p1, p1, Lcom/android/tools/r8/graph/y;->C:Lcom/android/tools/r8/internal/Oa0;

    .line 155
    iget-object p1, p1, Lcom/android/tools/r8/internal/Oa0;->g:Lcom/android/tools/r8/internal/ma0;

    .line 156
    iget-object p2, p1, Lcom/android/tools/r8/internal/ma0;->b:Ljava/util/IdentityHashMap;

    .line 157
    iget-object v0, p1, Lcom/android/tools/r8/internal/ma0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, v0}, Ljava/util/IdentityHashMap;->putAll(Ljava/util/Map;)V

    .line 158
    iget-object p1, p1, Lcom/android/tools/r8/internal/ma0;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 159
    :cond_2
    iget-object p1, p0, Lcom/android/tools/r8/internal/kB;->r:Lcom/android/tools/r8/internal/xu;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/xu;->a()V

    .line 160
    sget-boolean p1, Lcom/android/tools/r8/internal/y70;->J:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/tools/r8/internal/kB;->z:Lcom/android/tools/r8/internal/l40;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/l40;->b()V

    .line 161
    :cond_3
    iget-object p1, p0, Lcom/android/tools/r8/internal/kB;->B:Ljava/util/List;

    if-eqz p1, :cond_4

    .line 162
    new-instance p2, Lcom/android/tools/r8/internal/vz1;

    invoke-direct {p2}, Lcom/android/tools/r8/internal/vz1;-><init>()V

    invoke-interface {p1, p2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    const/4 p1, 0x0

    .line 163
    iput-object p1, p0, Lcom/android/tools/r8/internal/kB;->B:Ljava/util/List;

    :cond_4
    return-void
.end method

.method public final synthetic a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/l3;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/android/tools/r8/internal/y70;->I:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {p2, p1, v0}, Lcom/android/tools/r8/internal/l3;->a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/H2;)V
    .locals 1

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/oz1;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/oz1;-><init>()V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/E0;->g(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final b(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/y70;->I:Lcom/android/tools/r8/internal/ns0;

    const-string v1, "Create IR"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->M()Lcom/android/tools/r8/graph/y;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/tools/r8/internal/y70;->a(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/graph/x0;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/graph/x0;->a()Lcom/android/tools/r8/graph/g3;

    move-result-object p2

    .line 3
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    new-instance v1, Lcom/android/tools/r8/internal/tz1;

    invoke-direct {v1, p2}, Lcom/android/tools/r8/internal/tz1;-><init>(Lcom/android/tools/r8/graph/x0;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/j;->a(Ljava/util/function/Function;)Lcom/android/tools/r8/graph/j;

    move-result-object p2

    .line 4
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->L()Lcom/android/tools/r8/graph/y;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/graph/y;->b(Lcom/android/tools/r8/graph/h;)Lcom/android/tools/r8/graph/y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    iget-object p1, p0, Lcom/android/tools/r8/internal/y70;->I:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/android/tools/r8/internal/y70;->I:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 6
    throw p1
.end method

.method public final b(Ljava/util/concurrent/ExecutorService;)V
    .locals 3

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/internal/kB;->C:Lcom/android/tools/r8/graph/N5;

    .line 9
    iget-object v0, v0, Lcom/android/tools/r8/graph/M5;->c:Ljava/util/Map;

    .line 10
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/kB;->C:Lcom/android/tools/r8/graph/N5;

    .line 12
    iget-object v0, v0, Lcom/android/tools/r8/graph/M5;->g:Ljava/util/Set;

    .line 13
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 14
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/kB;->a:Lcom/android/tools/r8/graph/y;

    iget-object v1, p0, Lcom/android/tools/r8/internal/kB;->C:Lcom/android/tools/r8/graph/N5;

    .line 15
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->e()Lcom/android/tools/r8/graph/x0;

    move-result-object v2

    .line 16
    iput-object v2, v1, Lcom/android/tools/r8/graph/M5;->a:Lcom/android/tools/r8/graph/x0;

    .line 17
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/M5;->a()Lcom/android/tools/r8/graph/O5;

    move-result-object v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/y70;->I:Lcom/android/tools/r8/internal/ns0;

    .line 18
    invoke-virtual {v0, v1, p1, v2}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/O5;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/ns0;)V

    .line 19
    iget-object p1, p0, Lcom/android/tools/r8/internal/kB;->C:Lcom/android/tools/r8/graph/N5;

    .line 20
    iget-object p1, p1, Lcom/android/tools/r8/graph/M5;->c:Ljava/util/Map;

    .line 21
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 22
    iget-object p1, p0, Lcom/android/tools/r8/internal/kB;->C:Lcom/android/tools/r8/graph/N5;

    .line 23
    iget-object p1, p1, Lcom/android/tools/r8/graph/M5;->g:Ljava/util/Set;

    .line 24
    invoke-interface {p1}, Ljava/util/Set;->clear()V

    return-void
.end method
