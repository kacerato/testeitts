.class public Lorg/bouncycastle/cms/jcajce/b;
.super Ldk/d;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/cms/jcajce/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ldk/d;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lhi/b;Ljava/security/PrivateKey;[B[B)Lorg/bouncycastle/operator/jcajce/i;
    .locals 1

    invoke-static {p2}, Lorg/bouncycastle/cms/jcajce/a;->a(Ljava/security/PrivateKey;)Ljava/security/PrivateKey;

    move-result-object p2

    new-instance v0, Lorg/bouncycastle/operator/jcajce/i;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/bouncycastle/operator/jcajce/i;-><init>(Lhi/b;Ljava/security/PrivateKey;[B[B)V

    return-object v0
.end method

.method public d(Lhi/b;Ljava/security/PrivateKey;)Lorg/bouncycastle/operator/jcajce/e;
    .locals 1

    invoke-static {p2}, Lorg/bouncycastle/cms/jcajce/a;->a(Ljava/security/PrivateKey;)Ljava/security/PrivateKey;

    move-result-object p2

    new-instance v0, Lorg/bouncycastle/operator/jcajce/e;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/operator/jcajce/e;-><init>(Lhi/b;Ljava/security/PrivateKey;)V

    return-object v0
.end method

.method public h(Lhi/b;Ljava/security/PrivateKey;)LQk/c;
    .locals 1

    new-instance v0, Lorg/bouncycastle/cms/jcajce/o;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/cms/jcajce/o;-><init>(Lhi/b;Ljava/security/PrivateKey;)V

    return-object v0
.end method

.method public q(Lhi/b;Ljavax/crypto/SecretKey;)LQk/K;
    .locals 1

    new-instance v0, Lorg/bouncycastle/operator/jcajce/k;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/operator/jcajce/k;-><init>(Lhi/b;Ljavax/crypto/SecretKey;)V

    return-object v0
.end method
