.class public abstract Lcom/android/tools/r8/internal/Ow0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/tools/r8/internal/oZ;ILcom/android/tools/r8/internal/zE;Z)Lcom/android/tools/r8/internal/Nw0;
    .locals 8

    .line 12
    new-array v0, p1, [Lcom/android/tools/r8/internal/T3;

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v1

    .line 14
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v2

    .line 15
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/xw0;->b0()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/zE;

    .line 16
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->A()Lcom/android/tools/r8/internal/T3;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 17
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    if-eq v7, v1, :cond_0

    goto :goto_2

    .line 18
    :cond_0
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/T3;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    if-ne v7, v1, :cond_1

    return-object v5

    .line 19
    :cond_1
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v4

    if-ne v4, v2, :cond_2

    goto :goto_0

    .line 20
    :cond_2
    invoke-virtual {v6, p1}, Lcom/android/tools/r8/internal/J3;->b(I)I

    move-result v4

    if-ltz v4, :cond_4

    .line 21
    aget-object v7, v0, v4

    if-eqz v7, :cond_3

    goto :goto_1

    .line 22
    :cond_3
    aput-object v6, v0, v4

    goto :goto_0

    :cond_4
    :goto_1
    return-object v5

    :cond_5
    :goto_2
    if-ne v4, p2, :cond_6

    goto :goto_0

    :cond_6
    if-eqz p3, :cond_7

    goto :goto_0

    :cond_7
    return-object v5

    .line 23
    :cond_8
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object p0

    sget-object p3, Lcom/android/tools/r8/internal/at;->a:Lcom/android/tools/r8/internal/at;

    const/4 p3, 0x1

    if-ne p0, v2, :cond_9

    .line 24
    new-instance v3, Lcom/android/tools/r8/internal/Ys;

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-direct {v3, p0}, Lcom/android/tools/r8/internal/Ys;-><init>(Ljava/util/Set;)V

    goto/16 :goto_4

    .line 25
    :cond_9
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v3

    .line 26
    invoke-interface {v3, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_a
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->D()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 28
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->y()Lcom/android/tools/r8/internal/W5;

    move-result-object p0

    .line 29
    invoke-interface {v3, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 30
    sget-boolean p0, Lcom/android/tools/r8/internal/Xs;->a:Z

    if-eqz p0, :cond_b

    .line 31
    sget-object v3, Lcom/android/tools/r8/internal/at;->a:Lcom/android/tools/r8/internal/at;

    goto/16 :goto_4

    .line 32
    :cond_b
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_c
    if-ne p0, v2, :cond_a

    .line 33
    new-instance p0, Lcom/android/tools/r8/internal/Ys;

    invoke-direct {p0, v3}, Lcom/android/tools/r8/internal/Ys;-><init>(Ljava/util/Set;)V

    :goto_3
    move-object v3, p0

    goto :goto_4

    .line 34
    :cond_d
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 35
    sget-object v3, Lcom/android/tools/r8/internal/at;->a:Lcom/android/tools/r8/internal/at;

    goto :goto_4

    .line 36
    :cond_e
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v4, v2

    .line 37
    :cond_f
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->B()Z

    move-result v6

    if-eqz v6, :cond_12

    .line 38
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->x()Lcom/android/tools/r8/internal/W5;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/W5;->v()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, p3, :cond_12

    .line 39
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->x()Lcom/android/tools/r8/internal/W5;

    move-result-object v4

    .line 40
    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f

    if-ne p0, v4, :cond_10

    .line 41
    new-instance p0, Lcom/android/tools/r8/internal/Ys;

    invoke-direct {p0, v3}, Lcom/android/tools/r8/internal/Ys;-><init>(Ljava/util/Set;)V

    goto :goto_3

    .line 42
    :cond_10
    sget-boolean p0, Lcom/android/tools/r8/internal/Xs;->a:Z

    if-eqz p0, :cond_11

    .line 43
    sget-object v3, Lcom/android/tools/r8/internal/at;->a:Lcom/android/tools/r8/internal/at;

    goto :goto_4

    .line 44
    :cond_11
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 45
    :cond_12
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/W5;->u()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_13

    .line 46
    sget-object v3, Lcom/android/tools/r8/internal/at;->a:Lcom/android/tools/r8/internal/at;

    goto :goto_4

    .line 47
    :cond_13
    new-instance v6, Lcom/android/tools/r8/internal/Zs;

    invoke-direct {v6, p0, v4, v3}, Lcom/android/tools/r8/internal/Zs;-><init>(Lcom/android/tools/r8/internal/W5;Lcom/android/tools/r8/internal/W5;Ljava/util/Set;)V

    move-object v3, v6

    :goto_4
    add-int/lit8 p0, p1, -0x1

    :goto_5
    if-ltz p0, :cond_15

    .line 48
    aget-object v4, v0, p0

    if-eqz v4, :cond_14

    .line 49
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->b()Lcom/android/tools/r8/internal/W5;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/tools/r8/internal/at;->b(Lcom/android/tools/r8/internal/W5;)Z

    move-result v4

    if-nez v4, :cond_14

    return-object v5

    :cond_14
    add-int/lit8 p0, p0, -0x1

    goto :goto_5

    .line 50
    :cond_15
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/W5;->l()Lcom/android/tools/r8/internal/CE;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/CE;->c()Lcom/android/tools/r8/internal/Y5;

    move-result-object p0

    const/4 v2, 0x0

    :cond_16
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/zE;

    if-ne v3, p2, :cond_17

    move v2, p3

    goto :goto_6

    .line 51
    :cond_17
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/zE;->A()Lcom/android/tools/r8/internal/T3;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 52
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    if-eq v4, v1, :cond_18

    goto :goto_6

    :cond_18
    if-eqz v2, :cond_19

    return-object v5

    .line 53
    :cond_19
    invoke-virtual {v3, p1}, Lcom/android/tools/r8/internal/J3;->b(I)I

    move-result v4

    if-gez v4, :cond_1a

    return-object v5

    .line 54
    :cond_1a
    aget-object v6, v0, v4

    if-eqz v6, :cond_1b

    return-object v5

    .line 55
    :cond_1b
    aput-object v3, v0, v4

    goto :goto_6

    .line 56
    :cond_1c
    new-instance p0, Lcom/android/tools/r8/internal/Nw0;

    invoke-direct {p0, v1, v0}, Lcom/android/tools/r8/internal/Nw0;-><init>(Lcom/android/tools/r8/internal/xw0;[Lcom/android/tools/r8/internal/T3;)V

    return-object p0
.end method

.method public static a(Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/VJ;)Lcom/android/tools/r8/internal/Nw0;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/pu0;->r()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->y()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-interface {p0}, Lcom/android/tools/r8/internal/GE;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/xw0;->c:Lcom/android/tools/r8/internal/zE;

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->t0()Lcom/android/tools/r8/internal/oZ;

    move-result-object v2

    .line 5
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/zE;->u0()Lcom/android/tools/r8/internal/qZ;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->C()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Lcom/android/tools/r8/internal/Nw0;

    .line 8
    iget-object v0, v0, Lcom/android/tools/r8/internal/zE;->f:Ljava/util/ArrayList;

    .line 9
    invoke-direct {p1, p0, v0}, Lcom/android/tools/r8/internal/Nw0;-><init>(Lcom/android/tools/r8/internal/xw0;Ljava/util/ArrayList;)V

    return-object p1

    :cond_2
    :goto_0
    return-object v1

    :cond_3
    if-nez v2, :cond_4

    return-object v1

    .line 10
    :cond_4
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/oZ;->u2()I

    move-result p0

    if-ltz p0, :cond_6

    const v0, 0x186a0

    if-le p0, v0, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    .line 11
    invoke-static {v2, p0, p1, v0}, Lcom/android/tools/r8/internal/Ow0;->a(Lcom/android/tools/r8/internal/oZ;ILcom/android/tools/r8/internal/zE;Z)Lcom/android/tools/r8/internal/Nw0;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_1
    return-object v1
.end method
