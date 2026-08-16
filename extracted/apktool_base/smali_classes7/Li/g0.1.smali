.class public LLi/g0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LXi/F0;

.field public b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([BII)Ljava/math/BigInteger;
    .locals 4

    invoke-virtual {p0}, LLi/g0;->c()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const-string v2, "input too large for RSA cipher."

    if-gt p3, v0, :cond_5

    invoke-virtual {p0}, LLi/g0;->c()I

    move-result v0

    add-int/2addr v0, v1

    if-ne p3, v0, :cond_1

    iget-boolean v0, p0, LLi/g0;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    invoke-direct {p1, v2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    array-length v0, p1

    if-eq p3, v0, :cond_3

    :cond_2
    new-array v0, p3, [B

    const/4 v3, 0x0

    invoke-static {p1, p2, v0, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    :cond_3
    new-instance p2, Ljava/math/BigInteger;

    invoke-direct {p2, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    iget-object p1, p0, LLi/g0;->a:LXi/F0;

    invoke-virtual {p1}, LXi/F0;->f()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-gez p1, :cond_4

    return-object p2

    :cond_4
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    invoke-direct {p1, v2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    invoke-direct {p1, v2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b(Ljava/math/BigInteger;)[B
    .locals 4

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    iget-boolean v0, p0, LLi/g0;->b:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    aget-byte v0, p1, v2

    if-nez v0, :cond_0

    array-length v0, p1

    invoke-virtual {p0}, LLi/g0;->d()I

    move-result v3

    if-le v0, v3, :cond_0

    array-length v0, p1

    sub-int/2addr v0, v1

    new-array v3, v0, [B

    invoke-static {p1, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3

    :cond_0
    array-length v0, p1

    invoke-virtual {p0}, LLi/g0;->d()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, LLi/g0;->d()I

    move-result v0

    new-array v1, v0, [B

    array-length v3, p1

    sub-int/2addr v0, v3

    array-length v3, p1

    invoke-static {p1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_1
    return-object p1

    :cond_2
    aget-byte v0, p1, v2

    if-nez v0, :cond_3

    array-length v0, p1

    sub-int/2addr v0, v1

    new-array v3, v0, [B

    invoke-static {p1, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_3
    array-length v0, p1

    new-array v3, v0, [B

    invoke-static {p1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    invoke-static {p1, v2}, Lorg/bouncycastle/util/a;->e0([BB)V

    return-object v3
.end method

.method public c()I
    .locals 2

    iget-object v0, p0, LLi/g0;->a:LXi/F0;

    invoke-virtual {v0}, LXi/F0;->f()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iget-boolean v1, p0, LLi/g0;->b:Z

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.method public d()I
    .locals 2

    iget-object v0, p0, LLi/g0;->a:LXi/F0;

    invoke-virtual {v0}, LXi/F0;->f()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iget-boolean v1, p0, LLi/g0;->b:Z

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final e(ZZ)LBi/o;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    if-nez p1, :cond_2

    if-nez p2, :cond_2

    move v0, v1

    :cond_2
    if-eqz v2, :cond_3

    sget-object p1, LBi/o;->SIGNING:LBi/o;

    return-object p1

    :cond_3
    if-eqz v3, :cond_4

    sget-object p1, LBi/o;->ENCRYPTION:LBi/o;

    return-object p1

    :cond_4
    if-eqz v0, :cond_5

    sget-object p1, LBi/o;->VERIFYING:LBi/o;

    return-object p1

    :cond_5
    sget-object p1, LBi/o;->DECRYPTION:LBi/o;

    return-object p1
.end method

.method public f(ZLBi/k;)V
    .locals 3

    instance-of v0, p2, LXi/x0;

    if-eqz v0, :cond_0

    check-cast p2, LXi/x0;

    invoke-virtual {p2}, LXi/x0;->a()LBi/k;

    move-result-object p2

    :cond_0
    iput-boolean p1, p0, LLi/g0;->b:Z

    check-cast p2, LXi/F0;

    iput-object p2, p0, LLi/g0;->a:LXi/F0;

    invoke-virtual {p2}, LXi/F0;->f()Ljava/math/BigInteger;

    move-result-object p2

    invoke-static {p2}, LHi/b;->a(Ljava/math/BigInteger;)I

    move-result p2

    iget-object v0, p0, LLi/g0;->a:LXi/F0;

    invoke-virtual {v0}, LXi/c;->c()Z

    move-result v0

    invoke-virtual {p0, v0, p1}, LLi/g0;->e(ZZ)LBi/o;

    move-result-object p1

    new-instance v0, LHi/c;

    const-string v1, "RSA"

    iget-object v2, p0, LLi/g0;->a:LXi/F0;

    invoke-direct {v0, v1, p2, v2, p1}, LHi/c;-><init>(Ljava/lang/String;ILjava/lang/Object;LBi/o;)V

    invoke-static {v0}, LBi/r;->a(LBi/n;)V

    return-void
.end method

.method public g(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 8

    iget-object v0, p0, LLi/g0;->a:LXi/F0;

    instance-of v1, v0, LXi/G0;

    if-eqz v1, :cond_1

    check-cast v0, LXi/G0;

    invoke-virtual {v0}, LXi/G0;->l()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, LXi/G0;->k()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, LXi/G0;->m()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, LXi/G0;->i()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, LXi/G0;->j()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, LXi/G0;->n()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v4, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v5, v3}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, LXi/F0;->f()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v2

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "RSA engine faulty decryption/signing detected"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, LLi/g0;->a:LXi/F0;

    invoke-virtual {v0}, LXi/F0;->d()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, LLi/g0;->a:LXi/F0;

    invoke-virtual {v1}, LXi/F0;->f()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method
