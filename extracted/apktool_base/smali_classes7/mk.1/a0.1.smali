.class public Lmk/a0;
.super Ljk/i$b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljk/e;Ljk/f;Ljk/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Ljk/i$b;-><init>(Ljk/e;Ljk/f;Ljk/f;)V

    return-void
.end method

.method public constructor <init>(Ljk/e;Ljk/f;Ljk/f;[Ljk/f;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Ljk/i$b;-><init>(Ljk/e;Ljk/f;Ljk/f;[Ljk/f;)V

    return-void
.end method


# virtual methods
.method public A()Ljk/i;
    .locals 5

    invoke-virtual {p0}, Ljk/i;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Ljk/i;->b:Ljk/f;

    invoke-virtual {v0}, Ljk/f;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    :cond_1
    iget-object v1, p0, Ljk/i;->c:Ljk/f;

    iget-object v2, p0, Ljk/i;->d:[Ljk/f;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    new-instance v3, Lmk/a0;

    iget-object v4, p0, Ljk/i;->a:Ljk/e;

    invoke-virtual {v1, v2}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object v1

    filled-new-array {v2}, [Ljk/f;

    move-result-object v2

    invoke-direct {v3, v4, v0, v1, v2}, Lmk/a0;-><init>(Ljk/e;Ljk/f;Ljk/f;[Ljk/f;)V

    return-object v3
.end method

.method public M()Ljk/i;
    .locals 8

    invoke-virtual {p0}, Ljk/i;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljk/i;->i()Ljk/e;

    move-result-object v0

    iget-object v1, p0, Ljk/i;->b:Ljk/f;

    invoke-virtual {v1}, Ljk/f;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljk/e;->x()Ljk/i;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v2, p0, Ljk/i;->c:Ljk/f;

    iget-object v3, p0, Ljk/i;->d:[Ljk/f;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljk/f;->i()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v5, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v3}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object v5

    :goto_0
    if-eqz v4, :cond_3

    move-object v6, v3

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljk/f;->p()Ljk/f;

    move-result-object v6

    :goto_1
    invoke-virtual {v0}, Ljk/e;->p()Ljk/f;

    move-result-object v7

    if-eqz v4, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v7, v6}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object v7

    :goto_2
    invoke-virtual {v2}, Ljk/f;->p()Ljk/f;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object v2

    invoke-virtual {v2}, Ljk/f;->j()Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v1, Lmk/a0;

    invoke-virtual {v0}, Ljk/e;->r()Ljk/f;

    move-result-object v3

    invoke-virtual {v3}, Ljk/f;->o()Ljk/f;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lmk/a0;-><init>(Ljk/e;Ljk/f;Ljk/f;)V

    return-object v1

    :cond_5
    invoke-virtual {v2}, Ljk/f;->p()Ljk/f;

    move-result-object v7

    if-eqz v4, :cond_6

    move-object v6, v2

    goto :goto_3

    :cond_6
    invoke-virtual {v2, v6}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object v6

    :goto_3
    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v1, v3}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object v1

    :goto_4
    invoke-virtual {v1, v2, v5}, Ljk/f;->r(Ljk/f;Ljk/f;)Ljk/f;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object v1

    new-instance v2, Lmk/a0;

    filled-new-array {v6}, [Ljk/f;

    move-result-object v3

    invoke-direct {v2, v0, v7, v1, v3}, Lmk/a0;-><init>(Ljk/e;Ljk/f;Ljk/f;[Ljk/f;)V

    return-object v2
.end method

.method public N(Ljk/i;)Ljk/i;
    .locals 8

    invoke-virtual {p0}, Ljk/i;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljk/i;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmk/a0;->M()Ljk/i;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Ljk/i;->i()Ljk/e;

    move-result-object v0

    iget-object v1, p0, Ljk/i;->b:Ljk/f;

    invoke-virtual {v1}, Ljk/f;->j()Z

    move-result v2

    if-eqz v2, :cond_2

    return-object p1

    :cond_2
    invoke-virtual {p1}, Ljk/i;->n()Ljk/f;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljk/i;->s(I)Ljk/f;

    move-result-object v4

    invoke-virtual {v2}, Ljk/f;->j()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v4}, Ljk/f;->i()Z

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_0

    :cond_3
    iget-object v4, p0, Ljk/i;->c:Ljk/f;

    iget-object v5, p0, Ljk/i;->d:[Ljk/f;

    aget-object v3, v5, v3

    invoke-virtual {p1}, Ljk/i;->o()Ljk/f;

    move-result-object v5

    invoke-virtual {v1}, Ljk/f;->p()Ljk/f;

    move-result-object v1

    invoke-virtual {v4}, Ljk/f;->p()Ljk/f;

    move-result-object v6

    invoke-virtual {v3}, Ljk/f;->p()Ljk/f;

    move-result-object v7

    invoke-virtual {v4, v3}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object v3

    invoke-virtual {v0}, Ljk/e;->p()Ljk/f;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object v3

    invoke-virtual {v5}, Ljk/f;->b()Ljk/f;

    move-result-object v4

    invoke-virtual {v0}, Ljk/e;->p()Ljk/f;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object v5

    invoke-virtual {v5, v3, v1, v7}, Ljk/f;->m(Ljk/f;Ljk/f;Ljk/f;)Ljk/f;

    move-result-object v1

    invoke-virtual {v2, v7}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object v5

    invoke-virtual {v5}, Ljk/f;->p()Ljk/f;

    move-result-object v5

    invoke-virtual {v5}, Ljk/f;->j()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v1}, Ljk/f;->j()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Ljk/i;->M()Ljk/i;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-virtual {v0}, Ljk/e;->x()Ljk/i;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-virtual {v1}, Ljk/f;->j()Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Lmk/a0;

    invoke-virtual {v0}, Ljk/e;->r()Ljk/f;

    move-result-object v2

    invoke-virtual {v2}, Ljk/f;->o()Ljk/f;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lmk/a0;-><init>(Ljk/e;Ljk/f;Ljk/f;)V

    return-object p1

    :cond_6
    invoke-virtual {v1}, Ljk/f;->p()Ljk/f;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object p1

    invoke-virtual {v1, v5}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object v2

    invoke-virtual {v1, v5}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object v1

    invoke-virtual {v1}, Ljk/f;->p()Ljk/f;

    move-result-object v1

    invoke-virtual {v1, v3, v4, v2}, Ljk/f;->m(Ljk/f;Ljk/f;Ljk/f;)Ljk/f;

    move-result-object v1

    new-instance v3, Lmk/a0;

    filled-new-array {v2}, [Ljk/f;

    move-result-object v2

    invoke-direct {v3, v0, p1, v1, v2}, Lmk/a0;-><init>(Ljk/e;Ljk/f;Ljk/f;[Ljk/f;)V

    return-object v3

    :cond_7
    :goto_0
    invoke-virtual {p0}, Lmk/a0;->M()Ljk/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljk/i;->a(Ljk/i;)Ljk/i;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljk/i;)Ljk/i;
    .locals 12

    invoke-virtual {p0}, Ljk/i;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljk/i;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljk/i;->i()Ljk/e;

    move-result-object v0

    iget-object v1, p0, Ljk/i;->b:Ljk/f;

    invoke-virtual {p1}, Ljk/i;->n()Ljk/f;

    move-result-object v2

    invoke-virtual {v1}, Ljk/f;->j()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljk/f;->j()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljk/e;->x()Ljk/i;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p1, p0}, Ljk/i;->a(Ljk/i;)Ljk/i;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object v3, p0, Ljk/i;->c:Ljk/f;

    iget-object v4, p0, Ljk/i;->d:[Ljk/f;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {p1}, Ljk/i;->o()Ljk/f;

    move-result-object v6

    invoke-virtual {p1, v5}, Ljk/i;->s(I)Ljk/f;

    move-result-object p1

    invoke-virtual {v4}, Ljk/f;->i()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v2, v4}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object v7

    invoke-virtual {v6, v4}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object v8

    goto :goto_0

    :cond_4
    move-object v7, v2

    move-object v8, v6

    :goto_0
    invoke-virtual {p1}, Ljk/f;->i()Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v1, p1}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object v1

    invoke-virtual {v3, p1}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object v10

    goto :goto_1

    :cond_5
    move-object v10, v3

    :goto_1
    invoke-virtual {v10, v8}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object v8

    invoke-virtual {v1, v7}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object v10

    invoke-virtual {v10}, Ljk/f;->j()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v8}, Ljk/f;->j()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lmk/a0;->M()Ljk/i;

    move-result-object p1

    return-object p1

    :cond_6
    invoke-virtual {v0}, Ljk/e;->x()Ljk/i;

    move-result-object p1

    return-object p1

    :cond_7
    invoke-virtual {v2}, Ljk/f;->j()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Ljk/i;->B()Ljk/i;

    move-result-object p1

    invoke-virtual {p1}, Ljk/i;->q()Ljk/f;

    move-result-object v1

    invoke-virtual {p1}, Ljk/i;->r()Ljk/f;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljk/f;->d(Ljk/f;)Ljk/f;

    move-result-object v2

    invoke-virtual {v2}, Ljk/f;->p()Ljk/f;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object v3

    invoke-virtual {v0}, Ljk/e;->p()Ljk/f;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object v3

    invoke-virtual {v3}, Ljk/f;->j()Z

    move-result v4

    if-eqz v4, :cond_8

    new-instance p1, Lmk/a0;

    invoke-virtual {v0}, Ljk/e;->r()Ljk/f;

    move-result-object v1

    invoke-virtual {v1}, Ljk/f;->o()Ljk/f;

    move-result-object v1

    invoke-direct {p1, v0, v3, v1}, Lmk/a0;-><init>(Ljk/e;Ljk/f;Ljk/f;)V

    return-object p1

    :cond_8
    invoke-virtual {v1, v3}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljk/f;->d(Ljk/f;)Ljk/f;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object p1

    sget-object v1, Ljk/d;->b:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljk/e;->o(Ljava/math/BigInteger;)Ljk/f;

    move-result-object v1

    goto :goto_3

    :cond_9
    invoke-virtual {v10}, Ljk/f;->p()Ljk/f;

    move-result-object v2

    invoke-virtual {v8, v1}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object v1

    invoke-virtual {v8, v7}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object v1

    invoke-virtual {v1}, Ljk/f;->j()Z

    move-result v7

    if-eqz v7, :cond_a

    new-instance p1, Lmk/a0;

    invoke-virtual {v0}, Ljk/e;->r()Ljk/f;

    move-result-object v2

    invoke-virtual {v2}, Ljk/f;->o()Ljk/f;

    move-result-object v2

    invoke-direct {p1, v0, v1, v2}, Lmk/a0;-><init>(Ljk/e;Ljk/f;Ljk/f;)V

    return-object p1

    :cond_a
    invoke-virtual {v8, v2}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object v7

    if-nez v9, :cond_b

    invoke-virtual {v7, p1}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object p1

    goto :goto_2

    :cond_b
    move-object p1, v7

    :goto_2
    invoke-virtual {v6, v2}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object v2

    invoke-virtual {v3, v4}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljk/f;->r(Ljk/f;Ljk/f;)Ljk/f;

    move-result-object v2

    if-nez v5, :cond_c

    invoke-virtual {p1, v4}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object p1

    :cond_c
    move-object v3, v1

    move-object v1, p1

    move-object p1, v2

    :goto_3
    new-instance v2, Lmk/a0;

    filled-new-array {v1}, [Ljk/f;

    move-result-object v1

    invoke-direct {v2, v0, v3, p1, v1}, Lmk/a0;-><init>(Ljk/e;Ljk/f;Ljk/f;[Ljk/f;)V

    return-object v2
.end method

.method public d()Ljk/i;
    .locals 4

    new-instance v0, Lmk/a0;

    invoke-virtual {p0}, Ljk/i;->f()Ljk/f;

    move-result-object v1

    invoke-virtual {p0}, Ljk/i;->g()Ljk/f;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lmk/a0;-><init>(Ljk/e;Ljk/f;Ljk/f;)V

    return-object v0
.end method

.method public h()Z
    .locals 3

    invoke-virtual {p0}, Ljk/i;->n()Ljk/f;

    move-result-object v0

    invoke-virtual {v0}, Ljk/f;->j()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Ljk/i;->o()Ljk/f;

    move-result-object v1

    invoke-virtual {v1}, Ljk/f;->u()Z

    move-result v1

    invoke-virtual {v0}, Ljk/f;->u()Z

    move-result v0

    if-eq v1, v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public r()Ljk/f;
    .locals 3

    iget-object v0, p0, Ljk/i;->b:Ljk/f;

    iget-object v1, p0, Ljk/i;->c:Ljk/f;

    invoke-virtual {p0}, Ljk/i;->v()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljk/f;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object v0

    iget-object v1, p0, Ljk/i;->d:[Ljk/f;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljk/f;->i()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Ljk/f;->d(Ljk/f;)Ljk/f;

    move-result-object v0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method
