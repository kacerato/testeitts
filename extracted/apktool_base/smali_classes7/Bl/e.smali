.class public LBl/e;
.super Ljavax/crypto/KeyGeneratorSpi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LBl/e$a;,
        LBl/e$b;,
        LBl/e$c;
    }
.end annotation


# instance fields
.field public a:Lck/p;

.field public b:Ljava/security/SecureRandom;

.field public c:Lck/o;

.field public d:Lcl/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, LBl/e;-><init>(Lcl/i;)V

    return-void
.end method

.method public constructor <init>(Lcl/i;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljavax/crypto/KeyGeneratorSpi;-><init>()V

    iput-object p1, p0, LBl/e;->d:Lcl/i;

    return-void
.end method


# virtual methods
.method public engineGenerateKey()Ljavax/crypto/SecretKey;
    .locals 5

    iget-object v0, p0, LBl/e;->a:Lck/p;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lck/p;->c()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, LBl/b;

    new-instance v2, Lcl/e;

    iget-object v3, p0, LBl/e;->b:Ljava/security/SecureRandom;

    invoke-direct {v2, v3}, Lcl/e;-><init>(Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, LBl/b;->a()Lcl/k;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcl/e;->a(LXi/c;)LBi/P;

    move-result-object v0

    invoke-interface {v0}, LBi/P;->f()[B

    move-result-object v2

    iget-object v3, p0, LBl/e;->a:Lck/p;

    invoke-virtual {v3}, Lck/p;->b()I

    move-result v3

    add-int/lit8 v3, v3, 0x7

    div-int/lit8 v3, v3, 0x8

    invoke-static {v2, v1, v3}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v1

    invoke-static {v2}, Lorg/bouncycastle/util/a;->n([B)V

    new-instance v2, LHj/w;

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v4, p0, LBl/e;->a:Lck/p;

    invoke-virtual {v4}, Lck/p;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-interface {v0}, LBi/P;->e()[B

    move-result-object v1

    invoke-direct {v2, v3, v1}, LHj/w;-><init>(Ljavax/crypto/SecretKey;[B)V

    :try_start_0
    invoke-interface {v0}, Ljavax/security/auth/Destroyable;->destroy()V
    :try_end_0
    .catch Ljavax/security/auth/DestroyFailedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "key cleanup failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, LBl/e;->c:Lck/o;

    invoke-virtual {v0}, Lck/o;->d()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, LBl/a;

    new-instance v2, Lcl/d;

    invoke-virtual {v0}, LBl/a;->a()Lcl/j;

    move-result-object v0

    invoke-direct {v2, v0}, Lcl/d;-><init>(Lcl/j;)V

    iget-object v0, p0, LBl/e;->c:Lck/o;

    invoke-virtual {v0}, Lck/o;->a()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcl/d;->b([B)[B

    move-result-object v2

    iget-object v3, p0, LBl/e;->c:Lck/o;

    invoke-virtual {v3}, Lck/o;->c()I

    move-result v3

    add-int/lit8 v3, v3, 0x7

    div-int/lit8 v3, v3, 0x8

    invoke-static {v2, v1, v3}, Lorg/bouncycastle/util/a;->X([BII)[B

    move-result-object v1

    invoke-static {v2}, Lorg/bouncycastle/util/a;->n([B)V

    new-instance v2, LHj/w;

    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v4, p0, LBl/e;->c:Lck/o;

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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 3
    iput-object p2, p0, LBl/e;->b:Ljava/security/SecureRandom;

    instance-of p2, p1, Lck/p;

    const-string v0, "key generator locked to "

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    check-cast p1, Lck/p;

    iput-object p1, p0, LBl/e;->a:Lck/p;

    iput-object v1, p0, LBl/e;->c:Lck/o;

    iget-object p1, p0, LBl/e;->d:Lcl/i;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcl/i;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/w;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, LBl/e;->a:Lck/p;

    invoke-virtual {p2}, Lck/p;->c()Ljava/security/PublicKey;

    move-result-object p2

    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    instance-of p2, p1, Lck/o;

    if-eqz p2, :cond_4

    iput-object v1, p0, LBl/e;->a:Lck/p;

    check-cast p1, Lck/o;

    iput-object p1, p0, LBl/e;->c:Lck/o;

    iget-object p1, p0, LBl/e;->d:Lcl/i;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcl/i;->b()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/w;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, LBl/e;->c:Lck/o;

    invoke-virtual {p2}, Lck/o;->d()Ljava/security/PrivateKey;

    move-result-object p2

    invoke-interface {p2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    new-instance p2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_3
    :goto_0
    return-void

    :cond_4
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "unknown spec"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
