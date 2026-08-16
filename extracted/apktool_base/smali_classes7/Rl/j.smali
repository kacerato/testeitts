.class public LRl/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LYk/f;


# static fields
.field public static final h:Ljava/lang/String; = "1.3.6.1.4.1.8301.3.1.3.4.2.1"

.field public static final i:Ljava/lang/String; = "SHA1PRNG"


# instance fields
.field public a:LBi/y;

.field public b:Ljava/security/SecureRandom;

.field public c:I

.field public d:I

.field public e:I

.field public f:LRl/d;

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLBi/k;)V
    .locals 0

    iput-boolean p1, p0, LRl/j;->g:Z

    if-eqz p1, :cond_1

    instance-of p1, p2, LXi/x0;

    if-eqz p1, :cond_0

    check-cast p2, LXi/x0;

    invoke-virtual {p2}, LXi/x0;->b()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, LRl/j;->b:Ljava/security/SecureRandom;

    invoke-virtual {p2}, LXi/x0;->a()LBi/k;

    move-result-object p1

    check-cast p1, LRl/h;

    iput-object p1, p0, LRl/j;->f:LRl/d;

    invoke-virtual {p0, p1}, LRl/j;->f(LRl/h;)V

    goto :goto_0

    :cond_0
    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, LRl/j;->b:Ljava/security/SecureRandom;

    check-cast p2, LRl/h;

    iput-object p2, p0, LRl/j;->f:LRl/d;

    invoke-virtual {p0, p2}, LRl/j;->f(LRl/h;)V

    goto :goto_0

    :cond_1
    check-cast p2, LRl/g;

    iput-object p2, p0, LRl/j;->f:LRl/d;

    invoke-virtual {p0, p2}, LRl/j;->e(LRl/g;)V

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

    iget-boolean v0, p0, LRl/j;->g:Z

    if-nez v0, :cond_2

    iget v0, p0, LRl/j;->c:I

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    array-length v1, p1

    sub-int/2addr v1, v0

    invoke-static {p1, v0}, LWl/c;->k([BI)[[B

    move-result-object p1

    const/4 v0, 0x0

    aget-object v2, p1, v0

    const/4 v3, 0x1

    aget-object p1, p1, v3

    iget v4, p0, LRl/j;->c:I

    invoke-static {v4, v2}, LWl/g;->f(I[B)LWl/g;

    move-result-object v2

    iget-object v4, p0, LRl/j;->f:LRl/d;

    check-cast v4, LRl/g;

    invoke-static {v4, v2}, LRl/f;->a(LRl/g;LWl/g;)[LWl/g;

    move-result-object v2

    aget-object v4, v2, v0

    invoke-virtual {v4}, LWl/g;->b()[B

    move-result-object v4

    aget-object v2, v2, v3

    new-instance v3, LZi/c;

    new-instance v5, LIi/J;

    invoke-direct {v5}, LIi/J;-><init>()V

    invoke-direct {v3, v5}, LZi/c;-><init>(LBi/y;)V

    invoke-virtual {v3, v4}, LZi/c;->c([B)V

    new-array v5, v1, [B

    invoke-virtual {v3, v5}, LZi/c;->nextBytes([B)V

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-byte v6, v5, v3

    aget-byte v7, p1, v3

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v4, v5}, LWl/c;->b([B[B)[B

    move-result-object p1

    iget-object v1, p0, LRl/j;->a:LBi/y;

    invoke-interface {v1}, LBi/y;->f()I

    move-result v1

    new-array v1, v1, [B

    iget-object v3, p0, LRl/j;->a:LBi/y;

    array-length v4, p1

    invoke-interface {v3, p1, v0, v4}, LBi/y;->update([BII)V

    iget-object p1, p0, LRl/j;->a:LBi/y;

    invoke-interface {p1, v1, v0}, LBi/y;->c([BI)I

    iget p1, p0, LRl/j;->c:I

    iget v0, p0, LRl/j;->e:I

    invoke-static {p1, v0, v1}, LRl/a;->b(II[B)LWl/g;

    move-result-object p1

    invoke-virtual {p1, v2}, LWl/g;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object v5

    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v0, "Bad Padding: invalid ciphertext"

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cipher initialised for decryption"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c([B)[B
    .locals 6

    iget-boolean v0, p0, LRl/j;->g:Z

    if-eqz v0, :cond_1

    new-instance v0, LWl/g;

    iget v1, p0, LRl/j;->d:I

    iget-object v2, p0, LRl/j;->b:Ljava/security/SecureRandom;

    invoke-direct {v0, v1, v2}, LWl/g;-><init>(ILjava/security/SecureRandom;)V

    invoke-virtual {v0}, LWl/g;->b()[B

    move-result-object v1

    invoke-static {v1, p1}, LWl/c;->b([B[B)[B

    move-result-object v2

    iget-object v3, p0, LRl/j;->a:LBi/y;

    array-length v4, v2

    const/4 v5, 0x0

    invoke-interface {v3, v2, v5, v4}, LBi/y;->update([BII)V

    iget-object v2, p0, LRl/j;->a:LBi/y;

    invoke-interface {v2}, LBi/y;->f()I

    move-result v2

    new-array v2, v2, [B

    iget-object v3, p0, LRl/j;->a:LBi/y;

    invoke-interface {v3, v2, v5}, LBi/y;->c([BI)I

    iget v3, p0, LRl/j;->c:I

    iget v4, p0, LRl/j;->e:I

    invoke-static {v3, v4, v2}, LRl/a;->b(II[B)LWl/g;

    move-result-object v2

    iget-object v3, p0, LRl/j;->f:LRl/d;

    check-cast v3, LRl/h;

    invoke-static {v3, v0, v2}, LRl/f;->b(LRl/h;LWl/g;LWl/g;)LWl/g;

    move-result-object v0

    invoke-virtual {v0}, LWl/g;->b()[B

    move-result-object v0

    new-instance v2, LZi/c;

    new-instance v3, LIi/J;

    invoke-direct {v3}, LIi/J;-><init>()V

    invoke-direct {v2, v3}, LZi/c;-><init>(LBi/y;)V

    invoke-virtual {v2, v1}, LZi/c;->c([B)V

    array-length v1, p1

    new-array v1, v1, [B

    invoke-virtual {v2, v1}, LZi/c;->nextBytes([B)V

    :goto_0
    array-length v2, p1

    if-ge v5, v2, :cond_0

    aget-byte v2, v1, v5

    aget-byte v3, p1, v5

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, LWl/c;->b([B[B)[B

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cipher initialised for decryption"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(LRl/d;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

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

.method public final e(LRl/g;)V
    .locals 1

    invoke-virtual {p1}, LRl/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LRl/s;->a(Ljava/lang/String;)LBi/y;

    move-result-object v0

    iput-object v0, p0, LRl/j;->a:LBi/y;

    invoke-virtual {p1}, LRl/g;->i()I

    move-result v0

    iput v0, p0, LRl/j;->c:I

    invoke-virtual {p1}, LRl/g;->l()I

    move-result p1

    iput p1, p0, LRl/j;->e:I

    return-void
.end method

.method public final f(LRl/h;)V
    .locals 1

    invoke-virtual {p1}, LRl/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LRl/s;->a(Ljava/lang/String;)LBi/y;

    move-result-object v0

    iput-object v0, p0, LRl/j;->a:LBi/y;

    invoke-virtual {p1}, LRl/h;->g()I

    move-result v0

    iput v0, p0, LRl/j;->c:I

    invoke-virtual {p1}, LRl/h;->f()I

    move-result v0

    iput v0, p0, LRl/j;->d:I

    invoke-virtual {p1}, LRl/h;->h()I

    move-result p1

    iput p1, p0, LRl/j;->e:I

    return-void
.end method
