.class public Lorg/bouncycastle/jce/provider/J;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/security/cert/TrustAnchor;)Lfi/d;
    .locals 0

    invoke-static {p0}, Lorg/bouncycastle/jce/provider/J;->j(Ljava/security/cert/TrustAnchor;)Ljava/security/cert/TrustAnchor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/jce/provider/J;->h(Ljavax/security/auth/x500/X500Principal;)Lfi/d;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljavax/security/auth/x500/X500Principal;)[B
    .locals 0

    invoke-static {p0}, Lorg/bouncycastle/jce/provider/J;->m(Ljavax/security/auth/x500/X500Principal;)Ljavax/security/auth/x500/X500Principal;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/jce/provider/J;->n([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/Object;)Lfi/d;
    .locals 1

    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-static {p0}, Lorg/bouncycastle/jce/provider/J;->e(Ljava/security/cert/X509Certificate;)Lfi/d;

    move-result-object p0

    return-object p0

    :cond_0
    check-cast p0, Lorg/bouncycastle/x509/l;

    invoke-interface {p0}, Lorg/bouncycastle/x509/l;->f()Lorg/bouncycastle/x509/b;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/x509/b;->b()[Ljava/security/Principal;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    check-cast p0, Ljavax/security/auth/x500/X500Principal;

    invoke-static {p0}, Lorg/bouncycastle/jce/provider/J;->h(Ljavax/security/auth/x500/X500Principal;)Lfi/d;

    move-result-object p0

    return-object p0
.end method

.method public static d(Ljava/security/cert/X509CRL;)Lfi/d;
    .locals 0

    invoke-static {p0}, Lorg/bouncycastle/jce/provider/J;->k(Ljava/security/cert/X509CRL;)Ljava/security/cert/X509CRL;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/jce/provider/J;->h(Ljavax/security/auth/x500/X500Principal;)Lfi/d;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/security/cert/X509Certificate;)Lfi/d;
    .locals 1

    instance-of v0, p0, LIj/a;

    if-eqz v0, :cond_0

    check-cast p0, LIj/a;

    invoke-interface {p0}, LIj/a;->g()Lfi/d;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/jce/provider/J;->i(Lfi/d;)Lfi/d;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/jce/provider/J;->l(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/jce/provider/J;->h(Ljavax/security/auth/x500/X500Principal;)Lfi/d;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/security/cert/X509Certificate;)Lfi/d;
    .locals 1

    instance-of v0, p0, LIj/a;

    if-eqz v0, :cond_0

    check-cast p0, LIj/a;

    invoke-interface {p0}, LIj/a;->h()Lfi/d;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/jce/provider/J;->i(Lfi/d;)Lfi/d;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/jce/provider/J;->l(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/jce/provider/J;->h(Ljavax/security/auth/x500/X500Principal;)Lfi/d;

    move-result-object p0

    return-object p0
.end method

.method public static g(Lfi/f;Ljavax/security/auth/x500/X500Principal;)Lfi/d;
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/jce/provider/J;->b(Ljavax/security/auth/x500/X500Principal;)[B

    move-result-object p1

    invoke-static {p0, p1}, Lfi/d;->w(Lfi/f;Ljava/lang/Object;)Lfi/d;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/jce/provider/J;->i(Lfi/d;)Lfi/d;

    move-result-object p0

    return-object p0
.end method

.method public static h(Ljavax/security/auth/x500/X500Principal;)Lfi/d;
    .locals 0

    invoke-static {p0}, Lorg/bouncycastle/jce/provider/J;->b(Ljavax/security/auth/x500/X500Principal;)[B

    move-result-object p0

    invoke-static {p0}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/jce/provider/J;->i(Lfi/d;)Lfi/d;

    move-result-object p0

    return-object p0
.end method

.method public static i(Lfi/d;)Lfi/d;
    .locals 0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public static j(Ljava/security/cert/TrustAnchor;)Ljava/security/cert/TrustAnchor;
    .locals 0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public static k(Ljava/security/cert/X509CRL;)Ljava/security/cert/X509CRL;
    .locals 0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public static l(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;
    .locals 0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public static m(Ljavax/security/auth/x500/X500Principal;)Ljavax/security/auth/x500/X500Principal;
    .locals 0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public static n([B)[B
    .locals 0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
