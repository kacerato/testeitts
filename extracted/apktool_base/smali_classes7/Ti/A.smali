.class public LTi/A;
.super LBi/u;
.source "SourceFile"


# static fields
.field public static final q:I = 0x1

.field public static final r:I = 0x2

.field public static final s:I = 0x3


# instance fields
.field public final o:I

.field public final p:I


# direct methods
.method public constructor <init>(ILBi/f;)V
    .locals 0

    invoke-direct {p0}, LBi/u;-><init>()V

    iput p1, p0, LTi/A;->o:I

    invoke-static {p2}, LTi/c;->m(LBi/f;)LTi/d;

    move-result-object p1

    iput-object p1, p0, LBi/u;->k:LBi/f;

    invoke-interface {p2}, LBi/f;->c()I

    move-result p1

    iput p1, p0, LTi/A;->p:I

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [B

    iput-object p1, p0, LBi/u;->h:[B

    const/4 p1, 0x0

    iput p1, p0, LBi/u;->i:I

    return-void
.end method


# virtual methods
.method public a([BI)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget v0, p0, LBi/u;->i:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-gt v0, v1, :cond_e

    iget-object v0, p0, LBi/u;->k:LBi/f;

    invoke-interface {v0}, LBi/f;->c()I

    move-result v0

    iget v1, p0, LBi/u;->i:I

    sub-int v2, v1, v0

    new-array v3, v0, [B

    iget-boolean v4, p0, LBi/u;->j:Z

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eqz v4, :cond_5

    if-lt v1, v0, :cond_4

    if-le v1, v0, :cond_3

    new-array v1, v0, [B

    iget v4, p0, LTi/A;->o:I

    if-eq v4, v6, :cond_1

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, p0, LBi/u;->h:[B

    invoke-static {v4, v7, v3, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, LBi/u;->k:LBi/f;

    invoke-interface {v4, v3, v7, v3, v7}, LBi/f;->g([BI[BI)I

    invoke-static {v3, v7, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, LBi/u;->h:[B

    iget v4, p0, LBi/u;->i:I

    sub-int/2addr v4, v2

    invoke-static {v3, v4, v1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, LBi/u;->k:LBi/f;

    invoke-interface {v3, v1, v7, v1, v7}, LBi/f;->g([BI[BI)I

    add-int/2addr p2, v2

    invoke-static {v1, v7, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_7

    :cond_1
    :goto_0
    iget-object v4, p0, LBi/u;->k:LBi/f;

    iget-object v5, p0, LBi/u;->h:[B

    invoke-interface {v4, v5, v7, v3, v7}, LBi/f;->g([BI[BI)I

    iget-object v4, p0, LBi/u;->h:[B

    invoke-static {v4, v0, v1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, LBi/u;->k:LBi/f;

    invoke-interface {v4, v1, v7, v1, v7}, LBi/f;->g([BI[BI)I

    iget v4, p0, LTi/A;->o:I

    if-ne v4, v6, :cond_2

    if-ne v2, v0, :cond_2

    invoke-static {v3, v7, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    invoke-static {v1, v7, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_7

    :cond_2
    invoke-static {v1, v7, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    invoke-static {v3, v7, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_7

    :cond_3
    iget-object v1, p0, LBi/u;->k:LBi/f;

    iget-object v2, p0, LBi/u;->h:[B

    invoke-interface {v1, v2, v7, v3, v7}, LBi/f;->g([BI[BI)I

    :goto_1
    invoke-static {v3, v7, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_7

    :cond_4
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "need at least one block of input for NISTCTS"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    if-lt v1, v0, :cond_d

    new-array v4, v0, [B

    if-le v1, v0, :cond_c

    iget v8, p0, LTi/A;->o:I

    if-eq v8, v5, :cond_9

    if-ne v8, v6, :cond_6

    iget-object v5, p0, LBi/u;->h:[B

    array-length v5, v5

    sub-int/2addr v5, v1

    rem-int/2addr v5, v0

    if-eqz v5, :cond_6

    goto :goto_4

    :cond_6
    iget-object v1, p0, LBi/u;->k:LBi/f;

    check-cast v1, LTi/d;

    invoke-interface {v1}, LTi/d;->d()LBi/f;

    move-result-object v1

    iget-object v5, p0, LBi/u;->h:[B

    iget v6, p0, LBi/u;->i:I

    sub-int/2addr v6, v0

    invoke-interface {v1, v5, v6, v4, v7}, LBi/f;->g([BI[BI)I

    iget-object v1, p0, LBi/u;->h:[B

    invoke-static {v1, v7, v3, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eq v2, v0, :cond_7

    sub-int v1, v0, v2

    invoke-static {v4, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_7
    iget-object v1, p0, LBi/u;->k:LBi/f;

    invoke-interface {v1, v3, v7, v3, v7}, LBi/f;->g([BI[BI)I

    invoke-static {v3, v7, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v7

    :goto_2
    if-eq v1, v2, :cond_8

    aget-byte v3, v4, v1

    iget-object v5, p0, LBi/u;->h:[B

    aget-byte v5, v5, v1

    xor-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    add-int/2addr p2, v0

    invoke-static {v4, v7, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_7

    :cond_9
    :goto_4
    iget-object v1, p0, LBi/u;->k:LBi/f;

    instance-of v5, v1, LTi/d;

    if-eqz v5, :cond_a

    check-cast v1, LTi/d;

    invoke-interface {v1}, LTi/d;->d()LBi/f;

    move-result-object v1

    iget-object v5, p0, LBi/u;->h:[B

    invoke-interface {v1, v5, v7, v3, v7}, LBi/f;->g([BI[BI)I

    goto :goto_5

    :cond_a
    iget-object v5, p0, LBi/u;->h:[B

    invoke-interface {v1, v5, v7, v3, v7}, LBi/f;->g([BI[BI)I

    :goto_5
    move v1, v0

    :goto_6
    iget v5, p0, LBi/u;->i:I

    if-eq v1, v5, :cond_b

    sub-int v5, v1, v0

    aget-byte v6, v3, v5

    iget-object v8, p0, LBi/u;->h:[B

    aget-byte v8, v8, v1

    xor-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_b
    iget-object v1, p0, LBi/u;->h:[B

    invoke-static {v1, v0, v3, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, LBi/u;->k:LBi/f;

    invoke-interface {v1, v3, v7, p1, p2}, LBi/f;->g([BI[BI)I

    goto :goto_3

    :cond_c
    iget-object v1, p0, LBi/u;->k:LBi/f;

    iget-object v2, p0, LBi/u;->h:[B

    invoke-interface {v1, v2, v7, v3, v7}, LBi/f;->g([BI[BI)I

    goto/16 :goto_1

    :goto_7
    iget p1, p0, LBi/u;->i:I

    invoke-virtual {p0}, LBi/u;->i()V

    return p1

    :cond_d
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "need at least one block of input for CTS"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_e
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer to small in doFinal"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(I)I
    .locals 1

    iget v0, p0, LBi/u;->i:I

    add-int/2addr p1, v0

    return p1
.end method

.method public e(I)I
    .locals 2

    iget v0, p0, LBi/u;->i:I

    add-int/2addr p1, v0

    iget-object v0, p0, LBi/u;->h:[B

    array-length v1, v0

    rem-int v1, p1, v1

    if-nez v1, :cond_0

    array-length v0, v0

    sub-int/2addr p1, v0

    return p1

    :cond_0
    sub-int/2addr p1, v1

    return p1
.end method

.method public g(B[BI)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget v0, p0, LBi/u;->i:I

    iget-object v1, p0, LBi/u;->h:[B

    array-length v2, v1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, LBi/u;->k:LBi/f;

    invoke-interface {v0, v1, v3, p2, p3}, LBi/f;->g([BI[BI)I

    move-result p2

    iget-object p3, p0, LBi/u;->h:[B

    iget v0, p0, LTi/A;->p:I

    invoke-static {p3, v0, p3, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p3, p0, LTi/A;->p:I

    iput p3, p0, LBi/u;->i:I

    move v3, p2

    :cond_0
    iget-object p2, p0, LBi/u;->h:[B

    iget p3, p0, LBi/u;->i:I

    add-int/lit8 v0, p3, 0x1

    iput v0, p0, LBi/u;->i:I

    aput-byte p1, p2, p3

    return v3
.end method

.method public h([BII[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    if-ltz p3, :cond_4

    invoke-virtual {p0}, LBi/u;->b()I

    move-result v0

    invoke-virtual {p0, p3}, LTi/A;->e(I)I

    move-result v1

    if-lez v1, :cond_1

    add-int/2addr v1, p5

    array-length v2, p4

    if-gt v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object v1, p0, LBi/u;->h:[B

    array-length v2, v1

    iget v3, p0, LBi/u;->i:I

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    if-le p3, v2, :cond_3

    invoke-static {p1, p2, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, LBi/u;->k:LBi/f;

    iget-object v3, p0, LBi/u;->h:[B

    invoke-interface {v1, v3, v4, p4, p5}, LBi/f;->g([BI[BI)I

    move-result v1

    iget-object v3, p0, LBi/u;->h:[B

    invoke-static {v3, v0, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v0, p0, LBi/u;->i:I

    sub-int/2addr p3, v2

    add-int/2addr p2, v2

    :goto_1
    if-le p3, v0, :cond_2

    iget-object v2, p0, LBi/u;->h:[B

    iget v3, p0, LBi/u;->i:I

    invoke-static {p1, p2, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, LBi/u;->k:LBi/f;

    iget-object v3, p0, LBi/u;->h:[B

    add-int v5, p5, v1

    invoke-interface {v2, v3, v4, p4, v5}, LBi/f;->g([BI[BI)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, LBi/u;->h:[B

    invoke-static {v2, v0, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr p3, v0

    add-int/2addr p2, v0

    goto :goto_1

    :cond_2
    move v4, v1

    :cond_3
    iget-object p4, p0, LBi/u;->h:[B

    iget p5, p0, LBi/u;->i:I

    invoke-static {p1, p2, p4, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, LBi/u;->i:I

    add-int/2addr p1, p3

    iput p1, p0, LBi/u;->i:I

    return v4

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t have a negative input length!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
