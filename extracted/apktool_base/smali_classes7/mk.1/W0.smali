.class public Lmk/W0;
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

    new-instance v3, Lmk/W0;

    iget-object v4, p0, Ljk/i;->a:Ljk/e;

    invoke-virtual {v1, v2}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object v1

    filled-new-array {v2}, [Ljk/f;

    move-result-object v2

    invoke-direct {v3, v4, v0, v1, v2}, Lmk/W0;-><init>(Ljk/e;Ljk/f;Ljk/f;[Ljk/f;)V

    return-object v3
.end method

.method public M()Ljk/i;
    .locals 10

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljk/i;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljk/i;->i()Ljk/e;

    move-result-object v1

    iget-object v2, p0, Ljk/i;->b:Ljk/f;

    check-cast v2, Lmk/S0;

    invoke-virtual {v2}, Lmk/S0;->j()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljk/e;->x()Ljk/i;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v3, p0, Ljk/i;->c:Ljk/f;

    check-cast v3, Lmk/S0;

    iget-object v4, p0, Ljk/i;->d:[Ljk/f;

    aget-object v4, v4, v0

    check-cast v4, Lmk/S0;

    invoke-static {}, Lsk/n;->c()[J

    move-result-object v5

    invoke-static {}, Lsk/n;->c()[J

    move-result-object v6

    invoke-virtual {v4}, Lmk/S0;->i()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x0

    goto :goto_0

    :cond_2
    iget-object v7, v4, Lmk/S0;->g:[J

    invoke-static {v7}, Lmk/R0;->s([J)[J

    move-result-object v7

    :goto_0
    iget-object v8, v3, Lmk/S0;->g:[J

    if-nez v7, :cond_3

    iget-object v4, v4, Lmk/S0;->g:[J

    goto :goto_1

    :cond_3
    invoke-static {v8, v7, v5}, Lmk/R0;->q([J[J[J)V

    iget-object v4, v4, Lmk/S0;->g:[J

    invoke-static {v4, v6}, Lmk/R0;->w([J[J)V

    move-object v8, v5

    move-object v4, v6

    :goto_1
    invoke-static {}, Lsk/n;->c()[J

    move-result-object v9

    iget-object v3, v3, Lmk/S0;->g:[J

    invoke-static {v3, v9}, Lmk/R0;->w([J[J)V

    invoke-static {v8, v4, v9}, Lmk/R0;->d([J[J[J)V

    invoke-static {v9}, Lsk/n;->h([J)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v0, Lmk/W0;

    new-instance v2, Lmk/S0;

    invoke-direct {v2, v9}, Lmk/S0;-><init>([J)V

    sget-object v3, Lmk/V0;->v:Lmk/S0;

    invoke-direct {v0, v1, v2, v3}, Lmk/W0;-><init>(Ljk/e;Ljk/f;Ljk/f;)V

    return-object v0

    :cond_4
    invoke-static {}, Lsk/n;->d()[J

    move-result-object v3

    invoke-static {v9, v8, v3}, Lmk/R0;->p([J[J[J)V

    new-instance v8, Lmk/S0;

    invoke-direct {v8, v5}, Lmk/S0;-><init>([J)V

    iget-object v5, v8, Lmk/S0;->g:[J

    invoke-static {v9, v5}, Lmk/R0;->w([J[J)V

    new-instance v5, Lmk/S0;

    invoke-direct {v5, v9}, Lmk/S0;-><init>([J)V

    if-eqz v7, :cond_5

    iget-object v9, v5, Lmk/S0;->g:[J

    invoke-static {v9, v4, v9}, Lmk/R0;->o([J[J[J)V

    :cond_5
    iget-object v2, v2, Lmk/S0;->g:[J

    if-nez v7, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {v2, v7, v6}, Lmk/R0;->q([J[J[J)V

    move-object v2, v6

    :goto_2
    invoke-static {v2, v3}, Lmk/R0;->x([J[J)V

    invoke-static {v3, v6}, Lmk/R0;->t([J[J)V

    iget-object v2, v8, Lmk/S0;->g:[J

    iget-object v3, v5, Lmk/S0;->g:[J

    invoke-static {v2, v3, v6}, Lmk/R0;->d([J[J[J)V

    new-instance v2, Lmk/S0;

    invoke-direct {v2, v6}, Lmk/S0;-><init>([J)V

    new-instance v3, Lmk/W0;

    const/4 v4, 0x1

    new-array v4, v4, [Ljk/f;

    aput-object v5, v4, v0

    invoke-direct {v3, v1, v8, v2, v4}, Lmk/W0;-><init>(Ljk/e;Ljk/f;Ljk/f;[Ljk/f;)V

    return-object v3
.end method

.method public N(Ljk/i;)Ljk/i;
    .locals 11

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljk/i;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Ljk/i;->v()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lmk/W0;->M()Ljk/i;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Ljk/i;->i()Ljk/e;

    move-result-object v1

    iget-object v2, p0, Ljk/i;->b:Ljk/f;

    check-cast v2, Lmk/S0;

    invoke-virtual {v2}, Lmk/S0;->j()Z

    move-result v3

    if-eqz v3, :cond_2

    return-object p1

    :cond_2
    invoke-virtual {p1}, Ljk/i;->n()Ljk/f;

    move-result-object v3

    check-cast v3, Lmk/S0;

    invoke-virtual {p1, v0}, Ljk/i;->s(I)Ljk/f;

    move-result-object v4

    check-cast v4, Lmk/S0;

    invoke-virtual {v3}, Lmk/S0;->j()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v4}, Lmk/S0;->i()Z

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_0

    :cond_3
    iget-object v4, p0, Ljk/i;->c:Ljk/f;

    check-cast v4, Lmk/S0;

    iget-object v5, p0, Ljk/i;->d:[Ljk/f;

    aget-object v5, v5, v0

    check-cast v5, Lmk/S0;

    invoke-virtual {p1}, Ljk/i;->o()Ljk/f;

    move-result-object v6

    check-cast v6, Lmk/S0;

    invoke-static {}, Lsk/n;->c()[J

    move-result-object v7

    invoke-static {}, Lsk/n;->c()[J

    move-result-object v8

    invoke-static {}, Lsk/n;->c()[J

    move-result-object v9

    invoke-static {}, Lsk/n;->c()[J

    move-result-object v10

    iget-object v2, v2, Lmk/S0;->g:[J

    invoke-static {v2, v7}, Lmk/R0;->w([J[J)V

    iget-object v2, v4, Lmk/S0;->g:[J

    invoke-static {v2, v8}, Lmk/R0;->w([J[J)V

    iget-object v2, v5, Lmk/S0;->g:[J

    invoke-static {v2, v9}, Lmk/R0;->w([J[J)V

    iget-object v2, v4, Lmk/S0;->g:[J

    iget-object v4, v5, Lmk/S0;->g:[J

    invoke-static {v2, v4, v10}, Lmk/R0;->o([J[J[J)V

    invoke-static {v9, v8, v10}, Lmk/R0;->d([J[J[J)V

    invoke-static {v9}, Lmk/R0;->s([J)[J

    move-result-object v2

    iget-object v4, v6, Lmk/S0;->g:[J

    invoke-static {v4, v2, v9}, Lmk/R0;->q([J[J[J)V

    invoke-static {v9, v8, v9}, Lmk/R0;->b([J[J[J)V

    invoke-static {}, Lsk/n;->d()[J

    move-result-object v4

    invoke-static {v9, v10, v4}, Lmk/R0;->p([J[J[J)V

    invoke-static {v7, v2, v4}, Lmk/R0;->r([J[J[J)V

    invoke-static {v4, v9}, Lmk/R0;->t([J[J)V

    iget-object v3, v3, Lmk/S0;->g:[J

    invoke-static {v3, v2, v7}, Lmk/R0;->q([J[J[J)V

    invoke-static {v7, v10, v8}, Lmk/R0;->b([J[J[J)V

    invoke-static {v8, v8}, Lmk/R0;->w([J[J)V

    invoke-static {v8}, Lsk/n;->h([J)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v9}, Lsk/n;->h([J)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljk/i;->M()Ljk/i;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-virtual {v1}, Ljk/e;->x()Ljk/i;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-static {v9}, Lsk/n;->h([J)Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Lmk/W0;

    new-instance v0, Lmk/S0;

    invoke-direct {v0, v9}, Lmk/S0;-><init>([J)V

    sget-object v2, Lmk/V0;->v:Lmk/S0;

    invoke-direct {p1, v1, v0, v2}, Lmk/W0;-><init>(Ljk/e;Ljk/f;Ljk/f;)V

    return-object p1

    :cond_6
    new-instance p1, Lmk/S0;

    invoke-direct {p1}, Lmk/S0;-><init>()V

    iget-object v3, p1, Lmk/S0;->g:[J

    invoke-static {v9, v3}, Lmk/R0;->w([J[J)V

    iget-object v3, p1, Lmk/S0;->g:[J

    invoke-static {v3, v7, v3}, Lmk/R0;->o([J[J[J)V

    new-instance v3, Lmk/S0;

    invoke-direct {v3, v7}, Lmk/S0;-><init>([J)V

    iget-object v5, v3, Lmk/S0;->g:[J

    invoke-static {v9, v8, v5}, Lmk/R0;->o([J[J[J)V

    iget-object v5, v3, Lmk/S0;->g:[J

    invoke-static {v5, v2, v5}, Lmk/R0;->q([J[J[J)V

    new-instance v2, Lmk/S0;

    invoke-direct {v2, v8}, Lmk/S0;-><init>([J)V

    iget-object v5, v2, Lmk/S0;->g:[J

    invoke-static {v9, v8, v5}, Lmk/R0;->b([J[J[J)V

    iget-object v5, v2, Lmk/S0;->g:[J

    invoke-static {v5, v5}, Lmk/R0;->w([J[J)V

    const/16 v5, 0x12

    invoke-static {v5, v4}, Lsk/o;->m1(I[J)V

    iget-object v5, v2, Lmk/S0;->g:[J

    invoke-static {v5, v10, v4}, Lmk/R0;->p([J[J[J)V

    iget-object v5, v6, Lmk/S0;->g:[J

    invoke-static {v5, v10}, Lmk/R0;->f([J[J)V

    iget-object v5, v3, Lmk/S0;->g:[J

    invoke-static {v10, v5, v4}, Lmk/R0;->p([J[J[J)V

    iget-object v5, v2, Lmk/S0;->g:[J

    invoke-static {v4, v5}, Lmk/R0;->t([J[J)V

    new-instance v4, Lmk/W0;

    const/4 v5, 0x1

    new-array v5, v5, [Ljk/f;

    aput-object v3, v5, v0

    invoke-direct {v4, v1, p1, v2, v5}, Lmk/W0;-><init>(Ljk/e;Ljk/f;Ljk/f;[Ljk/f;)V

    return-object v4

    :cond_7
    :goto_0
    invoke-virtual {p0}, Lmk/W0;->M()Ljk/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljk/i;->a(Ljk/i;)Ljk/i;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljk/i;)Ljk/i;
    .locals 17

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
    invoke-virtual/range {p0 .. p0}, Ljk/i;->i()Ljk/e;

    move-result-object v3

    iget-object v4, v0, Ljk/i;->b:Ljk/f;

    check-cast v4, Lmk/S0;

    invoke-virtual/range {p1 .. p1}, Ljk/i;->n()Ljk/f;

    move-result-object v5

    check-cast v5, Lmk/S0;

    invoke-virtual {v4}, Lmk/S0;->j()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lmk/S0;->j()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v3}, Ljk/e;->x()Ljk/i;

    move-result-object v1

    return-object v1

    :cond_2
    invoke-virtual {v1, v0}, Ljk/i;->a(Ljk/i;)Ljk/i;

    move-result-object v1

    return-object v1

    :cond_3
    iget-object v6, v0, Ljk/i;->c:Ljk/f;

    check-cast v6, Lmk/S0;

    iget-object v7, v0, Ljk/i;->d:[Ljk/f;

    aget-object v7, v7, v2

    check-cast v7, Lmk/S0;

    invoke-virtual/range {p1 .. p1}, Ljk/i;->o()Ljk/f;

    move-result-object v8

    check-cast v8, Lmk/S0;

    invoke-virtual {v1, v2}, Ljk/i;->s(I)Ljk/f;

    move-result-object v1

    check-cast v1, Lmk/S0;

    invoke-static {}, Lsk/n;->c()[J

    move-result-object v9

    invoke-static {}, Lsk/n;->c()[J

    move-result-object v10

    invoke-static {}, Lsk/n;->c()[J

    move-result-object v11

    invoke-static {}, Lsk/n;->c()[J

    move-result-object v12

    invoke-virtual {v7}, Lmk/S0;->i()Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x0

    goto :goto_0

    :cond_4
    iget-object v13, v7, Lmk/S0;->g:[J

    invoke-static {v13}, Lmk/R0;->s([J)[J

    move-result-object v13

    :goto_0
    if-nez v13, :cond_5

    iget-object v15, v5, Lmk/S0;->g:[J

    iget-object v14, v8, Lmk/S0;->g:[J

    goto :goto_1

    :cond_5
    iget-object v14, v5, Lmk/S0;->g:[J

    invoke-static {v14, v13, v10}, Lmk/R0;->q([J[J[J)V

    iget-object v14, v8, Lmk/S0;->g:[J

    invoke-static {v14, v13, v12}, Lmk/R0;->q([J[J[J)V

    move-object v15, v10

    move-object v14, v12

    :goto_1
    invoke-virtual {v1}, Lmk/S0;->i()Z

    move-result v16

    if-eqz v16, :cond_6

    const/4 v1, 0x0

    goto :goto_2

    :cond_6
    iget-object v1, v1, Lmk/S0;->g:[J

    invoke-static {v1}, Lmk/R0;->s([J)[J

    move-result-object v1

    :goto_2
    if-nez v1, :cond_7

    iget-object v4, v4, Lmk/S0;->g:[J

    iget-object v2, v6, Lmk/S0;->g:[J

    goto :goto_3

    :cond_7
    iget-object v2, v4, Lmk/S0;->g:[J

    invoke-static {v2, v1, v9}, Lmk/R0;->q([J[J[J)V

    iget-object v2, v6, Lmk/S0;->g:[J

    invoke-static {v2, v1, v11}, Lmk/R0;->q([J[J[J)V

    move-object v4, v9

    move-object v2, v11

    :goto_3
    invoke-static {v2, v14, v11}, Lmk/R0;->b([J[J[J)V

    invoke-static {v4, v15, v12}, Lmk/R0;->b([J[J[J)V

    invoke-static {v12}, Lsk/n;->h([J)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {v11}, Lsk/n;->h([J)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual/range {p0 .. p0}, Lmk/W0;->M()Ljk/i;

    move-result-object v1

    return-object v1

    :cond_8
    invoke-virtual {v3}, Ljk/e;->x()Ljk/i;

    move-result-object v1

    return-object v1

    :cond_9
    invoke-virtual {v5}, Lmk/S0;->j()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual/range {p0 .. p0}, Ljk/i;->B()Ljk/i;

    move-result-object v1

    invoke-virtual {v1}, Ljk/i;->q()Ljk/f;

    move-result-object v2

    check-cast v2, Lmk/S0;

    invoke-virtual {v1}, Ljk/i;->r()Ljk/f;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljk/f;->d(Ljk/f;)Ljk/f;

    move-result-object v4

    invoke-virtual {v4}, Ljk/f;->p()Ljk/f;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object v5

    invoke-virtual {v5}, Ljk/f;->b()Ljk/f;

    move-result-object v5

    check-cast v5, Lmk/S0;

    invoke-virtual {v5}, Lmk/S0;->j()Z

    move-result v6

    if-eqz v6, :cond_a

    new-instance v1, Lmk/W0;

    sget-object v2, Lmk/V0;->v:Lmk/S0;

    invoke-direct {v1, v3, v5, v2}, Lmk/W0;-><init>(Ljk/e;Ljk/f;Ljk/f;)V

    return-object v1

    :cond_a
    invoke-virtual {v2, v5}, Lmk/S0;->a(Ljk/f;)Ljk/f;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljk/f;->k(Ljk/f;)Ljk/f;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljk/f;->d(Ljk/f;)Ljk/f;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object v1

    check-cast v1, Lmk/S0;

    sget-object v2, Ljk/d;->b:Ljava/math/BigInteger;

    invoke-virtual {v3, v2}, Ljk/e;->o(Ljava/math/BigInteger;)Ljk/f;

    move-result-object v2

    check-cast v2, Lmk/S0;

    goto :goto_4

    :cond_b
    invoke-static {v12, v12}, Lmk/R0;->w([J[J)V

    invoke-static {v11}, Lmk/R0;->s([J)[J

    move-result-object v2

    invoke-static {v4, v2, v9}, Lmk/R0;->q([J[J[J)V

    invoke-static {v15, v2, v10}, Lmk/R0;->q([J[J[J)V

    new-instance v5, Lmk/S0;

    invoke-direct {v5, v9}, Lmk/S0;-><init>([J)V

    iget-object v4, v5, Lmk/S0;->g:[J

    invoke-static {v9, v10, v4}, Lmk/R0;->o([J[J[J)V

    invoke-virtual {v5}, Lmk/S0;->j()Z

    move-result v4

    if-eqz v4, :cond_c

    new-instance v1, Lmk/W0;

    sget-object v2, Lmk/V0;->v:Lmk/S0;

    invoke-direct {v1, v3, v5, v2}, Lmk/W0;-><init>(Ljk/e;Ljk/f;Ljk/f;)V

    return-object v1

    :cond_c
    new-instance v4, Lmk/S0;

    invoke-direct {v4, v11}, Lmk/S0;-><init>([J)V

    iget-object v8, v4, Lmk/S0;->g:[J

    invoke-static {v12, v2, v8}, Lmk/R0;->q([J[J[J)V

    if-eqz v1, :cond_d

    iget-object v2, v4, Lmk/S0;->g:[J

    invoke-static {v2, v1, v2}, Lmk/R0;->q([J[J[J)V

    :cond_d
    invoke-static {}, Lsk/n;->d()[J

    move-result-object v1

    invoke-static {v10, v12, v12}, Lmk/R0;->b([J[J[J)V

    invoke-static {v12, v1}, Lmk/R0;->x([J[J)V

    iget-object v2, v6, Lmk/S0;->g:[J

    iget-object v6, v7, Lmk/S0;->g:[J

    invoke-static {v2, v6, v12}, Lmk/R0;->b([J[J[J)V

    iget-object v2, v4, Lmk/S0;->g:[J

    invoke-static {v12, v2, v1}, Lmk/R0;->p([J[J[J)V

    new-instance v2, Lmk/S0;

    invoke-direct {v2, v12}, Lmk/S0;-><init>([J)V

    iget-object v6, v2, Lmk/S0;->g:[J

    invoke-static {v1, v6}, Lmk/R0;->t([J[J)V

    if-eqz v13, :cond_e

    iget-object v1, v4, Lmk/S0;->g:[J

    invoke-static {v1, v13, v1}, Lmk/R0;->q([J[J[J)V

    :cond_e
    move-object v1, v2

    move-object v2, v4

    :goto_4
    new-instance v4, Lmk/W0;

    const/4 v6, 0x1

    new-array v6, v6, [Ljk/f;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-direct {v4, v3, v5, v1, v6}, Lmk/W0;-><init>(Ljk/e;Ljk/f;Ljk/f;[Ljk/f;)V

    return-object v4
.end method

.method public d()Ljk/i;
    .locals 4

    new-instance v0, Lmk/W0;

    invoke-virtual {p0}, Ljk/i;->f()Ljk/f;

    move-result-object v1

    invoke-virtual {p0}, Ljk/i;->g()Ljk/f;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lmk/W0;-><init>(Ljk/e;Ljk/f;Ljk/f;)V

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
