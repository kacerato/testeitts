.class public LSl/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/b;


# instance fields
.field public a:Z

.field public b:LSl/e;

.field public c:LSl/g;

.field public d:LSl/f;

.field public e:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLBi/k;)V
    .locals 2

    iput-boolean p1, p0, LSl/h;->a:Z

    instance-of v0, p2, LXi/x0;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p2, LXi/x0;

    invoke-virtual {p2}, LXi/x0;->b()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {p2}, LXi/x0;->a()LBi/k;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz p1, :cond_1

    check-cast p2, LSl/g;

    iput-object p2, p0, LSl/h;->c:LSl/g;

    iput-object v1, p0, LSl/h;->d:LSl/f;

    invoke-virtual {p2}, LSl/d;->d()LSl/e;

    move-result-object p1

    iput-object p1, p0, LSl/h;->b:LSl/e;

    invoke-static {v0}, LBi/r;->i(Ljava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, LSl/h;->e:Ljava/security/SecureRandom;

    goto :goto_1

    :cond_1
    iput-object v1, p0, LSl/h;->c:LSl/g;

    check-cast p2, LSl/f;

    iput-object p2, p0, LSl/h;->d:LSl/f;

    invoke-virtual {p2}, LSl/d;->d()LSl/e;

    move-result-object p1

    iput-object p1, p0, LSl/h;->b:LSl/e;

    iput-object v1, p0, LSl/h;->e:Ljava/security/SecureRandom;

    :goto_1
    return-void
.end method

.method public b([BII)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    new-array v0, p3, [B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean p1, p0, LSl/h;->a:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, LSl/h;->c:LSl/g;

    invoke-virtual {p0, v0, p1}, LSl/h;->m([BLSl/g;)[B

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, LSl/h;->d:LSl/f;

    invoke-virtual {p0, v0, p1}, LSl/h;->k([BLSl/f;)[B

    move-result-object p1

    return-object p1
.end method

.method public c()I
    .locals 2

    iget-object v0, p0, LSl/h;->b:LSl/e;

    iget v1, v0, LSl/e;->b:I

    iget v0, v0, LSl/e;->c:I

    invoke-virtual {p0, v0}, LSl/h;->p(I)I

    move-result v0

    mul-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    return v1
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, LSl/h;->b:LSl/e;

    iget v0, v0, LSl/e;->n:I

    return v0
.end method

.method public final e([BIIZ)LYl/e;
    .locals 10

    iget-object v0, p0, LSl/h;->b:LSl/e;

    iget-object v0, v0, LSl/e;->B:LBi/y;

    invoke-interface {v0}, LBi/y;->f()I

    move-result v1

    mul-int v2, p3, v1

    new-array v2, v2, [B

    if-eqz p4, :cond_0

    invoke-virtual {p0, v0, p1}, LSl/h;->h(LBi/y;[B)[B

    move-result-object p1

    :cond_0
    const/4 p4, 0x0

    move v3, p4

    :goto_0
    if-ge v3, p3, :cond_1

    array-length v4, p1

    invoke-interface {v0, p1, p4, v4}, LBi/y;->update([BII)V

    invoke-virtual {p0, v0, v3}, LSl/h;->q(LBi/y;I)V

    invoke-virtual {p0, v0}, LSl/h;->g(LBi/y;)[B

    move-result-object v4

    mul-int v5, v3, v1

    invoke-static {v4, p4, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p3, LYl/e;

    invoke-direct {p3, p2}, LYl/e;-><init>(I)V

    :goto_1
    move v1, p4

    move v4, v1

    :goto_2
    array-length v5, v2

    if-eq v1, v5, :cond_6

    aget-byte v5, v2, v1

    and-int/lit16 v5, v5, 0xff

    const/16 v6, 0xf3

    if-lt v5, v6, :cond_2

    goto :goto_4

    :cond_2
    move v6, p4

    :goto_3
    const/4 v7, 0x4

    if-ge v6, v7, :cond_4

    rem-int/lit8 v7, v5, 0x3

    iget-object v8, p3, LYl/e;->a:[I

    add-int/lit8 v9, v7, -0x1

    aput v9, v8, v4

    add-int/lit8 v4, v4, 0x1

    if-ne v4, p2, :cond_3

    return-object p3

    :cond_3
    sub-int/2addr v5, v7

    div-int/lit8 v5, v5, 0x3

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    iget-object v6, p3, LYl/e;->a:[I

    add-int/lit8 v5, v5, -0x1

    aput v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    if-ne v4, p2, :cond_5

    return-object p3

    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    if-lt v4, p2, :cond_7

    return-object p3

    :cond_7
    array-length v1, p1

    invoke-interface {v0, p1, p4, v1}, LBi/y;->update([BII)V

    invoke-virtual {p0, v0, v3}, LSl/h;->q(LBi/y;I)V

    invoke-virtual {p0, v0}, LSl/h;->g(LBi/y;)[B

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public final f([B[BI[B[B)[B
    .locals 3

    array-length v0, p1

    add-int/2addr v0, p3

    array-length p3, p4

    add-int/2addr v0, p3

    array-length p3, p5

    add-int/2addr v0, p3

    new-array p3, v0, [B

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p1

    array-length v2, p2

    invoke-static {p2, v1, p3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p1

    array-length v2, p2

    add-int/2addr v0, v2

    array-length v2, p4

    invoke-static {p4, v1, p3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    array-length p2, p2

    add-int/2addr p1, p2

    array-length p2, p4

    add-int/2addr p1, p2

    array-length p2, p5

    invoke-static {p5, v1, p3, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p3
.end method

.method public final g(LBi/y;)[B
    .locals 2

    invoke-interface {p1}, LBi/y;->f()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, LBi/y;->c([BI)I

    return-object v0
.end method

.method public final h(LBi/y;[B)[B
    .locals 3

    invoke-interface {p1}, LBi/y;->f()I

    move-result v0

    new-array v0, v0, [B

    array-length v1, p2

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v1}, LBi/y;->update([BII)V

    invoke-interface {p1, v0, v2}, LBi/y;->c([BI)I

    return-object v0
.end method

.method public final i([BI)[B
    .locals 2

    new-array v0, p2, [B

    array-length v1, p1

    if-ge p2, v1, :cond_0

    goto :goto_0

    :cond_0
    array-length p2, p1

    :goto_0
    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public j(LYl/e;LYl/i;LYl/e;)LYl/e;
    .locals 3

    iget-object v0, p0, LSl/h;->b:LSl/e;

    iget-boolean v1, v0, LSl/e;->z:Z

    const/4 v2, 0x3

    iget v0, v0, LSl/e;->c:I

    invoke-interface {p2, p1, v0}, LYl/i;->e(LYl/e;I)LYl/e;

    move-result-object p2

    if-eqz v1, :cond_0

    invoke-virtual {p2, v2}, LYl/e;->E(I)V

    invoke-virtual {p2, p1}, LYl/e;->h(LYl/e;)V

    :cond_0
    iget-object p1, p0, LSl/h;->b:LSl/e;

    iget p1, p1, LSl/e;->c:I

    invoke-virtual {p2, p1}, LYl/e;->j(I)V

    invoke-virtual {p2}, LYl/e;->B()V

    iget-object p1, p0, LSl/h;->b:LSl/e;

    iget-boolean p1, p1, LSl/e;->z:Z

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, LYl/d;

    invoke-direct {p1, p2}, LYl/d;-><init>(LYl/e;)V

    invoke-virtual {p1, p3, v2}, LYl/d;->e(LYl/e;I)LYl/e;

    move-result-object p2

    :goto_0
    invoke-virtual {p2, v2}, LYl/e;->j(I)V

    return-object p2
.end method

.method public final k([BLSl/f;)[B
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v0, p2

    iget-object v1, v0, LSl/f;->d:LYl/i;

    iget-object v2, v0, LSl/f;->e:LYl/e;

    iget-object v7, v0, LSl/f;->f:LYl/e;

    iget-object v0, v6, LSl/h;->b:LSl/e;

    iget v3, v0, LSl/e;->b:I

    iget v8, v0, LSl/e;->c:I

    iget v4, v0, LSl/e;->o:I

    iget v5, v0, LSl/e;->n:I

    iget v9, v0, LSl/e;->r:I

    iget v10, v0, LSl/e;->s:I

    iget v11, v0, LSl/e;->v:I

    iget-boolean v12, v0, LSl/e;->w:Z

    iget-object v13, v0, LSl/e;->x:[B

    const/16 v0, 0xff

    if-gt v5, v0, :cond_6

    div-int/lit8 v4, v4, 0x8

    move-object/from16 v14, p1

    invoke-static {v14, v3, v8}, LYl/e;->t([BII)LYl/e;

    move-result-object v14

    invoke-virtual {v6, v14, v1, v2}, LSl/h;->j(LYl/e;LYl/i;LYl/e;)LYl/e;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, LYl/e;->l(I)I

    move-result v2

    if-lt v2, v9, :cond_5

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, LYl/e;->l(I)I

    move-result v15

    if-lt v15, v9, :cond_4

    const/4 v15, 0x1

    invoke-virtual {v1, v15}, LYl/e;->l(I)I

    move-result v0

    if-lt v0, v9, :cond_3

    invoke-virtual {v14}, LYl/e;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, LYl/e;

    invoke-virtual {v9, v1}, LYl/e;->R(LYl/e;)V

    invoke-virtual {v9, v8}, LYl/e;->D(I)V

    invoke-virtual {v9}, LYl/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LYl/e;

    const/4 v14, 0x4

    invoke-virtual {v0, v14}, LYl/e;->D(I)V

    invoke-virtual {v0, v14}, LYl/e;->U(I)[B

    move-result-object v0

    invoke-virtual {v6, v0, v3, v11, v12}, LSl/h;->e([BIIZ)LYl/e;

    move-result-object v0

    invoke-virtual {v1, v0}, LYl/e;->R(LYl/e;)V

    invoke-virtual {v1}, LYl/e;->B()V

    invoke-virtual {v1}, LYl/e;->V()[B

    move-result-object v0

    new-array v11, v4, [B

    invoke-static {v0, v2, v11, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v1, v0, v4

    const/16 v3, 0xff

    and-int/2addr v3, v1

    if-gt v3, v5, :cond_2

    new-array v12, v3, [B

    add-int/2addr v4, v15

    invoke-static {v0, v4, v12, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v0

    add-int/2addr v4, v3

    sub-int/2addr v1, v4

    new-array v5, v1, [B

    invoke-static {v0, v4, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v0, v1, [B

    invoke-static {v5, v0}, Lorg/bouncycastle/util/a;->I([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v7, v8}, LYl/e;->U(I)[B

    move-result-object v0

    div-int/lit8 v10, v10, 0x8

    invoke-virtual {v6, v0, v10}, LSl/h;->i([BI)[B

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v12

    move-object v4, v11

    invoke-virtual/range {v0 .. v5}, LSl/h;->f([B[BI[B[B)[B

    move-result-object v0

    invoke-virtual {v6, v0, v12}, LSl/h;->o([B[B)LYl/i;

    move-result-object v0

    invoke-interface {v0, v7}, LYl/i;->a(LYl/e;)LYl/e;

    move-result-object v0

    invoke-virtual {v0, v8}, LYl/e;->D(I)V

    invoke-virtual {v0, v9}, LYl/e;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v12

    :cond_0
    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "Invalid message encoding"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "The message is not followed by zeroes"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "Less than dm0 coefficients equal 1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "Less than dm0 coefficients equal 0"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "Less than dm0 coefficients equal -1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "maxMsgLenBytes values bigger than 255 are not supported"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l(LYl/e;LYl/m;LYl/e;)LYl/e;
    .locals 1

    iget-object v0, p0, LSl/h;->b:LSl/e;

    iget v0, v0, LSl/e;->c:I

    invoke-interface {p2, p3, v0}, LYl/i;->e(LYl/e;I)LYl/e;

    move-result-object p2

    iget-object p3, p0, LSl/h;->b:LSl/e;

    iget p3, p3, LSl/e;->c:I

    invoke-virtual {p2, p1, p3}, LYl/e;->i(LYl/e;I)V

    iget-object p1, p0, LSl/h;->b:LSl/e;

    iget p1, p1, LSl/e;->c:I

    invoke-virtual {p2, p1}, LYl/e;->o(I)V

    return-object p2
.end method

.method public final m([BLSl/g;)[B
    .locals 22

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v0, p2

    iget-object v8, v0, LSl/g;->d:LYl/e;

    iget-object v0, v6, LSl/h;->b:LSl/e;

    iget v9, v0, LSl/e;->b:I

    iget v10, v0, LSl/e;->c:I

    iget v11, v0, LSl/e;->n:I

    iget v12, v0, LSl/e;->o:I

    iget v13, v0, LSl/e;->p:I

    iget v14, v0, LSl/e;->r:I

    iget v15, v0, LSl/e;->s:I

    iget v5, v0, LSl/e;->v:I

    iget-boolean v4, v0, LSl/e;->w:Z

    iget-object v3, v0, LSl/e;->x:[B

    array-length v2, v7

    const/16 v0, 0xff

    if-gt v11, v0, :cond_4

    if-gt v2, v11, :cond_3

    :goto_0
    div-int/lit8 v0, v12, 0x8

    new-array v1, v0, [B

    move/from16 p2, v4

    iget-object v4, v6, LSl/h;->e:Ljava/security/SecureRandom;

    invoke-virtual {v4, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v4, 0x1

    add-int/lit8 v16, v11, 0x1

    sub-int v4, v16, v2

    move/from16 v16, v5

    new-array v5, v4, [B

    move/from16 v18, v12

    div-int/lit8 v12, v13, 0x8

    new-array v12, v12, [B

    move/from16 v19, v13

    const/4 v13, 0x0

    invoke-static {v1, v13, v12, v13, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    int-to-byte v13, v2

    aput-byte v13, v12, v0

    const/4 v13, 0x1

    add-int/2addr v0, v13

    array-length v13, v7

    move-object/from16 v20, v1

    const/4 v1, 0x0

    invoke-static {v7, v1, v12, v0, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v13, v7

    add-int/2addr v0, v13

    invoke-static {v5, v1, v12, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v12, v9}, LYl/e;->u([BI)LYl/e;

    move-result-object v13

    invoke-virtual {v8, v10}, LYl/e;->U(I)[B

    move-result-object v0

    div-int/lit8 v1, v15, 0x8

    invoke-virtual {v6, v0, v1}, LSl/h;->i([BI)[B

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v4, v20

    move-object v1, v3

    move/from16 v20, v2

    move-object/from16 v2, p1

    move-object/from16 v21, v3

    move/from16 v3, v20

    move/from16 v7, p2

    move/from16 v17, v15

    const/4 v15, 0x1

    move/from16 v15, v16

    invoke-virtual/range {v0 .. v5}, LSl/h;->f([B[BI[B[B)[B

    move-result-object v0

    invoke-virtual {v6, v0, v12}, LSl/h;->o([B[B)LYl/i;

    move-result-object v0

    invoke-interface {v0, v8, v10}, LYl/i;->e(LYl/e;I)LYl/e;

    move-result-object v0

    invoke-virtual {v0}, LYl/e;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LYl/e;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, LYl/e;->D(I)V

    invoke-virtual {v1, v2}, LYl/e;->U(I)[B

    move-result-object v1

    invoke-virtual {v6, v1, v9, v15, v7}, LSl/h;->e([BIIZ)LYl/e;

    move-result-object v1

    invoke-virtual {v13, v1}, LYl/e;->h(LYl/e;)V

    invoke-virtual {v13}, LYl/e;->B()V

    const/4 v1, -0x1

    invoke-virtual {v13, v1}, LYl/e;->l(I)I

    move-result v1

    if-ge v1, v14, :cond_0

    :goto_1
    move v4, v7

    move v5, v15

    move/from16 v15, v17

    move/from16 v12, v18

    move/from16 v13, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v7, p1

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v13, v1}, LYl/e;->l(I)I

    move-result v1

    if-ge v1, v14, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v13, v1}, LYl/e;->l(I)I

    move-result v1

    if-ge v1, v14, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0, v13, v10}, LYl/e;->i(LYl/e;I)V

    invoke-virtual {v0, v10}, LYl/e;->o(I)V

    invoke-virtual {v0, v10}, LYl/e;->U(I)[B

    move-result-object v0

    return-object v0

    :cond_3
    move/from16 v20, v2

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "llen values bigger than 1 are not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final n(LSl/a;I)[I
    .locals 5

    iget-object v0, p0, LSl/h;->b:LSl/e;

    iget v0, v0, LSl/e;->b:I

    new-array v0, v0, [I

    const/4 v1, -0x1

    :goto_0
    const/4 v2, 0x1

    if-gt v1, v2, :cond_2

    const/4 v2, 0x0

    :cond_0
    :goto_1
    if-ge v2, p2, :cond_1

    invoke-virtual {p1}, LSl/a;->d()I

    move-result v3

    aget v4, v0, v3

    if-nez v4, :cond_0

    aput v1, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final o([B[B)LYl/i;
    .locals 3

    new-instance p2, LSl/a;

    iget-object v0, p0, LSl/h;->b:LSl/e;

    invoke-direct {p2, p1, v0}, LSl/a;-><init>([BLSl/e;)V

    iget-object p1, p0, LSl/h;->b:LSl/e;

    iget v0, p1, LSl/e;->A:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, LYl/l;

    iget p1, p1, LSl/e;->i:I

    invoke-virtual {p0, p2, p1}, LSl/h;->n(LSl/a;I)[I

    move-result-object p1

    invoke-direct {v0, p1}, LYl/l;-><init>([I)V

    new-instance p1, LYl/l;

    iget-object v1, p0, LSl/h;->b:LSl/e;

    iget v1, v1, LSl/e;->j:I

    invoke-virtual {p0, p2, v1}, LSl/h;->n(LSl/a;I)[I

    move-result-object v1

    invoke-direct {p1, v1}, LYl/l;-><init>([I)V

    new-instance v1, LYl/l;

    iget-object v2, p0, LSl/h;->b:LSl/e;

    iget v2, v2, LSl/e;->k:I

    invoke-virtual {p0, p2, v2}, LSl/h;->n(LSl/a;I)[I

    move-result-object p2

    invoke-direct {v1, p2}, LYl/l;-><init>([I)V

    new-instance p2, LYl/j;

    invoke-direct {p2, v0, p1, v1}, LYl/j;-><init>(LYl/l;LYl/l;LYl/l;)V

    return-object p2

    :cond_0
    iget v0, p1, LSl/e;->h:I

    iget-boolean p1, p1, LSl/e;->y:Z

    invoke-virtual {p0, p2, v0}, LSl/h;->n(LSl/a;I)[I

    move-result-object p2

    if-eqz p1, :cond_1

    new-instance p1, LYl/l;

    invoke-direct {p1, p2}, LYl/l;-><init>([I)V

    return-object p1

    :cond_1
    new-instance p1, LYl/d;

    invoke-direct {p1, p2}, LYl/d;-><init>([I)V

    return-object p1
.end method

.method public final p(I)I
    .locals 1

    const/16 v0, 0x800

    if-ne p1, v0, :cond_0

    const/16 p1, 0xb

    return p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "log2 not fully implemented"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final q(LBi/y;I)V
    .locals 1

    shr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    invoke-interface {p1, v0}, LBi/y;->update(B)V

    shr-int/lit8 v0, p2, 0x10

    int-to-byte v0, v0

    invoke-interface {p1, v0}, LBi/y;->update(B)V

    shr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    invoke-interface {p1, v0}, LBi/y;->update(B)V

    int-to-byte p2, p2

    invoke-interface {p1, p2}, LBi/y;->update(B)V

    return-void
.end method
