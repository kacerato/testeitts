.class public Lorg/bouncycastle/cms/jcajce/s;
.super Lorg/bouncycastle/cms/jcajce/t;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljavax/crypto/SecretKey;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/jcajce/t;-><init>(Ljavax/crypto/SecretKey;)V

    return-void
.end method


# virtual methods
.method public a(Lhi/b;Lhi/b;[B)Lorg/bouncycastle/cms/J0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/cms/jcajce/t;->g(Lhi/b;Lhi/b;[B)Ljava/security/Key;

    move-result-object p1

    iget-object p3, p0, Lorg/bouncycastle/cms/jcajce/t;->e:Lorg/bouncycastle/cms/jcajce/c;

    invoke-virtual {p3, p1, p2}, Lorg/bouncycastle/cms/jcajce/c;->g(Ljava/security/Key;Lhi/b;)Ljavax/crypto/Cipher;

    move-result-object p1

    new-instance p3, Lorg/bouncycastle/cms/J0;

    new-instance v0, Lorg/bouncycastle/cms/jcajce/s$a;

    invoke-direct {v0, p0, p2, p1}, Lorg/bouncycastle/cms/jcajce/s$a;-><init>(Lorg/bouncycastle/cms/jcajce/s;Lhi/b;Ljavax/crypto/Cipher;)V

    invoke-direct {p3, v0}, Lorg/bouncycastle/cms/J0;-><init>(LQk/t;)V

    return-object p3
.end method
