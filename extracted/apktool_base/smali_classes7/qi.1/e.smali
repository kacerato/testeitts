.class public Lqi/e;
.super Loi/l;
.source "SourceFile"


# direct methods
.method public constructor <init>(LQk/y;LQk/F;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Loi/l;-><init>(LQk/y;LQk/F;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/security/PrivateKey;)Lwh/m;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, LXh/v;->v(Ljava/lang/Object;)LXh/v;

    move-result-object p1

    invoke-virtual {p0, p1}, Loi/l;->a(LXh/v;)Lwh/m;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/security/cert/X509Certificate;)Lwh/m;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Lorg/bouncycastle/cert/crmf/CRMFException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/cert/jcajce/i;

    invoke-direct {v0, p1}, Lorg/bouncycastle/cert/jcajce/i;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-virtual {p0, v0}, Loi/l;->b(Lli/h;)Lwh/m;

    move-result-object p1

    return-object p1
.end method
