.class public Lmk/r;
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
    new-instance v0, Lmk/r;

    iget-object v1, p0, Ljk/i;->a:Ljk/e;

    iget-object v2, p0, Ljk/i;->b:Ljk/f;

    iget-object v3, p0, Ljk/i;->c:Ljk/f;

    invoke-virtual {v3}, Ljk/f;->n()Ljk/f;

    move-result-object v3

    iget-object v4, p0, Ljk/i;->d:[Ljk/f;

    invoke-direct {v0, v1, v2, v3, v4}, Lmk/r;-><init>(Ljk/e;Ljk/f;Ljk/f;[Ljk/f;)V

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
    invoke-virtual {p0}, Lmk/r;->M()Ljk/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljk/i;->a(Ljk/i;)Ljk/i;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public M()Ljk/i;
    .locals 11

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljk/i;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljk/i;->i()Ljk/e;

    move-result-object v1

    iget-object v2, p0, Ljk/i;->c:Ljk/f;

    check-cast v2, Lmk/q;

    invoke-virtual {v2}, Lmk/q;->j()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljk/e;->x()Ljk/i;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v3, p0, Ljk/i;->b:Ljk/f;

    check-cast v3, Lmk/q;

    iget-object v4, p0, Ljk/i;->d:[Ljk/f;

    aget-object v4, v4, v0

    check-cast v4, Lmk/q;

    invoke-static {}, Lsk/g;->j()[I

    move-result-object v5

    iget-object v6, v2, Lmk/q;->g:[I

    invoke-static {v6, v5}, Lmk/p;->o([I[I)V

    invoke-static {}, Lsk/g;->j()[I

    move-result-object v6

    invoke-static {v5, v6}, Lmk/p;->o([I[I)V

    invoke-static {}, Lsk/g;->j()[I

    move-result-object v7

    iget-object v8, v3, Lmk/q;->g:[I

    invoke-static {v8, v7}, Lmk/p;->o([I[I)V

    invoke-static {v7, v7, v7}, Lsk/g;->b([I[I[I)I

    move-result v8

    invoke-static {v8, v7}, Lmk/p;->n(I[I)V

    iget-object v3, v3, Lmk/q;->g:[I

    invoke-static {v5, v3, v5}, Lmk/p;->h([I[I[I)V

    const/4 v3, 0x2

    const/4 v8, 0x6

    invoke-static {v8, v5, v3, v0}, Lsk/o;->H0(I[III)I

    move-result v3

    invoke-static {v3, v5}, Lmk/p;->n(I[I)V

    invoke-static {}, Lsk/g;->j()[I

    move-result-object v3

    const/4 v9, 0x3

    invoke-static {v8, v6, v9, v0, v3}, Lsk/o;->K0(I[III[I)I

    move-result v8

    invoke-static {v8, v3}, Lmk/p;->n(I[I)V

    new-instance v8, Lmk/q;

    invoke-direct {v8, v6}, Lmk/q;-><init>([I)V

    iget-object v6, v8, Lmk/q;->g:[I

    invoke-static {v7, v6}, Lmk/p;->o([I[I)V

    iget-object v6, v8, Lmk/q;->g:[I

    invoke-static {v6, v5, v6}, Lmk/p;->q([I[I[I)V

    iget-object v6, v8, Lmk/q;->g:[I

    invoke-static {v6, v5, v6}, Lmk/p;->q([I[I[I)V

    new-instance v6, Lmk/q;

    invoke-direct {v6, v5}, Lmk/q;-><init>([I)V

    iget-object v9, v8, Lmk/q;->g:[I

    iget-object v10, v6, Lmk/q;->g:[I

    invoke-static {v5, v9, v10}, Lmk/p;->q([I[I[I)V

    iget-object v5, v6, Lmk/q;->g:[I

    invoke-static {v5, v7, v5}, Lmk/p;->h([I[I[I)V

    iget-object v5, v6, Lmk/q;->g:[I

    invoke-static {v5, v3, v5}, Lmk/p;->q([I[I[I)V

    new-instance v3, Lmk/q;

    invoke-direct {v3, v7}, Lmk/q;-><init>([I)V

    iget-object v2, v2, Lmk/q;->g:[I

    iget-object v5, v3, Lmk/q;->g:[I

    invoke-static {v2, v5}, Lmk/p;->s([I[I)V

    invoke-virtual {v4}, Lmk/q;->i()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v3, Lmk/q;->g:[I

    iget-object v4, v4, Lmk/q;->g:[I

    invoke-static {v2, v4, v2}, Lmk/p;->h([I[I[I)V

    :cond_2
    new-instance v2, Lmk/r;

    const/4 v4, 0x1

    new-array v4, v4, [Ljk/f;

    aput-object v3, v4, v0

    invoke-direct {v2, v1, v8, v6, v4}, Lmk/r;-><init>(Ljk/e;Ljk/f;Ljk/f;[Ljk/f;)V

    return-object v2
.end method

.method public N(Ljk/i;)Ljk/i;
    .locals 1

    if-ne p0, p1, :cond_0

    invoke-virtual {p0}, Lmk/r;->K()Ljk/i;

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

    invoke-virtual {p0}, Lmk/r;->M()Ljk/i;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p0, Ljk/i;->c:Ljk/f;

    invoke-virtual {v0}, Ljk/f;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p1

    :cond_3
    invoke-virtual {p0}, Lmk/r;->M()Ljk/i;

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

    invoke-virtual {p0}, Lmk/r;->M()Ljk/i;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p0}, Ljk/i;->i()Ljk/e;

    move-result-object v1

    iget-object v2, p0, Ljk/i;->b:Ljk/f;

    check-cast v2, Lmk/q;

    iget-object v3, p0, Ljk/i;->c:Ljk/f;

    check-cast v3, Lmk/q;

    invoke-virtual {p1}, Ljk/i;->q()Ljk/f;

    move-result-object v4

    check-cast v4, Lmk/q;

    invoke-virtual {p1}, Ljk/i;->r()Ljk/f;

    move-result-object v5

    check-cast v5, Lmk/q;

    iget-object v6, p0, Ljk/i;->d:[Ljk/f;

    aget-object v6, v6, v0

    check-cast v6, Lmk/q;

    invoke-virtual {p1, v0}, Ljk/i;->s(I)Ljk/f;

    move-result-object p1

    check-cast p1, Lmk/q;

    invoke-static {}, Lsk/g;->l()[I

    move-result-object v7

    invoke-static {}, Lsk/g;->j()[I

    move-result-object v8

    invoke-static {}, Lsk/g;->j()[I

    move-result-object v9

    invoke-static {}, Lsk/g;->j()[I

    move-result-object v10

    invoke-virtual {v6}, Lmk/q;->i()Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v4, v4, Lmk/q;->g:[I

    iget-object v5, v5, Lmk/q;->g:[I

    goto :goto_0

    :cond_3
    iget-object v12, v6, Lmk/q;->g:[I

    invoke-static {v12, v9}, Lmk/p;->o([I[I)V

    iget-object v4, v4, Lmk/q;->g:[I

    invoke-static {v9, v4, v8}, Lmk/p;->h([I[I[I)V

    iget-object v4, v6, Lmk/q;->g:[I

    invoke-static {v9, v4, v9}, Lmk/p;->h([I[I[I)V

    iget-object v4, v5, Lmk/q;->g:[I

    invoke-static {v9, v4, v9}, Lmk/p;->h([I[I[I)V

    move-object v4, v8

    move-object v5, v9

    :goto_0
    invoke-virtual {p1}, Lmk/q;->i()Z

    move-result v12

    if-eqz v12, :cond_4

    iget-object v2, v2, Lmk/q;->g:[I

    iget-object v3, v3, Lmk/q;->g:[I

    goto :goto_1

    :cond_4
    iget-object v13, p1, Lmk/q;->g:[I

    invoke-static {v13, v10}, Lmk/p;->o([I[I)V

    iget-object v2, v2, Lmk/q;->g:[I

    invoke-static {v10, v2, v7}, Lmk/p;->h([I[I[I)V

    iget-object v2, p1, Lmk/q;->g:[I

    invoke-static {v10, v2, v10}, Lmk/p;->h([I[I[I)V

    iget-object v2, v3, Lmk/q;->g:[I

    invoke-static {v10, v2, v10}, Lmk/p;->h([I[I[I)V

    move-object v2, v7

    move-object v3, v10

    :goto_1
    invoke-static {}, Lsk/g;->j()[I

    move-result-object v13

    invoke-static {v2, v4, v13}, Lmk/p;->q([I[I[I)V

    invoke-static {v3, v5, v8}, Lmk/p;->q([I[I[I)V

    invoke-static {v13}, Lsk/g;->x([I)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v8}, Lsk/g;->x([I)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lmk/r;->M()Ljk/i;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-virtual {v1}, Ljk/e;->x()Ljk/i;

    move-result-object p1

    return-object p1

    :cond_6
    invoke-static {v13, v9}, Lmk/p;->o([I[I)V

    invoke-static {}, Lsk/g;->j()[I

    move-result-object v4

    invoke-static {v9, v13, v4}, Lmk/p;->h([I[I[I)V

    invoke-static {v9, v2, v9}, Lmk/p;->h([I[I[I)V

    invoke-static {v4, v4}, Lmk/p;->j([I[I)V

    invoke-static {v3, v4, v7}, Lsk/g;->A([I[I[I)V

    invoke-static {v9, v9, v4}, Lsk/g;->b([I[I[I)I

    move-result v2

    invoke-static {v2, v4}, Lmk/p;->n(I[I)V

    new-instance v2, Lmk/q;

    invoke-direct {v2, v10}, Lmk/q;-><init>([I)V

    iget-object v3, v2, Lmk/q;->g:[I

    invoke-static {v8, v3}, Lmk/p;->o([I[I)V

    iget-object v3, v2, Lmk/q;->g:[I

    invoke-static {v3, v4, v3}, Lmk/p;->q([I[I[I)V

    new-instance v3, Lmk/q;

    invoke-direct {v3, v4}, Lmk/q;-><init>([I)V

    iget-object v4, v2, Lmk/q;->g:[I

    iget-object v5, v3, Lmk/q;->g:[I

    invoke-static {v9, v4, v5}, Lmk/p;->q([I[I[I)V

    iget-object v4, v3, Lmk/q;->g:[I

    invoke-static {v4, v8, v7}, Lmk/p;->i([I[I[I)V

    iget-object v4, v3, Lmk/q;->g:[I

    invoke-static {v7, v4}, Lmk/p;->m([I[I)V

    new-instance v4, Lmk/q;

    invoke-direct {v4, v13}, Lmk/q;-><init>([I)V

    if-nez v11, :cond_7

    iget-object v5, v4, Lmk/q;->g:[I

    iget-object v6, v6, Lmk/q;->g:[I

    invoke-static {v5, v6, v5}, Lmk/p;->h([I[I[I)V

    :cond_7
    if-nez v12, :cond_8

    iget-object v5, v4, Lmk/q;->g:[I

    iget-object p1, p1, Lmk/q;->g:[I

    invoke-static {v5, p1, v5}, Lmk/p;->h([I[I[I)V

    :cond_8
    const/4 p1, 0x1

    new-array p1, p1, [Ljk/f;

    aput-object v4, p1, v0

    new-instance v0, Lmk/r;

    invoke-direct {v0, v1, v2, v3, p1}, Lmk/r;-><init>(Ljk/e;Ljk/f;Ljk/f;[Ljk/f;)V

    return-object v0
.end method

.method public d()Ljk/i;
    .locals 4

    new-instance v0, Lmk/r;

    invoke-virtual {p0}, Ljk/i;->f()Ljk/f;

    move-result-object v1

    invoke-virtual {p0}, Ljk/i;->g()Ljk/f;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lmk/r;-><init>(Ljk/e;Ljk/f;Ljk/f;)V

    return-object v0
.end method
