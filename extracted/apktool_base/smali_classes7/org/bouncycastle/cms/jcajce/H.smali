.class public Lorg/bouncycastle/cms/jcajce/H;
.super Lorg/bouncycastle/cms/jcajce/J;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/jcajce/J;-><init>(Ljava/security/PrivateKey;)V

    return-void
.end method


# virtual methods
.method public a(Lhi/b;Lhi/b;[B)Lorg/bouncycastle/cms/J0;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/cms/jcajce/J;->g(Lhi/b;Lhi/b;[B)Ljava/security/Key;

    move-result-object p1

    iget-object p3, p0, Lorg/bouncycastle/cms/jcajce/J;->e:Lorg/bouncycastle/cms/jcajce/c;

    invoke-virtual {p3, p1, p2}, Lorg/bouncycastle/cms/jcajce/c;->h(Ljava/security/Key;Lhi/b;)Ljavax/crypto/Mac;

    move-result-object p3

    new-instance v0, Lorg/bouncycastle/cms/J0;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/H$a;

    invoke-direct {v1, p0, p2, p1, p3}, Lorg/bouncycastle/cms/jcajce/H$a;-><init>(Lorg/bouncycastle/cms/jcajce/H;Lhi/b;Ljava/security/Key;Ljavax/crypto/Mac;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/J0;-><init>(LQk/A;)V

    return-object v0
.end method
