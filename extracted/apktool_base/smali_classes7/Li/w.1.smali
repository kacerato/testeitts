.class public LLi/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/Z;


# static fields
.field public static final h:[B


# instance fields
.field public a:LTi/c;

.field public b:LXi/o0;

.field public c:LXi/w0;

.field public d:[B

.field public e:Z

.field public f:LBi/y;

.field public g:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, LLi/w;->h:[B

    return-void

    :array_0
    .array-data 1
        0x4at
        -0x23t
        -0x5et
        0x2ct
        0x79t
        -0x18t
        0x21t
        0x5t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/bouncycastle/crypto/util/g;->d()LBi/y;

    move-result-object v0

    iput-object v0, p0, LLi/w;->f:LBi/y;

    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, LLi/w;->g:[B

    return-void
.end method


# virtual methods
.method public a(ZLBi/k;)V
    .locals 3

    iput-boolean p1, p0, LLi/w;->e:Z

    new-instance p1, LTi/c;

    new-instance v0, LLi/v;

    invoke-direct {v0}, LLi/v;-><init>()V

    invoke-direct {p1, v0}, LTi/c;-><init>(LBi/f;)V

    iput-object p1, p0, LLi/w;->a:LTi/c;

    instance-of p1, p2, LXi/x0;

    if-eqz p1, :cond_0

    check-cast p2, LXi/x0;

    invoke-virtual {p2}, LXi/x0;->a()LBi/k;

    move-result-object p1

    invoke-virtual {p2}, LXi/x0;->b()Ljava/security/SecureRandom;

    move-result-object p2

    move-object v2, p2

    move-object p2, p1

    move-object p1, v2

    goto :goto_0

    :cond_0
    invoke-static {}, LBi/r;->h()Ljava/security/SecureRandom;

    move-result-object p1

    :goto_0
    instance-of v0, p2, LXi/o0;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    check-cast p2, LXi/o0;

    iput-object p2, p0, LLi/w;->b:LXi/o0;

    iget-boolean p2, p0, LLi/w;->e:Z

    if-eqz p2, :cond_4

    new-array p2, v1, [B

    iput-object p2, p0, LLi/w;->d:[B

    invoke-virtual {p1, p2}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance p1, LXi/w0;

    iget-object p2, p0, LLi/w;->b:LXi/o0;

    iget-object v0, p0, LLi/w;->d:[B

    invoke-direct {p1, p2, v0}, LXi/w0;-><init>(LBi/k;[B)V

    iput-object p1, p0, LLi/w;->c:LXi/w0;

    goto :goto_1

    :cond_1
    instance-of p1, p2, LXi/w0;

    if-eqz p1, :cond_4

    check-cast p2, LXi/w0;

    iput-object p2, p0, LLi/w;->c:LXi/w0;

    invoke-virtual {p2}, LXi/w0;->a()[B

    move-result-object p1

    iput-object p1, p0, LLi/w;->d:[B

    iget-object p1, p0, LLi/w;->c:LXi/w0;

    invoke-virtual {p1}, LXi/w0;->b()LBi/k;

    move-result-object p1

    check-cast p1, LXi/o0;

    iput-object p1, p0, LLi/w;->b:LXi/o0;

    iget-boolean p1, p0, LLi/w;->e:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, LLi/w;->d:[B

    if-eqz p1, :cond_2

    array-length p1, p1

    if-ne p1, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "IV is not 8 octets"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "You should not supply an IV for unwrapping"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "DESede"

    return-object v0
.end method

.method public c([BII)[B
    .locals 6

    iget-boolean v0, p0, LLi/w;->e:Z

    if-eqz v0, :cond_3

    new-array v0, p3, [B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v0}, LLi/w;->e([B)[B

    move-result-object p1

    array-length p2, p1

    add-int/2addr p2, p3

    new-array v2, p2, [B

    invoke-static {v0, v1, v2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p1

    invoke-static {p1, v1, v2, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, LLi/w;->a:LTi/c;

    invoke-virtual {p1}, LTi/c;->c()I

    move-result p1

    rem-int p3, p2, p1

    if-nez p3, :cond_2

    iget-object p3, p0, LLi/w;->a:LTi/c;

    iget-object v0, p0, LLi/w;->c:LXi/w0;

    const/4 v3, 0x1

    invoke-virtual {p3, v3, v0}, LTi/c;->a(ZLBi/k;)V

    new-array p3, p2, [B

    move v0, v1

    :goto_0
    if-eq v0, p2, :cond_0

    iget-object v4, p0, LLi/w;->a:LTi/c;

    invoke-virtual {v4, v2, v0, p3, v0}, LTi/c;->g([BI[BI)I

    add-int/2addr v0, p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, LLi/w;->d:[B

    array-length v2, v0

    add-int/2addr v2, p2

    new-array v4, v2, [B

    array-length v5, v0

    invoke-static {v0, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, LLi/w;->d:[B

    array-length v0, v0

    invoke-static {p3, v1, v4, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v4}, Lorg/bouncycastle/util/a;->Q0([B)[B

    new-instance p2, LXi/w0;

    iget-object p3, p0, LLi/w;->b:LXi/o0;

    sget-object v0, LLi/w;->h:[B

    invoke-direct {p2, p3, v0}, LXi/w0;-><init>(LBi/k;[B)V

    iget-object p3, p0, LLi/w;->a:LTi/c;

    invoke-virtual {p3, v3, p2}, LTi/c;->a(ZLBi/k;)V

    :goto_1
    if-eq v1, v2, :cond_1

    iget-object p2, p0, LLi/w;->a:LTi/c;

    invoke-virtual {p2, v4, v1, v4, v1}, LTi/c;->g([BI[BI)I

    add-int/2addr v1, p1

    goto :goto_1

    :cond_1
    return-object v4

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not multiple of block length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not initialized for wrapping"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d([BII)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-boolean v0, p0, LLi/w;->e:Z

    if-nez v0, :cond_5

    if-eqz p1, :cond_4

    iget-object v0, p0, LLi/w;->a:LTi/c;

    invoke-virtual {v0}, LTi/c;->c()I

    move-result v0

    rem-int v1, p3, v0

    if-nez v1, :cond_3

    new-instance v1, LXi/w0;

    iget-object v2, p0, LLi/w;->b:LXi/o0;

    sget-object v3, LLi/w;->h:[B

    invoke-direct {v1, v2, v3}, LXi/w0;-><init>(LBi/k;[B)V

    iget-object v2, p0, LLi/w;->a:LTi/c;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, LTi/c;->a(ZLBi/k;)V

    new-array v1, p3, [B

    move v2, v3

    :goto_0
    if-eq v2, p3, :cond_0

    iget-object v4, p0, LLi/w;->a:LTi/c;

    add-int v5, p2, v2

    invoke-virtual {v4, p1, v5, v1, v2}, LTi/c;->g([BI[BI)I

    add-int/2addr v2, v0

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lorg/bouncycastle/util/a;->Q0([B)[B

    const/16 p1, 0x8

    new-array p2, p1, [B

    iput-object p2, p0, LLi/w;->d:[B

    add-int/lit8 v2, p3, -0x8

    new-array v4, v2, [B

    invoke-static {v1, v3, p2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1, p1, v4, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance p2, LXi/w0;

    iget-object v1, p0, LLi/w;->b:LXi/o0;

    iget-object v5, p0, LLi/w;->d:[B

    invoke-direct {p2, v1, v5}, LXi/w0;-><init>(LBi/k;[B)V

    iput-object p2, p0, LLi/w;->c:LXi/w0;

    iget-object v1, p0, LLi/w;->a:LTi/c;

    invoke-virtual {v1, v3, p2}, LTi/c;->a(ZLBi/k;)V

    new-array p2, v2, [B

    move v1, v3

    :goto_1
    if-eq v1, v2, :cond_1

    iget-object v5, p0, LLi/w;->a:LTi/c;

    invoke-virtual {v5, v4, v1, p2, v1}, LTi/c;->g([BI[BI)I

    add-int/2addr v1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 p3, p3, -0x10

    new-array v0, p3, [B

    new-array v1, p1, [B

    invoke-static {p2, v3, v0, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p2, p3, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v0, v1}, LLi/w;->f([B[B)Z

    move-result p1

    if-eqz p1, :cond_2

    return-object v0

    :cond_2
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string p2, "Checksum inside ciphertext is corrupted"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ciphertext not multiple of "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string p2, "Null pointer as ciphertext"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not set for unwrapping"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e([B)[B
    .locals 5

    const/16 v0, 0x8

    new-array v1, v0, [B

    iget-object v2, p0, LLi/w;->f:LBi/y;

    array-length v3, p1

    const/4 v4, 0x0

    invoke-interface {v2, p1, v4, v3}, LBi/y;->update([BII)V

    iget-object p1, p0, LLi/w;->f:LBi/y;

    iget-object v2, p0, LLi/w;->g:[B

    invoke-interface {p1, v2, v4}, LBi/y;->c([BI)I

    iget-object p1, p0, LLi/w;->g:[B

    invoke-static {p1, v4, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public final f([B[B)Z
    .locals 0

    invoke-virtual {p0, p1}, LLi/w;->e([B)[B

    move-result-object p1

    invoke-static {p1, p2}, Lorg/bouncycastle/util/a;->I([B[B)Z

    move-result p1

    return p1
.end method
