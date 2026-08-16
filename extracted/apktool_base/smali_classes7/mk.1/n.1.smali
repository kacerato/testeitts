.class public Lmk/n;
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
    new-instance v0, Lmk/n;

    iget-object v1, p0, Ljk/i;->a:Ljk/e;

    iget-object v2, p0, Ljk/i;->b:Ljk/f;

    iget-object v3, p0, Ljk/i;->c:Ljk/f;

    invoke-virtual {v3}, Ljk/f;->n()Ljk/f;

    move-result-object v3

    iget-object v4, p0, Ljk/i;->d:[Ljk/f;

    invoke-direct {v0, v1, v2, v3, v4}, Lmk/n;-><init>(Ljk/e;Ljk/f;Ljk/f;[Ljk/f;)V

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
    invoke-virtual {p0}, Lmk/n;->M()Ljk/i;

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

    check-cast v2, Lmk/m;

    invoke-virtual {v2}, Lmk/m;->j()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljk/e;->x()Ljk/i;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v3, p0, Ljk/i;->b:Ljk/f;

    check-cast v3, Lmk/m;

    iget-object v4, p0, Ljk/i;->d:[Ljk/f;

    aget-object v4, v4, v0

    check-cast v4, Lmk/m;

    invoke-static {}, Lsk/f;->h()[I

    move-result-object v5

    invoke-static {}, Lsk/f;->h()[I

    move-result-object v6

    invoke-static {}, Lsk/f;->h()[I

    move-result-object v7

    iget-object v8, v2, Lmk/m;->g:[I

    invoke-static {v8, v7}, Lmk/l;->o([I[I)V

    invoke-static {}, Lsk/f;->h()[I

    move-result-object v8

    invoke-static {v7, v8}, Lmk/l;->o([I[I)V

    invoke-virtual {v4}, Lmk/m;->i()Z

    move-result v9

    iget-object v10, v4, Lmk/m;->g:[I

    if-nez v9, :cond_2

    invoke-static {v10, v6}, Lmk/l;->o([I[I)V

    move-object v10, v6

    :cond_2
    iget-object v11, v3, Lmk/m;->g:[I

    invoke-static {v11, v10, v5}, Lmk/l;->q([I[I[I)V

    iget-object v11, v3, Lmk/m;->g:[I

    invoke-static {v11, v10, v6}, Lmk/l;->a([I[I[I)V

    invoke-static {v6, v5, v6}, Lmk/l;->h([I[I[I)V

    invoke-static {v6, v6, v6}, Lsk/f;->b([I[I[I)I

    move-result v10

    invoke-static {v10, v6}, Lmk/l;->n(I[I)V

    iget-object v3, v3, Lmk/m;->g:[I

    invoke-static {v7, v3, v7}, Lmk/l;->h([I[I[I)V

    const/4 v3, 0x2

    const/4 v10, 0x5

    invoke-static {v10, v7, v3, v0}, Lsk/o;->H0(I[III)I

    move-result v3

    invoke-static {v3, v7}, Lmk/l;->n(I[I)V

    const/4 v3, 0x3

    invoke-static {v10, v8, v3, v0, v5}, Lsk/o;->K0(I[III[I)I

    move-result v3

    invoke-static {v3, v5}, Lmk/l;->n(I[I)V

    new-instance v3, Lmk/m;

    invoke-direct {v3, v8}, Lmk/m;-><init>([I)V

    iget-object v8, v3, Lmk/m;->g:[I

    invoke-static {v6, v8}, Lmk/l;->o([I[I)V

    iget-object v8, v3, Lmk/m;->g:[I

    invoke-static {v8, v7, v8}, Lmk/l;->q([I[I[I)V

    iget-object v8, v3, Lmk/m;->g:[I

    invoke-static {v8, v7, v8}, Lmk/l;->q([I[I[I)V

    new-instance v8, Lmk/m;

    invoke-direct {v8, v7}, Lmk/m;-><init>([I)V

    iget-object v10, v3, Lmk/m;->g:[I

    iget-object v11, v8, Lmk/m;->g:[I

    invoke-static {v7, v10, v11}, Lmk/l;->q([I[I[I)V

    iget-object v7, v8, Lmk/m;->g:[I

    invoke-static {v7, v6, v7}, Lmk/l;->h([I[I[I)V

    iget-object v7, v8, Lmk/m;->g:[I

    invoke-static {v7, v5, v7}, Lmk/l;->q([I[I[I)V

    new-instance v5, Lmk/m;

    invoke-direct {v5, v6}, Lmk/m;-><init>([I)V

    iget-object v2, v2, Lmk/m;->g:[I

    iget-object v6, v5, Lmk/m;->g:[I

    invoke-static {v2, v6}, Lmk/l;->s([I[I)V

    if-nez v9, :cond_3

    iget-object v2, v5, Lmk/m;->g:[I

    iget-object v4, v4, Lmk/m;->g:[I

    invoke-static {v2, v4, v2}, Lmk/l;->h([I[I[I)V

    :cond_3
    new-instance v2, Lmk/n;

    const/4 v4, 0x1

    new-array v4, v4, [Ljk/f;

    aput-object v5, v4, v0

    invoke-direct {v2, v1, v3, v8, v4}, Lmk/n;-><init>(Ljk/e;Ljk/f;Ljk/f;[Ljk/f;)V

    return-object v2
.end method

.method public N(Ljk/i;)Ljk/i;
    .locals 1

    if-ne p0, p1, :cond_0

    invoke-virtual {p0}, Lmk/n;->K()Ljk/i;

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

    invoke-virtual {p0}, Lmk/n;->M()Ljk/i;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p0, Ljk/i;->c:Ljk/f;

    invoke-virtual {v0}, Ljk/f;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p1

    :cond_3
    invoke-virtual {p0}, Lmk/n;->M()Ljk/i;

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

    invoke-virtual {p0}, Lmk/n;->M()Ljk/i;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-virtual {p0}, Ljk/i;->i()Ljk/e;

    move-result-object v1

    iget-object v2, p0, Ljk/i;->b:Ljk/f;

    check-cast v2, Lmk/m;

    iget-object v3, p0, Ljk/i;->c:Ljk/f;

    check-cast v3, Lmk/m;

    invoke-virtual {p1}, Ljk/i;->q()Ljk/f;

    move-result-object v4

    check-cast v4, Lmk/m;

    invoke-virtual {p1}, Ljk/i;->r()Ljk/f;

    move-result-object v5

    check-cast v5, Lmk/m;

    iget-object v6, p0, Ljk/i;->d:[Ljk/f;

    aget-object v6, v6, v0

    check-cast v6, Lmk/m;

    invoke-virtual {p1, v0}, Ljk/i;->s(I)Ljk/f;

    move-result-object p1

    check-cast p1, Lmk/m;

    invoke-static {}, Lsk/f;->i()[I

    move-result-object v7

    invoke-static {}, Lsk/f;->h()[I

    move-result-object v8

    invoke-static {}, Lsk/f;->h()[I

    move-result-object v9

    invoke-static {}, Lsk/f;->h()[I

    move-result-object v10

    invoke-virtual {v6}, Lmk/m;->i()Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v4, v4, Lmk/m;->g:[I

    iget-object v5, v5, Lmk/m;->g:[I

    goto :goto_0

    :cond_3
    iget-object v12, v6, Lmk/m;->g:[I

    invoke-static {v12, v9}, Lmk/l;->o([I[I)V

    iget-object v4, v4, Lmk/m;->g:[I

    invoke-static {v9, v4, v8}, Lmk/l;->h([I[I[I)V

    iget-object v4, v6, Lmk/m;->g:[I

    invoke-static {v9, v4, v9}, Lmk/l;->h([I[I[I)V

    iget-object v4, v5, Lmk/m;->g:[I

    invoke-static {v9, v4, v9}, Lmk/l;->h([I[I[I)V

    move-object v4, v8

    move-object v5, v9

    :goto_0
    invoke-virtual {p1}, Lmk/m;->i()Z

    move-result v12

    if-eqz v12, :cond_4

    iget-object v2, v2, Lmk/m;->g:[I

    iget-object v3, v3, Lmk/m;->g:[I

    goto :goto_1

    :cond_4
    iget-object v13, p1, Lmk/m;->g:[I

    invoke-static {v13, v10}, Lmk/l;->o([I[I)V

    iget-object v2, v2, Lmk/m;->g:[I

    invoke-static {v10, v2, v7}, Lmk/l;->h([I[I[I)V

    iget-object v2, p1, Lmk/m;->g:[I

    invoke-static {v10, v2, v10}, Lmk/l;->h([I[I[I)V

    iget-object v2, v3, Lmk/m;->g:[I

    invoke-static {v10, v2, v10}, Lmk/l;->h([I[I[I)V

    move-object v2, v7

    move-object v3, v10

    :goto_1
    invoke-static {}, Lsk/f;->h()[I

    move-result-object v13

    invoke-static {v2, v4, v13}, Lmk/l;->q([I[I[I)V

    invoke-static {v3, v5, v8}, Lmk/l;->q([I[I[I)V

    invoke-static {v13}, Lsk/f;->q([I)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v8}, Lsk/f;->q([I)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lmk/n;->M()Ljk/i;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-virtual {v1}, Ljk/e;->x()Ljk/i;

    move-result-object p1

    return-object p1

    :cond_6
    invoke-static {v13, v9}, Lmk/l;->o([I[I)V

    invoke-static {}, Lsk/f;->h()[I

    move-result-object v4

    invoke-static {v9, v13, v4}, Lmk/l;->h([I[I[I)V

    invoke-static {v9, v2, v9}, Lmk/l;->h([I[I[I)V

    invoke-static {v4, v4}, Lmk/l;->j([I[I)V

    invoke-static {v3, v4, v7}, Lsk/f;->s([I[I[I)V

    invoke-static {v9, v9, v4}, Lsk/f;->b([I[I[I)I

    move-result v2

    invoke-static {v2, v4}, Lmk/l;->n(I[I)V

    new-instance v2, Lmk/m;

    invoke-direct {v2, v10}, Lmk/m;-><init>([I)V

    iget-object v3, v2, Lmk/m;->g:[I

    invoke-static {v8, v3}, Lmk/l;->o([I[I)V

    iget-object v3, v2, Lmk/m;->g:[I

    invoke-static {v3, v4, v3}, Lmk/l;->q([I[I[I)V

    new-instance v3, Lmk/m;

    invoke-direct {v3, v4}, Lmk/m;-><init>([I)V

    iget-object v4, v2, Lmk/m;->g:[I

    iget-object v5, v3, Lmk/m;->g:[I

    invoke-static {v9, v4, v5}, Lmk/l;->q([I[I[I)V

    iget-object v4, v3, Lmk/m;->g:[I

    invoke-static {v4, v8, v7}, Lmk/l;->i([I[I[I)V

    iget-object v4, v3, Lmk/m;->g:[I

    invoke-static {v7, v4}, Lmk/l;->m([I[I)V

    new-instance v4, Lmk/m;

    invoke-direct {v4, v13}, Lmk/m;-><init>([I)V

    if-nez v11, :cond_7

    iget-object v5, v4, Lmk/m;->g:[I

    iget-object v6, v6, Lmk/m;->g:[I

    invoke-static {v5, v6, v5}, Lmk/l;->h([I[I[I)V

    :cond_7
    if-nez v12, :cond_8

    iget-object v5, v4, Lmk/m;->g:[I

    iget-object p1, p1, Lmk/m;->g:[I

    invoke-static {v5, p1, v5}, Lmk/l;->h([I[I[I)V

    :cond_8
    const/4 p1, 0x1

    new-array p1, p1, [Ljk/f;

    aput-object v4, p1, v0

    new-instance v0, Lmk/n;

    invoke-direct {v0, v1, v2, v3, p1}, Lmk/n;-><init>(Ljk/e;Ljk/f;Ljk/f;[Ljk/f;)V

    return-object v0
.end method

.method public d()Ljk/i;
    .locals 4

    new-instance v0, Lmk/n;

    invoke-virtual {p0}, Ljk/i;->f()Ljk/f;

    move-result-object v1

    invoke-virtual {p0}, Ljk/i;->g()Ljk/f;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lmk/n;-><init>(Ljk/e;Ljk/f;Ljk/f;)V

    return-object v0
.end method
