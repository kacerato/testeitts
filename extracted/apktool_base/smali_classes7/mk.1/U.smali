.class public Lmk/U;
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
    new-instance v0, Lmk/U;

    iget-object v1, p0, Ljk/i;->a:Ljk/e;

    iget-object v2, p0, Ljk/i;->b:Ljk/f;

    iget-object v3, p0, Ljk/i;->c:Ljk/f;

    invoke-virtual {v3}, Ljk/f;->n()Ljk/f;

    move-result-object v3

    iget-object v4, p0, Ljk/i;->d:[Ljk/f;

    invoke-direct {v0, v1, v2, v3, v4}, Lmk/U;-><init>(Ljk/e;Ljk/f;Ljk/f;[Ljk/f;)V

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
    invoke-virtual {p0}, Lmk/U;->M()Ljk/i;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljk/i;->a(Ljk/i;)Ljk/i;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public M()Ljk/i;
    .locals 14

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljk/i;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljk/i;->i()Ljk/e;

    move-result-object v1

    iget-object v2, p0, Ljk/i;->c:Ljk/f;

    check-cast v2, Lmk/T;

    invoke-virtual {v2}, Lmk/T;->j()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljk/e;->x()Ljk/i;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v3, p0, Ljk/i;->b:Ljk/f;

    check-cast v3, Lmk/T;

    iget-object v4, p0, Ljk/i;->d:[Ljk/f;

    aget-object v4, v4, v0

    check-cast v4, Lmk/T;

    const/16 v5, 0x21

    invoke-static {v5}, Lsk/o;->E(I)[I

    move-result-object v5

    const/16 v6, 0x11

    invoke-static {v6}, Lsk/o;->E(I)[I

    move-result-object v7

    invoke-static {v6}, Lsk/o;->E(I)[I

    move-result-object v8

    invoke-static {v6}, Lsk/o;->E(I)[I

    move-result-object v9

    iget-object v10, v2, Lmk/T;->g:[I

    invoke-static {v10, v9, v5}, Lmk/S;->q([I[I[I)V

    invoke-static {v6}, Lsk/o;->E(I)[I

    move-result-object v10

    invoke-static {v9, v10, v5}, Lmk/S;->q([I[I[I)V

    invoke-virtual {v4}, Lmk/T;->i()Z

    move-result v11

    iget-object v12, v4, Lmk/T;->g:[I

    if-nez v11, :cond_2

    invoke-static {v12, v8, v5}, Lmk/S;->q([I[I[I)V

    move-object v12, v8

    :cond_2
    iget-object v13, v3, Lmk/T;->g:[I

    invoke-static {v13, v12, v7}, Lmk/S;->t([I[I[I)V

    iget-object v13, v3, Lmk/T;->g:[I

    invoke-static {v13, v12, v8}, Lmk/S;->a([I[I[I)V

    invoke-static {v8, v7, v8, v5}, Lmk/S;->j([I[I[I[I)V

    invoke-static {v6, v8, v8, v8}, Lsk/o;->g(I[I[I[I)I

    invoke-static {v8}, Lmk/S;->o([I)V

    iget-object v3, v3, Lmk/T;->g:[I

    invoke-static {v9, v3, v9, v5}, Lmk/S;->j([I[I[I[I)V

    const/4 v3, 0x2

    invoke-static {v6, v9, v3, v0}, Lsk/o;->H0(I[III)I

    invoke-static {v9}, Lmk/S;->o([I)V

    const/4 v3, 0x3

    invoke-static {v6, v10, v3, v0, v7}, Lsk/o;->K0(I[III[I)I

    invoke-static {v7}, Lmk/S;->o([I)V

    new-instance v3, Lmk/T;

    invoke-direct {v3, v10}, Lmk/T;-><init>([I)V

    iget-object v6, v3, Lmk/T;->g:[I

    invoke-static {v8, v6, v5}, Lmk/S;->q([I[I[I)V

    iget-object v6, v3, Lmk/T;->g:[I

    invoke-static {v6, v9, v6}, Lmk/S;->t([I[I[I)V

    iget-object v6, v3, Lmk/T;->g:[I

    invoke-static {v6, v9, v6}, Lmk/S;->t([I[I[I)V

    new-instance v6, Lmk/T;

    invoke-direct {v6, v9}, Lmk/T;-><init>([I)V

    iget-object v10, v3, Lmk/T;->g:[I

    iget-object v12, v6, Lmk/T;->g:[I

    invoke-static {v9, v10, v12}, Lmk/S;->t([I[I[I)V

    iget-object v9, v6, Lmk/T;->g:[I

    invoke-static {v9, v8, v9, v5}, Lmk/S;->j([I[I[I[I)V

    iget-object v9, v6, Lmk/T;->g:[I

    invoke-static {v9, v7, v9}, Lmk/S;->t([I[I[I)V

    new-instance v7, Lmk/T;

    invoke-direct {v7, v8}, Lmk/T;-><init>([I)V

    iget-object v2, v2, Lmk/T;->g:[I

    iget-object v8, v7, Lmk/T;->g:[I

    invoke-static {v2, v8}, Lmk/S;->u([I[I)V

    if-nez v11, :cond_3

    iget-object v2, v7, Lmk/T;->g:[I

    iget-object v4, v4, Lmk/T;->g:[I

    invoke-static {v2, v4, v2, v5}, Lmk/S;->j([I[I[I[I)V

    :cond_3
    new-instance v2, Lmk/U;

    const/4 v4, 0x1

    new-array v4, v4, [Ljk/f;

    aput-object v7, v4, v0

    invoke-direct {v2, v1, v3, v6, v4}, Lmk/U;-><init>(Ljk/e;Ljk/f;Ljk/f;[Ljk/f;)V

    return-object v2
.end method

.method public N(Ljk/i;)Ljk/i;
    .locals 1

    if-ne p0, p1, :cond_0

    invoke-virtual {p0}, Lmk/U;->K()Ljk/i;

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

    invoke-virtual {p0}, Lmk/U;->M()Ljk/i;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v0, p0, Ljk/i;->c:Ljk/f;

    invoke-virtual {v0}, Ljk/f;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p1

    :cond_3
    invoke-virtual {p0}, Lmk/U;->M()Ljk/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljk/i;->a(Ljk/i;)Ljk/i;

    move-result-object p1

    return-object p1
.end method

.method public O(Ljk/f;Ljk/f;Ljk/f;Ljk/f;)Ljk/f;
    .locals 0

    invoke-virtual {p1, p2}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object p1

    invoke-virtual {p1}, Ljk/f;->p()Ljk/f;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljk/f;->t(Ljk/f;)Ljk/f;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljk/f;->t(Ljk/f;)Ljk/f;

    move-result-object p1

    return-object p1
.end method

.method public P(Ljk/f;)Ljk/f;
    .locals 0

    invoke-virtual {p0, p1}, Lmk/U;->S(Ljk/f;)Ljk/f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmk/U;->Q(Ljk/f;)Ljk/f;

    move-result-object p1

    return-object p1
.end method

.method public Q(Ljk/f;)Ljk/f;
    .locals 0

    invoke-virtual {p0, p1}, Lmk/U;->S(Ljk/f;)Ljk/f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmk/U;->S(Ljk/f;)Ljk/f;

    move-result-object p1

    return-object p1
.end method

.method public R(Ljk/f;)Ljk/f;
    .locals 1

    invoke-virtual {p0, p1}, Lmk/U;->S(Ljk/f;)Ljk/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljk/f;->a(Ljk/f;)Ljk/f;

    move-result-object p1

    return-object p1
.end method

.method public S(Ljk/f;)Ljk/f;
    .locals 0

    invoke-virtual {p1, p1}, Ljk/f;->a(Ljk/f;)Ljk/f;

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

    invoke-virtual/range {p0 .. p0}, Lmk/U;->M()Ljk/i;

    move-result-object v1

    return-object v1

    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljk/i;->i()Ljk/e;

    move-result-object v3

    iget-object v4, v0, Ljk/i;->b:Ljk/f;

    check-cast v4, Lmk/T;

    iget-object v5, v0, Ljk/i;->c:Ljk/f;

    check-cast v5, Lmk/T;

    invoke-virtual/range {p1 .. p1}, Ljk/i;->q()Ljk/f;

    move-result-object v6

    check-cast v6, Lmk/T;

    invoke-virtual/range {p1 .. p1}, Ljk/i;->r()Ljk/f;

    move-result-object v7

    check-cast v7, Lmk/T;

    iget-object v8, v0, Ljk/i;->d:[Ljk/f;

    aget-object v8, v8, v2

    check-cast v8, Lmk/T;

    invoke-virtual {v1, v2}, Ljk/i;->s(I)Ljk/f;

    move-result-object v1

    check-cast v1, Lmk/T;

    const/16 v9, 0x21

    invoke-static {v9}, Lsk/o;->E(I)[I

    move-result-object v9

    const/16 v10, 0x11

    invoke-static {v10}, Lsk/o;->E(I)[I

    move-result-object v11

    invoke-static {v10}, Lsk/o;->E(I)[I

    move-result-object v12

    invoke-static {v10}, Lsk/o;->E(I)[I

    move-result-object v13

    invoke-static {v10}, Lsk/o;->E(I)[I

    move-result-object v14

    invoke-virtual {v8}, Lmk/T;->i()Z

    move-result v15

    if-eqz v15, :cond_3

    iget-object v6, v6, Lmk/T;->g:[I

    iget-object v7, v7, Lmk/T;->g:[I

    goto :goto_0

    :cond_3
    iget-object v2, v8, Lmk/T;->g:[I

    invoke-static {v2, v13, v9}, Lmk/S;->q([I[I[I)V

    iget-object v2, v6, Lmk/T;->g:[I

    invoke-static {v13, v2, v12, v9}, Lmk/S;->j([I[I[I[I)V

    iget-object v2, v8, Lmk/T;->g:[I

    invoke-static {v13, v2, v13, v9}, Lmk/S;->j([I[I[I[I)V

    iget-object v2, v7, Lmk/T;->g:[I

    invoke-static {v13, v2, v13, v9}, Lmk/S;->j([I[I[I[I)V

    move-object v6, v12

    move-object v7, v13

    :goto_0
    invoke-virtual {v1}, Lmk/T;->i()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v4, v4, Lmk/T;->g:[I

    iget-object v5, v5, Lmk/T;->g:[I

    goto :goto_1

    :cond_4
    iget-object v10, v1, Lmk/T;->g:[I

    invoke-static {v10, v14, v9}, Lmk/S;->q([I[I[I)V

    iget-object v4, v4, Lmk/T;->g:[I

    invoke-static {v14, v4, v11, v9}, Lmk/S;->j([I[I[I[I)V

    iget-object v4, v1, Lmk/T;->g:[I

    invoke-static {v14, v4, v14, v9}, Lmk/S;->j([I[I[I[I)V

    iget-object v4, v5, Lmk/T;->g:[I

    invoke-static {v14, v4, v14, v9}, Lmk/S;->j([I[I[I[I)V

    move-object v4, v11

    move-object v5, v14

    const/16 v10, 0x11

    :goto_1
    invoke-static {v10}, Lsk/o;->E(I)[I

    move-result-object v0

    invoke-static {v4, v6, v0}, Lmk/S;->t([I[I[I)V

    invoke-static {v5, v7, v12}, Lmk/S;->t([I[I[I)V

    invoke-static {v10, v0}, Lsk/o;->g0(I[I)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {v10, v12}, Lsk/o;->g0(I[I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Lmk/U;->M()Ljk/i;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-virtual {v3}, Ljk/e;->x()Ljk/i;

    move-result-object v0

    return-object v0

    :cond_6
    invoke-static {v0, v13, v9}, Lmk/S;->q([I[I[I)V

    invoke-static {v10}, Lsk/o;->E(I)[I

    move-result-object v6

    invoke-static {v13, v0, v6, v9}, Lmk/S;->j([I[I[I[I)V

    invoke-static {v13, v4, v13, v9}, Lmk/S;->j([I[I[I[I)V

    invoke-static {v5, v6, v11, v9}, Lmk/S;->j([I[I[I[I)V

    new-instance v4, Lmk/T;

    invoke-direct {v4, v14}, Lmk/T;-><init>([I)V

    iget-object v5, v4, Lmk/T;->g:[I

    invoke-static {v12, v5, v9}, Lmk/S;->q([I[I[I)V

    iget-object v5, v4, Lmk/T;->g:[I

    invoke-static {v5, v6, v5}, Lmk/S;->a([I[I[I)V

    iget-object v5, v4, Lmk/T;->g:[I

    invoke-static {v5, v13, v5}, Lmk/S;->t([I[I[I)V

    iget-object v5, v4, Lmk/T;->g:[I

    invoke-static {v5, v13, v5}, Lmk/S;->t([I[I[I)V

    new-instance v5, Lmk/T;

    invoke-direct {v5, v6}, Lmk/T;-><init>([I)V

    iget-object v6, v4, Lmk/T;->g:[I

    iget-object v7, v5, Lmk/T;->g:[I

    invoke-static {v13, v6, v7}, Lmk/S;->t([I[I[I)V

    iget-object v6, v5, Lmk/T;->g:[I

    invoke-static {v6, v12, v12, v9}, Lmk/S;->j([I[I[I[I)V

    iget-object v6, v5, Lmk/T;->g:[I

    invoke-static {v12, v11, v6}, Lmk/S;->t([I[I[I)V

    new-instance v6, Lmk/T;

    invoke-direct {v6, v0}, Lmk/T;-><init>([I)V

    if-nez v15, :cond_7

    iget-object v0, v6, Lmk/T;->g:[I

    iget-object v7, v8, Lmk/T;->g:[I

    invoke-static {v0, v7, v0, v9}, Lmk/S;->j([I[I[I[I)V

    :cond_7
    if-nez v2, :cond_8

    iget-object v0, v6, Lmk/T;->g:[I

    iget-object v1, v1, Lmk/T;->g:[I

    invoke-static {v0, v1, v0, v9}, Lmk/S;->j([I[I[I[I)V

    :cond_8
    const/4 v0, 0x1

    new-array v0, v0, [Ljk/f;

    const/4 v1, 0x0

    aput-object v6, v0, v1

    new-instance v1, Lmk/U;

    invoke-direct {v1, v3, v4, v5, v0}, Lmk/U;-><init>(Ljk/e;Ljk/f;Ljk/f;[Ljk/f;)V

    return-object v1
.end method

.method public d()Ljk/i;
    .locals 4

    new-instance v0, Lmk/U;

    invoke-virtual {p0}, Ljk/i;->f()Ljk/f;

    move-result-object v1

    invoke-virtual {p0}, Ljk/i;->g()Ljk/f;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lmk/U;-><init>(Ljk/e;Ljk/f;Ljk/f;)V

    return-object v0
.end method
