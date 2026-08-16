.class public Lorg/bouncycastle/jcajce/provider/symmetric/util/b;
.super Ljavax/crypto/MacSpi;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/jcajce/provider/symmetric/util/d;


# instance fields
.field public b:LBi/I;

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(LBi/I;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/b;->c:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/b;->d:I

    const/16 v0, 0xa0

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/b;->e:I

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/b;->b:LBi/I;

    return-void
.end method

.method public constructor <init>(LBi/I;III)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljavax/crypto/MacSpi;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/b;->b:LBi/I;

    iput p2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/b;->c:I

    iput p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/b;->d:I

    iput p4, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/b;->e:I

    return-void
.end method

.method public static a(Ljava/util/Map;)Ljava/util/Hashtable;
    .locals 4

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public engineDoFinal()[B
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/jcajce/provider/symmetric/util/b;->engineGetMacLength()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/b;->b:LBi/I;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, LBi/I;->c([BI)I

    return-object v0
.end method

.method public engineGetMacLength()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/b;->b:LBi/I;

    invoke-interface {v0}, LBi/I;->d()I

    move-result v0

    return v0
.end method

.method public engineInit(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    if-eqz p1, :cond_15

    instance-of v0, p1, LHj/l;

    if-eqz v0, :cond_8

    :try_start_0
    move-object v0, p1

    check-cast v0, Ljavax/crypto/SecretKey;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    move-object v1, p2

    check-cast v1, Ljavax/crypto/spec/PBEParameterSpec;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    instance-of v2, v0, Ljavax/crypto/interfaces/PBEKey;

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    new-instance v1, Ljavax/crypto/spec/PBEParameterSpec;

    move-object v2, v0

    check-cast v2, Ljavax/crypto/interfaces/PBEKey;

    invoke-interface {v2}, Ljavax/crypto/interfaces/PBEKey;->getSalt()[B

    move-result-object v3

    invoke-interface {v2}, Ljavax/crypto/interfaces/PBEKey;->getIterationCount()I

    move-result v2

    invoke-direct {v1, v3, v2}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/b;->b:LBi/I;

    invoke-interface {v2}, LBi/I;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GOST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x2

    const/16 v4, 0x100

    if-eqz v2, :cond_1

    const/4 v2, 0x6

    goto/16 :goto_1

    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/b;->b:LBi/I;

    instance-of v5, v2, LSi/k;

    const/16 v6, 0xa0

    if-eqz v5, :cond_7

    invoke-interface {v2}, LBi/I;->b()Ljava/lang/String;

    move-result-object v2

    const-string v5, "SHA-1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/b;->b:LBi/I;

    invoke-interface {v2}, LBi/I;->b()Ljava/lang/String;

    move-result-object v2

    const-string v5, "SHA-224"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x7

    const/16 v4, 0xe0

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/b;->b:LBi/I;

    invoke-interface {v2}, LBi/I;->b()Ljava/lang/String;

    move-result-object v2

    const-string v5, "SHA-256"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x4

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/b;->b:LBi/I;

    invoke-interface {v2}, LBi/I;->b()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SHA-384"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v2, 0x8

    const/16 v4, 0x180

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/b;->b:LBi/I;

    invoke-interface {v2}, LBi/I;->b()Ljava/lang/String;

    move-result-object v2

    const-string v4, "SHA-512"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x9

    const/16 v4, 0x200

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/b;->b:LBi/I;

    invoke-interface {v2}, LBi/I;->b()Ljava/lang/String;

    move-result-object v2

    const-string v4, "RIPEMD160"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    :goto_0
    move v4, v6

    goto :goto_1

    :cond_6
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "no PKCS12 mapping for HMAC: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/b;->b:LBi/I;

    invoke-interface {v0}, LBi/I;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    const/4 v2, 0x1

    goto :goto_0

    :goto_1
    invoke-static {v0, v3, v2, v4, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/d$a;->d(Ljavax/crypto/SecretKey;IIILjavax/crypto/spec/PBEParameterSpec;)LBi/k;

    move-result-object v0

    goto :goto_2

    :catch_0
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "PKCS12 requires a PBEParameterSpec"

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "PKCS12 requires a SecretKey/PBEKey"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    instance-of v0, p1, Lak/a;

    if-eqz v0, :cond_b

    move-object v0, p1

    check-cast v0, Lak/a;

    invoke-virtual {v0}, Lak/a;->h()LBi/k;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Lak/a;->h()LBi/k;

    move-result-object v0

    goto :goto_2

    :cond_9
    instance-of v1, p2, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz v1, :cond_a

    invoke-static {v0, p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/d$a;->c(Lak/a;Ljava/security/spec/AlgorithmParameterSpec;)LBi/k;

    move-result-object v0

    goto :goto_2

    :cond_a
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string p2, "PBE requires PBE parameters to be set."

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    instance-of v0, p2, Ljavax/crypto/spec/PBEParameterSpec;

    if-nez v0, :cond_14

    new-instance v0, LXi/o0;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    invoke-direct {v0, v1}, LXi/o0;-><init>([B)V

    :goto_2
    instance-of v1, v0, LXi/w0;

    if-eqz v1, :cond_c

    move-object v1, v0

    check-cast v1, LXi/w0;

    invoke-virtual {v1}, LXi/w0;->b()LBi/k;

    move-result-object v1

    check-cast v1, LXi/o0;

    goto :goto_3

    :cond_c
    move-object v1, v0

    check-cast v1, LXi/o0;

    :goto_3
    instance-of v2, p2, Lck/a;

    if-eqz v2, :cond_d

    check-cast p2, Lck/a;

    new-instance v0, LXi/a;

    invoke-virtual {p2}, Lck/a;->b()I

    move-result p1

    invoke-virtual {p2}, Lck/a;->c()[B

    move-result-object v2

    invoke-virtual {p2}, Lck/a;->a()[B

    move-result-object p2

    invoke-direct {v0, v1, p1, v2, p2}, LXi/a;-><init>(LXi/o0;I[B[B)V

    goto :goto_4

    :cond_d
    instance-of v2, p2, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v2, :cond_e

    new-instance v0, LXi/w0;

    check-cast p2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p2}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object p1

    invoke-direct {v0, v1, p1}, LXi/w0;-><init>(LBi/k;[B)V

    goto :goto_4

    :cond_e
    instance-of v2, p2, Ljavax/crypto/spec/RC2ParameterSpec;

    if-eqz v2, :cond_f

    new-instance v0, LXi/w0;

    new-instance p1, LXi/B0;

    invoke-virtual {v1}, LXi/o0;->b()[B

    move-result-object v1

    check-cast p2, Ljavax/crypto/spec/RC2ParameterSpec;

    invoke-virtual {p2}, Ljavax/crypto/spec/RC2ParameterSpec;->getEffectiveKeyBits()I

    move-result v2

    invoke-direct {p1, v1, v2}, LXi/B0;-><init>([BI)V

    invoke-virtual {p2}, Ljavax/crypto/spec/RC2ParameterSpec;->getIV()[B

    move-result-object p2

    invoke-direct {v0, p1, p2}, LXi/w0;-><init>(LBi/k;[B)V

    goto :goto_4

    :cond_f
    instance-of v2, p2, Lck/A;

    if-eqz v2, :cond_10

    new-instance p1, LXi/K0$b;

    check-cast p2, Lck/A;

    invoke-virtual {p2}, Lck/A;->e()Ljava/util/Map;

    move-result-object p2

    invoke-static {p2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/b;->a(Ljava/util/Map;)Ljava/util/Hashtable;

    move-result-object p2

    invoke-direct {p1, p2}, LXi/K0$b;-><init>(Ljava/util/Hashtable;)V

    invoke-virtual {v1}, LXi/o0;->b()[B

    move-result-object p2

    invoke-virtual {p1, p2}, LXi/K0$b;->c([B)LXi/K0$b;

    move-result-object p1

    invoke-virtual {p1}, LXi/K0$b;->a()LXi/K0;

    move-result-object v0

    goto :goto_4

    :cond_10
    if-nez p2, :cond_11

    new-instance v0, LXi/o0;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-direct {v0, p1}, LXi/o0;-><init>([B)V

    goto :goto_4

    :cond_11
    invoke-static {p2}, Lak/h;->k(Ljava/security/spec/AlgorithmParameterSpec;)Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-static {v1, p2}, Lak/h;->c(LXi/o0;Ljava/security/spec/AlgorithmParameterSpec;)LXi/a;

    move-result-object v0

    goto :goto_4

    :cond_12
    instance-of p1, p2, Ljavax/crypto/spec/PBEParameterSpec;

    if-eqz p1, :cond_13

    :goto_4
    :try_start_2
    iget-object p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/b;->b:LBi/I;

    invoke-interface {p1, v0}, LBi/I;->a(LBi/k;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p1

    new-instance p2, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot initialize MAC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_13
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown parameter type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inappropriate parameter type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_15
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "key is null"

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public engineReset()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/b;->b:LBi/I;

    invoke-interface {v0}, LBi/I;->reset()V

    return-void
.end method

.method public engineUpdate(B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/b;->b:LBi/I;

    invoke-interface {v0, p1}, LBi/I;->update(B)V

    return-void
.end method

.method public engineUpdate([BII)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/b;->b:LBi/I;

    invoke-interface {v0, p1, p2, p3}, LBi/I;->update([BII)V

    return-void
.end method
