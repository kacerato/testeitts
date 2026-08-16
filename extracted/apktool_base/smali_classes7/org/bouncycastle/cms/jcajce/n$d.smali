.class public Lorg/bouncycastle/cms/jcajce/n$d;
.super Lorg/bouncycastle/cms/jcajce/n$c;
.source "SourceFile"

# interfaces
.implements LQk/F;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/cms/jcajce/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final synthetic e:Lorg/bouncycastle/cms/jcajce/n;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/cms/jcajce/n;Loh/x;Loh/x;ILjava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/cms/jcajce/n$d;->e:Lorg/bouncycastle/cms/jcajce/n;

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

.method public d(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .locals 2

    new-instance v0, LJj/b;

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/n$c;->c:Ljavax/crypto/Cipher;

    invoke-direct {v0, p1, v1}, LJj/b;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v0
.end method

.method public getKey()LQk/r;
    .locals 3

    new-instance v0, Lorg/bouncycastle/operator/jcajce/g;

    iget-object v1, p0, Lorg/bouncycastle/cms/jcajce/n$c;->b:Lhi/b;

    iget-object v2, p0, Lorg/bouncycastle/cms/jcajce/n$c;->a:Ljavax/crypto/SecretKey;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/operator/jcajce/g;-><init>(Lhi/b;Ljava/security/Key;)V

    return-object v0
.end method
