.class public Lorg/bouncycastle/cms/jcajce/G;
.super Lorg/bouncycastle/cms/jcajce/J;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/cms/jcajce/G$b;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/jcajce/J;-><init>(Ljava/security/PrivateKey;)V

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

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/cms/jcajce/J;->g(Lhi/b;Lhi/b;[B)Ljava/security/Key;

    move-result-object p1

    iget-object p3, p0, Lorg/bouncycastle/cms/jcajce/J;->e:Lorg/bouncycastle/cms/jcajce/c;

    invoke-virtual {p3, p1, p2}, Lorg/bouncycastle/cms/jcajce/c;->g(Ljava/security/Key;Lhi/b;)Ljavax/crypto/Cipher;

    move-result-object p1

    new-instance p3, Lorg/bouncycastle/cms/J0;

    new-instance v0, Lorg/bouncycastle/cms/jcajce/G$a;

    invoke-direct {v0, p0, p2, p1}, Lorg/bouncycastle/cms/jcajce/G$a;-><init>(Lorg/bouncycastle/cms/jcajce/G;Lhi/b;Ljavax/crypto/Cipher;)V

    invoke-direct {p3, v0}, Lorg/bouncycastle/cms/J0;-><init>(LQk/t;)V

    return-object p3
.end method
