.class public abstract Lcom/android/tools/r8/internal/p40;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/tools/r8/graph/H2;)V
    .locals 6

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->I0()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/graph/g1;

    .line 4
    iget-object v1, v1, Lcom/android/tools/r8/graph/g1;->l:Lcom/android/tools/r8/internal/vw;

    .line 5
    invoke-interface {v1}, Lcom/android/tools/r8/internal/KV;->b()Lcom/android/tools/r8/internal/VY;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    sget v2, Lcom/android/tools/r8/internal/F1;->a:I

    sget-object v2, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    iput-object v2, v1, Lcom/android/tools/r8/internal/VY;->a:Lcom/android/tools/r8/internal/F1;

    .line 7
    invoke-static {}, Lcom/android/tools/r8/internal/xt;->m()Lcom/android/tools/r8/internal/zt;

    move-result-object v2

    .line 8
    iput-object v2, v1, Lcom/android/tools/r8/internal/VY;->d:Lcom/android/tools/r8/internal/xt;

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/E0;->z1()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j1;

    .line 10
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 11
    iget-object v1, v0, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    .line 12
    invoke-interface {v1}, Lcom/android/tools/r8/internal/KV;->c()Lcom/android/tools/r8/internal/WY;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 13
    :cond_3
    sget-object v2, Lcom/android/tools/r8/internal/yv0;->b:Lcom/android/tools/r8/internal/yv0;

    iput-object v2, v1, Lcom/android/tools/r8/internal/WY;->f:Lcom/android/tools/r8/internal/F1;

    .line 14
    sget-object v3, Lcom/android/tools/r8/internal/vs0;->a:Lcom/android/tools/r8/internal/vs0;

    iput-object v3, v1, Lcom/android/tools/r8/internal/WY;->b:Lcom/android/tools/r8/internal/F8;

    .line 15
    invoke-static {}, Lcom/android/tools/r8/internal/xt;->m()Lcom/android/tools/r8/internal/zt;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/tools/r8/internal/WY;->a(Lcom/android/tools/r8/internal/xt;)Lcom/android/tools/r8/internal/WY;

    .line 16
    sget-object v4, Lcom/android/tools/r8/internal/Fj;->c:Lcom/android/tools/r8/internal/ef0;

    .line 17
    iput-object v4, v1, Lcom/android/tools/r8/internal/WY;->c:Ljava/util/Set;

    .line 18
    sget-object v4, Lcom/android/tools/r8/internal/Rt;->a:Lcom/android/tools/r8/internal/Rt;

    iput-object v4, v1, Lcom/android/tools/r8/internal/WY;->m:Lcom/android/tools/r8/internal/gE;

    .line 19
    sget-object v4, Lcom/android/tools/r8/internal/nZ;->b:Lcom/android/tools/r8/internal/nZ;

    iput-object v4, v1, Lcom/android/tools/r8/internal/WY;->p:Lcom/android/tools/r8/internal/Xl0;

    .line 20
    iput-object v4, v1, Lcom/android/tools/r8/internal/WY;->q:Lcom/android/tools/r8/internal/Xl0;

    .line 21
    iget-object v5, v1, Lcom/android/tools/r8/internal/WY;->b:Lcom/android/tools/r8/internal/F8;

    if-ne v5, v3, :cond_2

    .line 22
    iget v3, v1, Lcom/android/tools/r8/internal/WY;->d:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_2

    .line 23
    iget-object v3, v1, Lcom/android/tools/r8/internal/WY;->e:Lcom/android/tools/r8/internal/Vf;

    .line 24
    sget v5, Lcom/android/tools/r8/internal/F1;->a:I

    if-ne v3, v2, :cond_2

    .line 25
    iget-object v3, v1, Lcom/android/tools/r8/internal/WY;->f:Lcom/android/tools/r8/internal/F1;

    if-ne v3, v2, :cond_2

    .line 26
    iget-object v2, v1, Lcom/android/tools/r8/internal/WY;->g:Lcom/android/tools/r8/internal/Zc;

    .line 27
    sget-object v3, Lcom/android/tools/r8/internal/g2;->a:Lcom/android/tools/r8/internal/g2;

    if-ne v2, v3, :cond_2

    iget-boolean v2, v1, Lcom/android/tools/r8/internal/WY;->h:Z

    if-nez v2, :cond_2

    .line 28
    iget-object v2, v1, Lcom/android/tools/r8/internal/WY;->i:Lcom/android/tools/r8/internal/Au;

    .line 29
    sget-object v3, Lcom/android/tools/r8/internal/jv0;->a:Lcom/android/tools/r8/internal/jv0;

    if-ne v2, v3, :cond_2

    iget-object v2, v1, Lcom/android/tools/r8/internal/WY;->j:Lcom/android/tools/r8/internal/xt;

    .line 30
    invoke-static {}, Lcom/android/tools/r8/internal/xt;->m()Lcom/android/tools/r8/internal/zt;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 31
    iget v2, v1, Lcom/android/tools/r8/internal/WY;->v:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    iget-object v2, v1, Lcom/android/tools/r8/internal/WY;->k:Lcom/android/tools/r8/internal/t40;

    .line 32
    sget-object v3, Lcom/android/tools/r8/internal/t40;->c:Lcom/android/tools/r8/internal/t40;

    if-ne v2, v3, :cond_2

    .line 33
    iget-object v2, v1, Lcom/android/tools/r8/internal/WY;->l:Lcom/android/tools/r8/internal/S7;

    if-nez v2, :cond_2

    .line 34
    iget-object v2, v1, Lcom/android/tools/r8/internal/WY;->m:Lcom/android/tools/r8/internal/gE;

    .line 35
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/gE;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/android/tools/r8/internal/WY;->n:Ljava/util/BitSet;

    if-nez v2, :cond_2

    .line 36
    iget-object v2, v1, Lcom/android/tools/r8/internal/WY;->o:Ljava/util/BitSet;

    if-nez v2, :cond_2

    .line 37
    iget-object v2, v1, Lcom/android/tools/r8/internal/WY;->p:Lcom/android/tools/r8/internal/Xl0;

    if-ne v2, v4, :cond_2

    .line 38
    iget-object v2, v1, Lcom/android/tools/r8/internal/WY;->q:Lcom/android/tools/r8/internal/Xl0;

    if-ne v2, v4, :cond_2

    .line 39
    iget v2, v1, Lcom/android/tools/r8/internal/WY;->r:I

    if-nez v2, :cond_2

    .line 40
    iget-object v2, v1, Lcom/android/tools/r8/internal/WY;->s:Ljava/util/BitSet;

    if-nez v2, :cond_2

    .line 41
    iget-object v2, v1, Lcom/android/tools/r8/internal/WY;->t:Ljava/util/BitSet;

    if-nez v2, :cond_2

    .line 42
    iget v1, v1, Lcom/android/tools/r8/internal/WY;->u:I

    sget v2, Lcom/android/tools/r8/internal/WY;->w:I

    if-ne v1, v2, :cond_2

    .line 43
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/j1;->L0()V

    .line 44
    sget-object v1, Lcom/android/tools/r8/internal/Fj;->b:Lcom/android/tools/r8/internal/Fj;

    iput-object v1, v0, Lcom/android/tools/r8/graph/j1;->m:Lcom/android/tools/r8/internal/TW;

    goto/16 :goto_1

    :cond_4
    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->f()Lcom/android/tools/r8/graph/h;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/j;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/sp1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/sp1;-><init>()V

    .line 2
    invoke-static {p0, v0, v1, p1}, Lcom/android/tools/r8/J;->a(Lcom/android/tools/r8/graph/y;Ljava/util/Collection;Ljava/util/function/Consumer;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method
