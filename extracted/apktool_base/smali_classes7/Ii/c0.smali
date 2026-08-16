.class public LIi/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LIi/c0$a;
    }
.end annotation


# instance fields
.field public a:[B

.field public b:I

.field public c:LIi/c0$a;

.field public d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:[I

.field public final o:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x30

    iput v0, p0, LIi/c0;->e:I

    const/16 v1, 0x10

    iput v1, p0, LIi/c0;->f:I

    const/4 v2, 0x1

    iput v2, p0, LIi/c0;->g:I

    const/4 v2, 0x2

    iput v2, p0, LIi/c0;->h:I

    const/16 v2, 0xc

    iput v2, p0, LIi/c0;->i:I

    const/4 v3, 0x3

    iput v3, p0, LIi/c0;->j:I

    const/4 v3, 0x4

    iput v3, p0, LIi/c0;->k:I

    iput v2, p0, LIi/c0;->l:I

    iput v1, p0, LIi/c0;->m:I

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, LIi/c0;->n:[I

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, p0, LIi/c0;->o:Ljava/io/ByteArrayOutputStream;

    new-array v0, v0, [B

    iput-object v0, p0, LIi/c0;->a:[B

    invoke-virtual {p0}, LIi/c0;->reset()V

    return-void

    nop

    :array_0
    .array-data 4
        0x58
        0x38
        0x3c0
        0xd0
        0x120
        0x14
        0x60
        0x2c
        0x380
        0xf0
        0x1a0
        0x12
    .end array-data
.end method


# virtual methods
.method public a([BIII)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    iget-object v1, p0, LIi/c0;->a:[B

    aget-byte v2, v1, v0

    add-int/lit8 v3, p2, 0x1

    aget-byte p2, p1, p2

    xor-int/2addr p2, v2

    int-to-byte p2, p2

    aput-byte p2, v1, v0

    add-int/lit8 v0, v0, 0x1

    move p2, v3

    goto :goto_0

    :cond_0
    iget-object p1, p0, LIi/c0;->a:[B

    aget-byte p2, p1, p3

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    int-to-byte p2, p2

    aput-byte p2, p1, p3

    const/16 p2, 0x2f

    aget-byte p3, p1, p2

    iget-object v1, p0, LIi/c0;->c:LIi/c0$a;

    sget-object v2, LIi/c0$a;->ModeHash:LIi/c0$a;

    if-ne v1, v2, :cond_1

    and-int/lit8 p4, p4, 0x1

    :cond_1
    xor-int/2addr p3, p4

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    iput v0, p0, LIi/c0;->b:I

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "Xoodyak Hash"

    return-object v0
.end method

.method public c([BI)I
    .locals 8

    add-int/lit8 v0, p2, 0x20

    array-length v1, p1

    if-gt v0, v1, :cond_2

    iget-object v0, p0, LIi/c0;->o:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v1, p0, LIi/c0;->o:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    move v4, v2

    :goto_0
    iget v5, p0, LIi/c0;->b:I

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eq v5, v6, :cond_0

    invoke-virtual {p0, v7, v2, v2, v2}, LIi/c0;->g([BIII)V

    :cond_0
    iget v5, p0, LIi/c0;->d:I

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {p0, v0, v4, v5, v3}, LIi/c0;->a([BIII)V

    add-int/2addr v4, v5

    sub-int/2addr v1, v5

    if-nez v1, :cond_1

    const/16 v0, 0x40

    const/16 v1, 0x10

    invoke-virtual {p0, p1, p2, v1, v0}, LIi/c0;->g([BIII)V

    invoke-virtual {p0, v7, v2, v2, v2}, LIi/c0;->a([BIII)V

    add-int/2addr p2, v1

    invoke-virtual {p0, p1, p2, v1, v2}, LIi/c0;->g([BIII)V

    const/16 p1, 0x20

    return p1

    :cond_1
    move v3, v2

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer is too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(II)I
    .locals 1

    and-int/lit8 v0, p2, 0x1f

    shl-int v0, p1, v0

    rsub-int/lit8 p2, p2, 0x20

    and-int/lit8 p2, p2, 0x1f

    ushr-int/2addr p1, p2

    xor-int/2addr p1, v0

    return p1
.end method

.method public f()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public final g([BIII)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, LIi/c0;->c:LIi/c0$a;

    sget-object v3, LIi/c0$a;->ModeHash:LIi/c0$a;

    if-eq v2, v3, :cond_0

    iget-object v2, v0, LIi/c0;->a:[B

    const/16 v3, 0x2f

    aget-byte v4, v2, v3

    xor-int v4, v4, p4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    :cond_0
    const/16 v2, 0xc

    new-array v3, v2, [I

    iget-object v4, v0, LIi/c0;->a:[B

    const/4 v5, 0x0

    invoke-static {v4, v5, v3, v5, v2}, Lorg/bouncycastle/util/p;->t([BI[III)V

    new-array v4, v2, [I

    const/4 v6, 0x4

    new-array v7, v6, [I

    new-array v8, v6, [I

    move v9, v5

    :goto_0
    const/4 v10, 0x2

    if-ge v9, v2, :cond_9

    move v11, v5

    :goto_1
    const/4 v12, 0x1

    if-ge v11, v6, :cond_1

    invoke-virtual {v0, v11, v5}, LIi/c0;->j(II)I

    move-result v13

    aget v13, v3, v13

    invoke-virtual {v0, v11, v12}, LIi/c0;->j(II)I

    move-result v12

    aget v12, v3, v12

    xor-int/2addr v12, v13

    invoke-virtual {v0, v11, v10}, LIi/c0;->j(II)I

    move-result v13

    aget v13, v3, v13

    xor-int/2addr v12, v13

    aput v12, v7, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    move v11, v5

    :goto_2
    const/4 v13, 0x3

    if-ge v11, v6, :cond_2

    add-int/lit8 v14, v11, 0x3

    and-int/2addr v13, v14

    aget v13, v7, v13

    const/4 v14, 0x5

    invoke-virtual {v0, v13, v14}, LIi/c0;->d(II)I

    move-result v14

    const/16 v15, 0xe

    invoke-virtual {v0, v13, v15}, LIi/c0;->d(II)I

    move-result v13

    xor-int/2addr v13, v14

    aput v13, v8, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    move v11, v5

    :goto_3
    if-ge v11, v6, :cond_4

    move v14, v5

    :goto_4
    if-ge v14, v13, :cond_3

    invoke-virtual {v0, v11, v14}, LIi/c0;->j(II)I

    move-result v15

    aget v16, v3, v15

    aget v17, v8, v11

    xor-int v16, v16, v17

    aput v16, v3, v15

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_4
    move v11, v5

    :goto_5
    if-ge v11, v6, :cond_5

    invoke-virtual {v0, v11, v5}, LIi/c0;->j(II)I

    move-result v14

    invoke-virtual {v0, v11, v5}, LIi/c0;->j(II)I

    move-result v15

    aget v15, v3, v15

    aput v15, v4, v14

    invoke-virtual {v0, v11, v12}, LIi/c0;->j(II)I

    move-result v14

    add-int/lit8 v15, v11, 0x3

    invoke-virtual {v0, v15, v12}, LIi/c0;->j(II)I

    move-result v15

    aget v15, v3, v15

    aput v15, v4, v14

    invoke-virtual {v0, v11, v10}, LIi/c0;->j(II)I

    move-result v14

    invoke-virtual {v0, v11, v10}, LIi/c0;->j(II)I

    move-result v15

    aget v15, v3, v15

    const/16 v2, 0xb

    invoke-virtual {v0, v15, v2}, LIi/c0;->d(II)I

    move-result v2

    aput v2, v4, v14

    add-int/lit8 v11, v11, 0x1

    const/16 v2, 0xc

    goto :goto_5

    :cond_5
    aget v2, v4, v5

    iget-object v11, v0, LIi/c0;->n:[I

    aget v11, v11, v9

    xor-int/2addr v2, v11

    aput v2, v4, v5

    move v2, v5

    :goto_6
    if-ge v2, v6, :cond_7

    move v11, v5

    :goto_7
    if-ge v11, v13, :cond_6

    invoke-virtual {v0, v2, v11}, LIi/c0;->j(II)I

    move-result v14

    invoke-virtual {v0, v2, v11}, LIi/c0;->j(II)I

    move-result v15

    aget v15, v4, v15

    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v0, v2, v13}, LIi/c0;->j(II)I

    move-result v17

    aget v10, v4, v17

    not-int v10, v10

    add-int/lit8 v11, v11, 0x2

    invoke-virtual {v0, v2, v11}, LIi/c0;->j(II)I

    move-result v11

    aget v11, v4, v11

    and-int/2addr v10, v11

    xor-int/2addr v10, v15

    aput v10, v3, v14

    move v11, v13

    const/4 v10, 0x2

    const/4 v13, 0x3

    goto :goto_7

    :cond_6
    add-int/lit8 v2, v2, 0x1

    const/4 v10, 0x2

    const/4 v13, 0x3

    goto :goto_6

    :cond_7
    move v2, v5

    :goto_8
    if-ge v2, v6, :cond_8

    invoke-virtual {v0, v2, v5}, LIi/c0;->j(II)I

    move-result v10

    invoke-virtual {v0, v2, v5}, LIi/c0;->j(II)I

    move-result v11

    aget v11, v3, v11

    aput v11, v4, v10

    invoke-virtual {v0, v2, v12}, LIi/c0;->j(II)I

    move-result v10

    invoke-virtual {v0, v2, v12}, LIi/c0;->j(II)I

    move-result v11

    aget v11, v3, v11

    invoke-virtual {v0, v11, v12}, LIi/c0;->d(II)I

    move-result v11

    aput v11, v4, v10

    const/4 v10, 0x2

    invoke-virtual {v0, v2, v10}, LIi/c0;->j(II)I

    move-result v11

    add-int/lit8 v13, v2, 0x2

    invoke-virtual {v0, v13, v10}, LIi/c0;->j(II)I

    move-result v13

    aget v10, v3, v13

    const/16 v13, 0x8

    invoke-virtual {v0, v10, v13}, LIi/c0;->d(II)I

    move-result v10

    aput v10, v4, v11

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_8
    const/16 v2, 0xc

    invoke-static {v4, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_9
    iget-object v4, v0, LIi/c0;->a:[B

    invoke-static {v3, v5, v2, v4, v5}, Lorg/bouncycastle/util/p;->n([III[BI)V

    const/4 v2, 0x2

    iput v2, v0, LIi/c0;->b:I

    if-eqz v1, :cond_a

    iget-object v2, v0, LIi/c0;->a:[B

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    return-void
.end method

.method public final j(II)I
    .locals 0

    rem-int/lit8 p2, p2, 0x3

    mul-int/lit8 p2, p2, 0x4

    rem-int/lit8 p1, p1, 0x4

    add-int/2addr p2, p1

    return p2
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, LIi/c0;->a:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/a;->e0([BB)V

    const/4 v0, 0x2

    iput v0, p0, LIi/c0;->b:I

    sget-object v0, LIi/c0$a;->ModeHash:LIi/c0$a;

    iput-object v0, p0, LIi/c0;->c:LIi/c0$a;

    const/16 v0, 0x10

    iput v0, p0, LIi/c0;->d:I

    iget-object v0, p0, LIi/c0;->o:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 1

    .line 1
    iget-object v0, p0, LIi/c0;->o:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public update([BII)V
    .locals 2

    add-int v0, p2, p3

    .line 2
    array-length v1, p1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, LIi/c0;->o:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
