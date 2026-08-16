.class public Lbj/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/S;


# static fields
.field public static final u:B = -0x44t


# instance fields
.field public g:LBi/y;

.field public h:LBi/y;

.field public i:LBi/y;

.field public j:LBi/b;

.field public k:Ljava/security/SecureRandom;

.field public l:I

.field public m:I

.field public n:Z

.field public o:I

.field public p:I

.field public q:[B

.field public r:[B

.field public s:[B

.field public t:B


# direct methods
.method public constructor <init>(LBi/b;LBi/y;I)V
    .locals 1

    const/16 v0, -0x44

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lbj/u;-><init>(LBi/b;LBi/y;IB)V

    return-void
.end method

.method public constructor <init>(LBi/b;LBi/y;IB)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    move v4, p3

    move v5, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lbj/u;-><init>(LBi/b;LBi/y;LBi/y;IB)V

    return-void
.end method

.method public constructor <init>(LBi/b;LBi/y;LBi/y;I)V
    .locals 6

    const/16 v5, -0x44

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 3
    invoke-direct/range {v0 .. v5}, Lbj/u;-><init>(LBi/b;LBi/y;LBi/y;IB)V

    return-void
.end method

.method public constructor <init>(LBi/b;LBi/y;LBi/y;IB)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .line 4
    invoke-direct/range {v0 .. v6}, Lbj/u;-><init>(LBi/b;LBi/y;LBi/y;LBi/y;IB)V

    return-void
.end method

.method public constructor <init>(LBi/b;LBi/y;LBi/y;LBi/y;IB)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbj/u;->j:LBi/b;

    iput-object p2, p0, Lbj/u;->g:LBi/y;

    iput-object p3, p0, Lbj/u;->h:LBi/y;

    iput-object p4, p0, Lbj/u;->i:LBi/y;

    invoke-interface {p3}, LBi/y;->f()I

    move-result p1

    iput p1, p0, Lbj/u;->l:I

    invoke-interface {p4}, LBi/y;->f()I

    move-result p1

    iput p1, p0, Lbj/u;->m:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lbj/u;->n:Z

    iput p5, p0, Lbj/u;->o:I

    new-array p1, p5, [B

    iput-object p1, p0, Lbj/u;->q:[B

    add-int/lit8 p5, p5, 0x8

    iget p1, p0, Lbj/u;->l:I

    add-int/2addr p5, p1

    new-array p1, p5, [B

    iput-object p1, p0, Lbj/u;->r:[B

    iput-byte p6, p0, Lbj/u;->t:B

    return-void
.end method

.method public constructor <init>(LBi/b;LBi/y;LBi/y;LBi/y;[BB)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbj/u;->j:LBi/b;

    iput-object p2, p0, Lbj/u;->g:LBi/y;

    iput-object p3, p0, Lbj/u;->h:LBi/y;

    iput-object p4, p0, Lbj/u;->i:LBi/y;

    invoke-interface {p3}, LBi/y;->f()I

    move-result p1

    iput p1, p0, Lbj/u;->l:I

    invoke-interface {p4}, LBi/y;->f()I

    move-result p1

    iput p1, p0, Lbj/u;->m:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lbj/u;->n:Z

    array-length p1, p5

    iput p1, p0, Lbj/u;->o:I

    iput-object p5, p0, Lbj/u;->q:[B

    add-int/lit8 p1, p1, 0x8

    iget p2, p0, Lbj/u;->l:I

    add-int/2addr p1, p2

    new-array p1, p1, [B

    iput-object p1, p0, Lbj/u;->r:[B

    iput-byte p6, p0, Lbj/u;->t:B

    return-void
.end method

.method public constructor <init>(LBi/b;LBi/y;LBi/y;[B)V
    .locals 6

    const/16 v5, -0x44

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 7
    invoke-direct/range {v0 .. v5}, Lbj/u;-><init>(LBi/b;LBi/y;LBi/y;[BB)V

    return-void
.end method

.method public constructor <init>(LBi/b;LBi/y;LBi/y;[BB)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    .line 8
    invoke-direct/range {v0 .. v6}, Lbj/u;-><init>(LBi/b;LBi/y;LBi/y;LBi/y;[BB)V

    return-void
.end method

.method public constructor <init>(LBi/b;LBi/y;[B)V
    .locals 6

    const/16 v5, -0x44

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p2

    move-object v4, p3

    .line 9
    invoke-direct/range {v0 .. v5}, Lbj/u;-><init>(LBi/b;LBi/y;LBi/y;[BB)V

    return-void
.end method

.method private g(I[B)V
    .locals 2

    ushr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, p2, v1

    ushr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, p2, v1

    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    const/4 v1, 0x2

    aput-byte v0, p2, v1

    const/4 v0, 0x3

    int-to-byte p1, p1

    aput-byte p1, p2, v0

    return-void
.end method

.method private h([B)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_0

    aput-byte v0, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static i(LBi/b;LBi/y;)Lbj/u;
    .locals 8

    new-instance v7, Lbj/u;

    invoke-static {p1}, LIi/E;->a(LBi/y;)LIi/E;

    move-result-object v2

    invoke-interface {p1}, LBi/y;->f()I

    move-result v5

    const/16 v6, -0x44

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lbj/u;-><init>(LBi/b;LBi/y;LBi/y;LBi/y;IB)V

    return-object v7
.end method

.method public static j(LBi/b;LBi/y;LBi/y;IB)Lbj/u;
    .locals 8

    new-instance v7, Lbj/u;

    invoke-static {p1}, LIi/E;->a(LBi/y;)LIi/E;

    move-result-object v2

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lbj/u;-><init>(LBi/b;LBi/y;LBi/y;LBi/y;IB)V

    return-object v7
.end method

.method public static k(LBi/b;LBi/y;LBi/y;[BB)Lbj/u;
    .locals 8

    new-instance v7, Lbj/u;

    invoke-static {p1}, LIi/E;->a(LBi/y;)LIi/E;

    move-result-object v2

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lbj/u;-><init>(LBi/b;LBi/y;LBi/y;LBi/y;[BB)V

    return-object v7
.end method

.method private m([BIII)[B
    .locals 8

    new-array v0, p4, [B

    iget v1, p0, Lbj/u;->m:I

    new-array v1, v1, [B

    const/4 v2, 0x4

    new-array v3, v2, [B

    iget-object v4, p0, Lbj/u;->i:LBi/y;

    invoke-interface {v4}, LBi/y;->reset()V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    iget v6, p0, Lbj/u;->m:I

    div-int v7, p4, v6

    if-ge v5, v7, :cond_0

    invoke-direct {p0, v5, v3}, Lbj/u;->g(I[B)V

    iget-object v6, p0, Lbj/u;->i:LBi/y;

    invoke-interface {v6, p1, p2, p3}, LBi/y;->update([BII)V

    iget-object v6, p0, Lbj/u;->i:LBi/y;

    invoke-interface {v6, v3, v4, v2}, LBi/y;->update([BII)V

    iget-object v6, p0, Lbj/u;->i:LBi/y;

    invoke-interface {v6, v1, v4}, LBi/y;->c([BI)I

    iget v6, p0, Lbj/u;->m:I

    mul-int v7, v5, v6

    invoke-static {v1, v4, v0, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    mul-int/2addr v6, v5

    if-ge v6, p4, :cond_1

    invoke-direct {p0, v5, v3}, Lbj/u;->g(I[B)V

    iget-object v6, p0, Lbj/u;->i:LBi/y;

    invoke-interface {v6, p1, p2, p3}, LBi/y;->update([BII)V

    iget-object p1, p0, Lbj/u;->i:LBi/y;

    invoke-interface {p1, v3, v4, v2}, LBi/y;->update([BII)V

    iget-object p1, p0, Lbj/u;->i:LBi/y;

    invoke-interface {p1, v1, v4}, LBi/y;->c([BI)I

    iget p1, p0, Lbj/u;->m:I

    mul-int p2, v5, p1

    mul-int/2addr v5, p1

    sub-int/2addr p4, v5

    invoke-static {v1, v4, v0, p2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-object v0
.end method


# virtual methods
.method public a(ZLBi/k;)V
    .locals 2

    instance-of v0, p2, LXi/x0;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LXi/x0;

    invoke-virtual {v0}, LXi/x0;->a()LBi/k;

    move-result-object v1

    invoke-virtual {v0}, LXi/x0;->b()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lbj/u;->k:Ljava/security/SecureRandom;

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lbj/u;->k:Ljava/security/SecureRandom;

    :cond_1
    move-object v1, p2

    :goto_0
    instance-of v0, v1, LXi/D0;

    if-eqz v0, :cond_2

    check-cast v1, LXi/D0;

    invoke-virtual {v1}, LXi/D0;->b()LXi/F0;

    move-result-object v0

    iget-object v1, p0, Lbj/u;->j:LBi/b;

    invoke-interface {v1, p1, p2}, LBi/b;->a(ZLBi/k;)V

    goto :goto_1

    :cond_2
    move-object v0, v1

    check-cast v0, LXi/F0;

    iget-object p2, p0, Lbj/u;->j:LBi/b;

    invoke-interface {p2, p1, v1}, LBi/b;->a(ZLBi/k;)V

    :goto_1
    invoke-virtual {v0}, LXi/F0;->f()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    add-int/lit8 p2, p1, -0x1

    iput p2, p0, Lbj/u;->p:I

    iget v0, p0, Lbj/u;->l:I

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lbj/u;->o:I

    mul-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x9

    if-lt p2, v0, :cond_3

    add-int/lit8 p1, p1, 0x6

    div-int/lit8 p1, p1, 0x8

    new-array p1, p1, [B

    iput-object p1, p0, Lbj/u;->s:[B

    invoke-virtual {p0}, Lbj/u;->reset()V

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "key too small for specified hash and salt lengths"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b([B)Z
    .locals 7

    iget-object v0, p0, Lbj/u;->g:LBi/y;

    invoke-interface {v0}, LBi/y;->f()I

    move-result v0

    iget v1, p0, Lbj/u;->l:I

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lbj/u;->g:LBi/y;

    iget-object v2, p0, Lbj/u;->r:[B

    array-length v3, v2

    sub-int/2addr v3, v1

    iget v1, p0, Lbj/u;->o:I

    sub-int/2addr v3, v1

    invoke-interface {v0, v2, v3}, LBi/y;->c([BI)I

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lbj/u;->j:LBi/b;

    array-length v2, p1

    invoke-interface {v1, p1, v0, v2}, LBi/b;->b([BII)[B

    move-result-object p1

    iget-object v1, p0, Lbj/u;->s:[B

    array-length v2, v1

    array-length v3, p1

    sub-int/2addr v2, v3

    invoke-static {v1, v0, v2, v0}, Lorg/bouncycastle/util/a;->f0([BIIB)V

    iget-object v1, p0, Lbj/u;->s:[B

    array-length v2, v1

    array-length v3, p1

    sub-int/2addr v2, v3

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p1, p0, Lbj/u;->s:[B

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x8

    iget v2, p0, Lbj/u;->p:I

    sub-int/2addr v1, v2

    const/16 v2, 0xff

    ushr-int v1, v2, v1

    aget-byte v2, p1, v0

    and-int/lit16 v3, v2, 0xff

    and-int/2addr v2, v1

    if-ne v3, v2, :cond_8

    array-length v2, p1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-byte v2, p1, v2

    iget-byte v4, p0, Lbj/u;->t:B

    if-eq v2, v4, :cond_0

    goto/16 :goto_4

    :cond_0
    array-length v2, p1

    iget v4, p0, Lbj/u;->l:I

    sub-int/2addr v2, v4

    sub-int/2addr v2, v3

    array-length v5, p1

    sub-int/2addr v5, v4

    sub-int/2addr v5, v3

    invoke-virtual {p0, p1, v2, v4, v5}, Lbj/u;->l([BIII)[B

    move-result-object p1

    move v2, v0

    :goto_0
    array-length v4, p1

    if-eq v2, v4, :cond_1

    iget-object v4, p0, Lbj/u;->s:[B

    aget-byte v5, v4, v2

    aget-byte v6, p1, v2

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lbj/u;->s:[B

    aget-byte v2, p1, v0

    and-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    move p1, v0

    :goto_1
    iget-object v1, p0, Lbj/u;->s:[B

    array-length v2, v1

    iget v4, p0, Lbj/u;->l:I

    sub-int/2addr v2, v4

    iget v5, p0, Lbj/u;->o:I

    sub-int/2addr v2, v5

    add-int/lit8 v2, v2, -0x2

    if-eq p1, v2, :cond_3

    aget-byte v2, v1, p1

    if-eqz v2, :cond_2

    invoke-direct {p0, v1}, Lbj/u;->h([B)V

    return v0

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    array-length p1, v1

    sub-int/2addr p1, v4

    sub-int/2addr p1, v5

    add-int/lit8 p1, p1, -0x2

    aget-byte p1, v1, p1

    if-eq p1, v3, :cond_4

    invoke-direct {p0, v1}, Lbj/u;->h([B)V

    return v0

    :cond_4
    iget-boolean p1, p0, Lbj/u;->n:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lbj/u;->q:[B

    iget-object v1, p0, Lbj/u;->r:[B

    array-length v2, v1

    sub-int/2addr v2, v5

    invoke-static {p1, v0, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_5
    array-length p1, v1

    sub-int/2addr p1, v5

    sub-int/2addr p1, v4

    sub-int/2addr p1, v3

    iget-object v2, p0, Lbj/u;->r:[B

    array-length v4, v2

    sub-int/2addr v4, v5

    invoke-static {v1, p1, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    iget-object p1, p0, Lbj/u;->h:LBi/y;

    iget-object v1, p0, Lbj/u;->r:[B

    array-length v2, v1

    invoke-interface {p1, v1, v0, v2}, LBi/y;->update([BII)V

    iget-object p1, p0, Lbj/u;->h:LBi/y;

    iget-object v1, p0, Lbj/u;->r:[B

    array-length v2, v1

    iget v4, p0, Lbj/u;->l:I

    sub-int/2addr v2, v4

    invoke-interface {p1, v1, v2}, LBi/y;->c([BI)I

    iget-object p1, p0, Lbj/u;->s:[B

    array-length p1, p1

    iget v1, p0, Lbj/u;->l:I

    sub-int/2addr p1, v1

    sub-int/2addr p1, v3

    iget-object v2, p0, Lbj/u;->r:[B

    array-length v2, v2

    sub-int/2addr v2, v1

    :goto_3
    iget-object v1, p0, Lbj/u;->r:[B

    array-length v4, v1

    if-eq v2, v4, :cond_7

    iget-object v4, p0, Lbj/u;->s:[B

    aget-byte v4, v4, p1

    aget-byte v5, v1, v2

    xor-int/2addr v4, v5

    if-eqz v4, :cond_6

    invoke-direct {p0, v1}, Lbj/u;->h([B)V

    iget-object p1, p0, Lbj/u;->s:[B

    invoke-direct {p0, p1}, Lbj/u;->h([B)V

    return v0

    :cond_6
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    invoke-direct {p0, v1}, Lbj/u;->h([B)V

    iget-object p1, p0, Lbj/u;->s:[B

    invoke-direct {p0, p1}, Lbj/u;->h([B)V

    return v3

    :cond_8
    :goto_4
    invoke-direct {p0, p1}, Lbj/u;->h([B)V

    :catch_0
    return v0

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public c()[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;,
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    iget-object v0, p0, Lbj/u;->g:LBi/y;

    invoke-interface {v0}, LBi/y;->f()I

    move-result v0

    iget v1, p0, Lbj/u;->l:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lbj/u;->g:LBi/y;

    iget-object v2, p0, Lbj/u;->r:[B

    array-length v3, v2

    sub-int/2addr v3, v1

    iget v1, p0, Lbj/u;->o:I

    sub-int/2addr v3, v1

    invoke-interface {v0, v2, v3}, LBi/y;->c([BI)I

    iget v0, p0, Lbj/u;->o:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lbj/u;->n:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lbj/u;->k:Ljava/security/SecureRandom;

    iget-object v2, p0, Lbj/u;->q:[B

    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    :cond_0
    iget-object v0, p0, Lbj/u;->q:[B

    iget-object v2, p0, Lbj/u;->r:[B

    array-length v3, v2

    iget v4, p0, Lbj/u;->o:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    iget v0, p0, Lbj/u;->l:I

    new-array v2, v0, [B

    iget-object v3, p0, Lbj/u;->h:LBi/y;

    iget-object v4, p0, Lbj/u;->r:[B

    array-length v5, v4

    invoke-interface {v3, v4, v1, v5}, LBi/y;->update([BII)V

    iget-object v3, p0, Lbj/u;->h:LBi/y;

    invoke-interface {v3, v2, v1}, LBi/y;->c([BI)I

    iget-object v3, p0, Lbj/u;->s:[B

    array-length v4, v3

    iget v5, p0, Lbj/u;->o:I

    sub-int/2addr v4, v5

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    iget v7, p0, Lbj/u;->l:I

    sub-int/2addr v4, v7

    sub-int/2addr v4, v6

    aput-byte v6, v3, v4

    iget-object v4, p0, Lbj/u;->q:[B

    array-length v8, v3

    sub-int/2addr v8, v5

    sub-int/2addr v8, v7

    sub-int/2addr v8, v6

    invoke-static {v4, v1, v3, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lbj/u;->s:[B

    array-length v3, v3

    iget v4, p0, Lbj/u;->l:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v6

    invoke-virtual {p0, v2, v1, v0, v3}, Lbj/u;->l([BIII)[B

    move-result-object v0

    move v3, v1

    :goto_0
    array-length v4, v0

    if-eq v3, v4, :cond_2

    iget-object v4, p0, Lbj/u;->s:[B

    aget-byte v5, v4, v3

    aget-byte v7, v0, v3

    xor-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lbj/u;->s:[B

    array-length v3, v0

    iget v4, p0, Lbj/u;->l:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v6

    invoke-static {v2, v1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lbj/u;->s:[B

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x8

    iget v3, p0, Lbj/u;->p:I

    sub-int/2addr v2, v3

    const/16 v3, 0xff

    ushr-int v2, v3, v2

    aget-byte v3, v0, v1

    and-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    array-length v2, v0

    sub-int/2addr v2, v6

    iget-byte v3, p0, Lbj/u;->t:B

    aput-byte v3, v0, v2

    iget-object v2, p0, Lbj/u;->j:LBi/b;

    array-length v3, v0

    invoke-interface {v2, v0, v1, v3}, LBi/b;->b([BII)[B

    move-result-object v0

    iget-object v1, p0, Lbj/u;->s:[B

    invoke-direct {p0, v1}, Lbj/u;->h([B)V

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final l([BIII)[B
    .locals 2

    iget-object v0, p0, Lbj/u;->i:LBi/y;

    instance-of v1, v0, LBi/a0;

    if-eqz v1, :cond_0

    new-array v1, p4, [B

    invoke-interface {v0, p1, p2, p3}, LBi/y;->update([BII)V

    iget-object p1, p0, Lbj/u;->i:LBi/y;

    check-cast p1, LBi/a0;

    const/4 p2, 0x0

    invoke-interface {p1, v1, p2, p4}, LBi/a0;->e([BII)I

    return-object v1

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lbj/u;->m([BIII)[B

    move-result-object p1

    return-object p1
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lbj/u;->g:LBi/y;

    invoke-interface {v0}, LBi/y;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lbj/u;->g:LBi/y;

    invoke-interface {v0, p1}, LBi/y;->update(B)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    .line 2
    iget-object v0, p0, Lbj/u;->g:LBi/y;

    invoke-interface {v0, p1, p2, p3}, LBi/y;->update([BII)V

    return-void
.end method
