.class public Lqi/d;
.super Loi/h;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 0

    invoke-direct {p0, p1}, Loi/h;-><init>(Ljava/math/BigInteger;)V

    return-void
.end method


# virtual methods
.method public u(Ljavax/security/auth/x500/X500Principal;)Lqi/d;
    .locals 1

    if-eqz p1, :cond_0

    new-instance v0, Lhi/E;

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object p1

    invoke-direct {v0, p1}, Lhi/E;-><init>(Lfi/d;)V

    invoke-virtual {p0, v0}, Loi/h;->h(Lhi/E;)Loi/h;

    :cond_0
    return-object p0
.end method

.method public v(Ljavax/security/auth/x500/X500Principal;)Lqi/d;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Loi/h;->i(Lfi/d;)Loi/h;

    :cond_0
    return-object p0
.end method

.method public w(Ljava/security/PublicKey;)Lqi/d;
    .locals 0

    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lhi/h0;->w(Ljava/lang/Object;)Lhi/h0;

    move-result-object p1

    invoke-virtual {p0, p1}, Loi/h;->o(Lhi/h0;)Loi/h;

    return-object p0
.end method

.method public x(Ljavax/security/auth/x500/X500Principal;)Lqi/d;
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p1

    invoke-static {p1}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object p1

    invoke-virtual {p0, p1}, Loi/h;->s(Lfi/d;)Loi/h;

    :cond_0
    return-object p0
.end method
