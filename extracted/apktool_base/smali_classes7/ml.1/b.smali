.class public Lml/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final A:I = 0x20

.field public static final B:I = 0x20

.field public static final C:I = 0x20

.field public static final x:I = 0xa

.field public static final y:I = 0x100

.field public static final z:I = 0x20


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

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

.field public final s:Lml/l;

.field public final t:Lml/a;

.field public final u:Z

.field public final v:Z

.field public final w:Lml/k;


# direct methods
.method public constructor <init>(IIZZ)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lml/b;->p:I

    iput-boolean p3, p0, Lml/b;->u:Z

    iput-boolean p4, p0, Lml/b;->v:Z

    iput p1, p0, Lml/b;->a:I

    const/4 p2, 0x2

    const/4 v0, 0x3

    const/16 v1, 0x8

    if-ne p1, p2, :cond_0

    const/16 p2, 0xa

    iput p2, p0, Lml/b;->b:I

    iput v0, p0, Lml/b;->c:I

    goto :goto_1

    :cond_0
    if-ne p1, v0, :cond_1

    iput v1, p0, Lml/b;->b:I

    const/4 p2, 0x4

    :goto_0
    iput p2, p0, Lml/b;->c:I

    goto :goto_1

    :cond_1
    const/4 p2, 0x6

    iput p2, p0, Lml/b;->b:I

    goto :goto_0

    :goto_1
    if-eqz p3, :cond_2

    new-instance p2, Lml/k$a;

    invoke-direct {p2}, Lml/k$a;-><init>()V

    :goto_2
    iput-object p2, p0, Lml/b;->w:Lml/k;

    goto :goto_3

    :cond_2
    new-instance p2, Lml/k$b;

    invoke-direct {p2}, Lml/k$b;-><init>()V

    goto :goto_2

    :goto_3
    const/16 p2, 0x40

    if-eqz p4, :cond_3

    const/16 p3, 0xc

    iput p3, p0, Lml/b;->e:I

    iput p2, p0, Lml/b;->d:I

    goto :goto_4

    :cond_3
    const/16 p3, 0xd

    iput p3, p0, Lml/b;->e:I

    iget p3, p0, Lml/b;->b:I

    mul-int/lit16 p3, p3, 0x100

    div-int/2addr p3, v1

    iput p3, p0, Lml/b;->d:I

    :goto_4
    iget p3, p0, Lml/b;->e:I

    mul-int/lit16 p4, p3, 0x100

    div-int/2addr p4, v1

    iput p4, p0, Lml/b;->f:I

    mul-int/2addr p4, p1

    iput p4, p0, Lml/b;->g:I

    const/16 v0, 0x140

    iput v0, p0, Lml/b;->h:I

    mul-int/2addr p1, v0

    iput p1, p0, Lml/b;->i:I

    iget v0, p0, Lml/b;->c:I

    mul-int/lit16 v2, v0, 0x100

    div-int/2addr v2, v1

    iput v2, p0, Lml/b;->j:I

    add-int/lit8 v1, p1, 0x20

    iput v1, p0, Lml/b;->k:I

    iput p4, p0, Lml/b;->l:I

    iput v1, p0, Lml/b;->m:I

    add-int/2addr p4, v1

    add-int/2addr p4, p2

    iput p4, p0, Lml/b;->n:I

    add-int/2addr p1, v2

    iput p1, p0, Lml/b;->o:I

    add-int/lit8 p1, p3, -0xb

    const/4 p2, 0x1

    shl-int p1, p2, p1

    iput p1, p0, Lml/b;->q:I

    rsub-int/lit8 p1, v0, 0x9

    shl-int p1, p2, p1

    rsub-int p1, p1, 0x100

    add-int/lit8 p3, p3, -0xb

    shl-int/2addr p2, p3

    add-int/2addr p1, p2

    iput p1, p0, Lml/b;->r:I

    new-instance p1, Lml/l;

    invoke-direct {p1, p0}, Lml/l;-><init>(Lml/b;)V

    iput-object p1, p0, Lml/b;->s:Lml/l;

    new-instance p1, Lml/a;

    invoke-direct {p1, p0}, Lml/a;-><init>(Lml/b;)V

    iput-object p1, p0, Lml/b;->t:Lml/a;

    return-void
.end method

