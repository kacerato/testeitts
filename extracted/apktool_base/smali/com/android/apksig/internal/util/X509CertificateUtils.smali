.class public Lcom/android/apksig/internal/util/X509CertificateUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BEGIN_CERT_HEADER:[B

.field public static final END_CERT_FOOTER:[B

.field private static sCertFactory:Ljava/security/cert/CertificateFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "-----BEGIN CERTIFICATE-----"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/apksig/internal/util/X509CertificateUtils;->BEGIN_CERT_HEADER:[B

    const-string v0, "-----END CERTIFICATE-----"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/apksig/internal/util/X509CertificateUtils;->END_CERT_FOOTER:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildCertFactory()V
    .locals 3

    sget-object v0, Lcom/android/apksig/internal/util/X509CertificateUtils;->sCertFactory:Ljava/security/cert/CertificateFactory;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    sput-object v0, Lcom/android/apksig/internal/util/X509CertificateUtils;->sCertFactory:Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to create X.509 CertificateFactory"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/X509Certificate;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/android/apksig/internal/util/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    invoke-static {p0}, Lcom/android/apksig/internal/util/X509CertificateUtils;->generateCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 3
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Failed to parse certificate"

    invoke-direct {v0, v1, p0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static generateCertificate([B)Ljava/security/cert/X509Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/android/apksig/internal/util/X509CertificateUtils;->sCertFactory:Ljava/security/cert/CertificateFactory;

    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Lcom/android/apksig/internal/util/X509CertificateUtils;->buildCertFactory()V

    .line 6
    :cond_0
    sget-object v0, Lcom/android/apksig/internal/util/X509CertificateUtils;->sCertFactory:Ljava/security/cert/CertificateFactory;

    invoke-static {p0, v0}, Lcom/android/apksig/internal/util/X509CertificateUtils;->generateCertificate([BLjava/security/cert/CertificateFactory;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    return-object p0
.end method

.method public static generateCertificate([BLjava/security/cert/CertificateFactory;)Ljava/security/cert/X509Certificate;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 7
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p1, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 8
    :catch_0
    :try_start_1
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 9
    invoke-static {p0}, Lcom/android/apksig/internal/util/X509CertificateUtils;->getNextDEREncodedCertificateBlock(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 10
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    .line 11
    const-class v1, Lcom/android/apksig/internal/x509/Certificate;

    invoke-static {p0, v1}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->parse(Ljava/nio/ByteBuffer;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/apksig/internal/x509/Certificate;

    .line 12
    invoke-static {v1}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->encode(Ljava/lang/Object;)[B

    move-result-object v1

    .line 13
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    check-cast p1, Ljava/security/cert/X509Certificate;

    .line 14
    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    sub-int/2addr v1, v0

    new-array v1, v1, [B

    .line 15
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 16
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 17
    new-instance p0, Lcom/android/apksig/internal/util/GuaranteedEncodedFormX509Certificate;

    invoke-direct {p0, p1, v1}, Lcom/android/apksig/internal/util/GuaranteedEncodedFormX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V
    :try_end_1
    .catch Lcom/android/apksig/internal/asn1/Asn1DecodingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/android/apksig/internal/asn1/Asn1EncodingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    goto :goto_0

    :catch_3
    move-exception p0

    .line 18
    :goto_0
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string v0, "Failed to parse certificate"

    invoke-direct {p1, v0, p0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/android/apksig/internal/util/X509CertificateUtils;->sCertFactory:Ljava/security/cert/CertificateFactory;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/android/apksig/internal/util/X509CertificateUtils;->buildCertFactory()V

    .line 3
    :cond_0
    sget-object v0, Lcom/android/apksig/internal/util/X509CertificateUtils;->sCertFactory:Ljava/security/cert/CertificateFactory;

    invoke-static {p0, v0}, Lcom/android/apksig/internal/util/X509CertificateUtils;->generateCertificates(Ljava/io/InputStream;Ljava/security/cert/CertificateFactory;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static generateCertificates(Ljava/io/InputStream;Ljava/security/cert/CertificateFactory;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/security/cert/CertificateFactory;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 4
    :try_start_0
    invoke-static {p0}, Lcom/android/apksig/internal/util/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 5
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p1, v0}, Ljava/security/cert/CertificateFactory;->generateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;

    move-result-object p0
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    .line 6
    :catch_0
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 8
    :goto_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    invoke-static {p0}, Lcom/android/apksig/internal/util/X509CertificateUtils;->getNextDEREncodedCertificateBlock(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v2

    .line 11
    const-class v3, Lcom/android/apksig/internal/x509/Certificate;

    invoke-static {v1, v3}, Lcom/android/apksig/internal/asn1/Asn1BerParser;->parse(Ljava/nio/ByteBuffer;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/apksig/internal/x509/Certificate;

    .line 12
    invoke-static {v3}, Lcom/android/apksig/internal/asn1/Asn1DerEncoder;->encode(Ljava/lang/Object;)[B

    move-result-object v3

    .line 13
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p1, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 14
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v4

    sub-int/2addr v4, v2

    new-array v4, v4, [B

    .line 15
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 16
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 17
    new-instance v1, Lcom/android/apksig/internal/util/GuaranteedEncodedFormX509Certificate;

    invoke-direct {v1, v3, v4}, Lcom/android/apksig/internal/util/GuaranteedEncodedFormX509Certificate;-><init>(Ljava/security/cert/X509Certificate;[B)V

    .line 18
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lcom/android/apksig/internal/asn1/Asn1DecodingException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/android/apksig/internal/asn1/Asn1EncodingException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    goto :goto_1

    :cond_0
    return-object v0

    .line 19
    :goto_1
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string v0, "Failed to parse certificates"

    invoke-direct {p1, v0, p0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_3
    move-exception p0

    .line 20
    new-instance p1, Ljava/security/cert/CertificateException;

    const-string v0, "Failed to read the input stream"

    invoke-direct {p1, v0, p0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static getNextDEREncodedCertificateBlock(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    sget-object v1, Lcom/android/apksig/internal/util/X509CertificateUtils;->BEGIN_CERT_HEADER:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/apksig/internal/util/X509CertificateUtils;->BEGIN_CERT_HEADER:[B

    array-length v2, v1

    if-ge v0, v2, :cond_2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    aget-byte v1, v1, v0

    if-eq v2, v1, :cond_1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    int-to-char v1, v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    :goto_2
    const/4 v1, 0x1

    :goto_3
    sget-object v2, Lcom/android/apksig/internal/util/X509CertificateUtils;->END_CERT_FOOTER:[B

    array-length v3, v2

    if-ge v1, v3, :cond_8

    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    aget-byte v2, v2, v1

    if-ne v3, v2, :cond_6

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/security/cert/CertificateException;

    const-string v0, "The provided input contains the PEM certificate header without a valid certificate footer"

    invoke-direct {p0, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/security/cert/CertificateException;

    const-string v0, "The provided input contains the PEM certificate header but does not contain sufficient data for the footer"

    invoke-direct {p0, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    :goto_4
    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    int-to-char v2, v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_9

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0

    :cond_a
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "The certificateBuffer cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
