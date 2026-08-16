.class public LPj/h;
.super Ljava/security/KeyPairGenerator;
.source "SourceFile"


# instance fields
.field public a:LXi/U;

.field public b:LOi/s;

.field public c:I

.field public d:I

.field public e:Ljava/security/SecureRandom;

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "ElGamal"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance v0, LOi/s;

    invoke-direct {v0}, LOi/s;-><init>()V

    iput-object v0, p0, LPj/h;->b:LOi/s;

    const/16 v0, 0x400

    iput v0, p0, LPj/h;->c:I

    const/16 v0, 0x14

    iput v0, p0, LPj/h;->d:I

    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, LPj/h;->e:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, LPj/h;->f:Z

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 6

    iget-boolean v0, p0, LPj/h;->f:Z

    if-nez v0, :cond_1

    sget-object v0, Lorg/bouncycastle/jce/provider/a;->f:LTj/c;

    iget v1, p0, LPj/h;->c:I

    invoke-interface {v0, v1}, LTj/c;->e(I)Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, LXi/U;

    iget-object v2, p0, LPj/h;->e:Ljava/security/SecureRandom;

    new-instance v3, LXi/W;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v0

    invoke-direct {v3, v4, v5, v0}, LXi/W;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {v1, v2, v3}, LXi/U;-><init>(Ljava/security/SecureRandom;LXi/W;)V

    :goto_0
    iput-object v1, p0, LPj/h;->a:LXi/U;

    goto :goto_1

    :cond_0
    new-instance v0, LOi/t;

    invoke-direct {v0}, LOi/t;-><init>()V

    iget v1, p0, LPj/h;->c:I

    iget v2, p0, LPj/h;->d:I

    iget-object v3, p0, LPj/h;->e:Ljava/security/SecureRandom;

    invoke-virtual {v0, v1, v2, v3}, LOi/t;->b(IILjava/security/SecureRandom;)V

    new-instance v1, LXi/U;

    iget-object v2, p0, LPj/h;->e:Ljava/security/SecureRandom;

    invoke-virtual {v0}, LOi/t;->a()LXi/W;

    move-result-object v0

    invoke-direct {v1, v2, v0}, LXi/U;-><init>(Ljava/security/SecureRandom;LXi/W;)V

    goto :goto_0

    :goto_1
    iget-object v0, p0, LPj/h;->b:LOi/s;

    iget-object v1, p0, LPj/h;->a:LXi/U;

    invoke-virtual {v0, v1}, LOi/s;->b(LBi/G;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, LPj/h;->f:Z

    :cond_1
    iget-object v0, p0, LPj/h;->b:LOi/s;

    invoke-virtual {v0}, LOi/s;->a()LBi/c;

    move-result-object v0

    invoke-virtual {v0}, LBi/c;->b()LXi/c;

    move-result-object v1

    check-cast v1, LXi/Y;

    invoke-virtual {v0}, LBi/c;->a()LXi/c;

    move-result-object v0

    check-cast v0, LXi/X;

    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, LPj/d;

    invoke-direct {v3, v1}, LPj/d;-><init>(LXi/Y;)V

    new-instance v1, LPj/c;

    invoke-direct {v1, v0}, LPj/c;-><init>(LXi/X;)V

    invoke-direct {v2, v3, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 0

    .line 1
    iput p1, p0, LPj/h;->c:I

    iput-object p2, p0, LPj/h;->e:Ljava/security/SecureRandom;

    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 2
    instance-of v0, p1, Lhk/j;

    if-nez v0, :cond_1

    instance-of v1, p1, Ljavax/crypto/spec/DHParameterSpec;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "parameter object not a DHParameterSpec or an ElGamalParameterSpec"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    check-cast p1, Lhk/j;

    new-instance v0, LXi/U;

    new-instance v1, LXi/W;

    invoke-virtual {p1}, Lhk/j;->b()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lhk/j;->a()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v1, v2, p1}, LXi/W;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v0, p2, v1}, LXi/U;-><init>(Ljava/security/SecureRandom;LXi/W;)V

    :goto_1
    iput-object v0, p0, LPj/h;->a:LXi/U;

    goto :goto_2

    :cond_2
    check-cast p1, Ljavax/crypto/spec/DHParameterSpec;

    new-instance v0, LXi/U;

    new-instance v1, LXi/W;

    invoke-virtual {p1}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result p1

    invoke-direct {v1, v2, v3, p1}, LXi/W;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {v0, p2, v1}, LXi/U;-><init>(Ljava/security/SecureRandom;LXi/W;)V

    goto :goto_1

    :goto_2
    iget-object p1, p0, LPj/h;->b:LOi/s;

    iget-object p2, p0, LPj/h;->a:LXi/U;

    invoke-virtual {p1, p2}, LOi/s;->b(LBi/G;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, LPj/h;->f:Z

    return-void
.end method
