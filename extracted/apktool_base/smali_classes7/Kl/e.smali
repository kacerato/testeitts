.class public LKl/e;
.super Ljava/security/KeyPairGenerator;
.source "SourceFile"


# instance fields
.field public a:Loh/x;

.field public b:Lnl/e;

.field public c:Lnl/f;

.field public d:Ljava/security/SecureRandom;

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "SPHINCS256"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    sget-object v0, LSh/d;->h:Loh/x;

    iput-object v0, p0, LKl/e;->a:Loh/x;

    new-instance v0, Lnl/f;

    invoke-direct {v0}, Lnl/f;-><init>()V

    iput-object v0, p0, LKl/e;->c:Lnl/f;

    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, LKl/e;->d:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, LKl/e;->e:Z

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 5

    iget-boolean v0, p0, LKl/e;->e:Z

    if-nez v0, :cond_0

    new-instance v0, Lnl/e;

    iget-object v1, p0, LKl/e;->d:Ljava/security/SecureRandom;

    new-instance v2, LIi/P;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, LIi/P;-><init>(I)V

    invoke-direct {v0, v1, v2}, Lnl/e;-><init>(Ljava/security/SecureRandom;LBi/y;)V

    iput-object v0, p0, LKl/e;->b:Lnl/e;

    iget-object v1, p0, LKl/e;->c:Lnl/f;

    invoke-virtual {v1, v0}, Lnl/f;->b(LBi/G;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, LKl/e;->e:Z

    :cond_0
    iget-object v0, p0, LKl/e;->c:Lnl/f;

    invoke-virtual {v0}, Lnl/f;->a()LBi/c;

    move-result-object v0

    invoke-virtual {v0}, LBi/c;->b()LXi/c;

    move-result-object v1

    check-cast v1, Lnl/j;

    invoke-virtual {v0}, LBi/c;->a()LXi/c;

    move-result-object v0

    check-cast v0, Lnl/i;

    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, LKl/b;

    iget-object v4, p0, LKl/e;->a:Loh/x;

    invoke-direct {v3, v4, v1}, LKl/b;-><init>(Loh/x;Lnl/j;)V

    new-instance v1, LKl/a;

    iget-object v4, p0, LKl/e;->a:Loh/x;

    invoke-direct {v1, v4, v0}, LKl/a;-><init>(Loh/x;Lnl/i;)V

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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 2
    instance-of v0, p1, LOl/u;

    if-eqz v0, :cond_2

    check-cast p1, LOl/u;

    invoke-virtual {p1}, LOl/u;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHA512-256"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x100

    if-eqz v0, :cond_0

    sget-object p1, LSh/d;->h:Loh/x;

    iput-object p1, p0, LKl/e;->a:Loh/x;

    new-instance p1, Lnl/e;

    new-instance v0, LIi/P;

    invoke-direct {v0, v1}, LIi/P;-><init>(I)V

    invoke-direct {p1, p2, v0}, Lnl/e;-><init>(Ljava/security/SecureRandom;LBi/y;)V

    :goto_0
    iput-object p1, p0, LKl/e;->b:Lnl/e;

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, LOl/u;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SHA3-256"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, LSh/d;->j:Loh/x;

    iput-object p1, p0, LKl/e;->a:Loh/x;

    new-instance p1, Lnl/e;

    new-instance v0, LIi/N;

    invoke-direct {v0, v1}, LIi/N;-><init>(I)V

    invoke-direct {p1, p2, v0}, Lnl/e;-><init>(Ljava/security/SecureRandom;LBi/y;)V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, LKl/e;->c:Lnl/f;

    iget-object p2, p0, LKl/e;->b:Lnl/e;

    invoke-virtual {p1, p2}, Lnl/f;->b(LBi/G;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, LKl/e;->e:Z

    return-void

    :cond_2
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "parameter object not a SPHINCS256KeyGenParameterSpec"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
