.class public LLi/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LTi/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LLi/N$b;,
        LLi/N$c;,
        LLi/N$d;,
        LLi/N$e;,
        LLi/N$f;,
        LLi/N$g;,
        LLi/N$h;,
        LLi/N$i;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z

.field public c:Z

.field public final d:I

.field public final e:I

.field public final f:I

.field public g:[B

.field public h:[B

.field public i:[B

.field public j:[B

.field public k:[B

.field public l:Ljava/io/ByteArrayOutputStream;

.field public final m:Ljava/io/ByteArrayOutputStream;

.field public final n:Ljava/io/ByteArrayOutputStream;

.field public o:I

.field public p:I

.field public q:LLi/N$h;


# direct methods
.method public constructor <init>(LLi/N$i;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, LLi/N;->d:I

    iput v0, p0, LLi/N;->e:I

    const/16 v0, 0x28

    iput v0, p0, LLi/N;->f:I

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, LLi/N;->l:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, LLi/N;->m:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, LLi/N;->n:Ljava/io/ByteArrayOutputStream;

    sget-object v0, LLi/N$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance p1, LLi/N$f;

    invoke-direct {p1, p0}, LLi/N$f;-><init>(LLi/N;)V

    iput-object p1, p0, LLi/N;->q:LLi/N$h;

    const-string p1, "ISAP-K-128 AEAD"

    :goto_0
    iput-object p1, p0, LLi/N;->a:Ljava/lang/String;

    goto :goto_1

    :cond_1
    new-instance p1, LLi/N$c;

    invoke-direct {p1, p0}, LLi/N$c;-><init>(LLi/N;)V

    iput-object p1, p0, LLi/N;->q:LLi/N$h;

    const-string p1, "ISAP-A-128 AEAD"

    goto :goto_0

    :cond_2
    new-instance p1, LLi/N$g;

    invoke-direct {p1, p0}, LLi/N$g;-><init>(LLi/N;)V

    iput-object p1, p0, LLi/N;->q:LLi/N$h;

    const-string p1, "ISAP-K-128A AEAD"

    goto :goto_0

    :cond_3
    new-instance p1, LLi/N$d;

    invoke-direct {p1, p0}, LLi/N$d;-><init>(LLi/N;)V

    iput-object p1, p0, LLi/N;->q:LLi/N$h;

    const-string p1, "ISAP-A-128A AEAD"

    goto :goto_0

    :goto_1
    return-void
.end method

.method public static synthetic l(LLi/N;)I
    .locals 0

    iget p0, p0, LLi/N;->o:I

    return p0
.end method

.method public static synthetic m(LLi/N;I)I
    .locals 0

    iput p1, p0, LLi/N;->o:I

    return p1
.end method

.method public static synthetic n(LLi/N;)I
    .locals 0

    iget p0, p0, LLi/N;->p:I

    return p0
.end method

.method public static synthetic o(LLi/N;I)I
    .locals 0

    iput p1, p0, LLi/N;->p:I

    return p1
.end method

.method public static synthetic p(LLi/N;)[B
    .locals 0

    iget-object p0, p0, LLi/N;->j:[B

    return-object p0
.end method

.method public static synthetic q(LLi/N;)[B
    .locals 0

    iget-object p0, p0, LLi/N;->g:[B

    return-object p0
.end method


# virtual methods
.method public a(ZLBi/k;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iput-boolean p1, p0, LLi/N;->b:Z

    instance-of v0, p2, LXi/w0;

    if-eqz v0, :cond_3

    move-object v0, p2

    check-cast v0, LXi/w0;

    invoke-virtual {v0}, LXi/w0;->a()[B

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v2, v1

    const/16 v3, 0x10

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, LXi/w0;->b()LBi/k;

    move-result-object v2

    instance-of v2, v2, LXi/o0;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, LXi/w0;->b()LBi/k;

    move-result-object v0

    check-cast v0, LXi/o0;

    invoke-virtual {v0}, LXi/o0;->b()[B

    move-result-object v0

    array-length v2, v0

    if-ne v2, v3, :cond_0

    new-instance v2, LHi/c;

    invoke-virtual {p0}, LLi/N;->b()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-static {p1}, LLi/x0;->a(Z)LBi/o;

    move-result-object p1

    invoke-direct {v2, v3, v4, p2, p1}, LHi/c;-><init>(Ljava/lang/String;ILjava/lang/Object;LBi/o;)V

    invoke-static {v2}, LBi/r;->a(LBi/n;)V

    array-length p1, v1

    new-array p1, p1, [B

    iput-object p1, p0, LLi/N;->j:[B

    array-length p2, v0

    new-array p2, p2, [B

    iput-object p2, p0, LLi/N;->g:[B

    array-length p2, v1

    const/4 v2, 0x0

    invoke-static {v1, v2, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, LLi/N;->g:[B

    array-length p2, v0

    invoke-static {v0, v2, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, LLi/N;->q:LLi/N$h;

    invoke-interface {p1}, LLi/N$h;->init()V

    const/4 p1, 0x1

    iput-boolean p1, p0, LLi/N;->c:Z

    invoke-virtual {p0}, LLi/N;->reset()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ISAP AEAD key must be 128 bits long"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ISAP AEAD init parameters must include a key"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ISAP AEAD requires exactly 12 bytes of IV"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ISAP AEAD init parameters must include an IV"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LLi/N;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c([BI)I
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    iget-boolean v1, v0, LLi/N;->c:Z

    if-eqz v1, :cond_5

    iget-boolean v1, v0, LLi/N;->b:Z

    const/4 v10, 0x0

    const-string v2, "output buffer is too short"

    const/16 v11, 0x10

    if-eqz v1, :cond_1

    iget-object v1, v0, LLi/N;->m:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    array-length v12, v3

    add-int v13, v9, v12

    add-int/lit8 v1, v13, 0x10

    array-length v4, v8

    if-gt v1, v4, :cond_0

    iget-object v1, v0, LLi/N;->q:LLi/N$h;

    const/4 v4, 0x0

    array-length v7, v8

    move-object v2, v3

    move v3, v4

    move v4, v12

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-interface/range {v1 .. v7}, LLi/N$h;->a([BII[BII)V

    iget-object v1, v0, LLi/N;->n:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v8, v9, v12}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v1, v0, LLi/N;->l:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v0, LLi/N;->i:[B

    iget-object v1, v0, LLi/N;->n:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v0, LLi/N;->h:[B

    new-array v2, v11, [B

    iput-object v2, v0, LLi/N;->k:[B

    iget-object v14, v0, LLi/N;->q:LLi/N$h;

    iget-object v15, v0, LLi/N;->i:[B

    array-length v3, v15

    array-length v4, v1

    const/16 v20, 0x0

    move/from16 v16, v3

    move-object/from16 v17, v1

    move/from16 v18, v4

    move-object/from16 v19, v2

    invoke-interface/range {v14 .. v20}, LLi/N$h;->b([BI[BI[BI)V

    iget-object v1, v0, LLi/N;->k:[B

    invoke-static {v1, v10, v8, v13, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v12, v11

    goto :goto_1

    :cond_0
    new-instance v1, Lorg/bouncycastle/crypto/OutputLengthException;

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, v0, LLi/N;->l:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, v0, LLi/N;->i:[B

    iget-object v1, v0, LLi/N;->m:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v15

    iput-object v15, v0, LLi/N;->h:[B

    new-array v1, v11, [B

    iput-object v1, v0, LLi/N;->k:[B

    array-length v3, v15

    array-length v4, v1

    sub-int v19, v3, v4

    add-int v3, v19, v9

    array-length v4, v8

    if-gt v3, v4, :cond_4

    iget-object v12, v0, LLi/N;->q:LLi/N$h;

    iget-object v13, v0, LLi/N;->i:[B

    array-length v14, v13

    const/16 v18, 0x0

    move/from16 v16, v19

    move-object/from16 v17, v1

    invoke-interface/range {v12 .. v18}, LLi/N$h;->b([BI[BI[BI)V

    iget-object v1, v0, LLi/N;->q:LLi/N$h;

    invoke-interface {v1}, LLi/N$h;->reset()V

    :goto_0
    if-ge v10, v11, :cond_3

    iget-object v1, v0, LLi/N;->k:[B

    aget-byte v1, v1, v10

    iget-object v2, v0, LLi/N;->h:[B

    add-int v3, v19, v10

    aget-byte v2, v2, v3

    if-ne v1, v2, :cond_2

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Mac does not match"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iget-object v1, v0, LLi/N;->q:LLi/N$h;

    iget-object v2, v0, LLi/N;->h:[B

    const/4 v3, 0x0

    array-length v7, v8

    move/from16 v4, v19

    move-object/from16 v5, p1

    move/from16 v6, p2

    invoke-interface/range {v1 .. v7}, LLi/N$h;->a([BII[BII)V

    move/from16 v12, v19

    :goto_1
    return v12

    :cond_4
    new-instance v1, Lorg/bouncycastle/crypto/OutputLengthException;

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Need call init function before encryption/decryption"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public e()[B
    .locals 1

    iget-object v0, p0, LLi/N;->k:[B

    return-object v0
.end method

.method public f([BII[BI)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    iget-boolean v0, p0, LLi/N;->c:Z

    if-eqz v0, :cond_3

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_2

    iget-object v0, p0, LLi/N;->m:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-boolean p1, p0, LLi/N;->b:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, LLi/N;->m:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    iget p2, p0, LLi/N;->p:I

    if-lt p1, p2, :cond_1

    iget-object p1, p0, LLi/N;->m:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    iget p2, p0, LLi/N;->p:I

    div-int/2addr p1, p2

    mul-int/2addr p1, p2

    add-int p2, p5, p1

    array-length p3, p4

    if-gt p2, p3, :cond_0

    iget-object p2, p0, LLi/N;->m:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    iget-object v0, p0, LLi/N;->q:LLi/N$h;

    const/4 v2, 0x0

    array-length v6, p4

    move-object v1, p2

    move v3, p1

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v6}, LLi/N$h;->a([BII[BII)V

    iget-object p3, p0, LLi/N;->n:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p3, p4, p5, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object p3, p0, LLi/N;->m:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object p3, p0, LLi/N;->m:Ljava/io/ByteArrayOutputStream;

    array-length p4, p2

    sub-int/2addr p4, p1

    invoke-virtual {p3, p2, p1, p4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return p1

    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer is too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
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

    invoke-virtual/range {v1 .. v6}, LLi/N;->f([BII[BI)I

    move-result p1

    return p1
.end method

.method public j([BII)V
    .locals 2

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1

    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "input buffer too short"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, LLi/N;->b:Z

    if-eqz p3, :cond_0

    const-string p3, "encryption"

    goto :goto_0

    :cond_0
    const-string p3, "decryption"

    :goto_0
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v0, p0, LLi/N;->l:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method

.method public k(B)V
    .locals 1

    iget-object v0, p0, LLi/N;->l:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public r()I
    .locals 1

    iget v0, p0, LLi/N;->p:I

    return v0
.end method

.method public reset()V
    .locals 2

    iget-boolean v0, p0, LLi/N;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LLi/N;->l:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v0, p0, LLi/N;->q:LLi/N$h;

    invoke-interface {v0}, LLi/N$h;->reset()V

    iget-object v0, p0, LLi/N;->m:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v0, p0, LLi/N;->n:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

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

.method public t()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method
