.class public Lel/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:I = 0x10

.field public static final B:I = 0x10

.field public static final C:I = 0x10

.field public static final D:I = 0x2

.field public static final w:I = 0x8

.field public static final x:I = 0x8

.field public static final y:I = 0x80

.field public static final z:I = 0x80


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:[S

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:I

.field public final s:I

.field public final t:I

.field public final u:LBi/a0;

.field public final v:Lel/g;


# direct methods
.method public constructor <init>(III[SLBi/a0;Lel/g;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lel/a;->c:I

    iput p2, p0, Lel/a;->a:I

    const/4 v0, 0x1

    shl-int/2addr v0, p2

    iput v0, p0, Lel/a;->b:I

    iput p3, p0, Lel/a;->d:I

    mul-int/lit8 p3, p3, 0x40

    iput p3, p0, Lel/a;->i:I

    iput p3, p0, Lel/a;->j:I

    iput p3, p0, Lel/a;->k:I

    iput p3, p0, Lel/a;->l:I

    iput p3, p0, Lel/a;->m:I

    iput p3, p0, Lel/a;->n:I

    div-int/lit8 v0, p3, 0x8

    iput v0, p0, Lel/a;->o:I

    div-int/lit8 v0, p3, 0x8

    iput v0, p0, Lel/a;->p:I

    div-int/lit8 v0, p3, 0x8

    iput v0, p0, Lel/a;->q:I

    div-int/lit8 v1, p3, 0x8

    iput v1, p0, Lel/a;->r:I

    div-int/lit8 v1, p3, 0x8

    iput v1, p0, Lel/a;->s:I

    div-int/lit8 p3, p3, 0x8

    iput p3, p0, Lel/a;->t:I

    mul-int p3, p2, p1

    mul-int/lit8 p3, p3, 0x8

    div-int/lit8 p3, p3, 0x8

    mul-int/lit8 p2, p2, 0x40

    div-int/lit8 p2, p2, 0x8

    add-int/2addr p2, p3

    iput p2, p0, Lel/a;->g:I

    add-int/lit8 p3, p3, 0x10

    iput p3, p0, Lel/a;->f:I

    add-int/2addr v0, p3

    mul-int/lit8 p1, p1, 0x10

    add-int/2addr p1, v1

    add-int/2addr v0, p1

    iput v0, p0, Lel/a;->e:I

    iput-object p4, p0, Lel/a;->h:[S

    iput-object p5, p0, Lel/a;->u:LBi/a0;

    iput-object p6, p0, Lel/a;->v:Lel/g;

    return-void
.end method


# virtual methods
.method public final a([B[BS)[B
    .locals 4

    array-length v0, p1

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    not-int v2, p3

    aget-byte v3, p1, v1

    and-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    aget-byte v3, p2, v1

    and-int/2addr v3, p3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final b([S[S[S[S)S
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    aget-short v3, p1, v1

    aget-short v4, p3, v1

    xor-int/2addr v3, v4

    or-int/2addr v2, v3

    int-to-short v2, v2

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_1
    array-length p3, p2

    if-ge p1, p3, :cond_1

    aget-short p3, p2, p1

    aget-short v1, p4, p1

    xor-int/2addr p3, v1

    or-int/2addr p3, v2

    int-to-short v2, p3

    add-int/lit8 p1, p1, 0x1

    int-to-short p1, p1

    goto :goto_1

    :cond_1
    if-nez v2, :cond_2

    return v0

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public final c([S)[B
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lel/a;->d:I

    const/4 v2, 0x1

    shl-int v3, v2, v1

    sub-int/2addr v3, v2

    int-to-short v3, v3

    iget v4, v0, Lel/a;->a:I

    shl-int v4, v2, v4

    sub-int/2addr v4, v2

    int-to-short v4, v4

    const/16 v5, 0x8

    mul-int/2addr v1, v5

    new-array v1, v1, [B

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    :goto_0
    if-ge v7, v5, :cond_2

    const-wide/16 v9, 0x0

    move v11, v6

    :goto_1
    if-ge v11, v5, :cond_0

    aget-short v12, p1, v8

    and-int/2addr v12, v4

    iget v13, v0, Lel/a;->a:I

    iget v14, v0, Lel/a;->d:I

    sub-int v15, v13, v14

    sub-int/2addr v15, v2

    shl-int v15, v2, v15

    add-int/2addr v12, v15

    sub-int/2addr v13, v14

    shr-int/2addr v12, v13

    int-to-short v12, v12

    and-int/2addr v12, v3

    int-to-long v12, v12

    mul-int/2addr v14, v11

    shl-long/2addr v12, v14

    or-long/2addr v9, v12

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_0
    move v11, v6

    :goto_2
    iget v12, v0, Lel/a;->d:I

    if-ge v11, v12, :cond_1

    mul-int/2addr v12, v7

    add-int/2addr v12, v11

    mul-int/lit8 v13, v11, 0x8

    shr-long v13, v9, v13

    const-wide/16 v15, 0xff

    and-long/2addr v13, v15

    long-to-int v13, v13

    int-to-byte v13, v13

    aput-byte v13, v1, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public final d([B)[S
    .locals 12

    const/16 v0, 0x40

    new-array v0, v0, [S

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    move v4, v3

    move v5, v2

    :goto_0
    const/16 v6, 0x8

    if-ge v3, v6, :cond_4

    move v7, v1

    :goto_1
    if-ge v7, v6, :cond_3

    move v8, v1

    move v9, v8

    :goto_2
    iget v10, p0, Lel/a;->d:I

    if-ge v8, v10, :cond_2

    aget-byte v10, p1, v4

    and-int/2addr v10, v5

    if-ne v10, v5, :cond_0

    move v10, v2

    goto :goto_3

    :cond_0
    move v10, v1

    :goto_3
    shl-int v11, v2, v8

    mul-int/2addr v11, v10

    add-int/2addr v9, v11

    shl-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    if-nez v5, :cond_1

    add-int/lit8 v4, v4, 0x1

    move v5, v2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    mul-int/lit8 v8, v3, 0x8

    add-int/2addr v8, v7

    iget v11, p0, Lel/a;->b:I

    shl-int v10, v2, v10

    div-int/2addr v11, v10

    mul-int/2addr v9, v11

    int-to-short v9, v9

    aput-short v9, v0, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lel/a;->g:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lel/a;->e:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lel/a;->f:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lel/a;->t:I

    return v0
.end method

.method public i([B[B[B)V
    .locals 22

    move-object/from16 v7, p0

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    iget v2, v7, Lel/a;->c:I

    const/16 v8, 0x8

    mul-int/2addr v2, v8

    iget v3, v7, Lel/a;->a:I

    mul-int/2addr v2, v3

    div-int/2addr v2, v8

    const/4 v9, 0x0

    invoke-static {v0, v9, v2}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v10

    iget v3, v7, Lel/a;->a:I

    mul-int/lit8 v3, v3, 0x40

    div-int/2addr v3, v8

    add-int/2addr v3, v2

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v11

    iget v0, v7, Lel/a;->q:I

    invoke-static {v1, v9, v0}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v12

    add-int/lit8 v2, v0, 0x10

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v13

    iget v0, v7, Lel/a;->a:I

    iget v3, v7, Lel/a;->c:I

    mul-int/2addr v0, v3

    mul-int/2addr v0, v8

    div-int/2addr v0, v8

    add-int/2addr v0, v2

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v14

    iget v2, v7, Lel/a;->c:I

    mul-int/lit16 v2, v2, 0x80

    div-int/2addr v2, v8

    add-int/2addr v2, v0

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v0

    iget v3, v7, Lel/a;->c:I

    mul-int/2addr v3, v8

    new-array v3, v3, [S

    move v4, v9

    :goto_0
    if-ge v4, v8, :cond_1

    move v5, v9

    :goto_1
    iget v6, v7, Lel/a;->c:I

    if-ge v5, v6, :cond_0

    mul-int v15, v4, v6

    add-int/2addr v15, v5

    mul-int/2addr v6, v4

    mul-int/lit8 v6, v6, 0x2

    mul-int/lit8 v16, v5, 0x2

    add-int v6, v6, v16

    invoke-static {v0, v6}, Lorg/bouncycastle/util/p;->C([BI)S

    move-result v6

    aput-short v6, v3, v15

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget v0, v7, Lel/a;->c:I

    invoke-virtual {v7, v3, v8, v0}, Lel/a;->o([SII)[S

    move-result-object v4

    iget v0, v7, Lel/a;->s:I

    add-int/2addr v0, v2

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v15

    iget v0, v7, Lel/a;->c:I

    invoke-virtual {v7, v10, v8, v0}, Lel/a;->s([BII)[S

    move-result-object v6

    invoke-virtual {v7, v11, v8, v8}, Lel/a;->s([BII)[S

    move-result-object v5

    iget v3, v7, Lel/a;->c:I

    const/16 v16, 0x8

    const/16 v2, 0x8

    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v17, v3

    move-object v9, v5

    move/from16 v5, v17

    move-object/from16 v18, v6

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lel/a;->m([SII[SII)[S

    move-result-object v0

    invoke-virtual {v7, v9, v0, v8, v8}, Lel/a;->n([S[SII)[S

    move-result-object v0

    invoke-virtual {v7, v0}, Lel/a;->c([S)[B

    move-result-object v6

    iget v0, v7, Lel/a;->p:I

    iget v1, v7, Lel/a;->r:I

    add-int/2addr v0, v1

    new-array v0, v0, [B

    iget-object v1, v7, Lel/a;->u:LBi/a0;

    iget v2, v7, Lel/a;->s:I

    const/4 v3, 0x0

    invoke-interface {v1, v15, v3, v2}, LBi/y;->update([BII)V

    iget-object v1, v7, Lel/a;->u:LBi/a0;

    iget v2, v7, Lel/a;->o:I

    invoke-interface {v1, v6, v3, v2}, LBi/y;->update([BII)V

    iget-object v1, v7, Lel/a;->u:LBi/a0;

    iget v2, v7, Lel/a;->p:I

    iget v4, v7, Lel/a;->r:I

    add-int/2addr v2, v4

    invoke-interface {v1, v0, v3, v2}, LBi/a0;->e([BII)I

    iget v1, v7, Lel/a;->p:I

    iget v2, v7, Lel/a;->r:I

    add-int/2addr v2, v1

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v15

    iget v1, v7, Lel/a;->c:I

    mul-int/lit8 v1, v1, 0x10

    add-int/lit8 v1, v1, 0x40

    mul-int/lit8 v1, v1, 0x2

    new-array v2, v1, [B

    iget-object v3, v7, Lel/a;->u:LBi/a0;

    const/16 v4, -0x6a

    invoke-interface {v3, v4}, LBi/y;->update(B)V

    iget-object v3, v7, Lel/a;->u:LBi/a0;

    iget v4, v7, Lel/a;->p:I

    const/4 v5, 0x0

    invoke-interface {v3, v0, v5, v4}, LBi/y;->update([BII)V

    iget-object v0, v7, Lel/a;->u:LBi/a0;

    invoke-interface {v0, v2, v5, v1}, LBi/a0;->e([BII)I

    iget v0, v7, Lel/a;->c:I

    mul-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x40

    new-array v5, v0, [S

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_2

    mul-int/lit8 v3, v1, 0x2

    invoke-static {v2, v3}, Lorg/bouncycastle/util/p;->C([BI)S

    move-result v3

    aput-short v3, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget v0, v7, Lel/a;->c:I

    const/4 v1, 0x0

    invoke-virtual {v7, v5, v1, v8, v0}, Lel/a;->r([SIII)[S

    move-result-object v16

    iget v0, v7, Lel/a;->c:I

    mul-int/lit8 v1, v0, 0x8

    invoke-virtual {v7, v5, v1, v8, v0}, Lel/a;->r([SIII)[S

    move-result-object v4

    iget-object v0, v7, Lel/a;->v:Lel/g;

    invoke-virtual {v0, v13}, Lel/g;->a([B)[S

    move-result-object v13

    const/16 v2, 0x8

    iget v3, v7, Lel/a;->c:I

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v17, v3

    move-object/from16 v19, v4

    move-object v4, v13

    move-object v13, v5

    move/from16 v5, v17

    move-object/from16 v20, v6

    move/from16 v6, v17

    invoke-virtual/range {v0 .. v6}, Lel/a;->m([SII[SII)[S

    move-result-object v0

    iget v1, v7, Lel/a;->c:I

    move-object/from16 v2, v19

    invoke-virtual {v7, v0, v2, v8, v1}, Lel/a;->l([S[SII)[S

    move-result-object v6

    iget v0, v7, Lel/a;->c:I

    mul-int/lit8 v0, v0, 0x10

    invoke-virtual {v7, v13, v0, v8, v8}, Lel/a;->r([SIII)[S

    move-result-object v13

    iget v0, v7, Lel/a;->c:I

    invoke-virtual {v7, v14, v0, v8}, Lel/a;->s([BII)[S

    move-result-object v4

    iget v5, v7, Lel/a;->c:I

    const/16 v14, 0x8

    const/16 v2, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move v3, v5

    move-object/from16 v21, v6

    move v6, v14

    invoke-virtual/range {v0 .. v6}, Lel/a;->m([SII[SII)[S

    move-result-object v0

    invoke-virtual {v7, v0, v13, v8, v8}, Lel/a;->l([S[SII)[S

    move-result-object v0

    move-object/from16 v1, v20

    invoke-virtual {v7, v1}, Lel/a;->d([B)[S

    move-result-object v1

    invoke-virtual {v7, v0, v1, v8, v8}, Lel/a;->l([S[SII)[S

    move-result-object v0

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    invoke-virtual {v7, v1, v9, v2, v0}, Lel/a;->b([S[S[S[S)S

    move-result v0

    invoke-virtual {v7, v15, v12, v0}, Lel/a;->a([B[BS)[B

    move-result-object v0

    iget-object v1, v7, Lel/a;->u:LBi/a0;

    array-length v2, v10

    const/4 v3, 0x0

    invoke-interface {v1, v10, v3, v2}, LBi/y;->update([BII)V

    iget-object v1, v7, Lel/a;->u:LBi/a0;

    array-length v2, v11

    invoke-interface {v1, v11, v3, v2}, LBi/y;->update([BII)V

    iget-object v1, v7, Lel/a;->u:LBi/a0;

    array-length v2, v0

    invoke-interface {v1, v0, v3, v2}, LBi/y;->update([BII)V

    iget-object v0, v7, Lel/a;->u:LBi/a0;

    iget v1, v7, Lel/a;->t:I

    move-object/from16 v2, p1

    invoke-interface {v0, v2, v3, v1}, LBi/a0;->e([BII)I

    return-void
.end method

.method public j([B[B[BLjava/security/SecureRandom;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v0, p3

    const/4 v8, 0x0

    const/16 v9, 0x10

    invoke-static {v0, v8, v9}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v1

    iget v2, v7, Lel/a;->f:I

    invoke-static {v0, v9, v2}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v10

    iget v2, v7, Lel/a;->o:I

    new-array v11, v2, [B

    move-object/from16 v2, p4

    invoke-virtual {v2, v11}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget v2, v7, Lel/a;->s:I

    new-array v2, v2, [B

    iget-object v3, v7, Lel/a;->u:LBi/a0;

    iget v4, v7, Lel/a;->f:I

    invoke-interface {v3, v0, v8, v4}, LBi/y;->update([BII)V

    iget-object v0, v7, Lel/a;->u:LBi/a0;

    iget v3, v7, Lel/a;->s:I

    invoke-interface {v0, v2, v8, v3}, LBi/a0;->e([BII)I

    iget v0, v7, Lel/a;->j:I

    iget v3, v7, Lel/a;->l:I

    add-int/2addr v0, v3

    new-array v0, v0, [B

    iget-object v3, v7, Lel/a;->u:LBi/a0;

    iget v4, v7, Lel/a;->s:I

    invoke-interface {v3, v2, v8, v4}, LBi/y;->update([BII)V

    iget-object v2, v7, Lel/a;->u:LBi/a0;

    iget v3, v7, Lel/a;->o:I

    invoke-interface {v2, v11, v8, v3}, LBi/y;->update([BII)V

    iget-object v2, v7, Lel/a;->u:LBi/a0;

    iget v3, v7, Lel/a;->p:I

    iget v4, v7, Lel/a;->r:I

    add-int/2addr v3, v4

    invoke-interface {v2, v0, v8, v3}, LBi/a0;->e([BII)I

    iget v2, v7, Lel/a;->p:I

    invoke-static {v0, v8, v2}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v2

    iget v3, v7, Lel/a;->p:I

    iget v4, v7, Lel/a;->r:I

    add-int/2addr v4, v3

    invoke-static {v0, v3, v4}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v12

    iget v0, v7, Lel/a;->c:I

    mul-int/2addr v0, v9

    add-int/lit8 v0, v0, 0x40

    mul-int/lit8 v0, v0, 0x2

    new-array v3, v0, [B

    iget-object v4, v7, Lel/a;->u:LBi/a0;

    const/16 v5, -0x6a

    invoke-interface {v4, v5}, LBi/y;->update(B)V

    iget-object v4, v7, Lel/a;->u:LBi/a0;

    array-length v5, v2

    invoke-interface {v4, v2, v8, v5}, LBi/y;->update([BII)V

    iget-object v2, v7, Lel/a;->u:LBi/a0;

    invoke-interface {v2, v3, v8, v0}, LBi/a0;->e([BII)I

    div-int/lit8 v0, v0, 0x2

    new-array v13, v0, [S

    move v2, v8

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v4, v2, 0x2

    invoke-static {v3, v4}, Lorg/bouncycastle/util/p;->C([BI)S

    move-result v4

    aput-short v4, v13, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget v0, v7, Lel/a;->c:I

    const/16 v14, 0x8

    invoke-virtual {v7, v13, v8, v14, v0}, Lel/a;->r([SIII)[S

    move-result-object v15

    iget v0, v7, Lel/a;->c:I

    mul-int/lit8 v2, v0, 0x8

    invoke-virtual {v7, v13, v2, v14, v0}, Lel/a;->r([SIII)[S

    move-result-object v6

    iget-object v0, v7, Lel/a;->v:Lel/g;

    invoke-virtual {v0, v1}, Lel/g;->a([B)[S

    move-result-object v4

    const/16 v2, 0x8

    iget v5, v7, Lel/a;->c:I

    move-object/from16 v0, p0

    move-object v1, v15

    move v3, v5

    move/from16 v16, v5

    move-object v8, v6

    move/from16 v6, v16

    invoke-virtual/range {v0 .. v6}, Lel/a;->m([SII[SII)[S

    move-result-object v0

    iget v1, v7, Lel/a;->c:I

    invoke-virtual {v7, v0, v8, v14, v1}, Lel/a;->l([S[SII)[S

    move-result-object v0

    invoke-virtual {v7, v0}, Lel/a;->p([S)[B

    move-result-object v8

    iget v0, v7, Lel/a;->c:I

    mul-int/2addr v0, v9

    invoke-virtual {v7, v13, v0, v14, v14}, Lel/a;->r([SIII)[S

    move-result-object v9

    iget v0, v7, Lel/a;->c:I

    invoke-virtual {v7, v10, v0, v14}, Lel/a;->s([BII)[S

    move-result-object v4

    iget v5, v7, Lel/a;->c:I

    const/16 v6, 0x8

    move-object/from16 v0, p0

    move-object v1, v15

    move v3, v5

    invoke-virtual/range {v0 .. v6}, Lel/a;->m([SII[SII)[S

    move-result-object v0

    invoke-virtual {v7, v0, v9, v14, v14}, Lel/a;->l([S[SII)[S

    move-result-object v0

    invoke-virtual {v7, v11}, Lel/a;->d([B)[S

    move-result-object v1

    invoke-virtual {v7, v0, v1, v14, v14}, Lel/a;->l([S[SII)[S

    move-result-object v0

    invoke-virtual {v7, v0}, Lel/a;->p([S)[B

    move-result-object v0

    invoke-static {v8, v0}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object v1

    iget v2, v7, Lel/a;->g:I

    move-object/from16 v3, p1

    const/4 v4, 0x0

    invoke-static {v1, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v7, Lel/a;->u:LBi/a0;

    array-length v2, v8

    invoke-interface {v1, v8, v4, v2}, LBi/y;->update([BII)V

    iget-object v1, v7, Lel/a;->u:LBi/a0;

    array-length v2, v0

    invoke-interface {v1, v0, v4, v2}, LBi/y;->update([BII)V

    iget-object v0, v7, Lel/a;->u:LBi/a0;

    iget v1, v7, Lel/a;->r:I

    invoke-interface {v0, v12, v4, v1}, LBi/y;->update([BII)V

    iget-object v0, v7, Lel/a;->u:LBi/a0;

    iget v1, v7, Lel/a;->q:I

    move-object/from16 v2, p2

    invoke-interface {v0, v2, v4, v1}, LBi/a0;->e([BII)I

    return-void
.end method

.method public k([B[BLjava/security/SecureRandom;)V
    .locals 12

    iget v0, p0, Lel/a;->q:I

    iget v1, p0, Lel/a;->p:I

    add-int/2addr v0, v1

    const/16 v1, 0x10

    add-int/2addr v0, v1

    new-array v0, v0, [B

    invoke-virtual {p3, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget p3, p0, Lel/a;->q:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p3}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object p3

    iget v3, p0, Lel/a;->q:I

    iget v4, p0, Lel/a;->p:I

    add-int/2addr v4, v3

    invoke-static {v0, v3, v4}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v3

    iget v4, p0, Lel/a;->q:I

    iget v5, p0, Lel/a;->p:I

    add-int v6, v4, v5

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    invoke-static {v0, v6, v4}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v0

    new-array v4, v1, [B

    iget-object v5, p0, Lel/a;->u:LBi/a0;

    array-length v6, v0

    invoke-interface {v5, v0, v2, v6}, LBi/y;->update([BII)V

    iget-object v0, p0, Lel/a;->u:LBi/a0;

    invoke-interface {v0, v4, v2, v1}, LBi/a0;->e([BII)I

    iget-object v0, p0, Lel/a;->v:Lel/g;

    invoke-virtual {v0, v4}, Lel/g;->a([B)[S

    move-result-object v6

    iget v0, p0, Lel/a;->c:I

    mul-int/lit8 v0, v0, 0x20

    new-array v5, v0, [B

    iget-object v7, p0, Lel/a;->u:LBi/a0;

    const/16 v8, 0x5f

    invoke-interface {v7, v8}, LBi/y;->update(B)V

    iget-object v7, p0, Lel/a;->u:LBi/a0;

    array-length v8, v3

    invoke-interface {v7, v3, v2, v8}, LBi/y;->update([BII)V

    iget-object v3, p0, Lel/a;->u:LBi/a0;

    invoke-interface {v3, v5, v2, v0}, LBi/a0;->e([BII)I

    iget v0, p0, Lel/a;->c:I

    mul-int/2addr v0, v1

    new-array v1, v0, [S

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    mul-int/lit8 v7, v3, 0x2

    invoke-static {v5, v7}, Lorg/bouncycastle/util/p;->C([BI)S

    move-result v7

    aput-short v7, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lel/a;->c:I

    const/16 v3, 0x8

    invoke-virtual {p0, v1, v2, v3, v0}, Lel/a;->r([SIII)[S

    move-result-object v0

    iget v5, p0, Lel/a;->c:I

    invoke-virtual {p0, v0, v3, v5}, Lel/a;->o([SII)[S

    move-result-object v9

    iget v5, p0, Lel/a;->c:I

    mul-int/lit8 v7, v5, 0x8

    invoke-virtual {p0, v1, v7, v5, v3}, Lel/a;->r([SIII)[S

    move-result-object v1

    iget v10, p0, Lel/a;->c:I

    const/16 v11, 0x8

    move-object v5, p0

    move v7, v10

    move v8, v10

    invoke-virtual/range {v5 .. v11}, Lel/a;->m([SII[SII)[S

    move-result-object v5

    iget v6, p0, Lel/a;->c:I

    invoke-virtual {p0, v5, v1, v6, v3}, Lel/a;->l([S[SII)[S

    move-result-object v1

    invoke-virtual {p0, v1}, Lel/a;->p([S)[B

    move-result-object v1

    invoke-static {v4, v1}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object v1

    iget v4, p0, Lel/a;->f:I

    invoke-static {v1, v2, p1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lel/a;->s:I

    new-array v4, v1, [B

    iget-object v5, p0, Lel/a;->u:LBi/a0;

    array-length v6, p1

    invoke-interface {v5, p1, v2, v6}, LBi/y;->update([BII)V

    iget-object v5, p0, Lel/a;->u:LBi/a0;

    invoke-interface {v5, v4, v2, v1}, LBi/a0;->e([BII)I

    invoke-static {p3, p1}, Lorg/bouncycastle/util/a;->B([B[B)[B

    move-result-object p1

    iget p3, p0, Lel/a;->q:I

    iget v1, p0, Lel/a;->f:I

    add-int/2addr p3, v1

    invoke-static {p1, v2, p2, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p1, v2

    :goto_1
    if-ge p1, v3, :cond_2

    move p3, v2

    :goto_2
    iget v1, p0, Lel/a;->c:I

    if-ge p3, v1, :cond_1

    mul-int/2addr v1, p1

    add-int/2addr v1, p3

    aget-short v1, v0, v1

    invoke-static {v1}, Lorg/bouncycastle/util/p;->S(S)[B

    move-result-object v1

    iget v5, p0, Lel/a;->q:I

    iget v6, p0, Lel/a;->f:I

    add-int/2addr v5, v6

    iget v6, p0, Lel/a;->c:I

    mul-int/2addr v6, p1

    const/4 v7, 0x2

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    mul-int/lit8 v6, p3, 0x2

    add-int/2addr v5, v6

    invoke-static {v1, v2, p2, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    iget p1, p0, Lel/a;->e:I

    iget p3, p0, Lel/a;->s:I

    sub-int/2addr p1, p3

    invoke-static {v4, v2, p2, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final l([S[SII)[S
    .locals 8

    iget v0, p0, Lel/a;->b:I

    add-int/lit8 v0, v0, -0x1

    mul-int v1, p3, p4

    new-array v1, v1, [S

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p3, :cond_1

    move v4, v2

    :goto_1
    if-ge v4, p4, :cond_0

    mul-int v5, v3, p4

    add-int/2addr v5, v4

    aget-short v6, p1, v5

    aget-short v7, p2, v5

    add-int/2addr v6, v7

    and-int/2addr v6, v0

    int-to-short v6, v6

    aput-short v6, v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final m([SII[SII)[S
    .locals 8

    iget p5, p0, Lel/a;->b:I

    add-int/lit8 p5, p5, -0x1

    mul-int v0, p2, p6

    new-array v0, v0, [S

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_2

    move v3, v1

    :goto_1
    if-ge v3, p6, :cond_1

    move v4, v1

    move v5, v4

    :goto_2
    if-ge v4, p3, :cond_0

    mul-int v6, v2, p3

    add-int/2addr v6, v4

    aget-short v6, p1, v6

    mul-int v7, v4, p6

    add-int/2addr v7, v3

    aget-short v7, p4, v7

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_0
    mul-int v4, v2, p6

    add-int/2addr v4, v3

    and-int/2addr v5, p5

    int-to-short v5, v5

    aput-short v5, v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final n([S[SII)[S
    .locals 8

    iget v0, p0, Lel/a;->b:I

    add-int/lit8 v0, v0, -0x1

    mul-int v1, p3, p4

    new-array v1, v1, [S

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, p3, :cond_1

    move v4, v2

    :goto_1
    if-ge v4, p4, :cond_0

    mul-int v5, v3, p4

    add-int/2addr v5, v4

    aget-short v6, p1, v5

    aget-short v7, p2, v5

    sub-int/2addr v6, v7

    and-int/2addr v6, v0

    int-to-short v6, v6

    aput-short v6, v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public final o([SII)[S
    .locals 6

    mul-int v0, p2, p3

    new-array v0, v0, [S

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p3, :cond_1

    move v3, v1

    :goto_1
    if-ge v3, p2, :cond_0

    mul-int v4, v2, p2

    add-int/2addr v4, v3

    mul-int v5, v3, p3

    add-int/2addr v5, v2

    aget-short v5, p1, v5

    aput-short v5, v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final p([S)[B
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    iget v3, v0, Lel/a;->a:I

    mul-int/2addr v3, v2

    const/16 v4, 0x8

    div-int/2addr v3, v4

    new-array v5, v3, [B

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    move v9, v8

    move v10, v9

    :cond_0
    :goto_0
    if-ge v7, v3, :cond_4

    if-lt v8, v2, :cond_1

    if-ne v8, v2, :cond_4

    if-lez v9, :cond_4

    :cond_1
    move v11, v6

    :cond_2
    :goto_1
    if-ge v11, v4, :cond_3

    rsub-int/lit8 v12, v11, 0x8

    invoke-static {v12, v9}, Ljava/lang/Math;->min(II)I

    move-result v13

    const/4 v14, 0x1

    shl-int v15, v14, v13

    sub-int/2addr v15, v14

    int-to-short v14, v15

    sub-int/2addr v9, v13

    shr-int v15, v10, v9

    and-int/2addr v14, v15

    int-to-byte v14, v14

    aget-byte v15, v5, v7

    sub-int/2addr v12, v13

    shl-int v12, v14, v12

    add-int/2addr v15, v12

    int-to-byte v12, v15

    aput-byte v12, v5, v7

    add-int/2addr v11, v13

    int-to-byte v11, v11

    int-to-byte v9, v9

    if-nez v9, :cond_2

    if-ge v8, v2, :cond_3

    aget-short v9, v1, v8

    iget v10, v0, Lel/a;->a:I

    int-to-byte v10, v10

    add-int/lit8 v8, v8, 0x1

    int-to-short v8, v8

    move/from16 v16, v10

    move v10, v9

    move/from16 v9, v16

    goto :goto_1

    :cond_3
    if-ne v11, v4, :cond_0

    add-int/lit8 v7, v7, 0x1

    int-to-short v7, v7

    goto :goto_0

    :cond_4
    return-object v5
.end method

.method public final q(S)S
    .locals 6

    const v0, 0xffff

    and-int/2addr p1, v0

    ushr-int/lit8 v1, p1, 0x1

    int-to-short v1, v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lel/a;->h:[S

    array-length v5, v4

    if-ge v2, v5, :cond_1

    aget-short v4, v4, v2

    if-le v1, v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    int-to-short v3, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    rem-int/lit8 p1, p1, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    mul-int/lit8 v3, v3, -0x1

    and-int p1, v3, v0

    int-to-short v3, p1

    :cond_2
    return v3
.end method

.method public final r([SIII)[S
    .locals 6

    mul-int v0, p3, p4

    new-array v0, v0, [S

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p3, :cond_1

    move v3, v1

    :goto_1
    if-ge v3, p4, :cond_0

    mul-int v4, v2, p4

    add-int/2addr v4, v3

    add-int v5, v4, p2

    aget-short v5, p1, v5

    invoke-virtual {p0, v5}, Lel/a;->q(S)S

    move-result v5

    aput-short v5, v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final s([BII)[S
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    mul-int v2, p2, p3

    new-array v3, v2, [S

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :cond_0
    :goto_0
    if-ge v5, v2, :cond_5

    array-length v9, v1

    if-lt v6, v9, :cond_1

    array-length v9, v1

    if-ne v6, v9, :cond_5

    if-lez v7, :cond_5

    :cond_1
    const/4 v9, 0x0

    :goto_1
    iget v10, v0, Lel/a;->a:I

    if-ge v9, v10, :cond_4

    sub-int/2addr v10, v9

    invoke-static {v10, v7}, Ljava/lang/Math;->min(II)I

    move-result v10

    const/4 v11, 0x1

    shl-int v12, v11, v10

    sub-int/2addr v12, v11

    const v11, 0xffff

    and-int/2addr v12, v11

    int-to-short v12, v12

    and-int/lit16 v13, v8, 0xff

    and-int/lit16 v14, v7, 0xff

    sub-int/2addr v14, v10

    ushr-int/2addr v13, v14

    and-int v14, v12, v11

    and-int/2addr v13, v14

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    aget-short v14, v3, v5

    and-int/2addr v14, v11

    and-int/lit16 v13, v13, 0xff

    iget v15, v0, Lel/a;->a:I

    and-int/lit16 v4, v9, 0xff

    sub-int/2addr v15, v4

    sub-int/2addr v15, v10

    shl-int v4, v13, v15

    add-int/2addr v14, v4

    and-int v4, v14, v11

    int-to-short v4, v4

    aput-short v4, v3, v5

    add-int/2addr v9, v10

    int-to-byte v9, v9

    sub-int/2addr v7, v10

    int-to-byte v4, v7

    shl-int v7, v12, v4

    not-int v7, v7

    and-int/2addr v7, v8

    int-to-byte v7, v7

    if-nez v4, :cond_3

    array-length v8, v1

    if-ge v6, v8, :cond_2

    aget-byte v4, v1, v6

    add-int/lit8 v6, v6, 0x1

    int-to-short v6, v6

    const/16 v7, 0x8

    move v8, v4

    goto :goto_1

    :cond_2
    move v8, v7

    move v7, v4

    goto :goto_2

    :cond_3
    move v8, v7

    move v7, v4

    goto :goto_1

    :cond_4
    :goto_2
    iget v4, v0, Lel/a;->a:I

    if-ne v9, v4, :cond_0

    add-int/lit8 v5, v5, 0x1

    int-to-short v5, v5

    goto :goto_0

    :cond_5
    return-object v3
.end method
