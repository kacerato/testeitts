.class public Lorg/bouncycastle/cms/jcajce/u;
.super Lorg/bouncycastle/cms/f0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Luh/A;Ljavax/crypto/SecretKey;)V
    .locals 1

    .line 1
    new-instance v0, Lorg/bouncycastle/operator/jcajce/l;

    invoke-direct {v0, p2}, Lorg/bouncycastle/operator/jcajce/l;-><init>(Ljavax/crypto/SecretKey;)V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/f0;-><init>(Luh/A;LQk/L;)V

    return-void
.end method

.method public constructor <init>([BLjavax/crypto/SecretKey;)V
    .locals 2

    .line 2
    new-instance v0, Luh/A;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Luh/A;-><init>([BLoh/n;Luh/K;)V

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/cms/jcajce/u;-><init>(Luh/A;Ljavax/crypto/SecretKey;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)Lorg/bouncycastle/cms/jcajce/u;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/f0;->b:LQk/L;

    check-cast v0, Lorg/bouncycastle/operator/jcajce/l;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/l;->e(Ljava/lang/String;)Lorg/bouncycastle/operator/jcajce/l;

    return-object p0
.end method

.method public c(Ljava/security/Provider;)Lorg/bouncycastle/cms/jcajce/u;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/f0;->b:LQk/L;

    check-cast v0, Lorg/bouncycastle/operator/jcajce/l;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/l;->f(Ljava/security/Provider;)Lorg/bouncycastle/operator/jcajce/l;

    return-object p0
.end method

.method public d(Ljava/security/SecureRandom;)Lorg/bouncycastle/cms/jcajce/u;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/f0;->b:LQk/L;

    check-cast v0, Lorg/bouncycastle/operator/jcajce/l;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/operator/jcajce/l;->g(Ljava/security/SecureRandom;)Lorg/bouncycastle/operator/jcajce/l;

    return-object p0
.end method
