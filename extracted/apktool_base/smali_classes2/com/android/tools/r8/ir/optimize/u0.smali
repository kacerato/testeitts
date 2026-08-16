.class public abstract Lcom/android/tools/r8/ir/optimize/u0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/Y5;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/ir/optimize/a;)Ljava/util/function/BiConsumer;
    .locals 8

    .line 106
    new-instance v7, Lv/w1;

    move-object v0, v7

    move-object v1, p4

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p5

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lv/w1;-><init>(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/ir/optimize/a;Lcom/android/tools/r8/internal/Z5;)V

    return-object v7
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)V
    .locals 13

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v2, v1, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    .line 3
    instance-of v2, v2, Lcom/android/tools/r8/ClassFileConsumer;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    move v0, v3

    goto/16 :goto_6

    .line 4
    :cond_0
    iget-object v2, v0, Lcom/android/tools/r8/shaking/i;->I:Lcom/android/tools/r8/internal/Ib;

    if-nez v2, :cond_6

    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v2, v0, Lcom/android/tools/r8/shaking/i;->I:Lcom/android/tools/r8/internal/Ib;

    if-eqz v2, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/graph/H2;

    .line 8
    iget-object v5, v4, Lcom/android/tools/r8/graph/H2;->v:Lcom/android/tools/r8/internal/Ib;

    if-eqz v5, :cond_2

    .line 9
    iget-object v5, v0, Lcom/android/tools/r8/shaking/i;->I:Lcom/android/tools/r8/internal/Ib;

    .line 10
    invoke-virtual {v4}, Lcom/android/tools/r8/graph/H2;->G1()Lcom/android/tools/r8/internal/Ib;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/tools/r8/internal/C40;->b(Lcom/android/tools/r8/internal/C40;Lcom/android/tools/r8/internal/C40;)Lcom/android/tools/r8/internal/C40;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/Ib;

    iput-object v4, v0, Lcom/android/tools/r8/shaking/i;->I:Lcom/android/tools/r8/internal/Ib;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 11
    :cond_3
    sget-boolean v2, Lcom/android/tools/r8/shaking/i;->J:Z

    if-nez v2, :cond_5

    iget-object v2, v0, Lcom/android/tools/r8/shaking/i;->I:Lcom/android/tools/r8/internal/Ib;

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :goto_1
    monitor-exit v0

    goto :goto_3

    .line 12
    :goto_2
    monitor-exit v0

    throw p0

    .line 13
    :cond_6
    :goto_3
    iget-object v0, v0, Lcom/android/tools/r8/shaking/i;->I:Lcom/android/tools/r8/internal/Ib;

    .line 14
    sget-boolean v2, Lcom/android/tools/r8/internal/nJ;->h2:Z

    if-nez v2, :cond_8

    .line 15
    iget-object v4, v1, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    instance-of v4, v4, Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz v4, :cond_7

    goto :goto_4

    .line 16
    :cond_7
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_8
    :goto_4
    if-nez v2, :cond_a

    .line 17
    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    instance-of v1, v1, Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz v1, :cond_9

    goto :goto_5

    .line 18
    :cond_9
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 19
    :cond_a
    :goto_5
    sget-object v1, Lcom/android/tools/r8/internal/Ib;->f:Lcom/android/tools/r8/internal/Ib;

    .line 20
    invoke-interface {v0, v1}, Lcom/android/tools/r8/internal/C40;->d(Lcom/android/tools/r8/internal/C40;)Z

    move-result v0

    :goto_6
    if-nez v0, :cond_b

    goto/16 :goto_c

    .line 21
    :cond_b
    new-instance v0, Lcom/android/tools/r8/ir/optimize/a;

    invoke-direct {v0}, Lcom/android/tools/r8/ir/optimize/a;-><init>()V

    .line 22
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v1

    .line 23
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->u()Lcom/android/tools/r8/internal/Z5;

    move-result-object v2

    .line 24
    :cond_c
    iget-object v4, v2, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    .line 25
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 26
    iget-object v4, v2, Lcom/android/tools/r8/internal/Z5;->b:Ljava/util/ListIterator;

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/W5;

    iput-object v4, v2, Lcom/android/tools/r8/internal/Z5;->c:Lcom/android/tools/r8/internal/W5;

    .line 27
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v10

    .line 28
    :cond_d
    :goto_7
    invoke-interface {v10}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 29
    new-instance v4, Lv/v1;

    invoke-direct {v4}, Lv/v1;-><init>()V

    invoke-interface {v10, v4}, Lcom/android/tools/r8/internal/GZ;->a(Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lcom/android/tools/r8/internal/VJ;

    if-nez v8, :cond_e

    goto :goto_7

    .line 30
    :cond_e
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->R1()Z

    move-result v4

    const/4 v11, 0x0

    if-eqz v4, :cond_1e

    .line 31
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->i0()Lcom/android/tools/r8/internal/gK;

    move-result-object v12

    move-object v4, p0

    move-object v5, p1

    move-object v6, v2

    move-object v7, v10

    move-object v9, v0

    .line 32
    invoke-static/range {v4 .. v9}, Lcom/android/tools/r8/ir/optimize/u0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/Y5;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/ir/optimize/a;)Ljava/util/function/BiConsumer;

    move-result-object v4

    .line 33
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v5

    .line 34
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    .line 35
    iget-object v7, v5, Lcom/android/tools/r8/graph/u1;->O4:Lcom/android/tools/r8/graph/G1;

    iget-object v7, v7, Lcom/android/tools/r8/graph/G1;->b:Lcom/android/tools/r8/graph/A2;

    if-eq v6, v7, :cond_f

    goto :goto_7

    .line 36
    :cond_f
    sget-boolean v6, Lcom/android/tools/r8/ir/optimize/u0;->a:Z

    if-nez v6, :cond_11

    .line 37
    iget-object v7, v12, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v3, :cond_10

    goto :goto_8

    :cond_10
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 39
    :cond_11
    :goto_8
    invoke-virtual {v12, v11}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    .line 40
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v8

    if-nez v8, :cond_d

    invoke-interface {v7}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v8

    if-eqz v8, :cond_12

    goto :goto_7

    .line 41
    :cond_12
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result v8

    if-eqz v8, :cond_13

    invoke-virtual {v12}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v8

    if-eqz v8, :cond_13

    goto :goto_7

    .line 42
    :cond_13
    iget-object v8, v7, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    instance-of v8, v8, Lcom/android/tools/r8/internal/uq;

    const/4 v9, 0x0

    if-eqz v8, :cond_14

    .line 44
    iget-object v8, v7, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->O()Lcom/android/tools/r8/internal/uq;

    move-result-object v8

    .line 45
    iget-object v8, v8, Lcom/android/tools/r8/internal/uq;->l:Lcom/android/tools/r8/graph/J2;

    .line 46
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    instance-of v8, v8, Lcom/android/tools/r8/graph/M2;

    if-eqz v8, :cond_18

    .line 48
    iget-object v7, v7, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->O()Lcom/android/tools/r8/internal/uq;

    move-result-object v7

    .line 49
    iget-object v7, v7, Lcom/android/tools/r8/internal/uq;->l:Lcom/android/tools/r8/graph/J2;

    .line 50
    invoke-virtual {v7}, Lcom/android/tools/r8/graph/J2;->o0()Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    goto :goto_9

    .line 51
    :cond_14
    iget-object v8, v7, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->x1()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 52
    iget-object v7, v7, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->K()Lcom/android/tools/r8/internal/vh;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/vh;->u2()Lcom/android/tools/r8/graph/L2;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/graph/L2;->toString()Ljava/lang/String;

    move-result-object v7

    .line 53
    invoke-static {v7}, Lcom/android/tools/r8/internal/Bl;->E(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 54
    invoke-static {v7}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_15
    const/16 v8, 0x2e

    if-nez v9, :cond_16

    .line 55
    const-string v11, "["

    invoke-virtual {v7, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_16

    const-string v11, ";"

    invoke-virtual {v7, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_16

    const/16 v9, 0x2f

    .line 56
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    :cond_16
    if-eqz v9, :cond_d

    .line 57
    invoke-virtual {v9, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-lez v7, :cond_17

    goto/16 :goto_7

    .line 58
    :cond_17
    invoke-virtual {v5, v9}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v9

    .line 59
    invoke-virtual {v9}, Lcom/android/tools/r8/graph/M2;->Q0()Z

    move-result v7

    if-nez v7, :cond_18

    goto/16 :goto_7

    :cond_18
    :goto_9
    if-nez v9, :cond_19

    goto/16 :goto_7

    .line 60
    :cond_19
    invoke-virtual {v9, v5}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 61
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v7, v5}, Lcom/android/tools/r8/graph/h;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 62
    invoke-virtual {v5, p0}, Lcom/android/tools/r8/graph/E0;->d(Lcom/android/tools/r8/graph/y;)Z

    move-result v7

    if-nez v7, :cond_1a

    goto/16 :goto_7

    .line 63
    :cond_1a
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v7

    check-cast v7, Lcom/android/tools/r8/shaking/i;

    .line 64
    iget-object v7, v7, Lcom/android/tools/r8/graph/h;->b:Lcom/android/tools/r8/internal/Zd;

    .line 65
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/graph/j;

    invoke-static {v5, v1, p0, v8}, Lcom/android/tools/r8/graph/e;->a(Lcom/android/tools/r8/graph/E0;Lcom/android/tools/r8/graph/o0;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/j;)Lcom/android/tools/r8/internal/t40;

    move-result-object v8

    .line 66
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/f7;->b()Z

    move-result v8

    if-eqz v8, :cond_1b

    goto/16 :goto_7

    :cond_1b
    if-nez v6, :cond_1d

    .line 67
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 68
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/b1;->d0()Lcom/android/tools/r8/graph/H2;

    move-result-object v6

    .line 69
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    iget-object v8, p0, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    .line 71
    invoke-virtual {v8}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v8

    .line 72
    invoke-virtual {v6}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    .line 73
    invoke-virtual {v7, v6, v8}, Lcom/android/tools/r8/internal/Zd;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/synthesis/J;)Lcom/android/tools/r8/FeatureSplit;

    move-result-object v6

    .line 74
    invoke-virtual {v6}, Lcom/android/tools/r8/FeatureSplit;->isBase()Z

    move-result v11

    if-nez v11, :cond_1d

    .line 75
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/G0;->q()Lcom/android/tools/r8/graph/v2;

    move-result-object v11

    .line 76
    invoke-virtual {v7, v11, v8}, Lcom/android/tools/r8/internal/Zd;->a(Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/synthesis/J;)Lcom/android/tools/r8/FeatureSplit;

    move-result-object v7

    if-ne v6, v7, :cond_1c

    goto :goto_a

    .line 77
    :cond_1c
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 78
    :cond_1d
    :goto_a
    invoke-interface {v4, v9, v5}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 79
    :cond_1e
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->k0()Lcom/android/tools/r8/internal/mK;

    move-result-object v12

    move-object v4, p0

    move-object v5, p1

    move-object v6, v2

    move-object v7, v10

    move-object v9, v0

    .line 80
    invoke-static/range {v4 .. v9}, Lcom/android/tools/r8/ir/optimize/u0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/Y5;Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/ir/optimize/a;)Ljava/util/function/BiConsumer;

    move-result-object v4

    .line 81
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v5

    .line 82
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    .line 83
    iget-object v7, v5, Lcom/android/tools/r8/graph/u1;->F4:Lcom/android/tools/r8/graph/u1$c;

    iget-object v7, v7, Lcom/android/tools/r8/graph/u1$c;->d:Lcom/android/tools/r8/graph/A2;

    if-eq v6, v7, :cond_1f

    goto/16 :goto_7

    .line 84
    :cond_1f
    invoke-virtual {v12}, Lcom/android/tools/r8/internal/WJ;->C2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    .line 85
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v7

    if-eqz v7, :cond_20

    goto/16 :goto_7

    .line 86
    :cond_20
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v7

    .line 87
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v8

    if-nez v8, :cond_21

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/pu0;->r()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 88
    :cond_21
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/pu0;->v()Z

    move-result v8

    if-eqz v8, :cond_22

    goto/16 :goto_7

    .line 89
    :cond_22
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/pu0;->s()Z

    move-result v8

    if-eqz v8, :cond_23

    .line 90
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/pu0;->b()Lcom/android/tools/r8/internal/de;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/de;->E()Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    goto :goto_b

    .line 91
    :cond_23
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/pu0;->a()Lcom/android/tools/r8/internal/W3;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/android/tools/r8/internal/W3;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    .line 92
    :goto_b
    invoke-virtual {v7, v5}, Lcom/android/tools/r8/graph/M2;->a(Lcom/android/tools/r8/graph/u1;)Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 93
    invoke-virtual {v5}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v8

    if-nez v8, :cond_24

    goto/16 :goto_7

    .line 94
    :cond_24
    invoke-virtual {p0, v5}, Lcom/android/tools/r8/graph/y;->g(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/E0;

    move-result-object v8

    invoke-static {v8}, Lcom/android/tools/r8/graph/H2;->a(Lcom/android/tools/r8/graph/E0;)Lcom/android/tools/r8/graph/H2;

    move-result-object v8

    if-nez v8, :cond_25

    goto/16 :goto_7

    .line 95
    :cond_25
    invoke-virtual {v8, p0}, Lcom/android/tools/r8/graph/H2;->c(Lcom/android/tools/r8/graph/y;)Z

    move-result v9

    if-nez v9, :cond_26

    .line 96
    invoke-interface {v6}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v9

    if-nez v9, :cond_d

    iget-object v6, v6, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->z1()Z

    move-result v6

    if-nez v6, :cond_26

    goto/16 :goto_7

    .line 97
    :cond_26
    invoke-static {p0, v5, v1}, Lcom/android/tools/r8/ir/optimize/O;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/ir/optimize/O;

    move-result-object v5

    .line 98
    iget-object v5, v5, Lcom/android/tools/r8/ir/optimize/O;->a:Lcom/android/tools/r8/ir/optimize/N;

    .line 99
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    sget-object v6, Lcom/android/tools/r8/ir/optimize/N;->c:Lcom/android/tools/r8/ir/optimize/N;

    if-ne v5, v6, :cond_27

    move v11, v3

    :cond_27
    if-eqz v11, :cond_28

    goto/16 :goto_7

    .line 101
    :cond_28
    invoke-interface {v4, v7, v8}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 102
    :cond_29
    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/tools/r8/ir/optimize/a;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/function/Consumer;)V

    .line 103
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->x()V

    .line 104
    sget-boolean v0, Lcom/android/tools/r8/ir/optimize/u0;->a:Z

    if-nez v0, :cond_2b

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/fB;->b(Lcom/android/tools/r8/graph/y;)Z

    move-result p0

    if-eqz p0, :cond_2a

    goto :goto_c

    :cond_2a
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_2b
    :goto_c
    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/VJ;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/EE;Lcom/android/tools/r8/ir/optimize/a;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/E0;)V
    .locals 8

    .line 107
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    iget-object v1, v1, Lcom/android/tools/r8/graph/u1;->O4:Lcom/android/tools/r8/graph/G1;

    iget-object v1, v1, Lcom/android/tools/r8/graph/G1;->b:Lcom/android/tools/r8/graph/A2;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/graph/A2;->c(Lcom/android/tools/r8/graph/A2;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 108
    invoke-virtual {p7}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/shaking/i;

    .line 110
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->f()Lcom/android/tools/r8/shaking/o2;

    move-result-object v0

    .line 111
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v2

    invoke-virtual {p7}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 112
    iget-object v4, p1, Lcom/android/tools/r8/graph/y;->a:Lcom/android/tools/r8/graph/h;

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/h;->g()Lcom/android/tools/r8/synthesis/J;

    move-result-object v4

    .line 113
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/tools/r8/shaking/o2;->a(Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/graph/J2;Lcom/android/tools/r8/synthesis/J;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 114
    :cond_0
    invoke-virtual {p6}, Lcom/android/tools/r8/graph/M2;->I0()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    invoke-virtual {p7, p1, v0}, Lcom/android/tools/r8/graph/E0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/o0;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    invoke-virtual {p7}, Lcom/android/tools/r8/graph/b1;->e0()Z

    move-result p7

    if-eqz p7, :cond_8

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->i()Z

    move-result p7

    if-nez p7, :cond_1

    goto/16 :goto_2

    .line 117
    :cond_1
    sget-boolean p7, Lcom/android/tools/r8/internal/sD;->l:Z

    .line 118
    new-instance p7, Lcom/android/tools/r8/internal/rD;

    invoke-direct {p7}, Lcom/android/tools/r8/internal/rD;-><init>()V

    .line 119
    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->k()Lcom/android/tools/r8/internal/uI;

    move-result-object v0

    .line 120
    invoke-interface {p2, v0, v1}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v0

    .line 121
    iput-object v0, p7, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    .line 122
    iput-object p6, p7, Lcom/android/tools/r8/internal/rD;->d:Lcom/android/tools/r8/graph/M2;

    .line 123
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v0

    .line 124
    iput-object v0, p7, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    .line 125
    new-instance v1, Lcom/android/tools/r8/internal/sD;

    iget-object v0, p7, Lcom/android/tools/r8/internal/sE;->a:Lcom/android/tools/r8/internal/xw0;

    iget-object v2, p7, Lcom/android/tools/r8/internal/rD;->d:Lcom/android/tools/r8/graph/M2;

    invoke-direct {v1, v2, v0}, Lcom/android/tools/r8/internal/sD;-><init>(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/xw0;)V

    .line 126
    iget-object p7, p7, Lcom/android/tools/r8/internal/sE;->b:Lcom/android/tools/r8/internal/B60;

    if-eqz p7, :cond_2

    .line 127
    invoke-virtual {v1, p7}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    .line 128
    :cond_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->e1()Z

    move-result p7

    if-eqz p7, :cond_9

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object p7

    invoke-virtual {p7}, Lcom/android/tools/r8/internal/xw0;->w()Z

    move-result p7

    if-nez p7, :cond_3

    goto :goto_3

    .line 129
    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object p7

    .line 130
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->q()Lcom/android/tools/r8/graph/j0;

    move-result-object v6

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, p6

    move-object v7, p4

    .line 131
    invoke-interface/range {v2 .. v7}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/j0;Lcom/android/tools/r8/ir/optimize/a;)V

    if-eqz v1, :cond_5

    .line 132
    invoke-virtual {p7}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 133
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p0

    invoke-interface {p3, p2, p5, p0}, Lcom/android/tools/r8/internal/EE;->a(Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/Z5;Lcom/android/tools/r8/internal/nJ;)Lcom/android/tools/r8/internal/W5;

    move-result-object p0

    .line 134
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object p0

    .line 135
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Y5;->f(Lcom/android/tools/r8/internal/zE;)V

    goto :goto_0

    .line 136
    :cond_4
    invoke-interface {p3, v1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 137
    :cond_5
    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p0

    .line 138
    iget-object p0, p0, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    .line 139
    instance-of p0, p0, Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz p0, :cond_8

    .line 140
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/fB;->v()Lcom/android/tools/r8/graph/j1;

    move-result-object p0

    .line 141
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p1

    .line 142
    sget-boolean p2, Lcom/android/tools/r8/internal/nJ;->h2:Z

    if-nez p2, :cond_7

    .line 143
    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->l:Lcom/android/tools/r8/ProgramConsumer;

    .line 144
    instance-of p1, p1, Lcom/android/tools/r8/ClassFileConsumer;

    if-eqz p1, :cond_6

    goto :goto_1

    .line 145
    :cond_6
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 146
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 147
    :goto_1
    sget-object p1, Lcom/android/tools/r8/internal/Ib;->f:Lcom/android/tools/r8/internal/Ib;

    .line 148
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/graph/j1;->a(Lcom/android/tools/r8/internal/Ib;)V

    :cond_8
    :goto_2
    return-void

    :cond_9
    :goto_3
    if-eqz v1, :cond_a

    .line 149
    invoke-interface {p3, v1}, Lcom/android/tools/r8/internal/EE;->b(Lcom/android/tools/r8/internal/zE;)V

    return-void

    .line 150
    :cond_a
    invoke-interface {p3}, Lcom/android/tools/r8/internal/EE;->i()V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/zE;)Z
    .locals 1

    .line 105
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->R1()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->T1()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
