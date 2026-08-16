.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/d;
.super Ljava/security/SignatureSpi;
.source "SourceFile"

# interfaces
.implements LXh/t;
.implements Lhi/E0;


# instance fields
.field public b:LBi/y;

.field public c:LBi/t;

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    const/16 v0, 0x80

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/d;->d:I

    const/16 v0, 0x40

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/d;->e:I

    new-instance v0, LIi/o;

    invoke-direct {v0}, LIi/o;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/d;->b:LBi/y;

    new-instance v0, Lbj/g;

    invoke-direct {v0}, Lbj/g;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/d;->c:LBi/t;

    return-void
.end method

.method public static a(Ljava/security/PublicKey;)LXi/c;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/b;->c()LXi/M;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/i;->d(Ljava/security/PublicKey;)LXi/c;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
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

    instance-of v0, p1, Lfk/b;

    if-eqz v0, :cond_2

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/i;->c(Ljava/security/PrivateKey;)LXi/c;

    move-result-object p1

    check-cast p1, LXi/J;

    invoke-virtual {p1}, LXi/J;->d()LXi/G;

    move-result-object v0

    invoke-virtual {v0}, LXi/G;->e()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x1f9

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/d;->b:LBi/y;

    invoke-interface {v0}, LBi/y;->reset()V

    iget-object v0, p0, Ljava/security/SignatureSpi;->appRandom:Ljava/security/SecureRandom;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/d;->c:LBi/t;

    new-instance v3, LXi/x0;

    invoke-direct {v3, p1, v0}, LXi/x0;-><init>(LBi/k;Ljava/security/SecureRandom;)V

    invoke-interface {v2, v1, v3}, LBi/s;->a(ZLBi/k;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/d;->c:LBi/t;

    invoke-interface {v0, v1, p1}, LBi/s;->a(ZLBi/k;)V

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "key too weak for ECGOST-2012-512"

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "cannot recognise key type in ECGOST-2012-512 signer"

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineInitVerify(Ljava/security/PublicKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v0, p1, Lfk/e;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/d;->a(Ljava/security/PublicKey;)LXi/c;

    move-result-object p1

    check-cast p1, LXi/J;

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lhi/h0;->w(Ljava/lang/Object;)Lhi/h0;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/jce/provider/a;->q(Lhi/h0;)Ljava/security/PublicKey;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/i;->d(Ljava/security/PublicKey;)LXi/c;

    move-result-object p1

    check-cast p1, LXi/J;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p1}, LXi/J;->d()LXi/G;

    move-result-object v0

    invoke-virtual {v0}, LXi/G;->e()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x1f9

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/d;->b:LBi/y;

    invoke-interface {v0}, LBi/y;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/d;->c:LBi/t;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, LBi/s;->a(ZLBi/k;)V

    return-void

    :cond_1
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "key too weak for ECGOST-2012-512"

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string v0, "cannot recognise key type in ECGOST-2012-512 signer"

    invoke-direct {p1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
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

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/d;->b:LBi/y;

    invoke-interface {v0}, LBi/y;->f()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/d;->b:LBi/y;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, LBi/y;->c([BI)I

    :try_start_0
    iget v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/d;->d:I

    new-array v1, v1, [B

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/d;->c:LBi/t;

    invoke-interface {v3, v0}, LBi/s;->b([B)[Ljava/math/BigInteger;

    move-result-object v0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    aget-byte v5, v0, v2

    if-eqz v5, :cond_0

    iget v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/d;->e:I

    array-length v6, v0

    sub-int/2addr v5, v6

    array-length v6, v0

    invoke-static {v0, v2, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    iget v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/d;->e:I

    array-length v6, v0

    sub-int/2addr v6, v4

    sub-int/2addr v5, v6

    array-length v6, v0

    sub-int/2addr v6, v4

    invoke-static {v0, v4, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    aget-byte v0, v3, v2

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/d;->d:I

    array-length v4, v3

    sub-int/2addr v0, v4

    array-length v4, v3

    invoke-static {v3, v2, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_1
    iget v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/d;->d:I

    array-length v2, v3

    sub-int/2addr v2, v4

    sub-int/2addr v0, v2

    array-length v2, v3

    sub-int/2addr v2, v4

    invoke-static {v3, v4, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v1

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
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/d;->b:LBi/y;

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
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/d;->b:LBi/y;

    invoke-interface {v0, p1, p2, p3}, LBi/y;->update([BII)V

    return-void
.end method

.method public engineVerify([B)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/d;->b:LBi/y;

    invoke-interface {v0}, LBi/y;->f()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/d;->b:LBi/y;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, LBi/y;->c([BI)I

    :try_start_0
    iget v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/d;->e:I

    new-array v3, v1, [B

    new-array v4, v1, [B

    invoke-static {p1, v2, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/d;->e:I

    invoke-static {p1, v1, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p1, Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {p1, v1, v3}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v1, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    filled-new-array {p1, v3}, [Ljava/math/BigInteger;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost12/d;->c:LBi/t;

    aget-object v2, p1, v2

    aget-object p1, p1, v1

    invoke-interface {v3, v0, v2, p1}, LBi/s;->c([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result p1

    return p1

    :catch_0
    new-instance p1, Ljava/security/SignatureException;

    const-string v0, "error decoding signature bytes."

    invoke-direct {p1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
