.class public abstract Lcom/android/tools/r8/internal/L7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/fB;)Lcom/android/tools/r8/internal/S7;
    .locals 12

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->r2()I

    move-result v6

    const/4 v7, 0x5

    if-eq v6, v7, :cond_0

    const/16 v7, 0x18

    if-eq v6, v7, :cond_18

    const/16 v7, 0x21

    const/4 v8, 0x1

    if-eq v6, v7, :cond_12

    const/16 v7, 0x38

    if-eq v6, v7, :cond_e

    const/16 v7, 0x9

    if-eq v6, v7, :cond_0

    const/16 v7, 0xa

    if-eq v6, v7, :cond_1

    const/16 v7, 0x27

    if-eq v6, v7, :cond_12

    const/16 v7, 0x28

    if-eq v6, v7, :cond_12

    return-object v1

    :cond_1
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->D()Lcom/android/tools/r8/internal/jc;

    move-result-object v5

    if-nez v2, :cond_9

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/jc;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->H()Z

    move-result v7

    if-nez v7, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object v6, v6, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->v()Lcom/android/tools/r8/internal/k3;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/android/tools/r8/internal/k3;->b(Z)I

    move-result v6

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v8

    if-eqz v8, :cond_3

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->y()Z

    move-result v8

    if-nez v8, :cond_d

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->C()Z

    move-result v8

    if-nez v8, :cond_4

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->Z()Lcom/android/tools/r8/internal/zE;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->e0()Lcom/android/tools/r8/internal/VJ;

    move-result-object v8

    if-nez v8, :cond_5

    goto/16 :goto_1

    :cond_5
    iget-object v9, v8, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gt v9, v6, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/zE;->Q1()Z

    move-result v9

    invoke-static {v9}, Lcom/android/tools/r8/internal/o7;->a(Z)I

    move-result v9

    sub-int v9, v6, v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_7

    goto :goto_1

    :cond_7
    iget-object v10, v5, Lcom/android/tools/r8/internal/jc;->k:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object v11

    iget-object v11, v11, Lcom/android/tools/r8/graph/A2;->i:Lcom/android/tools/r8/graph/I2;

    iget-object v11, v11, Lcom/android/tools/r8/graph/I2;->f:Lcom/android/tools/r8/graph/O2;

    iget-object v11, v11, Lcom/android/tools/r8/graph/O2;->b:[Lcom/android/tools/r8/graph/M2;

    aget-object v9, v11, v9

    if-eq v10, v9, :cond_8

    goto :goto_1

    :cond_8
    invoke-virtual {v8, v6}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    if-eq v6, v7, :cond_b

    goto :goto_1

    :cond_9
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/jc;->n()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v9

    if-eqz v9, :cond_a

    goto :goto_1

    :cond_a
    if-ne v7, v6, :cond_d

    iget-object v6, v5, Lcom/android/tools/r8/internal/jc;->k:Lcom/android/tools/r8/graph/M2;

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/j1;->u1()Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    if-ne v6, v7, :cond_d

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->y()Z

    move-result v6

    if-nez v6, :cond_d

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->C()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/xw0;->Z()Lcom/android/tools/r8/internal/zE;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->g2()Z

    move-result v6

    if-eqz v6, :cond_d

    :cond_b
    if-eqz v2, :cond_0

    if-eqz v4, :cond_c

    return-object v1

    :cond_c
    move-object v4, v5

    goto/16 :goto_0

    :cond_d
    :goto_1
    return-object v1

    :cond_e
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->G0()Lcom/android/tools/r8/internal/yk0;

    move-result-object v5

    if-nez v2, :cond_f

    goto :goto_3

    :cond_f
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/yk0;->v2()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/yk0;->w2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    if-eqz v4, :cond_10

    move-object v6, v4

    goto :goto_2

    :cond_10
    move-object v6, v2

    :goto_2
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    if-ne v5, v6, :cond_11

    goto/16 :goto_0

    :cond_11
    :goto_3
    return-object v1

    :cond_12
    if-eqz v2, :cond_13

    return-object v1

    :cond_13
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->f0()Lcom/android/tools/r8/internal/WJ;

    move-result-object v2

    const/4 v5, 0x0

    :goto_4
    iget-object v6, v2, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    invoke-virtual {v2, v5}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v7

    if-nez v7, :cond_17

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->H()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/zE;->v()Lcom/android/tools/r8/internal/k3;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/android/tools/r8/internal/k3;->b(Z)I

    move-result v7

    if-eq v5, v7, :cond_14

    goto :goto_6

    :cond_14
    sget-boolean v7, Lcom/android/tools/r8/internal/L7;->a:Z

    if-nez v7, :cond_16

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->H()Z

    move-result v7

    if-nez v7, :cond_16

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->t1()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-virtual {v2, v5}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    sget-object v7, Lcom/android/tools/r8/internal/D4;->a:Lcom/android/tools/r8/internal/D4;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v9, Lcom/android/tools/r8/internal/d70;->c:Lcom/android/tools/r8/internal/a70;

    invoke-virtual {v6, v7, v9}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/e2;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->H()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-virtual {v2, v5}, Lcom/android/tools/r8/internal/NJ;->b(I)Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6, v7, v9}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/e2;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->r()Lcom/android/tools/r8/internal/zE;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->v()Lcom/android/tools/r8/internal/k3;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/android/tools/r8/internal/k3;->b(Z)I

    move-result v6

    if-ne v6, v5, :cond_15

    goto :goto_5

    :cond_15
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_16
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_17
    :goto_6
    return-object v1

    :cond_18
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->U()Lcom/android/tools/r8/internal/Bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Bz;->v2()Lcom/android/tools/r8/internal/W5;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->z()Z

    move-result v6

    if-eqz v6, :cond_19

    return-object v1

    :cond_19
    if-nez v3, :cond_1c

    sget-boolean v3, Lcom/android/tools/r8/internal/L7;->a:Z

    if-nez v3, :cond_1b

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_7

    :cond_1a
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1b
    :goto_7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object v0

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1c
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    return-object v1

    :cond_1d
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v0

    goto/16 :goto_0

    :cond_1e
    sget-boolean p0, Lcom/android/tools/r8/internal/L7;->a:Z

    if-nez p0, :cond_20

    if-eqz v2, :cond_1f

    goto :goto_8

    :cond_1f
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_20
    :goto_8
    if-nez p0, :cond_22

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->O1()Z

    move-result p0

    if-nez p0, :cond_22

    instance-of p0, v2, Lcom/android/tools/r8/internal/hK;

    if-nez p0, :cond_22

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/zE;->T1()Z

    move-result p0

    if-eqz p0, :cond_21

    goto :goto_9

    :cond_21
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_22
    :goto_9
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/NJ;->w2()Lcom/android/tools/r8/internal/kK;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_25

    const/4 p1, 0x3

    if-eq p0, p1, :cond_24

    const/4 p1, 0x4

    if-ne p0, p1, :cond_23

    new-instance p0, Lcom/android/tools/r8/internal/ox0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/tools/r8/internal/ox0;-><init>(Lcom/android/tools/r8/graph/A2;)V

    return-object p0

    :cond_23
    new-instance p0, Lcom/android/tools/r8/internal/Jv0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Jv0;-><init>()V

    throw p0

    :cond_24
    new-instance p0, Lcom/android/tools/r8/internal/Tq0;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Tq0;-><init>()V

    return-object p0

    :cond_25
    new-instance p0, Lcom/android/tools/r8/internal/Ts;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/VJ;->B2()Lcom/android/tools/r8/graph/A2;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ts;-><init>()V

    return-object p0
.end method
