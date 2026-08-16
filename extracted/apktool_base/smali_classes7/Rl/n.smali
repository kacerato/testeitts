.class public LRl/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LYk/f;


# static fields
.field public static final h:Ljava/lang/String; = "1.3.6.1.4.1.8301.3.1.3.4.2.3"

.field public static final i:Ljava/lang/String; = "SHA1PRNG"

.field public static final j:[B


# instance fields
.field public a:LBi/y;

.field public b:Ljava/security/SecureRandom;

.field public c:LRl/d;

.field public d:I

.field public e:I

.field public f:I

.field public g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "a predetermined public constant"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, LRl/n;->j:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private e(LRl/g;)V
    .locals 1

    invoke-virtual {p1}, LRl/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LRl/s;->a(Ljava/lang/String;)LBi/y;

    move-result-object v0

    iput-object v0, p0, LRl/n;->a:LBi/y;

    invoke-virtual {p1}, LRl/g;->i()I

    move-result v0

    iput v0, p0, LRl/n;->d:I

    invoke-virtual {p1}, LRl/g;->h()I

    move-result v0

    iput v0, p0, LRl/n;->e:I

    invoke-virtual {p1}, LRl/g;->l()I

    move-result p1

    iput p1, p0, LRl/n;->f:I

    return-void
.end method

.method private f(LRl/h;)V
    .locals 1

    invoke-virtual {p1}, LRl/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LRl/s;->a(Ljava/lang/String;)LBi/y;

    move-result-object v0

    iput-object v0, p0, LRl/n;->a:LBi/y;

    invoke-virtual {p1}, LRl/h;->g()I

    move-result v0

    iput v0, p0, LRl/n;->d:I

    invoke-virtual {p1}, LRl/h;->f()I

    move-result v0

    iput v0, p0, LRl/n;->e:I

    invoke-virtual {p1}, LRl/h;->h()I

    move-result p1

    iput p1, p0, LRl/n;->f:I

    return-void
.end method


# virtual methods
.method public a(ZLBi/k;)V
    .locals 0

    iput-boolean p1, p0, LRl/n;->g:Z

    if-eqz p1, :cond_1

    instance-of p1, p2, LXi/x0;

    if-eqz p1, :cond_0

    check-cast p2, LXi/x0;

    invoke-virtual {p2}, LXi/x0;->b()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, LRl/n;->b:Ljava/security/SecureRandom;

    invoke-virtual {p2}, LXi/x0;->a()LBi/k;

    move-result-object p1

    check-cast p1, LRl/h;

    iput-object p1, p0, LRl/n;->c:LRl/d;

    invoke-direct {p0, p1}, LRl/n;->f(LRl/h;)V

    goto :goto_0

    :cond_0
    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, LRl/n;->b:Ljava/security/SecureRandom;

    check-cast p2, LRl/h;

    iput-object p2, p0, LRl/n;->c:LRl/d;

    invoke-direct {p0, p2}, LRl/n;->f(LRl/h;)V

    goto :goto_0

    :cond_1
    check-cast p2, LRl/g;

    iput-object p2, p0, LRl/n;->c:LRl/d;

    invoke-direct {p0, p2}, LRl/n;->e(LRl/g;)V

    :goto_0
    return-void
.end method

.method public b([B)[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-boolean v0, p0, LRl/n;->g:Z

    if-nez v0, :cond_7

    iget v0, p0, LRl/n;->d:I

    shr-int/lit8 v0, v0, 0x3

    array-length v1, p1

    if-lt v1, v0, :cond_6

    iget-object v1, p0, LRl/n;->a:LBi/y;

    invoke-interface {v1}, LBi/y;->f()I

    move-result v1

    iget v2, p0, LRl/n;->e:I

    shr-int/lit8 v2, v2, 0x3

    iget v3, p0, LRl/n;->d:I

    iget v4, p0, LRl/n;->f:I

    invoke-static {v3, v4}, LWl/u;->a(II)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x3

    array-length v5, p1

    sub-int/2addr v5, v0

    const/4 v0, 0x0

    if-lez v5, :cond_0

    invoke-static {p1, v5}, LWl/c;->k([BI)[[B

    move-result-object p1

    aget-object v5, p1, v0

    aget-object p1, p1, v4

    goto :goto_0

    :cond_0
    new-array v5, v0, [B

    :goto_0
    iget v6, p0, LRl/n;->d:I

    invoke-static {v6, p1}, LWl/g;->f(I[B)LWl/g;

    move-result-object p1

    iget-object v6, p0, LRl/n;->c:LRl/d;

    check-cast v6, LRl/g;

    invoke-static {v6, p1}, LRl/f;->a(LRl/g;LWl/g;)[LWl/g;

    move-result-object p1

    aget-object v6, p1, v0

    invoke-virtual {v6}, LWl/g;->b()[B

    move-result-object v6

    aget-object p1, p1, v4

    array-length v7, v6

    if-le v7, v2, :cond_1

    invoke-static {v6, v0, v2}, LWl/c;->m([BII)[B

    move-result-object v6

    :cond_1
    iget v2, p0, LRl/n;->d:I

    iget v7, p0, LRl/n;->f:I

    invoke-static {v2, v7, p1}, LRl/a;->a(IILWl/g;)[B

    move-result-object p1

    array-length v2, p1

    if-ge v2, v3, :cond_2

    new-array v2, v3, [B

    array-length v7, p1

    sub-int/2addr v3, v7

    array-length v7, p1

    invoke-static {p1, v0, v2, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v2

    :cond_2
    invoke-static {v5, p1}, LWl/c;->b([B[B)[B

    move-result-object p1

    invoke-static {p1, v6}, LWl/c;->b([B[B)[B

    move-result-object p1

    array-length v2, p1

    sub-int/2addr v2, v1

    invoke-static {p1, v1}, LWl/c;->k([BI)[[B

    move-result-object p1

    aget-object v3, p1, v0

    aget-object p1, p1, v4

    iget-object v5, p0, LRl/n;->a:LBi/y;

    invoke-interface {v5}, LBi/y;->f()I

    move-result v5

    new-array v5, v5, [B

    iget-object v6, p0, LRl/n;->a:LBi/y;

    array-length v7, p1

    invoke-interface {v6, p1, v0, v7}, LBi/y;->update([BII)V

    iget-object v6, p0, LRl/n;->a:LBi/y;

    invoke-interface {v6, v5, v0}, LBi/y;->c([BI)I

    sub-int/2addr v1, v4

    :goto_1
    if-ltz v1, :cond_3

    aget-byte v6, v5, v1

    aget-byte v7, v3, v1

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    new-instance v1, LZi/c;

    new-instance v3, LIi/J;

    invoke-direct {v3}, LIi/J;-><init>()V

    invoke-direct {v1, v3}, LZi/c;-><init>(LBi/y;)V

    invoke-virtual {v1, v5}, LZi/c;->c([B)V

    new-array v3, v2, [B

    invoke-virtual {v1, v3}, LZi/c;->nextBytes([B)V

    add-int/lit8 v1, v2, -0x1

    :goto_2
    if-ltz v1, :cond_4

    aget-byte v5, v3, v1

    aget-byte v6, p1, v1

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_4
    sget-object p1, LRl/n;->j:[B

    array-length v1, p1

    sub-int/2addr v2, v1

    invoke-static {v3, v2}, LWl/c;->k([BI)[[B

    move-result-object v1

    aget-object v0, v1, v0

    aget-object v1, v1, v4

    invoke-static {v1, p1}, LWl/c;->g([B[B)Z

    move-result p1

    if-eqz p1, :cond_5

    return-object v0

    :cond_5
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v0, "Bad Padding: invalid ciphertext"

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v0, "Bad Padding: Ciphertext too short."

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cipher initialised for decryption"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c([B)[B
    .locals 11

    iget-boolean v0, p0, LRl/n;->g:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, LRl/n;->a:LBi/y;

    invoke-interface {v0}, LBi/y;->f()I

    move-result v0

    iget v1, p0, LRl/n;->e:I

    shr-int/lit8 v1, v1, 0x3

    iget v2, p0, LRl/n;->d:I

    iget v3, p0, LRl/n;->f:I

    invoke-static {v2, v3}, LWl/u;->a(II)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    shr-int/lit8 v2, v2, 0x3

    add-int v3, v1, v2

    sub-int/2addr v3, v0

    sget-object v4, LRl/n;->j:[B

    array-length v5, v4

    sub-int/2addr v3, v5

    array-length v5, p1

    if-le v5, v3, :cond_0

    array-length v3, p1

    :cond_0
    array-length v5, v4

    add-int/2addr v5, v3

    add-int v6, v5, v0

    sub-int/2addr v6, v1

    sub-int/2addr v6, v2

    new-array v7, v5, [B

    array-length v8, p1

    const/4 v9, 0x0

    invoke-static {p1, v9, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, v4

    invoke-static {v4, v9, v7, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array p1, v0, [B

    iget-object v3, p0, LRl/n;->b:Ljava/security/SecureRandom;

    invoke-virtual {v3, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v3, LZi/c;

    new-instance v4, LIi/J;

    invoke-direct {v4}, LIi/J;-><init>()V

    invoke-direct {v3, v4}, LZi/c;-><init>(LBi/y;)V

    invoke-virtual {v3, p1}, LZi/c;->c([B)V

    new-array v4, v5, [B

    invoke-virtual {v3, v4}, LZi/c;->nextBytes([B)V

    add-int/lit8 v3, v5, -0x1

    :goto_0
    if-ltz v3, :cond_1

    aget-byte v8, v4, v3

    aget-byte v10, v7, v3

    xor-int/2addr v8, v10

    int-to-byte v8, v8

    aput-byte v8, v4, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, LRl/n;->a:LBi/y;

    invoke-interface {v3}, LBi/y;->f()I

    move-result v3

    new-array v3, v3, [B

    iget-object v7, p0, LRl/n;->a:LBi/y;

    invoke-interface {v7, v4, v9, v5}, LBi/y;->update([BII)V

    iget-object v5, p0, LRl/n;->a:LBi/y;

    invoke-interface {v5, v3, v9}, LBi/y;->c([BI)I

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    aget-byte v5, v3, v0

    aget-byte v7, p1, v0

    xor-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, v3, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    invoke-static {v3, v4}, LWl/c;->b([B[B)[B

    move-result-object p1

    new-array v0, v9, [B

    if-lez v6, :cond_3

    new-array v0, v6, [B

    invoke-static {p1, v9, v0, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    new-array v3, v2, [B

    invoke-static {p1, v6, v3, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v4, v1, [B

    add-int/2addr v2, v6

    invoke-static {p1, v2, v4, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, LRl/n;->e:I

    invoke-static {p1, v4}, LWl/g;->f(I[B)LWl/g;

    move-result-object p1

    iget v1, p0, LRl/n;->d:I

    iget v2, p0, LRl/n;->f:I

    invoke-static {v1, v2, v3}, LRl/a;->b(II[B)LWl/g;

    move-result-object v1

    iget-object v2, p0, LRl/n;->c:LRl/d;

    check-cast v2, LRl/h;

    invoke-static {v2, p1, v1}, LRl/f;->b(LRl/h;LWl/g;LWl/g;)LWl/g;

    move-result-object p1

    invoke-virtual {p1}, LWl/g;->b()[B

    move-result-object p1

    if-lez v6, :cond_4

    invoke-static {v0, p1}, LWl/c;->b([B[B)[B

    move-result-object p1

    :cond_4
    return-object p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cipher initialised for decryption"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(LRl/d;)I
    .locals 1

    instance-of v0, p1, LRl/h;

    if-eqz v0, :cond_0

    check-cast p1, LRl/h;

    invoke-virtual {p1}, LRl/h;->g()I

    move-result p1

    return p1

    :cond_0
    instance-of v0, p1, LRl/g;

    if-eqz v0, :cond_1

    check-cast p1, LRl/g;

    invoke-virtual {p1}, LRl/g;->i()I

    move-result p1

    return p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "unsupported type"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
