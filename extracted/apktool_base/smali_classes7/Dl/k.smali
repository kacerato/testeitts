.class public LDl/k;
.super Ljava/security/KeyPairGenerator;
.source "SourceFile"


# instance fields
.field public a:LRl/l;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "McEliece"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 4

    iget-object v0, p0, LDl/k;->a:LRl/l;

    invoke-virtual {v0}, LRl/l;->a()LBi/c;

    move-result-object v0

    invoke-virtual {v0}, LBi/c;->a()LXi/c;

    move-result-object v1

    check-cast v1, LRl/q;

    invoke-virtual {v0}, LBi/c;->b()LXi/c;

    move-result-object v0

    check-cast v0, LRl/r;

    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, LDl/d;

    invoke-direct {v3, v0}, LDl/d;-><init>(LRl/r;)V

    new-instance v0, LDl/c;

    invoke-direct {v0, v1}, LDl/c;-><init>(LRl/q;)V

    invoke-direct {v2, v3, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 0

    .line 1
    new-instance p1, LOl/m;

    invoke-direct {p1}, LOl/m;-><init>()V

    :try_start_0
    invoke-virtual {p0, p1, p2}, LDl/k;->initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 2
    new-instance v0, LRl/l;

    invoke-direct {v0}, LRl/l;-><init>()V

    iput-object v0, p0, LDl/k;->a:LRl/l;

    check-cast p1, LOl/m;

    new-instance v0, LRl/k;

    new-instance v1, LRl/o;

    invoke-virtual {p1}, LOl/m;->b()I

    move-result v2

    invoke-virtual {p1}, LOl/m;->d()I

    move-result p1

    invoke-direct {v1, v2, p1}, LRl/o;-><init>(II)V

    invoke-direct {v0, p2, v1}, LRl/k;-><init>(Ljava/security/SecureRandom;LRl/o;)V

    iget-object p1, p0, LDl/k;->a:LRl/l;

    invoke-virtual {p1, v0}, LRl/l;->b(LBi/G;)V

    return-void
.end method
