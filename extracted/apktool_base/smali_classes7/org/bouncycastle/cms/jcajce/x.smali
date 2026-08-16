.class public Lorg/bouncycastle/cms/jcajce/x;
.super Lorg/bouncycastle/cms/j0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;Loh/x;)V
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

    new-instance v1, Lorg/bouncycastle/cms/jcajce/p;

    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p1

    invoke-direct {v1, p1, p2}, Lorg/bouncycastle/cms/jcajce/p;-><init>(Ljava/security/PublicKey;Loh/x;)V

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/cms/j0;-><init>(Luh/z;Lorg/bouncycastle/cms/h0;)V

    return-void
.end method

.method public constructor <init>([BLjava/security/PublicKey;Loh/x;)V
    .locals 1

    .line 2
    new-instance v0, Lorg/bouncycastle/cms/jcajce/p;

    invoke-direct {v0, p2, p3}, Lorg/bouncycastle/cms/jcajce/p;-><init>(Ljava/security/PublicKey;Loh/x;)V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/j0;-><init>([BLorg/bouncycastle/cms/h0;)V

    return-void
.end method


# virtual methods
.method public b(Loh/x;Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/x;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/j0;->a:Lorg/bouncycastle/cms/h0;

    check-cast v0, Lorg/bouncycastle/cms/jcajce/p;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/cms/jcajce/p;->h(Loh/x;Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/p;

    return-object p0
.end method

.method public c(Lhi/b;)Lorg/bouncycastle/cms/jcajce/x;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/j0;->a:Lorg/bouncycastle/cms/h0;

    check-cast v0, Lorg/bouncycastle/cms/jcajce/p;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/jcajce/p;->i(Lhi/b;)Lorg/bouncycastle/cms/jcajce/p;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/x;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/j0;->a:Lorg/bouncycastle/cms/h0;

    check-cast v0, Lorg/bouncycastle/cms/jcajce/p;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/jcajce/p;->j(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/p;

    return-object p0
.end method

.method public e(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/x;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/j0;->a:Lorg/bouncycastle/cms/h0;

    check-cast v0, Lorg/bouncycastle/cms/jcajce/p;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/jcajce/p;->k(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/p;

    return-object p0
.end method

.method public f(Ljava/security/SecureRandom;)Lorg/bouncycastle/cms/jcajce/x;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/j0;->a:Lorg/bouncycastle/cms/h0;

    check-cast v0, Lorg/bouncycastle/cms/jcajce/p;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/jcajce/p;->l(Ljava/security/SecureRandom;)Lorg/bouncycastle/cms/jcajce/p;

    return-object p0
.end method
