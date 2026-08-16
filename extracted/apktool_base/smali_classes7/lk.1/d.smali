.class public Llk/d;
.super Ljk/i$c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljk/e;Ljk/f;Ljk/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Ljk/i$c;-><init>(Ljk/e;Ljk/f;Ljk/f;)V

    return-void
.end method

.method public constructor <init>(Ljk/e;Ljk/f;Ljk/f;[Ljk/f;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Ljk/i$c;-><init>(Ljk/e;Ljk/f;Ljk/f;[Ljk/f;)V

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
    new-instance v0, Llk/d;

    iget-object v1, p0, Ljk/i;->a:Ljk/e;

    iget-object v2, p0, Ljk/i;->b:Ljk/f;

    iget-object v3, p0, Ljk/i;->c:Ljk/f;

    invoke-virtual {v3}, Ljk/f;->n()Ljk/f;

    move-result-object v3

    iget-object v4, p0, Ljk/i;->d:[Ljk/f;

    invoke-direct {v0, v1, v2, v3, v4}, Llk/d;-><init>(Ljk/e;Ljk/f;Ljk/f;[Ljk/f;)V

    return-object v0
.end method

.method public K()Ljk/i;
    .locals 1

    invoke-virtual {p0}, Ljk/i;->v()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Ljk/i;->c:Ljk/f;

    invoke-virtual {v0}, Ljk/f;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Llk/d;->M()Ljk/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljk/i;->a(Ljk/i;)Ljk/i;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public M()Ljk/i;
    .locals 12

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljk/i;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljk/i;->i()Ljk/e;

    move-result-object v1

    iget-object v2, p0, Ljk/i;->c:Ljk/f;

    check-cast v2, Llk/c;

    invoke-virtual {v2}, Llk/c;->j()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljk/e;->x()Ljk/i;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v3, p0, Ljk/i;->b:Ljk/f;

    check-cast v3, Llk/c;

    iget-object v4, p0, Ljk/i;->d:[Ljk/f;

    aget-object v4, v4, v0

    check-cast v4, Llk/c;

    invoke-static {}, Lsk/i;->m()[I

    move-result-object v5

    invoke-static {}, Lsk/i;->m()[I

    move-result-object v6

    invoke-static {}, Lsk/i;->m()[I

    move-result-object v7

    iget-object v8, v2, Llk/c;->g:[I

    invoke-static {v8, v7}, Llk/b;->p([I[I)V

    invoke-static {}, Lsk/i;->m()[I

    move-result-object v8

    invoke-static {v7, v8}, Llk/b;->p([I[I)V

    invoke-virtual {v4}, Llk/c;->i()Z

    move-result v9

    iget-object v10, v4, Llk/c;->g:[I

    if-nez v9, :cond_2

    invoke-static {v10, v6}, Llk/b;->p([I[I)V

    move-object v10, v6

    :cond_2
    iget-object v11, v3, Llk/c;->g:[I

    invoke-static {v11, v10, v5}, Llk/b;->s([I[I[I)V

    iget-object v11, v3, Llk/c;->g:[I

    invoke-static {v11, v10, v6}, Llk/b;->a([I[I[I)V

    invoke-static {v6, v5, v6}, Llk/b;->i([I[I[I)V

    invoke-static {v6, v6, v6}, Lsk/i;->d([I[I[I)I

    move-result v10

    invoke-static {v10, v6}, Llk/b;->o(I[I)V

    iget-object v3, v3, Llk/c;->g:[I

    invoke-static {v7, v3, v7}, Llk/b;->i([I[I[I)V

    const/4 v3, 0x2

    const/16 v10, 0x8

    invoke-static {v10, v7, v3, v0}, Lsk/o;->H0(I[III)I

    move-result v3

    invoke-static {v3, v7}, Llk/b;->o(I[I)V

    const/4 v3, 0x3

    invoke-static {v10, v8, v3, v0, v5}, Lsk/o;->K0(I[III[I)I

    move-result v3

    invoke-static {v3, v5}, Llk/b;->o(I[I)V

    new-instance v3, Llk/c;

    invoke-direct {v3, v8}, Llk/c;-><init>([I)V

    iget-object v8, v3, Llk/c;->g:[I

    invoke-static {v6, v8}, Llk/b;->p([I[I)V

    iget-object v8, v3, Llk/c;->g:[I

    invoke-static {v8, v7, v8}, Llk/b;->s([I[I[I)V

    iget-object v8, v3, Llk/c;->g:[I

    invoke-static {v8, v7, v8}, Llk/b;->s([I[I[I)V

    new-instance v8, Llk/c;

    invoke-direct {v8, v7}, Llk/c;-><init>([I)V

    iget-object v10, v3, Llk/c;->g:[I

    iget-object v11, v8, Llk/c;->g:[I

    invoke-static {v7, v10, v11}, Llk/b;->s([I[I[I)V

    iget-object v7, v8, Llk/c;->g:[I

    invoke-static {v7, v6, v7}, Llk/b;->i([I[I[I)V

    iget-object v7, v8, Llk/c;->g:[I

    invoke-static {v7, v5, v7}, Llk/b;->s([I[I[I)V

    new-instance v5, Llk/c;

    invoke-direct {v5, v6}, Llk/c;-><init>([I)V

    iget-object v2, v2, Llk/c;->g:[I

    iget-object v6, v5, Llk/c;->g:[I

    invoke-static {v2, v6}, Llk/b;->u([I[I)V

    if-nez v9, :cond_3

    iget-object v2, v5, Llk/c;->g:[I

    iget-object v4, v4, Llk/c;->g:[I

    invoke-static {v2, v4, v2}, Llk/b;->i([I[I[I)V

    :cond_3
    new-instance v2, Llk/d;

    const/4 v4, 0x1

    new-array v4, v4, [Ljk/f;

    aput-object v5, v4, v0

    invoke-direct {v2, v1, v3, v8, v4}, Llk/d;-><init>(Ljk/e;Ljk/f;Ljk/f;[Ljk/f;)V

    return-object v2
.end method

.method public N(Ljk/i;)Ljk/i;
    .locals 1

    if-ne p0, p1, :cond_0

    invoke-virtual {p0}, Llk/d;->K()Ljk/i;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0}, Ljk/i;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    invoke-virtual {p1}, Ljk/i;->v()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Llk/d;->M()Ljk/i;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p0, Ljk/i;->c:Ljk/f;

    invoke-virtual {v0}, Ljk/f;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p1

    :cond_3
    invoke-virtual {p0}, Llk/d;->M()Ljk/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljk/i;->a(Ljk/i;)Ljk/i;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljk/i;)Ljk/i;
    .locals 14

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljk/i;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljk/i;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    :cond_1
    if-ne p0, p1, :cond_2

    invoke-virtual {p0}, Llk/d;->M()Ljk/i;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p0}, Ljk/i;->i()Ljk/e;

    move-result-object v1

    iget-object v2, p0, Ljk/i;->b:Ljk/f;

    check-cast v2, Llk/c;

    iget-object v3, p0, Ljk/i;->c:Ljk/f;

    check-cast v3, Llk/c;

    invoke-virtual {p1}, Ljk/i;->q()Ljk/f;

    move-result-object v4

    check-cast v4, Llk/c;

    invoke-virtual {p1}, Ljk/i;->r()Ljk/f;

    move-result-object v5

    check-cast v5, Llk/c;

    iget-object v6, p0, Ljk/i;->d:[Ljk/f;

    aget-object v6, v6, v0

    check-cast v6, Llk/c;

    invoke-virtual {p1, v0}, Ljk/i;->s(I)Ljk/f;

    move-result-object p1

    check-cast p1, Llk/c;

    invoke-static {}, Lsk/i;->o()[I

    move-result-object v7

    invoke-static {}, Lsk/i;->m()[I

    move-result-object v8

    invoke-static {}, Lsk/i;->m()[I

    move-result-object v9

    invoke-static {}, Lsk/i;->m()[I

    move-result-object v10

    invoke-virtual {v6}, Llk/c;->i()Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v4, v4, Llk/c;->g:[I

    iget-object v5, v5, Llk/c;->g:[I

    goto :goto_0

    :cond_3
    iget-object v12, v6, Llk/c;->g:[I

    invoke-static {v12, v9}, Llk/b;->p([I[I)V

    iget-object v4, v4, Llk/c;->g:[I

    invoke-static {v9, v4, v8}, Llk/b;->i([I[I[I)V

    iget-object v4, v6, Llk/c;->g:[I

    invoke-static {v9, v4, v9}, Llk/b;->i([I[I[I)V

    iget-object v4, v5, Llk/c;->g:[I

    invoke-static {v9, v4, v9}, Llk/b;->i([I[I[I)V

    move-object v4, v8

    move-object v5, v9

    :goto_0
    invoke-virtual {p1}, Llk/c;->i()Z

    move-result v12

    if-eqz v12, :cond_4

    iget-object v2, v2, Llk/c;->g:[I

    iget-object v3, v3, Llk/c;->g:[I

    goto :goto_1

    :cond_4
    iget-object v13, p1, Llk/c;->g:[I

    invoke-static {v13, v10}, Llk/b;->p([I[I)V

    iget-object v2, v2, Llk/c;->g:[I

    invoke-static {v10, v2, v7}, Llk/b;->i([I[I[I)V

    iget-object v2, p1, Llk/c;->g:[I

    invoke-static {v10, v2, v10}, Llk/b;->i([I[I[I)V

    iget-object v2, v3, Llk/c;->g:[I

    invoke-static {v10, v2, v10}, Llk/b;->i([I[I[I)V

    move-object v2, v7

    move-object v3, v10

    :goto_1
    invoke-static {}, Lsk/i;->m()[I

    move-result-object v13

    invoke-static {v2, v4, v13}, Llk/b;->s([I[I[I)V

    invoke-static {v3, v5, v8}, Llk/b;->s([I[I[I)V

    invoke-static {v13}, Lsk/i;->A([I)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v8}, Lsk/i;->A([I)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Llk/d;->M()Ljk/i;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-virtual {v1}, Ljk/e;->x()Ljk/i;

    move-result-object p1

    return-object p1

    :cond_6
    invoke-static {v13, v9}, Llk/b;->p([I[I)V

    invoke-static {}, Lsk/i;->m()[I

    move-result-object v4

    invoke-static {v9, v13, v4}, Llk/b;->i([I[I[I)V

    invoke-static {v9, v2, v9}, Llk/b;->i([I[I[I)V

    invoke-static {v4, v4}, Llk/b;->k([I[I)V

    invoke-static {v3, v4, v7}, Lsk/i;->D([I[I[I)V

    invoke-static {v9, v9, v4}, Lsk/i;->d([I[I[I)I

    move-result v2

    invoke-static {v2, v4}, Llk/b;->o(I[I)V

    new-instance v2, Llk/c;

    invoke-direct {v2, v10}, Llk/c;-><init>([I)V

    iget-object v3, v2, Llk/c;->g:[I

    invoke-static {v8, v3}, Llk/b;->p([I[I)V

    iget-object v3, v2, Llk/c;->g:[I

    invoke-static {v3, v4, v3}, Llk/b;->s([I[I[I)V

    new-instance v3, Llk/c;

    invoke-direct {v3, v4}, Llk/c;-><init>([I)V

    iget-object v4, v2, Llk/c;->g:[I

    iget-object v5, v3, Llk/c;->g:[I

    invoke-static {v9, v4, v5}, Llk/b;->s([I[I[I)V

    iget-object v4, v3, Llk/c;->g:[I

    invoke-static {v4, v8, v7}, Llk/b;->j([I[I[I)V

    iget-object v4, v3, Llk/c;->g:[I

    invoke-static {v7, v4}, Llk/b;->n([I[I)V

    new-instance v4, Llk/c;

    invoke-direct {v4, v13}, Llk/c;-><init>([I)V

    if-nez v11, :cond_7

    iget-object v5, v4, Llk/c;->g:[I

    iget-object v6, v6, Llk/c;->g:[I

    invoke-static {v5, v6, v5}, Llk/b;->i([I[I[I)V

    :cond_7
    if-nez v12, :cond_8

    iget-object v5, v4, Llk/c;->g:[I

    iget-object p1, p1, Llk/c;->g:[I

    invoke-static {v5, p1, v5}, Llk/b;->i([I[I[I)V

    :cond_8
    const/4 p1, 0x1

    new-array p1, p1, [Ljk/f;

    aput-object v4, p1, v0

    new-instance v0, Llk/d;

    invoke-direct {v0, v1, v2, v3, p1}, Llk/d;-><init>(Ljk/e;Ljk/f;Ljk/f;[Ljk/f;)V

    return-object v0
.end method

.method public d()Ljk/i;
    .locals 4

    new-instance v0, Llk/d;

    invoke-virtual {p0}, Ljk/i;->f()Ljk/f;

    move-result-object v1

    invoke-virtual {p0}, Ljk/i;->g()Ljk/f;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Llk/d;-><init>(Ljk/e;Ljk/f;Ljk/f;)V

    return-object v0
.end method
