.class public abstract Lcom/android/tools/r8/internal/v3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/jg;)V
    .locals 11

    new-instance v0, Lcom/android/tools/r8/ir/optimize/a;

    invoke-direct {v0}, Lcom/android/tools/r8/ir/optimize/a;-><init>()V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/W5;->I()Lcom/android/tools/r8/internal/Y5;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->v()Lcom/android/tools/r8/internal/k3;

    move-result-object v4

    if-nez v4, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->z()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/k3;->b(Z)I

    move-result v6

    invoke-virtual {p2, v6}, Lcom/android/tools/r8/internal/jg;->a(I)Lcom/android/tools/r8/internal/F1;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/F1;->r()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/F1;->w()Lcom/android/tools/r8/internal/Pm0;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v8

    invoke-virtual {v6, p0, v8}, Lcom/android/tools/r8/internal/Pm0;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v5

    invoke-virtual {v6, p0, v5, p1, v4}, Lcom/android/tools/r8/internal/Pm0;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/zw0;Lcom/android/tools/r8/internal/DV;)[Lcom/android/tools/r8/internal/zE;

    move-result-object v4

    invoke-static {v4}, Lcom/android/tools/r8/internal/X3;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v5

    invoke-virtual {v7, v5, v0}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    invoke-static {v2, v4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/pu0;->y()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v4, v5}, Lcom/android/tools/r8/internal/k3;->b(Z)I

    move-result v5

    invoke-virtual {p2, v5}, Lcom/android/tools/r8/internal/jg;->b(I)Lcom/android/tools/r8/internal/xt;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xt;->l()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xt;->g()Z

    move-result v6

    if-eqz v6, :cond_6

    sget-boolean v4, Lcom/android/tools/r8/internal/v3;->a:Z

    if-eqz v4, :cond_5

    goto :goto_0

    :cond_5
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_6
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xt;->d()Lcom/android/tools/r8/internal/p10;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/p10;->e()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static {}, Lcom/android/tools/r8/internal/pu0;->m()Lcom/android/tools/r8/internal/ae0;

    move-result-object v5

    const-wide/16 v8, 0x0

    invoke-virtual {p1, v8, v9, v5}, Lcom/android/tools/r8/internal/fB;->a(JLcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/qh;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-virtual {v7, v4, v0}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xt;->j()Z

    move-result v6

    const/4 v8, 0x0

    if-eqz v6, :cond_8

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/pu0;->t()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/pu0;->d()Lcom/android/tools/r8/internal/ae0;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/ae0;->D()Lcom/android/tools/r8/internal/pu0;

    move-result-object v5

    invoke-interface {p1, v5, v8}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-virtual {v7, v6, v0}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    sget-boolean v5, Lcom/android/tools/r8/internal/xt;->a:Z

    sget-object v5, Lcom/android/tools/r8/internal/h10;->b:Lcom/android/tools/r8/internal/h10;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v10

    move-object v8, v4

    move-object v9, p0

    invoke-static/range {v5 .. v10}, Lcom/android/tools/r8/internal/C4;->a(Lcom/android/tools/r8/internal/xt;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/C4;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xt;->a()Lcom/android/tools/r8/internal/zt;

    move-result-object v6

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v9

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, v9}, Lcom/android/tools/r8/internal/zt;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/pu0;)Lcom/android/tools/r8/internal/zt;

    move-result-object v9

    invoke-virtual {v6, p0, v9}, Lcom/android/tools/r8/internal/zt;->b(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/zt;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/pu0;->d()Lcom/android/tools/r8/internal/ae0;

    move-result-object v9

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xt;->d()Lcom/android/tools/r8/internal/p10;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/p10;->d()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {}, Lcom/android/tools/r8/internal/p10;->b()Lcom/android/tools/r8/internal/p10;

    move-result-object v5

    goto :goto_1

    :cond_9
    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/pu0;->B()Lcom/android/tools/r8/internal/p10;

    move-result-object v5

    :goto_1
    invoke-virtual {v9, v5}, Lcom/android/tools/r8/internal/ae0;->a(Lcom/android/tools/r8/internal/p10;)Lcom/android/tools/r8/internal/ae0;

    move-result-object v5

    invoke-interface {p1, v5, v8}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v8

    invoke-virtual {v7, v8, v0}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v10

    move-object v5, v6

    move-object v6, v8

    move-object v8, v4

    move-object v9, p0

    invoke-static/range {v5 .. v10}, Lcom/android/tools/r8/internal/C4;->a(Lcom/android/tools/r8/internal/xt;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/C4;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/xt;->d()Lcom/android/tools/r8/internal/p10;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/p10;->d()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/pu0;->v()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->u()Lcom/android/tools/r8/internal/pu0;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/pu0;->d()Lcom/android/tools/r8/internal/ae0;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/ae0;->D()Lcom/android/tools/r8/internal/pu0;

    move-result-object v5

    invoke-interface {p1, v5, v8}, Lcom/android/tools/r8/internal/zw0;->a(Lcom/android/tools/r8/internal/pu0;Lcom/android/tools/r8/graph/j0;)Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-virtual {v7, v6, v0}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    sget-boolean v5, Lcom/android/tools/r8/internal/xt;->a:Z

    sget-object v5, Lcom/android/tools/r8/internal/h10;->b:Lcom/android/tools/r8/internal/h10;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/fB;->j()Lcom/android/tools/r8/graph/H5;

    move-result-object v10

    move-object v8, v4

    move-object v9, p0

    invoke-static/range {v5 .. v10}, Lcom/android/tools/r8/internal/C4;->a(Lcom/android/tools/r8/internal/xt;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/xw0;Lcom/android/tools/r8/internal/zE;Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;)Lcom/android/tools/r8/internal/C4;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->getPosition()Lcom/android/tools/r8/internal/B60;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/zE;->b(Lcom/android/tools/r8/internal/B60;)V

    invoke-virtual {v1, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    :goto_2
    sget-boolean p2, Lcom/android/tools/r8/internal/v3;->a:Z

    if-nez p2, :cond_d

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Y5;->n()Lcom/android/tools/r8/internal/zE;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result v4

    if-nez v4, :cond_c

    goto :goto_3

    :cond_c
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_d
    :goto_3
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    if-nez p2, :cond_f

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/Y5;->n()Lcom/android/tools/r8/internal/zE;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->k1()Z

    move-result v4

    if-eqz v4, :cond_e

    goto :goto_4

    :cond_e
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_f
    :goto_4
    new-instance v4, Lcom/android/tools/r8/internal/Hv1;

    invoke-direct {v4, v3}, Lcom/android/tools/r8/internal/Hv1;-><init>(Lcom/android/tools/r8/internal/EE;)V

    invoke-interface {v1, v4}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    new-instance v1, Lcom/android/tools/r8/internal/Iv1;

    invoke-direct {v1, v3}, Lcom/android/tools/r8/internal/Iv1;-><init>(Lcom/android/tools/r8/internal/EE;)V

    invoke-interface {v2, v1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    invoke-static {}, Lcom/android/tools/r8/internal/bi;->b()Ljava/util/function/Consumer;

    move-result-object v1

    invoke-virtual {v0, p0, p1, v1}, Lcom/android/tools/r8/ir/optimize/a;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/fB;Ljava/util/function/Consumer;)V

    if-nez p2, :cond_11

    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/fB;->b(Lcom/android/tools/r8/graph/y;)Z

    move-result p0

    if-eqz p0, :cond_10

    goto :goto_5

    :cond_10
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_11
    :goto_5
    return-void
.end method
