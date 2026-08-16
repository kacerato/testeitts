.class public Lorg/bouncycastle/cms/jcajce/C;
.super Lorg/bouncycastle/cms/jcajce/D;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/jcajce/D;-><init>(Ljava/security/PrivateKey;)V

    return-void
.end method


# virtual methods
.method public b(Lhi/b;Lhi/b;Lhi/h0;Loh/y;[B)Lorg/bouncycastle/cms/J0;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p5}, Lorg/bouncycastle/cms/jcajce/D;->h(Lhi/b;Lhi/b;Lhi/h0;Loh/y;[B)Ljava/security/Key;

    move-result-object p1

    iget-object p3, p0, Lorg/bouncycastle/cms/jcajce/D;->e:Lorg/bouncycastle/cms/jcajce/c;

    invoke-virtual {p3, p1, p2}, Lorg/bouncycastle/cms/jcajce/c;->g(Ljava/security/Key;Lhi/b;)Ljavax/crypto/Cipher;

    move-result-object p1

    new-instance p3, Lorg/bouncycastle/cms/J0;

    new-instance p4, Lorg/bouncycastle/cms/jcajce/C$a;

    invoke-direct {p4, p0, p2, p1}, Lorg/bouncycastle/cms/jcajce/C$a;-><init>(Lorg/bouncycastle/cms/jcajce/C;Lhi/b;Ljavax/crypto/Cipher;)V

    invoke-direct {p3, p4}, Lorg/bouncycastle/cms/J0;-><init>(LQk/t;)V

    return-object p3
.end method
