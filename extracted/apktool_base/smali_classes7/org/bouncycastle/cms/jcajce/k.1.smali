.class public Lorg/bouncycastle/cms/jcajce/k;
.super Lyi/b;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lyi/b;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lorg/bouncycastle/cms/q0;)Ljava/security/cert/X509CertSelector;
    .locals 2

    invoke-virtual {p1}, Lorg/bouncycastle/cms/q0;->b()Lfi/d;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/cms/q0;->c()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/cms/q0;->d()[B

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lyi/b;->a(Lfi/d;Ljava/math/BigInteger;[B)Ljava/security/cert/X509CertSelector;

    move-result-object p1

    return-object p1
.end method

.method public d(Lorg/bouncycastle/cms/K0;)Ljava/security/cert/X509CertSelector;
    .locals 2

    invoke-virtual {p1}, Lorg/bouncycastle/cms/K0;->a()Lfi/d;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/cms/K0;->b()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/cms/K0;->c()[B

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lyi/b;->a(Lfi/d;Ljava/math/BigInteger;[B)Ljava/security/cert/X509CertSelector;

    move-result-object p1

    return-object p1
.end method
