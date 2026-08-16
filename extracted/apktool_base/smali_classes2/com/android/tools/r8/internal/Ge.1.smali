.class public final Lcom/android/tools/r8/internal/Ge;
.super Lcom/android/tools/r8/internal/Ie;
.source "SourceFile"


# instance fields
.field public final c:[B

.field public final d:I

.field public e:I

.field public final f:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ie;-><init>()V

    if-ltz p2, :cond_1

    const/16 v0, 0x14

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    new-array v0, p2, [B

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ge;->c:[B

    iput p2, p0, Lcom/android/tools/r8/internal/Ge;->d:I

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ge;->f:Ljava/io/OutputStream;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "out"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bufferSize must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 24
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ge;->f:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ge;->c:[B

    iget v2, p0, Lcom/android/tools/r8/internal/Ge;->e:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 25
    iput v3, p0, Lcom/android/tools/r8/internal/Ge;->e:I

    return-void
.end method

.method public final a(B)V
    .locals 3

    .line 17
    iget v0, p0, Lcom/android/tools/r8/internal/Ge;->e:I

    iget v1, p0, Lcom/android/tools/r8/internal/Ge;->d:I

    if-ne v0, v1, :cond_0

    .line 18
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ge;->a()V

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ge;->c:[B

    iget v1, p0, Lcom/android/tools/r8/internal/Ge;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/tools/r8/internal/Ge;->e:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public final a(IJ)V
    .locals 1

    const/16 v0, 0x12

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Ge;->j(I)V

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/Ge;->f(II)V

    .line 3
    invoke-virtual {p0, p2, p3}, Lcom/android/tools/r8/internal/Ge;->e(J)V

    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/Ge;->d(II)V

    .line 8
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/Ge;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final a(IZ)V
    .locals 2

    const/16 v0, 0xb

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Ge;->j(I)V

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/Ge;->f(II)V

    int-to-byte p1, p2

    .line 6
    iget-object p2, p0, Lcom/android/tools/r8/internal/Ge;->c:[B

    iget v0, p0, Lcom/android/tools/r8/internal/Ge;->e:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/tools/r8/internal/Ge;->e:I

    aput-byte p1, p2, v0

    return-void
.end method

.method public final a(I[B)V
    .locals 1

    const/4 v0, 0x5

    .line 20
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Ge;->j(I)V

    .line 21
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ge;->i(I)V

    const/4 v0, 0x0

    .line 22
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/tools/r8/internal/Ge;->b([BII)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/kW;)V
    .locals 2

    .line 13
    invoke-interface {p1}, Lcom/android/tools/r8/internal/kW;->getSerializedSize()I

    move-result v0

    const/4 v1, 0x5

    .line 14
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Ge;->j(I)V

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Ge;->i(I)V

    .line 16
    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/kW;->writeTo(Lcom/android/tools/r8/internal/Ie;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/m8;)V
    .locals 2

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/m8;->size()I

    move-result v0

    const/4 v1, 0x5

    .line 10
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/Ge;->j(I)V

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Ge;->i(I)V

    .line 12
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/m8;->a(Lcom/android/tools/r8/internal/Ie;)V

    return-void
.end method

.method public final a([BII)V
    .locals 0

    .line 23
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/Ge;->b([BII)V

    return-void
.end method

.method public final b(II)V
    .locals 1

    const/16 v0, 0xe

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Ge;->j(I)V

    const/4 v0, 0x5

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/Ge;->f(II)V

    .line 3
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/Ge;->h(I)V

    return-void
.end method

.method public final b(IJ)V
    .locals 1

    const/16 v0, 0x14

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Ge;->j(I)V

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/Ge;->f(II)V

    .line 6
    invoke-virtual {p0, p2, p3}, Lcom/android/tools/r8/internal/Ge;->f(J)V

    return-void
.end method

.method public final b(ILcom/android/tools/r8/internal/kW;)V
    .locals 1

    const/4 v0, 0x2

    .line 9
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/Ge;->d(II)V

    .line 10
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/Ge;->a(Lcom/android/tools/r8/internal/kW;)V

    return-void
.end method

.method public final b(ILcom/android/tools/r8/internal/m8;)V
    .locals 1

    const/4 v0, 0x2

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/Ge;->d(II)V

    .line 8
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/Ge;->a(Lcom/android/tools/r8/internal/m8;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 6

    .line 11
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    .line 12
    invoke-static {v0}, Lcom/android/tools/r8/internal/Ie;->c(I)I

    move-result v1

    add-int v2, v1, v0

    .line 13
    iget v3, p0, Lcom/android/tools/r8/internal/Ge;->d:I

    if-le v2, v3, :cond_0

    .line 14
    new-array v1, v0, [B

    .line 15
    sget-object v2, Lcom/android/tools/r8/internal/tw0;->a:Lcom/android/tools/r8/internal/ow0;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v1, v3, v0}, Lcom/android/tools/r8/internal/ow0;->a(Ljava/lang/String;[BII)I

    move-result v0

    const/4 v2, 0x5

    .line 16
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/Ge;->j(I)V

    .line 17
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Ge;->i(I)V

    .line 18
    invoke-virtual {p0, v1, v3, v0}, Lcom/android/tools/r8/internal/Ge;->b([BII)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_3

    .line 19
    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/Ge;->e:I

    sub-int/2addr v3, v0

    if-le v2, v3, :cond_1

    .line 20
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ge;->a()V

    .line 21
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/Ie;->c(I)I

    move-result v0

    .line 22
    iget v2, p0, Lcom/android/tools/r8/internal/Ge;->e:I
    :try_end_0
    .catch Lcom/android/tools/r8/internal/qw0; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, v1, :cond_2

    add-int v1, v2, v0

    .line 23
    :try_start_1
    iput v1, p0, Lcom/android/tools/r8/internal/Ge;->e:I

    .line 24
    iget-object v3, p0, Lcom/android/tools/r8/internal/Ge;->c:[B

    iget v4, p0, Lcom/android/tools/r8/internal/Ge;->d:I

    sub-int/2addr v4, v1

    .line 25
    sget-object v5, Lcom/android/tools/r8/internal/tw0;->a:Lcom/android/tools/r8/internal/ow0;

    invoke-virtual {v5, p1, v3, v1, v4}, Lcom/android/tools/r8/internal/ow0;->a(Ljava/lang/String;[BII)I

    move-result v1

    .line 26
    iput v2, p0, Lcom/android/tools/r8/internal/Ge;->e:I

    sub-int v3, v1, v2

    sub-int/2addr v3, v0

    .line 27
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/Ge;->i(I)V

    .line 28
    iput v1, p0, Lcom/android/tools/r8/internal/Ge;->e:I

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    .line 29
    :cond_2
    invoke-static {p1}, Lcom/android/tools/r8/internal/tw0;->a(Ljava/lang/String;)I

    move-result v0

    .line 30
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Ge;->i(I)V

    .line 31
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ge;->c:[B

    iget v3, p0, Lcom/android/tools/r8/internal/Ge;->e:I

    .line 32
    sget-object v4, Lcom/android/tools/r8/internal/tw0;->a:Lcom/android/tools/r8/internal/ow0;

    invoke-virtual {v4, p1, v1, v3, v0}, Lcom/android/tools/r8/internal/ow0;->a(Ljava/lang/String;[BII)I

    move-result v0

    .line 33
    iput v0, p0, Lcom/android/tools/r8/internal/Ge;->e:I
    :try_end_1
    .catch Lcom/android/tools/r8/internal/qw0; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-void

    .line 34
    :goto_1
    :try_start_2
    new-instance v1, Lcom/android/tools/r8/internal/Fe;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Fe;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    throw v1

    .line 35
    :goto_2
    iput v2, p0, Lcom/android/tools/r8/internal/Ge;->e:I

    .line 36
    throw v0
    :try_end_2
    .catch Lcom/android/tools/r8/internal/qw0; {:try_start_2 .. :try_end_2} :catch_0

    .line 37
    :goto_3
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/Ie;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/qw0;)V

    return-void
.end method

.method public final b([BII)V
    .locals 3

    .line 38
    iget v0, p0, Lcom/android/tools/r8/internal/Ge;->d:I

    iget v1, p0, Lcom/android/tools/r8/internal/Ge;->e:I

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_0

    .line 39
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ge;->c:[B

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 40
    iget p1, p0, Lcom/android/tools/r8/internal/Ge;->e:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/tools/r8/internal/Ge;->e:I

    return-void

    .line 41
    :cond_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/Ge;->c:[B

    invoke-static {p1, p2, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    .line 42
    iget v0, p0, Lcom/android/tools/r8/internal/Ge;->d:I

    iput v0, p0, Lcom/android/tools/r8/internal/Ge;->e:I

    .line 43
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ge;->a()V

    .line 44
    iget v0, p0, Lcom/android/tools/r8/internal/Ge;->d:I

    if-gt p3, v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ge;->c:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 46
    iput p3, p0, Lcom/android/tools/r8/internal/Ge;->e:I

    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ge;->f:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :goto_0
    return-void
.end method

.method public final c(II)V
    .locals 1

    const/16 v0, 0x14

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Ge;->j(I)V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/Ge;->f(II)V

    if-ltz p2, :cond_0

    .line 3
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/Ge;->i(I)V

    return-void

    :cond_0
    int-to-long p1, p2

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Ge;->f(J)V

    return-void
.end method

.method public final c(ILcom/android/tools/r8/internal/kW;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/Ge;->d(II)V

    const/4 v2, 0x2

    .line 6
    invoke-virtual {p0, v2, p1}, Lcom/android/tools/r8/internal/Ge;->e(II)V

    .line 7
    invoke-virtual {p0, v1, v2}, Lcom/android/tools/r8/internal/Ge;->d(II)V

    .line 8
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/Ge;->a(Lcom/android/tools/r8/internal/kW;)V

    const/4 p1, 0x4

    .line 9
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/Ge;->d(II)V

    return-void
.end method

.method public final c(ILcom/android/tools/r8/internal/m8;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 10
    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/Ge;->d(II)V

    const/4 v2, 0x2

    .line 11
    invoke-virtual {p0, v2, p1}, Lcom/android/tools/r8/internal/Ge;->e(II)V

    .line 12
    invoke-virtual {p0, v1, v2}, Lcom/android/tools/r8/internal/Ge;->d(II)V

    .line 13
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/Ge;->a(Lcom/android/tools/r8/internal/m8;)V

    const/4 p1, 0x4

    .line 14
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/Ge;->d(II)V

    return-void
.end method

.method public final c(J)V
    .locals 1

    const/16 v0, 0x8

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Ge;->j(I)V

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Ge;->e(J)V

    return-void
.end method

.method public final d(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    const/4 p2, 0x5

    .line 1
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/Ge;->j(I)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ge;->i(I)V

    return-void
.end method

.method public final d(J)V
    .locals 1

    const/16 v0, 0xa

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Ge;->j(I)V

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/Ge;->f(J)V

    return-void
.end method

.method public final e(I)V
    .locals 1

    const/4 v0, 0x4

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Ge;->j(I)V

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ge;->h(I)V

    return-void
.end method

.method public final e(II)V
    .locals 1

    const/16 v0, 0x14

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Ge;->j(I)V

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/Ge;->f(II)V

    .line 11
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/Ge;->i(I)V

    return-void
.end method

.method public final e(J)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ge;->c:[B

    iget v1, p0, Lcom/android/tools/r8/internal/Ge;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/tools/r8/internal/Ge;->e:I

    const-wide/16 v3, 0xff

    and-long v5, p1, v3

    long-to-int v5, v5

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    add-int/lit8 v5, v1, 0x2

    .line 2
    iput v5, p0, Lcom/android/tools/r8/internal/Ge;->e:I

    const/16 v6, 0x8

    shr-long v7, p1, v6

    and-long/2addr v7, v3

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v0, v2

    add-int/lit8 v2, v1, 0x3

    .line 3
    iput v2, p0, Lcom/android/tools/r8/internal/Ge;->e:I

    const/16 v7, 0x10

    shr-long v7, p1, v7

    and-long/2addr v7, v3

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v0, v5

    add-int/lit8 v5, v1, 0x4

    .line 4
    iput v5, p0, Lcom/android/tools/r8/internal/Ge;->e:I

    const/16 v7, 0x18

    shr-long v7, p1, v7

    and-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x5

    .line 5
    iput v2, p0, Lcom/android/tools/r8/internal/Ge;->e:I

    const/16 v3, 0x20

    shr-long v3, p1, v3

    long-to-int v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v5

    add-int/lit8 v3, v1, 0x6

    .line 6
    iput v3, p0, Lcom/android/tools/r8/internal/Ge;->e:I

    const/16 v4, 0x28

    shr-long v4, p1, v4

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x7

    .line 7
    iput v2, p0, Lcom/android/tools/r8/internal/Ge;->e:I

    const/16 v4, 0x30

    shr-long v4, p1, v4

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/2addr v1, v6

    .line 8
    iput v1, p0, Lcom/android/tools/r8/internal/Ge;->e:I

    const/16 v1, 0x38

    shr-long/2addr p1, v1

    long-to-int p1, p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    return-void
.end method

.method public final f(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x5

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Ge;->j(I)V

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ge;->i(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    const/16 p1, 0xa

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ge;->j(I)V

    .line 12
    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/Ge;->f(J)V

    return-void
.end method

.method public final f(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ge;->i(I)V

    return-void
.end method

.method public final f(J)V
    .locals 12

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/Ie;->b:Z

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x80

    if-eqz v0, :cond_1

    :goto_0
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ge;->c:[B

    iget v1, p0, Lcom/android/tools/r8/internal/Ge;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/tools/r8/internal/Ge;->e:I

    int-to-long v1, v1

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 3
    sget-object p2, Lcom/android/tools/r8/internal/bw0;->c:Lcom/android/tools/r8/internal/aw0;

    sget-wide v3, Lcom/android/tools/r8/internal/bw0;->f:J

    add-long/2addr v3, v1

    invoke-virtual {p2, v0, v3, v4, p1}, Lcom/android/tools/r8/internal/aw0;->a(Ljava/lang/Object;JB)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ge;->c:[B

    iget v6, p0, Lcom/android/tools/r8/internal/Ge;->e:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/android/tools/r8/internal/Ge;->e:I

    int-to-long v6, v6

    long-to-int v8, p1

    and-int/lit8 v8, v8, 0x7f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 5
    sget-object v9, Lcom/android/tools/r8/internal/bw0;->c:Lcom/android/tools/r8/internal/aw0;

    sget-wide v10, Lcom/android/tools/r8/internal/bw0;->f:J

    add-long/2addr v10, v6

    invoke-virtual {v9, v0, v10, v11, v8}, Lcom/android/tools/r8/internal/aw0;->a(Ljava/lang/Object;JB)V

    ushr-long/2addr p1, v1

    goto :goto_0

    :cond_1
    :goto_1
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ge;->c:[B

    iget v1, p0, Lcom/android/tools/r8/internal/Ge;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/tools/r8/internal/Ge;->e:I

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ge;->c:[B

    iget v6, p0, Lcom/android/tools/r8/internal/Ge;->e:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/android/tools/r8/internal/Ge;->e:I

    long-to-int v7, p1

    and-int/lit8 v7, v7, 0x7f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v0, v6

    ushr-long/2addr p1, v1

    goto :goto_1
.end method

.method public final g(I)V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Ge;->j(I)V

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ge;->i(I)V

    return-void
.end method

.method public final h(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ge;->c:[B

    iget v1, p0, Lcom/android/tools/r8/internal/Ge;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/tools/r8/internal/Ge;->e:I

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x2

    iput v3, p0, Lcom/android/tools/r8/internal/Ge;->e:I

    shr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x3

    iput v2, p0, Lcom/android/tools/r8/internal/Ge;->e:I

    shr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/tools/r8/internal/Ge;->e:I

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v2

    return-void
.end method

.method public final i(I)V
    .locals 7

    sget-boolean v0, Lcom/android/tools/r8/internal/Ie;->b:Z

    if-eqz v0, :cond_1

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ge;->c:[B

    iget v1, p0, Lcom/android/tools/r8/internal/Ge;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/tools/r8/internal/Ge;->e:I

    int-to-long v1, v1

    int-to-byte p1, p1

    sget-object v3, Lcom/android/tools/r8/internal/bw0;->c:Lcom/android/tools/r8/internal/aw0;

    sget-wide v4, Lcom/android/tools/r8/internal/bw0;->f:J

    add-long/2addr v4, v1

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/tools/r8/internal/aw0;->a(Ljava/lang/Object;JB)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ge;->c:[B

    iget v1, p0, Lcom/android/tools/r8/internal/Ge;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/tools/r8/internal/Ge;->e:I

    int-to-long v1, v1

    and-int/lit8 v3, p1, 0x7f

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    sget-object v4, Lcom/android/tools/r8/internal/bw0;->c:Lcom/android/tools/r8/internal/aw0;

    sget-wide v5, Lcom/android/tools/r8/internal/bw0;->f:J

    add-long/2addr v5, v1

    invoke-virtual {v4, v0, v5, v6, v3}, Lcom/android/tools/r8/internal/aw0;->a(Ljava/lang/Object;JB)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :cond_1
    :goto_1
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ge;->c:[B

    iget v1, p0, Lcom/android/tools/r8/internal/Ge;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/tools/r8/internal/Ge;->e:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ge;->c:[B

    iget v1, p0, Lcom/android/tools/r8/internal/Ge;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/tools/r8/internal/Ge;->e:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_1
.end method

.method public final j(I)V
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/Ge;->d:I

    iget v1, p0, Lcom/android/tools/r8/internal/Ge;->e:I

    sub-int/2addr v0, v1

    if-ge v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ge;->a()V

    :cond_0
    return-void
.end method
