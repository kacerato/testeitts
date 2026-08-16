.class public Lorg/bouncycastle/cms/jcajce/T;
.super Ldk/k;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/cms/jcajce/d;


# direct methods
.method public constructor <init>(Ljava/security/Provider;)V
    .locals 0

    invoke-direct {p0, p1}, Ldk/k;-><init>(Ljava/security/Provider;)V

    return-void
.end method


# virtual methods
.method public c(Lhi/b;Ljava/security/PrivateKey;[B[B)Lorg/bouncycastle/operator/jcajce/i;
    .locals 1

    invoke-static {p2}, Lorg/bouncycastle/cms/jcajce/a;->a(Ljava/security/PrivateKey;)Ljava/security/PrivateKey;

    move-result-object p2

    new-instance v0, Lorg/bouncycastle/operator/jcajce/i;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/bouncycastle/operator/jcajce/i;-><init>(Lhi/b;Ljava/security/PrivateKey;[B[B)V

    iget-object p1, p0, Ldk/k;->a:Ljava/security/Provider;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/i;->d(Ljava/security/Provider;)Lorg/bouncycastle/operator/jcajce/i;

    move-result-object p1

    return-object p1
.end method

.method public d(Lhi/b;Ljava/security/PrivateKey;)Lorg/bouncycastle/operator/jcajce/e;
    .locals 1

    invoke-static {p2}, Lorg/bouncycastle/cms/jcajce/a;->a(Ljava/security/PrivateKey;)Ljava/security/PrivateKey;

    move-result-object p2

    new-instance v0, Lorg/bouncycastle/operator/jcajce/e;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/operator/jcajce/e;-><init>(Lhi/b;Ljava/security/PrivateKey;)V

    iget-object p1, p0, Ldk/k;->a:Ljava/security/Provider;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/e;->f(Ljava/security/Provider;)Lorg/bouncycastle/operator/jcajce/e;

    move-result-object p1

    return-object p1
.end method

.method public h(Lhi/b;Ljava/security/PrivateKey;)LQk/c;
    .locals 1

    new-instance v0, Lorg/bouncycastle/cms/jcajce/o;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/cms/jcajce/o;-><init>(Lhi/b;Ljava/security/PrivateKey;)V

    iget-object p1, p0, Ldk/k;->a:Ljava/security/Provider;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/jcajce/o;->f(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/o;

    move-result-object p1

    return-object p1
.end method

.method public q(Lhi/b;Ljavax/crypto/SecretKey;)LQk/K;
    .locals 1

    new-instance v0, Lorg/bouncycastle/operator/jcajce/k;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/operator/jcajce/k;-><init>(Lhi/b;Ljavax/crypto/SecretKey;)V

    iget-object p1, p0, Ldk/k;->a:Ljava/security/Provider;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/k;->d(Ljava/security/Provider;)Lorg/bouncycastle/operator/jcajce/k;

    move-result-object p1

    return-object p1
.end method
