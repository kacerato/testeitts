.class public LNj/e;
.super Ljava/security/SignatureSpi;
.source "SourceFile"

# interfaces
.implements LXh/t;
.implements Lhi/E0;


# instance fields
.field public b:LBi/y;

.field public c:LBi/t;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    new-instance v0, Lbj/e;

    invoke-direct {v0}, Lbj/e;-><init>()V

    iput-object v0, p0, LNj/e;->c:LBi/t;

    return-void
.end method


# virtual methods
.method public a([B)[B
    .locals 4

    const/16 v0, 0x80

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    mul-int/lit8 v2, v1, 0x2

    aget-byte v3, p1, v1

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    aget-byte v3, p1, v1

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "engineSetParameter unsupported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public engineInitSign(Ljava/security/PrivateKey;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v0, p1, LNj/a;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/i;->c(Ljava/security/PrivateKey;)LXi/c;

    move-result-object p1

    new-instance v0, LIi/l;

    invoke-static {}, Ldi/d;->v()[B

    move-result-object v1

    invoke-virtual {p0, v1}, LNj/e;->a([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, LIi/l;-><init>([B)V

    :goto_0
    iput-object v0, p0, LNj/e;->b:LBi/y;

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lfk/b;

    if-eqz v0, :cond_1

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/i;->c(Ljava/security/PrivateKey;)LXi/c;

    move-result-object p1

    new-instance v0, LIi/l;

    invoke-static {}, Ldi/d;->v()[B

    move-result-object v1

    invoke-virtual {p0, v1}, LNj/e;->a([B)[B

    move-result-object v1

    invoke-direct {v0, v1}, LIi/l;-><init>([B)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_1
    iget-object v0, p0, Ljava/security/SignatureSpi;->appRandom:Ljava/security/SecureRandom;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v2, p0, LNj/e;->c:LBi/t;

    new-instance v3, LXi/x0;

    invoke-direct {v3, p1, v0}, LXi/x0;-><init>(LBi/k;Ljava/security/SecureRandom;)V

    invoke-interface {v2, v1, v3}, LBi/s;->a(ZLBi/k;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, LNj/e;->c:LBi/t;

    invoke-interface {v0, v1, p1}, LBi/s;->a(ZLBi/k;)V

    :goto_2
    return-void
.end method

.method public engineInitVerify(Ljava/security/PublicKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v0, p1, LNj/b;

    if-eqz v0, :cond_0

    check-cast p1, LNj/b;

    invoke-virtual {p1}, LNj/b;->c()LXi/M;

    move-result-object v0

    new-instance v1, LIi/l;

    invoke-virtual {p1}, LNj/b;->e()[B

    move-result-object p1

    invoke-virtual {p0, p1}, LNj/e;->a([B)[B

    move-result-object p1

    invoke-direct {v1, p1}, LIi/l;-><init>([B)V

    iput-object v1, p0, LNj/e;->b:LBi/y;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/i;->d(Ljava/security/PublicKey;)LXi/c;

    move-result-object v0

    new-instance p1, LIi/l;

    invoke-static {}, Ldi/d;->v()[B

    move-result-object v1

    invoke-virtual {p0, v1}, LNj/e;->a([B)[B

    move-result-object v1

    invoke-direct {p1, v1}, LIi/l;-><init>([B)V

    iput-object p1, p0, LNj/e;->b:LBi/y;

    :goto_0
    iget-object p1, p0, LNj/e;->c:LBi/t;

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, LBi/s;->a(ZLBi/k;)V

    return-void
.end method

.method public engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "engineSetParameter unsupported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "engineSetParameter unsupported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineSign()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, LNj/e;->b:LBi/y;

    invoke-interface {v0}, LBi/y;->f()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, LNj/e;->b:LBi/y;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, LBi/y;->c([BI)I

    :try_start_0
    iget-object v1, p0, LNj/e;->c:LBi/t;

    invoke-interface {v1, v0}, LBi/s;->b([B)[Ljava/math/BigInteger;

    move-result-object v0

    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    array-length v3, v1

    array-length v4, v0

    if-le v3, v4, :cond_0

    array-length v3, v1

    :goto_0
    mul-int/lit8 v3, v3, 0x2

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    array-length v3, v0

    goto :goto_0

    :goto_1
    new-array v4, v3, [B

    div-int/lit8 v5, v3, 0x2

    array-length v6, v0

    sub-int/2addr v5, v6

    array-length v6, v0

    invoke-static {v0, v2, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v1

    sub-int/2addr v3, v0

    array-length v0, v1

    invoke-static {v1, v2, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Loh/C0;

    invoke-direct {v0, v4}, Loh/C0;-><init>([B)V

    invoke-virtual {v0}, Loh/v;->getEncoded()[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_2
    new-instance v1, Ljava/security/SignatureException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public engineUpdate(B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, LNj/e;->b:LBi/y;

    invoke-interface {v0, p1}, LBi/y;->update(B)V

    return-void
.end method

.method public engineUpdate([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, LNj/e;->b:LBi/y;

    invoke-interface {v0, p1, p2, p3}, LBi/y;->update([BII)V

    return-void
.end method

.method public engineVerify([B)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, LNj/e;->b:LBi/y;

    invoke-interface {v0}, LBi/y;->f()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, LNj/e;->b:LBi/y;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, LBi/y;->c([BI)I

    :try_start_0
    invoke-static {p1}, Loh/B;->B([B)Loh/B;

    move-result-object p1

    check-cast p1, Loh/y;

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    array-length v3, p1

    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [B

    array-length v4, p1

    div-int/lit8 v4, v4, 0x2

    invoke-static {p1, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, p1

    div-int/lit8 v4, v4, 0x2

    array-length v5, p1

    div-int/lit8 v5, v5, 0x2

    invoke-static {p1, v4, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {p1, v4, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v4, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    filled-new-array {p1, v1}, [Ljava/math/BigInteger;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, LNj/e;->c:LBi/t;

    aget-object v2, p1, v2

    aget-object p1, p1, v4

    invoke-interface {v1, v0, v2, p1}, LBi/s;->c([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result p1

    return p1

    :catch_0
    new-instance p1, Ljava/security/SignatureException;

    const-string v0, "error decoding signature bytes."

    invoke-direct {p1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
