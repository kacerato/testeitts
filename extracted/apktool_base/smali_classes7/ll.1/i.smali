.class public Lll/i;
.super Lll/g;
.source "SourceFile"


# instance fields
.field public final e:[B

.field public final f:[[S

.field public final g:[[S

.field public final h:[[S

.field public final i:[[S

.field public final j:[[[S

.field public final k:[[[S

.field public final l:[[[S

.field public final m:[[[S

.field public final n:[[[S

.field public final o:[[[S

.field public final p:[[[S

.field public final q:[B

.field public r:[B


# direct methods
.method public constructor <init>(Lll/h;[B)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x1

    .line 1
    invoke-direct {v0, v3, v1}, Lll/g;-><init>(ZLll/h;)V

    invoke-virtual/range {p1 .. p1}, Lll/h;->l()Lll/n;

    move-result-object v4

    sget-object v5, Lll/n;->COMPRESSED:Lll/n;

    const/4 v6, 0x0

    if-ne v4, v5, :cond_0

    invoke-virtual/range {p1 .. p1}, Lll/h;->b()I

    move-result v3

    invoke-static {v2, v6, v3}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v3

    iput-object v3, v0, Lll/i;->q:[B

    invoke-virtual/range {p1 .. p1}, Lll/h;->b()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lll/h;->b()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lll/h;->d()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v2, v4, v5}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v2

    iput-object v2, v0, Lll/i;->e:[B

    new-instance v4, Lll/d;

    invoke-direct {v4, v1, v3, v2}, Lll/d;-><init>(Lll/h;[B[B)V

    invoke-virtual {v4}, Lll/d;->m()Lll/i;

    move-result-object v1

    iget-object v2, v1, Lll/i;->r:[B

    iput-object v2, v0, Lll/i;->r:[B

    iget-object v2, v1, Lll/i;->f:[[S

    iput-object v2, v0, Lll/i;->f:[[S

    iget-object v2, v1, Lll/i;->g:[[S

    iput-object v2, v0, Lll/i;->g:[[S

    iget-object v2, v1, Lll/i;->h:[[S

    iput-object v2, v0, Lll/i;->h:[[S

    iget-object v2, v1, Lll/i;->i:[[S

    iput-object v2, v0, Lll/i;->i:[[S

    iget-object v2, v1, Lll/i;->j:[[[S

    iput-object v2, v0, Lll/i;->j:[[[S

    iget-object v2, v1, Lll/i;->k:[[[S

    iput-object v2, v0, Lll/i;->k:[[[S

    iget-object v2, v1, Lll/i;->l:[[[S

    iput-object v2, v0, Lll/i;->l:[[[S

    iget-object v2, v1, Lll/i;->m:[[[S

    iput-object v2, v0, Lll/i;->m:[[[S

    iget-object v2, v1, Lll/i;->n:[[[S

    iput-object v2, v0, Lll/i;->n:[[[S

    iget-object v2, v1, Lll/i;->o:[[[S

    iput-object v2, v0, Lll/i;->o:[[[S

    iget-object v1, v1, Lll/i;->p:[[[S

    iput-object v1, v0, Lll/i;->p:[[[S

    goto/16 :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lll/h;->j()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lll/h;->h()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lll/h;->i()I

    move-result v7

    const/4 v8, 0x2

    new-array v9, v8, [I

    aput v7, v9, v3

    aput v5, v9, v6

    sget-object v10, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[S

    iput-object v9, v0, Lll/i;->f:[[S

    new-array v11, v8, [I

    aput v5, v11, v3

    aput v4, v11, v6

    invoke-static {v10, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[S

    iput-object v11, v0, Lll/i;->g:[[S

    new-array v12, v8, [I

    aput v7, v12, v3

    aput v4, v12, v6

    invoke-static {v10, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[S

    iput-object v12, v0, Lll/i;->i:[[S

    new-array v13, v8, [I

    aput v7, v13, v3

    aput v5, v13, v6

    invoke-static {v10, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[S

    iput-object v13, v0, Lll/i;->h:[[S

    const/4 v14, 0x3

    new-array v15, v14, [I

    aput v4, v15, v8

    aput v4, v15, v3

    aput v5, v15, v6

    invoke-static {v10, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [[[S

    iput-object v15, v0, Lll/i;->j:[[[S

    new-array v6, v14, [I

    aput v5, v6, v8

    aput v4, v6, v3

    const/4 v3, 0x0

    aput v5, v6, v3

    invoke-static {v10, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[[S

    iput-object v6, v0, Lll/i;->k:[[[S

    new-array v3, v14, [I

    aput v4, v3, v8

    const/16 v16, 0x1

    aput v4, v3, v16

    const/4 v8, 0x0

    aput v7, v3, v8

    invoke-static {v10, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[[S

    iput-object v3, v0, Lll/i;->l:[[[S

    new-array v8, v14, [I

    const/16 v17, 0x2

    aput v5, v8, v17

    aput v4, v8, v16

    const/4 v14, 0x0

    aput v7, v8, v14

    invoke-static {v10, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[[S

    iput-object v8, v0, Lll/i;->m:[[[S

    const/4 v14, 0x3

    new-array v1, v14, [I

    aput v7, v1, v17

    aput v4, v1, v16

    const/4 v4, 0x0

    aput v7, v1, v4

    invoke-static {v10, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[[S

    iput-object v1, v0, Lll/i;->n:[[[S

    new-array v4, v14, [I

    aput v5, v4, v17

    aput v5, v4, v16

    const/4 v14, 0x0

    aput v7, v4, v14

    invoke-static {v10, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[[S

    iput-object v4, v0, Lll/i;->o:[[[S

    const/4 v14, 0x3

    new-array v14, v14, [I

    aput v7, v14, v17

    aput v5, v14, v16

    const/4 v5, 0x0

    aput v7, v14, v5

    invoke-static {v10, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[[S

    iput-object v7, v0, Lll/i;->p:[[[S

    const/4 v10, 0x0

    iput-object v10, v0, Lll/i;->q:[B

    invoke-virtual/range {p1 .. p1}, Lll/h;->d()I

    move-result v10

    invoke-static {v2, v5, v10}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v10

    iput-object v10, v0, Lll/i;->e:[B

    array-length v5, v10

    invoke-static {v9, v2, v5}, Lll/m;->n([[S[BI)I

    move-result v9

    add-int/2addr v5, v9

    invoke-static {v11, v2, v5}, Lll/m;->n([[S[BI)I

    move-result v9

    add-int/2addr v5, v9

    invoke-static {v12, v2, v5}, Lll/m;->n([[S[BI)I

    move-result v9

    add-int/2addr v5, v9

    invoke-static {v13, v2, v5}, Lll/m;->n([[S[BI)I

    move-result v9

    add-int/2addr v5, v9

    const/4 v9, 0x1

    invoke-static {v15, v2, v5, v9}, Lll/m;->o([[[S[BIZ)I

    move-result v10

    add-int/2addr v5, v10

    const/4 v10, 0x0

    invoke-static {v6, v2, v5, v10}, Lll/m;->o([[[S[BIZ)I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v3, v2, v5, v9}, Lll/m;->o([[[S[BIZ)I

    move-result v3

    add-int/2addr v5, v3

    invoke-static {v8, v2, v5, v10}, Lll/m;->o([[[S[BIZ)I

    move-result v3

    add-int/2addr v5, v3

    invoke-static {v1, v2, v5, v10}, Lll/m;->o([[[S[BIZ)I

    move-result v1

    add-int/2addr v5, v1

    invoke-static {v4, v2, v5, v9}, Lll/m;->o([[[S[BIZ)I

    move-result v1

    add-int/2addr v5, v1

    invoke-static {v7, v2, v5, v10}, Lll/m;->o([[[S[BIZ)I

    move-result v1

    add-int/2addr v5, v1

    array-length v1, v2

    invoke-static {v2, v5, v1}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v1

    iput-object v1, v0, Lll/i;->r:[B

    :goto_0
    return-void
.end method

.method public constructor <init>(Lll/h;[B[B[B)V
    .locals 1

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0, p1}, Lll/g;-><init>(ZLll/h;)V

    new-instance v0, Lll/d;

    invoke-direct {v0, p1, p2, p3}, Lll/d;-><init>(Lll/h;[B[B)V

    invoke-virtual {v0}, Lll/d;->m()Lll/i;

    move-result-object p1

    iput-object p2, p0, Lll/i;->q:[B

    iput-object p4, p0, Lll/i;->r:[B

    iput-object p3, p0, Lll/i;->e:[B

    iget-object p2, p1, Lll/i;->f:[[S

    iput-object p2, p0, Lll/i;->f:[[S

    iget-object p2, p1, Lll/i;->g:[[S

    iput-object p2, p0, Lll/i;->g:[[S

    iget-object p2, p1, Lll/i;->h:[[S

    iput-object p2, p0, Lll/i;->h:[[S

    iget-object p2, p1, Lll/i;->i:[[S

    iput-object p2, p0, Lll/i;->i:[[S

    iget-object p2, p1, Lll/i;->j:[[[S

    iput-object p2, p0, Lll/i;->j:[[[S

    iget-object p2, p1, Lll/i;->k:[[[S

    iput-object p2, p0, Lll/i;->k:[[[S

    iget-object p2, p1, Lll/i;->l:[[[S

    iput-object p2, p0, Lll/i;->l:[[[S

    iget-object p2, p1, Lll/i;->m:[[[S

    iput-object p2, p0, Lll/i;->m:[[[S

    iget-object p2, p1, Lll/i;->n:[[[S

    iput-object p2, p0, Lll/i;->n:[[[S

    iget-object p2, p1, Lll/i;->o:[[[S

    iput-object p2, p0, Lll/i;->o:[[[S

    iget-object p1, p1, Lll/i;->p:[[[S

    iput-object p1, p0, Lll/i;->p:[[[S

    return-void
.end method

.method public constructor <init>(Lll/h;[B[[S[[S[[S[[S[[[S[[[S[[[S[[[S[[[S[[[S[[[S[B)V
    .locals 1

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0, p1}, Lll/g;-><init>(ZLll/h;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lll/i;->q:[B

    iput-object p14, p0, Lll/i;->r:[B

    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lll/i;->e:[B

    invoke-static {p3}, Lll/m;->a([[S)[[S

    move-result-object p1

    iput-object p1, p0, Lll/i;->f:[[S

    invoke-static {p4}, Lll/m;->a([[S)[[S

    move-result-object p1

    iput-object p1, p0, Lll/i;->g:[[S

    invoke-static {p5}, Lll/m;->a([[S)[[S

    move-result-object p1

    iput-object p1, p0, Lll/i;->h:[[S

    invoke-static {p6}, Lll/m;->a([[S)[[S

    move-result-object p1

    iput-object p1, p0, Lll/i;->i:[[S

    invoke-static {p7}, Lll/m;->b([[[S)[[[S

    move-result-object p1

    iput-object p1, p0, Lll/i;->j:[[[S

    invoke-static {p8}, Lll/m;->b([[[S)[[[S

    move-result-object p1

    iput-object p1, p0, Lll/i;->k:[[[S

    invoke-static {p9}, Lll/m;->b([[[S)[[[S

    move-result-object p1

    iput-object p1, p0, Lll/i;->l:[[[S

    invoke-static {p10}, Lll/m;->b([[[S)[[[S

    move-result-object p1

    iput-object p1, p0, Lll/i;->m:[[[S

    invoke-static {p11}, Lll/m;->b([[[S)[[[S

    move-result-object p1

    iput-object p1, p0, Lll/i;->n:[[[S

    invoke-static {p12}, Lll/m;->b([[[S)[[[S

    move-result-object p1

    iput-object p1, p0, Lll/i;->o:[[[S

    invoke-static {p13}, Lll/m;->b([[[S)[[[S

    move-result-object p1

    iput-object p1, p0, Lll/i;->p:[[[S

    return-void
.end method


# virtual methods
.method public f()[[[S
    .locals 1

    iget-object v0, p0, Lll/i;->j:[[[S

    invoke-static {v0}, Lll/m;->b([[[S)[[[S

    move-result-object v0

    return-object v0
.end method

.method public g()[[[S
    .locals 1

    iget-object v0, p0, Lll/i;->k:[[[S

    invoke-static {v0}, Lll/m;->b([[[S)[[[S

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2

    invoke-virtual {p0}, Lll/g;->e()Lll/h;

    move-result-object v0

    invoke-virtual {v0}, Lll/h;->l()Lll/n;

    move-result-object v0

    sget-object v1, Lll/n;->COMPRESSED:Lll/n;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lll/i;->q:[B

    iget-object v1, p0, Lll/i;->e:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lll/i;->m()[B

    move-result-object v0

    iget-object v1, p0, Lll/i;->r:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public h()[[[S
    .locals 1

    iget-object v0, p0, Lll/i;->l:[[[S

    invoke-static {v0}, Lll/m;->b([[[S)[[[S

    move-result-object v0

    return-object v0
.end method

.method public i()[[[S
    .locals 1

    iget-object v0, p0, Lll/i;->m:[[[S

    invoke-static {v0}, Lll/m;->b([[[S)[[[S

    move-result-object v0

    return-object v0
.end method

.method public j()[[[S
    .locals 1

    iget-object v0, p0, Lll/i;->n:[[[S

    invoke-static {v0}, Lll/m;->b([[[S)[[[S

    move-result-object v0

    return-object v0
.end method

.method public k()[[[S
    .locals 1

    iget-object v0, p0, Lll/i;->o:[[[S

    invoke-static {v0}, Lll/m;->b([[[S)[[[S

    move-result-object v0

    return-object v0
.end method

.method public l()[[[S
    .locals 1

    iget-object v0, p0, Lll/i;->p:[[[S

    invoke-static {v0}, Lll/m;->b([[[S)[[[S

    move-result-object v0

    return-object v0
.end method

.method public m()[B
    .locals 4

    invoke-virtual {p0}, Lll/g;->e()Lll/h;

    move-result-object v0

    invoke-virtual {v0}, Lll/h;->l()Lll/n;

    move-result-object v0

    sget-object v1, Lll/n;->COMPRESSED:Lll/n;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lll/i;->q:[B

    iget-object v1, p0, Lll/i;->e:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lll/i;->e:[B

    iget-object v1, p0, Lll/i;->f:[[S

    invoke-static {v1}, Lll/m;->j([[S)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lll/i;->g:[[S

    invoke-static {v1}, Lll/m;->j([[S)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lll/i;->i:[[S

    invoke-static {v1}, Lll/m;->j([[S)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lll/i;->h:[[S

    invoke-static {v1}, Lll/m;->j([[S)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lll/i;->j:[[[S

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lll/m;->k([[[SZ)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lll/i;->k:[[[S

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lll/m;->k([[[SZ)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lll/i;->l:[[[S

    invoke-static {v1, v2}, Lll/m;->k([[[SZ)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lll/i;->m:[[[S

    invoke-static {v1, v3}, Lll/m;->k([[[SZ)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lll/i;->n:[[[S

    invoke-static {v1, v3}, Lll/m;->k([[[SZ)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lll/i;->o:[[[S

    invoke-static {v1, v2}, Lll/m;->k([[[SZ)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lll/i;->p:[[[S

    invoke-static {v1, v3}, Lll/m;->k([[[SZ)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public n()[B
    .locals 1

    iget-object v0, p0, Lll/i;->r:[B

    return-object v0
.end method

.method public o()[[S
    .locals 1

    iget-object v0, p0, Lll/i;->f:[[S

    invoke-static {v0}, Lll/m;->a([[S)[[S

    move-result-object v0

    return-object v0
.end method

.method public p()[B
    .locals 1

    iget-object v0, p0, Lll/i;->e:[B

    invoke-static {v0}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object v0

    return-object v0
.end method

.method public q()[[S
    .locals 1

    iget-object v0, p0, Lll/i;->g:[[S

    invoke-static {v0}, Lll/m;->a([[S)[[S

    move-result-object v0

    return-object v0
.end method

.method public r()[[S
    .locals 1

    iget-object v0, p0, Lll/i;->h:[[S

    invoke-static {v0}, Lll/m;->a([[S)[[S

    move-result-object v0

    return-object v0
.end method

.method public s()[[S
    .locals 1

    iget-object v0, p0, Lll/i;->i:[[S

    invoke-static {v0}, Lll/m;->a([[S)[[S

    move-result-object v0

    return-object v0
.end method
