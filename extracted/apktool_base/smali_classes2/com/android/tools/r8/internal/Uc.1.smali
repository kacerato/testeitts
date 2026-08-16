.class public abstract Lcom/android/tools/r8/internal/Uc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)I
    .locals 8

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v0

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->q()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->o1()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->A()Lcom/android/tools/r8/internal/T3;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/J3;->u2()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->i()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    new-instance v7, Lcom/android/tools/r8/internal/YW0;

    invoke-direct {v7}, Lcom/android/tools/r8/internal/YW0;-><init>()V

    invoke-virtual {v6, v7}, Lcom/android/tools/r8/internal/xw0;->d(Ljava/util/function/Predicate;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    move-result-object v6

    sget-object v7, Lcom/android/tools/r8/internal/yE;->a:Lcom/android/tools/r8/internal/yE;

    invoke-virtual {v4, p0, v0, v6, v7}, Lcom/android/tools/r8/internal/T3;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_1
    return v5

    :cond_2
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->a2()Z

    move-result v6

    if-nez v6, :cond_8

    instance-of v6, v4, Lcom/android/tools/r8/internal/oZ;

    if-nez v6, :cond_8

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->b2()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->e()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->L0()Lcom/android/tools/r8/internal/No0;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/shaking/i;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/hw;->getField()Lcom/android/tools/r8/graph/l1;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/tools/r8/graph/j;->c(Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/graph/D3;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/D3;->q()Lcom/android/tools/r8/graph/g1;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/android/tools/r8/graph/h1;->B0()Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/G0;->p()Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    if-ne v6, v7, :cond_5

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    move-result-object v6

    sget-object v7, Lcom/android/tools/r8/internal/yE;->a:Lcom/android/tools/r8/internal/yE;

    invoke-virtual {v4, p0, v0, v6, v7}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/No0;->value()Lcom/android/tools/r8/internal/xw0;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v3, v5

    goto/16 :goto_0

    :cond_5
    :goto_1
    return v5

    :cond_6
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/u1;)Z

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Lcom/android/tools/r8/internal/yE;->c:Lcom/android/tools/r8/internal/uE;

    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    move-result-object v7

    invoke-virtual {v4, p0, v0, v7, v6}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v5

    :cond_7
    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    move-result-object v6

    sget-object v7, Lcom/android/tools/r8/internal/yE;->a:Lcom/android/tools/r8/internal/yE;

    invoke-virtual {v4, p0, v0, v6, v7}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v5

    :cond_8
    :goto_2
    invoke-static {p0, v0}, Lcom/android/tools/r8/internal/M1;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/M1;

    move-result-object v6

    sget-object v7, Lcom/android/tools/r8/internal/yE;->a:Lcom/android/tools/r8/internal/yE;

    invoke-virtual {v4, p0, v0, v6, v7}, Lcom/android/tools/r8/internal/zE;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/M1;Lcom/android/tools/r8/internal/yE;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v5

    :cond_9
    if-eqz v3, :cond_a

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/tools/r8/internal/XE0;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/XE0;-><init>(Ljava/util/Set;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/fB;->a(Ljava/util/function/Consumer;)Z

    move-result v0

    if-eqz v0, :cond_a

    return v5

    :cond_a
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Lcom/android/tools/r8/internal/Hw0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/Hw0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Hw0;->a(Ljava/util/Set;)Z

    move-result p0

    if-eqz p0, :cond_b

    return v5

    :cond_b
    const/4 p0, 0x2

    return p0

    :cond_c
    const/4 p0, 0x3

    return p0
.end method