.method public static a([B[BIIB)V
    .locals 3

    neg-int p4, p4

    int-to-byte p4, p4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    aget-byte v1, p0, v0

    add-int v2, v0, p2

    aget-byte v2, p1, v2

    xor-int/2addr v2, v1

    and-int/2addr v2, p4

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static x([B[BI)I
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    aget-byte v3, p0, v2

    aget-byte v4, p1, v2

    xor-int/2addr v3, v4

    int-to-long v3, v3

    or-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    neg-long p0, v0

    const/16 p2, 0x3f

    ushr-long/2addr p0, p2

    long-to-int p0, p0

    return p0
.end method


# virtual methods
.method public b([B[B[B)I
    .locals 9

    iget v0, p0, Lml/b;->o:I

    new-array v0, v0, [B

    const/16 v1, 0x40

    new-array v2, v1, [B

    new-array v3, v1, [B

    iget v4, p0, Lml/b;->l:I

    array-length v5, p3

    invoke-static {p3, v4, v5}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v4

    invoke-virtual {p0, p3, p2, v2}, Lml/b;->u([B[B[B)V

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/16 v7, 0x20

    if-ge v6, v7, :cond_0

    add-int/lit8 v7, v6, 0x20

    iget v8, p0, Lml/b;->n:I

    sub-int/2addr v8, v1

    add-int/2addr v8, v6

    aget-byte v8, p3, v8

    aput-byte v8, v2, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lml/b;->w:Lml/k;

    invoke-virtual {v6, v3, v2}, Lml/k;->a([B[B)V

    invoke-static {v3, v7, v1}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v1

    invoke-virtual {p0, v2, v1, v4, v0}, Lml/b;->v([B[B[B[B)V

    iget v1, p0, Lml/b;->o:I

    invoke-static {p2, v0, v1}, Lml/b;->x([B[BI)I

    move-result v0

    iget-object v1, p0, Lml/b;->w:Lml/k;

    invoke-virtual {v1, v3, p2, v7}, Lml/k;->b([B[BI)V

    iget p2, p0, Lml/b;->n:I

    sub-int/2addr p2, v7

    int-to-byte v0, v0

    invoke-static {v3, p3, p2, v7, v0}, Lml/b;->a([B[BIIB)V

    new-array p2, v7, [B

    iget-object p3, p0, Lml/b;->w:Lml/k;

    invoke-virtual {p3, p2, v3, v5}, Lml/k;->b([B[BI)V

    iget p3, p0, Lml/b;->p:I

    div-int/lit8 p3, p3, 0x8

    invoke-static {p2, v5, p1, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v5
.end method

.method public c([B[B[BLjava/security/SecureRandom;)I
    .locals 6

    const/16 v0, 0x40

    new-array v1, v0, [B

    new-array v2, v0, [B

    const/16 v3, 0x20

    new-array v4, v3, [B

    invoke-virtual {p4, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object p4, p0, Lml/b;->w:Lml/k;

    const/4 v5, 0x0

    invoke-virtual {p4, v4, v4, v5}, Lml/k;->b([B[BI)V

    invoke-static {v4, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p4, p0, Lml/b;->w:Lml/k;

    invoke-virtual {p4, v2, p3, v3}, Lml/k;->b([B[BI)V

    iget-object p4, p0, Lml/b;->w:Lml/k;

    invoke-virtual {p4, v1, v2}, Lml/k;->a([B[B)V

    invoke-static {v1, v3, v0}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object p4

    invoke-virtual {p0, v2, p4, p3, p1}, Lml/b;->v([B[B[B[B)V

    iget-object p3, p0, Lml/b;->w:Lml/k;

    invoke-virtual {p3, v1, p1, v3}, Lml/k;->b([B[BI)V

    new-array p1, v3, [B

    iget-object p3, p0, Lml/b;->w:Lml/k;

    invoke-virtual {p3, p1, v1, v5}, Lml/k;->b([B[BI)V

    iget p3, p0, Lml/b;->p:I

    div-int/lit8 p3, p3, 0x8

    invoke-static {p1, v5, p2, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v5
.end method

.method public d([B[BLjava/security/SecureRandom;)I
    .locals 4

    invoke-virtual {p0, p1, p2, p3}, Lml/b;->w([B[BLjava/security/SecureRandom;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lml/b;->k:I

    if-ge v1, v2, :cond_0

    iget v2, p0, Lml/b;->l:I

    add-int/2addr v2, v1

    aget-byte v3, p1, v1

    aput-byte v3, p2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lml/b;->w:Lml/k;

    iget v2, p0, Lml/b;->n:I

    add-int/lit8 v2, v2, -0x40

    invoke-virtual {v1, p2, p1, v2}, Lml/k;->b([B[BI)V

    const/16 p1, 0x20

    new-array v1, p1, [B

    invoke-virtual {p3, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget p3, p0, Lml/b;->n:I

    sub-int/2addr p3, p1

    invoke-static {v1, v0, p2, p3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lml/b;->o:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lml/b;->n:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lml/b;->m:I

    return v0
.end method

.method public h()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lml/b;->c:I

    return v0
.end method

.method public j()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lml/b;->a:I

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lml/b;->b:I

    return v0
.end method

.method public m()I
    .locals 1

    const/16 v0, 0x100

    return v0
.end method

.method public n()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lml/b;->f:I

    return v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lml/b;->d:I

    return v0
.end method

.method public q()I
    .locals 1

    iget v0, p0, Lml/b;->g:I

    return v0
.end method

.method public r()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public s()I
    .locals 1

    iget v0, p0, Lml/b;->p:I

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public t()Lml/l;
    .locals 1

    iget-object v0, p0, Lml/b;->s:Lml/l;

    return-object v0
.end method

.method public final u([B[B[B)V
    .locals 7

    iget v0, p0, Lml/b;->a:I

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x1

    const/16 v4, 0x100

    aput v4, v2, v3

    const/4 v5, 0x0

    aput v0, v2, v5

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[S

    iget v6, p0, Lml/b;->a:I

    new-array v1, v1, [I

    aput v4, v1, v3

    aput v6, v1, v5

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    new-array v1, v4, [S

    new-array v3, v4, [S

    iget-object v6, p0, Lml/b;->s:Lml/l;

    invoke-virtual {v6, p1, v5, v2}, Lml/l;->c([BI[[S)V

    iget-object p1, p0, Lml/b;->s:Lml/l;

    invoke-virtual {p1, p2, v0}, Lml/l;->b([B[[S)V

    iget-object p1, p0, Lml/b;->t:Lml/a;

    invoke-virtual {p1, v0, v2, v1}, Lml/a;->c([[S[[S[S)V

    iget-object p1, p0, Lml/b;->s:Lml/l;

    iget v0, p0, Lml/b;->i:I

    invoke-virtual {p1, p2, v0, v3}, Lml/l;->a([BI[S)V

    :goto_0
    if-ge v5, v4, :cond_0

    aget-short p1, v1, v5

    iget p2, p0, Lml/b;->r:I

    add-int/2addr p1, p2

    aget-short p2, v3, v5

    iget v0, p0, Lml/b;->c:I

    rsub-int/lit8 v0, v0, 0xa

    shl-int/2addr p2, v0

    sub-int/2addr p1, p2

    const p2, 0xffff

    and-int/2addr p1, p2

    shr-int/lit8 p1, p1, 0x9

    int-to-short p1, p1

    aput-short p1, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lml/b;->s:Lml/l;

    invoke-virtual {p1, p3, v1}, Lml/l;->j([B[S)V

    return-void
.end method

.method public final v([B[B[B[B)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    iget v3, v0, Lml/b;->a:I

    const/4 v4, 0x3

    new-array v4, v4, [I

    const/4 v5, 0x2

    const/16 v6, 0x100

    aput v6, v4, v5

    const/4 v7, 0x1

    aput v3, v4, v7

    const/4 v8, 0x0

    aput v3, v4, v8

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[[S

    iget v9, v0, Lml/b;->a:I

    new-array v10, v5, [I

    aput v6, v10, v7

    aput v9, v10, v8

    invoke-static {v3, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[S

    iget v10, v0, Lml/b;->a:I

    new-array v11, v5, [I

    aput v6, v11, v7

    aput v10, v11, v8

    invoke-static {v3, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[S

    iget v11, v0, Lml/b;->a:I

    new-array v5, v5, [I

    aput v6, v5, v7

    aput v11, v5, v8

    invoke-static {v3, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[S

    new-array v5, v6, [S

    new-array v7, v6, [S

    iget v11, v0, Lml/b;->i:I

    array-length v12, v1

    invoke-static {v1, v11, v12}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v11

    iget-object v12, v0, Lml/b;->t:Lml/a;

    invoke-virtual {v12, v4, v11}, Lml/a;->a([[[S[B)V

    iget-object v11, v0, Lml/b;->t:Lml/a;

    move-object/from16 v12, p2

    invoke-virtual {v11, v9, v12}, Lml/a;->b([[S[B)V

    iget-object v11, v0, Lml/b;->t:Lml/a;

    invoke-virtual {v11, v4, v9, v10, v8}, Lml/a;->d([[[S[[S[[SI)V

    move v4, v8

    :goto_0
    iget v11, v0, Lml/b;->a:I

    const v12, 0xffff

    if-ge v4, v11, :cond_1

    move v11, v8

    :goto_1
    if-ge v11, v6, :cond_0

    aget-object v13, v10, v4

    aget-short v14, v13, v11

    iget v15, v0, Lml/b;->q:I

    add-int/2addr v14, v15

    and-int/2addr v14, v12

    iget v15, v0, Lml/b;->e:I

    add-int/lit8 v15, v15, -0xa

    ushr-int/2addr v14, v15

    int-to-short v14, v14

    aput-short v14, v13, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, v0, Lml/b;->s:Lml/l;

    invoke-virtual {v4, v2, v10}, Lml/l;->h([B[[S)V

    iget-object v4, v0, Lml/b;->s:Lml/l;

    invoke-virtual {v4, v1, v3}, Lml/l;->b([B[[S)V

    iget-object v1, v0, Lml/b;->t:Lml/a;

    invoke-virtual {v1, v3, v9, v7}, Lml/a;->c([[S[[S[S)V

    iget-object v1, v0, Lml/b;->s:Lml/l;

    move-object/from16 v3, p1

    invoke-virtual {v1, v3, v5}, Lml/l;->d([B[S)V

    :goto_2
    if-ge v8, v6, :cond_2

    aget-short v1, v7, v8

    aget-short v3, v5, v8

    shl-int/lit8 v3, v3, 0x9

    sub-int/2addr v1, v3

    iget v3, v0, Lml/b;->q:I

    add-int/2addr v1, v3

    and-int/2addr v1, v12

    iget v3, v0, Lml/b;->c:I

    rsub-int/lit8 v3, v3, 0xa

    ushr-int/2addr v1, v3

    int-to-short v1, v1

    aput-short v1, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    iget-object v1, v0, Lml/b;->s:Lml/l;

    iget v3, v0, Lml/b;->i:I

    invoke-virtual {v1, v2, v3, v7}, Lml/l;->g([BI[S)V

    return-void
.end method

.method public final w([B[BLjava/security/SecureRandom;)V
    .locals 10

    iget v0, p0, Lml/b;->a:I

    const/4 v1, 0x3

    new-array v1, v1, [I

    const/4 v2, 0x2

    const/16 v3, 0x100

    aput v3, v1, v2

    const/4 v4, 0x1

    aput v0, v1, v4

    const/4 v5, 0x0

    aput v0, v1, v5

    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[[S

    iget v6, p0, Lml/b;->a:I

    new-array v7, v2, [I

    aput v3, v7, v4

    aput v6, v7, v5

    invoke-static {v0, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[S

    iget v7, p0, Lml/b;->a:I

    new-array v2, v2, [I

    aput v3, v2, v4

    aput v7, v2, v5

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    const/16 v2, 0x20

    new-array v7, v2, [B

    new-array v8, v2, [B

    invoke-virtual {p3, v7}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v9, p0, Lml/b;->w:Lml/k;

    invoke-virtual {v9, v7, v7, v2, v2}, Lml/k;->c([B[BII)V

    invoke-virtual {p3, v8}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object p3, p0, Lml/b;->t:Lml/a;

    invoke-virtual {p3, v1, v7}, Lml/a;->a([[[S[B)V

    iget-object p3, p0, Lml/b;->t:Lml/a;

    invoke-virtual {p3, v6, v8}, Lml/a;->b([[S[B)V

    iget-object p3, p0, Lml/b;->t:Lml/a;

    invoke-virtual {p3, v1, v6, v0, v4}, Lml/a;->d([[[S[[S[[SI)V

    move p3, v5

    :goto_0
    iget v1, p0, Lml/b;->a:I

    if-ge p3, v1, :cond_1

    move v1, v5

    :goto_1
    if-ge v1, v3, :cond_0

    aget-object v4, v0, p3

    aget-short v8, v4, v1

    iget v9, p0, Lml/b;->q:I

    add-int/2addr v8, v9

    const v9, 0xffff

    and-int/2addr v8, v9

    iget v9, p0, Lml/b;->e:I

    add-int/lit8 v9, v9, -0xa

    ushr-int/2addr v8, v9

    int-to-short v8, v8

    aput-short v8, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lml/b;->s:Lml/l;

    invoke-virtual {p3, p2, v6}, Lml/l;->i([B[[S)V

    iget-object p2, p0, Lml/b;->s:Lml/l;

    invoke-virtual {p2, p1, v0}, Lml/l;->h([B[[S)V

    iget p2, p0, Lml/b;->i:I

    invoke-static {v7, v5, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
