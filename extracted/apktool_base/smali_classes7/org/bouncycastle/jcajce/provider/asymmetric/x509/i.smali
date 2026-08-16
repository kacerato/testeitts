.class public Lorg/bouncycastle/jcajce/provider/asymmetric/x509/i;
.super Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;
.source "SourceFile"


# instance fields
.field public final h:[B

.field public final i:Ljava/security/cert/CertificateEncodingException;


# direct methods
.method public constructor <init>(Ldk/f;Lhi/q;Lhi/l;[ZLjava/lang/String;[B[BLjava/security/cert/CertificateEncodingException;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/h;-><init>(Ldk/f;Lhi/q;Lhi/l;[ZLjava/lang/String;[B)V

    iput-object p7, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/i;->h:[B

    iput-object p8, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/i;->i:Ljava/security/cert/CertificateEncodingException;

    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/i;->i:Ljava/security/cert/CertificateEncodingException;

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/asymmetric/x509/i;->h:[B

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    invoke-direct {v0}, Ljava/security/cert/CertificateEncodingException;-><init>()V

    throw v0

    :cond_1
    throw v0
.end method
