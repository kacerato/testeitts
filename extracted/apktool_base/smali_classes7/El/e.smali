.class public LEl/e;
.super Ljava/security/KeyPairGenerator;
.source "SourceFile"


# instance fields
.field public a:Lhl/e;

.field public b:Ljava/security/SecureRandom;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "NH"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance v0, Lhl/e;

    invoke-direct {v0}, Lhl/e;-><init>()V

    iput-object v0, p0, LEl/e;->a:Lhl/e;

    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, LEl/e;->b:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, LEl/e;->c:Z

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 4

    iget-boolean v0, p0, LEl/e;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LEl/e;->a:Lhl/e;

    new-instance v1, LBi/G;

    iget-object v2, p0, LEl/e;->b:Ljava/security/SecureRandom;

    const/16 v3, 0x400

    invoke-direct {v1, v2, v3}, LBi/G;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v0, v1}, Lhl/e;->b(LBi/G;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, LEl/e;->c:Z

    :cond_0
    iget-object v0, p0, LEl/e;->a:Lhl/e;

    invoke-virtual {v0}, Lhl/e;->a()LBi/c;

    move-result-object v0

    invoke-virtual {v0}, LBi/c;->b()LXi/c;

    move-result-object v1

    check-cast v1, Lhl/h;

    invoke-virtual {v0}, LBi/c;->a()LXi/c;

    move-result-object v0

    check-cast v0, Lhl/g;

    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, LEl/b;

    invoke-direct {v3, v1}, LEl/b;-><init>(Lhl/h;)V

    new-instance v1, LEl/a;

    invoke-direct {v1, v0}, LEl/a;-><init>(Lhl/g;)V

    invoke-direct {v2, v3, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v2
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 2

    const/16 v0, 0x400

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, LEl/e;->a:Lhl/e;

    new-instance v1, LBi/G;

    invoke-direct {v1, p2, v0}, LBi/G;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {p1, v1}, Lhl/e;->b(LBi/G;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, LEl/e;->c:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "strength must be 1024 bits"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 2
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "parameter object not recognised"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
