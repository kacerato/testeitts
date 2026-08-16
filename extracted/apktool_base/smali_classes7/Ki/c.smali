.class public LKi/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/b;


# static fields
.field public static final i:Ljava/lang/String; = "org.bouncycastle.pkcs1.strict"

.field public static final j:Ljava/lang/String; = "org.bouncycastle.pkcs1.not_strict"

.field public static final k:I = 0xa


# instance fields
.field public a:Ljava/security/SecureRandom;

.field public b:LBi/b;

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:I

.field public g:[B

.field public h:[B


# direct methods
.method public constructor <init>(LBi/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, LKi/c;->f:I

    const/4 v0, 0x0

    iput-object v0, p0, LKi/c;->g:[B

    iput-object p1, p0, LKi/c;->b:LBi/b;

    invoke-virtual {p0}, LKi/c;->l()Z

    move-result p1

    iput-boolean p1, p0, LKi/c;->e:Z

    return-void
.end method

.method public constructor <init>(LBi/b;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, LKi/c;->f:I

    const/4 v0, 0x0

    iput-object v0, p0, LKi/c;->g:[B

    iput-object p1, p0, LKi/c;->b:LBi/b;

    invoke-virtual {p0}, LKi/c;->l()Z

    move-result p1

    iput-boolean p1, p0, LKi/c;->e:Z

    iput p2, p0, LKi/c;->f:I

    return-void
.end method

.method public constructor <init>(LBi/b;[B)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, LKi/c;->f:I

    const/4 v0, 0x0

    iput-object v0, p0, LKi/c;->g:[B

    iput-object p1, p0, LKi/c;->b:LBi/b;

    invoke-virtual {p0}, LKi/c;->l()Z

    move-result p1

    iput-boolean p1, p0, LKi/c;->e:Z

    iput-object p2, p0, LKi/c;->g:[B

    array-length p1, p2

    iput p1, p0, LKi/c;->f:I

    return-void
.end method

.method public static e([B)I
    .locals 8

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    neg-int v1, v1

    move v3, v1

    move v4, v2

    move v1, v0

    :goto_0
    array-length v5, p0

    if-ge v4, v5, :cond_0

    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v5, -0x1

    shr-int/lit8 v6, v6, 0x1f

    xor-int/lit16 v5, v5, 0xff

    sub-int/2addr v5, v2

    shr-int/lit8 v5, v5, 0x1f

    not-int v7, v1

    and-int/2addr v7, v4

    and-int/2addr v7, v6

    xor-int/2addr v0, v7

    or-int/2addr v1, v6

    or-int/2addr v5, v1

    not-int v5, v5

    or-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, -0x9

    or-int/2addr v1, v3

    array-length p0, p0

    sub-int/2addr p0, v2

    sub-int/2addr p0, v0

    shr-int/lit8 v0, v1, 0x1f

    or-int/2addr p0, v0

    return p0
.end method

.method public static f([B)I
    .locals 7

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    xor-int/lit8 v1, v1, 0x2

    neg-int v1, v1

    const/4 v2, 0x1

    move v3, v0

    move v4, v2

    :goto_0
    array-length v5, p0

    if-ge v4, v5, :cond_0

    aget-byte v5, p0, v4

    and-int/lit16 v5, v5, 0xff

    sub-int/2addr v5, v2

    shr-int/lit8 v5, v5, 0x1f

    not-int v6, v3

    and-int/2addr v6, v4

    and-int/2addr v6, v5

    xor-int/2addr v0, v6

    or-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v0, -0x9

    or-int/2addr v1, v3

    array-length p0, p0

    sub-int/2addr p0, v2

    sub-int/2addr p0, v0

    shr-int/lit8 v0, v1, 0x1f

    or-int/2addr p0, v0

    return p0
.end method

.method public static g([BI)I
    .locals 4

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    xor-int/lit8 v0, v0, 0x2

    neg-int v0, v0

    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v1, p1

    add-int/lit8 p1, v1, -0x9

    or-int/2addr p1, v0

    move v0, v2

    :goto_0
    if-ge v0, v1, :cond_0

    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    sub-int/2addr v3, v2

    or-int/2addr p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    neg-int p0, p0

    or-int/2addr p0, p1

    shr-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method private h([BII)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-boolean v0, p0, LKi/c;->d:Z

    if-eqz v0, :cond_0

    iget v0, p0, LKi/c;->f:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p1, p2, p3}, LKi/c;->i([BII)[B

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, LKi/c;->b:LBi/b;

    invoke-interface {v0}, LBi/b;->c()I

    move-result v0

    iget-object v1, p0, LKi/c;->b:LBi/b;

    invoke-interface {v1, p1, p2, p3}, LBi/b;->b([BII)[B

    move-result-object p1

    iget-boolean p2, p0, LKi/c;->e:Z

    array-length p3, p1

    const/4 v1, 0x0

    if-eq p3, v0, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    move p3, v1

    :goto_0
    and-int/2addr p2, p3

    array-length p3, p1

    if-ge p3, v0, :cond_2

    iget-object p3, p0, LKi/c;->h:[B

    goto :goto_1

    :cond_2
    move-object p3, p1

    :goto_1
    iget-boolean v0, p0, LKi/c;->d:Z

    if-eqz v0, :cond_3

    invoke-static {p3}, LKi/c;->f([B)I

    move-result v0

    goto :goto_2

    :cond_3
    invoke-static {p3}, LKi/c;->e([B)I

    move-result v0

    :goto_2
    if-ltz v0, :cond_5

    if-nez p2, :cond_4

    :try_start_0
    new-array p2, v0, [B

    array-length v2, p3

    sub-int/2addr v2, v0

    invoke-static {p3, v2, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1, v1}, Lorg/bouncycastle/util/a;->e0([BB)V

    iget-object p3, p0, LKi/c;->h:[B

    array-length v0, p3

    array-length p1, p1

    sub-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p3, v1, p1, v1}, Lorg/bouncycastle/util/a;->f0([BIIB)V

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_3

    :cond_4
    :try_start_1
    new-instance p2, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string p3, "block incorrect size"

    invoke-direct {p2, p3}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    new-instance p2, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string p3, "block incorrect"

    invoke-direct {p2, p3}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    invoke-static {p1, v1}, Lorg/bouncycastle/util/a;->e0([BB)V

    iget-object p3, p0, LKi/c;->h:[B

    array-length v0, p3

    array-length p1, p1

    sub-int/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p3, v1, p1, v1}, Lorg/bouncycastle/util/a;->f0([BIIB)V

    throw p2
.end method

.method private j([BII)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    invoke-virtual {p0}, LKi/c;->d()I

    move-result v0

    if-gt p3, v0, :cond_3

    iget-object v0, p0, LKi/c;->b:LBi/b;

    invoke-interface {v0}, LBi/b;->d()I

    move-result v0

    new-array v1, v0, [B

    iget-boolean v2, p0, LKi/c;->d:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    aput-byte v4, v1, v3

    move v2, v4

    :goto_0
    sub-int v5, v0, p3

    sub-int/2addr v5, v4

    if-eq v2, v5, :cond_2

    const/4 v5, -0x1

    aput-byte v5, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, LKi/c;->a:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v2, 0x2

    aput-byte v2, v1, v3

    move v2, v4

    :goto_1
    sub-int v5, v0, p3

    sub-int/2addr v5, v4

    if-eq v2, v5, :cond_2

    :goto_2
    aget-byte v5, v1, v2

    if-nez v5, :cond_1

    iget-object v5, p0, LKi/c;->a:Ljava/security/SecureRandom;

    invoke-virtual {v5}, Ljava/util/Random;->nextInt()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v1, v2

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    sub-int v2, v0, p3

    add-int/lit8 v4, v2, -0x1

    aput-byte v3, v1, v4

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, LKi/c;->b:LBi/b;

    invoke-interface {p1, v1, v3, v0}, LBi/b;->b([BII)[B

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "input data too large"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(ZLBi/k;)V
    .locals 2

    instance-of v0, p2, LXi/x0;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LXi/x0;

    invoke-virtual {v0}, LXi/x0;->b()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, LKi/c;->a:Ljava/security/SecureRandom;

    invoke-virtual {v0}, LXi/x0;->a()LBi/k;

    move-result-object v0

    check-cast v0, LXi/c;

    goto :goto_0

    :cond_0
    move-object v0, p2

    check-cast v0, LXi/c;

    invoke-virtual {v0}, LXi/c;->c()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, LKi/c;->a:Ljava/security/SecureRandom;

    :cond_1
    :goto_0
    iget-object v1, p0, LKi/c;->b:LBi/b;

    invoke-interface {v1, p1, p2}, LBi/b;->a(ZLBi/k;)V

    invoke-virtual {v0}, LXi/c;->c()Z

    move-result p2

    iput-boolean p2, p0, LKi/c;->d:Z

    iput-boolean p1, p0, LKi/c;->c:Z

    iget-object p1, p0, LKi/c;->b:LBi/b;

    invoke-interface {p1}, LBi/b;->c()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, LKi/c;->h:[B

    iget p1, p0, LKi/c;->f:I

    if-lez p1, :cond_3

    iget-object p1, p0, LKi/c;->g:[B

    if-nez p1, :cond_3

    iget-object p1, p0, LKi/c;->a:Ljava/security/SecureRandom;

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "encoder requires random"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public b([BII)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-boolean v0, p0, LKi/c;->c:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, LKi/c;->j([BII)[B

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, LKi/c;->h([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public c()I
    .locals 2

    iget-object v0, p0, LKi/c;->b:LBi/b;

    invoke-interface {v0}, LBi/b;->c()I

    move-result v0

    iget-boolean v1, p0, LKi/c;->c:Z

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0xa

    return v0
.end method

.method public d()I
    .locals 2

    iget-object v0, p0, LKi/c;->b:LBi/b;

    invoke-interface {v0}, LBi/b;->d()I

    move-result v0

    iget-boolean v1, p0, LKi/c;->c:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0xa

    :cond_0
    return v0
.end method

.method public final i([BII)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-boolean v0, p0, LKi/c;->d:Z

    if-eqz v0, :cond_4

    iget v0, p0, LKi/c;->f:I

    iget-object v1, p0, LKi/c;->g:[B

    if-nez v1, :cond_0

    new-array v1, v0, [B

    iget-object v2, p0, LKi/c;->a:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    :cond_0
    iget-object v2, p0, LKi/c;->b:LBi/b;

    invoke-interface {v2}, LBi/b;->c()I

    move-result v2

    iget-object v3, p0, LKi/c;->b:LBi/b;

    invoke-interface {v3, p1, p2, p3}, LBi/b;->b([BII)[B

    move-result-object p1

    array-length p2, p1

    if-eq p2, v2, :cond_2

    iget-boolean p2, p0, LKi/c;->e:Z

    if-nez p2, :cond_1

    array-length p2, p1

    if-ge p2, v2, :cond_2

    :cond_1
    iget-object p2, p0, LKi/c;->h:[B

    goto :goto_0

    :cond_2
    move-object p2, p1

    :goto_0
    invoke-static {p2, v0}, LKi/c;->g([BI)I

    move-result p3

    array-length v2, p2

    sub-int/2addr v2, v0

    new-array v3, v0, [B

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v0, :cond_3

    add-int v6, v2, v5

    aget-byte v6, p2, v6

    not-int v7, p3

    and-int/2addr v6, v7

    aget-byte v7, v1, v5

    and-int/2addr v7, p3

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    invoke-static {p1, v4}, Lorg/bouncycastle/util/a;->e0([BB)V

    iget-object p2, p0, LKi/c;->h:[B

    array-length p3, p2

    array-length p1, p1

    sub-int/2addr p3, p1

    invoke-static {v4, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p2, v4, p1, v4}, Lorg/bouncycastle/util/a;->f0([BIIB)V

    return-object v3

    :cond_4
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string p2, "sorry, this method is only for decryption, not for signing"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k()LBi/b;
    .locals 1

    iget-object v0, p0, LKi/c;->b:LBi/b;

    return-object v0
.end method

.method public final l()Z
    .locals 3

    const-string v0, "org.bouncycastle.pkcs1.not_strict"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/q;->g(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const-string v0, "org.bouncycastle.pkcs1.strict"

    invoke-static {v0, v2}, Lorg/bouncycastle/util/q;->g(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0
.end method
