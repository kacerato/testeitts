.class public Lorg/bouncycastle/x509/X509V2CRLGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/x509/X509V2CRLGenerator$ExtCRLException;
    }
.end annotation


# instance fields
.field public final a:Ldk/f;

.field public b:Lhi/t0;

.field public c:Loh/x;

.field public d:Lhi/b;

.field public e:Ljava/lang/String;

.field public f:Lhi/A0;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ldk/c;

    invoke-direct {v0}, Ldk/c;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->a:Ldk/f;

    new-instance v0, Lhi/t0;

    invoke-direct {v0}, Lhi/t0;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->b:Lhi/t0;

    new-instance v0, Lhi/A0;

    invoke-direct {v0}, Lhi/A0;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->f:Lhi/A0;

    return-void
.end method


# virtual methods
.method public a(Ljava/security/cert/X509CRL;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/security/cert/X509CRL;->getRevokedCertificates()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRLEntry;

    new-instance v1, Loh/r;

    invoke-virtual {v0}, Ljava/security/cert/X509CRLEntry;->getEncoded()[B

    move-result-object v0

    invoke-direct {v1, v0}, Loh/r;-><init>([B)V

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->b:Lhi/t0;

    invoke-virtual {v1}, Loh/r;->k()Loh/B;

    move-result-object v1

    invoke-static {v1}, Loh/E;->G(Ljava/lang/Object;)Loh/E;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhi/t0;->e(Loh/E;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/security/cert/CRLException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception processing encoding of CRL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public b(Ljava/math/BigInteger;Ljava/util/Date;I)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->b:Lhi/t0;

    new-instance v1, Loh/s;

    invoke-direct {v1, p1}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    new-instance p1, Lhi/o0;

    invoke-direct {p1, p2}, Lhi/o0;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1, p1, p3}, Lhi/t0;->a(Loh/s;Lhi/o0;I)V

    return-void
.end method

.method public c(Ljava/math/BigInteger;Ljava/util/Date;ILjava/util/Date;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->b:Lhi/t0;

    new-instance v1, Loh/s;

    invoke-direct {v1, p1}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    new-instance p1, Lhi/o0;

    invoke-direct {p1, p2}, Lhi/o0;-><init>(Ljava/util/Date;)V

    new-instance p2, Loh/n;

    invoke-direct {p2, p4}, Loh/n;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1, p1, p3, p2}, Lhi/t0;->b(Loh/s;Lhi/o0;ILoh/n;)V

    return-void
.end method

.method public d(Ljava/math/BigInteger;Ljava/util/Date;Lhi/z0;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->b:Lhi/t0;

    new-instance v1, Loh/s;

    invoke-direct {v1, p1}, Loh/s;-><init>(Ljava/math/BigInteger;)V

    new-instance p1, Lhi/o0;

    invoke-direct {p1, p2}, Lhi/o0;-><init>(Ljava/util/Date;)V

    invoke-static {p3}, Lhi/C;->C(Ljava/lang/Object;)Lhi/C;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lhi/t0;->c(Loh/s;Lhi/o0;Lhi/C;)V

    return-void
.end method

.method public e(Ljava/lang/String;ZLoh/g;)V
    .locals 1

    new-instance v0, Loh/x;

    invoke-direct {v0, p1}, Loh/x;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/bouncycastle/x509/X509V2CRLGenerator;->g(Loh/x;ZLoh/g;)V

    return-void
.end method

.method public f(Ljava/lang/String;Z[B)V
    .locals 1

    new-instance v0, Loh/x;

    invoke-direct {v0, p1}, Loh/x;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Lorg/bouncycastle/x509/X509V2CRLGenerator;->h(Loh/x;Z[B)V

    return-void
.end method

.method public g(Loh/x;ZLoh/g;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->f:Lhi/A0;

    new-instance v1, Loh/x;

    invoke-virtual {p1}, Loh/x;->J()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Loh/x;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2, p3}, Lhi/A0;->a(Loh/x;ZLoh/g;)V

    return-void
.end method

.method public h(Loh/x;Z[B)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->f:Lhi/A0;

    new-instance v1, Loh/x;

    invoke-virtual {p1}, Loh/x;->J()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Loh/x;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2, p3}, Lhi/A0;->b(Loh/x;Z[B)V

    return-void
.end method

.method public i(Ljava/security/PrivateKey;)Ljava/security/cert/X509CRL;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/x509/X509V2CRLGenerator;->l(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)Ljava/security/cert/X509CRL;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/security/cert/X509CRL;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/x509/X509V2CRLGenerator;->k(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509CRL;

    move-result-object p1

    return-object p1
.end method

.method public k(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509CRL;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/x509/X509V2CRLGenerator;->m()Lhi/i0;

    move-result-object v6

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->c:Loh/x;

    iget-object v1, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->e:Ljava/lang/String;

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, v6

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/x509/w;->a(Loh/x;Ljava/lang/String;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/SecureRandom;Loh/g;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, v6, p1}, Lorg/bouncycastle/x509/X509V2CRLGenerator;->n(Lhi/i0;[B)Ljava/security/cert/X509CRL;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/x509/X509V2CRLGenerator$ExtCRLException;

    const-string p3, "cannot generate CRL encoding"

    invoke-direct {p2, p3, p1}, Lorg/bouncycastle/x509/X509V2CRLGenerator$ExtCRLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public l(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)Ljava/security/cert/X509CRL;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/lang/IllegalStateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/SignatureException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/x509/X509V2CRLGenerator;->m()Lhi/i0;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->c:Loh/x;

    iget-object v2, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->e:Ljava/lang/String;

    invoke-static {v1, v2, p1, p2, v0}, Lorg/bouncycastle/x509/w;->b(Loh/x;Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/SecureRandom;Loh/g;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/x509/X509V2CRLGenerator;->n(Lhi/i0;[B)Ljava/security/cert/X509CRL;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lorg/bouncycastle/x509/X509V2CRLGenerator$ExtCRLException;

    const-string v0, "cannot generate CRL encoding"

    invoke-direct {p2, v0, p1}, Lorg/bouncycastle/x509/X509V2CRLGenerator$ExtCRLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final m()Lhi/i0;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->f:Lhi/A0;

    invoke-virtual {v0}, Lhi/A0;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->b:Lhi/t0;

    iget-object v1, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->f:Lhi/A0;

    invoke-virtual {v1}, Lhi/A0;->c()Lhi/z0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lhi/t0;->m(Lhi/z0;)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->b:Lhi/t0;

    invoke-virtual {v0}, Lhi/t0;->i()Lhi/i0;

    move-result-object v0

    return-object v0
.end method

.method public final n(Lhi/i0;[B)Ljava/security/cert/X509CRL;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    new-instance v0, Loh/h;

    invoke-direct {v0}, Loh/h;-><init>()V

    invoke-virtual {v0, p1}, Loh/h;->a(Loh/g;)V

    iget-object p1, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->d:Lhi/b;

    invoke-virtual {v0, p1}, Loh/h;->a(Loh/g;)V

    new-instance p1, Loh/r0;

    invoke-direct {p1, p2}, Loh/r0;-><init>([B)V

    invoke-virtual {v0, p1}, Loh/h;->a(Loh/g;)V

    new-instance p1, Lorg/bouncycastle/jce/provider/U;

    new-instance p2, Loh/G0;

    invoke-direct {p2, v0}, Loh/G0;-><init>(Loh/h;)V

    invoke-static {p2}, Lhi/r;->u(Ljava/lang/Object;)Lhi/r;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bouncycastle/jce/provider/U;-><init>(Lhi/r;)V

    return-object p1
.end method

.method public o(Ljava/security/PrivateKey;)Ljava/security/cert/X509CRL;
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

    invoke-virtual {p0, p1, v0, v1}, Lorg/bouncycastle/x509/X509V2CRLGenerator;->q(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509CRL;

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

.method public p(Ljava/security/PrivateKey;Ljava/lang/String;)Ljava/security/cert/X509CRL;
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

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/x509/X509V2CRLGenerator;->q(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509CRL;

    move-result-object p1

    return-object p1
.end method

.method public q(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509CRL;
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
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/x509/X509V2CRLGenerator;->k(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509CRL;

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

.method public r(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)Ljava/security/cert/X509CRL;
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

    invoke-virtual {p0, p1, v0, p2}, Lorg/bouncycastle/x509/X509V2CRLGenerator;->q(Ljava/security/PrivateKey;Ljava/lang/String;Ljava/security/SecureRandom;)Ljava/security/cert/X509CRL;

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

.method public s()Ljava/util/Iterator;
    .locals 1

    invoke-static {}, Lorg/bouncycastle/x509/w;->e()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public t()V
    .locals 1

    new-instance v0, Lhi/t0;

    invoke-direct {v0}, Lhi/t0;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->b:Lhi/t0;

    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->f:Lhi/A0;

    invoke-virtual {v0}, Lhi/A0;->e()V

    return-void
.end method

.method public u(Lhi/B0;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->b:Lhi/t0;

    invoke-virtual {v0, p1}, Lhi/t0;->o(Lhi/B0;)V

    return-void
.end method

.method public v(Ljavax/security/auth/x500/X500Principal;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->b:Lhi/t0;

    new-instance v1, Lorg/bouncycastle/jce/j;

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/bouncycastle/jce/j;-><init>([B)V

    invoke-virtual {v0, v1}, Lhi/t0;->o(Lhi/B0;)V
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

.method public w(Ljava/util/Date;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->b:Lhi/t0;

    new-instance v1, Lhi/o0;

    invoke-direct {v1, p1}, Lhi/o0;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lhi/t0;->p(Lhi/o0;)V

    return-void
.end method

.method public x(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->e:Ljava/lang/String;

    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/x509/w;->f(Ljava/lang/String;)Loh/x;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->c:Loh/x;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v0, p1}, Lorg/bouncycastle/x509/w;->j(Loh/x;Ljava/lang/String;)Lhi/b;

    move-result-object p1

    iput-object p1, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->d:Lhi/b;

    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->b:Lhi/t0;

    invoke-virtual {v0, p1}, Lhi/t0;->r(Lhi/b;)V

    return-void

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown signature type requested"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public y(Ljava/util/Date;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2CRLGenerator;->b:Lhi/t0;

    new-instance v1, Lhi/o0;

    invoke-direct {v1, p1}, Lhi/o0;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lhi/t0;->s(Lhi/o0;)V

    return-void
.end method
