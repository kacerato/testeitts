.class public LCl/e;
.super Ljava/security/KeyPairGenerator;
.source "SourceFile"


# instance fields
.field public a:LBi/G;

.field public b:Loh/x;

.field public c:LBi/d;

.field public d:Ljava/security/SecureRandom;

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "LMS"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/s;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/lms/s;-><init>()V

    iput-object v0, p0, LCl/e;->c:LBi/d;

    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, LCl/e;->d:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, LCl/e;->e:Z

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 4

    iget-boolean v0, p0, LCl/e;->e:Z

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/r;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/lms/u;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/lms/A;->f:Lorg/bouncycastle/pqc/crypto/lms/A;

    sget-object v3, Lorg/bouncycastle/pqc/crypto/lms/j;->j:Lorg/bouncycastle/pqc/crypto/lms/j;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/lms/u;-><init>(Lorg/bouncycastle/pqc/crypto/lms/A;Lorg/bouncycastle/pqc/crypto/lms/j;)V

    iget-object v2, p0, LCl/e;->d:Ljava/security/SecureRandom;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/lms/r;-><init>(Lorg/bouncycastle/pqc/crypto/lms/u;Ljava/security/SecureRandom;)V

    iput-object v0, p0, LCl/e;->a:LBi/G;

    iget-object v1, p0, LCl/e;->c:LBi/d;

    invoke-interface {v1, v0}, LBi/d;->b(LBi/G;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, LCl/e;->e:Z

    :cond_0
    iget-object v0, p0, LCl/e;->c:LBi/d;

    invoke-interface {v0}, LBi/d;->a()LBi/c;

    move-result-object v0

    iget-object v1, p0, LCl/e;->c:LBi/d;

    instance-of v1, v1, Lorg/bouncycastle/pqc/crypto/lms/s;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, LBi/c;->b()LXi/c;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/lms/w;

    invoke-virtual {v0}, LBi/c;->a()LXi/c;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/lms/v;

    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, LCl/b;

    invoke-direct {v3, v1}, LCl/b;-><init>(Lorg/bouncycastle/pqc/crypto/lms/t;)V

    new-instance v1, LCl/a;

    invoke-direct {v1, v0}, LCl/a;-><init>(Lorg/bouncycastle/pqc/crypto/lms/t;)V

    invoke-direct {v2, v3, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2

    :cond_1
    invoke-virtual {v0}, LBi/c;->b()LXi/c;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/crypto/lms/g;

    invoke-virtual {v0}, LBi/c;->a()LXi/c;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/lms/f;

    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, LCl/b;

    invoke-direct {v3, v1}, LCl/b;-><init>(Lorg/bouncycastle/pqc/crypto/lms/t;)V

    new-instance v1, LCl/a;

    invoke-direct {v1, v0}, LCl/a;-><init>(Lorg/bouncycastle/pqc/crypto/lms/t;)V

    invoke-direct {v2, v3, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "use AlgorithmParameterSpec"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 2
    instance-of v0, p1, LOl/j;

    if-eqz v0, :cond_0

    check-cast p1, LOl/j;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/r;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/lms/u;

    invoke-virtual {p1}, LOl/j;->c()Lorg/bouncycastle/pqc/crypto/lms/A;

    move-result-object v2

    invoke-virtual {p1}, LOl/j;->b()Lorg/bouncycastle/pqc/crypto/lms/j;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lorg/bouncycastle/pqc/crypto/lms/u;-><init>(Lorg/bouncycastle/pqc/crypto/lms/A;Lorg/bouncycastle/pqc/crypto/lms/j;)V

    invoke-direct {v0, v1, p2}, Lorg/bouncycastle/pqc/crypto/lms/r;-><init>(Lorg/bouncycastle/pqc/crypto/lms/u;Ljava/security/SecureRandom;)V

    iput-object v0, p0, LCl/e;->a:LBi/G;

    new-instance p1, Lorg/bouncycastle/pqc/crypto/lms/s;

    invoke-direct {p1}, Lorg/bouncycastle/pqc/crypto/lms/s;-><init>()V

    :goto_0
    iput-object p1, p0, LCl/e;->c:LBi/d;

    iget-object p2, p0, LCl/e;->a:LBi/G;

    invoke-interface {p1, p2}, LBi/d;->b(LBi/G;)V

    goto/16 :goto_3

    :cond_0
    instance-of v0, p1, LOl/h;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, LOl/h;

    invoke-virtual {p1}, LOl/h;->a()[LOl/j;

    move-result-object p1

    array-length v0, p1

    new-array v0, v0, [Lorg/bouncycastle/pqc/crypto/lms/u;

    :goto_1
    array-length v2, p1

    if-eq v1, v2, :cond_1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/lms/u;

    aget-object v3, p1, v1

    invoke-virtual {v3}, LOl/j;->c()Lorg/bouncycastle/pqc/crypto/lms/A;

    move-result-object v3

    aget-object v4, p1, v1

    invoke-virtual {v4}, LOl/j;->b()Lorg/bouncycastle/pqc/crypto/lms/j;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/lms/u;-><init>(Lorg/bouncycastle/pqc/crypto/lms/A;Lorg/bouncycastle/pqc/crypto/lms/j;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    new-instance p1, Lorg/bouncycastle/pqc/crypto/lms/d;

    invoke-direct {p1, v0, p2}, Lorg/bouncycastle/pqc/crypto/lms/d;-><init>([Lorg/bouncycastle/pqc/crypto/lms/u;Ljava/security/SecureRandom;)V

    iput-object p1, p0, LCl/e;->a:LBi/G;

    new-instance p1, Lorg/bouncycastle/pqc/crypto/lms/e;

    invoke-direct {p1}, Lorg/bouncycastle/pqc/crypto/lms/e;-><init>()V

    goto :goto_0

    :cond_2
    instance-of v0, p1, LOl/k;

    if-eqz v0, :cond_3

    check-cast p1, LOl/k;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/r;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/lms/u;

    invoke-virtual {p1}, LOl/k;->b()Lorg/bouncycastle/pqc/crypto/lms/A;

    move-result-object v2

    invoke-virtual {p1}, LOl/k;->a()Lorg/bouncycastle/pqc/crypto/lms/j;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lorg/bouncycastle/pqc/crypto/lms/u;-><init>(Lorg/bouncycastle/pqc/crypto/lms/A;Lorg/bouncycastle/pqc/crypto/lms/j;)V

    invoke-direct {v0, v1, p2}, Lorg/bouncycastle/pqc/crypto/lms/r;-><init>(Lorg/bouncycastle/pqc/crypto/lms/u;Ljava/security/SecureRandom;)V

    iput-object v0, p0, LCl/e;->a:LBi/G;

    new-instance p1, Lorg/bouncycastle/pqc/crypto/lms/s;

    invoke-direct {p1}, Lorg/bouncycastle/pqc/crypto/lms/s;-><init>()V

    goto :goto_0

    :cond_3
    instance-of v0, p1, LOl/i;

    if-eqz v0, :cond_5

    check-cast p1, LOl/i;

    invoke-virtual {p1}, LOl/i;->a()[LOl/k;

    move-result-object p1

    array-length v0, p1

    new-array v0, v0, [Lorg/bouncycastle/pqc/crypto/lms/u;

    :goto_2
    array-length v2, p1

    if-eq v1, v2, :cond_4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/lms/u;

    aget-object v3, p1, v1

    invoke-virtual {v3}, LOl/k;->b()Lorg/bouncycastle/pqc/crypto/lms/A;

    move-result-object v3

    aget-object v4, p1, v1

    invoke-virtual {v4}, LOl/k;->a()Lorg/bouncycastle/pqc/crypto/lms/j;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/lms/u;-><init>(Lorg/bouncycastle/pqc/crypto/lms/A;Lorg/bouncycastle/pqc/crypto/lms/j;)V

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    new-instance p1, Lorg/bouncycastle/pqc/crypto/lms/d;

    invoke-direct {p1, v0, p2}, Lorg/bouncycastle/pqc/crypto/lms/d;-><init>([Lorg/bouncycastle/pqc/crypto/lms/u;Ljava/security/SecureRandom;)V

    iput-object p1, p0, LCl/e;->a:LBi/G;

    new-instance p1, Lorg/bouncycastle/pqc/crypto/lms/e;

    invoke-direct {p1}, Lorg/bouncycastle/pqc/crypto/lms/e;-><init>()V

    goto/16 :goto_0

    :goto_3
    const/4 p1, 0x1

    iput-boolean p1, p0, LCl/e;->e:Z

    return-void

    :cond_5
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "parameter object not a LMSParameterSpec/LMSHSSParameterSpec"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
