.class public Lkk/d;
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
    new-instance v0, Lkk/d;

    invoke-virtual {p0}, Ljk/i;->i()Ljk/e;

    move-result-object v1

    iget-object v2, p0, Ljk/i;->b:Ljk/f;

    iget-object v3, p0, Ljk/i;->c:Ljk/f;

    invoke-virtual {v3}, Ljk/f;->n()Ljk/f;

    move-result-object v3

    iget-object v4, p0, Ljk/i;->d:[Ljk/f;

    invoke-direct {v0, v1, v2, v3, v4}, Lkk/d;-><init>(Ljk/e;Ljk/f;Ljk/f;[Ljk/f;)V

    return-object v0
.end method

.method public K()Ljk/i;
    .locals 1

    invoke-virtual {p0}, Ljk/i;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    iget-object v0, p0, Ljk/i;->c:Ljk/f;

    invoke-virtual {v0}, Ljk/f;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lkk/d;->Q(Z)Lkk/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lkk/d;->a(Ljk/i;)Ljk/i;

    move-result-object v0

    return-object v0
.end method

.method public M()Ljk/i;
    .locals 2

    invoke-virtual {p0}, Ljk/i;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljk/i;->i()Ljk/e;

    move-result-object v0

    iget-object v1, p0, Ljk/i;->c:Ljk/f;

    invoke-virtual {v1}, Ljk/f;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljk/e;->x()Ljk/i;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lkk/d;->Q(Z)Lkk/d;

    move-result-object v0

    return-object v0
.end method

.method public N(Ljk/i;)Ljk/i;
    .locals 1

    if-ne p0, p1, :cond_0

    invoke-virtual {p0}, Lkk/d;->K()Ljk/i;

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

    invoke-virtual {p0}, Lkk/d;->M()Ljk/i;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p0, Ljk/i;->c:Ljk/f;

    invoke-virtual {v0}, Ljk/f;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p1

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lkk/d;->Q(Z)Lkk/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkk/d;->a(Ljk/i;)Ljk/i;

    move-result-object p1

    return-object p1
.end method

.method public O(Lkk/c;[I)Lkk/c;
    .locals 2

    invoke-virtual {p0}, Ljk/i;->i()Ljk/e;

    move-result-object v0

    invoke-virtual {v0}, Ljk/e;->p()Ljk/f;

    move-result-object v0

    check-cast v0, Lkk/c;

    invoke-virtual {p1}, Lkk/c;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lkk/c;

    invoke-direct {v1}, Lkk/c;-><init>()V

    if-nez p2, :cond_1

    iget-object p2, v1, Lkk/c;->g:[I

    iget-object p1, p1, Lkk/c;->g:[I

    invoke-static {p1, p2}, Lkk/b;->q([I[I)V

    :cond_1
    iget-object p1, v1, Lkk/c;->g:[I

    invoke-static {p2, p1}, Lkk/b;->q([I[I)V

    iget-object p1, v1, Lkk/c;->g:[I

    iget-object p2, v0, Lkk/c;->g:[I

    invoke-static {p1, p2, p1}, Lkk/b;->j([I[I[I)V

    return-object v1
.end method

.method public P()Lkk/c;
    .locals 4

    iget-object v0, p0, Ljk/i;->d:[Ljk/f;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    check-cast v2, Lkk/c;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    check-cast v2, Lkk/c;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lkk/d;->O(Lkk/c;[I)Lkk/c;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_0
    return-object v2
.end method

.method public Q(Z)Lkk/d;
    .locals 11

    iget-object v0, p0, Ljk/i;->b:Ljk/f;

    check-cast v0, Lkk/c;

    iget-object v1, p0, Ljk/i;->c:Ljk/f;

    check-cast v1, Lkk/c;

    iget-object v2, p0, Ljk/i;->d:[Ljk/f;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    check-cast v2, Lkk/c;

    invoke-virtual {p0}, Lkk/d;->P()Lkk/c;

    move-result-object v4

    invoke-static {}, Lsk/i;->m()[I

    move-result-object v5

    iget-object v6, v0, Lkk/c;->g:[I

    invoke-static {v6, v5}, Lkk/b;->q([I[I)V

    invoke-static {v5, v5, v5}, Lsk/i;->d([I[I[I)I

    move-result v6

    iget-object v7, v4, Lkk/c;->g:[I

    invoke-static {v7, v5}, Lsk/i;->f([I[I)I

    move-result v7

    add-int/2addr v6, v7

    invoke-static {v6, v5}, Lkk/b;->p(I[I)V

    invoke-static {}, Lsk/i;->m()[I

    move-result-object v6

    iget-object v7, v1, Lkk/c;->g:[I

    invoke-static {v7, v6}, Lkk/b;->w([I[I)V

    invoke-static {}, Lsk/i;->m()[I

    move-result-object v7

    iget-object v1, v1, Lkk/c;->g:[I

    invoke-static {v6, v1, v7}, Lkk/b;->j([I[I[I)V

    invoke-static {}, Lsk/i;->m()[I

    move-result-object v1

    iget-object v0, v0, Lkk/c;->g:[I

    invoke-static {v7, v0, v1}, Lkk/b;->j([I[I[I)V

    invoke-static {v1, v1}, Lkk/b;->w([I[I)V

    invoke-static {}, Lsk/i;->m()[I

    move-result-object v0

    invoke-static {v7, v0}, Lkk/b;->q([I[I)V

    invoke-static {v0, v0}, Lkk/b;->w([I[I)V

    new-instance v8, Lkk/c;

    invoke-direct {v8, v7}, Lkk/c;-><init>([I)V

    iget-object v7, v8, Lkk/c;->g:[I

    invoke-static {v5, v7}, Lkk/b;->q([I[I)V

    iget-object v7, v8, Lkk/c;->g:[I

    invoke-static {v7, v1, v7}, Lkk/b;->u([I[I[I)V

    iget-object v7, v8, Lkk/c;->g:[I

    invoke-static {v7, v1, v7}, Lkk/b;->u([I[I[I)V

    new-instance v7, Lkk/c;

    invoke-direct {v7, v1}, Lkk/c;-><init>([I)V

    iget-object v9, v8, Lkk/c;->g:[I

    iget-object v10, v7, Lkk/c;->g:[I

    invoke-static {v1, v9, v10}, Lkk/b;->u([I[I[I)V

    iget-object v1, v7, Lkk/c;->g:[I

    invoke-static {v1, v5, v1}, Lkk/b;->j([I[I[I)V

    iget-object v1, v7, Lkk/c;->g:[I

    invoke-static {v1, v0, v1}, Lkk/b;->u([I[I[I)V

    new-instance v1, Lkk/c;

    invoke-direct {v1, v6}, Lkk/c;-><init>([I)V

    iget-object v5, v2, Lkk/c;->g:[I

    invoke-static {v5}, Lsk/i;->y([I)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v1, Lkk/c;->g:[I

    iget-object v2, v2, Lkk/c;->g:[I

    invoke-static {v5, v2, v5}, Lkk/b;->j([I[I[I)V

    :cond_0
    if-eqz p1, :cond_1

    new-instance p1, Lkk/c;

    invoke-direct {p1, v0}, Lkk/c;-><init>([I)V

    iget-object v0, p1, Lkk/c;->g:[I

    iget-object v2, v4, Lkk/c;->g:[I

    invoke-static {v0, v2, v0}, Lkk/b;->j([I[I[I)V

    iget-object v0, p1, Lkk/c;->g:[I

    invoke-static {v0, v0}, Lkk/b;->w([I[I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    new-instance v0, Lkk/d;

    invoke-virtual {p0}, Ljk/i;->i()Ljk/e;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljk/f;

    aput-object v1, v4, v3

    const/4 v1, 0x1

    aput-object p1, v4, v1

    invoke-direct {v0, v2, v8, v7, v4}, Lkk/d;-><init>(Ljk/e;Ljk/f;Ljk/f;[Ljk/f;)V

    return-object v0
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

    invoke-virtual {p0}, Lkk/d;->M()Ljk/i;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p0}, Ljk/i;->i()Ljk/e;

    move-result-object v1

    iget-object v2, p0, Ljk/i;->b:Ljk/f;

    check-cast v2, Lkk/c;

    iget-object v3, p0, Ljk/i;->c:Ljk/f;

    check-cast v3, Lkk/c;

    iget-object v4, p0, Ljk/i;->d:[Ljk/f;

    aget-object v4, v4, v0

    check-cast v4, Lkk/c;

    invoke-virtual {p1}, Ljk/i;->q()Ljk/f;

    move-result-object v5

    check-cast v5, Lkk/c;

    invoke-virtual {p1}, Ljk/i;->r()Ljk/f;

    move-result-object v6

    check-cast v6, Lkk/c;

    invoke-virtual {p1, v0}, Ljk/i;->s(I)Ljk/f;

    move-result-object p1

    check-cast p1, Lkk/c;

    invoke-static {}, Lsk/i;->o()[I

    move-result-object v7

    invoke-static {}, Lsk/i;->m()[I

    move-result-object v8

    invoke-static {}, Lsk/i;->m()[I

    move-result-object v9

    invoke-static {}, Lsk/i;->m()[I

    move-result-object v10

    invoke-virtual {v4}, Lkk/c;->i()Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v5, v5, Lkk/c;->g:[I

    iget-object v6, v6, Lkk/c;->g:[I

    goto :goto_0

    :cond_3
    iget-object v12, v4, Lkk/c;->g:[I

    invoke-static {v12, v9}, Lkk/b;->q([I[I)V

    iget-object v5, v5, Lkk/c;->g:[I

    invoke-static {v9, v5, v8}, Lkk/b;->j([I[I[I)V

    iget-object v5, v4, Lkk/c;->g:[I

    invoke-static {v9, v5, v9}, Lkk/b;->j([I[I[I)V

    iget-object v5, v6, Lkk/c;->g:[I

    invoke-static {v9, v5, v9}, Lkk/b;->j([I[I[I)V

    move-object v5, v8

    move-object v6, v9

    :goto_0
    invoke-virtual {p1}, Lkk/c;->i()Z

    move-result v12

    if-eqz v12, :cond_4

    iget-object v2, v2, Lkk/c;->g:[I

    iget-object v3, v3, Lkk/c;->g:[I

    goto :goto_1

    :cond_4
    iget-object v13, p1, Lkk/c;->g:[I

    invoke-static {v13, v10}, Lkk/b;->q([I[I)V

    iget-object v2, v2, Lkk/c;->g:[I

    invoke-static {v10, v2, v7}, Lkk/b;->j([I[I[I)V

    iget-object v2, p1, Lkk/c;->g:[I

    invoke-static {v10, v2, v10}, Lkk/b;->j([I[I[I)V

    iget-object v2, v3, Lkk/c;->g:[I

    invoke-static {v10, v2, v10}, Lkk/b;->j([I[I[I)V

    move-object v2, v7

    move-object v3, v10

    :goto_1
    invoke-static {}, Lsk/i;->m()[I

    move-result-object v13

    invoke-static {v2, v5, v13}, Lkk/b;->u([I[I[I)V

    invoke-static {v3, v6, v8}, Lkk/b;->u([I[I[I)V

    invoke-static {v13}, Lsk/i;->A([I)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v8}, Lsk/i;->A([I)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lkk/d;->M()Ljk/i;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-virtual {v1}, Ljk/e;->x()Ljk/i;

    move-result-object p1

    return-object p1

    :cond_6
    invoke-static {}, Lsk/i;->m()[I

    move-result-object v5

    invoke-static {v13, v5}, Lkk/b;->q([I[I)V

    invoke-static {}, Lsk/i;->m()[I

    move-result-object v6

    invoke-static {v5, v13, v6}, Lkk/b;->j([I[I[I)V

    invoke-static {v5, v2, v9}, Lkk/b;->j([I[I[I)V

    invoke-static {v6, v6}, Lkk/b;->l([I[I)V

    invoke-static {v3, v6, v7}, Lsk/i;->D([I[I[I)V

    invoke-static {v9, v9, v6}, Lsk/i;->d([I[I[I)I

    move-result v2

    invoke-static {v2, v6}, Lkk/b;->p(I[I)V

    new-instance v2, Lkk/c;

    invoke-direct {v2, v10}, Lkk/c;-><init>([I)V

    iget-object v3, v2, Lkk/c;->g:[I

    invoke-static {v8, v3}, Lkk/b;->q([I[I)V

    iget-object v3, v2, Lkk/c;->g:[I

    invoke-static {v3, v6, v3}, Lkk/b;->u([I[I[I)V

    new-instance v3, Lkk/c;

    invoke-direct {v3, v6}, Lkk/c;-><init>([I)V

    iget-object v6, v2, Lkk/c;->g:[I

    iget-object v10, v3, Lkk/c;->g:[I

    invoke-static {v9, v6, v10}, Lkk/b;->u([I[I[I)V

    iget-object v6, v3, Lkk/c;->g:[I

    invoke-static {v6, v8, v7}, Lkk/b;->k([I[I[I)V

    iget-object v6, v3, Lkk/c;->g:[I

    invoke-static {v7, v6}, Lkk/b;->o([I[I)V

    new-instance v6, Lkk/c;

    invoke-direct {v6, v13}, Lkk/c;-><init>([I)V

    if-nez v11, :cond_7

    iget-object v7, v6, Lkk/c;->g:[I

    iget-object v4, v4, Lkk/c;->g:[I

    invoke-static {v7, v4, v7}, Lkk/b;->j([I[I[I)V

    :cond_7
    if-nez v12, :cond_8

    iget-object v4, v6, Lkk/c;->g:[I

    iget-object p1, p1, Lkk/c;->g:[I

    invoke-static {v4, p1, v4}, Lkk/b;->j([I[I[I)V

    :cond_8
    if-eqz v11, :cond_9

    if-eqz v12, :cond_9

    goto :goto_2

    :cond_9
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {p0, v6, v5}, Lkk/d;->O(Lkk/c;[I)Lkk/c;

    move-result-object p1

    const/4 v4, 0x2

    new-array v4, v4, [Ljk/f;

    aput-object v6, v4, v0

    const/4 v0, 0x1

    aput-object p1, v4, v0

    new-instance p1, Lkk/d;

    invoke-direct {p1, v1, v2, v3, v4}, Lkk/d;-><init>(Ljk/e;Ljk/f;Ljk/f;[Ljk/f;)V

    return-object p1
.end method

.method public d()Ljk/i;
    .locals 4

    new-instance v0, Lkk/d;

    invoke-virtual {p0}, Ljk/i;->f()Ljk/f;

    move-result-object v1

    invoke-virtual {p0}, Ljk/i;->g()Ljk/f;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lkk/d;-><init>(Ljk/e;Ljk/f;Ljk/f;)V

    return-object v0
.end method

.method public s(I)Ljk/f;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lkk/d;->P()Lkk/c;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Ljk/i;->s(I)Ljk/f;

    move-result-object p1

    return-object p1
.end method
