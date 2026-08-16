.class public Lorg/bouncycastle/cert/jcajce/h;
.super Lli/g;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/security/cert/X509CRL;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/security/cert/X509CRL;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lhi/r;->u(Ljava/lang/Object;)Lhi/r;

    move-result-object p1

    invoke-direct {p0, p1}, Lli/g;-><init>(Lhi/r;)V

    return-void
.end method
