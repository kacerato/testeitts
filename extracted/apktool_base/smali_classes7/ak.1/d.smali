.class public Lak/d;
.super Ljavax/crypto/KeyGeneratorSpi;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:LBi/j;

.field public e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILBi/j;)V
    .locals 1

    invoke-direct {p0}, Ljavax/crypto/KeyGeneratorSpi;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lak/d;->e:Z

    iput-object p1, p0, Lak/d;->a:Ljava/lang/String;

    iput p2, p0, Lak/d;->c:I

    iput p2, p0, Lak/d;->b:I

    iput-object p3, p0, Lak/d;->d:LBi/j;

    return-void
.end method


# virtual methods
.method public engineGenerateKey()Ljavax/crypto/SecretKey;
    .locals 4

    iget-boolean v0, p0, Lak/d;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lak/d;->d:LBi/j;

    new-instance v1, LBi/G;

    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object v2

    iget v3, p0, Lak/d;->c:I

    invoke-direct {v1, v2, v3}, LBi/G;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v0, v1}, LBi/j;->b(LBi/G;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lak/d;->e:Z

    :cond_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lak/d;->d:LBi/j;

    invoke-virtual {v1}, LBi/j;->a()[B

    move-result-object v1

    iget-object v2, p0, Lak/d;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method public engineInit(ILjava/security/SecureRandom;)V
    .locals 2

    if-nez p2, :cond_0

    .line 1
    :try_start_0
    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object p2

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lak/d;->d:LBi/j;

    new-instance v1, LBi/G;

    invoke-direct {v1, p2, p1}, LBi/G;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v0, v1}, LBi/j;->b(LBi/G;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lak/d;->e:Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    new-instance p2, Ljava/security/InvalidParameterException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public engineInit(Ljava/security/SecureRandom;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lak/d;->d:LBi/j;

    new-instance v1, LBi/G;

    iget v2, p0, Lak/d;->c:I

    invoke-direct {v1, p1, v2}, LBi/G;-><init>(Ljava/security/SecureRandom;I)V

    invoke-virtual {v0, v1}, LBi/j;->b(LBi/G;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lak/d;->e:Z

    :cond_0
    return-void
.end method

.method public engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 3
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "Not Implemented"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
