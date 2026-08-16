.class public Lorg/bouncycastle/cms/jcajce/y;
.super Lorg/bouncycastle/cms/jcajce/A;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;Lorg/bouncycastle/cms/q0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lorg/bouncycastle/cms/jcajce/A;->h(Lorg/bouncycastle/cms/q0;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/cms/jcajce/A;-><init>(Ljava/security/PrivateKey;[B)V

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

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/cms/jcajce/A;->g(Lhi/b;Lhi/b;[B)Ljava/security/Key;

    move-result-object p1

    iget-object p3, p0, Lorg/bouncycastle/cms/jcajce/A;->f:Lorg/bouncycastle/cms/jcajce/c;

    invoke-virtual {p3, p1, p2}, Lorg/bouncycastle/cms/jcajce/c;->h(Ljava/security/Key;Lhi/b;)Ljavax/crypto/Mac;

    move-result-object p3

    new-instance v0, Lorg/bouncycastle/cms/J0;

    new-instance v1, Lorg/bouncycastle/cms/jcajce/y$a;

    invoke-direct {v1, p0, p2, p1, p3}, Lorg/bouncycastle/cms/jcajce/y$a;-><init>(Lorg/bouncycastle/cms/jcajce/y;Lhi/b;Ljava/security/Key;Ljavax/crypto/Mac;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/J0;-><init>(LQk/A;)V

    return-object v0
.end method
