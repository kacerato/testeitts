.class public Lorg/bouncycastle/cert/jcajce/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljavax/security/auth/x500/X500Principal;)[B
    .locals 0

    invoke-static {p0}, Lorg/bouncycastle/cert/jcajce/g;->i(Ljavax/security/auth/x500/X500Principal;)Ljavax/security/auth/x500/X500Principal;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p0

    return-object p0
.end method

.method public static b(Lfi/f;Ljava/security/cert/X509Certificate;)Lfi/d;
    .locals 1

    instance-of v0, p1, LIj/a;

    if-eqz v0, :cond_0

    check-cast p1, LIj/a;

    invoke-interface {p1}, LIj/a;->g()Lfi/d;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/cert/jcajce/g;->h(Lfi/d;)Lfi/d;

    move-result-object p1

    invoke-static {p0, p1}, Lfi/d;->w(Lfi/f;Ljava/lang/Object;)Lfi/d;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/bouncycastle/cert/jcajce/g;->f(Lfi/f;Ljavax/security/auth/x500/X500Principal;)Lfi/d;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/security/cert/X509Certificate;)Lfi/d;
    .locals 1

    instance-of v0, p0, LIj/a;

    if-eqz v0, :cond_0

    check-cast p0, LIj/a;

    invoke-interface {p0}, LIj/a;->g()Lfi/d;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/cert/jcajce/g;->h(Lfi/d;)Lfi/d;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/cert/jcajce/g;->g(Ljavax/security/auth/x500/X500Principal;)Lfi/d;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lfi/f;Ljava/security/cert/X509Certificate;)Lfi/d;
    .locals 1

    instance-of v0, p1, LIj/a;

    if-eqz v0, :cond_0

    check-cast p1, LIj/a;

    invoke-interface {p1}, LIj/a;->h()Lfi/d;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/cert/jcajce/g;->h(Lfi/d;)Lfi/d;

    move-result-object p1

    invoke-static {p0, p1}, Lfi/d;->w(Lfi/f;Ljava/lang/Object;)Lfi/d;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/bouncycastle/cert/jcajce/g;->f(Lfi/f;Ljavax/security/auth/x500/X500Principal;)Lfi/d;

    move-result-object p0

    return-object p0
.end method

.method public static e(Ljava/security/cert/X509Certificate;)Lfi/d;
    .locals 1

    instance-of v0, p0, LIj/a;

    if-eqz v0, :cond_0

    check-cast p0, LIj/a;

    invoke-interface {p0}, LIj/a;->h()Lfi/d;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/cert/jcajce/g;->h(Lfi/d;)Lfi/d;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/cert/jcajce/g;->g(Ljavax/security/auth/x500/X500Principal;)Lfi/d;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lfi/f;Ljavax/security/auth/x500/X500Principal;)Lfi/d;
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/cert/jcajce/g;->a(Ljavax/security/auth/x500/X500Principal;)[B

    move-result-object p1

    invoke-static {p0, p1}, Lfi/d;->w(Lfi/f;Ljava/lang/Object;)Lfi/d;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljavax/security/auth/x500/X500Principal;)Lfi/d;
    .locals 0

    invoke-static {p0}, Lorg/bouncycastle/cert/jcajce/g;->a(Ljavax/security/auth/x500/X500Principal;)[B

    move-result-object p0

    invoke-static {p0}, Lfi/d;->x(Ljava/lang/Object;)Lfi/d;

    move-result-object p0

    return-object p0
.end method

.method public static h(Lfi/d;)Lfi/d;
    .locals 0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public static i(Ljavax/security/auth/x500/X500Principal;)Ljavax/security/auth/x500/X500Principal;
    .locals 0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
