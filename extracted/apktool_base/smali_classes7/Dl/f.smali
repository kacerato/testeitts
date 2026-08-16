.class public LDl/f;
.super Ljava/security/KeyPairGenerator;
.source "SourceFile"


# instance fields
.field public a:LRl/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "McEliece-CCA2"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 4

    iget-object v0, p0, LDl/f;->a:LRl/c;

    invoke-virtual {v0}, LRl/c;->a()LBi/c;

    move-result-object v0

    invoke-virtual {v0}, LBi/c;->a()LXi/c;

    move-result-object v1

    check-cast v1, LRl/g;

    invoke-virtual {v0}, LBi/c;->b()LXi/c;

    move-result-object v0

    check-cast v0, LRl/h;

    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, LDl/b;

    invoke-direct {v3, v0}, LDl/b;-><init>(LRl/h;)V

    new-instance v0, LDl/a;

    invoke-direct {v0, v1}, LDl/a;-><init>(LRl/g;)V

    invoke-direct {v2, v3, v0}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 1

    .line 1
    new-instance p1, LRl/c;

    invoke-direct {p1}, LRl/c;-><init>()V

    iput-object p1, p0, LDl/f;->a:LRl/c;

    new-instance p1, LRl/b;

    new-instance v0, LRl/e;

    invoke-direct {v0}, LRl/e;-><init>()V

    invoke-direct {p1, p2, v0}, LRl/b;-><init>(Ljava/security/SecureRandom;LRl/e;)V

    iget-object p2, p0, LDl/f;->a:LRl/c;

    invoke-virtual {p2, p1}, LRl/c;->b(LBi/G;)V

    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 2
    new-instance v0, LRl/c;

    invoke-direct {v0}, LRl/c;-><init>()V

    iput-object v0, p0, LDl/f;->a:LRl/c;

    check-cast p1, LOl/l;

    new-instance v0, LRl/b;

    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object v1

    new-instance v2, LRl/e;

    invoke-virtual {p1}, LOl/l;->c()I

    move-result v3

    invoke-virtual {p1}, LOl/l;->e()I

    move-result v4

    invoke-virtual {p1}, LOl/l;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, v4, p1}, LRl/e;-><init>(IILjava/lang/String;)V

    invoke-direct {v0, v1, v2}, LRl/b;-><init>(Ljava/security/SecureRandom;LRl/e;)V

    iget-object p1, p0, LDl/f;->a:LRl/c;

    invoke-virtual {p1, v0}, LRl/c;->b(LBi/G;)V

    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 3
    new-instance v0, LRl/c;

    invoke-direct {v0}, LRl/c;-><init>()V

    iput-object v0, p0, LDl/f;->a:LRl/c;

    check-cast p1, LOl/l;

    new-instance v0, LRl/b;

    new-instance v1, LRl/e;

    invoke-virtual {p1}, LOl/l;->c()I

    move-result v2

    invoke-virtual {p1}, LOl/l;->e()I

    move-result v3

    invoke-virtual {p1}, LOl/l;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, v3, p1}, LRl/e;-><init>(IILjava/lang/String;)V

    invoke-direct {v0, p2, v1}, LRl/b;-><init>(Ljava/security/SecureRandom;LRl/e;)V

    iget-object p1, p0, LDl/f;->a:LRl/c;

    invoke-virtual {p1, v0}, LRl/c;->b(LBi/G;)V

    return-void
.end method
