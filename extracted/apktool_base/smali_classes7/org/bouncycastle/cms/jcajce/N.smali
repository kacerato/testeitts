.class public Lorg/bouncycastle/cms/jcajce/N;
.super Lorg/bouncycastle/cms/jcajce/O;
.source "SourceFile"


# direct methods
.method public constructor <init>([C)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/cms/jcajce/O;-><init>([C)V

    return-void
.end method


# virtual methods
.method public d(Lhi/b;Lhi/b;[B[B)Lorg/bouncycastle/cms/J0;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/bouncycastle/cms/jcajce/O;->g(Lhi/b;Lhi/b;[B[B)Ljava/security/Key;

    move-result-object p1

    iget-object p3, p0, Lorg/bouncycastle/cms/jcajce/O;->d:Lorg/bouncycastle/cms/jcajce/c;

    invoke-virtual {p3, p1, p2}, Lorg/bouncycastle/cms/jcajce/c;->g(Ljava/security/Key;Lhi/b;)Ljavax/crypto/Cipher;

    move-result-object p1

    new-instance p3, Lorg/bouncycastle/cms/J0;

    new-instance p4, Lorg/bouncycastle/cms/jcajce/N$a;

    invoke-direct {p4, p0, p2, p1}, Lorg/bouncycastle/cms/jcajce/N$a;-><init>(Lorg/bouncycastle/cms/jcajce/N;Lhi/b;Ljavax/crypto/Cipher;)V

    invoke-direct {p3, p4}, Lorg/bouncycastle/cms/J0;-><init>(LQk/t;)V

    return-object p3
.end method
