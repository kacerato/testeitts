.class public LQj/g;
.super Ljava/security/KeyPairGenerator;
.source "SourceFile"


# instance fields
.field public a:LXi/a0;

.field public b:LOi/v;

.field public c:Lhk/n;

.field public d:I

.field public e:Ljava/security/SecureRandom;

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "GOST3410"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance v0, LOi/v;

    invoke-direct {v0}, LOi/v;-><init>()V

    iput-object v0, p0, LQj/g;->b:LOi/v;

    const/16 v0, 0x400

    iput v0, p0, LQj/g;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, LQj/g;->e:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, LQj/g;->f:Z

    return-void
.end method


# virtual methods
.method public final a(Lhk/n;Ljava/security/SecureRandom;)V
    .locals 5

    invoke-virtual {p1}, Lhk/n;->a()Lhk/p;

    move-result-object v0

    new-instance v1, LXi/a0;

    new-instance v2, LXi/c0;

    invoke-virtual {v0}, Lhk/p;->b()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Lhk/p;->c()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Lhk/p;->a()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, LXi/c0;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v1, p2, v2}, LXi/a0;-><init>(Ljava/security/SecureRandom;LXi/c0;)V

    iput-object v1, p0, LQj/g;->a:LXi/a0;

    iget-object p2, p0, LQj/g;->b:LOi/v;

    invoke-virtual {p2, v1}, LOi/v;->b(LBi/G;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, LQj/g;->f:Z

    iput-object p1, p0, LQj/g;->c:Lhk/n;

    return-void
.end method

.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 5

    iget-boolean v0, p0, LQj/g;->f:Z

    if-nez v0, :cond_0

    new-instance v0, Lhk/n;

    sget-object v1, Lyh/a;->q:Loh/x;

    invoke-virtual {v1}, Loh/x;->J()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lhk/n;-><init>(Ljava/lang/String;)V

    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, LQj/g;->a(Lhk/n;Ljava/security/SecureRandom;)V

    :cond_0
    iget-object v0, p0, LQj/g;->b:LOi/v;

    invoke-virtual {v0}, LOi/v;->a()LBi/c;

    move-result-object v0

    invoke-virtual {v0}, LBi/c;->b()LXi/c;

    move-result-object v1

    check-cast v1, LXi/e0;

    invoke-virtual {v0}, LBi/c;->a()LXi/c;

    move-result-object v0

    check-cast v0, LXi/d0;

    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, LQj/d;

    iget-object v4, p0, LQj/g;->c:Lhk/n;

    invoke-direct {v3, v1, v4}, LQj/d;-><init>(LXi/e0;Lhk/n;)V

    new-instance v1, LQj/c;

    iget-object v4, p0, LQj/g;->c:Lhk/n;

    invoke-direct {v1, v0, v4}, LQj/c;-><init>(LXi/d0;Lhk/n;)V

    invoke-direct {v2, v3, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 0

    .line 1
    iput p1, p0, LQj/g;->d:I

    iput-object p2, p0, LQj/g;->e:Ljava/security/SecureRandom;

    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 2
    instance-of v0, p1, Lhk/n;

    if-eqz v0, :cond_0

    check-cast p1, Lhk/n;

    invoke-virtual {p0, p1, p2}, LQj/g;->a(Lhk/n;Ljava/security/SecureRandom;)V

    return-void

    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "parameter object not a GOST3410ParameterSpec"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
