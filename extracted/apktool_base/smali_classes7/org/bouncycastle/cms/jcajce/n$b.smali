.class public Lorg/bouncycastle/cms/jcajce/n$b;
.super Lorg/bouncycastle/cms/jcajce/n$c;
.source "SourceFile"

# interfaces
.implements LQk/D;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cms/jcajce/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public e:LQk/C;

.field public final synthetic f:Lorg/bouncycastle/cms/jcajce/n;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/jcajce/n;Loh/x;Loh/x;ILjava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/n$b;->f:Lorg/bouncycastle/cms/jcajce/n;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/cms/jcajce/n$c;-><init>(Lorg/bouncycastle/cms/jcajce/n;Lorg/bouncycastle/cms/jcajce/n$a;)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/cms/jcajce/n$c;->f(Loh/x;Loh/x;ILjava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    return-void
.end method


# virtual methods
.method public a()Lhi/b;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/n$c;->b:Lhi/b;

    return-object v0
.end method

.method public b()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/n$b;->e:LQk/C;

    invoke-virtual {v0}, LQk/C;->c()[B

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/io/OutputStream;
    .locals 2

    invoke-static {}, Lorg/bouncycastle/cms/jcajce/n;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/cms/jcajce/l;

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/n$c;->c:Ljavax/crypto/Cipher;

    invoke-direct {v0, v1}, Lorg/bouncycastle/cms/jcajce/l;-><init>(Ljavax/crypto/Cipher;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/n$b;->f:Lorg/bouncycastle/cms/jcajce/n;

    invoke-static {v0}, Lorg/bouncycastle/cms/jcajce/n;->c(Lorg/bouncycastle/cms/jcajce/n;)Loh/x;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/n$c;->b:Lhi/b;

    invoke-virtual {v0}, Lhi/b;->x()Loh/g;

    move-result-object v0

    invoke-static {v0}, Lhi/b;->v(Ljava/lang/Object;)Lhi/b;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/n$c;->b:Lhi/b;

    :goto_0
    invoke-virtual {v0}, Lhi/b;->x()Loh/g;

    move-result-object v0

    invoke-static {v0}, Luh/x;->v(Ljava/lang/Object;)Luh/x;

    move-result-object v0

    new-instance v1, LQk/C;

    invoke-virtual {v0}, Luh/x;->u()I

    move-result v0

    invoke-direct {v1, p1, v0}, LQk/C;-><init>(Ljava/io/OutputStream;I)V

    iput-object v1, p0, Lorg/bouncycastle/cms/jcajce/n$b;->e:LQk/C;

    new-instance p1, LJj/b;

    iget-object v0, p0, Lorg/bouncycastle/cms/jcajce/n$b;->e:LQk/C;

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/n$c;->c:Ljavax/crypto/Cipher;

    invoke-direct {p1, v0, v1}, LJj/b;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object p1
.end method

.method public getKey()LQk/r;
    .locals 3

    new-instance v0, Lorg/bouncycastle/operator/jcajce/g;

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/n$c;->b:Lhi/b;

    iget-object v2, p0, Lorg/bouncycastle/cms/jcajce/n$c;->a:Ljavax/crypto/SecretKey;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/operator/jcajce/g;-><init>(Lhi/b;Ljava/security/Key;)V

    return-object v0
.end method
