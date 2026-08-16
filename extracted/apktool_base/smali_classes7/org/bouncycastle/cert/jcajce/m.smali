.class public Lorg/bouncycastle/cert/jcajce/m;
.super Lli/m;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/security/cert/X509CRL;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/bouncycastle/cert/jcajce/h;

    invoke-direct {v0, p1}, Lorg/bouncycastle/cert/jcajce/h;-><init>(Ljava/security/cert/X509CRL;)V

    invoke-direct {p0, v0}, Lli/m;-><init>(Lli/g;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/X509Certificate;Ljava/util/Date;)V
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/cert/jcajce/m;-><init>(Ljavax/security/auth/x500/X500Principal;Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;Ljava/util/Date;)V
    .locals 0

    .line 3
    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lli/m;-><init>(Lfi/d;Ljava/util/Date;)V

    return-void
.end method
