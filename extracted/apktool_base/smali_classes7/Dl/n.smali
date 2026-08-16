.class public LDl/n;
.super LMl/a;
.source "SourceFile"

# interfaces
.implements LXh/t;
.implements Lhi/E0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LDl/n$a;
    }
.end annotation


# instance fields
.field public i:LRl/i;


# direct methods
.method public constructor <init>(LRl/i;)V
    .locals 0

    invoke-direct {p0}, LMl/a;-><init>()V

    iput-object p1, p0, LDl/n;->i:LRl/i;

    return-void
.end method


# virtual methods
.method public g(Ljava/security/Key;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    instance-of v0, p1, Ljava/security/PublicKey;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/security/PublicKey;

    invoke-static {p1}, LDl/l;->b(Ljava/security/PublicKey;)LXi/c;

    move-result-object p1

    :goto_0
    check-cast p1, LRl/m;

    goto :goto_1

    :cond_0
    check-cast p1, Ljava/security/PrivateKey;

    invoke-static {p1}, LDl/l;->a(Ljava/security/PrivateKey;)LXi/c;

    move-result-object p1

    goto :goto_0

    :goto_1
    iget-object v0, p0, LDl/n;->i:LRl/i;

    invoke-virtual {v0, p1}, LRl/i;->f(LRl/m;)I

    move-result p1

    return p1
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const-string v0, "McEliecePKCS"

    return-object v0
.end method

.method public s(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    check-cast p1, Ljava/security/PrivateKey;

    invoke-static {p1}, LDl/l;->a(Ljava/security/PrivateKey;)LXi/c;

    move-result-object p1

    iget-object p2, p0, LDl/n;->i:LRl/i;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, LRl/i;->a(ZLBi/k;)V

    iget-object p1, p0, LDl/n;->i:LRl/i;

    iget p2, p1, LRl/i;->e:I

    iput p2, p0, LMl/a;->g:I

    iget p1, p1, LRl/i;->f:I

    iput p1, p0, LMl/a;->h:I

    return-void
.end method

.method public t(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    check-cast p1, Ljava/security/PublicKey;

    invoke-static {p1}, LDl/l;->b(Ljava/security/PublicKey;)LXi/c;

    move-result-object p1

    new-instance p2, LXi/x0;

    invoke-direct {p2, p1, p3}, LXi/x0;-><init>(LBi/k;Ljava/security/SecureRandom;)V

    iget-object p1, p0, LDl/n;->i:LRl/i;

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, LRl/i;->a(ZLBi/k;)V

    iget-object p1, p0, LDl/n;->i:LRl/i;

    iget p2, p1, LRl/i;->e:I

    iput p2, p0, LMl/a;->g:I

    iget p1, p1, LRl/i;->f:I

    iput p1, p0, LMl/a;->h:I

    return-void
.end method

.method public y([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, LDl/n;->i:LRl/i;

    invoke-virtual {v0, p1}, LRl/i;->b([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public z([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, LDl/n;->i:LRl/i;

    invoke-virtual {v0, p1}, LRl/i;->c([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljavax/crypto/IllegalBlockSizeException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/crypto/IllegalBlockSizeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
