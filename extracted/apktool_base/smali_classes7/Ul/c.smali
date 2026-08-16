.class public LUl/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/d;


# instance fields
.field public g:Z

.field public h:Ljava/security/SecureRandom;

.field public i:LUl/b;

.field public j:[[S

.field public k:[[S

.field public l:[S

.field public m:[[S

.field public n:[[S

.field public o:[S

.field public p:I

.field public q:[LUl/a;

.field public r:[I

.field public s:[[S

.field public t:[[S

.field public u:[S


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LUl/c;->g:Z

    return-void
.end method

.method private j()V
    .locals 3

    new-instance v0, LUl/b;

    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object v1

    new-instance v2, LUl/e;

    invoke-direct {v2}, LUl/e;-><init>()V

    invoke-direct {v0, v1, v2}, LUl/b;-><init>(Ljava/security/SecureRandom;LUl/e;)V

    invoke-virtual {p0, v0}, LUl/c;->i(LBi/G;)V

    return-void
.end method


# virtual methods
.method public a()LBi/c;
    .locals 1

    invoke-virtual {p0}, LUl/c;->e()LBi/c;

    move-result-object v0

    return-object v0
.end method

.method public b(LBi/G;)V
    .locals 0

    invoke-virtual {p0, p1}, LUl/c;->i(LBi/G;)V

    return-void
.end method

.method public final c([[[S)V
    .locals 10

    array-length v0, p1

    const/4 v1, 0x0

    aget-object v2, p1, v1

    array-length v2, v2

    add-int/lit8 v3, v2, 0x1

    mul-int/2addr v3, v2

    const/4 v4, 0x2

    div-int/2addr v3, v4

    new-array v4, v4, [I

    const/4 v5, 0x1

    aput v3, v4, v5

    aput v0, v4, v1

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[S

    iput-object v3, p0, LUl/c;->s:[[S

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_3

    move v4, v1

    move v5, v4

    :goto_1
    if-ge v4, v2, :cond_2

    move v6, v4

    :goto_2
    if-ge v6, v2, :cond_1

    iget-object v7, p0, LUl/c;->s:[[S

    if-ne v6, v4, :cond_0

    aget-object v7, v7, v3

    aget-object v8, p1, v3

    aget-object v8, v8, v4

    aget-short v8, v8, v6

    aput-short v8, v7, v5

    goto :goto_3

    :cond_0
    aget-object v7, v7, v3

    aget-object v8, p1, v3

    aget-object v9, v8, v4

    aget-short v9, v9, v6

    aget-object v8, v8, v6

    aget-short v8, v8, v4

    invoke-static {v9, v8}, LVl/b;->a(SS)S

    move-result v8

    aput-short v8, v7, v5

    :goto_3
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final d()V
    .locals 21

    move-object/from16 v0, p0

    new-instance v1, LVl/a;

    invoke-direct {v1}, LVl/a;-><init>()V

    iget-object v2, v0, LUl/c;->r:[I

    array-length v3, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget v3, v2, v3

    const/4 v5, 0x0

    aget v6, v2, v5

    sub-int/2addr v3, v6

    array-length v6, v2

    sub-int/2addr v6, v4

    aget v2, v2, v6

    const/4 v6, 0x3

    new-array v7, v6, [I

    const/4 v8, 0x2

    aput v2, v7, v8

    aput v2, v7, v4

    aput v3, v7, v5

    sget-object v9, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[[S

    new-array v10, v8, [I

    aput v2, v10, v4

    aput v3, v10, v5

    invoke-static {v9, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[S

    iput-object v9, v0, LUl/c;->t:[[S

    new-array v9, v3, [S

    iput-object v9, v0, LUl/c;->u:[S

    new-array v9, v2, [S

    move v9, v5

    move v10, v9

    :goto_0
    iget-object v11, v0, LUl/c;->q:[LUl/a;

    array-length v12, v11

    if-ge v9, v12, :cond_6

    aget-object v11, v11, v9

    invoke-virtual {v11}, LUl/a;->a()[[[S

    move-result-object v11

    iget-object v12, v0, LUl/c;->q:[LUl/a;

    aget-object v12, v12, v9

    invoke-virtual {v12}, LUl/a;->b()[[[S

    move-result-object v12

    iget-object v13, v0, LUl/c;->q:[LUl/a;

    aget-object v13, v13, v9

    invoke-virtual {v13}, LUl/a;->d()[[S

    move-result-object v13

    iget-object v14, v0, LUl/c;->q:[LUl/a;

    aget-object v14, v14, v9

    invoke-virtual {v14}, LUl/a;->c()[S

    move-result-object v14

    aget-object v15, v11, v5

    array-length v15, v15

    aget-object v4, v12, v5

    array-length v4, v4

    :goto_1
    if-ge v5, v15, :cond_5

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v15, :cond_1

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v4, :cond_0

    aget-object v16, v11, v5

    aget-object v16, v16, v8

    move/from16 v17, v3

    aget-short v3, v16, v6

    move/from16 v16, v2

    iget-object v2, v0, LUl/c;->m:[[S

    add-int v18, v8, v4

    aget-object v2, v2, v18

    invoke-virtual {v1, v3, v2}, LVl/a;->g(S[S)[S

    move-result-object v2

    add-int v3, v10, v5

    move/from16 v19, v9

    aget-object v9, v7, v3

    move-object/from16 v20, v14

    iget-object v14, v0, LUl/c;->m:[[S

    aget-object v14, v14, v6

    invoke-virtual {v1, v2, v14}, LVl/a;->h([S[S)[[S

    move-result-object v14

    invoke-virtual {v1, v9, v14}, LVl/a;->a([[S[[S)[[S

    move-result-object v9

    aput-object v9, v7, v3

    iget-object v9, v0, LUl/c;->o:[S

    aget-short v9, v9, v6

    invoke-virtual {v1, v9, v2}, LVl/a;->g(S[S)[S

    move-result-object v2

    iget-object v9, v0, LUl/c;->t:[[S

    aget-object v14, v9, v3

    invoke-virtual {v1, v2, v14}, LVl/a;->b([S[S)[S

    move-result-object v2

    aput-object v2, v9, v3

    aget-object v2, v11, v5

    aget-object v2, v2, v8

    aget-short v2, v2, v6

    iget-object v9, v0, LUl/c;->m:[[S

    aget-object v9, v9, v6

    invoke-virtual {v1, v2, v9}, LVl/a;->g(S[S)[S

    move-result-object v2

    iget-object v9, v0, LUl/c;->o:[S

    aget-short v9, v9, v18

    invoke-virtual {v1, v9, v2}, LVl/a;->g(S[S)[S

    move-result-object v2

    iget-object v9, v0, LUl/c;->t:[[S

    aget-object v14, v9, v3

    invoke-virtual {v1, v2, v14}, LVl/a;->b([S[S)[S

    move-result-object v2

    aput-object v2, v9, v3

    aget-object v2, v11, v5

    aget-object v2, v2, v8

    aget-short v2, v2, v6

    iget-object v9, v0, LUl/c;->o:[S

    aget-short v9, v9, v18

    invoke-static {v2, v9}, LVl/b;->e(SS)S

    move-result v2

    iget-object v9, v0, LUl/c;->u:[S

    aget-short v14, v9, v3

    move-object/from16 v18, v11

    iget-object v11, v0, LUl/c;->o:[S

    aget-short v11, v11, v6

    invoke-static {v2, v11}, LVl/b;->e(SS)S

    move-result v2

    invoke-static {v14, v2}, LVl/b;->a(SS)S

    move-result v2

    aput-short v2, v9, v3

    add-int/lit8 v6, v6, 0x1

    move/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v11, v18

    move/from16 v9, v19

    move-object/from16 v14, v20

    goto/16 :goto_3

    :cond_0
    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v19, v9

    move-object/from16 v18, v11

    move-object/from16 v20, v14

    add-int/lit8 v8, v8, 0x1

    const/4 v6, 0x3

    goto/16 :goto_2

    :cond_1
    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v19, v9

    move-object/from16 v18, v11

    move-object/from16 v20, v14

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v4, :cond_3

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v4, :cond_2

    aget-object v6, v12, v5

    aget-object v6, v6, v2

    aget-short v6, v6, v3

    iget-object v8, v0, LUl/c;->m:[[S

    aget-object v8, v8, v2

    invoke-virtual {v1, v6, v8}, LVl/a;->g(S[S)[S

    move-result-object v6

    add-int v8, v10, v5

    aget-object v9, v7, v8

    iget-object v11, v0, LUl/c;->m:[[S

    aget-object v11, v11, v3

    invoke-virtual {v1, v6, v11}, LVl/a;->h([S[S)[[S

    move-result-object v11

    invoke-virtual {v1, v9, v11}, LVl/a;->a([[S[[S)[[S

    move-result-object v9

    aput-object v9, v7, v8

    iget-object v9, v0, LUl/c;->o:[S

    aget-short v9, v9, v3

    invoke-virtual {v1, v9, v6}, LVl/a;->g(S[S)[S

    move-result-object v6

    iget-object v9, v0, LUl/c;->t:[[S

    aget-object v11, v9, v8

    invoke-virtual {v1, v6, v11}, LVl/a;->b([S[S)[S

    move-result-object v6

    aput-object v6, v9, v8

    aget-object v6, v12, v5

    aget-object v6, v6, v2

    aget-short v6, v6, v3

    iget-object v9, v0, LUl/c;->m:[[S

    aget-object v9, v9, v3

    invoke-virtual {v1, v6, v9}, LVl/a;->g(S[S)[S

    move-result-object v6

    iget-object v9, v0, LUl/c;->o:[S

    aget-short v9, v9, v2

    invoke-virtual {v1, v9, v6}, LVl/a;->g(S[S)[S

    move-result-object v6

    iget-object v9, v0, LUl/c;->t:[[S

    aget-object v11, v9, v8

    invoke-virtual {v1, v6, v11}, LVl/a;->b([S[S)[S

    move-result-object v6

    aput-object v6, v9, v8

    aget-object v6, v12, v5

    aget-object v6, v6, v2

    aget-short v6, v6, v3

    iget-object v9, v0, LUl/c;->o:[S

    aget-short v9, v9, v2

    invoke-static {v6, v9}, LVl/b;->e(SS)S

    move-result v6

    iget-object v9, v0, LUl/c;->u:[S

    aget-short v11, v9, v8

    iget-object v14, v0, LUl/c;->o:[S

    aget-short v14, v14, v3

    invoke-static {v6, v14}, LVl/b;->e(SS)S

    move-result v6

    invoke-static {v11, v6}, LVl/b;->a(SS)S

    move-result v6

    aput-short v6, v9, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_3
    const/4 v2, 0x0

    :goto_6
    add-int v3, v4, v15

    if-ge v2, v3, :cond_4

    aget-object v3, v13, v5

    aget-short v3, v3, v2

    iget-object v6, v0, LUl/c;->m:[[S

    aget-object v6, v6, v2

    invoke-virtual {v1, v3, v6}, LVl/a;->g(S[S)[S

    move-result-object v3

    iget-object v6, v0, LUl/c;->t:[[S

    add-int v8, v10, v5

    aget-object v9, v6, v8

    invoke-virtual {v1, v3, v9}, LVl/a;->b([S[S)[S

    move-result-object v3

    aput-object v3, v6, v8

    iget-object v3, v0, LUl/c;->u:[S

    aget-short v6, v3, v8

    aget-object v9, v13, v5

    aget-short v9, v9, v2

    iget-object v11, v0, LUl/c;->o:[S

    aget-short v11, v11, v2

    invoke-static {v9, v11}, LVl/b;->e(SS)S

    move-result v9

    invoke-static {v6, v9}, LVl/b;->a(SS)S

    move-result v6

    aput-short v6, v3, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_4
    iget-object v2, v0, LUl/c;->u:[S

    add-int v3, v10, v5

    aget-short v6, v2, v3

    aget-short v8, v20, v5

    invoke-static {v6, v8}, LVl/b;->a(SS)S

    move-result v6

    aput-short v6, v2, v3

    add-int/lit8 v5, v5, 0x1

    move/from16 v2, v16

    move/from16 v3, v17

    move-object/from16 v11, v18

    move/from16 v9, v19

    move-object/from16 v14, v20

    const/4 v6, 0x3

    const/4 v8, 0x2

    goto/16 :goto_1

    :cond_5
    move/from16 v16, v2

    move/from16 v17, v3

    move/from16 v19, v9

    add-int/2addr v10, v15

    add-int/lit8 v9, v19, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v8, 0x2

    goto/16 :goto_0

    :cond_6
    move/from16 v16, v2

    move/from16 v17, v3

    move v2, v6

    new-array v2, v2, [I

    const/4 v3, 0x2

    aput v16, v2, v3

    const/4 v4, 0x1

    aput v16, v2, v4

    const/4 v5, 0x0

    aput v17, v2, v5

    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[[S

    new-array v3, v3, [I

    aput v16, v3, v4

    aput v17, v3, v5

    invoke-static {v6, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[S

    move/from16 v4, v17

    new-array v6, v4, [S

    move v8, v5

    :goto_7
    if-ge v8, v4, :cond_8

    move v9, v5

    :goto_8
    iget-object v10, v0, LUl/c;->j:[[S

    array-length v11, v10

    if-ge v9, v11, :cond_7

    aget-object v11, v2, v8

    aget-object v10, v10, v8

    aget-short v10, v10, v9

    aget-object v12, v7, v9

    invoke-virtual {v1, v10, v12}, LVl/a;->f(S[[S)[[S

    move-result-object v10

    invoke-virtual {v1, v11, v10}, LVl/a;->a([[S[[S)[[S

    move-result-object v10

    aput-object v10, v2, v8

    aget-object v10, v3, v8

    iget-object v11, v0, LUl/c;->j:[[S

    aget-object v11, v11, v8

    aget-short v11, v11, v9

    iget-object v12, v0, LUl/c;->t:[[S

    aget-object v12, v12, v9

    invoke-virtual {v1, v11, v12}, LVl/a;->g(S[S)[S

    move-result-object v11

    invoke-virtual {v1, v10, v11}, LVl/a;->b([S[S)[S

    move-result-object v10

    aput-object v10, v3, v8

    aget-short v10, v6, v8

    iget-object v11, v0, LUl/c;->j:[[S

    aget-object v11, v11, v8

    aget-short v11, v11, v9

    iget-object v12, v0, LUl/c;->u:[S

    aget-short v12, v12, v9

    invoke-static {v11, v12}, LVl/b;->e(SS)S

    move-result v11

    invoke-static {v10, v11}, LVl/b;->a(SS)S

    move-result v10

    aput-short v10, v6, v8

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_7
    aget-short v9, v6, v8

    iget-object v10, v0, LUl/c;->l:[S

    aget-short v10, v10, v8

    invoke-static {v9, v10}, LVl/b;->a(SS)S

    move-result v9

    aput-short v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_8
    iput-object v3, v0, LUl/c;->t:[[S

    iput-object v6, v0, LUl/c;->u:[S

    invoke-virtual {v0, v2}, LUl/c;->c([[[S)V

    return-void
.end method

.method public e()LBi/c;
    .locals 8

    iget-boolean v0, p0, LUl/c;->g:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, LUl/c;->j()V

    :cond_0
    invoke-virtual {p0}, LUl/c;->k()V

    new-instance v0, LUl/f;

    iget-object v2, p0, LUl/c;->k:[[S

    iget-object v3, p0, LUl/c;->l:[S

    iget-object v4, p0, LUl/c;->n:[[S

    iget-object v5, p0, LUl/c;->o:[S

    iget-object v6, p0, LUl/c;->r:[I

    iget-object v7, p0, LUl/c;->q:[LUl/a;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, LUl/f;-><init>([[S[S[[S[S[I[LUl/a;)V

    new-instance v1, LUl/g;

    iget-object v2, p0, LUl/c;->r:[I

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget v3, v2, v3

    const/4 v4, 0x0

    aget v2, v2, v4

    sub-int/2addr v3, v2

    iget-object v2, p0, LUl/c;->s:[[S

    iget-object v4, p0, LUl/c;->t:[[S

    iget-object v5, p0, LUl/c;->u:[S

    invoke-direct {v1, v3, v2, v4, v5}, LUl/g;-><init>(I[[S[[S[S)V

    new-instance v2, LBi/c;

    invoke-direct {v2, v1, v0}, LBi/c;-><init>(LXi/c;LXi/c;)V

    return-object v2
.end method

.method public final f()V
    .locals 7

    iget v0, p0, LUl/c;->p:I

    new-array v0, v0, [LUl/a;

    iput-object v0, p0, LUl/c;->q:[LUl/a;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, LUl/c;->p:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, LUl/c;->q:[LUl/a;

    new-instance v2, LUl/a;

    iget-object v3, p0, LUl/c;->r:[I

    aget v4, v3, v0

    add-int/lit8 v5, v0, 0x1

    aget v3, v3, v5

    iget-object v6, p0, LUl/c;->h:Ljava/security/SecureRandom;

    invoke-direct {v2, v4, v3, v6}, LUl/a;-><init>(IILjava/security/SecureRandom;)V

    aput-object v2, v1, v0

    move v0, v5

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 7

    iget-object v0, p0, LUl/c;->r:[I

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget v1, v0, v1

    const/4 v3, 0x0

    aget v0, v0, v3

    sub-int/2addr v1, v0

    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v1, v0, v2

    aput v1, v0, v3

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iput-object v0, p0, LUl/c;->j:[[S

    const/4 v0, 0x0

    iput-object v0, p0, LUl/c;->k:[[S

    new-instance v0, LVl/a;

    invoke-direct {v0}, LVl/a;-><init>()V

    :goto_0
    iget-object v2, p0, LUl/c;->k:[[S

    if-nez v2, :cond_2

    move v2, v3

    :goto_1
    if-ge v2, v1, :cond_1

    move v4, v3

    :goto_2
    if-ge v4, v1, :cond_0

    iget-object v5, p0, LUl/c;->j:[[S

    aget-object v5, v5, v2

    iget-object v6, p0, LUl/c;->h:Ljava/security/SecureRandom;

    invoke-virtual {v6}, Ljava/util/Random;->nextInt()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-short v6, v6

    aput-short v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, LUl/c;->j:[[S

    invoke-virtual {v0, v2}, LVl/a;->e([[S)[[S

    move-result-object v2

    iput-object v2, p0, LUl/c;->k:[[S

    goto :goto_0

    :cond_2
    new-array v0, v1, [S

    iput-object v0, p0, LUl/c;->l:[S

    :goto_3
    if-ge v3, v1, :cond_3

    iget-object v0, p0, LUl/c;->l:[S

    iget-object v2, p0, LUl/c;->h:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    aput-short v2, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public final h()V
    .locals 7

    iget-object v0, p0, LUl/c;->r:[I

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget v0, v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v0, v1, v2

    const/4 v2, 0x0

    aput v0, v1, v2

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[S

    iput-object v1, p0, LUl/c;->m:[[S

    const/4 v1, 0x0

    iput-object v1, p0, LUl/c;->n:[[S

    new-instance v1, LVl/a;

    invoke-direct {v1}, LVl/a;-><init>()V

    :goto_0
    iget-object v3, p0, LUl/c;->n:[[S

    if-nez v3, :cond_2

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_1

    move v4, v2

    :goto_2
    if-ge v4, v0, :cond_0

    iget-object v5, p0, LUl/c;->m:[[S

    aget-object v5, v5, v3

    iget-object v6, p0, LUl/c;->h:Ljava/security/SecureRandom;

    invoke-virtual {v6}, Ljava/util/Random;->nextInt()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    int-to-short v6, v6

    aput-short v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, LUl/c;->m:[[S

    invoke-virtual {v1, v3}, LVl/a;->e([[S)[[S

    move-result-object v3

    iput-object v3, p0, LUl/c;->n:[[S

    goto :goto_0

    :cond_2
    new-array v1, v0, [S

    iput-object v1, p0, LUl/c;->o:[S

    :goto_3
    if-ge v2, v0, :cond_3

    iget-object v1, p0, LUl/c;->o:[S

    iget-object v3, p0, LUl/c;->h:Ljava/security/SecureRandom;

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    aput-short v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public i(LBi/G;)V
    .locals 0

    check-cast p1, LUl/b;

    iput-object p1, p0, LUl/c;->i:LUl/b;

    invoke-virtual {p1}, LBi/G;->a()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, LUl/c;->h:Ljava/security/SecureRandom;

    iget-object p1, p0, LUl/c;->i:LUl/b;

    invoke-virtual {p1}, LUl/b;->c()LUl/e;

    move-result-object p1

    invoke-virtual {p1}, LUl/e;->d()[I

    move-result-object p1

    iput-object p1, p0, LUl/c;->r:[I

    iget-object p1, p0, LUl/c;->i:LUl/b;

    invoke-virtual {p1}, LUl/b;->c()LUl/e;

    move-result-object p1

    invoke-virtual {p1}, LUl/e;->c()I

    move-result p1

    iput p1, p0, LUl/c;->p:I

    const/4 p1, 0x1

    iput-boolean p1, p0, LUl/c;->g:Z

    return-void
.end method

.method public final k()V
    .locals 0

    invoke-virtual {p0}, LUl/c;->g()V

    invoke-virtual {p0}, LUl/c;->h()V

    invoke-virtual {p0}, LUl/c;->f()V

    invoke-virtual {p0}, LUl/c;->d()V

    return-void
.end method
