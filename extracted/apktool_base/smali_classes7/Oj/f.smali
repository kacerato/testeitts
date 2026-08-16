.class public LOj/f;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOj/f$b;,
        LOj/f$c;,
        LOj/f$d;,
        LOj/f$e;,
        LOj/f$f;,
        LOj/f$g;,
        LOj/f$h;,
        LOj/f$i;,
        LOj/f$j;,
        LOj/f$k;,
        LOj/f$l;,
        LOj/f$m;,
        LOj/f$n;
    }
.end annotation


# instance fields
.field public final g:Ldk/f;

.field public h:I

.field public i:LLi/L;

.field public j:I

.field public k:Ljava/io/ByteArrayOutputStream;

.field public l:Ljava/security/AlgorithmParameters;

.field public m:Lhk/s;

.field public n:LXi/c;

.field public o:Ljava/security/SecureRandom;

.field public p:Z

.field public q:LXi/c;


# direct methods
.method public constructor <init>(LLi/L;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;-><init>()V

    new-instance v0, Ldk/c;

    invoke-direct {v0}, Ldk/c;-><init>()V

    iput-object v0, p0, LOj/f;->g:Ldk/f;

    const/4 v0, -0x1

    iput v0, p0, LOj/f;->j:I

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, LOj/f;->k:Ljava/io/ByteArrayOutputStream;

    const/4 v0, 0x0

    iput-object v0, p0, LOj/f;->l:Ljava/security/AlgorithmParameters;

    iput-object v0, p0, LOj/f;->m:Lhk/s;

    const/4 v1, 0x0

    iput-boolean v1, p0, LOj/f;->p:Z

    iput-object v0, p0, LOj/f;->q:LXi/c;

    iput-object p1, p0, LOj/f;->i:LLi/L;

    iput v1, p0, LOj/f;->h:I

    return-void
.end method

.method public constructor <init>(LLi/L;I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/BaseCipherSpi;-><init>()V

    new-instance v0, Ldk/c;

    invoke-direct {v0}, Ldk/c;-><init>()V

    iput-object v0, p0, LOj/f;->g:Ldk/f;

    const/4 v0, -0x1

    iput v0, p0, LOj/f;->j:I

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, LOj/f;->k:Ljava/io/ByteArrayOutputStream;

    const/4 v0, 0x0

    iput-object v0, p0, LOj/f;->l:Ljava/security/AlgorithmParameters;

    iput-object v0, p0, LOj/f;->m:Lhk/s;

    const/4 v1, 0x0

    iput-boolean v1, p0, LOj/f;->p:Z

    iput-object v0, p0, LOj/f;->q:LXi/c;

    iput-object p1, p0, LOj/f;->i:LLi/L;

    iput p2, p0, LOj/f;->h:I

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
    invoke-virtual {p0, p1, p2, p3}, LOj/f;->engineDoFinal([BII)[B

    move-result-object p1

    array-length p2, p1

    const/4 p3, 0x0

    invoke-static {p1, p3, p4, p5, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    return p1
.end method

.method public engineDoFinal([BII)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    if-eqz p3, :cond_0

    .line 2
    iget-object v0, p0, LOj/f;->k:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_0
    iget-object p1, p0, LOj/f;->k:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iget-object p2, p0, LOj/f;->k:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->reset()V

    new-instance p2, LXi/i0;

    iget-object p3, p0, LOj/f;->m:Lhk/s;

    invoke-virtual {p3}, Lhk/s;->b()[B

    move-result-object p3

    iget-object v0, p0, LOj/f;->m:Lhk/s;

    invoke-virtual {v0}, Lhk/s;->c()[B

    move-result-object v0

    iget-object v1, p0, LOj/f;->m:Lhk/s;

    invoke-virtual {v1}, Lhk/s;->d()I

    move-result v1

    iget-object v2, p0, LOj/f;->m:Lhk/s;

    invoke-virtual {v2}, Lhk/s;->a()I

    move-result v2

    invoke-direct {p2, p3, v0, v1, v2}, LXi/i0;-><init>([B[BII)V

    iget-object p3, p0, LOj/f;->m:Lhk/s;

    invoke-virtual {p3}, Lhk/s;->e()[B

    move-result-object p3

    if-eqz p3, :cond_1

    new-instance v0, LXi/w0;

    invoke-direct {v0, p2, p3}, LXi/w0;-><init>(LBi/k;[B)V

    move-object p2, v0

    :cond_1
    iget-object p3, p0, LOj/f;->q:LXi/c;

    const/4 v0, 0x3

    const-string v1, "unable to process block"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_4

    :try_start_0
    iget v4, p0, LOj/f;->j:I

    if-eq v4, v2, :cond_3

    if-ne v4, v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, LOj/f;->i:LLi/L;

    iget-object v2, p0, LOj/f;->n:LXi/c;

    invoke-virtual {v0, v3, v2, p3, p2}, LLi/L;->i(ZLBi/k;LBi/k;LBi/k;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_3
    :goto_0
    iget-object v0, p0, LOj/f;->i:LLi/L;

    iget-object v4, p0, LOj/f;->n:LXi/c;

    invoke-virtual {v0, v2, p3, v4, p2}, LLi/L;->i(ZLBi/k;LBi/k;LBi/k;)V

    :goto_1
    iget-object p2, p0, LOj/f;->i:LLi/L;

    array-length p3, p1

    invoke-virtual {p2, p1, v3, p3}, LLi/L;->j([BII)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_2
    new-instance p2, Lorg/bouncycastle/jcajce/provider/util/BadBlockException;

    invoke-direct {p2, v1, p1}, Lorg/bouncycastle/jcajce/provider/util/BadBlockException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_4
    iget-object p3, p0, LOj/f;->n:LXi/c;

    instance-of v4, p3, LXi/O0;

    if-nez v4, :cond_6

    instance-of v4, p3, LXi/N0;

    if-eqz v4, :cond_5

    goto :goto_3

    :cond_5
    move v4, v3

    goto :goto_4

    :cond_6
    :goto_3
    move v4, v2

    :goto_4
    if-eqz v4, :cond_7

    const/16 v5, 0x100

    goto :goto_5

    :cond_7
    const/16 v5, 0x1c0

    :goto_5
    iget v6, p0, LOj/f;->j:I

    if-eq v6, v2, :cond_b

    if-ne v6, v0, :cond_8

    goto :goto_7

    :cond_8
    const/4 v0, 0x2

    if-eq v6, v0, :cond_a

    const/4 v0, 0x4

    if-ne v6, v0, :cond_9

    goto :goto_6

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "cipher not initialised"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_6
    :try_start_1
    iget-object v0, p0, LOj/f;->i:LLi/L;

    new-instance v2, LYi/c;

    invoke-direct {v2, v4}, LYi/c;-><init>(Z)V

    invoke-virtual {v0, p3, p2, v2}, LLi/L;->g(LXi/c;LBi/k;LBi/H;)V

    iget-object p2, p0, LOj/f;->i:LLi/L;

    array-length p3, p1

    invoke-virtual {p2, p1, v3, p3}, LLi/L;->j([BII)[B

    move-result-object p1
    :try_end_1
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    new-instance p2, Lorg/bouncycastle/jcajce/provider/util/BadBlockException;

    invoke-direct {p2, v1, p1}, Lorg/bouncycastle/jcajce/provider/util/BadBlockException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_b
    :goto_7
    if-eqz v4, :cond_c

    new-instance p3, LOi/P;

    invoke-direct {p3}, LOi/P;-><init>()V

    goto :goto_8

    :cond_c
    new-instance p3, LOi/Q;

    invoke-direct {p3}, LOi/Q;-><init>()V

    :goto_8
    new-instance v0, LBi/G;

    iget-object v2, p0, LOj/f;->o:Ljava/security/SecureRandom;

    invoke-direct {v0, v2, v5}, LBi/G;-><init>(Ljava/security/SecureRandom;I)V

    invoke-interface {p3, v0}, LBi/d;->b(LBi/G;)V

    new-instance v0, LOi/u;

    new-instance v2, LOj/f$a;

    invoke-direct {v2, p0, v4}, LOj/f$a;-><init>(LOj/f;Z)V

    invoke-direct {v0, p3, v2}, LOi/u;-><init>(LBi/d;LBi/F;)V

    :try_start_2
    iget-object p3, p0, LOj/f;->i:LLi/L;

    iget-object v2, p0, LOj/f;->n:LXi/c;

    invoke-virtual {p3, v2, p2, v0}, LLi/L;->h(LXi/c;LBi/k;LOi/u;)V

    iget-object p2, p0, LOj/f;->i:LLi/L;

    array-length p3, p1

    invoke-virtual {p2, p1, v3, p3}, LLi/L;->j([BII)[B

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object p1

    :catch_2
    move-exception p1

    new-instance p2, Lorg/bouncycastle/jcajce/provider/util/BadBlockException;

    invoke-direct {p2, v1, p1}, Lorg/bouncycastle/jcajce/provider/util/BadBlockException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public engineGetBlockSize()I
    .locals 1

    iget-object v0, p0, LOj/f;->i:LLi/L;

    invoke-virtual {v0}, LLi/L;->d()LBi/h;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, LBi/h;->b()I

    move-result v0

    :goto_0
    return v0
.end method

.method public engineGetIV()[B
    .locals 1

    iget-object v0, p0, LOj/f;->m:Lhk/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lhk/s;->e()[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public engineGetKeySize(Ljava/security/Key;)I
    .locals 3

    instance-of v0, p1, LIj/e;

    if-eqz v0, :cond_2

    check-cast p1, LIj/e;

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object p1

    const-string v0, "X25519"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x100

    return p1

    :cond_0
    const-string v0, "X448"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, 0x1c0

    return p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown XDH key algorithm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "not an XDH key"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineGetOutputSize(I)I
    .locals 8

    iget-object v0, p0, LOj/f;->n:LXi/c;

    const-string v1, "cipher not initialised"

    if-eqz v0, :cond_a

    iget-object v0, p0, LOj/f;->i:LLi/L;

    invoke-virtual {v0}, LLi/L;->f()LBi/I;

    move-result-object v0

    invoke-interface {v0}, LBi/I;->d()I

    move-result v0

    iget-object v2, p0, LOj/f;->q:LXi/c;

    const/4 v3, 0x2

    if-nez v2, :cond_0

    iget-object v2, p0, LOj/f;->n:LXi/c;

    check-cast v2, LXi/J;

    invoke-virtual {v2}, LXi/J;->d()LXi/G;

    move-result-object v2

    invoke-virtual {v2}, LXi/G;->a()Ljk/e;

    move-result-object v2

    invoke-virtual {v2}, Ljk/e;->w()I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/2addr v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, LOj/f;->k:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    add-int/2addr v4, p1

    iget-object p1, p0, LOj/f;->i:LLi/L;

    invoke-virtual {p1}, LLi/L;->d()LBi/h;

    move-result-object p1

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-nez p1, :cond_1

    goto :goto_4

    :cond_1
    iget p1, p0, LOj/f;->j:I

    if-eq p1, v7, :cond_5

    if-ne p1, v6, :cond_2

    goto :goto_3

    :cond_2
    if-eq p1, v3, :cond_4

    if-ne p1, v5, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    iget-object p1, p0, LOj/f;->i:LLi/L;

    invoke-virtual {p1}, LLi/L;->d()LBi/h;

    move-result-object p1

    sub-int/2addr v4, v0

    sub-int/2addr v4, v2

    :goto_2
    invoke-virtual {p1, v4}, LBi/h;->c(I)I

    move-result v4

    goto :goto_4

    :cond_5
    :goto_3
    iget-object p1, p0, LOj/f;->i:LLi/L;

    invoke-virtual {p1}, LLi/L;->d()LBi/h;

    move-result-object p1

    goto :goto_2

    :goto_4
    iget p1, p0, LOj/f;->j:I

    if-eq p1, v7, :cond_9

    if-ne p1, v6, :cond_6

    goto :goto_6

    :cond_6
    if-eq p1, v3, :cond_8

    if-ne p1, v5, :cond_7

    goto :goto_5

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_5
    return v4

    :cond_9
    :goto_6
    add-int/2addr v0, v2

    add-int/2addr v0, v4

    return v0

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 2

    iget-object v0, p0, LOj/f;->l:Ljava/security/AlgorithmParameters;

    if-nez v0, :cond_0

    iget-object v0, p0, LOj/f;->m:Lhk/s;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, LOj/f;->g:Ldk/f;

    const-string v1, "IES"

    invoke-interface {v0, v1}, Ldk/f;->l(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    iput-object v0, p0, LOj/f;->l:Ljava/security/AlgorithmParameters;

    iget-object v1, p0, LOj/f;->m:Lhk/s;

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
    iget-object v0, p0, LOj/f;->l:Ljava/security/AlgorithmParameters;

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
    const-class v0, Lhk/s;

    invoke-virtual {p3, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "cannot recognise parameters: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object p3, p0, LOj/f;->l:Ljava/security/AlgorithmParameters;

    invoke-virtual {p0, p1, p2, v0, p4}, LOj/f;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

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
    invoke-virtual {p0, p1, p2, v0, p3}, LOj/f;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, LOj/f;->q:LXi/c;

    if-nez p3, :cond_0

    iget v1, p0, LOj/f;->h:I

    if-nez v1, :cond_0

    iget-object p3, p0, LOj/f;->i:LLi/L;

    invoke-virtual {p3}, LLi/L;->d()LBi/h;

    move-result-object p3

    invoke-static {p3, v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/util/k;->a(LBi/h;[B)Lhk/s;

    move-result-object p3

    :goto_0
    iput-object p3, p0, LOj/f;->m:Lhk/s;

    goto :goto_1

    :cond_0
    instance-of v0, p3, Lhk/s;

    if-eqz v0, :cond_9

    check-cast p3, Lhk/s;

    goto :goto_0

    :goto_1
    iget-object p3, p0, LOj/f;->m:Lhk/s;

    invoke-virtual {p3}, Lhk/s;->e()[B

    move-result-object p3

    iget v0, p0, LOj/f;->h:I

    if-eqz v0, :cond_2

    if-eqz p3, :cond_1

    array-length p3, p3

    if-ne p3, v0, :cond_1

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "NONCE in IES Parameters needs to be "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, LOj/f;->h:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " bytes long"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_2
    const/4 p3, 0x1

    if-eq p1, p3, :cond_7

    const/4 p3, 0x3

    if-ne p1, p3, :cond_3

    goto :goto_5

    :cond_3
    const/4 p3, 0x2

    if-eq p1, p3, :cond_5

    const/4 p3, 0x4

    if-ne p1, p3, :cond_4

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "must be passed XDH key"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_3
    instance-of p3, p2, Ljava/security/PrivateKey;

    if-eqz p3, :cond_6

    check-cast p2, Ljava/security/PrivateKey;

    invoke-static {p2}, LOj/e;->a(Ljava/security/PrivateKey;)LXi/c;

    move-result-object p2

    :goto_4
    iput-object p2, p0, LOj/f;->n:LXi/c;

    goto :goto_6

    :cond_6
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "must be passed recipient\'s private XDH key for decryption"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_5
    instance-of p3, p2, Ljava/security/PublicKey;

    if-eqz p3, :cond_8

    check-cast p2, Ljava/security/PublicKey;

    invoke-static {p2}, LOj/e;->b(Ljava/security/PublicKey;)LXi/c;

    move-result-object p2

    goto :goto_4

    :goto_6
    iput-object p4, p0, LOj/f;->o:Ljava/security/SecureRandom;

    iput p1, p0, LOj/f;->j:I

    iget-object p1, p0, LOj/f;->k:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-void

    :cond_8
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "must be passed recipient\'s public XDH key for encryption"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "must be passed IES parameters"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

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

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, LOj/f;->p:Z

    goto :goto_1

    :cond_0
    const-string v1, "DHAES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :goto_1
    return-void

    :cond_1
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

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "PKCS5PADDING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "PKCS7PADDING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljavax/crypto/NoSuchPaddingException;

    const-string v0, "padding not available with IESCipher"

    invoke-direct {p1, v0}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public engineUpdate([BII[BI)I
    .locals 0

    .line 1
    iget-object p4, p0, LOj/f;->k:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p4, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 p1, 0x0

    return p1
.end method

.method public engineUpdate([BII)[B
    .locals 1

    .line 2
    iget-object v0, p0, LOj/f;->k:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 p1, 0x0

    return-object p1
.end method
