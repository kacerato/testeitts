.class public LDl/m;
.super LMl/b;
.source "SourceFile"

# interfaces
.implements LXh/t;
.implements Lhi/E0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LDl/m$e;,
        LDl/m$a;,
        LDl/m$b;,
        LDl/m$c;,
        LDl/m$d;
    }
.end annotation


# instance fields
.field public f:LBi/y;

.field public g:LRl/n;

.field public h:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, LMl/b;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, LDl/m;->h:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, LDl/m;->h:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method public constructor <init>(LBi/y;LRl/n;)V
    .locals 1

    .line 2
    invoke-direct {p0}, LMl/b;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, LDl/m;->h:Ljava/io/ByteArrayOutputStream;

    iput-object p1, p0, LDl/m;->f:LBi/y;

    iput-object p2, p0, LDl/m;->g:LRl/n;

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, LDl/m;->h:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public final A([B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    aget-byte v2, p1, v0

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    aget-byte v2, p1, v0

    if-ne v2, v1, :cond_1

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_1
    new-instance p1, Ljavax/crypto/BadPaddingException;

    const-string v0, "invalid ciphertext"

    invoke-direct {p1, v0}, Ljavax/crypto/BadPaddingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d([BII)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, LDl/m;->q([BII)[B

    iget p1, p0, LMl/d;->b:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, LDl/m;->g:LRl/n;

    invoke-virtual {p0}, LDl/m;->z()[B

    move-result-object p2

    invoke-virtual {p1, p2}, LRl/n;->c([B)[B

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    :try_start_0
    iget-object p1, p0, LDl/m;->h:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    iget-object p2, p0, LDl/m;->h:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object p2, p0, LDl/m;->g:LRl/n;

    invoke-virtual {p2, p1}, LRl/n;->b([B)[B

    move-result-object p1

    invoke-virtual {p0, p1}, LDl/m;->A([B)[B

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

    iget-object v0, p0, LDl/m;->g:LRl/n;

    invoke-virtual {v0, p1}, LRl/n;->d(LRl/d;)I

    move-result p1

    return p1

    :cond_0
    instance-of v0, p1, Ljava/security/PrivateKey;

    if-eqz v0, :cond_1

    check-cast p1, Ljava/security/PrivateKey;

    invoke-static {p1}, LDl/g;->a(Ljava/security/PrivateKey;)LXi/c;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/security/InvalidKeyException;

    invoke-direct {p1}, Ljava/security/InvalidKeyException;-><init>()V

    throw p1
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const-string v0, "McElieceKobaraImaiCipher"

    return-object v0
.end method

.method public q([BII)[B
    .locals 1

    iget-object v0, p0, LDl/m;->h:Ljava/io/ByteArrayOutputStream;

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

    iget-object p2, p0, LDl/m;->h:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->reset()V

    check-cast p1, Ljava/security/PrivateKey;

    invoke-static {p1}, LDl/g;->a(Ljava/security/PrivateKey;)LXi/c;

    move-result-object p1

    iget-object p2, p0, LDl/m;->f:LBi/y;

    invoke-interface {p2}, LBi/y;->reset()V

    iget-object p2, p0, LDl/m;->g:LRl/n;

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, LRl/n;->a(ZLBi/k;)V

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

    iget-object p2, p0, LDl/m;->h:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->reset()V

    check-cast p1, Ljava/security/PublicKey;

    invoke-static {p1}, LDl/g;->b(Ljava/security/PublicKey;)LXi/c;

    move-result-object p1

    new-instance p2, LXi/x0;

    invoke-direct {p2, p1, p3}, LXi/x0;-><init>(LBi/k;Ljava/security/SecureRandom;)V

    iget-object p1, p0, LDl/m;->f:LBi/y;

    invoke-interface {p1}, LBi/y;->reset()V

    iget-object p1, p0, LDl/m;->g:LRl/n;

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, LRl/n;->a(ZLBi/k;)V

    return-void
.end method

.method public final z()[B
    .locals 2

    iget-object v0, p0, LDl/m;->h:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v0, p0, LDl/m;->h:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v1, p0, LDl/m;->h:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-object v0
.end method
