.class public LIi/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/a0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LIi/b$b;
    }
.end annotation


# instance fields
.field public a:LIi/b$b;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/io/ByteArrayOutputStream;

.field public d:J

.field public e:J

.field public f:J

.field public g:J

.field public h:J

.field public final i:I

.field public final j:I


# direct methods
.method public constructor <init>(LIi/b$b;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, LIi/b;->c:Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x20

    iput v0, p0, LIi/b;->i:I

    iput-object p1, p0, LIi/b;->a:LIi/b$b;

    sget-object v0, LIi/b$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/16 p1, 0x8

    iput p1, p0, LIi/b;->j:I

    const-string p1, "Ascon-XofA"

    :goto_0
    iput-object p1, p0, LIi/b;->b:Ljava/lang/String;

    goto :goto_1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid parameter settings for Ascon Hash"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/16 p1, 0xc

    iput p1, p0, LIi/b;->j:I

    const-string p1, "Ascon-Xof"

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, LIi/b;->reset()V

    return-void
.end method


# virtual methods
.method public final a([BII)J
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_0

    add-int v3, v2, p2

    aget-byte v3, p1, v3

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    rsub-int/lit8 v5, v2, 0x7

    shl-int/lit8 v5, v5, 0x3

    shl-long/2addr v3, v5

    or-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LIi/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c([BI)I
    .locals 1

    invoke-virtual {p0}, LIi/b;->f()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, LIi/b;->h([BII)I

    move-result p1

    return p1
.end method

.method public final d(I)V
    .locals 2

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    const-wide/16 v0, 0xf0

    invoke-virtual {p0, v0, v1}, LIi/b;->k(J)V

    const-wide/16 v0, 0xe1

    invoke-virtual {p0, v0, v1}, LIi/b;->k(J)V

    const-wide/16 v0, 0xd2

    invoke-virtual {p0, v0, v1}, LIi/b;->k(J)V

    const-wide/16 v0, 0xc3

    invoke-virtual {p0, v0, v1}, LIi/b;->k(J)V

    :cond_0
    const/16 v0, 0x8

    if-lt p1, v0, :cond_1

    const-wide/16 v0, 0xb4

    invoke-virtual {p0, v0, v1}, LIi/b;->k(J)V

    const-wide/16 v0, 0xa5

    invoke-virtual {p0, v0, v1}, LIi/b;->k(J)V

    :cond_1
    const-wide/16 v0, 0x96

    invoke-virtual {p0, v0, v1}, LIi/b;->k(J)V

    const-wide/16 v0, 0x87

    invoke-virtual {p0, v0, v1}, LIi/b;->k(J)V

    const-wide/16 v0, 0x78

    invoke-virtual {p0, v0, v1}, LIi/b;->k(J)V

    const-wide/16 v0, 0x69

    invoke-virtual {p0, v0, v1}, LIi/b;->k(J)V

    const-wide/16 v0, 0x5a

    invoke-virtual {p0, v0, v1}, LIi/b;->k(J)V

    const-wide/16 v0, 0x4b

    invoke-virtual {p0, v0, v1}, LIi/b;->k(J)V

    return-void
.end method

.method public e([BII)I
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, LIi/b;->h([BII)I

    move-result p1

    return p1
.end method

.method public f()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public final g(I)J
    .locals 2

    shl-int/lit8 p1, p1, 0x3

    rsub-int/lit8 p1, p1, 0x38

    const-wide/16 v0, 0x80

    shl-long/2addr v0, p1

    return-wide v0
.end method

.method public h([BII)I
    .locals 9

    add-int/lit8 p3, p2, 0x20

    array-length v0, p1

    if-gt p3, v0, :cond_2

    iget-object p3, p0, LIi/b;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3

    iget-object v0, p0, LIi/b;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    iget-wide v3, p0, LIi/b;->d:J

    if-lt v0, v2, :cond_0

    invoke-virtual {p0, p3, v1, v2}, LIi/b;->a([BII)J

    move-result-wide v5

    xor-long v2, v3, v5

    iput-wide v2, p0, LIi/b;->d:J

    iget v2, p0, LIi/b;->j:I

    invoke-virtual {p0, v2}, LIi/b;->d(I)V

    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v0, -0x8

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p3, v1, v0}, LIi/b;->a([BII)J

    move-result-wide v5

    xor-long/2addr v3, v5

    iput-wide v3, p0, LIi/b;->d:J

    invoke-virtual {p0, v0}, LIi/b;->g(I)J

    move-result-wide v0

    xor-long/2addr v0, v3

    iput-wide v0, p0, LIi/b;->d:J

    const/16 p3, 0xc

    invoke-virtual {p0, p3}, LIi/b;->d(I)V

    const/16 p3, 0x20

    move v0, p3

    :goto_1
    iget-wide v6, p0, LIi/b;->d:J

    if-le v0, v2, :cond_1

    const/16 v8, 0x8

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v3 .. v8}, LIi/b;->l([BIJI)V

    iget v1, p0, LIi/b;->j:I

    invoke-virtual {p0, v1}, LIi/b;->d(I)V

    add-int/lit8 p2, p2, 0x8

    add-int/lit8 v0, v0, -0x8

    goto :goto_1

    :cond_1
    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v8, v0

    invoke-virtual/range {v3 .. v8}, LIi/b;->l([BIJI)V

    invoke-virtual {p0}, LIi/b;->reset()V

    return p3

    :cond_2
    new-instance p1, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string p2, "output buffer is too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public final j(JI)J
    .locals 2

    ushr-long v0, p1, p3

    rsub-int/lit8 p3, p3, 0x40

    shl-long/2addr p1, p3

    or-long/2addr p1, v0

    return-wide p1
.end method

.method public final k(J)V
    .locals 21

    move-object/from16 v0, p0

    iget-wide v1, v0, LIi/b;->d:J

    iget-wide v3, v0, LIi/b;->e:J

    xor-long v5, v1, v3

    iget-wide v7, v0, LIi/b;->f:J

    xor-long/2addr v5, v7

    iget-wide v9, v0, LIi/b;->g:J

    xor-long/2addr v5, v9

    xor-long v5, v5, p1

    xor-long v11, v1, v7

    iget-wide v13, v0, LIi/b;->h:J

    xor-long/2addr v11, v13

    xor-long v11, v11, p1

    and-long/2addr v11, v3

    xor-long/2addr v5, v11

    xor-long v11, v1, v7

    xor-long/2addr v11, v9

    xor-long/2addr v11, v13

    xor-long v11, v11, p1

    xor-long v15, v3, v7

    xor-long v15, v15, p1

    xor-long v17, v3, v9

    and-long v15, v15, v17

    xor-long/2addr v11, v15

    xor-long v15, v3, v7

    xor-long/2addr v15, v13

    xor-long v15, v15, p1

    and-long v17, v9, v13

    move-wide/from16 v19, v11

    xor-long v11, v15, v17

    xor-long v15, v1, v3

    xor-long/2addr v7, v15

    xor-long v7, v7, p1

    move-wide v15, v11

    not-long v11, v1

    xor-long v17, v9, v13

    and-long v11, v11, v17

    xor-long/2addr v7, v11

    xor-long/2addr v9, v3

    xor-long/2addr v9, v13

    xor-long/2addr v1, v13

    and-long/2addr v1, v3

    xor-long/2addr v1, v9

    const/16 v3, 0x13

    invoke-virtual {v0, v5, v6, v3}, LIi/b;->j(JI)J

    move-result-wide v3

    xor-long/2addr v3, v5

    const/16 v9, 0x1c

    invoke-virtual {v0, v5, v6, v9}, LIi/b;->j(JI)J

    move-result-wide v5

    xor-long/2addr v3, v5

    iput-wide v3, v0, LIi/b;->d:J

    const/16 v3, 0x27

    move-wide/from16 v4, v19

    invoke-virtual {v0, v4, v5, v3}, LIi/b;->j(JI)J

    move-result-wide v9

    xor-long/2addr v9, v4

    const/16 v3, 0x3d

    invoke-virtual {v0, v4, v5, v3}, LIi/b;->j(JI)J

    move-result-wide v3

    xor-long/2addr v3, v9

    iput-wide v3, v0, LIi/b;->e:J

    const/4 v3, 0x1

    move-wide v4, v15

    invoke-virtual {v0, v4, v5, v3}, LIi/b;->j(JI)J

    move-result-wide v9

    xor-long/2addr v9, v4

    const/4 v3, 0x6

    invoke-virtual {v0, v4, v5, v3}, LIi/b;->j(JI)J

    move-result-wide v3

    xor-long/2addr v3, v9

    not-long v3, v3

    iput-wide v3, v0, LIi/b;->f:J

    const/16 v3, 0xa

    invoke-virtual {v0, v7, v8, v3}, LIi/b;->j(JI)J

    move-result-wide v3

    xor-long/2addr v3, v7

    const/16 v5, 0x11

    invoke-virtual {v0, v7, v8, v5}, LIi/b;->j(JI)J

    move-result-wide v5

    xor-long/2addr v3, v5

    iput-wide v3, v0, LIi/b;->g:J

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, LIi/b;->j(JI)J

    move-result-wide v3

    xor-long/2addr v3, v1

    const/16 v5, 0x29

    invoke-virtual {v0, v1, v2, v5}, LIi/b;->j(JI)J

    move-result-wide v1

    xor-long/2addr v1, v3

    iput-wide v1, v0, LIi/b;->h:J

    return-void
.end method

.method public final l([BIJI)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_0

    add-int v1, v0, p2

    rsub-int/lit8 v2, v0, 0x7

    shl-int/lit8 v2, v2, 0x3

    ushr-long v2, p3, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, LIi/b;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    sget-object v0, LIi/b$a;->a:[I

    iget-object v1, p0, LIi/b;->a:LIi/b$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const-wide v0, 0x44906568b77b9832L    # 1.935713262823832E22

    iput-wide v0, p0, LIi/b;->d:J

    const-wide v0, -0x32729351acbaaaceL    # -3.873456514193764E65

    iput-wide v0, p0, LIi/b;->e:J

    const-wide v0, -0x84aded8a9bdded7L    # -4.360391687961922E268

    iput-wide v0, p0, LIi/b;->f:J

    const-wide v0, 0x246885e1de0d225bL

    iput-wide v0, p0, LIi/b;->g:J

    const-wide v0, -0x5734a31ccbb668c1L    # -3.555599418810494E-112

    :goto_0
    iput-wide v0, p0, LIi/b;->h:J

    goto :goto_1

    :cond_1
    const-wide v0, -0x4a81d8c47eb32beaL    # -5.0370341941429796E-51

    iput-wide v0, p0, LIi/b;->d:J

    const-wide v0, 0x2b51042562ae2420L

    iput-wide v0, p0, LIi/b;->e:J

    const-wide v0, 0x66a3a7768ddf2218L    # 2.6724012130814204E186

    iput-wide v0, p0, LIi/b;->f:J

    const-wide v0, 0x5aad0a7a8153650cL    # 6.290696206041096E128

    iput-wide v0, p0, LIi/b;->g:J

    const-wide v0, 0x4f3e0e32539493b6L    # 5.3103393191581195E73

    goto :goto_0

    :goto_1
    return-void
.end method

.method public update(B)V
    .locals 1

    .line 1
    iget-object v0, p0, LIi/b;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public update([BII)V
    .locals 2

    add-int v0, p2, p3

    .line 2
    array-length v1, p1

    if-gt v0, v1, :cond_0

    iget-object v0, p0, LIi/b;->c:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void

    :cond_0
    new-instance p1, Lorg/bouncycastle/crypto/DataLengthException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
