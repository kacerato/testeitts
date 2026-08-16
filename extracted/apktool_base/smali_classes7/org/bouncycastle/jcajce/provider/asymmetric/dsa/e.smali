.class public Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e;
.super Ljava/security/SignatureSpi;
.source "SourceFile"

# interfaces
.implements LXh/t;
.implements Lhi/E0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e$e;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e$a;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e$b;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e$c;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e$d;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e$f;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e$g;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e$h;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e$i;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e$j;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e$k;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e$l;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e$m;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e$n;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e$o;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e$p;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e$q;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e$r;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e$s;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e$t;
    }
.end annotation


# instance fields
.field public b:LBi/y;

.field public c:LBi/t;

.field public d:Lbj/b;

.field public e:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(LBi/y;LBi/t;)V
    .locals 1

    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    sget-object v0, Lbj/z;->a:Lbj/z;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e;->d:Lbj/b;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e;->b:LBi/y;

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e;->c:LBi/t;

    return-void
.end method


# virtual methods
.method public engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "engineGetParameter unsupported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public engineInitSign(Ljava/security/PrivateKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/f;->b(Ljava/security/PrivateKey;)LXi/c;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e;->e:Ljava/security/SecureRandom;

    if-eqz v0, :cond_0

    new-instance v1, LXi/x0;

    invoke-direct {v1, p1, v0}, LXi/x0;-><init>(LBi/k;Ljava/security/SecureRandom;)V

    move-object p1, v1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e;->b:LBi/y;

    invoke-interface {v0}, LBi/y;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e;->c:LBi/t;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, LBi/s;->a(ZLBi/k;)V

    return-void
.end method

.method public engineInitSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 2
    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e;->e:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e;->engineInitSign(Ljava/security/PrivateKey;)V

    return-void
.end method

.method public engineInitVerify(Ljava/security/PublicKey;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/f;->c(Ljava/security/PublicKey;)LXi/c;

    move-result-object p1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e;->b:LBi/y;

    invoke-interface {v0}, LBi/y;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e;->c:LBi/t;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, LBi/s;->a(ZLBi/k;)V

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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e;->b:LBi/y;

    invoke-interface {v0}, LBi/y;->f()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e;->b:LBi/y;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, LBi/y;->c([BI)I

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e;->c:LBi/t;

    invoke-interface {v1, v0}, LBi/s;->b([B)[Ljava/math/BigInteger;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e;->d:Lbj/b;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e;->c:LBi/t;

    invoke-interface {v3}, LBi/t;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    aget-object v2, v0, v2

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-interface {v1, v3, v2, v0}, Lbj/b;->b(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

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
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e;->b:LBi/y;

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
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e;->b:LBi/y;

    invoke-interface {v0, p1, p2, p3}, LBi/y;->update([BII)V

    return-void
.end method

.method public engineVerify([B)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e;->b:LBi/y;

    invoke-interface {v0}, LBi/y;->f()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e;->b:LBi/y;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, LBi/y;->c([BI)I

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e;->d:Lbj/b;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e;->c:LBi/t;

    invoke-interface {v3}, LBi/t;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v1, v3, p1}, Lbj/b;->a(Ljava/math/BigInteger;[B)[Ljava/math/BigInteger;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/dsa/e;->c:LBi/t;

    aget-object v2, p1, v2

    const/4 v3, 0x1

    aget-object p1, p1, v3

    invoke-interface {v1, v0, v2, p1}, LBi/s;->c([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result p1

    return p1

    :catch_0
    new-instance p1, Ljava/security/SignatureException;

    const-string v0, "error decoding signature bytes."

    invoke-direct {p1, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
