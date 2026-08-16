.class public Lorg/bouncycastle/jce/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/security/cert/X509CRL;)Lorg/bouncycastle/jce/j;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getTBSCertList()[B

    move-result-object p0

    invoke-static {p0}, Loh/B;->B([B)Loh/B;

    move-result-object p0

    invoke-static {p0}, Lhi/i0;->v(Ljava/lang/Object;)Lhi/i0;

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/jce/j;

    invoke-virtual {p0}, Lhi/i0;->x()Lfi/d;

    move-result-object p0

    invoke-static {p0}, Lhi/B0;->C(Ljava/lang/Object;)Lhi/B0;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/jce/j;-><init>(Lhi/B0;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/security/cert/CRLException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/jce/j;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object p0

    invoke-static {p0}, Loh/B;->B([B)Loh/B;

    move-result-object p0

    invoke-static {p0}, Lhi/k0;->w(Ljava/lang/Object;)Lhi/k0;

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/jce/j;

    invoke-virtual {p0}, Lhi/k0;->y()Lfi/d;

    move-result-object p0

    invoke-static {p0}, Lhi/B0;->C(Ljava/lang/Object;)Lhi/B0;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/jce/j;-><init>(Lhi/B0;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/jce/j;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object p0

    invoke-static {p0}, Loh/B;->B([B)Loh/B;

    move-result-object p0

    invoke-static {p0}, Lhi/k0;->w(Ljava/lang/Object;)Lhi/k0;

    move-result-object p0

    new-instance v0, Lorg/bouncycastle/jce/j;

    invoke-virtual {p0}, Lhi/k0;->D()Lfi/d;

    move-result-object p0

    invoke-static {p0}, Lhi/B0;->C(Ljava/lang/Object;)Lhi/B0;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/jce/j;-><init>(Lhi/B0;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
