.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/d;
.super Ljava/security/KeyPairGenerator;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:LOi/p;

.field public c:Ljava/lang/String;

.field public d:LXi/I;

.field public e:I

.field public f:Ljava/security/SecureRandom;

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "ECGOST3410"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/d;->a:Ljava/lang/Object;

    new-instance v2, LOi/p;

    invoke-direct {v2}, LOi/p;-><init>()V

    iput-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/d;->b:LOi/p;

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/d;->c:Ljava/lang/String;

    const/16 v0, 0xef

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/d;->e:I

    iput-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/d;->f:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/d;->g:Z

    return-void
.end method


# virtual methods
.method public final a(Lck/l;Ljava/security/SecureRandom;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    invoke-virtual {p1}, Lck/l;->e()Loh/x;

    move-result-object v0

    invoke-static {v0}, Lyh/b;->k(Loh/x;)Lki/l;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v9, Lhk/d;

    invoke-static {v0}, Lyh/b;->l(Loh/x;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lki/l;->v()Ljk/e;

    move-result-object v4

    invoke-virtual {v1}, Lki/l;->z()Ljk/i;

    move-result-object v5

    invoke-virtual {v1}, Lki/l;->C()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v1}, Lki/l;->A()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v1}, Lki/l;->D()[B

    move-result-object v8

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lhk/d;-><init>(Ljava/lang/String;Ljk/e;Ljk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    iput-object v9, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/d;->a:Ljava/lang/Object;

    new-instance v2, LXi/I;

    new-instance v3, LXi/H;

    new-instance v4, LXi/K;

    invoke-direct {v4, v0, v1}, LXi/K;-><init>(Loh/x;Lki/l;)V

    invoke-virtual {p1}, Lck/l;->b()Loh/x;

    move-result-object v1

    invoke-virtual {p1}, Lck/l;->c()Loh/x;

    move-result-object p1

    invoke-direct {v3, v4, v0, v1, p1}, LXi/H;-><init>(LXi/G;Loh/x;Loh/x;Loh/x;)V

    invoke-direct {v2, v3, p2}, LXi/I;-><init>(LXi/G;Ljava/security/SecureRandom;)V

    iput-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/d;->d:LXi/I;

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/d;->b:LOi/p;

    invoke-virtual {p1, v2}, LOi/p;->b(LBi/G;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/d;->g:Z

    return-void

    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown curve: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 6

    iget-boolean v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/d;->g:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/d;->b:LOi/p;

    invoke-virtual {v0}, LOi/p;->a()LBi/c;

    move-result-object v0

    invoke-virtual {v0}, LBi/c;->b()LXi/c;

    move-result-object v1

    check-cast v1, LXi/M;

    invoke-virtual {v0}, LBi/c;->a()LXi/c;

    move-result-object v0

    check-cast v0, LXi/L;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/d;->a:Ljava/lang/Object;

    instance-of v3, v2, Lhk/e;

    if-eqz v3, :cond_0

    check-cast v2, Lhk/e;

    new-instance v3, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/b;

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/d;->c:Ljava/lang/String;

    invoke-direct {v3, v4, v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/b;-><init>(Ljava/lang/String;LXi/M;Lhk/e;)V

    new-instance v1, Ljava/security/KeyPair;

    new-instance v4, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/d;->c:Ljava/lang/String;

    invoke-direct {v4, v5, v0, v3, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;-><init>(Ljava/lang/String;LXi/L;Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/b;Lhk/e;)V

    invoke-direct {v1, v3, v4}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v1

    :cond_0
    if-nez v2, :cond_1

    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/b;

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/d;->c:Ljava/lang/String;

    invoke-direct {v3, v4, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/b;-><init>(Ljava/lang/String;LXi/M;)V

    new-instance v1, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/d;->c:Ljava/lang/String;

    invoke-direct {v1, v4, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;-><init>(Ljava/lang/String;LXi/L;)V

    invoke-direct {v2, v3, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2

    :cond_1
    check-cast v2, Ljava/security/spec/ECParameterSpec;

    new-instance v3, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/b;

    iget-object v4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/d;->c:Ljava/lang/String;

    invoke-direct {v3, v4, v1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/b;-><init>(Ljava/lang/String;LXi/M;Ljava/security/spec/ECParameterSpec;)V

    new-instance v1, Ljava/security/KeyPair;

    new-instance v4, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;

    iget-object v5, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/d;->c:Ljava/lang/String;

    invoke-direct {v4, v5, v0, v3, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/a;-><init>(Ljava/lang/String;LXi/L;Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/b;Ljava/security/spec/ECParameterSpec;)V

    invoke-direct {v1, v3, v4}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "EC Key Pair Generator not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 0

    .line 1
    iput p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/d;->e:I

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/d;->f:Ljava/security/SecureRandom;

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/d;->a:Ljava/lang/Object;

    if-eqz p1, :cond_0

    :try_start_0
    check-cast p1, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/d;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "key size not configurable."

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "unknown key size."

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 2
    instance-of v0, p1, Lck/l;

    if-eqz v0, :cond_0

    check-cast p1, Lck/l;

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/d;->a(Lck/l;Ljava/security/SecureRandom;)V

    goto/16 :goto_4

    :cond_0
    instance-of v0, p1, Lhk/e;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lhk/e;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/d;->a:Ljava/lang/Object;

    new-instance p1, LXi/I;

    new-instance v2, LXi/G;

    invoke-virtual {v0}, Lhk/e;->a()Ljk/e;

    move-result-object v3

    invoke-virtual {v0}, Lhk/e;->b()Ljk/i;

    move-result-object v4

    invoke-virtual {v0}, Lhk/e;->d()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Lhk/e;->c()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v2, v3, v4, v5, v0}, LXi/G;-><init>(Ljk/e;Ljk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {p1, v2, p2}, LXi/I;-><init>(LXi/G;Ljava/security/SecureRandom;)V

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/d;->d:LXi/I;

    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/d;->b:LOi/p;

    invoke-virtual {p2, p1}, LOi/p;->b(LBi/G;)V

    :goto_1
    iput-boolean v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/d;->g:Z

    goto/16 :goto_4

    :cond_1
    instance-of v0, p1, Ljava/security/spec/ECParameterSpec;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/security/spec/ECParameterSpec;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/d;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->b(Ljava/security/spec/EllipticCurve;)Ljk/e;

    move-result-object p1

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getGenerator()Ljava/security/spec/ECPoint;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/h;->f(Ljk/e;Ljava/security/spec/ECPoint;)Ljk/i;

    move-result-object v2

    new-instance v3, LXi/I;

    new-instance v4, LXi/G;

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCofactor()I

    move-result v0

    int-to-long v6, v0

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v4, p1, v2, v5, v0}, LXi/G;-><init>(Ljk/e;Ljk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v3, v4, p2}, LXi/I;-><init>(LXi/G;Ljava/security/SecureRandom;)V

    iput-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/d;->d:LXi/I;

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/d;->b:LOi/p;

    invoke-virtual {p1, v3}, LOi/p;->b(LBi/G;)V

    goto :goto_1

    :cond_2
    instance-of v0, p1, Ljava/security/spec/ECGenParameterSpec;

    if-nez v0, :cond_6

    instance-of v2, p1, Lhk/b;

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    if-nez p1, :cond_4

    sget-object v0, Lorg/bouncycastle/jce/provider/a;->f:LTj/c;

    invoke-interface {v0}, LTj/c;->b()Lhk/e;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, LTj/c;->b()Lhk/e;

    move-result-object v0

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/d;->a:Ljava/lang/Object;

    new-instance p1, LXi/I;

    new-instance v2, LXi/G;

    invoke-virtual {v0}, Lhk/e;->a()Ljk/e;

    move-result-object v3

    invoke-virtual {v0}, Lhk/e;->b()Ljk/i;

    move-result-object v4

    invoke-virtual {v0}, Lhk/e;->d()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, Lhk/e;->c()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v2, v3, v4, v5, v0}, LXi/G;-><init>(Ljk/e;Ljk/i;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {p1, v2, p2}, LXi/I;-><init>(LXi/G;Ljava/security/SecureRandom;)V

    goto :goto_0

    :cond_4
    if-nez p1, :cond_5

    sget-object p2, Lorg/bouncycastle/jce/provider/a;->f:LTj/c;

    invoke-interface {p2}, LTj/c;->b()Lhk/e;

    move-result-object p2

    if-nez p2, :cond_5

    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "null parameter passed but no implicitCA set"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parameter object not a ECParameterSpec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    check-cast p1, Ljava/security/spec/ECGenParameterSpec;

    invoke-virtual {p1}, Ljava/security/spec/ECGenParameterSpec;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_7
    check-cast p1, Lhk/b;

    invoke-virtual {p1}, Lhk/b;->a()Ljava/lang/String;

    move-result-object p1

    :goto_3
    new-instance v0, Lck/l;

    invoke-direct {v0, p1}, Lck/l;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ecgost/d;->a(Lck/l;Ljava/security/SecureRandom;)V

    :goto_4
    return-void
.end method
