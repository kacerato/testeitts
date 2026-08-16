.class public Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine$CramerShoupCiphertextException;
    }
.end annotation


# static fields
.field public static final e:Ljava/math/BigInteger;


# instance fields
.field public a:LXi/g;

.field public b:Ljava/security/SecureRandom;

.field public c:Z

.field public d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->e:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->d:[B

    return-void
.end method


# virtual methods
.method public a([BII)Ljava/math/BigInteger;
    .locals 4

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->f()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const-string v2, "input too large for Cramer Shoup cipher."

    if-gt p3, v0, :cond_5

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->f()I

    move-result v0

    add-int/2addr v0, v1

    if-ne p3, v0, :cond_1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->c:Z

    if-nez v0, :cond_0

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

    iget-object p1, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->a:LXi/g;

    invoke-virtual {p1}, LXi/g;->d()LXi/h;

    move-result-object p1

    invoke-virtual {p1}, LXi/h;->d()Ljava/math/BigInteger;

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

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->c:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    aget-byte v0, p1, v2

    if-nez v0, :cond_0

    array-length v0, p1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->g()I

    move-result v3

    if-le v0, v3, :cond_0

    array-length v0, p1

    sub-int/2addr v0, v1

    new-array v3, v0, [B

    invoke-static {p1, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3

    :cond_0
    array-length v0, p1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->g()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->g()I

    move-result v0

    new-array v1, v0, [B

    array-length v3, p1

    sub-int/2addr v0, v3

    array-length v3, p1

    invoke-static {p1, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_1
    aget-byte v0, p1, v2

    if-nez v0, :cond_2

    array-length v0, p1

    sub-int/2addr v0, v1

    new-array v3, v0, [B

    invoke-static {p1, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v3

    :cond_2
    return-object p1
.end method

.method public c(LLi/r;)Ljava/math/BigInteger;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine$CramerShoupCiphertextException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->a:LXi/g;

    invoke-virtual {v0}, LXi/c;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->c:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->a:LXi/g;

    instance-of v1, v0, LXi/i;

    if-eqz v1, :cond_2

    check-cast v0, LXi/i;

    invoke-virtual {v0}, LXi/g;->d()LXi/h;

    move-result-object v1

    invoke-virtual {v1}, LXi/h;->d()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0}, LXi/g;->d()LXi/h;

    move-result-object v2

    invoke-virtual {v2}, LXi/h;->c()LBi/y;

    move-result-object v2

    invoke-virtual {p1}, LLi/r;->b()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    invoke-interface {v2, v3, v5, v4}, LBi/y;->update([BII)V

    invoke-virtual {p1}, LLi/r;->c()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    array-length v4, v3

    invoke-interface {v2, v3, v5, v4}, LBi/y;->update([BII)V

    invoke-virtual {p1}, LLi/r;->a()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    array-length v4, v3

    invoke-interface {v2, v3, v5, v4}, LBi/y;->update([BII)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->d:[B

    if-eqz v3, :cond_0

    array-length v4, v3

    invoke-interface {v2, v3, v5, v4}, LBi/y;->update([BII)V

    :cond_0
    invoke-interface {v2}, LBi/y;->f()I

    move-result v3

    new-array v3, v3, [B

    invoke-interface {v2, v3, v5}, LBi/y;->c([BI)I

    new-instance v2, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v2, v4, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    iget-object v3, p1, LLi/r;->a:Ljava/math/BigInteger;

    invoke-virtual {v0}, LXi/i;->f()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, LXi/i;->h()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p1, LLi/r;->b:Ljava/math/BigInteger;

    invoke-virtual {v0}, LXi/i;->g()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, LXi/i;->i()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v4, v2, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p1, LLi/r;->d:Ljava/math/BigInteger;

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p1, LLi/r;->c:Ljava/math/BigInteger;

    iget-object p1, p1, LLi/r;->a:Ljava/math/BigInteger;

    invoke-virtual {v0}, LXi/i;->j()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine$CramerShoupCiphertextException;

    const-string v0, "Sorry, that ciphertext is not correct"

    invoke-direct {p1, v0}, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine$CramerShoupCiphertextException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public d(Ljava/math/BigInteger;)LLi/r;
    .locals 9

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->a:LXi/g;

    invoke-virtual {v0}, LXi/c;->c()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->c:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->a:LXi/g;

    instance-of v2, v0, LXi/j;

    if-eqz v2, :cond_2

    check-cast v0, LXi/j;

    invoke-virtual {v0}, LXi/g;->d()LXi/h;

    move-result-object v2

    invoke-virtual {v2}, LXi/h;->d()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, LXi/g;->d()LXi/h;

    move-result-object v3

    invoke-virtual {v3}, LXi/h;->a()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, LXi/g;->d()LXi/h;

    move-result-object v4

    invoke-virtual {v4}, LXi/h;->b()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, LXi/j;->g()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p0, p1, v2}, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->k(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v6

    if-nez v6, :cond_0

    return-object v1

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->b:Ljava/security/SecureRandom;

    invoke-virtual {p0, v2, v1}, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->e(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v4, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v5, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0}, LXi/g;->d()LXi/h;

    move-result-object v5

    invoke-virtual {v5}, LXi/h;->c()LBi/y;

    move-result-object v5

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    invoke-interface {v5, v6, v8, v7}, LBi/y;->update([BII)V

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    array-length v7, v6

    invoke-interface {v5, v6, v8, v7}, LBi/y;->update([BII)V

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    array-length v7, v6

    invoke-interface {v5, v6, v8, v7}, LBi/y;->update([BII)V

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->d:[B

    if-eqz v6, :cond_1

    array-length v7, v6

    invoke-interface {v5, v6, v8, v7}, LBi/y;->update([BII)V

    :cond_1
    invoke-interface {v5}, LBi/y;->f()I

    move-result v6

    new-array v6, v6, [B

    invoke-interface {v5, v6, v8}, LBi/y;->c([BI)I

    new-instance v5, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-direct {v5, v7, v6}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v0}, LXi/j;->e()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v0}, LXi/j;->f()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    new-instance v1, LLi/r;

    invoke-direct {v1, v3, v4, p1, v0}, LLi/r;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    :cond_2
    return-object v1
.end method

.method public final e(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->e:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/util/b;->g(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object p1

    return-object p1
.end method

.method public f()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->a:LXi/g;

    invoke-virtual {v0}, LXi/g;->d()LXi/h;

    move-result-object v0

    invoke-virtual {v0}, LXi/h;->d()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->c:Z

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    return v0
.end method

.method public g()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->a:LXi/g;

    invoke-virtual {v0}, LXi/g;->d()LXi/h;

    move-result-object v0

    invoke-virtual {v0}, LXi/h;->d()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->c:Z

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public h(ZLBi/k;)V
    .locals 3

    instance-of v0, p2, LXi/x0;

    if-eqz v0, :cond_0

    check-cast p2, LXi/x0;

    invoke-virtual {p2}, LXi/x0;->a()LBi/k;

    move-result-object v0

    check-cast v0, LXi/g;

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->a:LXi/g;

    invoke-virtual {p2}, LXi/x0;->b()Ljava/security/SecureRandom;

    move-result-object p2

    goto :goto_0

    :cond_0
    check-cast p2, LXi/g;

    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->a:LXi/g;

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->j(ZLjava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->b:Ljava/security/SecureRandom;

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->c:Z

    new-instance p2, LHi/c;

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->a:LXi/g;

    invoke-virtual {v0}, LXi/g;->d()LXi/h;

    move-result-object v0

    invoke-virtual {v0}, LXi/h;->d()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, LHi/b;->a(Ljava/math/BigInteger;)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->a:LXi/g;

    invoke-static {p1}, LLi/x0;->a(Z)LBi/o;

    move-result-object p1

    const-string v2, "CramerShoup"

    invoke-direct {p2, v2, v0, v1, p1}, LHi/c;-><init>(Ljava/lang/String;ILjava/lang/Object;LBi/o;)V

    invoke-static {p2}, LBi/r;->a(LBi/n;)V

    return-void
.end method

.method public i(ZLBi/k;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->h(ZLBi/k;)V

    invoke-static {p3}, Lorg/bouncycastle/util/w;->n(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/CramerShoupCoreEngine;->d:[B

    return-void
.end method

.method public j(ZLjava/security/SecureRandom;)Ljava/security/SecureRandom;
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p2}, LBi/r;->i(Ljava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final k(Ljava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 0

    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
