.class public LLi/C0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTi/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLi/C0$a;
    }
.end annotation


# instance fields
.field public a:Z

.field public b:[B

.field public c:I

.field public d:LLi/C0$a;

.field public e:I

.field public final f:I

.field public final g:I

.field public h:[B

.field public i:[B

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:I

.field public r:[B

.field public final s:[I

.field public t:Z

.field public u:Z

.field public v:Z

.field public final w:Ljava/io/ByteArrayOutputStream;

.field public final x:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x30

    iput v0, p0, LLi/C0;->f:I

    const/16 v0, 0x18

    iput v0, p0, LLi/C0;->g:I

    const/4 v0, 0x1

    iput v0, p0, LLi/C0;->j:I

    const/4 v0, 0x2

    iput v0, p0, LLi/C0;->k:I

    const/16 v0, 0xc

    iput v0, p0, LLi/C0;->l:I

    const/4 v1, 0x3

    iput v1, p0, LLi/C0;->m:I

    const/4 v1, 0x4

    iput v1, p0, LLi/C0;->n:I

    iput v0, p0, LLi/C0;->o:I

    const/16 v1, 0x10

    iput v1, p0, LLi/C0;->p:I

    const/16 v1, 0x2c

    iput v1, p0, LLi/C0;->q:I

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, LLi/C0;->s:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, LLi/C0;->v:Z

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, LLi/C0;->w:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, LLi/C0;->x:Ljava/io/ByteArrayOutputStream;

    return-void

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

.method private t(II)I
    .locals 0

    rem-int/lit8 p2, p2, 0x3

    mul-int/lit8 p2, p2, 0x4

    rem-int/lit8 p1, p1, 0x4

    add-int/2addr p2, p1

    return p2
.end method

.method private v(Z)V
    .locals 10

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, LLi/C0;->r:[B

    :cond_0
    iget-object p1, p0, LLi/C0;->b:[B

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/bouncycastle/util/a;->e0([BB)V

    iput-boolean v0, p0, LLi/C0;->t:Z

    iput-boolean v0, p0, LLi/C0;->u:Z

    const/4 p1, 0x2

    iput p1, p0, LLi/C0;->c:I

    iget-object p1, p0, LLi/C0;->x:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object p1, p0, LLi/C0;->w:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object p1, p0, LLi/C0;->h:[B

    array-length v1, p1

    iget-object v2, p0, LLi/C0;->i:[B

    array-length v2, v2

    const/16 v3, 0x2c

    new-array v5, v3, [B

    sget-object v4, LLi/C0$a;->ModeKeyed:LLi/C0$a;

    iput-object v4, p0, LLi/C0;->d:LLi/C0$a;

    iput v3, p0, LLi/C0;->e:I

    invoke-static {p1, v0, v5, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, LLi/C0;->i:[B

    invoke-static {p1, v0, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v2

    int-to-byte p1, v2

    aput-byte p1, v5, v1

    add-int/lit8 v7, v1, 0x1

    iget v8, p0, LLi/C0;->e:I

    const/4 v9, 0x2

    const/4 v6, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v9}, LLi/C0;->l([BIIII)V

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

    iput-boolean p1, p0, LLi/C0;->a:Z

    instance-of v0, p2, LXi/w0;

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, LXi/w0;

    invoke-virtual {v0}, LXi/w0;->a()[B

    move-result-object v1

    iput-object v1, p0, LLi/C0;->i:[B

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

    iput-object v0, p0, LLi/C0;->h:[B

    array-length v0, v0

    if-ne v0, v2, :cond_0

    new-instance v0, LHi/c;

    invoke-virtual {p0}, LLi/C0;->b()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x80

    invoke-static {p1}, LLi/x0;->a(Z)LBi/o;

    move-result-object p1

    invoke-direct {v0, v1, v3, p2, p1}, LHi/c;-><init>(Ljava/lang/String;ILjava/lang/Object;LBi/o;)V

    invoke-static {v0}, LBi/r;->a(LBi/n;)V

    const/16 p1, 0x30

    new-array p1, p1, [B

    iput-object p1, p0, LLi/C0;->b:[B

    new-array p1, v2, [B

    iput-object p1, p0, LLi/C0;->r:[B

    const/4 p1, 0x1

    iput-boolean p1, p0, LLi/C0;->v:Z

    invoke-virtual {p0}, LLi/C0;->reset()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Xoodyak key must be 128 bits long"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Xoodyak init parameters must include a key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Xoodyak requires exactly 16 bytes of IV"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Xoodyak init parameters must include an IV"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "Xoodyak AEAD"

    return-object v0
.end method

.method public c([BI)I
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-boolean v0, p0, LLi/C0;->v:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, LLi/C0;->x:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iget-object v1, p0, LLi/C0;->x:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v7

    iget-boolean v1, p0, LLi/C0;->a:Z

    if-eqz v1, :cond_0

    add-int/lit8 v2, v7, 0x10

    add-int/2addr v2, p2

    array-length v3, p1

    if-gt v2, v3, :cond_1

    :cond_0
    if-nez v1, :cond_2

    add-int/lit8 v1, v7, -0x10

    add-int/2addr v1, p2

    array-length v2, p1

    if-gt v1, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {p0}, LLi/C0;->u()V

    iget-boolean v1, p0, LLi/C0;->a:Z

    const/16 v8, 0x40

    const/4 v9, 0x0

    const/16 v10, 0x10

    if-eqz v1, :cond_3

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, v0

    move v4, v7

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, LLi/C0;->p([BII[BI)I

    add-int/2addr p2, v7

    new-array v0, v10, [B

    iput-object v0, p0, LLi/C0;->r:[B

    invoke-virtual {p0, v0, v10, v8}, LLi/C0;->o([BII)V

    iget-object v0, p0, LLi/C0;->r:[B

    invoke-static {v0, v9, p1, p2, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v7, v10

    goto :goto_2

    :cond_3
    sub-int/2addr v7, v10

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, v0

    move v4, v7

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, LLi/C0;->p([BII[BI)I

    new-array p1, v10, [B

    iput-object p1, p0, LLi/C0;->r:[B

    invoke-virtual {p0, p1, v10, v8}, LLi/C0;->o([BII)V

    move p2, v7

    move p1, v9

    :goto_1
    if-ge p1, v10, :cond_5

    iget-object v1, p0, LLi/C0;->r:[B

    aget-byte v1, v1, p1

    add-int/lit8 v2, p2, 0x1

    aget-byte p2, v0, p2

    if-ne v1, p2, :cond_4

    add-int/lit8 p1, p1, 0x1

    move p2, v2

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Mac does not match"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    :goto_2
    invoke-direct {p0, v9}, LLi/C0;->v(Z)V

    return v7

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Need call init function before encryption/decryption"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e()[B
    .locals 1

    iget-object v0, p0, LLi/C0;->r:[B

    return-object v0
.end method

.method public f([BII[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    iget-boolean v0, p0, LLi/C0;->v:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, LLi/C0;->d:LLi/C0$a;

    sget-object v1, LLi/C0$a;->ModeKeyed:LLi/C0$a;

    if-ne v0, v1, :cond_4

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_3

    iget-object v0, p0, LLi/C0;->x:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object p1, p0, LLi/C0;->x:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    iget-boolean p2, p0, LLi/C0;->a:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    move p2, p3

    goto :goto_0

    :cond_0
    const/16 p2, 0x10

    :goto_0
    sub-int/2addr p1, p2

    invoke-virtual {p0}, LLi/C0;->q()I

    move-result p2

    if-lt p1, p2, :cond_2

    iget-object p2, p0, LLi/C0;->x:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p0}, LLi/C0;->q()I

    move-result p3

    div-int/2addr p1, p3

    invoke-virtual {p0}, LLi/C0;->q()I

    move-result p3

    mul-int/2addr p1, p3

    add-int p3, p1, p5

    array-length v0, p4

    if-gt p3, v0, :cond_1

    invoke-virtual {p0}, LLi/C0;->u()V

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p2

    move v3, p1

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, LLi/C0;->p([BII[BI)I

    iget-object p3, p0, LLi/C0;->x:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object p3, p0, LLi/C0;->x:Ljava/io/ByteArrayOutputStream;

    array-length p4, p2

    sub-int/2addr p4, p1

    invoke-virtual {p3, p2, p1, p4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return p1

    :cond_1
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer is too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return p3

    :cond_3
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Xoodyak has not been initialised"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Need call init function before encryption/decryption"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

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

    invoke-virtual/range {v1 .. v6}, LLi/C0;->f([BII[BI)I

    move-result p1

    return p1
.end method

.method public j([BII)V
    .locals 2

    iget-boolean v0, p0, LLi/C0;->t:Z

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "AAD cannot be added after reading a full block("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LLi/C0;->q()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " bytes) of input for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, LLi/C0;->a:Z

    if-eqz p3, :cond_0

    const-string p3, "encryption"

    goto :goto_0

    :cond_0
    const-string p3, "decryption"

    :goto_0
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_2

    iget-object v0, p0, LLi/C0;->w:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void

    :cond_2
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public k(B)V
    .locals 2

    iget-boolean v0, p0, LLi/C0;->t:Z

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AAD cannot be added after reading a full block("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, LLi/C0;->q()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bytes) of input for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, LLi/C0;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "encryption"

    goto :goto_0

    :cond_0
    const-string v1, "decryption"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, LLi/C0;->w:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public final l([BIIII)V
    .locals 3

    :goto_0
    iget v0, p0, LLi/C0;->c:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2, v2}, LLi/C0;->o([BII)V

    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0, p5}, LLi/C0;->m([BIII)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    if-nez p3, :cond_1

    return-void

    :cond_1
    move p5, v2

    goto :goto_0
.end method

.method public m([BIII)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    iget-object v1, p0, LLi/C0;->b:[B

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
    iget-object p1, p0, LLi/C0;->b:[B

    aget-byte p2, p1, p3

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    int-to-byte p2, p2

    aput-byte p2, p1, p3

    const/16 p2, 0x2f

    aget-byte p3, p1, p2

    iget-object v1, p0, LLi/C0;->d:LLi/C0$a;

    sget-object v2, LLi/C0$a;->ModeHash:LLi/C0$a;

    if-ne v1, v2, :cond_1

    and-int/lit8 p4, p4, 0x1

    :cond_1
    xor-int/2addr p3, p4

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    iput v0, p0, LLi/C0;->c:I

    return-void
.end method

.method public final n(II)I
    .locals 1

    and-int/lit8 v0, p2, 0x1f

    shl-int v0, p1, v0

    rsub-int/lit8 p2, p2, 0x20

    and-int/lit8 p2, p2, 0x1f

    ushr-int/2addr p1, p2

    xor-int/2addr p1, v0

    return p1
.end method

.method public final o([BII)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, LLi/C0;->d:LLi/C0$a;

    sget-object v3, LLi/C0$a;->ModeHash:LLi/C0$a;

    if-eq v2, v3, :cond_0

    iget-object v2, v0, LLi/C0;->b:[B

    const/16 v3, 0x2f

    aget-byte v4, v2, v3

    xor-int v4, v4, p3

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    :cond_0
    const/16 v2, 0xc

    new-array v3, v2, [I

    iget-object v4, v0, LLi/C0;->b:[B

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

    invoke-direct {v0, v11, v5}, LLi/C0;->t(II)I

    move-result v13

    aget v13, v3, v13

    invoke-direct {v0, v11, v12}, LLi/C0;->t(II)I

    move-result v12

    aget v12, v3, v12

    xor-int/2addr v12, v13

    invoke-direct {v0, v11, v10}, LLi/C0;->t(II)I

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

    invoke-virtual {v0, v13, v14}, LLi/C0;->n(II)I

    move-result v14

    const/16 v15, 0xe

    invoke-virtual {v0, v13, v15}, LLi/C0;->n(II)I

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

    invoke-direct {v0, v11, v14}, LLi/C0;->t(II)I

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

    invoke-direct {v0, v11, v5}, LLi/C0;->t(II)I

    move-result v14

    invoke-direct {v0, v11, v5}, LLi/C0;->t(II)I

    move-result v15

    aget v15, v3, v15

    aput v15, v4, v14

    invoke-direct {v0, v11, v12}, LLi/C0;->t(II)I

    move-result v14

    add-int/lit8 v15, v11, 0x3

    invoke-direct {v0, v15, v12}, LLi/C0;->t(II)I

    move-result v15

    aget v15, v3, v15

    aput v15, v4, v14

    invoke-direct {v0, v11, v10}, LLi/C0;->t(II)I

    move-result v14

    invoke-direct {v0, v11, v10}, LLi/C0;->t(II)I

    move-result v15

    aget v15, v3, v15

    const/16 v2, 0xb

    invoke-virtual {v0, v15, v2}, LLi/C0;->n(II)I

    move-result v2

    aput v2, v4, v14

    add-int/lit8 v11, v11, 0x1

    const/16 v2, 0xc

    goto :goto_5

    :cond_5
    aget v2, v4, v5

    iget-object v11, v0, LLi/C0;->s:[I

    aget v11, v11, v9

    xor-int/2addr v2, v11

    aput v2, v4, v5

    move v2, v5

    :goto_6
    if-ge v2, v6, :cond_7

    move v11, v5

    :goto_7
    if-ge v11, v13, :cond_6

    invoke-direct {v0, v2, v11}, LLi/C0;->t(II)I

    move-result v14

    invoke-direct {v0, v2, v11}, LLi/C0;->t(II)I

    move-result v15

    aget v15, v4, v15

    add-int/lit8 v13, v11, 0x1

    invoke-direct {v0, v2, v13}, LLi/C0;->t(II)I

    move-result v17

    aget v10, v4, v17

    not-int v10, v10

    add-int/lit8 v11, v11, 0x2

    invoke-direct {v0, v2, v11}, LLi/C0;->t(II)I

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

    invoke-direct {v0, v2, v5}, LLi/C0;->t(II)I

    move-result v10

    invoke-direct {v0, v2, v5}, LLi/C0;->t(II)I

    move-result v11

    aget v11, v3, v11

    aput v11, v4, v10

    invoke-direct {v0, v2, v12}, LLi/C0;->t(II)I

    move-result v10

    invoke-direct {v0, v2, v12}, LLi/C0;->t(II)I

    move-result v11

    aget v11, v3, v11

    invoke-virtual {v0, v11, v12}, LLi/C0;->n(II)I

    move-result v11

    aput v11, v4, v10

    const/4 v10, 0x2

    invoke-direct {v0, v2, v10}, LLi/C0;->t(II)I

    move-result v11

    add-int/lit8 v13, v2, 0x2

    invoke-direct {v0, v13, v10}, LLi/C0;->t(II)I

    move-result v13

    aget v10, v3, v13

    const/16 v13, 0x8

    invoke-virtual {v0, v10, v13}, LLi/C0;->n(II)I

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
    iget-object v4, v0, LLi/C0;->b:[B

    invoke-static {v3, v5, v2, v4, v5}, Lorg/bouncycastle/util/p;->n([III[BI)V

    const/4 v2, 0x2

    iput v2, v0, LLi/C0;->c:I

    if-eqz v1, :cond_a

    iget-object v2, v0, LLi/C0;->b:[B

    move/from16 v3, p2

    invoke-static {v2, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    return-void
.end method

.method public final p([BII[BI)I
    .locals 9

    const/16 v0, 0x18

    new-array v1, v0, [B

    iget-boolean v2, p0, LLi/C0;->u:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/16 v2, 0x80

    :goto_0
    move v4, p3

    :goto_1
    if-nez v4, :cond_2

    iget-boolean v5, p0, LLi/C0;->u:Z

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    return p3

    :cond_2
    :goto_2
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    iget-boolean v6, p0, LLi/C0;->a:Z

    if-eqz v6, :cond_3

    invoke-static {p1, p2, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    const/4 v6, 0x0

    invoke-virtual {p0, v6, v3, v2}, LLi/C0;->o([BII)V

    move v2, v3

    :goto_3
    if-ge v2, v5, :cond_4

    add-int v6, p5, v2

    add-int/lit8 v7, p2, 0x1

    aget-byte p2, p1, p2

    iget-object v8, p0, LLi/C0;->b:[B

    aget-byte v8, v8, v2

    xor-int/2addr p2, v8

    int-to-byte p2, p2

    aput-byte p2, p4, v6

    add-int/lit8 v2, v2, 0x1

    move p2, v7

    goto :goto_3

    :cond_4
    iget-boolean v2, p0, LLi/C0;->a:Z

    if-eqz v2, :cond_5

    invoke-virtual {p0, v1, v3, v5, v3}, LLi/C0;->m([BIII)V

    goto :goto_4

    :cond_5
    invoke-virtual {p0, p4, p5, v5, v3}, LLi/C0;->m([BIII)V

    :goto_4
    add-int/2addr p5, v5

    sub-int/2addr v4, v5

    const/4 v2, 0x1

    iput-boolean v2, p0, LLi/C0;->u:Z

    move v2, v3

    goto :goto_1
.end method

.method public q()I
    .locals 1

    const/16 v0, 0x18

    return v0
.end method

.method public r()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public reset()V
    .locals 2

    iget-boolean v0, p0, LLi/C0;->v:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, LLi/C0;->v(Z)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need call init function before encryption/decryption"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public s()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public final u()V
    .locals 7

    iget-boolean v0, p0, LLi/C0;->t:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LLi/C0;->w:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    array-length v4, v2

    iget v5, p0, LLi/C0;->e:I

    const/4 v6, 0x3

    const/4 v3, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, LLi/C0;->l([BIIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, LLi/C0;->t:Z

    :cond_0
    return-void
.end method
