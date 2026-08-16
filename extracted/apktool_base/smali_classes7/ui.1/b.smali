.class public Lui/b;
.super Lti/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(LQk/p;Ljava/security/cert/X509Certificate;Ljava/math/BigInteger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/ocsp/OCSPException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/cert/jcajce/i;

    invoke-direct {v0, p2}, Lorg/bouncycastle/cert/jcajce/i;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-direct {p0, p1, v0, p3}, Lti/c;-><init>(LQk/p;Lli/h;Ljava/math/BigInteger;)V

    return-void
.end method
