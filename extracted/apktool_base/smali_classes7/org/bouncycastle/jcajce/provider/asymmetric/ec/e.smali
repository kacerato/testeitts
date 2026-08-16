.class public Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e;
.super Ljavax/crypto/CipherSpi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e$a;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e$b;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e$c;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e$d;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e$e;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e$f;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e$g;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e$h;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e$i;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e$j;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e$k;,
        Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e$l;
    }
.end annotation


# instance fields
.field public final a:Ldk/f;

.field public b:LLi/l0;

.field public c:I

.field public d:Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e$a;

.field public e:LXi/c;

.field public f:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(LLi/l0;)V
    .locals 1

    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    new-instance v0, Ldk/c;

    invoke-direct {v0}, Ldk/c;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e;->a:Ldk/f;

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e;->c:I

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e$a;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e$a;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e;->d:Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e$a;

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e;->b:LLi/l0;

    return-void
.end method


# virtual methods
.method public engineDoFinal([BII[BI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e;->engineDoFinal([BII)[B

    move-result-object p1

    array-length p2, p1

    const/4 p3, 0x0

    invoke-static {p1, p3, p4, p5, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    return p1
.end method

.method public engineDoFinal([BII)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 2
    if-eqz p3, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e;->d:Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e$a;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :cond_0
    :try_start_0
    iget p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p2, "unable to process block"

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eq p1, p3, :cond_4

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    goto :goto_2

    :cond_1
    const/4 p3, 0x2

    if-eq p1, p3, :cond_3

    const/4 p3, 0x4

    if-ne p1, p3, :cond_2

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "cipher not initialised"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_3
    :goto_0
    :try_start_2
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e;->b:LLi/l0;

    iget-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e;->e:LXi/c;

    invoke-virtual {p1, v0, p3}, LLi/l0;->f(ZLBi/k;)V

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e;->b:LLi/l0;

    iget-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e;->d:Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e$a;

    invoke-virtual {p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e$a;->d()[B

    move-result-object p3

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e;->d:Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e$a;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    invoke-virtual {p1, p3, v0, v1}, LLi/l0;->j([BII)[B

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e;->d:Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e$a;

    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e$a;->c()V

    return-object p1

    :catch_0
    move-exception p1

    :try_start_3
    new-instance p3, Lorg/bouncycastle/jcajce/provider/util/BadBlockException;

    invoke-direct {p3, p2, p1}, Lorg/bouncycastle/jcajce/provider/util/BadBlockException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_4
    :goto_2
    :try_start_4
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e;->b:LLi/l0;

    new-instance v1, LXi/x0;

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e;->e:LXi/c;

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e;->f:Ljava/security/SecureRandom;

    invoke-direct {v1, v2, v3}, LXi/x0;-><init>(LBi/k;Ljava/security/SecureRandom;)V

    invoke-virtual {p1, p3, v1}, LLi/l0;->f(ZLBi/k;)V

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e;->b:LLi/l0;

    iget-object p3, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e;->d:Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e$a;

    invoke-virtual {p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e$a;->d()[B

    move-result-object p3

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e;->d:Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e$a;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    invoke-virtual {p1, p3, v0, v1}, LLi/l0;->j([BII)[B

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p1

    :try_start_5
    new-instance p3, Lorg/bouncycastle/jcajce/provider/util/BadBlockException;

    invoke-direct {p3, p2, p1}, Lorg/bouncycastle/jcajce/provider/util/BadBlockException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_3
    iget-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e;->d:Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e$a;

    invoke-virtual {p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e$a;->c()V

    throw p1
.end method

.method public engineGetBlockSize()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public engineGetIV()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public engineGetKeySize(Ljava/security/Key;)I
    .locals 1

    instance-of v0, p1, Lfk/b;

    if-eqz v0, :cond_0

    check-cast p1, Lfk/b;

    invoke-interface {p1}, Lfk/b;->getParameters()Lhk/e;

    move-result-object p1

    invoke-virtual {p1}, Lhk/e;->a()Ljk/e;

    move-result-object p1

    invoke-virtual {p1}, Ljk/e;->w()I

    move-result p1

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "not an EC key"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineGetOutputSize(I)I
    .locals 2

    iget v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e;->c:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cipher not initialised"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e;->b:LLi/l0;

    invoke-virtual {v0, p1}, LLi/l0;->e(I)I

    move-result p1

    return p1
.end method

.method public engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 1
    if-nez p3, :cond_0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    return-void

    :cond_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "cannot recognise parameters: "

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
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 2
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot handle supplied parameter spec: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 3
    const/4 p3, 0x1

    if-eq p1, p3, :cond_4

    const/4 p3, 0x3

    if-ne p1, p3, :cond_0

    goto :goto_2

    :cond_0
    const/4 p3, 0x2

    if-eq p1, p3, :cond_2

    const/4 p3, 0x4

    if-ne p1, p3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "must be passed EC key"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    instance-of p3, p2, Ljava/security/PrivateKey;

    if-eqz p3, :cond_3

    check-cast p2, Ljava/security/PrivateKey;

    invoke-static {p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/i;->c(Ljava/security/PrivateKey;)LXi/c;

    move-result-object p2

    :goto_1
    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e;->e:LXi/c;

    goto :goto_3

    :cond_3
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "must be passed private EC key for decryption"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    instance-of p3, p2, Ljava/security/PublicKey;

    if-eqz p3, :cond_6

    check-cast p2, Ljava/security/PublicKey;

    invoke-static {p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/d;->b(Ljava/security/PublicKey;)LXi/c;

    move-result-object p2

    goto :goto_1

    :goto_3
    if-eqz p4, :cond_5

    iput-object p4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e;->f:Ljava/security/SecureRandom;

    goto :goto_4

    :cond_5
    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e;->f:Ljava/security/SecureRandom;

    :goto_4
    iput p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e;->c:I

    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e;->d:Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e$a;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-void

    :cond_6
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "must be passed public EC key for encryption"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineSetMode(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/util/w;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NONE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t support mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSetPadding(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/util/w;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "NOPADDING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljavax/crypto/NoSuchPaddingException;

    const-string v0, "padding not available with IESCipher"

    invoke-direct {p1, v0}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineUpdate([BII[BI)I
    .locals 0

    .line 1
    iget-object p4, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e;->d:Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e$a;

    invoke-virtual {p4, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    const/4 p1, 0x0

    return p1
.end method

.method public engineUpdate([BII)[B
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e;->d:Lorg/bouncycastle/jcajce/provider/asymmetric/ec/e$a;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    const/4 p1, 0x0

    return-object p1
.end method
