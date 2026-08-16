.class public Lbj/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbj/c;


# instance fields
.field public final a:LSi/k;

.field public final b:[B

.field public final c:[B

.field public d:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(LBi/y;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LSi/k;

    invoke-direct {v0, p1}, LSi/k;-><init>(LBi/y;)V

    iput-object v0, p0, Lbj/q;->a:LSi/k;

    invoke-virtual {v0}, LSi/k;->d()I

    move-result p1

    new-array v0, p1, [B

    iput-object v0, p0, Lbj/q;->c:[B

    new-array p1, p1, [B

    iput-object p1, p0, Lbj/q;->b:[B

    return-void
.end method


# virtual methods
.method public a(Ljava/math/BigInteger;Ljava/security/SecureRandom;)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Operation not supported"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Ljava/math/BigInteger;
    .locals 7

    iget-object v0, p0, Lbj/q;->d:Ljava/math/BigInteger;

    invoke-static {v0}, Lorg/bouncycastle/util/b;->k(Ljava/math/BigInteger;)I

    move-result v0

    new-array v1, v0, [B

    :goto_0
    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Lbj/q;->a:LSi/k;

    iget-object v5, p0, Lbj/q;->c:[B

    array-length v6, v5

    invoke-virtual {v4, v5, v2, v6}, LSi/k;->update([BII)V

    iget-object v4, p0, Lbj/q;->a:LSi/k;

    iget-object v5, p0, Lbj/q;->c:[B

    invoke-virtual {v4, v5, v2}, LSi/k;->c([BI)I

    sub-int v4, v0, v3

    iget-object v5, p0, Lbj/q;->c:[B

    array-length v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v5, p0, Lbj/q;->c:[B

    invoke-static {v5, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v4

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v1}, Lbj/q;->e([B)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->signum()I

    move-result v4

    if-lez v4, :cond_1

    iget-object v4, p0, Lbj/q;->d:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-gez v4, :cond_1

    return-object v3

    :cond_1
    iget-object v3, p0, Lbj/q;->a:LSi/k;

    iget-object v4, p0, Lbj/q;->c:[B

    array-length v5, v4

    invoke-virtual {v3, v4, v2, v5}, LSi/k;->update([BII)V

    iget-object v3, p0, Lbj/q;->a:LSi/k;

    invoke-virtual {v3, v2}, LSi/k;->update(B)V

    iget-object v3, p0, Lbj/q;->a:LSi/k;

    iget-object v4, p0, Lbj/q;->b:[B

    invoke-virtual {v3, v4, v2}, LSi/k;->c([BI)I

    iget-object v3, p0, Lbj/q;->a:LSi/k;

    new-instance v4, LXi/o0;

    iget-object v5, p0, Lbj/q;->b:[B

    invoke-direct {v4, v5}, LXi/o0;-><init>([B)V

    invoke-virtual {v3, v4}, LSi/k;->a(LBi/k;)V

    iget-object v3, p0, Lbj/q;->a:LSi/k;

    iget-object v4, p0, Lbj/q;->c:[B

    array-length v5, v4

    invoke-virtual {v3, v4, v2, v5}, LSi/k;->update([BII)V

    iget-object v3, p0, Lbj/q;->a:LSi/k;

    iget-object v4, p0, Lbj/q;->c:[B

    invoke-virtual {v3, v4, v2}, LSi/k;->c([BI)I

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d(Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 4

    iput-object p1, p0, Lbj/q;->d:Ljava/math/BigInteger;

    invoke-virtual {p0, p3}, Lbj/q;->e([B)Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p3, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/util/b;->k(Ljava/math/BigInteger;)I

    move-result p1

    invoke-static {p1, p2}, Lorg/bouncycastle/util/b;->b(ILjava/math/BigInteger;)[B

    move-result-object p2

    invoke-static {p1, p3}, Lorg/bouncycastle/util/b;->b(ILjava/math/BigInteger;)[B

    move-result-object p1

    iget-object p3, p0, Lbj/q;->b:[B

    const/4 v0, 0x0

    invoke-static {p3, v0}, Lorg/bouncycastle/util/a;->e0([BB)V

    iget-object p3, p0, Lbj/q;->c:[B

    const/4 v1, 0x1

    invoke-static {p3, v1}, Lorg/bouncycastle/util/a;->e0([BB)V

    iget-object p3, p0, Lbj/q;->a:LSi/k;

    new-instance v2, LXi/o0;

    iget-object v3, p0, Lbj/q;->b:[B

    invoke-direct {v2, v3}, LXi/o0;-><init>([B)V

    invoke-virtual {p3, v2}, LSi/k;->a(LBi/k;)V

    iget-object p3, p0, Lbj/q;->a:LSi/k;

    iget-object v2, p0, Lbj/q;->c:[B

    array-length v3, v2

    invoke-virtual {p3, v2, v0, v3}, LSi/k;->update([BII)V

    iget-object p3, p0, Lbj/q;->a:LSi/k;

    invoke-virtual {p3, v0}, LSi/k;->update(B)V

    iget-object p3, p0, Lbj/q;->a:LSi/k;

    array-length v2, p2

    invoke-virtual {p3, p2, v0, v2}, LSi/k;->update([BII)V

    iget-object p3, p0, Lbj/q;->a:LSi/k;

    array-length v2, p1

    invoke-virtual {p3, p1, v0, v2}, LSi/k;->update([BII)V

    iget-object p3, p0, Lbj/q;->a:LSi/k;

    invoke-virtual {p0, p3}, Lbj/q;->f(LSi/k;)V

    iget-object p3, p0, Lbj/q;->a:LSi/k;

    iget-object v2, p0, Lbj/q;->b:[B

    invoke-virtual {p3, v2, v0}, LSi/k;->c([BI)I

    iget-object p3, p0, Lbj/q;->a:LSi/k;

    new-instance v2, LXi/o0;

    iget-object v3, p0, Lbj/q;->b:[B

    invoke-direct {v2, v3}, LXi/o0;-><init>([B)V

    invoke-virtual {p3, v2}, LSi/k;->a(LBi/k;)V

    iget-object p3, p0, Lbj/q;->a:LSi/k;

    iget-object v2, p0, Lbj/q;->c:[B

    array-length v3, v2

    invoke-virtual {p3, v2, v0, v3}, LSi/k;->update([BII)V

    iget-object p3, p0, Lbj/q;->a:LSi/k;

    iget-object v2, p0, Lbj/q;->c:[B

    invoke-virtual {p3, v2, v0}, LSi/k;->c([BI)I

    iget-object p3, p0, Lbj/q;->a:LSi/k;

    iget-object v2, p0, Lbj/q;->c:[B

    array-length v3, v2

    invoke-virtual {p3, v2, v0, v3}, LSi/k;->update([BII)V

    iget-object p3, p0, Lbj/q;->a:LSi/k;

    invoke-virtual {p3, v1}, LSi/k;->update(B)V

    iget-object p3, p0, Lbj/q;->a:LSi/k;

    array-length v1, p2

    invoke-virtual {p3, p2, v0, v1}, LSi/k;->update([BII)V

    iget-object p2, p0, Lbj/q;->a:LSi/k;

    array-length p3, p1

    invoke-virtual {p2, p1, v0, p3}, LSi/k;->update([BII)V

    iget-object p1, p0, Lbj/q;->a:LSi/k;

    invoke-virtual {p0, p1}, Lbj/q;->g(LSi/k;)V

    iget-object p1, p0, Lbj/q;->a:LSi/k;

    iget-object p2, p0, Lbj/q;->b:[B

    invoke-virtual {p1, p2, v0}, LSi/k;->c([BI)I

    iget-object p1, p0, Lbj/q;->a:LSi/k;

    new-instance p2, LXi/o0;

    iget-object p3, p0, Lbj/q;->b:[B

    invoke-direct {p2, p3}, LXi/o0;-><init>([B)V

    invoke-virtual {p1, p2}, LSi/k;->a(LBi/k;)V

    iget-object p1, p0, Lbj/q;->a:LSi/k;

    iget-object p2, p0, Lbj/q;->c:[B

    array-length p3, p2

    invoke-virtual {p1, p2, v0, p3}, LSi/k;->update([BII)V

    iget-object p1, p0, Lbj/q;->a:LSi/k;

    iget-object p2, p0, Lbj/q;->c:[B

    invoke-virtual {p1, p2, v0}, LSi/k;->c([BI)I

    return-void
.end method

.method public final e([B)Ljava/math/BigInteger;
    .locals 2

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lbj/q;->d:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    invoke-static {p1}, Lorg/bouncycastle/util/b;->i([B)Ljava/math/BigInteger;

    move-result-object p1

    if-le v0, v1, :cond_0

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public f(LSi/k;)V
    .locals 0

    return-void
.end method

.method public g(LSi/k;)V
    .locals 0

    return-void
.end method
