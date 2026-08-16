.class public LLi/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLi/l0$b;
    }
.end annotation


# instance fields
.field public final a:LBi/y;

.field public final b:LLi/l0$b;

.field public c:Z

.field public d:LXi/J;

.field public e:LXi/G;

.field public f:I

.field public g:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, LIi/S;

    invoke-direct {v0}, LIi/S;-><init>()V

    invoke-direct {p0, v0}, LLi/l0;-><init>(LBi/y;)V

    return-void
.end method

.method public constructor <init>(LBi/y;)V
    .locals 1

    .line 2
    sget-object v0, LLi/l0$b;->C1C2C3:LLi/l0$b;

    invoke-direct {p0, p1, v0}, LLi/l0;-><init>(LBi/y;LLi/l0$b;)V

    return-void
.end method

.method public constructor <init>(LBi/y;LLi/l0$b;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    iput-object p1, p0, LLi/l0;->a:LBi/y;

    iput-object p2, p0, LLi/l0;->b:LLi/l0$b;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "mode cannot be NULL"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(LLi/l0$b;)V
    .locals 1

    .line 4
    new-instance v0, LIi/S;

    invoke-direct {v0}, LIi/S;-><init>()V

    invoke-direct {p0, v0, p1}, LLi/l0;-><init>(LBi/y;LLi/l0$b;)V

    return-void
.end method


# virtual methods
.method public final a(LBi/y;Ljk/f;)V
    .locals 2

    iget v0, p0, LLi/l0;->f:I

    invoke-virtual {p2}, Ljk/f;->v()Ljava/math/BigInteger;

    move-result-object p2

    invoke-static {v0, p2}, Lorg/bouncycastle/util/b;->b(ILjava/math/BigInteger;)[B

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, LBi/y;->update([BII)V

    return-void
.end method

.method public b()Ljk/h;
    .locals 1

    new-instance v0, Ljk/k;

    invoke-direct {v0}, Ljk/k;-><init>()V

    return-object v0
.end method

.method public final c([BII)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget v0, p0, LLi/l0;->f:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, LLi/l0;->e:LXi/G;

    invoke-virtual {v3}, LXi/G;->a()Ljk/e;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljk/e;->l([B)Ljk/i;

    move-result-object v3

    iget-object v4, p0, LLi/l0;->e:LXi/G;

    invoke-virtual {v4}, LXi/G;->c()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljk/i;->z(Ljava/math/BigInteger;)Ljk/i;

    move-result-object v4

    invoke-virtual {v4}, Ljk/i;->v()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, LLi/l0;->d:LXi/J;

    check-cast v4, LXi/L;

    invoke-virtual {v4}, LXi/L;->e()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljk/i;->z(Ljava/math/BigInteger;)Ljk/i;

    move-result-object v3

    invoke-virtual {v3}, Ljk/i;->B()Ljk/i;

    move-result-object v3

    iget-object v4, p0, LLi/l0;->a:LBi/y;

    invoke-interface {v4}, LBi/y;->f()I

    move-result v4

    sub-int/2addr p3, v0

    sub-int/2addr p3, v4

    new-array v5, p3, [B

    iget-object v6, p0, LLi/l0;->b:LLi/l0$b;

    sget-object v7, LLi/l0$b;->C1C3C2:LLi/l0$b;

    if-ne v6, v7, :cond_0

    add-int v6, p2, v0

    add-int/2addr v6, v4

    invoke-static {p1, v6, v5, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    add-int v4, p2, v0

    invoke-static {p1, v4, v5, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget-object v4, p0, LLi/l0;->a:LBi/y;

    invoke-virtual {p0, v4, v3, v5}, LLi/l0;->g(LBi/y;Ljk/i;[B)V

    iget-object v4, p0, LLi/l0;->a:LBi/y;

    invoke-interface {v4}, LBi/y;->f()I

    move-result v4

    new-array v6, v4, [B

    iget-object v8, p0, LLi/l0;->a:LBi/y;

    invoke-virtual {v3}, Ljk/i;->f()Ljk/f;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, LLi/l0;->a(LBi/y;Ljk/f;)V

    iget-object v8, p0, LLi/l0;->a:LBi/y;

    invoke-interface {v8, v5, v2, p3}, LBi/y;->update([BII)V

    iget-object v8, p0, LLi/l0;->a:LBi/y;

    invoke-virtual {v3}, Ljk/i;->g()Ljk/f;

    move-result-object v3

    invoke-virtual {p0, v8, v3}, LLi/l0;->a(LBi/y;Ljk/f;)V

    iget-object v3, p0, LLi/l0;->a:LBi/y;

    invoke-interface {v3, v6, v2}, LBi/y;->c([BI)I

    iget-object v3, p0, LLi/l0;->b:LLi/l0$b;

    if-ne v3, v7, :cond_1

    move p3, v2

    move v3, p3

    :goto_1
    if-eq p3, v4, :cond_2

    aget-byte v7, v6, p3

    add-int v8, p2, v0

    add-int/2addr v8, p3

    aget-byte v8, p1, v8

    xor-int/2addr v7, v8

    or-int/2addr v3, v7

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    move v3, v2

    move v7, v3

    :goto_2
    if-eq v7, v4, :cond_2

    aget-byte v8, v6, v7

    add-int v9, p2, v0

    add-int/2addr v9, p3

    add-int/2addr v9, v7

    aget-byte v9, p1, v9

    xor-int/2addr v8, v9

    or-int/2addr v3, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_2
    invoke-static {v1, v2}, Lorg/bouncycastle/util/a;->e0([BB)V

    invoke-static {v6, v2}, Lorg/bouncycastle/util/a;->e0([BB)V

    if-nez v3, :cond_3

    return-object v5

    :cond_3
    invoke-static {v5, v2}, Lorg/bouncycastle/util/a;->e0([BB)V

    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string p2, "invalid cipher text"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string p2, "[h]C1 at infinity"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d([BII)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    new-array v0, p3, [B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, LLi/l0;->b()Ljk/h;

    move-result-object v2

    :cond_0
    invoke-virtual {p0}, LLi/l0;->h()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, LLi/l0;->e:LXi/G;

    invoke-virtual {v4}, LXi/G;->b()Ljk/i;

    move-result-object v4

    invoke-interface {v2, v4, v3}, Ljk/h;->a(Ljk/i;Ljava/math/BigInteger;)Ljk/i;

    move-result-object v4

    invoke-virtual {v4}, Ljk/i;->B()Ljk/i;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljk/i;->l(Z)[B

    move-result-object v4

    iget-object v5, p0, LLi/l0;->d:LXi/J;

    check-cast v5, LXi/M;

    invoke-virtual {v5}, LXi/M;->e()Ljk/i;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljk/i;->z(Ljava/math/BigInteger;)Ljk/i;

    move-result-object v3

    invoke-virtual {v3}, Ljk/i;->B()Ljk/i;

    move-result-object v3

    iget-object v5, p0, LLi/l0;->a:LBi/y;

    invoke-virtual {p0, v5, v3, v0}, LLi/l0;->g(LBi/y;Ljk/i;[B)V

    invoke-virtual {p0, v0, p1, p2}, LLi/l0;->i([B[BI)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v2, p0, LLi/l0;->a:LBi/y;

    invoke-interface {v2}, LBi/y;->f()I

    move-result v2

    new-array v2, v2, [B

    iget-object v5, p0, LLi/l0;->a:LBi/y;

    invoke-virtual {v3}, Ljk/i;->f()Ljk/f;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, LLi/l0;->a(LBi/y;Ljk/f;)V

    iget-object v5, p0, LLi/l0;->a:LBi/y;

    invoke-interface {v5, p1, p2, p3}, LBi/y;->update([BII)V

    iget-object p1, p0, LLi/l0;->a:LBi/y;

    invoke-virtual {v3}, Ljk/i;->g()Ljk/f;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, LLi/l0;->a(LBi/y;Ljk/f;)V

    iget-object p1, p0, LLi/l0;->a:LBi/y;

    invoke-interface {p1, v2, v1}, LBi/y;->c([BI)I

    sget-object p1, LLi/l0$a;->a:[I

    iget-object p2, p0, LLi/l0;->b:LLi/l0$b;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    invoke-static {v4, v0, v2}, Lorg/bouncycastle/util/a;->C([B[B[B)[B

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {v4, v2, v0}, Lorg/bouncycastle/util/a;->C([B[B[B)[B

    move-result-object p1

    return-object p1
.end method

.method public e(I)I
    .locals 1

    iget v0, p0, LLi/l0;->f:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    iget-object p1, p0, LLi/l0;->a:LBi/y;

    invoke-interface {p1}, LBi/y;->f()I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public f(ZLBi/k;)V
    .locals 3

    iput-boolean p1, p0, LLi/l0;->c:Z

    if-eqz p1, :cond_1

    check-cast p2, LXi/x0;

    invoke-virtual {p2}, LXi/x0;->a()LBi/k;

    move-result-object v0

    check-cast v0, LXi/J;

    iput-object v0, p0, LLi/l0;->d:LXi/J;

    invoke-virtual {v0}, LXi/J;->d()LXi/G;

    move-result-object v0

    iput-object v0, p0, LLi/l0;->e:LXi/G;

    iget-object v0, p0, LLi/l0;->d:LXi/J;

    check-cast v0, LXi/M;

    invoke-virtual {v0}, LXi/M;->e()Ljk/i;

    move-result-object v0

    iget-object v1, p0, LLi/l0;->e:LXi/G;

    invoke-virtual {v1}, LXi/G;->c()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljk/i;->z(Ljava/math/BigInteger;)Ljk/i;

    move-result-object v0

    invoke-virtual {v0}, Ljk/i;->v()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, LXi/x0;->b()Ljava/security/SecureRandom;

    move-result-object p2

    iput-object p2, p0, LLi/l0;->g:Ljava/security/SecureRandom;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid key: [h]Q at infinity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p2, LXi/J;

    iput-object p2, p0, LLi/l0;->d:LXi/J;

    invoke-virtual {p2}, LXi/J;->d()LXi/G;

    move-result-object p2

    iput-object p2, p0, LLi/l0;->e:LXi/G;

    :goto_0
    iget-object p2, p0, LLi/l0;->e:LXi/G;

    invoke-virtual {p2}, LXi/G;->a()Ljk/e;

    move-result-object p2

    invoke-virtual {p2}, Ljk/e;->w()I

    move-result p2

    add-int/lit8 p2, p2, 0x7

    div-int/lit8 p2, p2, 0x8

    iput p2, p0, LLi/l0;->f:I

    new-instance p2, LHi/c;

    iget-object v0, p0, LLi/l0;->e:LXi/G;

    invoke-virtual {v0}, LXi/G;->a()Ljk/e;

    move-result-object v0

    invoke-static {v0}, LHi/b;->b(Ljk/e;)I

    move-result v0

    iget-object v1, p0, LLi/l0;->d:LXi/J;

    invoke-static {p1}, LLi/x0;->a(Z)LBi/o;

    move-result-object p1

    const-string v2, "SM2"

    invoke-direct {p2, v2, v0, v1, p1}, LHi/c;-><init>(Ljava/lang/String;ILjava/lang/Object;LBi/o;)V

    invoke-static {p2}, LBi/r;->a(LBi/n;)V

    return-void
.end method

.method public final g(LBi/y;Ljk/i;[B)V
    .locals 9

    invoke-interface {p1}, LBi/y;->f()I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v2, v2, [B

    instance-of v3, p1, Lorg/bouncycastle/util/n;

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Ljk/i;->f()Ljk/f;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, LLi/l0;->a(LBi/y;Ljk/f;)V

    invoke-virtual {p2}, Ljk/i;->g()Ljk/f;

    move-result-object v3

    invoke-virtual {p0, p1, v3}, LLi/l0;->a(LBi/y;Ljk/f;)V

    move-object v3, p1

    check-cast v3, Lorg/bouncycastle/util/n;

    invoke-interface {v3}, Lorg/bouncycastle/util/n;->copy()Lorg/bouncycastle/util/n;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    move-object v4, v3

    :goto_0
    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :goto_1
    array-length v8, p3

    if-ge v6, v8, :cond_2

    if-eqz v3, :cond_1

    invoke-interface {v3, v4}, Lorg/bouncycastle/util/n;->j(Lorg/bouncycastle/util/n;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p2}, Ljk/i;->f()Ljk/f;

    move-result-object v8

    invoke-virtual {p0, p1, v8}, LLi/l0;->a(LBi/y;Ljk/f;)V

    invoke-virtual {p2}, Ljk/i;->g()Ljk/f;

    move-result-object v8

    invoke-virtual {p0, p1, v8}, LLi/l0;->a(LBi/y;Ljk/f;)V

    :goto_2
    add-int/lit8 v7, v7, 0x1

    invoke-static {v7, v2, v5}, Lorg/bouncycastle/util/p;->h(I[BI)V

    invoke-interface {p1, v2, v5, v1}, LBi/y;->update([BII)V

    invoke-interface {p1, v2, v5}, LBi/y;->c([BI)I

    array-length v8, p3

    sub-int/2addr v8, v6

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v8, v2, v5, p3, v6}, Lorg/bouncycastle/util/c;->c(I[BI[BI)V

    add-int/2addr v6, v8

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final h()Ljava/math/BigInteger;
    .locals 3

    iget-object v0, p0, LLi/l0;->e:LXi/G;

    invoke-virtual {v0}, LXi/G;->e()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    :cond_0
    iget-object v1, p0, LLi/l0;->g:Ljava/security/SecureRandom;

    invoke-static {v0, v1}, Lorg/bouncycastle/util/b;->f(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/util/b;->a:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, LLi/l0;->e:LXi/G;

    invoke-virtual {v2}, LXi/G;->e()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gez v2, :cond_0

    return-object v1
.end method

.method public final i([B[BI)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_1

    aget-byte v2, p1, v1

    add-int v3, p3, v1

    aget-byte v3, p2, v3

    if-eq v2, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public j([BII)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_1

    if-eqz p3, :cond_1

    iget-boolean v0, p0, LLi/l0;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, LLi/l0;->d([BII)[B

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, LLi/l0;->c([BII)[B

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
