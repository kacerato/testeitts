.class public Lmk/H;
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
    new-instance v0, Lmk/H;

    iget-object v1, p0, Ljk/i;->a:Ljk/e;

    iget-object v2, p0, Ljk/i;->b:Ljk/f;

    iget-object v3, p0, Ljk/i;->c:Ljk/f;

    invoke-virtual {v3}, Ljk/f;->n()Ljk/f;

    move-result-object v3

    iget-object v4, p0, Ljk/i;->d:[Ljk/f;

    invoke-direct {v0, v1, v2, v3, v4}, Lmk/H;-><init>(Ljk/e;Ljk/f;Ljk/f;[Ljk/f;)V

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
    invoke-virtual {p0}, Lmk/H;->M()Ljk/i;

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

    check-cast v2, Lmk/G;

    invoke-virtual {v2}, Lmk/G;->j()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljk/e;->x()Ljk/i;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v3, p0, Ljk/i;->b:Ljk/f;

    check-cast v3, Lmk/G;

    iget-object v4, p0, Ljk/i;->d:[Ljk/f;

    aget-object v4, v4, v0

    check-cast v4, Lmk/G;

    invoke-static {}, Lsk/i;->o()[I

    move-result-object v5

    invoke-static {}, Lsk/i;->m()[I

    move-result-object v6

    iget-object v7, v2, Lmk/G;->g:[I

    invoke-static {v7, v6, v5}, Lmk/F;->q([I[I[I)V

    invoke-static {}, Lsk/i;->m()[I

    move-result-object v7

    invoke-static {v6, v7, v5}, Lmk/F;->q([I[I[I)V

    invoke-static {}, Lsk/i;->m()[I

    move-result-object v8

    iget-object v9, v3, Lmk/G;->g:[I

    invoke-static {v9, v8, v5}, Lmk/F;->q([I[I[I)V

    invoke-static {v8, v8, v8}, Lsk/i;->d([I[I[I)I

    move-result v9

    invoke-static {v9, v8}, Lmk/F;->o(I[I)V

    iget-object v3, v3, Lmk/G;->g:[I

    invoke-static {v6, v3, v6, v5}, Lmk/F;->i([I[I[I[I)V

    const/4 v3, 0x2

    const/16 v9, 0x8

    invoke-static {v9, v6, v3, v0}, Lsk/o;->H0(I[III)I

    move-result v3

    invoke-static {v3, v6}, Lmk/F;->o(I[I)V

    invoke-static {}, Lsk/i;->m()[I

    move-result-object v3

    const/4 v10, 0x3

    invoke-static {v9, v7, v10, v0, v3}, Lsk/o;->K0(I[III[I)I

    move-result v9

    invoke-static {v9, v3}, Lmk/F;->o(I[I)V

    new-instance v9, Lmk/G;

    invoke-direct {v9, v7}, Lmk/G;-><init>([I)V

    iget-object v7, v9, Lmk/G;->g:[I

    invoke-static {v8, v7, v5}, Lmk/F;->q([I[I[I)V

    iget-object v7, v9, Lmk/G;->g:[I

    invoke-static {v7, v6, v7}, Lmk/F;->t([I[I[I)V

    iget-object v7, v9, Lmk/G;->g:[I

    invoke-static {v7, v6, v7}, Lmk/F;->t([I[I[I)V

    new-instance v7, Lmk/G;

    invoke-direct {v7, v6}, Lmk/G;-><init>([I)V

    iget-object v10, v9, Lmk/G;->g:[I

    iget-object v11, v7, Lmk/G;->g:[I

    invoke-static {v6, v10, v11}, Lmk/F;->t([I[I[I)V

    iget-object v6, v7, Lmk/G;->g:[I

    invoke-static {v6, v8, v6, v5}, Lmk/F;->i([I[I[I[I)V

    iget-object v6, v7, Lmk/G;->g:[I

    invoke-static {v6, v3, v6}, Lmk/F;->t([I[I[I)V

    new-instance v3, Lmk/G;

    invoke-direct {v3, v8}, Lmk/G;-><init>([I)V

    iget-object v2, v2, Lmk/G;->g:[I

    iget-object v6, v3, Lmk/G;->g:[I

    invoke-static {v2, v6}, Lmk/F;->v([I[I)V

    invoke-virtual {v4}, Lmk/G;->i()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v3, Lmk/G;->g:[I

    iget-object v4, v4, Lmk/G;->g:[I

    invoke-static {v2, v4, v2, v5}, Lmk/F;->i([I[I[I[I)V

    :cond_2
    new-instance v2, Lmk/H;

    const/4 v4, 0x1

    new-array v4, v4, [Ljk/f;

    aput-object v3, v4, v0

    invoke-direct {v2, v1, v9, v7, v4}, Lmk/H;-><init>(Ljk/e;Ljk/f;Ljk/f;[Ljk/f;)V

    return-object v2
.end method

.method public N(Ljk/i;)Ljk/i;
    .locals 1

    if-ne p0, p1, :cond_0

    invoke-virtual {p0}, Lmk/H;->K()Ljk/i;

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

    invoke-virtual {p0}, Lmk/H;->M()Ljk/i;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p0, Ljk/i;->c:Ljk/f;

    invoke-virtual {v0}, Ljk/f;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p1

    :cond_3
    invoke-virtual {p0}, Lmk/H;->M()Ljk/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljk/i;->a(Ljk/i;)Ljk/i;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljk/i;)Ljk/i;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    invoke-virtual/range {p0 .. p0}, Ljk/i;->v()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljk/i;->v()Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v0

    :cond_1
    if-ne v0, v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lmk/H;->M()Ljk/i;

    move-result-object v1

    return-object v1

    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljk/i;->i()Ljk/e;

    move-result-object v3

    iget-object v4, v0, Ljk/i;->b:Ljk/f;

    check-cast v4, Lmk/G;

    iget-object v5, v0, Ljk/i;->c:Ljk/f;

    check-cast v5, Lmk/G;

    invoke-virtual/range {p1 .. p1}, Ljk/i;->q()Ljk/f;

    move-result-object v6

    check-cast v6, Lmk/G;

    invoke-virtual/range {p1 .. p1}, Ljk/i;->r()Ljk/f;

    move-result-object v7

    check-cast v7, Lmk/G;

    iget-object v8, v0, Ljk/i;->d:[Ljk/f;

    aget-object v8, v8, v2

    check-cast v8, Lmk/G;

    invoke-virtual {v1, v2}, Ljk/i;->s(I)Ljk/f;

    move-result-object v1

    check-cast v1, Lmk/G;

    invoke-static {}, Lsk/i;->o()[I

    move-result-object v9

    invoke-static {}, Lsk/i;->o()[I

    move-result-object v10

    invoke-static {}, Lsk/i;->m()[I

    move-result-object v11

    invoke-static {}, Lsk/i;->m()[I

    move-result-object v12

    invoke-static {}, Lsk/i;->m()[I

    move-result-object v13

    invoke-virtual {v8}, Lmk/G;->i()Z

    move-result v14

    if-eqz v14, :cond_3

    iget-object v6, v6, Lmk/G;->g:[I

    iget-object v7, v7, Lmk/G;->g:[I

    goto :goto_0

    :cond_3
    iget-object v15, v8, Lmk/G;->g:[I

    invoke-static {v15, v12, v9}, Lmk/F;->q([I[I[I)V

    iget-object v6, v6, Lmk/G;->g:[I

    invoke-static {v12, v6, v11, v9}, Lmk/F;->i([I[I[I[I)V

    iget-object v6, v8, Lmk/G;->g:[I

    invoke-static {v12, v6, v12, v9}, Lmk/F;->i([I[I[I[I)V

    iget-object v6, v7, Lmk/G;->g:[I

    invoke-static {v12, v6, v12, v9}, Lmk/F;->i([I[I[I[I)V

    move-object v6, v11

    move-object v7, v12

    :goto_0
    invoke-virtual {v1}, Lmk/G;->i()Z

    move-result v15

    if-eqz v15, :cond_4

    iget-object v4, v4, Lmk/G;->g:[I

    iget-object v5, v5, Lmk/G;->g:[I

    goto :goto_1

    :cond_4
    iget-object v2, v1, Lmk/G;->g:[I

    invoke-static {v2, v13, v9}, Lmk/F;->q([I[I[I)V

    iget-object v2, v4, Lmk/G;->g:[I

    invoke-static {v13, v2, v10, v9}, Lmk/F;->i([I[I[I[I)V

    iget-object v2, v1, Lmk/G;->g:[I

    invoke-static {v13, v2, v13, v9}, Lmk/F;->i([I[I[I[I)V

    iget-object v2, v5, Lmk/G;->g:[I

    invoke-static {v13, v2, v13, v9}, Lmk/F;->i([I[I[I[I)V

    move-object v4, v10

    move-object v5, v13

    :goto_1
    invoke-static {}, Lsk/i;->m()[I

    move-result-object v2

    invoke-static {v4, v6, v2}, Lmk/F;->t([I[I[I)V

    invoke-static {v5, v7, v11}, Lmk/F;->t([I[I[I)V

    invoke-static {v2}, Lsk/i;->A([I)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v11}, Lsk/i;->A([I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lmk/H;->M()Ljk/i;

    move-result-object v1

    return-object v1

    :cond_5
    invoke-virtual {v3}, Ljk/e;->x()Ljk/i;

    move-result-object v1

    return-object v1

    :cond_6
    invoke-static {v2, v12, v9}, Lmk/F;->q([I[I[I)V

    invoke-static {}, Lsk/i;->m()[I

    move-result-object v6

    invoke-static {v12, v2, v6, v9}, Lmk/F;->i([I[I[I[I)V

    invoke-static {v12, v4, v12, v9}, Lmk/F;->i([I[I[I[I)V

    invoke-static {v6, v6}, Lmk/F;->k([I[I)V

    invoke-static {v5, v6, v10}, Lsk/i;->D([I[I[I)V

    invoke-static {v12, v12, v6}, Lsk/i;->d([I[I[I)I

    move-result v4

    invoke-static {v4, v6}, Lmk/F;->o(I[I)V

    new-instance v4, Lmk/G;

    invoke-direct {v4, v13}, Lmk/G;-><init>([I)V

    iget-object v5, v4, Lmk/G;->g:[I

    invoke-static {v11, v5, v9}, Lmk/F;->q([I[I[I)V

    iget-object v5, v4, Lmk/G;->g:[I

    invoke-static {v5, v6, v5}, Lmk/F;->t([I[I[I)V

    new-instance v5, Lmk/G;

    invoke-direct {v5, v6}, Lmk/G;-><init>([I)V

    iget-object v6, v4, Lmk/G;->g:[I

    iget-object v7, v5, Lmk/G;->g:[I

    invoke-static {v12, v6, v7}, Lmk/F;->t([I[I[I)V

    iget-object v6, v5, Lmk/G;->g:[I

    invoke-static {v6, v11, v10}, Lmk/F;->j([I[I[I)V

    iget-object v6, v5, Lmk/G;->g:[I

    invoke-static {v10, v6}, Lmk/F;->n([I[I)V

    new-instance v6, Lmk/G;

    invoke-direct {v6, v2}, Lmk/G;-><init>([I)V

    if-nez v14, :cond_7

    iget-object v2, v6, Lmk/G;->g:[I

    iget-object v7, v8, Lmk/G;->g:[I

    invoke-static {v2, v7, v2, v9}, Lmk/F;->i([I[I[I[I)V

    :cond_7
    if-nez v15, :cond_8

    iget-object v2, v6, Lmk/G;->g:[I

    iget-object v1, v1, Lmk/G;->g:[I

    invoke-static {v2, v1, v2, v9}, Lmk/F;->i([I[I[I[I)V

    :cond_8
    const/4 v1, 0x1

    new-array v1, v1, [Ljk/f;

    const/4 v2, 0x0

    aput-object v6, v1, v2

    new-instance v2, Lmk/H;

    invoke-direct {v2, v3, v4, v5, v1}, Lmk/H;-><init>(Ljk/e;Ljk/f;Ljk/f;[Ljk/f;)V

    return-object v2
.end method

.method public d()Ljk/i;
    .locals 4

    new-instance v0, Lmk/H;

    invoke-virtual {p0}, Ljk/i;->f()Ljk/f;

    move-result-object v1

    invoke-virtual {p0}, Ljk/i;->g()Ljk/f;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lmk/H;-><init>(Ljk/e;Ljk/f;Ljk/f;)V

    return-object v0
.end method
