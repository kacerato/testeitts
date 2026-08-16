.class public Ljm/a;
.super Lhi/k;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lhi/B;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lhi/B;->A()Loh/g;

    move-result-object p1

    check-cast p1, Loh/E;

    invoke-direct {p0, p1}, Lhi/k;-><init>(Loh/E;)V

    return-void
.end method

.method public constructor <init>(Lhi/y0;)V
    .locals 0

    .line 2
    invoke-virtual {p1}, Lhi/y0;->b()Loh/g;

    move-result-object p1

    check-cast p1, Loh/E;

    invoke-direct {p0, p1}, Lhi/k;-><init>(Loh/E;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/PublicKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 3
    invoke-static {p1}, Ljm/a;->C(Ljava/security/PublicKey;)Loh/E;

    move-result-object p1

    invoke-direct {p0, p1}, Lhi/k;-><init>(Loh/E;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/X509Certificate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 4
    invoke-static {p1}, Ljm/a;->B(Ljava/security/cert/X509Certificate;)Loh/E;

    move-result-object p1

    invoke-direct {p0, p1}, Lhi/k;-><init>(Loh/E;)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-static {p1}, Ljm/b;->a([B)Loh/B;

    move-result-object p1

    check-cast p1, Loh/E;

    invoke-direct {p0, p1}, Lhi/k;-><init>(Loh/E;)V

    return-void
.end method

.method public static B(Ljava/security/cert/X509Certificate;)Loh/E;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    new-instance v0, Lhi/E;

    invoke-static {p0}, Lorg/bouncycastle/jce/g;->b(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/jce/j;

    move-result-object v1

    invoke-direct {v0, v1}, Lhi/E;-><init>(Lhi/B0;)V

    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lhi/h0;->w(Ljava/lang/Object;)Lhi/h0;

    move-result-object v1

    new-instance v2, Lhi/k;

    new-instance v3, Lhi/F;

    invoke-direct {v3, v0}, Lhi/F;-><init>(Lhi/E;)V

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v2, v1, v3, p0}, Lhi/k;-><init>(Lhi/h0;Lhi/F;Ljava/math/BigInteger;)V

    invoke-virtual {v2}, Lhi/k;->r()Loh/B;

    move-result-object p0

    check-cast p0, Loh/E;

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance v0, Lhi/E;

    invoke-static {p0}, Lorg/bouncycastle/jce/g;->b(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/jce/j;

    move-result-object v1

    invoke-direct {v0, v1}, Lhi/E;-><init>(Lhi/B0;)V

    sget-object v1, Lhi/B;->f:Loh/x;

    invoke-virtual {v1}, Loh/x;->J()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/security/cert/X509Extension;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Ljm/b;->a([B)Loh/B;

    move-result-object v1

    check-cast v1, Loh/y;

    new-instance v2, Lhi/k;

    invoke-virtual {v1}, Loh/y;->H()[B

    move-result-object v1

    new-instance v3, Lhi/F;

    invoke-direct {v3, v0}, Lhi/F;-><init>(Lhi/E;)V

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v2, v1, v3, p0}, Lhi/k;-><init>([BLhi/F;Ljava/math/BigInteger;)V

    invoke-virtual {v2}, Lhi/k;->r()Loh/B;

    move-result-object p0

    check-cast p0, Loh/E;

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-interface {v1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lhi/h0;->w(Ljava/lang/Object;)Lhi/h0;

    move-result-object v1

    new-instance v2, Lhi/k;

    new-instance v3, Lhi/F;

    invoke-direct {v3, v0}, Lhi/F;-><init>(Lhi/E;)V

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v2, v1, v3, p0}, Lhi/k;-><init>(Lhi/h0;Lhi/F;Ljava/math/BigInteger;)V

    invoke-virtual {v2}, Lhi/k;->r()Loh/B;

    move-result-object p0

    check-cast p0, Loh/E;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :goto_0
    new-instance v0, Ljava/security/cert/CertificateParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception extracting certificate details: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static C(Ljava/security/PublicKey;)Loh/E;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p0}, Ljava/security/Key;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lhi/h0;->w(Ljava/lang/Object;)Lhi/h0;

    move-result-object p0

    new-instance v0, Lhi/k;

    invoke-direct {v0, p0}, Lhi/k;-><init>(Lhi/h0;)V

    invoke-virtual {v0}, Lhi/k;->r()Loh/B;

    move-result-object p0

    check-cast p0, Loh/E;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t process key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
