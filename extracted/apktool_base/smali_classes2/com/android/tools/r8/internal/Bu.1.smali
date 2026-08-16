.class public abstract Lcom/android/tools/r8/internal/Bu;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/H5;Lcom/android/tools/r8/internal/fB;Lcom/android/tools/r8/internal/dX;)Lcom/android/tools/r8/internal/Au;
    .locals 9

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/tools/r8/internal/nJ;->H:Z

    if-nez v0, :cond_0

    sget-object p0, Lcom/android/tools/r8/internal/jv0;->a:Lcom/android/tools/r8/internal/jv0;

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->u()Lcom/android/tools/r8/graph/L4;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/g;->n()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->C()Lcom/android/tools/r8/graph/O2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/O2;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->A()Lcom/android/tools/r8/internal/TW;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/TW;->o()Lcom/android/tools/r8/internal/Au;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->b()Lcom/android/tools/r8/graph/u1;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/fB;->k()Lcom/android/tools/r8/internal/W5;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/W5;->H()Lcom/android/tools/r8/internal/AE;

    move-result-object p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/H0;->C()Lcom/android/tools/r8/graph/O2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/graph/O2;->size()I

    move-result v4

    if-ge v3, v4, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->v()Lcom/android/tools/r8/internal/k3;

    move-result-object v4

    invoke-virtual {p1, v3}, Lcom/android/tools/r8/graph/H0;->b(I)Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->w()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v1, Lcom/android/tools/r8/graph/u1;->J1:Lcom/android/tools/r8/graph/M2;

    if-ne v5, v6, :cond_b

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v5, v0, Lcom/android/tools/r8/internal/vc;

    if-eqz v5, :cond_b

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Au;->a()Lcom/android/tools/r8/internal/vc;

    move-result-object v5

    iget v5, v5, Lcom/android/tools/r8/internal/vc;->a:I

    if-eq v5, v3, :cond_3

    goto/16 :goto_2

    :cond_2
    iget-object v6, v1, Lcom/android/tools/r8/graph/u1;->i2:Lcom/android/tools/r8/graph/M2;

    if-eq v5, v6, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->y()Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    sget-object v5, Lcom/android/tools/r8/internal/qj;->a:Lcom/android/tools/r8/internal/qj;

    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lcom/android/tools/r8/internal/xw0;->a(Lcom/android/tools/r8/internal/e2;Lcom/android/tools/r8/internal/xw0;Ljava/util/Set;)V

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v2

    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/tools/r8/internal/zE;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->r2()I

    move-result v7

    const/16 v8, 0x9

    if-eq v7, v8, :cond_8

    const/16 v8, 0x19

    if-eq v7, v8, :cond_6

    const/16 v6, 0x38

    if-eq v7, v6, :cond_5

    goto :goto_2

    :cond_6
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->V()Lcom/android/tools/r8/internal/EB;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/EB;->x2()Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v5, v5, Lcom/android/tools/r8/internal/EB;->l:Lcom/android/tools/r8/internal/NB;

    sget-object v6, Lcom/android/tools/r8/internal/NB;->b:Lcom/android/tools/r8/internal/NB;

    if-eq v5, v6, :cond_7

    sget-object v6, Lcom/android/tools/r8/internal/NB;->g:Lcom/android/tools/r8/internal/NB;

    if-eq v5, v6, :cond_7

    goto :goto_2

    :cond_7
    const/4 v5, 0x1

    goto :goto_1

    :cond_8
    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/xw0;->y()Z

    move-result v7

    if-nez v7, :cond_b

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/zE;->d()Lcom/android/tools/r8/internal/xw0;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/xw0;->B()Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_2

    :cond_9
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/dX;->f()Z

    move-result v4

    if-eqz v4, :cond_a

    if-eqz v5, :cond_b

    :cond_a
    new-instance p0, Lcom/android/tools/r8/internal/vc;

    invoke-direct {p0, v3}, Lcom/android/tools/r8/internal/vc;-><init>(I)V

    return-object p0

    :cond_b
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_c
    sget-object p0, Lcom/android/tools/r8/internal/jv0;->a:Lcom/android/tools/r8/internal/jv0;

    return-object p0

    :cond_d
    :goto_3
    sget-object p0, Lcom/android/tools/r8/internal/jv0;->a:Lcom/android/tools/r8/internal/jv0;

    return-object p0
.end method
