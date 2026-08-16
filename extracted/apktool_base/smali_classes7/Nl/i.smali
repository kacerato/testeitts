.class public LNl/i;
.super Ljava/security/KeyPairGenerator;
.source "SourceFile"


# instance fields
.field public a:Lql/w;

.field public b:Lql/x;

.field public c:Loh/x;

.field public d:Ljava/security/SecureRandom;

.field public e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "XMSSMT"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    new-instance v0, Lql/x;

    invoke-direct {v0}, Lql/x;-><init>()V

    iput-object v0, p0, LNl/i;->b:Lql/x;

    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, LNl/i;->d:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-boolean v0, p0, LNl/i;->e:Z

    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 5

    iget-boolean v0, p0, LNl/i;->e:Z

    if-nez v0, :cond_0

    new-instance v0, Lql/w;

    new-instance v1, Lql/z;

    new-instance v2, LIi/O;

    invoke-direct {v2}, LIi/O;-><init>()V

    const/16 v3, 0xa

    const/16 v4, 0x14

    invoke-direct {v1, v3, v4, v2}, Lql/z;-><init>(IILBi/y;)V

    iget-object v2, p0, LNl/i;->d:Ljava/security/SecureRandom;

    invoke-direct {v0, v1, v2}, Lql/w;-><init>(Lql/z;Ljava/security/SecureRandom;)V

    iput-object v0, p0, LNl/i;->a:Lql/w;

    iget-object v1, p0, LNl/i;->b:Lql/x;

    invoke-virtual {v1, v0}, Lql/x;->b(LBi/G;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, LNl/i;->e:Z

    :cond_0
    iget-object v0, p0, LNl/i;->b:Lql/x;

    invoke-virtual {v0}, Lql/x;->a()LBi/c;

    move-result-object v0

    invoke-virtual {v0}, LBi/c;->b()LXi/c;

    move-result-object v1

    check-cast v1, Lql/B;

    invoke-virtual {v0}, LBi/c;->a()LXi/c;

    move-result-object v0

    check-cast v0, Lql/A;

    new-instance v2, Ljava/security/KeyPair;

    new-instance v3, LNl/b;

    iget-object v4, p0, LNl/i;->c:Loh/x;

    invoke-direct {v3, v4, v1}, LNl/b;-><init>(Loh/x;Lql/B;)V

    new-instance v1, LNl/a;

    iget-object v4, p0, LNl/i;->c:Loh/x;

    invoke-direct {v1, v4, v0}, LNl/a;-><init>(Loh/x;Lql/A;)V

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
    instance-of v0, p1, LOl/w;

    if-eqz v0, :cond_4

    check-cast p1, LOl/w;

    invoke-virtual {p1}, LOl/w;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHA256"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, LSh/d;->c:Loh/x;

    iput-object v0, p0, LNl/i;->c:Loh/x;

    new-instance v0, Lql/w;

    new-instance v1, Lql/z;

    invoke-virtual {p1}, LOl/w;->a()I

    move-result v2

    invoke-virtual {p1}, LOl/w;->b()I

    move-result p1

    new-instance v3, LIi/L;

    invoke-direct {v3}, LIi/L;-><init>()V

    invoke-direct {v1, v2, p1, v3}, Lql/z;-><init>(IILBi/y;)V

    invoke-direct {v0, v1, p2}, Lql/w;-><init>(Lql/z;Ljava/security/SecureRandom;)V

    :goto_0
    iput-object v0, p0, LNl/i;->a:Lql/w;

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, LOl/w;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHA512"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, LSh/d;->e:Loh/x;

    iput-object v0, p0, LNl/i;->c:Loh/x;

    new-instance v0, Lql/w;

    new-instance v1, Lql/z;

    invoke-virtual {p1}, LOl/w;->a()I

    move-result v2

    invoke-virtual {p1}, LOl/w;->b()I

    move-result p1

    new-instance v3, LIi/O;

    invoke-direct {v3}, LIi/O;-><init>()V

    invoke-direct {v1, v2, p1, v3}, Lql/z;-><init>(IILBi/y;)V

    invoke-direct {v0, v1, p2}, Lql/w;-><init>(Lql/z;Ljava/security/SecureRandom;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, LOl/w;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHAKE128"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, LSh/d;->m:Loh/x;

    iput-object v0, p0, LNl/i;->c:Loh/x;

    new-instance v0, Lql/w;

    new-instance v1, Lql/z;

    invoke-virtual {p1}, LOl/w;->a()I

    move-result v2

    invoke-virtual {p1}, LOl/w;->b()I

    move-result p1

    new-instance v3, LIi/Q;

    const/16 v4, 0x80

    invoke-direct {v3, v4}, LIi/Q;-><init>(I)V

    invoke-direct {v1, v2, p1, v3}, Lql/z;-><init>(IILBi/y;)V

    invoke-direct {v0, v1, p2}, Lql/w;-><init>(Lql/z;Ljava/security/SecureRandom;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, LOl/w;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHAKE256"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, LSh/d;->n:Loh/x;

    iput-object v0, p0, LNl/i;->c:Loh/x;

    new-instance v0, Lql/w;

    new-instance v1, Lql/z;

    invoke-virtual {p1}, LOl/w;->a()I

    move-result v2

    invoke-virtual {p1}, LOl/w;->b()I

    move-result p1

    new-instance v3, LIi/Q;

    const/16 v4, 0x100

    invoke-direct {v3, v4}, LIi/Q;-><init>(I)V

    invoke-direct {v1, v2, p1, v3}, Lql/z;-><init>(IILBi/y;)V

    invoke-direct {v0, v1, p2}, Lql/w;-><init>(Lql/z;Ljava/security/SecureRandom;)V

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p1, p0, LNl/i;->b:Lql/x;

    iget-object p2, p0, LNl/i;->a:Lql/w;

    invoke-virtual {p1, p2}, Lql/x;->b(LBi/G;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, LNl/i;->e:Z

    return-void

    :cond_4
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "parameter object not a XMSSMTParameterSpec"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
