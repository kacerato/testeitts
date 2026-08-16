.class public Lbj/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/S;
.implements Ljk/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbj/y$a;
    }
.end annotation


# instance fields
.field public final g:Lbj/c;

.field public final h:LBi/y;

.field public final i:Lbj/b;

.field public j:I

.field public k:LXi/G;

.field public l:Ljk/i;

.field public m:LXi/J;

.field public n:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lbj/z;->a:Lbj/z;

    new-instance v1, LIi/S;

    invoke-direct {v1}, LIi/S;-><init>()V

    invoke-direct {p0, v0, v1}, Lbj/y;-><init>(Lbj/b;LBi/y;)V

    return-void
.end method

.method public constructor <init>(LBi/y;)V
    .locals 1

    .line 2
    sget-object v0, Lbj/z;->a:Lbj/z;

    invoke-direct {p0, v0, p1}, Lbj/y;-><init>(Lbj/b;LBi/y;)V

    return-void
.end method

.method public constructor <init>(Lbj/b;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbj/x;

    invoke-direct {v0}, Lbj/x;-><init>()V

    iput-object v0, p0, Lbj/y;->g:Lbj/c;

    const/4 v0, 0x0

    iput v0, p0, Lbj/y;->j:I

    iput-object p1, p0, Lbj/y;->i:Lbj/b;

    new-instance p1, LIi/S;

    invoke-direct {p1}, LIi/S;-><init>()V

    iput-object p1, p0, Lbj/y;->h:LBi/y;

    return-void
.end method

.method public constructor <init>(Lbj/b;LBi/y;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbj/x;

    invoke-direct {v0}, Lbj/x;-><init>()V

    iput-object v0, p0, Lbj/y;->g:Lbj/c;

    const/4 v0, 0x0

    iput v0, p0, Lbj/y;->j:I

    iput-object p1, p0, Lbj/y;->i:Lbj/b;

    iput-object p2, p0, Lbj/y;->h:LBi/y;

    return-void
.end method


# virtual methods
.method public a(ZLBi/k;)V
    .locals 4

    instance-of v0, p2, LXi/v0;

    if-eqz v0, :cond_1

    check-cast p2, LXi/v0;

    invoke-virtual {p2}, LXi/v0;->b()LBi/k;

    move-result-object v0

    invoke-virtual {p2}, LXi/v0;->a()[B

    move-result-object p2

    array-length v1, p2

    const/16 v2, 0x2000

    if-ge v1, v2, :cond_0

    move-object v3, v0

    move-object v0, p2

    move-object p2, v3

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "SM2 user ID must be less than 2^13 bits long"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string v0, "31323334353637383132333435363738"

    invoke-static {v0}, Lem/h;->d(Ljava/lang/String;)[B

    move-result-object v0

    :goto_0
    if-eqz p1, :cond_4

    instance-of v1, p2, LXi/x0;

    if-eqz v1, :cond_2

    check-cast p2, LXi/x0;

    invoke-virtual {p2}, LXi/x0;->a()LBi/k;

    move-result-object v1

    check-cast v1, LXi/J;

    iput-object v1, p0, Lbj/y;->m:LXi/J;

    invoke-virtual {v1}, LXi/J;->d()LXi/G;

    move-result-object v1

    iput-object v1, p0, Lbj/y;->k:LXi/G;

    iget-object v2, p0, Lbj/y;->g:Lbj/c;

    invoke-virtual {v1}, LXi/G;->e()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p2}, LXi/x0;->b()Ljava/security/SecureRandom;

    move-result-object p2

    invoke-interface {v2, v1, p2}, Lbj/c;->a(Ljava/math/BigInteger;Ljava/security/SecureRandom;)V

    goto :goto_1

    :cond_2
    check-cast p2, LXi/J;

    iput-object p2, p0, Lbj/y;->m:LXi/J;

    invoke-virtual {p2}, LXi/J;->d()LXi/G;

    move-result-object p2

    iput-object p2, p0, Lbj/y;->k:LXi/G;

    iget-object v1, p0, Lbj/y;->g:Lbj/c;

    invoke-virtual {p2}, LXi/G;->e()Ljava/math/BigInteger;

    move-result-object p2

    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Lbj/c;->a(Ljava/math/BigInteger;Ljava/security/SecureRandom;)V

    :goto_1
    iget-object p2, p0, Lbj/y;->m:LXi/J;

    check-cast p2, LXi/L;

    invoke-virtual {p2}, LXi/L;->e()Ljava/math/BigInteger;

    move-result-object p2

    iget-object v1, p0, Lbj/y;->k:LXi/G;

    invoke-virtual {v1}, LXi/G;->e()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/util/b;->b:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Ljk/d;->b:Ljava/math/BigInteger;

    invoke-virtual {p2, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_3

    invoke-virtual {p2, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_3

    invoke-virtual {p0}, Lbj/y;->k()Ljk/h;

    move-result-object v1

    iget-object v2, p0, Lbj/y;->k:LXi/G;

    invoke-virtual {v2}, LXi/G;->b()Ljk/i;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljk/h;->a(Ljk/i;Ljava/math/BigInteger;)Ljk/i;

    move-result-object p2

    invoke-virtual {p2}, Ljk/i;->B()Ljk/i;

    move-result-object p2

    :goto_2
    iput-object p2, p0, Lbj/y;->l:Ljk/i;

    goto :goto_3

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "SM2 private key out of range"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    check-cast p2, LXi/J;

    iput-object p2, p0, Lbj/y;->m:LXi/J;

    invoke-virtual {p2}, LXi/J;->d()LXi/G;

    move-result-object p2

    iput-object p2, p0, Lbj/y;->k:LXi/G;

    iget-object p2, p0, Lbj/y;->m:LXi/J;

    check-cast p2, LXi/M;

    invoke-virtual {p2}, LXi/M;->e()Ljk/i;

    move-result-object p2

    goto :goto_2

    :goto_3
    const-string p2, "ECNR"

    iget-object v1, p0, Lbj/y;->m:LXi/J;

    invoke-static {p2, v1, p1}, Lbj/A;->c(Ljava/lang/String;LXi/J;Z)LBi/n;

    move-result-object p1

    invoke-static {p1}, LBi/r;->a(LBi/n;)V

    iget-object p1, p0, Lbj/y;->h:LBi/y;

    invoke-interface {p1}, LBi/y;->reset()V

    invoke-virtual {p0, v0}, Lbj/y;->m([B)[B

    move-result-object p1

    iput-object p1, p0, Lbj/y;->n:[B

    const/4 p1, 0x1

    iput p1, p0, Lbj/y;->j:I

    return-void
.end method

.method public b([B)Z
    .locals 3

    invoke-virtual {p0}, Lbj/y;->j()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lbj/y;->i:Lbj/b;

    iget-object v2, p0, Lbj/y;->k:LXi/G;

    invoke-virtual {v2}, LXi/G;->e()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lbj/b;->a(Ljava/math/BigInteger;[B)[Ljava/math/BigInteger;

    move-result-object p1

    aget-object v1, p1, v0

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-virtual {p0, v1, p1}, Lbj/y;->n(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lbj/y;->reset()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lbj/y;->reset()V

    throw p1

    :catch_0
    invoke-virtual {p0}, Lbj/y;->reset()V

    return v0
.end method

.method public c()[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/CryptoException;
        }
    .end annotation

    invoke-virtual {p0}, Lbj/y;->j()V

    invoke-virtual {p0}, Lbj/y;->l()[B

    move-result-object v0

    iget-object v1, p0, Lbj/y;->k:LXi/G;

    invoke-virtual {v1}, LXi/G;->e()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lbj/y;->i(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p0, Lbj/y;->m:LXi/J;

    check-cast v2, LXi/L;

    invoke-virtual {v2}, LXi/L;->e()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lbj/y;->k()Ljk/h;

    move-result-object v3

    :cond_0
    iget-object v4, p0, Lbj/y;->g:Lbj/c;

    invoke-interface {v4}, Lbj/c;->b()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lbj/y;->k:LXi/G;

    invoke-virtual {v5}, LXi/G;->b()Ljk/i;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Ljk/h;->a(Ljk/i;Ljava/math/BigInteger;)Ljk/i;

    move-result-object v5

    invoke-virtual {v5}, Ljk/i;->B()Ljk/i;

    move-result-object v5

    invoke-virtual {v5}, Ljk/i;->f()Ljk/f;

    move-result-object v5

    invoke-virtual {v5}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    sget-object v6, Ljk/d;->a:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v5, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Ljk/d;->b:Ljava/math/BigInteger;

    invoke-virtual {v2, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-static {v1, v7}, Lorg/bouncycastle/util/b;->n(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    :try_start_0
    iget-object v0, p0, Lbj/y;->i:Lbj/b;

    iget-object v1, p0, Lbj/y;->k:LXi/G;

    invoke-virtual {v1}, LXi/G;->e()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {v0, v1, v5, v4}, Lbj/b;->b(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lbj/y;->reset()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Lorg/bouncycastle/crypto/CryptoException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to encode signature: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/crypto/CryptoException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {p0}, Lbj/y;->reset()V

    throw v0
.end method

.method public final g(LBi/y;Ljk/f;)V
    .locals 2

    invoke-virtual {p2}, Ljk/f;->e()[B

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, LBi/y;->update([BII)V

    return-void
.end method

.method public final h(LBi/y;[B)V
    .locals 2

    array-length v0, p2

    mul-int/lit8 v0, v0, 0x8

    ushr-int/lit8 v1, v0, 0x8

    int-to-byte v1, v1

    invoke-interface {p1, v1}, LBi/y;->update(B)V

    int-to-byte v0, v0

    invoke-interface {p1, v0}, LBi/y;->update(B)V

    const/4 v0, 0x0

    array-length v1, p2

    invoke-interface {p1, p2, v0, v1}, LBi/y;->update([BII)V

    return-void
.end method

.method public i(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;
    .locals 1

    new-instance p1, Ljava/math/BigInteger;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p1
.end method

.method public final j()V
    .locals 5

    iget v0, p0, Lbj/y;->j:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SM2Signer needs to be initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lbj/y;->h:LBi/y;

    iget-object v1, p0, Lbj/y;->n:[B

    const/4 v3, 0x0

    array-length v4, v1

    invoke-interface {v0, v1, v3, v4}, LBi/y;->update([BII)V

    iput v2, p0, Lbj/y;->j:I

    return-void
.end method

.method public k()Ljk/h;
    .locals 1

    new-instance v0, Ljk/k;

    invoke-direct {v0}, Ljk/k;-><init>()V

    return-object v0
.end method

.method public final l()[B
    .locals 3

    iget-object v0, p0, Lbj/y;->h:LBi/y;

    invoke-interface {v0}, LBi/y;->f()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lbj/y;->h:LBi/y;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, LBi/y;->c([BI)I

    return-object v0
.end method

.method public final m([B)[B
    .locals 1

    iget-object v0, p0, Lbj/y;->h:LBi/y;

    invoke-virtual {p0, v0, p1}, Lbj/y;->h(LBi/y;[B)V

    iget-object p1, p0, Lbj/y;->h:LBi/y;

    iget-object v0, p0, Lbj/y;->k:LXi/G;

    invoke-virtual {v0}, LXi/G;->a()Ljk/e;

    move-result-object v0

    invoke-virtual {v0}, Ljk/e;->p()Ljk/f;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lbj/y;->g(LBi/y;Ljk/f;)V

    iget-object p1, p0, Lbj/y;->h:LBi/y;

    iget-object v0, p0, Lbj/y;->k:LXi/G;

    invoke-virtual {v0}, LXi/G;->a()Ljk/e;

    move-result-object v0

    invoke-virtual {v0}, Ljk/e;->r()Ljk/f;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lbj/y;->g(LBi/y;Ljk/f;)V

    iget-object p1, p0, Lbj/y;->h:LBi/y;

    iget-object v0, p0, Lbj/y;->k:LXi/G;

    invoke-virtual {v0}, LXi/G;->b()Ljk/i;

    move-result-object v0

    invoke-virtual {v0}, Ljk/i;->f()Ljk/f;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lbj/y;->g(LBi/y;Ljk/f;)V

    iget-object p1, p0, Lbj/y;->h:LBi/y;

    iget-object v0, p0, Lbj/y;->k:LXi/G;

    invoke-virtual {v0}, LXi/G;->b()Ljk/i;

    move-result-object v0

    invoke-virtual {v0}, Ljk/i;->g()Ljk/f;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lbj/y;->g(LBi/y;Ljk/f;)V

    iget-object p1, p0, Lbj/y;->h:LBi/y;

    iget-object v0, p0, Lbj/y;->l:Ljk/i;

    invoke-virtual {v0}, Ljk/i;->f()Ljk/f;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lbj/y;->g(LBi/y;Ljk/f;)V

    iget-object p1, p0, Lbj/y;->h:LBi/y;

    iget-object v0, p0, Lbj/y;->l:Ljk/i;

    invoke-virtual {v0}, Ljk/i;->g()Ljk/f;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lbj/y;->g(LBi/y;Ljk/f;)V

    invoke-virtual {p0}, Lbj/y;->l()[B

    move-result-object p1

    return-object p1
.end method

.method public final n(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 6

    iget-object v0, p0, Lbj/y;->k:LXi/G;

    invoke-virtual {v0}, LXi/G;->e()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljk/d;->b:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    const/4 v3, 0x0

    if-ltz v2, :cond_4

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_4

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lbj/y;->l()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lbj/y;->i(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v4, Ljk/d;->a:Ljava/math/BigInteger;

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v3

    :cond_2
    iget-object v4, p0, Lbj/y;->m:LXi/J;

    check-cast v4, LXi/M;

    invoke-virtual {v4}, LXi/M;->e()Ljk/i;

    move-result-object v4

    iget-object v5, p0, Lbj/y;->k:LXi/G;

    invoke-virtual {v5}, LXi/G;->b()Ljk/i;

    move-result-object v5

    invoke-static {v5, p2, v4, v2}, Ljk/c;->v(Ljk/i;Ljava/math/BigInteger;Ljk/i;Ljava/math/BigInteger;)Ljk/i;

    move-result-object p2

    invoke-virtual {p2}, Ljk/i;->B()Ljk/i;

    move-result-object p2

    invoke-virtual {p2}, Ljk/i;->v()Z

    move-result v2

    if-eqz v2, :cond_3

    return v3

    :cond_3
    invoke-virtual {p2}, Ljk/i;->f()Ljk/f;

    move-result-object p2

    invoke-virtual {p2}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v3
.end method

.method public reset()V
    .locals 3

    iget v0, p0, Lbj/y;->j:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lbj/y;->h:LBi/y;

    invoke-interface {v0}, LBi/y;->reset()V

    iput v1, p0, Lbj/y;->j:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "SM2Signer needs to be initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public update(B)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lbj/y;->j()V

    iget-object v0, p0, Lbj/y;->h:LBi/y;

    invoke-interface {v0, p1}, LBi/y;->update(B)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lbj/y;->j()V

    iget-object v0, p0, Lbj/y;->h:LBi/y;

    invoke-interface {v0, p1, p2, p3}, LBi/y;->update([BII)V

    return-void
.end method
