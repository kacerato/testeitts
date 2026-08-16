.class public LQj/a;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/util/b;
.source "SourceFile"


# instance fields
.field public b:Ljava/security/SecureRandom;

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/b;-><init>()V

    const/16 v0, 0x400

    iput v0, p0, LQj/a;->c:I

    return-void
.end method


# virtual methods
.method public engineGenerateParameters()Ljava/security/AlgorithmParameters;
    .locals 6

    new-instance v0, LOi/w;

    invoke-direct {v0}, LOi/w;-><init>()V

    iget-object v1, p0, LQj/a;->b:Ljava/security/SecureRandom;

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    iget v3, p0, LQj/a;->c:I

    invoke-virtual {v0, v3, v2, v1}, LOi/w;->b(IILjava/security/SecureRandom;)V

    goto :goto_0

    :cond_0
    iget v1, p0, LQj/a;->c:I

    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, LOi/w;->b(IILjava/security/SecureRandom;)V

    :goto_0
    invoke-virtual {v0}, LOi/w;->a()LXi/c0;

    move-result-object v0

    :try_start_0
    const-string v1, "GOST3410"

    invoke-virtual {p0, v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/b;->a(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    new-instance v2, Lhk/n;

    new-instance v3, Lhk/p;

    invoke-virtual {v0}, LXi/c0;->b()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, LXi/c0;->c()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v0}, LXi/c0;->a()Ljava/math/BigInteger;

    move-result-object v0

    invoke-direct {v3, v4, v5, v0}, Lhk/p;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v2, v3}, Lhk/n;-><init>(Lhk/p;)V

    invoke-virtual {v1, v2}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public engineInit(ILjava/security/SecureRandom;)V
    .locals 0

    .line 1
    iput p1, p0, LQj/a;->c:I

    iput-object p2, p0, LQj/a;->b:Ljava/security/SecureRandom;

    return-void
.end method

.method public engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 2
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "No supported AlgorithmParameterSpec for GOST3410 parameter generation."

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
