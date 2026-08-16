.class public Lqi/f;
.super Loi/p;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;Lfi/d;)V
    .locals 1

    .line 1
    new-instance v0, Lhi/E;

    invoke-direct {v0, p2}, Lhi/E;-><init>(Lfi/d;)V

    invoke-direct {p0, p1, v0}, Lqi/f;-><init>(Ljava/security/PrivateKey;Lhi/E;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/PrivateKey;Lhi/E;)V
    .locals 0

    .line 2
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, LXh/v;->v(Ljava/lang/Object;)LXh/v;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Loi/p;-><init>(LXh/v;Lhi/E;)V

    return-void
.end method

.method public constructor <init>(Ljava/security/PrivateKey;Ljavax/security/auth/x500/X500Principal;)V
    .locals 0

    .line 3
    invoke-virtual {p2}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p2

    invoke-static {p2}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lqi/f;-><init>(Ljava/security/PrivateKey;Lfi/d;)V

    return-void
.end method
