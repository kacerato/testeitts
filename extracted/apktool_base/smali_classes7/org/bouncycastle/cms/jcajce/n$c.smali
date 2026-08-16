.class public Lorg/bouncycastle/cms/jcajce/n$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cms/jcajce/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public a:Ljavax/crypto/SecretKey;

.field public b:Lhi/b;

.field public c:Ljavax/crypto/Cipher;

.field public final synthetic d:Lorg/bouncycastle/cms/jcajce/n;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/jcajce/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/n$c;->d:Lorg/bouncycastle/cms/jcajce/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/bouncycastle/cms/jcajce/n;Lorg/bouncycastle/cms/jcajce/n$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/jcajce/n$c;-><init>(Lorg/bouncycastle/cms/jcajce/n;)V

    return-void
.end method


# virtual methods
.method public final e(Loh/x;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    new-instance v0, LOi/x;

    new-instance v1, LIi/L;

    invoke-direct {v1}, LIi/L;-><init>()V

    invoke-direct {v0, v1}, LOi/x;-><init>(LBi/y;)V

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/n$c;->a:Ljavax/crypto/SecretKey;

    invoke-interface {v1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    :try_start_0
    new-instance v2, LXi/g0;

    invoke-static {}, Lorg/bouncycastle/cms/jcajce/n;->a()[B

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/cms/jcajce/n$c;->b:Lhi/b;

    const-string v5, "DER"

    invoke-virtual {v4, v5}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v2, v1, v3, v4}, LXi/g0;-><init>([B[B[B)V

    invoke-virtual {v0, v2}, LOi/x;->c(LBi/x;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    array-length v2, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, LOi/x;->a([BII)I

    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lorg/bouncycastle/cms/jcajce/n$c;->a:Ljavax/crypto/SecretKey;

    invoke-interface {v2}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :try_start_1
    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/n$c;->c:Ljavax/crypto/Cipher;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0, p2, p3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    new-instance p2, Lhi/b;

    iget-object p3, p0, Lorg/bouncycastle/cms/jcajce/n$c;->b:Lhi/b;

    invoke-direct {p2, p1, p3}, Lhi/b;-><init>(Loh/x;Loh/g;)V

    iput-object p2, p0, Lorg/bouncycastle/cms/jcajce/n$c;->b:Lhi/b;

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unable to initialize cipher: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    const-string p3, "unable to encode enc algorithm parameters"

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public f(Loh/x;Loh/x;ILjava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/n$c;->d:Lorg/bouncycastle/cms/jcajce/n;

    invoke-static {v0}, Lorg/bouncycastle/cms/jcajce/n;->b(Lorg/bouncycastle/cms/jcajce/n;)Lorg/bouncycastle/cms/jcajce/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/bouncycastle/cms/jcajce/c;->l(Loh/x;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    invoke-static {p5}, LBi/r;->i(Ljava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object p5

    if-gez p3, :cond_0

    invoke-virtual {v0, p5}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p3, p5}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    :goto_0
    iget-object p3, p0, Lorg/bouncycastle/cms/jcajce/n$c;->d:Lorg/bouncycastle/cms/jcajce/n;

    invoke-static {p3}, Lorg/bouncycastle/cms/jcajce/n;->b(Lorg/bouncycastle/cms/jcajce/n;)Lorg/bouncycastle/cms/jcajce/c;

    move-result-object p3

    invoke-virtual {p3, p2}, Lorg/bouncycastle/cms/jcajce/c;->f(Loh/x;)Ljavax/crypto/Cipher;

    move-result-object p3

    iput-object p3, p0, Lorg/bouncycastle/cms/jcajce/n$c;->c:Ljavax/crypto/Cipher;

    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object p3

    iput-object p3, p0, Lorg/bouncycastle/cms/jcajce/n$c;->a:Ljavax/crypto/SecretKey;

    if-nez p4, :cond_1

    iget-object p3, p0, Lorg/bouncycastle/cms/jcajce/n$c;->d:Lorg/bouncycastle/cms/jcajce/n;

    invoke-static {p3}, Lorg/bouncycastle/cms/jcajce/n;->b(Lorg/bouncycastle/cms/jcajce/n;)Lorg/bouncycastle/cms/jcajce/c;

    move-result-object p3

    iget-object p4, p0, Lorg/bouncycastle/cms/jcajce/n$c;->a:Ljavax/crypto/SecretKey;

    invoke-virtual {p3, p2, p4, p5}, Lorg/bouncycastle/cms/jcajce/c;->s(Loh/x;Ljavax/crypto/SecretKey;Ljava/security/SecureRandom;)Ljava/security/AlgorithmParameters;

    move-result-object p4

    :cond_1
    const-string p3, "unable to initialize cipher: "

    const/4 v0, 0x1

    if-eqz p4, :cond_3

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/n$c;->d:Lorg/bouncycastle/cms/jcajce/n;

    invoke-static {v1}, Lorg/bouncycastle/cms/jcajce/n;->b(Lorg/bouncycastle/cms/jcajce/n;)Lorg/bouncycastle/cms/jcajce/c;

    move-result-object v1

    invoke-virtual {v1, p2, p4}, Lorg/bouncycastle/cms/jcajce/c;->t(Loh/x;Ljava/security/AlgorithmParameters;)Lhi/b;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/cms/jcajce/n$c;->b:Lhi/b;

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1, p4, p5}, Lorg/bouncycastle/cms/jcajce/n$c;->e(Loh/x;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    goto :goto_1

    :cond_2
    :try_start_0
    iget-object p1, p0, Lorg/bouncycastle/cms/jcajce/n$c;->c:Ljavax/crypto/Cipher;

    iget-object p2, p0, Lorg/bouncycastle/cms/jcajce/n$c;->a:Ljavax/crypto/SecretKey;

    invoke-virtual {p1, v0, p2, p4, p5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :cond_3
    :try_start_1
    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/n$c;->c:Ljavax/crypto/Cipher;

    iget-object v2, p0, Lorg/bouncycastle/cms/jcajce/n$c;->a:Ljavax/crypto/SecretKey;

    invoke-virtual {v1, v0, v2, p4, p5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_1

    iget-object p3, p0, Lorg/bouncycastle/cms/jcajce/n$c;->c:Ljavax/crypto/Cipher;

    invoke-virtual {p3}, Ljavax/crypto/Cipher;->getParameters()Ljava/security/AlgorithmParameters;

    move-result-object p3

    iget-object p4, p0, Lorg/bouncycastle/cms/jcajce/n$c;->d:Lorg/bouncycastle/cms/jcajce/n;

    invoke-static {p4}, Lorg/bouncycastle/cms/jcajce/n;->b(Lorg/bouncycastle/cms/jcajce/n;)Lorg/bouncycastle/cms/jcajce/c;

    move-result-object p4

    invoke-virtual {p4, p2, p3}, Lorg/bouncycastle/cms/jcajce/c;->t(Loh/x;Ljava/security/AlgorithmParameters;)Lhi/b;

    move-result-object p2

    iput-object p2, p0, Lorg/bouncycastle/cms/jcajce/n$c;->b:Lhi/b;

    if-eqz p1, :cond_4

    invoke-virtual {p0, p1, p3, p5}, Lorg/bouncycastle/cms/jcajce/n$c;->e(Loh/x;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    :cond_4
    :goto_1
    return-void

    :catch_1
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method
