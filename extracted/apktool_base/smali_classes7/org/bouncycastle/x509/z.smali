.class public Lorg/bouncycastle/x509/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ldk/f;

.field public final b:Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;

.field public c:Lhi/u0;

.field public d:Loh/x;

.field public e:Lhi/b;

.field public f:Ljava/lang/String;

.field public g:Lhi/A0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ldk/c;

    invoke-direct {v0}, Ldk/c;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/z;->a:Ldk/f;

    new-instance v0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/z;->b:Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;

    new-instance v0, Lhi/u0;

    invoke-direct {v0}, Lhi/u0;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/z;->c:Lhi/u0;

    new-instance v0, Lhi/A0;

    invoke-direct {v0}, Lhi/A0;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/z;->g:Lhi/A0;

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lorg/bouncycastle/x509/z;->f:Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/x509/w;->f(Ljava/lang/String;)Loh/x;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/x509/z;->d:Loh/x;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v0, p1}, Lorg/bouncycastle/x509/w;->j(Loh/x;Ljava/lang/String;)Lhi/b;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/x509/z;->e:Lhi/b;

    iget-object v0, p0, Lorg/bouncycastle/x509/z;->c:Lhi/u0;

    invoke-virtual {v0, p1}, Lhi/u0;->l(Lhi/b;)V

    return-void

    :catch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown signature type requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public B(Lhi/B0;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/z;->c:Lhi/u0;

    invoke-virtual {v0, p1}, Lhi/u0;->p(Lhi/B0;)V

    return-void
.end method

.method public C(Ljavax/security/auth/x500/X500Principal;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/x509/z;->c:Lhi/u0;

    new-instance v1, Lorg/bouncycastle/jce/j;

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/bouncycastle/jce/j;-><init>([B)V

    invoke-virtual {v0, v1}, Lhi/u0;->p(Lhi/B0;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t process principal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public D([Z)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/z;->c:Lhi/u0;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/x509/z;->e([Z)Loh/r0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lhi/u0;->r(Loh/r0;)V

    return-void
.end method

.method public a(Ljava/lang/String;ZLoh/g;)V
    .locals 1

    new-instance v0, Loh/x;

    invoke-direct {v0, p1}, Loh/x;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/bouncycastle/x509/z;->c(Loh/x;ZLoh/g;)V

    return-void
.end method

.method public b(Ljava/lang/String;Z[B)V
    .locals 1

    new-instance v0, Loh/x;

    invoke-direct {v0, p1}, Loh/x;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/bouncycastle/x509/z;->d(Loh/x;Z[B)V

    return-void
.end method

.method public c(Loh/x;ZLoh/g;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/x509/z;->g:Lhi/A0;

    new-instance v1, Loh/x;

    invoke-virtual {p1}, Loh/x;->J()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Loh/x;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2, p3}, Lhi/A0;->a(Loh/x;ZLoh/g;)V

    return-void
.end method

.method public d(Loh/x;Z[B)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/x509/z;->g:Lhi/A0;

    new-instance v1, Loh/x;

    invoke-virtual {p1}, Loh/x;->J()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Loh/x;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2, p3}, Lhi/A0;->b(Loh/x;Z[B)V

    return-void
.end method

.method public final e([Z)Loh/r0;
    .locals 7

    array-length v0, p1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-eq v2, v3, :cond_1

    div-int/lit8 v3, v2, 0x8

    aget-byte v4, v0, v3

    aget-boolean v5, p1, v2

    if-eqz v5, :cond_0

    rem-int/lit8 v5, v2, 0x8

    rsub-int/lit8 v5, v5, 0x7

    const/4 v6, 0x1

    shl-int v5, v6, v5

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_1
    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    array-length p1, p1

    rem-int/lit8 p1, p1, 0x8

    if-nez p1, :cond_2

    new-instance p1, Loh/r0;

    invoke-direct {p1, v0}, Loh/r0;-><init>([B)V

    return-object p1

    :cond_2
    new-instance v1, Loh/r0;

    rsub-int/lit8 p1, p1, 0x8

    invoke-direct {v1, v0, p1}, Loh/r0;-><init>([BI)V

    return-object v1
.end method

.method public f(Ljava/lang/String;ZLjava/security/cert/X509Certificate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    invoke-interface {p3, p1}, Ljava/security/cert/X509Extension;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object p3

    if-eqz p3, :cond_0

    :try_start_0
    invoke-static {p3}, Ljm/b;->a([B)Loh/B;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/x509/z;->a(Ljava/lang/String;ZLoh/g;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/security/cert/CertificateParsingException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_0
    new-instance p2, Ljava/security/cert/CertificateParsingException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "extension "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not present"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public g(Loh/x;ZLjava/security/cert/X509Certificate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    invoke-virtual {p1}, Loh/x;->J()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/x509/z;->f(Ljava/lang/String;ZLjava/security/cert/X509Certificate;)V

    return-void
.end method

.method public h(Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/x509/z;->k(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public i(Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/x509/z;->j(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/x509/z;->m()Lhi/j0;

    move-result-object v6

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/x509/z;->d:Loh/x;

    iget-object v1, p0, Lorg/bouncycastle/x509/z;->f:Ljava/lang/String;

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/x509/w;->a(Loh/x;Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/SecureRandom;Loh/g;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0, v6, p1}, Lorg/bouncycastle/x509/z;->l(Lhi/j0;[B)Ljava/security/cert/X509Certificate;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/x509/ExtCertificateEncodingException;

    const-string p3, "exception producing certificate object"

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/x509/ExtCertificateEncodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lorg/bouncycastle/x509/ExtCertificateEncodingException;

    const-string p3, "exception encoding TBS cert"

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/x509/ExtCertificateEncodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public k(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/x509/z;->m()Lhi/j0;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/x509/z;->d:Loh/x;

    iget-object v2, p0, Lorg/bouncycastle/x509/z;->f:Ljava/lang/String;

    invoke-static {v1, v2, p1, p2, v0}, Lorg/bouncycastle/x509/w;->b(Loh/x;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/SecureRandom;Loh/g;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/x509/z;->l(Lhi/j0;[B)Ljava/security/cert/X509Certificate;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/x509/ExtCertificateEncodingException;

    const-string v0, "exception producing certificate object"

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/x509/ExtCertificateEncodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    new-instance p2, Lorg/bouncycastle/x509/ExtCertificateEncodingException;

    const-string v0, "exception encoding TBS cert"

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/x509/ExtCertificateEncodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final l(Lhi/j0;[B)Ljava/security/cert/X509Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    invoke-virtual {v0, p1}, Loh/h;->a(Loh/g;)V

    iget-object p1, p0, Lorg/bouncycastle/x509/z;->e:Lhi/b;

    invoke-virtual {v0, p1}, Loh/h;->a(Loh/g;)V

    new-instance p1, Loh/r0;

    invoke-direct {p1, p2}, Loh/r0;-><init>([B)V

    invoke-virtual {v0, p1}, Loh/h;->a(Loh/g;)V

    iget-object p1, p0, Lorg/bouncycastle/x509/z;->b:Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;

    new-instance p2, Ljava/io/ByteArrayInputStream;

    new-instance v1, Loh/G0;

    invoke-direct {v1, v0}, Loh/G0;-><init>(Loh/h;)V

    const-string v0, "DER"

    invoke-virtual {v1, v0}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p1, p2}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/CertificateFactory;->engineGenerateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    return-object p1
.end method

.method public final m()Lhi/j0;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/x509/z;->g:Lhi/A0;

    invoke-virtual {v0}, Lhi/A0;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/x509/z;->c:Lhi/u0;

    iget-object v1, p0, Lorg/bouncycastle/x509/z;->g:Lhi/A0;

    invoke-virtual {v1}, Lhi/A0;->c()Lhi/z0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhi/u0;->g(Lhi/z0;)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/x509/z;->c:Lhi/u0;

    invoke-virtual {v0}, Lhi/u0;->b()Lhi/j0;

    move-result-object v0

    return-object v0
.end method

.method public n(Ljava/security/PrivateKey;)Ljava/security/cert/X509Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    :try_start_0
    const-string v0, "BC"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/bouncycastle/x509/z;->p(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "BC provider not installed!"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public o(Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/lang/SecurityException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/x509/z;->p(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;

    move-result-object p1

    return-object p1
.end method

.method public p(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/lang/SecurityException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/x509/z;->j(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/SecurityException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    :catch_1
    move-exception p1

    throw p1

    :catch_2
    move-exception p1

    throw p1

    :catch_3
    move-exception p1

    throw p1
.end method

.method public q(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    :try_start_0
    const-string v0, "BC"

    invoke-virtual {p0, p1, v0, p2}, Lorg/bouncycastle/x509/z;->p(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509Certificate;

    move-result-object p1
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "BC provider not installed!"

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public r()Ljava/util/Iterator;
    .locals 1

    invoke-static {}, Lorg/bouncycastle/x509/w;->e()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public s()V
    .locals 1

    new-instance v0, Lhi/u0;

    invoke-direct {v0}, Lhi/u0;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/z;->c:Lhi/u0;

    iget-object v0, p0, Lorg/bouncycastle/x509/z;->g:Lhi/A0;

    invoke-virtual {v0}, Lhi/A0;->e()V

    return-void
.end method

.method public t(Lhi/B0;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/z;->c:Lhi/u0;

    invoke-virtual {v0, p1}, Lhi/u0;->i(Lhi/B0;)V

    return-void
.end method

.method public u(Ljavax/security/auth/x500/X500Principal;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/x509/z;->c:Lhi/u0;

    new-instance v1, Lorg/bouncycastle/jce/j;

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/bouncycastle/jce/j;-><init>([B)V

    invoke-virtual {v0, v1}, Lhi/u0;->i(Lhi/B0;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t process principal: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public v([Z)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/z;->c:Lhi/u0;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/x509/z;->e([Z)Loh/r0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lhi/u0;->j(Loh/r0;)V

    return-void
.end method

.method public w(Ljava/util/Date;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/x509/z;->c:Lhi/u0;

    new-instance v1, Lhi/o0;

    invoke-direct {v1, p1}, Lhi/o0;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lhi/u0;->d(Lhi/o0;)V

    return-void
.end method

.method public x(Ljava/util/Date;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/x509/z;->c:Lhi/u0;

    new-instance v1, Lhi/o0;

    invoke-direct {v1, p1}, Lhi/o0;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lhi/u0;->m(Lhi/o0;)V

    return-void
.end method

.method public y(Ljava/security/PublicKey;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/x509/z;->c:Lhi/u0;

    new-instance v1, Loh/r;

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-direct {v1, p1}, Loh/r;-><init>([B)V

    invoke-virtual {v1}, Loh/r;->k()Loh/B;

    move-result-object p1

    invoke-static {p1}, Lhi/h0;->w(Ljava/lang/Object;)Lhi/h0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lhi/u0;->q(Lhi/h0;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to process key - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public z(Ljava/math/BigInteger;)V
    .locals 2

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/x509/z;->c:Lhi/u0;

    new-instance v1, Loh/s;

    invoke-direct {v1, p1}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lhi/u0;->k(Loh/s;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "serial number must be a positive integer"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
