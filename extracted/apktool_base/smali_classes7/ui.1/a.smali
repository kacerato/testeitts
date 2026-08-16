.class public Lui/a;
.super Lti/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/security/PublicKey;LQk/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lhi/h0;->w(Ljava/lang/Object;)Lhi/h0;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lti/b;-><init>(Lhi/h0;LQk/p;)V

    return-void
.end method

.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .locals 1

    .line 2
    new-instance v0, Lui/c;

    invoke-direct {v0, p1}, Lui/c;-><init>(Ljavax/security/auth/x500/X500Principal;)V

    invoke-direct {p0, v0}, Lti/b;-><init>(Lti/l;)V

    return-void
.end method
