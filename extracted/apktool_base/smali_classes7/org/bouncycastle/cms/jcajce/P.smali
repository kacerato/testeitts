.class public Lorg/bouncycastle/cms/jcajce/P;
.super Lorg/bouncycastle/cms/C0;
.source "SourceFile"


# instance fields
.field public k:Lorg/bouncycastle/cms/jcajce/c;


# direct methods
.method public constructor <init>(Loh/x;[C)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/cms/C0;-><init>(Loh/x;[C)V

    new-instance p1, Lorg/bouncycastle/cms/jcajce/c;

    new-instance p2, Lorg/bouncycastle/cms/jcajce/b;

    invoke-direct {p2}, Lorg/bouncycastle/cms/jcajce/b;-><init>()V

    invoke-direct {p1, p2}, Lorg/bouncycastle/cms/jcajce/c;-><init>(Lorg/bouncycastle/cms/jcajce/d;)V

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/P;->k:Lorg/bouncycastle/cms/jcajce/c;

    return-void
.end method


# virtual methods
.method public b(ILhi/b;I)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/P;->k:Lorg/bouncycastle/cms/jcajce/c;

    iget-object v1, p0, Lorg/bouncycastle/cms/C0;->a:[C

    invoke-virtual {v0, p1, v1, p2, p3}, Lorg/bouncycastle/cms/jcajce/c;->a(I[CLhi/b;I)[B

    move-result-object p1

    return-object p1
.end method

.method public c(Lhi/b;[BLQk/r;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/P;->k:Lorg/bouncycastle/cms/jcajce/c;

    invoke-virtual {v0, p3}, Lorg/bouncycastle/cms/jcajce/c;->w(LQk/r;)Ljava/security/Key;

    move-result-object p3

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/P;->k:Lorg/bouncycastle/cms/jcajce/c;

    invoke-virtual {p1}, Lhi/b;->u()Loh/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cms/jcajce/c;->o(Loh/x;)Ljavax/crypto/Cipher;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p1}, Lhi/b;->x()Loh/g;

    move-result-object p1

    invoke-static {p1}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p1

    invoke-virtual {p1}, Loh/y;->H()[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    new-instance p1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, p2, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    const/4 p2, 0x3

    invoke-virtual {v0, p2, p1, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0, p3}, Ljavax/crypto/Cipher;->wrap(Ljava/security/Key;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/cms/CMSException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cannot process content encryption key: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public i(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/P;
    .locals 2

    new-instance v0, Lorg/bouncycastle/cms/jcajce/c;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/S;

    invoke-direct {v1, p1}, Lorg/bouncycastle/cms/jcajce/S;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/c;-><init>(Lorg/bouncycastle/cms/jcajce/d;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/P;->k:Lorg/bouncycastle/cms/jcajce/c;

    return-object p0
.end method

.method public j(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/P;
    .locals 2

    new-instance v0, Lorg/bouncycastle/cms/jcajce/c;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/T;

    invoke-direct {v1, p1}, Lorg/bouncycastle/cms/jcajce/T;-><init>(Ljava/security/Provider;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/c;-><init>(Lorg/bouncycastle/cms/jcajce/d;)V

    iput-object v0, p0, Lorg/bouncycastle/cms/jcajce/P;->k:Lorg/bouncycastle/cms/jcajce/c;

    return-object p0
.end method
