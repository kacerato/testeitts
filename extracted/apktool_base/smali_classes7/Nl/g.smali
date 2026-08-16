.class public LNl/g;
.super Ljava/security/KeyPairGenerator;
.source "SourceFile"


# instance fields
.field public a:Lql/s;

.field public b:Loh/x;

.field public c:Lql/t;

.field public d:Ljava/security/SecureRandom;

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "XMSS"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance v0, Lql/t;

    invoke-direct {v0}, Lql/t;-><init>()V

    iput-object v0, p0, LNl/g;->c:Lql/t;

    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, LNl/g;->d:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, LNl/g;->e:Z

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 5

    iget-boolean v0, p0, LNl/g;->e:Z

    if-nez v0, :cond_0

    new-instance v0, Lql/s;

    new-instance v1, Lql/H;

    new-instance v2, LIi/O;

    invoke-direct {v2}, LIi/O;-><init>()V

    const/16 v3, 0xa

    invoke-direct {v1, v3, v2}, Lql/H;-><init>(ILBi/y;)V

    iget-object v2, p0, LNl/g;->d:Ljava/security/SecureRandom;

    invoke-direct {v0, v1, v2}, Lql/s;-><init>(Lql/H;Ljava/security/SecureRandom;)V

    iput-object v0, p0, LNl/g;->a:Lql/s;

    iget-object v1, p0, LNl/g;->c:Lql/t;

    invoke-virtual {v1, v0}, Lql/t;->b(LBi/G;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, LNl/g;->e:Z

    :cond_0
    iget-object v0, p0, LNl/g;->c:Lql/t;

    invoke-virtual {v0}, Lql/t;->a()LBi/c;

    move-result-object v0

    invoke-virtual {v0}, LBi/c;->b()LXi/c;

    move-result-object v1

    check-cast v1, Lql/J;

    invoke-virtual {v0}, LBi/c;->a()LXi/c;

    move-result-object v0

    check-cast v0, Lql/I;

    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, LNl/d;

    iget-object v4, p0, LNl/g;->b:Loh/x;

    invoke-direct {v3, v4, v1}, LNl/d;-><init>(Loh/x;Lql/J;)V

    new-instance v1, LNl/c;

    iget-object v4, p0, LNl/g;->b:Loh/x;

    invoke-direct {v1, v4, v0}, LNl/c;-><init>(Loh/x;Lql/I;)V

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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 2
    instance-of v0, p1, LOl/x;

    if-eqz v0, :cond_4

    check-cast p1, LOl/x;

    invoke-virtual {p1}, LOl/x;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHA256"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, LSh/d;->c:Loh/x;

    iput-object v0, p0, LNl/g;->b:Loh/x;

    new-instance v0, Lql/s;

    new-instance v1, Lql/H;

    invoke-virtual {p1}, LOl/x;->a()I

    move-result p1

    new-instance v2, LIi/L;

    invoke-direct {v2}, LIi/L;-><init>()V

    invoke-direct {v1, p1, v2}, Lql/H;-><init>(ILBi/y;)V

    invoke-direct {v0, v1, p2}, Lql/s;-><init>(Lql/H;Ljava/security/SecureRandom;)V

    :goto_0
    iput-object v0, p0, LNl/g;->a:Lql/s;

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, LOl/x;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHA512"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, LSh/d;->e:Loh/x;

    iput-object v0, p0, LNl/g;->b:Loh/x;

    new-instance v0, Lql/s;

    new-instance v1, Lql/H;

    invoke-virtual {p1}, LOl/x;->a()I

    move-result p1

    new-instance v2, LIi/O;

    invoke-direct {v2}, LIi/O;-><init>()V

    invoke-direct {v1, p1, v2}, Lql/H;-><init>(ILBi/y;)V

    invoke-direct {v0, v1, p2}, Lql/s;-><init>(Lql/H;Ljava/security/SecureRandom;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, LOl/x;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHAKE128"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, LSh/d;->m:Loh/x;

    iput-object v0, p0, LNl/g;->b:Loh/x;

    new-instance v0, Lql/s;

    new-instance v1, Lql/H;

    invoke-virtual {p1}, LOl/x;->a()I

    move-result p1

    new-instance v2, LIi/Q;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, LIi/Q;-><init>(I)V

    invoke-direct {v1, p1, v2}, Lql/H;-><init>(ILBi/y;)V

    invoke-direct {v0, v1, p2}, Lql/s;-><init>(Lql/H;Ljava/security/SecureRandom;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, LOl/x;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHAKE256"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, LSh/d;->n:Loh/x;

    iput-object v0, p0, LNl/g;->b:Loh/x;

    new-instance v0, Lql/s;

    new-instance v1, Lql/H;

    invoke-virtual {p1}, LOl/x;->a()I

    move-result p1

    new-instance v2, LIi/Q;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, LIi/Q;-><init>(I)V

    invoke-direct {v1, p1, v2}, Lql/H;-><init>(ILBi/y;)V

    invoke-direct {v0, v1, p2}, Lql/s;-><init>(Lql/H;Ljava/security/SecureRandom;)V

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p1, p0, LNl/g;->c:Lql/t;

    iget-object p2, p0, LNl/g;->a:Lql/s;

    invoke-virtual {p1, p2}, Lql/t;->b(LBi/G;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, LNl/g;->e:Z

    return-void

    :cond_4
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "parameter object not a XMSSParameterSpec"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
