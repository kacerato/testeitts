.class public LLi/U;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTi/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLi/U$b;
    }
.end annotation


# instance fields
.field public final A:[[B

.field public final B:[[B

.field public final C:[B

.field public a:Z

.field public b:Z

.field public c:[B

.field public d:[B

.field public e:[B

.field public f:[[B

.field public g:[B

.field public h:[B

.field public i:Z

.field public j:Z

.field public final k:Ljava/io/ByteArrayOutputStream;

.field public final l:Ljava/io/ByteArrayOutputStream;

.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:I

.field public final s:I

.field public final t:I

.field public final u:I

.field public final v:I

.field public final w:I

.field public final x:I

.field public final y:I

.field public final z:I


# direct methods
.method public constructor <init>(LLi/U$b;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, v0, LLi/U;->k:Ljava/io/ByteArrayOutputStream;

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, v0, LLi/U;->l:Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x10

    iput v1, v0, LLi/U;->m:I

    iput v1, v0, LLi/U;->n:I

    iput v1, v0, LLi/U;->r:I

    const/16 v2, 0xc

    iput v2, v0, LLi/U;->t:I

    const/16 v3, 0x8

    iput v3, v0, LLi/U;->u:I

    const/4 v4, 0x3

    iput v4, v0, LLi/U;->v:I

    const/4 v5, 0x7

    iput v5, v0, LLi/U;->w:I

    const/16 v6, 0x40

    iput v6, v0, LLi/U;->x:I

    const/4 v6, 0x4

    iput v6, v0, LLi/U;->y:I

    iput v4, v0, LLi/U;->z:I

    const/4 v7, 0x1

    const/4 v8, 0x2

    new-array v9, v2, [B

    fill-array-data v9, :array_0

    new-array v10, v2, [B

    fill-array-data v10, :array_1

    new-array v11, v2, [B

    fill-array-data v11, :array_2

    new-array v12, v2, [B

    fill-array-data v12, :array_3

    new-array v13, v2, [B

    fill-array-data v13, :array_4

    new-array v14, v2, [B

    fill-array-data v14, :array_5

    new-array v15, v2, [B

    fill-array-data v15, :array_6

    new-array v2, v2, [B

    fill-array-data v2, :array_7

    move-object/from16 v16, v2

    filled-new-array/range {v9 .. v16}, [[B

    move-result-object v2

    iput-object v2, v0, LLi/U;->A:[[B

    new-array v9, v3, [B

    fill-array-data v9, :array_8

    new-array v10, v3, [B

    fill-array-data v10, :array_9

    new-array v11, v3, [B

    fill-array-data v11, :array_a

    new-array v12, v3, [B

    fill-array-data v12, :array_b

    new-array v13, v3, [B

    fill-array-data v13, :array_c

    new-array v14, v3, [B

    fill-array-data v14, :array_d

    new-array v15, v3, [B

    fill-array-data v15, :array_e

    new-array v2, v3, [B

    fill-array-data v2, :array_f

    move-object/from16 v16, v2

    filled-new-array/range {v9 .. v16}, [[B

    move-result-object v2

    iput-object v2, v0, LLi/U;->B:[[B

    new-array v1, v1, [B

    fill-array-data v1, :array_10

    iput-object v1, v0, LLi/U;->C:[B

    sget-object v1, LLi/U$a;->a:[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v7, :cond_1

    if-eq v1, v8, :cond_0

    const/4 v1, 0x0

    const/4 v15, 0x0

    goto :goto_0

    :cond_0
    const/16 v15, 0x80

    move v1, v15

    goto :goto_0

    :cond_1
    const/16 v15, 0x20

    const/16 v1, 0xe0

    :goto_0
    add-int/lit8 v2, v15, 0x7

    ushr-int/lit8 v3, v2, 0x3

    iput v3, v0, LLi/U;->o:I

    ushr-int/2addr v2, v6

    iput v2, v0, LLi/U;->p:I

    add-int/2addr v15, v1

    add-int/2addr v5, v15

    ushr-int/lit8 v1, v5, 0x3

    iput v1, v0, LLi/U;->q:I

    sub-int/2addr v1, v7

    shl-int/2addr v1, v4

    sub-int/2addr v15, v1

    sub-int/2addr v15, v4

    iput v15, v0, LLi/U;->s:I

    const/4 v1, 0x0

    iput-boolean v1, v0, LLi/U;->j:Z

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x3t
        0x7t
        0xet
        0xdt
        0xbt
        0x6t
        0xct
        0x9t
        0x2t
        0x5t
        0xat
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x2t
        0x6t
        0xft
        0xct
        0xat
        0x7t
        0xdt
        0x8t
        0x3t
        0x4t
        0xbt
    .end array-data

    :array_2
    .array-data 1
        0x2t
        0x0t
        0x4t
        0xdt
        0xet
        0x8t
        0x5t
        0xft
        0xat
        0x1t
        0x6t
        0x9t
    .end array-data

    :array_3
    .array-data 1
        0x6t
        0x4t
        0x0t
        0x9t
        0xat
        0xct
        0x1t
        0xbt
        0xet
        0x5t
        0x2t
        0xdt
    .end array-data

    :array_4
    .array-data 1
        0xet
        0xct
        0x8t
        0x1t
        0x2t
        0x4t
        0x9t
        0x3t
        0x6t
        0xdt
        0xat
        0x5t
    .end array-data

    :array_5
    .array-data 1
        0xft
        0xdt
        0x9t
        0x0t
        0x3t
        0x5t
        0x8t
        0x2t
        0x7t
        0xct
        0xbt
        0x4t
    .end array-data

    :array_6
    .array-data 1
        0xdt
        0xft
        0xbt
        0x2t
        0x1t
        0x7t
        0xat
        0x0t
        0x5t
        0xet
        0x9t
        0x6t
    .end array-data

    :array_7
    .array-data 1
        0x9t
        0xbt
        0xft
        0x6t
        0x5t
        0x3t
        0xet
        0x4t
        0x1t
        0xat
        0xdt
        0x2t
    .end array-data

    :array_8
    .array-data 1
        0x2t
        0x4t
        0x2t
        0xbt
        0x2t
        0x8t
        0x5t
        0x6t
    .end array-data

    :array_9
    .array-data 1
        0xct
        0x9t
        0x8t
        0xdt
        0x7t
        0x7t
        0x5t
        0x2t
    .end array-data

    :array_a
    .array-data 1
        0x4t
        0x4t
        0xdt
        0xdt
        0x9t
        0x4t
        0xdt
        0x9t
    .end array-data

    :array_b
    .array-data 1
        0x1t
        0x6t
        0x5t
        0x1t
        0xct
        0xdt
        0xft
        0xet
    .end array-data

    :array_c
    .array-data 1
        0xft
        0xct
        0x9t
        0xdt
        0xet
        0x5t
        0xet
        0xdt
    .end array-data

    :array_d
    .array-data 1
        0x9t
        0xet
        0x5t
        0xft
        0x4t
        0xct
        0x9t
        0x6t
    .end array-data

    :array_e
    .array-data 1
        0xct
        0x2t
        0x2t
        0xat
        0x3t
        0x1t
        0x1t
        0xet
    .end array-data

    :array_f
    .array-data 1
        0xft
        0x1t
        0xdt
        0xat
        0x5t
        0xat
        0x2t
        0x3t
    .end array-data

    :array_10
    .array-data 1
        0xct
        0x5t
        0x6t
        0xbt
        0x9t
        0x0t
        0xat
        0xdt
        0x3t
        0xet
        0xft
        0x8t
        0x4t
        0x7t
        0x1t
        0x2t
    .end array-data
.end method

.method private q(Z)V
    .locals 4

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, LLi/U;->h:[B

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, LLi/U;->a:Z

    iget-object p1, p0, LLi/U;->k:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object p1, p0, LLi/U;->l:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object p1, p0, LLi/U;->c:[B

    iget-object v0, p0, LLi/U;->e:[B

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, LLi/U;->d:[B

    iget-object v0, p0, LLi/U;->e:[B

    iget-object v1, p0, LLi/U;->c:[B

    array-length v1, v1

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-boolean v2, p0, LLi/U;->i:Z

    return-void
.end method


# virtual methods
.method public a(ZLBi/k;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iput-boolean p1, p0, LLi/U;->b:Z

    instance-of v0, p2, LXi/w0;

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, LXi/w0;

    invoke-virtual {v0}, LXi/w0;->a()[B

    move-result-object v1

    iput-object v1, p0, LLi/U;->d:[B

    if-eqz v1, :cond_2

    array-length v1, v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, LXi/w0;->b()LBi/k;

    move-result-object v1

    instance-of v1, v1, LXi/o0;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, LXi/w0;->b()LBi/k;

    move-result-object v0

    check-cast v0, LXi/o0;

    invoke-virtual {v0}, LXi/o0;->b()[B

    move-result-object v0

    iput-object v0, p0, LLi/U;->c:[B

    array-length v0, v0

    if-ne v0, v2, :cond_0

    new-instance v0, LHi/c;

    invoke-virtual {p0}, LLi/U;->b()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x80

    invoke-static {p1}, LLi/x0;->a(Z)LBi/o;

    move-result-object p1

    invoke-direct {v0, v1, v3, p2, p1}, LHi/c;-><init>(Ljava/lang/String;ILjava/lang/Object;LBi/o;)V

    invoke-static {v0}, LBi/r;->a(LBi/n;)V

    iget p1, p0, LLi/U;->q:I

    new-array p1, p1, [B

    iput-object p1, p0, LLi/U;->e:[B

    const/4 p1, 0x2

    new-array p1, p1, [I

    const/4 p2, 0x1

    const/16 v0, 0x8

    aput v0, p1, p2

    const/4 v1, 0x0

    aput v0, p1, v1

    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[B

    iput-object p1, p0, LLi/U;->f:[[B

    new-array p1, v2, [B

    iput-object p1, p0, LLi/U;->h:[B

    iput-boolean p2, p0, LLi/U;->j:Z

    invoke-direct {p0, v1}, LLi/U;->q(Z)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Photon-Beetle AEAD key must be 128 bits long"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Photon-Beetle AEAD init parameters must include a key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Photon-Beetle AEAD requires exactly 16 bytes of IV"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Photon-Beetle AEAD init parameters must include an IV"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "Photon-Beetle AEAD"

    return-object v0
.end method

.method public c([BI)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-boolean v0, v6, LLi/U;->j:Z

    if-eqz v0, :cond_14

    iget-object v0, v6, LLi/U;->l:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iget-boolean v1, v6, LLi/U;->b:Z

    const/16 v8, 0x10

    const/4 v9, 0x0

    if-eqz v1, :cond_0

    move v2, v9

    goto :goto_0

    :cond_0
    move v2, v8

    :goto_0
    sub-int v10, v0, v2

    if-eqz v1, :cond_1

    add-int/lit8 v0, v10, 0x10

    add-int v0, v0, p2

    array-length v2, v7

    if-gt v0, v2, :cond_2

    :cond_1
    if-nez v1, :cond_3

    add-int v0, v10, p2

    array-length v1, v7

    if-gt v0, v1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    iget-object v0, v6, LLi/U;->l:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    iget-object v0, v6, LLi/U;->k:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, v6, LLi/U;->g:[B

    array-length v0, v0

    if-nez v0, :cond_4

    if-eqz v10, :cond_5

    :cond_4
    iput-boolean v9, v6, LLi/U;->a:Z

    :cond_5
    const/4 v12, 0x1

    if-eqz v10, :cond_6

    move v1, v12

    goto :goto_2

    :cond_6
    move v1, v9

    :goto_2
    iget v2, v6, LLi/U;->o:I

    rem-int v2, v0, v2

    if-nez v2, :cond_7

    move v2, v12

    goto :goto_3

    :cond_7
    move v2, v9

    :goto_3
    const/4 v3, 0x3

    const/4 v4, 0x4

    invoke-virtual {v6, v1, v2, v3, v4}, LLi/U;->s(ZZBB)B

    move-result v1

    if-eqz v0, :cond_8

    move v2, v12

    goto :goto_4

    :cond_8
    move v2, v9

    :goto_4
    iget v3, v6, LLi/U;->o:I

    rem-int v3, v10, v3

    if-nez v3, :cond_9

    move v3, v12

    goto :goto_5

    :cond_9
    move v3, v9

    :goto_5
    const/4 v4, 0x5

    const/4 v5, 0x6

    invoke-virtual {v6, v2, v3, v4, v5}, LLi/U;->s(ZZBB)B

    move-result v13

    if-eqz v0, :cond_c

    iget v2, v6, LLi/U;->o:I

    add-int v3, v0, v2

    sub-int/2addr v3, v12

    div-int/2addr v3, v2

    move v2, v9

    :goto_6
    add-int/lit8 v4, v3, -0x1

    invoke-virtual/range {p0 .. p0}, LLi/U;->l()V

    if-ge v2, v4, :cond_a

    iget-object v4, v6, LLi/U;->g:[B

    iget v5, v6, LLi/U;->o:I

    mul-int v14, v2, v5

    invoke-virtual {v6, v4, v14, v5}, LLi/U;->m([BII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_a
    iget v3, v6, LLi/U;->o:I

    mul-int v4, v2, v3

    sub-int/2addr v0, v4

    iget-object v4, v6, LLi/U;->g:[B

    mul-int/2addr v2, v3

    invoke-virtual {v6, v4, v2, v0}, LLi/U;->m([BII)V

    iget v2, v6, LLi/U;->o:I

    if-ge v0, v2, :cond_b

    iget-object v2, v6, LLi/U;->e:[B

    aget-byte v3, v2, v0

    xor-int/2addr v3, v12

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    :cond_b
    iget-object v0, v6, LLi/U;->e:[B

    iget v2, v6, LLi/U;->q:I

    sub-int/2addr v2, v12

    aget-byte v3, v0, v2

    iget v4, v6, LLi/U;->s:I

    shl-int/2addr v1, v4

    xor-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    :cond_c
    if-eqz v10, :cond_f

    iget v0, v6, LLi/U;->o:I

    add-int v1, v10, v0

    sub-int/2addr v1, v12

    div-int v14, v1, v0

    move v15, v9

    :goto_7
    add-int/lit8 v0, v14, -0x1

    invoke-virtual/range {p0 .. p0}, LLi/U;->l()V

    if-ge v15, v0, :cond_d

    iget v5, v6, LLi/U;->o:I

    mul-int v0, v15, v5

    add-int v2, p2, v0

    mul-int v4, v15, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v11

    invoke-virtual/range {v0 .. v5}, LLi/U;->r([BI[BII)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    :cond_d
    iget v0, v6, LLi/U;->o:I

    mul-int v1, v15, v0

    sub-int v14, v10, v1

    mul-int v1, v15, v0

    add-int v2, p2, v1

    mul-int v4, v15, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v3, v11

    move v5, v14

    invoke-virtual/range {v0 .. v5}, LLi/U;->r([BI[BII)V

    iget v0, v6, LLi/U;->o:I

    if-ge v14, v0, :cond_e

    iget-object v0, v6, LLi/U;->e:[B

    aget-byte v1, v0, v14

    xor-int/2addr v1, v12

    int-to-byte v1, v1

    aput-byte v1, v0, v14

    :cond_e
    iget-object v0, v6, LLi/U;->e:[B

    iget v1, v6, LLi/U;->q:I

    sub-int/2addr v1, v12

    aget-byte v2, v0, v1

    iget v3, v6, LLi/U;->s:I

    shl-int v3, v13, v3

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    :cond_f
    add-int v0, p2, v10

    iget-boolean v1, v6, LLi/U;->a:Z

    if-eqz v1, :cond_10

    iget-object v1, v6, LLi/U;->e:[B

    iget v2, v6, LLi/U;->q:I

    sub-int/2addr v2, v12

    aget-byte v3, v1, v2

    iget v4, v6, LLi/U;->s:I

    shl-int v4, v12, v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    :cond_10
    invoke-virtual/range {p0 .. p0}, LLi/U;->l()V

    new-array v1, v8, [B

    iput-object v1, v6, LLi/U;->h:[B

    iget-object v2, v6, LLi/U;->e:[B

    invoke-static {v2, v9, v1, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v1, v6, LLi/U;->b:Z

    if-eqz v1, :cond_11

    iget-object v1, v6, LLi/U;->h:[B

    invoke-static {v1, v9, v7, v0, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v10, v10, 0x10

    goto :goto_9

    :cond_11
    move v0, v9

    :goto_8
    if-ge v0, v8, :cond_13

    iget-object v1, v6, LLi/U;->h:[B

    aget-byte v1, v1, v0

    add-int v2, v10, v0

    aget-byte v2, v11, v2

    if-ne v1, v2, :cond_12

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mac does not match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    :goto_9
    invoke-direct {v6, v9}, LLi/U;->q(Z)V

    return v10

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need call init function before encryption/decryption"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()[B
    .locals 1

    iget-object v0, p0, LLi/U;->h:[B

    return-object v0
.end method

.method public f([BII[BI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    add-int p4, p2, p3

    array-length p5, p1

    if-gt p4, p5, :cond_0

    iget-object p4, p0, LLi/U;->l:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p4, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 p1, 0x0

    return p1

    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g(I)I
    .locals 0

    return p1
.end method

.method public h(I)I
    .locals 0

    add-int/lit8 p1, p1, 0x10

    return p1
.end method

.method public i(B[BI)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v2, v0, [B

    const/4 v0, 0x0

    aput-byte p1, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v1, p0

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, LLi/U;->f([BII[BI)I

    move-result p1

    return p1
.end method

.method public j([BII)V
    .locals 2

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, LLi/U;->k:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k(B)V
    .locals 1

    iget-object v0, p0, LLi/U;->k:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public final l()V
    .locals 15

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x40

    const/4 v3, 0x4

    if-ge v1, v2, :cond_0

    iget-object v2, p0, LLi/U;->f:[[B

    ushr-int/lit8 v4, v1, 0x3

    aget-object v2, v2, v4

    and-int/lit8 v4, v1, 0x7

    iget-object v5, p0, LLi/U;->e:[B

    shr-int/lit8 v6, v1, 0x1

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    and-int/lit8 v6, v1, 0x1

    mul-int/2addr v6, v3

    ushr-int v3, v5, v6

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    const/16 v4, 0xc

    if-ge v1, v4, :cond_c

    move v4, v0

    :goto_2
    const/16 v5, 0x8

    if-ge v4, v5, :cond_1

    iget-object v5, p0, LLi/U;->f:[[B

    aget-object v5, v5, v4

    aget-byte v6, v5, v0

    iget-object v7, p0, LLi/U;->A:[[B

    aget-object v7, v7, v4

    aget-byte v7, v7, v1

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    move v4, v0

    :goto_3
    if-ge v4, v5, :cond_3

    move v6, v0

    :goto_4
    if-ge v6, v5, :cond_2

    iget-object v7, p0, LLi/U;->f:[[B

    aget-object v7, v7, v4

    iget-object v8, p0, LLi/U;->C:[B

    aget-byte v9, v7, v6

    aget-byte v8, v8, v9

    aput-byte v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x1

    move v6, v4

    :goto_5
    if-ge v6, v5, :cond_4

    iget-object v7, p0, LLi/U;->f:[[B

    aget-object v7, v7, v6

    iget-object v8, p0, LLi/U;->e:[B

    invoke-static {v7, v0, v8, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, LLi/U;->e:[B

    iget-object v8, p0, LLi/U;->f:[[B

    aget-object v8, v8, v6

    rsub-int/lit8 v9, v6, 0x8

    invoke-static {v7, v6, v8, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v7, p0, LLi/U;->e:[B

    iget-object v8, p0, LLi/U;->f:[[B

    aget-object v8, v8, v6

    invoke-static {v7, v0, v8, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_4
    move v6, v0

    :goto_6
    if-ge v6, v5, :cond_b

    move v7, v0

    :goto_7
    if-ge v7, v5, :cond_9

    move v8, v0

    move v9, v8

    :goto_8
    if-ge v8, v5, :cond_8

    iget-object v10, p0, LLi/U;->B:[[B

    aget-object v10, v10, v7

    aget-byte v10, v10, v8

    iget-object v11, p0, LLi/U;->f:[[B

    aget-object v11, v11, v8

    aget-byte v11, v11, v6

    move v12, v0

    move v13, v12

    :goto_9
    if-ge v12, v3, :cond_7

    ushr-int v14, v11, v12

    and-int/2addr v14, v4

    if-eqz v14, :cond_5

    xor-int/2addr v13, v10

    :cond_5
    ushr-int/lit8 v14, v10, 0x3

    and-int/2addr v14, v4

    shl-int/lit8 v10, v10, 0x1

    if-eqz v14, :cond_6

    xor-int/lit8 v10, v10, 0x3

    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_7
    and-int/lit8 v10, v13, 0xf

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_8
    iget-object v8, p0, LLi/U;->e:[B

    aput-byte v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_9
    move v7, v0

    :goto_a
    if-ge v7, v5, :cond_a

    iget-object v8, p0, LLi/U;->f:[[B

    aget-object v8, v8, v7

    iget-object v9, p0, LLi/U;->e:[B

    aget-byte v9, v9, v7

    aput-byte v9, v8, v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_c
    :goto_b
    if-ge v0, v2, :cond_d

    iget-object v1, p0, LLi/U;->e:[B

    ushr-int/lit8 v4, v0, 0x1

    iget-object v5, p0, LLi/U;->f:[[B

    ushr-int/lit8 v6, v0, 0x3

    aget-object v5, v5, v6

    and-int/lit8 v6, v0, 0x7

    aget-byte v6, v5, v6

    and-int/lit8 v6, v6, 0xf

    add-int/lit8 v7, v0, 0x1

    and-int/lit8 v7, v7, 0x7

    aget-byte v5, v5, v7

    and-int/lit8 v5, v5, 0xf

    shl-int/2addr v5, v3

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    add-int/lit8 v0, v0, 0x2

    goto :goto_b

    :cond_d
    return-void
.end method

.method public final m([BII)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    iget-object v1, p0, LLi/U;->e:[B

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
    return-void
.end method

.method public n()I
    .locals 1

    iget v0, p0, LLi/U;->o:I

    return v0
.end method

.method public o()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public p()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public final r([BI[BII)V
    .locals 7

    iget-object v0, p0, LLi/U;->f:[[B

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v2, p0, LLi/U;->p:I

    invoke-static {p5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v3, v1

    :goto_0
    iget v4, p0, LLi/U;->p:I

    add-int/lit8 v5, v4, -0x1

    if-ge v3, v5, :cond_0

    iget-object v4, p0, LLi/U;->e:[B

    aget-byte v5, v4, v3

    and-int/lit16 v5, v5, 0xff

    ushr-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v3, 0x1

    aget-byte v4, v4, v6

    and-int/lit8 v4, v4, 0x1

    shl-int/lit8 v4, v4, 0x7

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    move v3, v6

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, LLi/U;->e:[B

    aget-byte v3, v5, v3

    and-int/lit16 v3, v3, 0xff

    ushr-int/lit8 v3, v3, 0x1

    aget-byte v5, v5, v1

    and-int/lit8 v5, v5, 0x1

    shl-int/lit8 v5, v5, 0x7

    or-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v0, v4

    :goto_1
    if-ge v1, v2, :cond_1

    add-int v3, v1, p2

    iget-object v4, p0, LLi/U;->e:[B

    iget v5, p0, LLi/U;->p:I

    add-int/2addr v5, v1

    aget-byte v4, v4, v5

    add-int/lit8 v5, v1, 0x1

    add-int/2addr v1, p4

    aget-byte v1, p3, v1

    xor-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, p1, v3

    move v1, v5

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v1, p5, :cond_2

    add-int v2, v1, p2

    iget v3, p0, LLi/U;->p:I

    sub-int v3, v1, v3

    aget-byte v3, v0, v3

    add-int/lit8 v4, v1, 0x1

    add-int/2addr v1, p4

    aget-byte v1, p3, v1

    xor-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p1, v2

    move v1, v4

    goto :goto_2

    :cond_2
    iget-boolean p2, p0, LLi/U;->b:Z

    if-eqz p2, :cond_3

    invoke-virtual {p0, p3, p4, p5}, LLi/U;->m([BII)V

    goto :goto_3

    :cond_3
    invoke-virtual {p0, p1, p4, p5}, LLi/U;->m([BII)V

    :goto_3
    return-void
.end method

.method public reset()V
    .locals 2

    iget-boolean v0, p0, LLi/U;->j:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, LLi/U;->q(Z)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need call init function before encryption/decryption"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final s(ZZBB)B
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    if-eqz p2, :cond_2

    return p3

    :cond_2
    return p4
.end method
