.class public Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipientInfoGenerator;
.super Lorg/bouncycastle/cms/r0;
.source "SourceFile"


# static fields
.field public static final d:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0c14416e6f6e796d6f75732053656e64657220202020"

    invoke-static {v0}, Lem/h;->b(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipientInfoGenerator;->d:[B

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/X509Certificate;Lhi/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 1
    new-instance v0, Luh/z;

    new-instance v1, Lorg/bouncycastle/cert/jcajce/i;

    invoke-direct {v1, p1}, Lorg/bouncycastle/cert/jcajce/i;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {v1}, Lli/h;->x()Lhi/q;

    move-result-object v1

    invoke-direct {v0, v1}, Luh/z;-><init>(Lhi/q;)V

    new-instance v1, Lorg/bouncycastle/operator/jcajce/f;

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-direct {v1, p2, p1}, Lorg/bouncycastle/operator/jcajce/f;-><init>(Lhi/b;Ljava/security/PublicKey;)V

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/cms/r0;-><init>(Luh/z;LQk/d;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/X509Certificate;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 2
    new-instance v0, Luh/z;

    new-instance v1, Lorg/bouncycastle/cert/jcajce/i;

    invoke-direct {v1, p1}, Lorg/bouncycastle/cert/jcajce/i;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {v1}, Lli/h;->x()Lhi/q;

    move-result-object v1

    invoke-direct {v0, v1}, Luh/z;-><init>(Lhi/q;)V

    invoke-direct {p0, p1, v0, p2, p3}, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipientInfoGenerator;-><init>(Ljava/security/cert/X509Certificate;Luh/z;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/X509Certificate;Luh/z;Ljava/lang/String;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 3
    new-instance v6, Lorg/bouncycastle/operator/jcajce/j;

    sget-object v4, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipientInfoGenerator;->d:[B

    invoke-static {p2}, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipientInfoGenerator;->b(Luh/z;)[B

    move-result-object v5

    move-object v0, v6

    move-object v1, p1

    move-object v2, p3

    move v3, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/operator/jcajce/j;-><init>(Ljava/security/cert/X509Certificate;Ljava/lang/String;I[B[B)V

    invoke-direct {p0, p2, v6}, Lorg/bouncycastle/cms/r0;-><init>(Luh/z;LQk/d;)V

    return-void
.end method

.method public constructor <init>([BLhi/b;Ljava/security/PublicKey;)V
    .locals 1

    .line 4
    new-instance v0, Lorg/bouncycastle/operator/jcajce/f;

    invoke-direct {v0, p2, p3}, Lorg/bouncycastle/operator/jcajce/f;-><init>(Lhi/b;Ljava/security/PublicKey;)V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/r0;-><init>([BLQk/d;)V

    return-void
.end method

.method public constructor <init>([BLjava/security/PublicKey;Ljava/lang/String;I)V
    .locals 7

    .line 5
    new-instance v6, Lorg/bouncycastle/operator/jcajce/j;

    sget-object v4, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipientInfoGenerator;->d:[B

    invoke-static {p1}, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipientInfoGenerator;->c([B)[B

    move-result-object v5

    move-object v0, v6

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/operator/jcajce/j;-><init>(Ljava/security/PublicKey;Ljava/lang/String;I[B[B)V

    invoke-direct {p0, p1, v6}, Lorg/bouncycastle/cms/r0;-><init>([BLQk/d;)V

    return-void
.end method

.method public static b(Luh/z;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    :try_start_0
    const-string v0, "DER"

    invoke-virtual {p0, v0}, Loh/v;->s(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipientInfoGenerator$1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot process extracted IssuerAndSerialNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipientInfoGenerator$1;-><init>(Ljava/lang/String;Ljava/io/IOException;)V

    throw v0
.end method

.method public static c([B)[B
    .locals 3

    :try_start_0
    new-instance v0, Loh/C0;

    invoke-direct {v0, p0}, Loh/C0;-><init>([B)V

    invoke-virtual {v0}, Loh/v;->getEncoded()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipientInfoGenerator$2;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot process subject key identifier: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipientInfoGenerator$2;-><init>(Ljava/lang/String;Ljava/io/IOException;)V

    throw v0
.end method


# virtual methods
.method public d(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipientInfoGenerator;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/r0;->a:LQk/d;

    check-cast v0, Lorg/bouncycastle/operator/jcajce/j;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/j;->c(Ljava/lang/String;)Lorg/bouncycastle/operator/jcajce/j;

    return-object p0
.end method

.method public e(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/JceKTSKeyTransRecipientInfoGenerator;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/r0;->a:LQk/d;

    check-cast v0, Lorg/bouncycastle/operator/jcajce/j;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/j;->d(Ljava/security/Provider;)Lorg/bouncycastle/operator/jcajce/j;

    return-object p0
.end method
