.class public Lorg/bouncycastle/jcajce/provider/symmetric/util/e;
.super Lak/e;
.source "SourceFile"

# interfaces
.implements Lorg/bouncycastle/jcajce/provider/symmetric/util/d;


# instance fields
.field public d:Z

.field public e:I

.field public f:I

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Loh/x;ZIIII)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lak/e;-><init>(Ljava/lang/String;Loh/x;)V

    iput-boolean p3, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/e;->d:Z

    iput p4, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/e;->e:I

    iput p5, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/e;->f:I

    iput p6, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/e;->g:I

    iput p7, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/e;->h:I

    return-void
.end method


# virtual methods
.method public engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    instance-of v0, p1, Ljavax/crypto/spec/PBEKeySpec;

    if-eqz v0, :cond_2

    move-object v8, p1

    check-cast v8, Ljavax/crypto/spec/PBEKeySpec;

    invoke-virtual {v8}, Ljavax/crypto/spec/PBEKeySpec;->getSalt()[B

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lak/a;

    iget-object v2, p0, Lak/e;->b:Ljava/lang/String;

    iget-object v3, p0, Lak/e;->c:Loh/x;

    iget v4, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/e;->e:I

    iget v5, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/e;->f:I

    iget v6, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/e;->g:I

    iget v7, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/e;->h:I

    const/4 v9, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lak/a;-><init>(Ljava/lang/String;Loh/x;IIIILjavax/crypto/spec/PBEKeySpec;LBi/k;)V

    return-object p1

    :cond_0
    iget-boolean p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/e;->d:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/e;->e:I

    iget v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/e;->f:I

    iget v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/e;->g:I

    iget v2, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/e;->h:I

    invoke-static {v8, p1, v0, v1, v2}, Lorg/bouncycastle/jcajce/provider/symmetric/util/d$a;->g(Ljavax/crypto/spec/PBEKeySpec;IIII)LBi/k;

    move-result-object p1

    :goto_0
    move-object v9, p1

    goto :goto_1

    :cond_1
    iget p1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/e;->e:I

    iget v0, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/e;->f:I

    iget v1, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/e;->g:I

    invoke-static {v8, p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/symmetric/util/d$a;->e(Ljavax/crypto/spec/PBEKeySpec;III)LBi/k;

    move-result-object p1

    goto :goto_0

    :goto_1
    new-instance p1, Lak/a;

    iget-object v2, p0, Lak/e;->b:Ljava/lang/String;

    iget-object v3, p0, Lak/e;->c:Loh/x;

    iget v4, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/e;->e:I

    iget v5, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/e;->f:I

    iget v6, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/e;->g:I

    iget v7, p0, Lorg/bouncycastle/jcajce/provider/symmetric/util/e;->h:I

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Lak/a;-><init>(Ljava/lang/String;Loh/x;IIIILjavax/crypto/spec/PBEKeySpec;LBi/k;)V

    return-object p1

    :cond_2
    new-instance p1, Ljava/security/spec/InvalidKeySpecException;

    const-string v0, "Invalid KeySpec"

    invoke-direct {p1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
