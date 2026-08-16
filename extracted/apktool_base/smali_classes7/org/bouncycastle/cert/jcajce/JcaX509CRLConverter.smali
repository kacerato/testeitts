.class public Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter$ExCRLException;
    }
.end annotation


# instance fields
.field public a:Lorg/bouncycastle/cert/jcajce/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/cert/jcajce/b;

    invoke-direct {v0}, Lorg/bouncycastle/cert/jcajce/b;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter;->a:Lorg/bouncycastle/cert/jcajce/a;

    new-instance v0, Lorg/bouncycastle/cert/jcajce/b;

    invoke-direct {v0}, Lorg/bouncycastle/cert/jcajce/b;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter;->a:Lorg/bouncycastle/cert/jcajce/a;

    return-void
.end method


# virtual methods
.method public a(Lli/g;)Ljava/security/cert/X509CRL;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter;->a:Lorg/bouncycastle/cert/jcajce/a;

    const-string v1, "X.509"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/cert/jcajce/a;->b(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Lli/g;->getEncoded()[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509CRL;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    :goto_0
    new-instance v0, Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter$ExCRLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot create factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter$ExCRLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_1
    new-instance v0, Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter$ExCRLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot find required provider:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter$ExCRLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :goto_2
    new-instance v0, Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter$ExCRLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception parsing certificate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter$ExCRLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public b(Ljava/lang/String;)Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter;
    .locals 1

    new-instance v0, Lorg/bouncycastle/cert/jcajce/o;

    invoke-direct {v0, p1}, Lorg/bouncycastle/cert/jcajce/o;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter;->a:Lorg/bouncycastle/cert/jcajce/a;

    return-object p0
.end method

.method public c(Ljava/security/Provider;)Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter;
    .locals 1

    new-instance v0, Lorg/bouncycastle/cert/jcajce/p;

    invoke-direct {v0, p1}, Lorg/bouncycastle/cert/jcajce/p;-><init>(Ljava/security/Provider;)V

    iput-object v0, p0, Lorg/bouncycastle/cert/jcajce/JcaX509CRLConverter;->a:Lorg/bouncycastle/cert/jcajce/a;

    return-object p0
.end method
