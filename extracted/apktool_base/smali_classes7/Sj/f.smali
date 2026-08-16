.class public LSj/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/b;


# static fields
.field public static final g:I = 0xa


# instance fields
.field public a:Ljava/security/SecureRandom;

.field public b:LBi/b;

.field public c:Z

.field public d:Z

.field public e:Z

.field public f:[B


# direct methods
.method public constructor <init>(LBi/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LSj/f;->b:LBi/b;

    invoke-direct {p0}, LSj/f;->j()Z

    move-result p1

    iput-boolean p1, p0, LSj/f;->e:Z

    return-void
.end method

.method private static e([B)I
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

.method private static f([B)I
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

.method private g([BII)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-object v0, p0, LSj/f;->b:LBi/b;

    invoke-interface {v0}, LBi/b;->c()I

    move-result v0

    iget-object v1, p0, LSj/f;->b:LBi/b;

    invoke-interface {v1, p1, p2, p3}, LBi/b;->b([BII)[B

    move-result-object p1

    iget-boolean p2, p0, LSj/f;->e:Z

    array-length p3, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p3, v0, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    move p3, v2

    :goto_0
    and-int/2addr p2, p3

    array-length p3, p1

    if-ge p3, v0, :cond_1

    iget-object p3, p0, LSj/f;->f:[B

    goto :goto_1

    :cond_1
    move-object p3, p1

    :goto_1
    iget-boolean v0, p0, LSj/f;->d:Z

    if-eqz v0, :cond_2

    invoke-static {p3}, LSj/f;->f([B)I

    move-result v0

    goto :goto_2

    :cond_2
    invoke-static {p3}, LSj/f;->e([B)I

    move-result v0

    :goto_2
    if-gez v0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    or-int/2addr p2, v1

    if-eqz p2, :cond_4

    invoke-static {p1, v2}, Lorg/bouncycastle/util/a;->e0([BB)V

    iget-object p2, p0, LSj/f;->f:[B

    array-length p3, p2

    array-length p1, p1

    sub-int/2addr p3, p1

    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p2, v2, p1, v2}, Lorg/bouncycastle/util/a;->f0([BIIB)V

    const/4 p1, 0x0

    return-object p1

    :cond_4
    :try_start_0
    new-array p2, v0, [B

    array-length v1, p3

    sub-int/2addr v1, v0

    invoke-static {p3, v1, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1, v2}, Lorg/bouncycastle/util/a;->e0([BB)V

    iget-object p3, p0, LSj/f;->f:[B

    array-length v0, p3

    array-length p1, p1

    sub-int/2addr v0, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p3, v2, p1, v2}, Lorg/bouncycastle/util/a;->f0([BIIB)V

    return-object p2

    :catchall_0
    move-exception p2

    invoke-static {p1, v2}, Lorg/bouncycastle/util/a;->e0([BB)V

    iget-object p3, p0, LSj/f;->f:[B

    array-length v0, p3

    array-length p1, p1

    sub-int/2addr v0, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p3, v2, p1, v2}, Lorg/bouncycastle/util/a;->f0([BIIB)V

    throw p2
.end method

.method private h([BII)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    invoke-virtual {p0}, LSj/f;->d()I

    move-result v0

    if-gt p3, v0, :cond_3

    iget-object v0, p0, LSj/f;->b:LBi/b;

    invoke-interface {v0}, LBi/b;->d()I

    move-result v0

    new-array v1, v0, [B

    iget-boolean v2, p0, LSj/f;->d:Z

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
    iget-object v2, p0, LSj/f;->a:Ljava/security/SecureRandom;

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

    iget-object v5, p0, LSj/f;->a:Ljava/security/SecureRandom;

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

    iget-object p1, p0, LSj/f;->b:LBi/b;

    invoke-interface {p1, v1, v3, v0}, LBi/b;->b([BII)[B

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "input data too large"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private j()Z
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


# virtual methods
.method public a(ZLBi/k;)V
    .locals 2

    instance-of v0, p2, LXi/x0;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, LXi/x0;

    invoke-virtual {v0}, LXi/x0;->b()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, LSj/f;->a:Ljava/security/SecureRandom;

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

    iput-object v1, p0, LSj/f;->a:Ljava/security/SecureRandom;

    :cond_1
    :goto_0
    iget-object v1, p0, LSj/f;->b:LBi/b;

    invoke-interface {v1, p1, p2}, LBi/b;->a(ZLBi/k;)V

    invoke-virtual {v0}, LXi/c;->c()Z

    move-result p2

    iput-boolean p2, p0, LSj/f;->d:Z

    iput-boolean p1, p0, LSj/f;->c:Z

    iget-object p1, p0, LSj/f;->b:LBi/b;

    invoke-interface {p1}, LBi/b;->c()I

    move-result p1

    new-array p1, p1, [B

    iput-object p1, p0, LSj/f;->f:[B

    return-void
.end method

.method public b([BII)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-boolean v0, p0, LSj/f;->c:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, LSj/f;->h([BII)[B

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0, p1, p2, p3}, LSj/f;->g([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public c()I
    .locals 2

    iget-object v0, p0, LSj/f;->b:LBi/b;

    invoke-interface {v0}, LBi/b;->c()I

    move-result v0

    iget-boolean v1, p0, LSj/f;->c:Z

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0xa

    return v0
.end method

.method public d()I
    .locals 2

    iget-object v0, p0, LSj/f;->b:LBi/b;

    invoke-interface {v0}, LBi/b;->d()I

    move-result v0

    iget-boolean v1, p0, LSj/f;->c:Z

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0xa

    :cond_0
    return v0
.end method

.method public i()LBi/b;
    .locals 1

    iget-object v0, p0, LSj/f;->b:LBi/b;

    return-object v0
.end method
