.class public Ldl/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ldl/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ldl/b;

    invoke-direct {v0}, Ldl/b;-><init>()V

    iput-object v0, p0, Ldl/f;->a:Ldl/b;

    return-void
.end method


# virtual methods
.method public a([Ldl/g;II)V
    .locals 23

    move-object/from16 v0, p0

    move/from16 v1, p3

    const/4 v2, 0x1

    shl-int v3, v2, v1

    shr-int/2addr v3, v2

    const/4 v4, 0x2

    move v5, v2

    move v6, v3

    :goto_0
    if-ge v5, v1, :cond_2

    shr-int/lit8 v7, v6, 0x1

    shr-int/lit8 v8, v4, 0x1

    const/4 v9, 0x0

    move v10, v9

    :goto_1
    if-ge v9, v8, :cond_1

    add-int v11, v10, v7

    iget-object v12, v0, Ldl/f;->a:Ldl/b;

    iget-object v12, v12, Ldl/b;->u:[Ldl/g;

    add-int v13, v4, v9

    shl-int/2addr v13, v2

    aget-object v14, v12, v13

    add-int/2addr v13, v2

    aget-object v12, v12, v13

    move v13, v10

    :goto_2
    if-ge v13, v11, :cond_0

    add-int v15, p2, v13

    aget-object v2, p1, v15

    add-int v16, v15, v3

    aget-object v1, p1, v16

    add-int v17, v15, v7

    move/from16 v18, v7

    aget-object v7, p1, v17

    add-int v19, v17, v3

    move/from16 v20, v3

    aget-object v3, p1, v19

    invoke-virtual {v0, v7, v3, v14, v12}, Ldl/f;->e(Ldl/g;Ldl/g;Ldl/g;Ldl/g;)Ldl/a;

    move-result-object v3

    iget-object v7, v3, Ldl/a;->a:Ldl/g;

    iget-object v3, v3, Ldl/a;->b:Ldl/g;

    move/from16 v21, v8

    invoke-virtual {v0, v2, v1, v7, v3}, Ldl/f;->b(Ldl/g;Ldl/g;Ldl/g;Ldl/g;)Ldl/a;

    move-result-object v8

    move/from16 v22, v11

    iget-object v11, v8, Ldl/a;->a:Ldl/g;

    aput-object v11, p1, v15

    iget-object v8, v8, Ldl/a;->b:Ldl/g;

    aput-object v8, p1, v16

    invoke-virtual {v0, v2, v1, v7, v3}, Ldl/f;->g(Ldl/g;Ldl/g;Ldl/g;Ldl/g;)Ldl/a;

    move-result-object v1

    iget-object v2, v1, Ldl/a;->a:Ldl/g;

    aput-object v2, p1, v17

    iget-object v1, v1, Ldl/a;->b:Ldl/g;

    aput-object v1, p1, v19

    add-int/lit8 v13, v13, 0x1

    move/from16 v1, p3

    move/from16 v7, v18

    move/from16 v3, v20

    move/from16 v8, v21

    move/from16 v11, v22

    const/4 v2, 0x1

    goto :goto_2

    :cond_0
    move/from16 v20, v3

    move/from16 v18, v7

    move/from16 v21, v8

    add-int/lit8 v9, v9, 0x1

    add-int/2addr v10, v6

    move/from16 v1, p3

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move/from16 v20, v3

    move/from16 v18, v7

    add-int/lit8 v5, v5, 0x1

    shl-int/lit8 v4, v4, 0x1

    move/from16 v1, p3

    move/from16 v6, v18

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public b(Ldl/g;Ldl/g;Ldl/g;Ldl/g;)Ldl/a;
    .locals 1

    iget-object v0, p0, Ldl/f;->a:Ldl/b;

    invoke-virtual {v0, p1, p3}, Ldl/b;->b(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object p1

    iget-object p3, p0, Ldl/f;->a:Ldl/b;

    invoke-virtual {p3, p2, p4}, Ldl/b;->b(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object p2

    new-instance p3, Ldl/a;

    invoke-direct {p3, p1, p2}, Ldl/a;-><init>(Ldl/g;Ldl/g;)V

    return-object p3
.end method

.method public c(Ldl/g;Ldl/g;Ldl/g;Ldl/g;)Ldl/a;
    .locals 3

    iget-object v0, p0, Ldl/f;->a:Ldl/b;

    invoke-virtual {v0, p3}, Ldl/b;->n(Ldl/g;)Ldl/g;

    move-result-object v1

    iget-object v2, p0, Ldl/f;->a:Ldl/b;

    invoke-virtual {v2, p4}, Ldl/b;->n(Ldl/g;)Ldl/g;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ldl/b;->b(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v0

    iget-object v1, p0, Ldl/f;->a:Ldl/b;

    invoke-virtual {v1, v0}, Ldl/b;->h(Ldl/g;)Ldl/g;

    move-result-object v0

    iget-object v1, p0, Ldl/f;->a:Ldl/b;

    invoke-virtual {v1, p3, v0}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object p3

    iget-object v1, p0, Ldl/f;->a:Ldl/b;

    invoke-virtual {v1, p4}, Ldl/b;->k(Ldl/g;)Ldl/g;

    move-result-object p4

    invoke-virtual {v1, p4, v0}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object p4

    iget-object v0, p0, Ldl/f;->a:Ldl/b;

    invoke-virtual {v0, p1, p3}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v1

    iget-object v2, p0, Ldl/f;->a:Ldl/b;

    invoke-virtual {v2, p2, p4}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ldl/b;->p(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v0

    iget-object v1, p0, Ldl/f;->a:Ldl/b;

    invoke-virtual {v1, p1, p4}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object p1

    iget-object p4, p0, Ldl/f;->a:Ldl/b;

    invoke-virtual {p4, p2, p3}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Ldl/b;->b(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object p1

    new-instance p2, Ldl/a;

    invoke-direct {p2, v0, p1}, Ldl/a;-><init>(Ldl/g;Ldl/g;)V

    return-object p2
.end method

.method public d(Ldl/g;Ldl/g;)Ldl/a;
    .locals 3

    iget-object v0, p0, Ldl/f;->a:Ldl/b;

    invoke-virtual {v0, p1}, Ldl/b;->n(Ldl/g;)Ldl/g;

    move-result-object v1

    iget-object v2, p0, Ldl/f;->a:Ldl/b;

    invoke-virtual {v2, p2}, Ldl/b;->n(Ldl/g;)Ldl/g;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ldl/b;->b(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v0

    iget-object v1, p0, Ldl/f;->a:Ldl/b;

    invoke-virtual {v1, v0}, Ldl/b;->h(Ldl/g;)Ldl/g;

    move-result-object v0

    iget-object v1, p0, Ldl/f;->a:Ldl/b;

    invoke-virtual {v1, p1, v0}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object p1

    iget-object v1, p0, Ldl/f;->a:Ldl/b;

    invoke-virtual {v1, p2}, Ldl/b;->k(Ldl/g;)Ldl/g;

    move-result-object p2

    invoke-virtual {v1, p2, v0}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object p2

    new-instance v0, Ldl/a;

    invoke-direct {v0, p1, p2}, Ldl/a;-><init>(Ldl/g;Ldl/g;)V

    return-object v0
.end method

.method public e(Ldl/g;Ldl/g;Ldl/g;Ldl/g;)Ldl/a;
    .locals 3

    iget-object v0, p0, Ldl/f;->a:Ldl/b;

    invoke-virtual {v0, p1, p3}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v1

    iget-object v2, p0, Ldl/f;->a:Ldl/b;

    invoke-virtual {v2, p2, p4}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ldl/b;->p(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v0

    iget-object v1, p0, Ldl/f;->a:Ldl/b;

    invoke-virtual {v1, p1, p4}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object p1

    iget-object p4, p0, Ldl/f;->a:Ldl/b;

    invoke-virtual {p4, p2, p3}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Ldl/b;->b(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object p1

    new-instance p2, Ldl/a;

    invoke-direct {p2, v0, p1}, Ldl/a;-><init>(Ldl/g;Ldl/g;)V

    return-object p2
.end method

.method public f(Ldl/g;Ldl/g;)Ldl/a;
    .locals 3

    iget-object v0, p0, Ldl/f;->a:Ldl/b;

    invoke-virtual {v0, p1}, Ldl/b;->n(Ldl/g;)Ldl/g;

    move-result-object v1

    iget-object v2, p0, Ldl/f;->a:Ldl/b;

    invoke-virtual {v2, p2}, Ldl/b;->n(Ldl/g;)Ldl/g;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ldl/b;->p(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v0

    iget-object v1, p0, Ldl/f;->a:Ldl/b;

    invoke-virtual {v1, p1, p2}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object p1

    invoke-virtual {v1, p1}, Ldl/b;->d(Ldl/g;)Ldl/g;

    move-result-object p1

    new-instance p2, Ldl/a;

    invoke-direct {p2, v0, p1}, Ldl/a;-><init>(Ldl/g;Ldl/g;)V

    return-object p2
.end method

.method public g(Ldl/g;Ldl/g;Ldl/g;Ldl/g;)Ldl/a;
    .locals 1

    iget-object v0, p0, Ldl/f;->a:Ldl/b;

    invoke-virtual {v0, p1, p3}, Ldl/b;->p(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object p1

    iget-object p3, p0, Ldl/f;->a:Ldl/b;

    invoke-virtual {p3, p2, p4}, Ldl/b;->p(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object p2

    new-instance p3, Ldl/a;

    invoke-direct {p3, p1, p2}, Ldl/a;-><init>(Ldl/g;Ldl/g;)V

    return-object p3
.end method

.method public h([Ldl/g;II)V
    .locals 23

    move-object/from16 v0, p0

    const/4 v1, 0x1

    shl-int v2, v1, p3

    shr-int/lit8 v3, v2, 0x1

    move/from16 v4, p3

    move v6, v1

    move v5, v2

    :goto_0
    const/4 v7, 0x0

    if-le v4, v1, :cond_2

    shr-int/2addr v5, v1

    shl-int/lit8 v8, v6, 0x1

    move v9, v7

    :goto_1
    if-ge v7, v3, :cond_1

    add-int v10, v7, v6

    iget-object v11, v0, Ldl/f;->a:Ldl/b;

    iget-object v12, v11, Ldl/b;->u:[Ldl/g;

    add-int v13, v5, v9

    shl-int/2addr v13, v1

    aget-object v14, v12, v13

    add-int/2addr v13, v1

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Ldl/b;->k(Ldl/g;)Ldl/g;

    move-result-object v11

    move v12, v7

    :goto_2
    if-ge v12, v10, :cond_0

    add-int v13, p2, v12

    aget-object v15, p1, v13

    add-int v16, v13, v3

    aget-object v1, p1, v16

    add-int v17, v13, v6

    move/from16 v18, v5

    aget-object v5, p1, v17

    add-int v19, v17, v3

    move/from16 v20, v3

    aget-object v3, p1, v19

    move/from16 v21, v6

    invoke-virtual {v0, v15, v1, v5, v3}, Ldl/f;->b(Ldl/g;Ldl/g;Ldl/g;Ldl/g;)Ldl/a;

    move-result-object v6

    move/from16 v22, v10

    iget-object v10, v6, Ldl/a;->a:Ldl/g;

    aput-object v10, p1, v13

    iget-object v6, v6, Ldl/a;->b:Ldl/g;

    aput-object v6, p1, v16

    invoke-virtual {v0, v15, v1, v5, v3}, Ldl/f;->g(Ldl/g;Ldl/g;Ldl/g;Ldl/g;)Ldl/a;

    move-result-object v1

    iget-object v3, v1, Ldl/a;->a:Ldl/g;

    iget-object v1, v1, Ldl/a;->b:Ldl/g;

    invoke-virtual {v0, v3, v1, v14, v11}, Ldl/f;->e(Ldl/g;Ldl/g;Ldl/g;Ldl/g;)Ldl/a;

    move-result-object v1

    iget-object v3, v1, Ldl/a;->a:Ldl/g;

    aput-object v3, p1, v17

    iget-object v1, v1, Ldl/a;->b:Ldl/g;

    aput-object v1, p1, v19

    add-int/lit8 v12, v12, 0x1

    move/from16 v5, v18

    move/from16 v3, v20

    move/from16 v6, v21

    move/from16 v10, v22

    const/4 v1, 0x1

    goto :goto_2

    :cond_0
    move/from16 v20, v3

    move/from16 v18, v5

    move/from16 v21, v6

    add-int/lit8 v9, v9, 0x1

    add-int/2addr v7, v8

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    move/from16 v20, v3

    move/from16 v18, v5

    add-int/lit8 v4, v4, -0x1

    move v6, v8

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    if-lez p3, :cond_3

    iget-object v1, v0, Ldl/f;->a:Ldl/b;

    iget-object v1, v1, Ldl/b;->v:[Ldl/g;

    aget-object v1, v1, p3

    :goto_3
    if-ge v7, v2, :cond_3

    add-int v3, p2, v7

    iget-object v4, v0, Ldl/f;->a:Ldl/b;

    aget-object v5, p1, v3

    invoke-virtual {v4, v5, v1}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v4

    aput-object v4, p1, v3

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public i([Ldl/g;I[Ldl/g;I[Ldl/g;II)V
    .locals 14

    move-object v0, p0

    const/4 v1, 0x1

    shl-int v2, v1, p7

    shr-int/lit8 v1, v2, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    add-int v3, p2, v2

    aget-object v4, p1, v3

    add-int/2addr v3, v1

    aget-object v3, p1, v3

    add-int v5, p4, v2

    aget-object v6, p3, v5

    add-int v7, v5, v1

    aget-object v8, p3, v7

    add-int v9, p6, v2

    aget-object v10, p5, v9

    add-int v11, v9, v1

    aget-object v12, p5, v11

    invoke-virtual {p0, v6, v8, v4, v3}, Ldl/f;->c(Ldl/g;Ldl/g;Ldl/g;Ldl/g;)Ldl/a;

    move-result-object v3

    iget-object v4, v3, Ldl/a;->a:Ldl/g;

    iget-object v3, v3, Ldl/a;->b:Ldl/g;

    iget-object v13, v0, Ldl/f;->a:Ldl/b;

    invoke-virtual {v13, v8}, Ldl/b;->k(Ldl/g;)Ldl/g;

    move-result-object v8

    invoke-virtual {p0, v4, v3, v6, v8}, Ldl/f;->e(Ldl/g;Ldl/g;Ldl/g;Ldl/g;)Ldl/a;

    move-result-object v6

    iget-object v8, v6, Ldl/a;->a:Ldl/g;

    iget-object v6, v6, Ldl/a;->b:Ldl/g;

    invoke-virtual {p0, v10, v12, v8, v6}, Ldl/f;->g(Ldl/g;Ldl/g;Ldl/g;Ldl/g;)Ldl/a;

    move-result-object v6

    iget-object v8, v6, Ldl/a;->a:Ldl/g;

    aput-object v8, p5, v9

    iget-object v6, v6, Ldl/a;->b:Ldl/g;

    aput-object v6, p5, v11

    aput-object v4, p3, v5

    iget-object v4, v0, Ldl/f;->a:Ldl/b;

    invoke-virtual {v4, v3}, Ldl/b;->k(Ldl/g;)Ldl/g;

    move-result-object v3

    aput-object v3, p3, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public j([Ldl/g;I[Ldl/g;I[Ldl/g;I[Ldl/g;I[Ldl/g;II)V
    .locals 10

    move-object v0, p0

    const/4 v1, 0x1

    shl-int v2, v1, p11

    shr-int/lit8 v1, v2, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    add-int v3, p6, v2

    aget-object v4, p5, v3

    add-int/2addr v3, v1

    aget-object v3, p5, v3

    add-int v5, p8, v2

    aget-object v6, p7, v5

    add-int/2addr v5, v1

    aget-object v5, p7, v5

    add-int v7, p10, v2

    aget-object v8, p9, v7

    add-int/2addr v7, v1

    aget-object v7, p9, v7

    invoke-virtual {p0, v6, v5, v4, v3}, Ldl/f;->c(Ldl/g;Ldl/g;Ldl/g;Ldl/g;)Ldl/a;

    move-result-object v3

    iget-object v4, v3, Ldl/a;->a:Ldl/g;

    iget-object v3, v3, Ldl/a;->b:Ldl/g;

    iget-object v9, v0, Ldl/f;->a:Ldl/b;

    invoke-virtual {v9, v5}, Ldl/b;->k(Ldl/g;)Ldl/g;

    move-result-object v5

    invoke-virtual {p0, v4, v3, v6, v5}, Ldl/f;->e(Ldl/g;Ldl/g;Ldl/g;Ldl/g;)Ldl/a;

    move-result-object v5

    iget-object v6, v5, Ldl/a;->a:Ldl/g;

    iget-object v5, v5, Ldl/a;->b:Ldl/g;

    invoke-virtual {p0, v8, v7, v6, v5}, Ldl/f;->g(Ldl/g;Ldl/g;Ldl/g;Ldl/g;)Ldl/a;

    move-result-object v5

    add-int v6, p2, v2

    iget-object v7, v5, Ldl/a;->a:Ldl/g;

    aput-object v7, p1, v6

    add-int/2addr v6, v1

    iget-object v5, v5, Ldl/a;->b:Ldl/g;

    aput-object v5, p1, v6

    add-int v5, p4, v2

    aput-object v4, p3, v5

    add-int/2addr v5, v1

    iget-object v4, v0, Ldl/f;->a:Ldl/b;

    invoke-virtual {v4, v3}, Ldl/b;->k(Ldl/g;)Ldl/g;

    move-result-object v3

    aput-object v3, p3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public k([Ldl/g;I[Ldl/g;II)V
    .locals 5

    const/4 v0, 0x1

    shl-int p5, v0, p5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_0

    add-int v1, p2, v0

    iget-object v2, p0, Ldl/f;->a:Ldl/b;

    aget-object v3, p1, v1

    add-int v4, p4, v0

    aget-object v4, p3, v4

    invoke-virtual {v2, v3, v4}, Ldl/b;->b(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public l([Ldl/g;I[Ldl/g;I[Ldl/g;I[Ldl/g;I[Ldl/g;II)V
    .locals 12

    move-object v0, p0

    const/4 v1, 0x1

    shl-int v2, v1, p11

    shr-int/lit8 v1, v2, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    add-int v3, p4, v2

    aget-object v4, p3, v3

    add-int/2addr v3, v1

    aget-object v3, p3, v3

    add-int v5, p6, v2

    aget-object v6, p5, v5

    add-int/2addr v5, v1

    aget-object v5, p5, v5

    add-int v7, p8, v2

    aget-object v8, p7, v7

    add-int/2addr v7, v1

    aget-object v7, p7, v7

    add-int v9, p10, v2

    aget-object v10, p9, v9

    add-int/2addr v9, v1

    aget-object v9, p9, v9

    iget-object v11, v0, Ldl/f;->a:Ldl/b;

    invoke-virtual {v11, v7}, Ldl/b;->k(Ldl/g;)Ldl/g;

    move-result-object v7

    invoke-virtual {p0, v4, v3, v8, v7}, Ldl/f;->e(Ldl/g;Ldl/g;Ldl/g;Ldl/g;)Ldl/a;

    move-result-object v3

    iget-object v4, v3, Ldl/a;->a:Ldl/g;

    iget-object v3, v3, Ldl/a;->b:Ldl/g;

    iget-object v7, v0, Ldl/f;->a:Ldl/b;

    invoke-virtual {v7, v9}, Ldl/b;->k(Ldl/g;)Ldl/g;

    move-result-object v7

    invoke-virtual {p0, v6, v5, v10, v7}, Ldl/f;->e(Ldl/g;Ldl/g;Ldl/g;Ldl/g;)Ldl/a;

    move-result-object v5

    iget-object v6, v5, Ldl/a;->a:Ldl/g;

    iget-object v5, v5, Ldl/a;->b:Ldl/g;

    add-int v7, p2, v2

    iget-object v8, v0, Ldl/f;->a:Ldl/b;

    invoke-virtual {v8, v4, v6}, Ldl/b;->b(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v4

    aput-object v4, p1, v7

    add-int/2addr v7, v1

    iget-object v4, v0, Ldl/f;->a:Ldl/b;

    invoke-virtual {v4, v3, v5}, Ldl/b;->b(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v3

    aput-object v3, p1, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public m([Ldl/g;II)V
    .locals 4

    const/4 v0, 0x1

    shl-int p3, v0, p3

    shr-int/lit8 v0, p3, 0x1

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    iget-object v2, p0, Ldl/f;->a:Ldl/b;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ldl/b;->k(Ldl/g;)Ldl/g;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public n([Ldl/g;I[Ldl/g;II)V
    .locals 5

    const/4 v0, 0x1

    shl-int p5, v0, p5

    shr-int/2addr p5, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_0

    iget-object v1, p0, Ldl/f;->a:Ldl/b;

    add-int v2, p4, v0

    aget-object v2, p3, v2

    invoke-virtual {v1, v2}, Ldl/b;->h(Ldl/g;)Ldl/g;

    move-result-object v1

    add-int v2, p2, v0

    iget-object v3, p0, Ldl/f;->a:Ldl/b;

    aget-object v4, p1, v2

    invoke-virtual {v3, v4, v1}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v3

    aput-object v3, p1, v2

    add-int/2addr v2, p5

    iget-object v3, p0, Ldl/f;->a:Ldl/b;

    aget-object v4, p1, v2

    invoke-virtual {v3, v4, v1}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v1

    aput-object v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public o([Ldl/g;I[Ldl/g;II)V
    .locals 7

    const/4 v0, 0x1

    shl-int p5, v0, p5

    shr-int/2addr p5, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_0

    add-int v1, p2, v0

    aget-object v2, p1, v1

    add-int v3, v1, p5

    aget-object v4, p1, v3

    add-int v5, p4, v0

    aget-object v6, p3, v5

    add-int/2addr v5, p5

    aget-object v5, p3, v5

    invoke-virtual {p0, v2, v4, v6, v5}, Ldl/f;->c(Ldl/g;Ldl/g;Ldl/g;Ldl/g;)Ldl/a;

    move-result-object v2

    iget-object v4, v2, Ldl/a;->a:Ldl/g;

    aput-object v4, p1, v1

    iget-object v1, v2, Ldl/a;->b:Ldl/g;

    aput-object v1, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public p([Ldl/g;I[Ldl/g;I[Ldl/g;II)V
    .locals 8

    const/4 v0, 0x1

    shl-int p7, v0, p7

    shr-int/2addr p7, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p7, :cond_0

    add-int v1, p4, v0

    aget-object v2, p3, v1

    add-int/2addr v1, p7

    aget-object v1, p3, v1

    add-int v3, p6, v0

    aget-object v4, p5, v3

    add-int/2addr v3, p7

    aget-object v3, p5, v3

    add-int v5, p2, v0

    iget-object v6, p0, Ldl/f;->a:Ldl/b;

    invoke-virtual {v6, v2}, Ldl/b;->n(Ldl/g;)Ldl/g;

    move-result-object v2

    iget-object v7, p0, Ldl/f;->a:Ldl/b;

    invoke-virtual {v7, v1}, Ldl/b;->n(Ldl/g;)Ldl/g;

    move-result-object v1

    invoke-virtual {v6, v2, v1}, Ldl/b;->b(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v1

    iget-object v2, p0, Ldl/f;->a:Ldl/b;

    invoke-virtual {v2, v4}, Ldl/b;->n(Ldl/g;)Ldl/g;

    move-result-object v4

    iget-object v7, p0, Ldl/f;->a:Ldl/b;

    invoke-virtual {v7, v3}, Ldl/b;->n(Ldl/g;)Ldl/g;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Ldl/b;->b(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Ldl/b;->b(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v1

    invoke-virtual {v6, v1}, Ldl/b;->h(Ldl/g;)Ldl/g;

    move-result-object v1

    aput-object v1, p1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public q([Ldl/g;I[Ldl/g;I[Ldl/g;II)V
    .locals 12

    move-object v0, p0

    const/4 v1, 0x1

    shl-int v2, v1, p7

    shr-int/lit8 v3, v2, 0x1

    shr-int/lit8 v2, v2, 0x2

    aget-object v4, p3, p4

    aput-object v4, p1, p2

    add-int v4, p2, v3

    aget-object v5, p5, p6

    aput-object v5, p1, v4

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    add-int v5, p4, v4

    aget-object v6, p3, v5

    add-int/2addr v5, v2

    aget-object v5, p3, v5

    add-int v7, p6, v4

    aget-object v8, p5, v7

    add-int/2addr v7, v2

    aget-object v7, p5, v7

    iget-object v9, v0, Ldl/f;->a:Ldl/b;

    iget-object v9, v9, Ldl/b;->u:[Ldl/g;

    add-int v10, v4, v3

    shl-int/2addr v10, v1

    aget-object v11, v9, v10

    add-int/2addr v10, v1

    aget-object v9, v9, v10

    invoke-virtual {p0, v8, v7, v11, v9}, Ldl/f;->e(Ldl/g;Ldl/g;Ldl/g;Ldl/g;)Ldl/a;

    move-result-object v7

    iget-object v8, v7, Ldl/a;->a:Ldl/g;

    iget-object v7, v7, Ldl/a;->b:Ldl/g;

    invoke-virtual {p0, v6, v5, v8, v7}, Ldl/f;->b(Ldl/g;Ldl/g;Ldl/g;Ldl/g;)Ldl/a;

    move-result-object v9

    iget-object v10, v9, Ldl/a;->a:Ldl/g;

    iget-object v9, v9, Ldl/a;->b:Ldl/g;

    shl-int/lit8 v11, v4, 0x1

    add-int/2addr v11, p2

    aput-object v10, p1, v11

    add-int v10, v11, v3

    aput-object v9, p1, v10

    invoke-virtual {p0, v6, v5, v8, v7}, Ldl/f;->g(Ldl/g;Ldl/g;Ldl/g;Ldl/g;)Ldl/a;

    move-result-object v5

    iget-object v6, v5, Ldl/a;->a:Ldl/g;

    iget-object v5, v5, Ldl/a;->b:Ldl/g;

    add-int/2addr v11, v1

    aput-object v6, p1, v11

    add-int/2addr v11, v3

    aput-object v5, p1, v11

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public r([Ldl/g;I[Ldl/g;II)V
    .locals 6

    const/4 v0, 0x1

    shl-int p5, v0, p5

    shr-int/2addr p5, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_0

    add-int v1, p2, v0

    iget-object v2, p0, Ldl/f;->a:Ldl/b;

    aget-object v3, p1, v1

    add-int v4, p4, v0

    aget-object v5, p3, v4

    invoke-virtual {v2, v3, v5}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/2addr v1, p5

    iget-object v2, p0, Ldl/f;->a:Ldl/b;

    aget-object v3, p1, v1

    aget-object v4, p3, v4

    invoke-virtual {v2, v3, v4}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public s([Ldl/g;I[Ldl/g;II)V
    .locals 7

    const/4 v0, 0x1

    shl-int p5, v0, p5

    shr-int/2addr p5, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_0

    add-int v1, p2, v0

    aget-object v2, p1, v1

    add-int v3, v1, p5

    aget-object v4, p1, v3

    add-int v5, p4, v0

    aget-object v6, p3, v5

    add-int/2addr v5, p5

    aget-object v5, p3, v5

    invoke-virtual {p0, v2, v4, v6, v5}, Ldl/f;->e(Ldl/g;Ldl/g;Ldl/g;Ldl/g;)Ldl/a;

    move-result-object v2

    iget-object v4, v2, Ldl/a;->a:Ldl/g;

    aput-object v4, p1, v1

    iget-object v1, v2, Ldl/a;->b:Ldl/g;

    aput-object v1, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public t([Ldl/g;I[Ldl/g;II)V
    .locals 8

    const/4 v0, 0x1

    shl-int p5, v0, p5

    shr-int/2addr p5, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_0

    add-int v1, p2, v0

    aget-object v2, p1, v1

    add-int v3, v1, p5

    aget-object v4, p1, v3

    add-int v5, p4, v0

    aget-object v6, p3, v5

    iget-object v7, p0, Ldl/f;->a:Ldl/b;

    add-int/2addr v5, p5

    aget-object v5, p3, v5

    invoke-virtual {v7, v5}, Ldl/b;->k(Ldl/g;)Ldl/g;

    move-result-object v5

    invoke-virtual {p0, v2, v4, v6, v5}, Ldl/f;->e(Ldl/g;Ldl/g;Ldl/g;Ldl/g;)Ldl/a;

    move-result-object v2

    iget-object v4, v2, Ldl/a;->a:Ldl/g;

    aput-object v4, p1, v1

    iget-object v1, v2, Ldl/a;->b:Ldl/g;

    aput-object v1, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public u([Ldl/g;ILdl/g;I)V
    .locals 4

    const/4 v0, 0x1

    shl-int p4, v0, p4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    add-int v1, p2, v0

    iget-object v2, p0, Ldl/f;->a:Ldl/b;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3, p3}, Ldl/b;->j(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public v([Ldl/g;II)V
    .locals 7

    const/4 v0, 0x1

    shl-int p3, v0, p3

    shr-int/2addr p3, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    aget-object v2, p1, v1

    add-int v3, v1, p3

    aget-object v4, p1, v3

    iget-object v5, p0, Ldl/f;->a:Ldl/b;

    invoke-virtual {v5, v2}, Ldl/b;->n(Ldl/g;)Ldl/g;

    move-result-object v2

    iget-object v6, p0, Ldl/f;->a:Ldl/b;

    invoke-virtual {v6, v4}, Ldl/b;->n(Ldl/g;)Ldl/g;

    move-result-object v4

    invoke-virtual {v5, v2, v4}, Ldl/b;->b(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v2

    aput-object v2, p1, v1

    iget-object v1, p0, Ldl/f;->a:Ldl/b;

    iget-object v1, v1, Ldl/b;->i:Ldl/g;

    aput-object v1, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public w([Ldl/g;II)V
    .locals 4

    const/4 v0, 0x1

    shl-int p3, v0, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, p2, v0

    iget-object v2, p0, Ldl/f;->a:Ldl/b;

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ldl/b;->k(Ldl/g;)Ldl/g;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public x([Ldl/g;I[Ldl/g;I[Ldl/g;II)V
    .locals 13

    move-object v0, p0

    const/4 v1, 0x1

    shl-int v2, v1, p7

    shr-int/lit8 v3, v2, 0x1

    shr-int/lit8 v2, v2, 0x2

    aget-object v4, p5, p6

    aput-object v4, p1, p2

    add-int v4, p6, v3

    aget-object v4, p5, v4

    aput-object v4, p3, p4

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    shl-int/lit8 v5, v4, 0x1

    add-int v5, p6, v5

    aget-object v6, p5, v5

    add-int v7, v5, v3

    aget-object v7, p5, v7

    add-int/2addr v5, v1

    aget-object v8, p5, v5

    add-int/2addr v5, v3

    aget-object v5, p5, v5

    invoke-virtual {p0, v6, v7, v8, v5}, Ldl/f;->b(Ldl/g;Ldl/g;Ldl/g;Ldl/g;)Ldl/a;

    move-result-object v9

    iget-object v10, v9, Ldl/a;->a:Ldl/g;

    iget-object v9, v9, Ldl/a;->b:Ldl/g;

    add-int v11, p2, v4

    iget-object v12, v0, Ldl/f;->a:Ldl/b;

    invoke-virtual {v12, v10}, Ldl/b;->g(Ldl/g;)Ldl/g;

    move-result-object v10

    aput-object v10, p1, v11

    add-int/2addr v11, v2

    iget-object v10, v0, Ldl/f;->a:Ldl/b;

    invoke-virtual {v10, v9}, Ldl/b;->g(Ldl/g;)Ldl/g;

    move-result-object v9

    aput-object v9, p1, v11

    invoke-virtual {p0, v6, v7, v8, v5}, Ldl/f;->g(Ldl/g;Ldl/g;Ldl/g;Ldl/g;)Ldl/a;

    move-result-object v5

    iget-object v6, v5, Ldl/a;->a:Ldl/g;

    iget-object v5, v5, Ldl/a;->b:Ldl/g;

    iget-object v7, v0, Ldl/f;->a:Ldl/b;

    iget-object v8, v7, Ldl/b;->u:[Ldl/g;

    add-int v9, v4, v3

    shl-int/2addr v9, v1

    aget-object v10, v8, v9

    add-int/2addr v9, v1

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ldl/b;->k(Ldl/g;)Ldl/g;

    move-result-object v7

    invoke-virtual {p0, v6, v5, v10, v7}, Ldl/f;->e(Ldl/g;Ldl/g;Ldl/g;Ldl/g;)Ldl/a;

    move-result-object v5

    iget-object v6, v5, Ldl/a;->a:Ldl/g;

    iget-object v5, v5, Ldl/a;->b:Ldl/g;

    add-int v7, p4, v4

    iget-object v8, v0, Ldl/f;->a:Ldl/b;

    invoke-virtual {v8, v6}, Ldl/b;->g(Ldl/g;)Ldl/g;

    move-result-object v6

    aput-object v6, p3, v7

    add-int/2addr v7, v2

    iget-object v6, v0, Ldl/f;->a:Ldl/b;

    invoke-virtual {v6, v5}, Ldl/b;->g(Ldl/g;)Ldl/g;

    move-result-object v5

    aput-object v5, p3, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public y([Ldl/g;I[Ldl/g;II)V
    .locals 5

    const/4 v0, 0x1

    shl-int p5, v0, p5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_0

    add-int v1, p2, v0

    iget-object v2, p0, Ldl/f;->a:Ldl/b;

    aget-object v3, p1, v1

    add-int v4, p4, v0

    aget-object v4, p3, v4

    invoke-virtual {v2, v3, v4}, Ldl/b;->p(Ldl/g;Ldl/g;)Ldl/g;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
