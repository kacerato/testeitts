.class public Lui/c;
.super Lti/l;
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

    invoke-direct {p0, p1, p2}, Lti/l;-><init>(Lhi/h0;LQk/p;)V

    return-void
.end method

.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object p1

    invoke-direct {p0, p1}, Lti/l;-><init>(Lfi/d;)V

    return-void
.end method
