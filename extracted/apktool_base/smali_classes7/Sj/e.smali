.class public LSj/e;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LSj/e$a;,
        LSj/e$b;,
        LSj/e$c;,
        LSj/e$d;,
        LSj/e$e;,
        LSj/e$f;
    }
.end annotation


# instance fields
.field public final g:Ldk/f;

.field public h:LBi/b;

.field public i:Ljava/security/spec/AlgorithmParameterSpec;

.field public j:Ljava/security/AlgorithmParameters;

.field public k:Z

.field public l:Z

.field public m:Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$a;

.field public n:Lck/C;

.field public o:LBi/k;


# direct methods
.method public constructor <init>(LBi/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;-><init>()V

    new-instance v0, Ldk/c;

    invoke-direct {v0}, Ldk/c;-><init>()V

    iput-object v0, p0, LSj/e;->g:Ldk/f;

    const/4 v0, 0x0

    iput-boolean v0, p0, LSj/e;->k:Z

    iput-boolean v0, p0, LSj/e;->l:Z

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$a;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$a;-><init>()V

    iput-object v0, p0, LSj/e;->m:Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$a;

    const/4 v0, 0x0

    iput-object v0, p0, LSj/e;->n:Lck/C;

    iput-object v0, p0, LSj/e;->o:LBi/k;

    iput-object p1, p0, LSj/e;->h:LBi/b;

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/spec/OAEPParameterSpec;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;-><init>()V

    new-instance v0, Ldk/c;

    invoke-direct {v0}, Ldk/c;-><init>()V

    iput-object v0, p0, LSj/e;->g:Ldk/f;

    const/4 v0, 0x0

    iput-boolean v0, p0, LSj/e;->k:Z

    iput-boolean v0, p0, LSj/e;->l:Z

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$a;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$a;-><init>()V

    iput-object v0, p0, LSj/e;->m:Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$a;

    const/4 v0, 0x0

    iput-object v0, p0, LSj/e;->n:Lck/C;

    iput-object v0, p0, LSj/e;->o:LBi/k;

    :try_start_0
    invoke-direct {p0, p1}, LSj/e;->d(Ljavax/crypto/spec/OAEPParameterSpec;)V
    :try_end_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(ZZLBi/b;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;-><init>()V

    new-instance v0, Ldk/c;

    invoke-direct {v0}, Ldk/c;-><init>()V

    iput-object v0, p0, LSj/e;->g:Ldk/f;

    const/4 v0, 0x0

    iput-boolean v0, p0, LSj/e;->k:Z

    iput-boolean v0, p0, LSj/e;->l:Z

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$a;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$a;-><init>()V

    iput-object v0, p0, LSj/e;->m:Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$a;

    const/4 v0, 0x0

    iput-object v0, p0, LSj/e;->n:Lck/C;

    iput-object v0, p0, LSj/e;->o:LBi/k;

    iput-boolean p1, p0, LSj/e;->k:Z

    iput-boolean p2, p0, LSj/e;->l:Z

    iput-object p3, p0, LSj/e;->h:LBi/b;

    return-void
.end method

.method private c()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    const-string v0, "unable to decrypt block"

    :try_start_0
    iget-object v1, p0, LSj/e;->n:Lck/C;

    if-eqz v1, :cond_0

    iget-object v0, p0, LSj/e;->o:LBi/k;

    check-cast v0, LXi/x0;

    iget-object v1, p0, LSj/e;->m:Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$a;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$a;->d()[B

    move-result-object v2

    iget-object v1, p0, LSj/e;->m:Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$a;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    invoke-virtual {v0}, LXi/x0;->a()LBi/k;

    move-result-object v1

    move-object v5, v1

    check-cast v5, LXi/F0;

    iget-object v1, p0, LSj/e;->n:Lck/C;

    invoke-virtual {v1}, Lck/C;->a()I

    move-result v6

    invoke-virtual {v0}, LXi/x0;->b()Ljava/security/SecureRandom;

    move-result-object v7

    const/4 v3, 0x0

    invoke-static/range {v2 .. v7}, Lcj/a;->d([BIILXi/F0;ILjava/security/SecureRandom;)[B

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, LSj/e;->m:Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$a;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$a;->c()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :try_start_1
    iget-object v1, p0, LSj/e;->h:LBi/b;

    iget-object v2, p0, LSj/e;->m:Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$a;

    invoke-virtual {v2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$a;->d()[B

    move-result-object v2

    iget-object v3, p0, LSj/e;->m:Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$a;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v4, v3}, LBi/b;->b([BII)[B

    move-result-object v1
    :try_end_1
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    iget-object v0, p0, LSj/e;->m:Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$a;

    invoke-virtual {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$a;->c()V

    return-object v1

    :cond_1
    :try_start_2
    new-instance v1, Lorg/bouncycastle/jcajce/provider/util/BadBlockException;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/jcajce/provider/util/BadBlockException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :goto_0
    new-instance v2, Lorg/bouncycastle/jcajce/provider/util/BadBlockException;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/jcajce/provider/util/BadBlockException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :goto_1
    new-instance v2, Lorg/bouncycastle/jcajce/provider/util/BadBlockException;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/jcajce/provider/util/BadBlockException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    iget-object v1, p0, LSj/e;->m:Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$a;

    invoke-virtual {v1}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$a;->c()V

    throw v0
.end method

.method private d(Ljavax/crypto/spec/OAEPParameterSpec;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    invoke-virtual {p1}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    check-cast v0, Ljava/security/spec/MGF1ParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lbk/d;->a(Ljava/lang/String;)LBi/y;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v0, LKi/b;

    new-instance v2, LLi/e0;

    invoke-direct {v2}, LLi/e0;-><init>()V

    invoke-virtual {p1}, Ljavax/crypto/spec/OAEPParameterSpec;->getPSource()Ljavax/crypto/spec/PSource;

    move-result-object v3

    check-cast v3, Ljavax/crypto/spec/PSource$PSpecified;

    invoke-virtual {v3}, Ljavax/crypto/spec/PSource$PSpecified;->getValue()[B

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, LKi/b;-><init>(LBi/b;LBi/y;[B)V

    iput-object v0, p0, LSj/e;->h:LBi/b;

    iput-object p1, p0, LSj/e;->i:Ljava/security/spec/AlgorithmParameterSpec;

    return-void

    :cond_0
    new-instance p1, Ljavax/crypto/NoSuchPaddingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no match on OAEP constructor for digest algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final b()I
    .locals 2

    iget-object v0, p0, LSj/e;->n:Lck/C;

    if-eqz v0, :cond_0

    iget-object v0, p0, LSj/e;->o:LBi/k;

    check-cast v0, LXi/x0;

    invoke-virtual {v0}, LXi/x0;->a()LBi/k;

    move-result-object v0

    check-cast v0, LXi/F0;

    invoke-static {v0}, Lcj/a;->e(LXi/F0;)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, LSj/e;->h:LBi/b;

    instance-of v1, v0, LLi/e0;

    invoke-interface {v0}, LBi/b;->d()I

    move-result v0

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method public engineDoFinal([BII[BI)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p3

    .line 1
    :goto_0
    invoke-virtual {p0, v1}, LSj/e;->engineGetOutputSize(I)I

    move-result v1

    array-length v2, p4

    sub-int/2addr v2, v1

    if-gt p5, v2, :cond_1

    invoke-virtual {p0, p1, p2, p3}, LSj/e;->engineDoFinal([BII)[B

    move-result-object p1

    array-length p2, p1

    invoke-static {p1, v0, p4, p5, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    return p1

    :cond_1
    new-instance p1, Ljavax/crypto/ShortBufferException;

    const-string p2, "output buffer too short for input."

    invoke-direct {p1, p2}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineDoFinal([BII)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, LSj/e;->engineUpdate([BII)[B

    :cond_0
    invoke-direct {p0}, LSj/e;->c()[B

    move-result-object p1

    return-object p1
.end method

.method public engineGetBlockSize()I
    .locals 2

    :try_start_0
    iget-object v0, p0, LSj/e;->h:LBi/b;

    invoke-interface {v0}, LBi/b;->d()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RSA Cipher not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineGetKeySize(Ljava/security/Key;)I
    .locals 1

    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/security/interfaces/RSAPrivateKey;

    :goto_0
    invoke-interface {p1}, Ljava/security/interfaces/RSAKey;->getModulus()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    return p1

    :cond_0
    instance-of v0, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "not an RSA key!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineGetOutputSize(I)I
    .locals 1

    iget-object p1, p0, LSj/e;->n:Lck/C;

    if-eqz p1, :cond_0

    const/16 p1, 0x30

    return p1

    :cond_0
    :try_start_0
    iget-object p1, p0, LSj/e;->h:LBi/b;

    invoke-interface {p1}, LBi/b;->c()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "RSA Cipher not initialised"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 2

    iget-object v0, p0, LSj/e;->j:Ljava/security/AlgorithmParameters;

    if-nez v0, :cond_0

    iget-object v0, p0, LSj/e;->i:Ljava/security/spec/AlgorithmParameterSpec;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, LSj/e;->g:Ldk/f;

    const-string v1, "OAEP"

    invoke-interface {v0, v1}, Ldk/f;->l(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, LSj/e;->j:Ljava/security/AlgorithmParameters;

    iget-object v1, p0, LSj/e;->i:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {v0, v1}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :goto_0
    iget-object v0, p0, LSj/e;->j:Ljava/security/AlgorithmParameters;

    return-object v0
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 1
    :try_start_0
    const-class v0, Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {p3, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "cannot recognise parameters: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object p3, p0, LSj/e;->j:Ljava/security/AlgorithmParameters;

    invoke-virtual {p0, p1, p2, v0, p4}, LSj/e;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2, v0, p3}, LSj/e;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/security/InvalidKeyException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Eeeek! "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, LSj/e;->n:Lck/C;

    if-eqz p3, :cond_1

    instance-of v0, p3, Ljavax/crypto/spec/OAEPParameterSpec;

    if-nez v0, :cond_1

    instance-of v0, p3, Lck/C;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "unknown parameter type: "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    instance-of v0, p2, Ljava/security/interfaces/RSAPublicKey;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-boolean v0, p0, LSj/e;->l:Z

    if-eqz v0, :cond_3

    if-eq p1, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "mode 1 requires RSAPrivateKey"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    check-cast p2, Ljava/security/interfaces/RSAPublicKey;

    invoke-static {p2}, LSj/l;->d(Ljava/security/interfaces/RSAPublicKey;)LXi/F0;

    move-result-object p2

    :goto_2
    iput-object p2, p0, LSj/e;->o:LBi/k;

    goto :goto_4

    :cond_4
    instance-of v0, p2, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v0, :cond_13

    iget-boolean v0, p0, LSj/e;->k:Z

    if-eqz v0, :cond_6

    if-eq p1, v1, :cond_5

    goto :goto_3

    :cond_5
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "mode 2 requires RSAPublicKey"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_3
    check-cast p2, Ljava/security/interfaces/RSAPrivateKey;

    invoke-static {p2}, LSj/l;->c(Ljava/security/interfaces/RSAPrivateKey;)LXi/F0;

    move-result-object p2

    goto :goto_2

    :goto_4
    instance-of p2, p3, Ljavax/crypto/spec/OAEPParameterSpec;

    if-eqz p2, :cond_c

    move-object p2, p3

    check-cast p2, Ljavax/crypto/spec/OAEPParameterSpec;

    iput-object p3, p0, LSj/e;->i:Ljava/security/spec/AlgorithmParameterSpec;

    invoke-virtual {p2}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object p3

    const-string v0, "MGF1"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_8

    invoke-virtual {p2}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object p3

    sget-object v0, LXh/t;->O0:Loh/x;

    invoke-virtual {v0}, Loh/x;->J()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    goto :goto_5

    :cond_7
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "unknown mask generation function specified"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_5
    invoke-virtual {p2}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p3

    instance-of p3, p3, Ljava/security/spec/MGF1ParameterSpec;

    if-eqz p3, :cond_b

    invoke-virtual {p2}, Ljavax/crypto/spec/OAEPParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lbk/d;->a(Ljava/lang/String;)LBi/y;

    move-result-object p3

    if-eqz p3, :cond_a

    invoke-virtual {p2}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    check-cast v0, Ljava/security/spec/MGF1ParameterSpec;

    invoke-virtual {v0}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lbk/d;->a(Ljava/lang/String;)LBi/y;

    move-result-object v2

    if-eqz v2, :cond_9

    new-instance v0, LKi/b;

    new-instance v3, LLi/e0;

    invoke-direct {v3}, LLi/e0;-><init>()V

    invoke-virtual {p2}, Ljavax/crypto/spec/OAEPParameterSpec;->getPSource()Ljavax/crypto/spec/PSource;

    move-result-object p2

    check-cast p2, Ljavax/crypto/spec/PSource$PSpecified;

    invoke-virtual {p2}, Ljavax/crypto/spec/PSource$PSpecified;->getValue()[B

    move-result-object p2

    invoke-direct {v0, v3, p3, v2, p2}, LKi/b;-><init>(LBi/b;LBi/y;LBi/y;[B)V

    iput-object v0, p0, LSj/e;->h:LBi/b;

    goto :goto_6

    :cond_9
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "no match on MGF digest algorithm: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "no match on digest algorithm: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljavax/crypto/spec/OAEPParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "unkown MGF parameters"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    instance-of p2, p3, Lck/C;

    if-eqz p2, :cond_e

    iget-object p2, p0, LSj/e;->o:LBi/k;

    instance-of v0, p2, LXi/F0;

    if-eqz v0, :cond_d

    check-cast p2, LXi/F0;

    invoke-virtual {p2}, LXi/c;->c()Z

    move-result p2

    if-eqz p2, :cond_d

    check-cast p3, Lck/C;

    iput-object p3, p0, LSj/e;->n:Lck/C;

    goto :goto_6

    :cond_d
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "RSA private key required for TLS decryption"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    :goto_6
    new-instance p2, LXi/x0;

    iget-object p3, p0, LSj/e;->o:LBi/k;

    if-eqz p4, :cond_f

    invoke-direct {p2, p3, p4}, LXi/x0;-><init>(LBi/k;Ljava/security/SecureRandom;)V

    :goto_7
    iput-object p2, p0, LSj/e;->o:LBi/k;

    goto :goto_8

    :cond_f
    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object p4

    invoke-direct {p2, p3, p4}, LXi/x0;-><init>(LBi/k;Ljava/security/SecureRandom;)V

    goto :goto_7

    :goto_8
    iget-object p2, p0, LSj/e;->m:Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$a;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->reset()V

    if-eq p1, v1, :cond_12

    const/4 p2, 0x2

    if-eq p1, p2, :cond_11

    const/4 p2, 0x3

    if-eq p1, p2, :cond_12

    const/4 p2, 0x4

    if-ne p1, p2, :cond_10

    goto :goto_9

    :cond_10
    new-instance p2, Ljava/security/InvalidParameterException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "unknown opmode "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " passed to RSA"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_11
    :goto_9
    iget-object p1, p0, LSj/e;->h:LBi/b;

    const/4 p2, 0x0

    iget-object p3, p0, LSj/e;->o:LBi/k;

    invoke-interface {p1, p2, p3}, LBi/b;->a(ZLBi/k;)V

    goto :goto_a

    :cond_12
    iget-object p1, p0, LSj/e;->h:LBi/b;

    iget-object p2, p0, LSj/e;->o:LBi/k;

    invoke-interface {p1, v1, p2}, LBi/b;->a(ZLBi/k;)V

    :goto_a
    return-void

    :cond_13
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "unknown key type passed to RSA"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineSetMode(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/util/w;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "ECB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iput-boolean v3, p0, LSj/e;->l:Z

    iput-boolean v2, p0, LSj/e;->k:Z

    return-void

    :cond_1
    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v2, p0, LSj/e;->l:Z

    iput-boolean v3, p0, LSj/e;->k:Z

    return-void

    :cond_2
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t support mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    return-void
.end method

.method public engineSetPadding(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/util/w;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NOPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, LLi/e0;

    invoke-direct {p1}, LLi/e0;-><init>()V

    :goto_0
    iput-object p1, p0, LSj/e;->h:LBi/b;

    goto/16 :goto_7

    :cond_0
    const-string v1, "PKCS1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p1, LSj/f;

    new-instance v0, LLi/e0;

    invoke-direct {v0}, LLi/e0;-><init>()V

    invoke-direct {p1, v0}, LSj/f;-><init>(LBi/b;)V

    goto :goto_0

    :cond_1
    const-string v1, "ISO9796-1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p1, LKi/a;

    new-instance v0, LLi/e0;

    invoke-direct {v0}, LLi/e0;-><init>()V

    invoke-direct {p1, v0}, LKi/a;-><init>(LBi/b;)V

    goto :goto_0

    :cond_2
    const-string v1, "OAEPWITHMD5ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "MGF1"

    if-eqz v1, :cond_3

    new-instance p1, Ljavax/crypto/spec/OAEPParameterSpec;

    new-instance v0, Ljava/security/spec/MGF1ParameterSpec;

    const-string v1, "MD5"

    invoke-direct {v0, v1}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {p1, v1, v2, v0, v3}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    :goto_1
    invoke-direct {p0, p1}, LSj/e;->d(Ljavax/crypto/spec/OAEPParameterSpec;)V

    goto/16 :goto_7

    :cond_3
    const-string v1, "OAEPPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    :goto_2
    sget-object p1, Ljavax/crypto/spec/OAEPParameterSpec;->DEFAULT:Ljavax/crypto/spec/OAEPParameterSpec;

    goto :goto_1

    :cond_5
    const-string v1, "OAEPWITHSHA1ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "OAEPWITHSHA-1ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    const-string v1, "OAEPWITHSHA224ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, "OAEPWITHSHA-224ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto/16 :goto_6

    :cond_7
    const-string v1, "OAEPWITHSHA256ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "OAEPWITHSHA-256ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto/16 :goto_5

    :cond_8
    const-string v1, "OAEPWITHSHA384ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "OAEPWITHSHA-384ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto/16 :goto_4

    :cond_9
    const-string v1, "OAEPWITHSHA512ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "OAEPWITHSHA-512ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto/16 :goto_3

    :cond_a
    const-string v1, "OAEPWITHSHA3-224ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    new-instance p1, Ljavax/crypto/spec/OAEPParameterSpec;

    new-instance v0, Ljava/security/spec/MGF1ParameterSpec;

    const-string v1, "SHA3-224"

    invoke-direct {v0, v1}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {p1, v1, v2, v0, v3}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    goto :goto_1

    :cond_b
    const-string v1, "OAEPWITHSHA3-256ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance p1, Ljavax/crypto/spec/OAEPParameterSpec;

    new-instance v0, Ljava/security/spec/MGF1ParameterSpec;

    const-string v1, "SHA3-256"

    invoke-direct {v0, v1}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {p1, v1, v2, v0, v3}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    goto/16 :goto_1

    :cond_c
    const-string v1, "OAEPWITHSHA3-384ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    new-instance p1, Ljavax/crypto/spec/OAEPParameterSpec;

    new-instance v0, Ljava/security/spec/MGF1ParameterSpec;

    const-string v1, "SHA3-384"

    invoke-direct {v0, v1}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {p1, v1, v2, v0, v3}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    goto/16 :goto_1

    :cond_d
    const-string v1, "OAEPWITHSHA3-512ANDMGF1PADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance p1, Ljavax/crypto/spec/OAEPParameterSpec;

    new-instance v0, Ljava/security/spec/MGF1ParameterSpec;

    const-string v1, "SHA3-512"

    invoke-direct {v0, v1}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {p1, v1, v2, v0, v3}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    goto/16 :goto_1

    :cond_e
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " unavailable with RSA."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    :goto_3
    new-instance p1, Ljavax/crypto/spec/OAEPParameterSpec;

    sget-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA512:Ljava/security/spec/MGF1ParameterSpec;

    sget-object v1, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    const-string v3, "SHA-512"

    invoke-direct {p1, v3, v2, v0, v1}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    goto/16 :goto_1

    :cond_10
    :goto_4
    new-instance p1, Ljavax/crypto/spec/OAEPParameterSpec;

    sget-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA384:Ljava/security/spec/MGF1ParameterSpec;

    sget-object v1, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    const-string v3, "SHA-384"

    invoke-direct {p1, v3, v2, v0, v1}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    goto/16 :goto_1

    :cond_11
    :goto_5
    new-instance p1, Ljavax/crypto/spec/OAEPParameterSpec;

    sget-object v0, Ljava/security/spec/MGF1ParameterSpec;->SHA256:Ljava/security/spec/MGF1ParameterSpec;

    sget-object v1, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    const-string v3, "SHA-256"

    invoke-direct {p1, v3, v2, v0, v1}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    goto/16 :goto_1

    :cond_12
    :goto_6
    new-instance p1, Ljavax/crypto/spec/OAEPParameterSpec;

    new-instance v0, Ljava/security/spec/MGF1ParameterSpec;

    const-string v1, "SHA-224"

    invoke-direct {v0, v1}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    invoke-direct {p1, v1, v2, v0, v3}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    goto/16 :goto_1

    :goto_7
    return-void
.end method

.method public engineUpdate([BII[BI)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, LSj/e;->engineUpdate([BII)[B

    const/4 p1, 0x0

    return p1
.end method

.method public engineUpdate([BII)[B
    .locals 2

    .line 2
    invoke-virtual {p0}, LSj/e;->b()I

    move-result v0

    iget-object v1, p0, LSj/e;->m:Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$a;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    sub-int/2addr v0, v1

    if-gt p3, v0, :cond_0

    iget-object v0, p0, LSj/e;->m:Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi$a;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p2, "too much data for RSA block"

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
