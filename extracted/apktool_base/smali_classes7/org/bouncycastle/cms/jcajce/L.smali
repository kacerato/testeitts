.class public Lorg/bouncycastle/cms/jcajce/L;
.super Lorg/bouncycastle/cms/r0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;)V
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

    invoke-direct {v1, p1}, Lorg/bouncycastle/operator/jcajce/f;-><init>(Ljava/security/cert/X509Certificate;)V

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/cms/r0;-><init>(Luh/z;LQk/d;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/X509Certificate;LQk/d;)V
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

    move-result-object p1

    invoke-direct {v0, p1}, Luh/z;-><init>(Lhi/q;)V

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/cms/r0;-><init>(Luh/z;LQk/d;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/X509Certificate;Lhi/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 3
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

.method public constructor <init>([BLQk/d;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/cms/r0;-><init>([BLQk/d;)V

    return-void
.end method

.method public constructor <init>([BLhi/b;Ljava/security/PublicKey;)V
    .locals 1

    .line 5
    new-instance v0, Lorg/bouncycastle/operator/jcajce/f;

    invoke-direct {v0, p2, p3}, Lorg/bouncycastle/operator/jcajce/f;-><init>(Lhi/b;Ljava/security/PublicKey;)V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/r0;-><init>([BLQk/d;)V

    return-void
.end method

.method public constructor <init>([BLjava/security/PublicKey;)V
    .locals 1

    .line 6
    new-instance v0, Lorg/bouncycastle/operator/jcajce/f;

    invoke-direct {v0, p2}, Lorg/bouncycastle/operator/jcajce/f;-><init>(Ljava/security/PublicKey;)V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/r0;-><init>([BLQk/d;)V

    return-void
.end method


# virtual methods
.method public b(Loh/x;Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/L;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/r0;->a:LQk/d;

    check-cast v0, Lorg/bouncycastle/operator/jcajce/f;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/operator/jcajce/f;->f(Loh/x;Ljava/lang/String;)Lorg/bouncycastle/operator/jcajce/f;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/L;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/r0;->a:LQk/d;

    check-cast v0, Lorg/bouncycastle/operator/jcajce/f;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/f;->g(Ljava/lang/String;)Lorg/bouncycastle/operator/jcajce/f;

    return-object p0
.end method

.method public d(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/L;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/r0;->a:LQk/d;

    check-cast v0, Lorg/bouncycastle/operator/jcajce/f;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/f;->h(Ljava/security/Provider;)Lorg/bouncycastle/operator/jcajce/f;

    return-object p0
.end method
