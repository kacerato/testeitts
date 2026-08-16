.class public LJl/e;
.super Ljavax/crypto/KeyGeneratorSpi;
.source "SourceFile"


# instance fields
.field public a:Lck/p;

.field public b:Ljava/security/SecureRandom;

.field public c:Lck/o;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljavax/crypto/KeyGeneratorSpi;-><init>()V

    return-void
.end method


# virtual methods
.method public engineGenerateKey()Ljavax/crypto/SecretKey;
    .locals 5

    iget-object v0, p0, LJl/e;->a:Lck/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lck/p;->c()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, LJl/b;

    new-instance v1, Lml/d;

    iget-object v2, p0, LJl/e;->b:Ljava/security/SecureRandom;

    invoke-direct {v1, v2}, Lml/d;-><init>(Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, LJl/b;->a()Lml/j;

    move-result-object v0

    invoke-virtual {v1, v0}, Lml/d;->a(LXi/c;)LBi/P;

    move-result-object v0

    new-instance v1, LHj/w;

    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v0}, LBi/P;->f()[B

    move-result-object v3

    iget-object v4, p0, LJl/e;->a:Lck/p;

    invoke-virtual {v4}, Lck/p;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-interface {v0}, LBi/P;->e()[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, LHj/w;-><init>(Ljavax/crypto/SecretKey;[B)V

    :try_start_0
    invoke-interface {v0}, Ljavax/security/auth/Destroyable;->destroy()V
    :try_end_0
    .catch Ljavax/security/auth/DestroyFailedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "key cleanup failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, LJl/e;->c:Lck/o;

    invoke-virtual {v0}, Lck/o;->d()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, LJl/a;

    new-instance v1, Lml/c;

    invoke-virtual {v0}, LJl/a;->a()Lml/i;

    move-result-object v0

    invoke-direct {v1, v0}, Lml/c;-><init>(Lml/g;)V

    iget-object v0, p0, LJl/e;->c:Lck/o;

    invoke-virtual {v0}, Lck/o;->a()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lml/c;->b([B)[B

    move-result-object v1

    new-instance v2, LHj/w;

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v4, p0, LJl/e;->c:Lck/o;

    invoke-virtual {v4}, Lck/o;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-direct {v2, v3, v0}, LHj/w;-><init>(Ljavax/crypto/SecretKey;[B)V

    invoke-static {v1}, Lorg/bouncycastle/util/a;->n([B)V

    return-object v2
.end method

.method public engineInit(ILjava/security/SecureRandom;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Operation not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineInit(Ljava/security/SecureRandom;)V
    .locals 1

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 3
    iput-object p2, p0, LJl/e;->b:Ljava/security/SecureRandom;

    instance-of p2, p1, Lck/p;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    check-cast p1, Lck/p;

    iput-object p1, p0, LJl/e;->a:Lck/p;

    iput-object v0, p0, LJl/e;->c:Lck/o;

    goto :goto_0

    :cond_0
    instance-of p2, p1, Lck/o;

    if-eqz p2, :cond_1

    iput-object v0, p0, LJl/e;->a:Lck/p;

    check-cast p1, Lck/o;

    iput-object p1, p0, LJl/e;->c:Lck/o;

    :goto_0
    return-void

    :cond_1
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "unknown spec"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
