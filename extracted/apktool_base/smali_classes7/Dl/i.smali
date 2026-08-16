.class public LDl/i;
.super LMl/b;
.source "SourceFile"

# interfaces
.implements LXh/t;
.implements Lhi/E0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LDl/i$a;
    }
.end annotation


# instance fields
.field public f:LBi/y;

.field public g:LRl/j;

.field public h:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>(LBi/y;LRl/j;)V
    .locals 0

    invoke-direct {p0}, LMl/b;-><init>()V

    iput-object p1, p0, LDl/i;->f:LBi/y;

    iput-object p2, p0, LDl/i;->g:LRl/j;

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, LDl/i;->h:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public d([BII)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, LDl/i;->q([BII)[B

    iget-object p1, p0, LDl/i;->h:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iget-object p2, p0, LDl/i;->h:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget p2, p0, LMl/d;->b:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    iget-object p2, p0, LDl/i;->g:LRl/j;

    invoke-virtual {p2, p1}, LRl/j;->c([B)[B

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p3, 0x2

    if-ne p2, p3, :cond_1

    :try_start_0
    iget-object p2, p0, LDl/i;->g:LRl/j;

    invoke-virtual {p2, p1}, LRl/j;->b([B)[B

    move-result-object p1
    :try_end_0
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljavax/crypto/BadPaddingException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "unknown mode in doFinal"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

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

    invoke-static {p1}, LDl/g;->b(Ljava/security/PublicKey;)LXi/c;

    move-result-object p1

    :goto_0
    check-cast p1, LRl/d;

    goto :goto_1

    :cond_0
    check-cast p1, Ljava/security/PrivateKey;

    invoke-static {p1}, LDl/g;->a(Ljava/security/PrivateKey;)LXi/c;

    move-result-object p1

    goto :goto_0

    :goto_1
    iget-object v0, p0, LDl/i;->g:LRl/j;

    invoke-virtual {v0, p1}, LRl/j;->d(LRl/d;)I

    move-result p1

    return p1
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const-string v0, "McElieceFujisakiCipher"

    return-object v0
.end method

.method public q([BII)[B
    .locals 1

    iget-object v0, p0, LDl/i;->h:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 p1, 0x0

    new-array p1, p1, [B

    return-object p1
.end method

.method public r(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public s(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public t(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    check-cast p1, Ljava/security/PrivateKey;

    invoke-static {p1}, LDl/g;->a(Ljava/security/PrivateKey;)LXi/c;

    move-result-object p1

    iget-object p2, p0, LDl/i;->f:LBi/y;

    invoke-interface {p2}, LBi/y;->reset()V

    iget-object p2, p0, LDl/i;->g:LRl/j;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, LRl/j;->a(ZLBi/k;)V

    return-void
.end method

.method public u(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    check-cast p1, Ljava/security/PublicKey;

    invoke-static {p1}, LDl/g;->b(Ljava/security/PublicKey;)LXi/c;

    move-result-object p1

    new-instance p2, LXi/x0;

    invoke-direct {p2, p1, p3}, LXi/x0;-><init>(LBi/k;Ljava/security/SecureRandom;)V

    iget-object p1, p0, LDl/i;->f:LBi/y;

    invoke-interface {p1}, LBi/y;->reset()V

    iget-object p1, p0, LDl/i;->g:LRl/j;

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, LRl/j;->a(ZLBi/k;)V

    return-void
.end method
