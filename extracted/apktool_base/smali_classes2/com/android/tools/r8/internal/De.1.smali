.class public final Lcom/android/tools/r8/internal/De;
.super Lcom/android/tools/r8/internal/Ie;
.source "SourceFile"


# instance fields
.field public final c:[B

.field public final d:I

.field public e:I


# direct methods
.method public constructor <init>(I[B)V
    .locals 2

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ie;-><init>()V

    array-length v0, p2

    sub-int/2addr v0, p1

    or-int/2addr v0, p1

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    iput-object p2, p0, Lcom/android/tools/r8/internal/De;->c:[B

    iput v1, p0, Lcom/android/tools/r8/internal/De;->e:I

    iput p1, p0, Lcom/android/tools/r8/internal/De;->d:I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    array-length p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p2, v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Array range is invalid. Buffer.length=%d, offset=%d, length=%d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 17
    iget v0, p0, Lcom/android/tools/r8/internal/De;->d:I

    iget v1, p0, Lcom/android/tools/r8/internal/De;->e:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final a(B)V
    .locals 4

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/De;->c:[B

    iget v1, p0, Lcom/android/tools/r8/internal/De;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/tools/r8/internal/De;->e:I

    aput-byte p1, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 14
    new-instance v0, Lcom/android/tools/r8/internal/Fe;

    iget v1, p0, Lcom/android/tools/r8/internal/De;->e:I

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/tools/r8/internal/De;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/internal/Fe;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    throw v0
.end method

.method public final a(IJ)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/De;->d(II)V

    .line 2
    invoke-virtual {p0, p2, p3}, Lcom/android/tools/r8/internal/De;->c(J)V

    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/De;->d(II)V

    .line 6
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/De;->b(Ljava/lang/String;)V

    return-void
.end method

.method public final a(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/De;->d(II)V

    int-to-byte p1, p2

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/De;->a(B)V

    return-void
.end method

.method public final a(I[B)V
    .locals 1

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/De;->g(I)V

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/tools/r8/internal/De;->b([BII)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/kW;)V
    .locals 1

    .line 11
    invoke-interface {p1}, Lcom/android/tools/r8/internal/kW;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/De;->g(I)V

    .line 12
    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/kW;->writeTo(Lcom/android/tools/r8/internal/Ie;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/m8;)V
    .locals 1

    .line 7
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/m8;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/De;->g(I)V

    .line 8
    invoke-virtual {p1, p0}, Lcom/android/tools/r8/internal/m8;->a(Lcom/android/tools/r8/internal/Ie;)V

    return-void
.end method

.method public final a([BII)V
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/De;->b([BII)V

    return-void
.end method

.method public final b(II)V
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/De;->d(II)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/De;->e(I)V

    return-void
.end method

.method public final b(IJ)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/De;->d(II)V

    .line 4
    invoke-virtual {p0, p2, p3}, Lcom/android/tools/r8/internal/De;->d(J)V

    return-void
.end method

.method public final b(ILcom/android/tools/r8/internal/kW;)V
    .locals 1

    const/4 v0, 0x2

    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/De;->d(II)V

    .line 9
    invoke-interface {p2}, Lcom/android/tools/r8/internal/kW;->getSerializedSize()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/De;->g(I)V

    .line 10
    invoke-interface {p2, p0}, Lcom/android/tools/r8/internal/kW;->writeTo(Lcom/android/tools/r8/internal/Ie;)V

    return-void
.end method

.method public final b(ILcom/android/tools/r8/internal/m8;)V
    .locals 1

    const/4 v0, 0x2

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/De;->d(II)V

    .line 6
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/m8;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/De;->g(I)V

    .line 7
    invoke-virtual {p2, p0}, Lcom/android/tools/r8/internal/m8;->a(Lcom/android/tools/r8/internal/Ie;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 6

    .line 15
    iget v0, p0, Lcom/android/tools/r8/internal/De;->e:I

    .line 16
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    .line 17
    invoke-static {v1}, Lcom/android/tools/r8/internal/Ie;->c(I)I

    move-result v1

    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/Ie;->c(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    add-int v1, v0, v2

    .line 19
    iput v1, p0, Lcom/android/tools/r8/internal/De;->e:I

    .line 20
    iget-object v3, p0, Lcom/android/tools/r8/internal/De;->c:[B

    .line 21
    iget v4, p0, Lcom/android/tools/r8/internal/De;->d:I

    sub-int/2addr v4, v1

    .line 22
    sget-object v5, Lcom/android/tools/r8/internal/tw0;->a:Lcom/android/tools/r8/internal/ow0;

    invoke-virtual {v5, p1, v3, v1, v4}, Lcom/android/tools/r8/internal/ow0;->a(Ljava/lang/String;[BII)I

    move-result v1

    .line 23
    iput v0, p0, Lcom/android/tools/r8/internal/De;->e:I

    sub-int v3, v1, v0

    sub-int/2addr v3, v2

    .line 24
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/De;->g(I)V

    .line 25
    iput v1, p0, Lcom/android/tools/r8/internal/De;->e:I

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    .line 26
    :cond_0
    invoke-static {p1}, Lcom/android/tools/r8/internal/tw0;->a(Ljava/lang/String;)I

    move-result v1

    .line 27
    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/De;->g(I)V

    .line 28
    iget-object v1, p0, Lcom/android/tools/r8/internal/De;->c:[B

    iget v2, p0, Lcom/android/tools/r8/internal/De;->e:I

    .line 29
    iget v3, p0, Lcom/android/tools/r8/internal/De;->d:I

    sub-int/2addr v3, v2

    .line 30
    sget-object v4, Lcom/android/tools/r8/internal/tw0;->a:Lcom/android/tools/r8/internal/ow0;

    invoke-virtual {v4, p1, v1, v2, v3}, Lcom/android/tools/r8/internal/ow0;->a(Ljava/lang/String;[BII)I

    move-result v1

    .line 31
    iput v1, p0, Lcom/android/tools/r8/internal/De;->e:I
    :try_end_0
    .catch Lcom/android/tools/r8/internal/qw0; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 32
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/Fe;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/Fe;-><init>(Ljava/lang/IndexOutOfBoundsException;)V

    throw v0

    .line 33
    :goto_1
    iput v0, p0, Lcom/android/tools/r8/internal/De;->e:I

    .line 34
    invoke-virtual {p0, p1, v1}, Lcom/android/tools/r8/internal/Ie;->a(Ljava/lang/String;Lcom/android/tools/r8/internal/qw0;)V

    return-void
.end method

.method public final b([BII)V
    .locals 2

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/De;->c:[B

    iget v1, p0, Lcom/android/tools/r8/internal/De;->e:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iget p1, p0, Lcom/android/tools/r8/internal/De;->e:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/tools/r8/internal/De;->e:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 13
    new-instance p2, Lcom/android/tools/r8/internal/Fe;

    iget v0, p0, Lcom/android/tools/r8/internal/De;->e:I

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/r8/internal/De;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {v0, v1, p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string v0, "Pos: %d, limit: %d, len: %d"

    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/android/tools/r8/internal/Fe;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    throw p2
.end method

.method public final c(II)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/De;->d(II)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/De;->f(I)V

    return-void
.end method

.method public final c(ILcom/android/tools/r8/internal/kW;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/De;->d(II)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 4
    invoke-virtual {p0, v2, v3}, Lcom/android/tools/r8/internal/De;->d(II)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/De;->g(I)V

    .line 6
    invoke-virtual {p0, v1, p2}, Lcom/android/tools/r8/internal/De;->b(ILcom/android/tools/r8/internal/kW;)V

    const/4 p1, 0x4

    .line 7
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/De;->d(II)V

    return-void
.end method

.method public final c(ILcom/android/tools/r8/internal/m8;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/De;->d(II)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 9
    invoke-virtual {p0, v2, v3}, Lcom/android/tools/r8/internal/De;->d(II)V

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/De;->g(I)V

    .line 11
    invoke-virtual {p0, v1, p2}, Lcom/android/tools/r8/internal/De;->b(ILcom/android/tools/r8/internal/m8;)V

    const/4 p1, 0x4

    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/De;->d(II)V

    return-void
.end method

.method public final c(J)V
    .locals 7

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/De;->c:[B

    iget v1, p0, Lcom/android/tools/r8/internal/De;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/tools/r8/internal/De;->e:I

    long-to-int v3, p1

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x2

    .line 14
    iput v3, p0, Lcom/android/tools/r8/internal/De;->e:I

    const/16 v4, 0x8

    shr-long v5, p1, v4

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    add-int/lit8 v2, v1, 0x3

    .line 15
    iput v2, p0, Lcom/android/tools/r8/internal/De;->e:I

    const/16 v5, 0x10

    shr-long v5, p1, v5

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    add-int/lit8 v3, v1, 0x4

    .line 16
    iput v3, p0, Lcom/android/tools/r8/internal/De;->e:I

    const/16 v5, 0x18

    shr-long v5, p1, v5

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    add-int/lit8 v2, v1, 0x5

    .line 17
    iput v2, p0, Lcom/android/tools/r8/internal/De;->e:I

    const/16 v5, 0x20

    shr-long v5, p1, v5

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    add-int/lit8 v3, v1, 0x6

    .line 18
    iput v3, p0, Lcom/android/tools/r8/internal/De;->e:I

    const/16 v5, 0x28

    shr-long v5, p1, v5

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    add-int/lit8 v2, v1, 0x7

    .line 19
    iput v2, p0, Lcom/android/tools/r8/internal/De;->e:I

    const/16 v5, 0x30

    shr-long v5, p1, v5

    long-to-int v5, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v3

    add-int/2addr v1, v4

    .line 20
    iput v1, p0, Lcom/android/tools/r8/internal/De;->e:I

    const/16 v1, 0x38

    shr-long/2addr p1, v1

    long-to-int p1, p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 21
    new-instance p2, Lcom/android/tools/r8/internal/Fe;

    iget v0, p0, Lcom/android/tools/r8/internal/De;->e:I

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/r8/internal/De;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/android/tools/r8/internal/Fe;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    throw p2
.end method

.method public final d(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    .line 11
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/De;->g(I)V

    return-void
.end method

.method public final d(J)V
    .locals 12

    .line 1
    sget-boolean v0, Lcom/android/tools/r8/internal/Ie;->b:Z

    const/4 v1, 0x7

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x80

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lcom/android/tools/r8/internal/De;->d:I

    iget v6, p0, Lcom/android/tools/r8/internal/De;->e:I

    sub-int/2addr v0, v6

    const/16 v6, 0xa

    if-lt v0, v6, :cond_1

    :goto_0
    and-long v6, p1, v4

    cmp-long v0, v6, v2

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/De;->c:[B

    iget v1, p0, Lcom/android/tools/r8/internal/De;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/tools/r8/internal/De;->e:I

    int-to-long v1, v1

    long-to-int p1, p1

    int-to-byte p1, p1

    .line 4
    sget-object p2, Lcom/android/tools/r8/internal/bw0;->c:Lcom/android/tools/r8/internal/aw0;

    sget-wide v3, Lcom/android/tools/r8/internal/bw0;->f:J

    add-long/2addr v3, v1

    invoke-virtual {p2, v0, v3, v4, p1}, Lcom/android/tools/r8/internal/aw0;->a(Ljava/lang/Object;JB)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/De;->c:[B

    iget v6, p0, Lcom/android/tools/r8/internal/De;->e:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/android/tools/r8/internal/De;->e:I

    int-to-long v6, v6

    long-to-int v8, p1

    and-int/lit8 v8, v8, 0x7f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    .line 6
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

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/De;->c:[B

    iget v1, p0, Lcom/android/tools/r8/internal/De;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/tools/r8/internal/De;->e:I

    long-to-int p1, p1

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void

    :catch_0
    move-exception p1

    goto :goto_2

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/De;->c:[B

    iget v6, p0, Lcom/android/tools/r8/internal/De;->e:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/android/tools/r8/internal/De;->e:I

    long-to-int v7, p1

    and-int/lit8 v7, v7, 0x7f

    or-int/lit16 v7, v7, 0x80

    int-to-byte v7, v7

    aput-byte v7, v0, v6
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-long/2addr p1, v1

    goto :goto_1

    .line 9
    :goto_2
    new-instance p2, Lcom/android/tools/r8/internal/Fe;

    iget v0, p0, Lcom/android/tools/r8/internal/De;->e:I

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/tools/r8/internal/De;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Pos: %d, limit: %d, len: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/android/tools/r8/internal/Fe;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    throw p2
.end method

.method public final e(I)V
    .locals 5

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/De;->c:[B

    iget v1, p0, Lcom/android/tools/r8/internal/De;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/tools/r8/internal/De;->e:I

    and-int/lit16 v3, p1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v3, v1, 0x2

    .line 4
    iput v3, p0, Lcom/android/tools/r8/internal/De;->e:I

    shr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    add-int/lit8 v2, v1, 0x3

    .line 5
    iput v2, p0, Lcom/android/tools/r8/internal/De;->e:I

    shr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v1, v1, 0x4

    .line 6
    iput v1, p0, Lcom/android/tools/r8/internal/De;->e:I

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    aput-byte p1, v0, v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/Fe;

    iget v1, p0, Lcom/android/tools/r8/internal/De;->e:I

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/tools/r8/internal/De;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/internal/Fe;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    throw v0
.end method

.method public final e(II)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/De;->d(II)V

    .line 2
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/De;->g(I)V

    return-void
.end method

.method public final f(I)V
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/De;->g(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/De;->d(J)V

    return-void
.end method

.method public final g(I)V
    .locals 7

    sget-boolean v0, Lcom/android/tools/r8/internal/Ie;->b:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/tools/r8/internal/u2;->a()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/tools/r8/internal/De;->d:I

    iget v1, p0, Lcom/android/tools/r8/internal/De;->e:I

    sub-int/2addr v0, v1

    const/4 v2, 0x5

    if-lt v0, v2, :cond_4

    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/De;->c:[B

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/tools/r8/internal/De;->e:I

    int-to-long v1, v1

    int-to-byte p1, p1

    sget-object v3, Lcom/android/tools/r8/internal/bw0;->c:Lcom/android/tools/r8/internal/aw0;

    sget-wide v4, Lcom/android/tools/r8/internal/bw0;->f:J

    add-long/2addr v4, v1

    invoke-virtual {v3, v0, v4, v5, p1}, Lcom/android/tools/r8/internal/aw0;->a(Ljava/lang/Object;JB)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/De;->c:[B

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/tools/r8/internal/De;->e:I

    int-to-long v1, v1

    or-int/lit16 v3, p1, 0x80

    int-to-byte v3, v3

    sget-object v4, Lcom/android/tools/r8/internal/bw0;->c:Lcom/android/tools/r8/internal/aw0;

    sget-wide v5, Lcom/android/tools/r8/internal/bw0;->f:J

    add-long/2addr v1, v5

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/android/tools/r8/internal/aw0;->a(Ljava/lang/Object;JB)V

    ushr-int/lit8 v0, p1, 0x7

    and-int/lit8 v1, v0, -0x80

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/android/tools/r8/internal/De;->c:[B

    iget v1, p0, Lcom/android/tools/r8/internal/De;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/tools/r8/internal/De;->e:I

    int-to-long v1, v1

    int-to-byte v0, v0

    add-long/2addr v5, v1

    invoke-virtual {v4, p1, v5, v6, v0}, Lcom/android/tools/r8/internal/aw0;->a(Ljava/lang/Object;JB)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/tools/r8/internal/De;->c:[B

    iget v2, p0, Lcom/android/tools/r8/internal/De;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/tools/r8/internal/De;->e:I

    int-to-long v2, v2

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    add-long/2addr v2, v5

    invoke-virtual {v4, v1, v2, v3, v0}, Lcom/android/tools/r8/internal/aw0;->a(Ljava/lang/Object;JB)V

    ushr-int/lit8 v0, p1, 0xe

    and-int/lit8 v1, v0, -0x80

    if-nez v1, :cond_2

    iget-object p1, p0, Lcom/android/tools/r8/internal/De;->c:[B

    iget v1, p0, Lcom/android/tools/r8/internal/De;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/tools/r8/internal/De;->e:I

    int-to-long v1, v1

    int-to-byte v0, v0

    add-long/2addr v5, v1

    invoke-virtual {v4, p1, v5, v6, v0}, Lcom/android/tools/r8/internal/aw0;->a(Ljava/lang/Object;JB)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/De;->c:[B

    iget v2, p0, Lcom/android/tools/r8/internal/De;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/tools/r8/internal/De;->e:I

    int-to-long v2, v2

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    add-long/2addr v2, v5

    invoke-virtual {v4, v1, v2, v3, v0}, Lcom/android/tools/r8/internal/aw0;->a(Ljava/lang/Object;JB)V

    ushr-int/lit8 v0, p1, 0x15

    and-int/lit8 v1, v0, -0x80

    if-nez v1, :cond_3

    iget-object p1, p0, Lcom/android/tools/r8/internal/De;->c:[B

    iget v1, p0, Lcom/android/tools/r8/internal/De;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/tools/r8/internal/De;->e:I

    int-to-long v1, v1

    int-to-byte v0, v0

    add-long/2addr v5, v1

    invoke-virtual {v4, p1, v5, v6, v0}, Lcom/android/tools/r8/internal/aw0;->a(Ljava/lang/Object;JB)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/tools/r8/internal/De;->c:[B

    iget v2, p0, Lcom/android/tools/r8/internal/De;->e:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/tools/r8/internal/De;->e:I

    int-to-long v2, v2

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    add-long/2addr v2, v5

    invoke-virtual {v4, v1, v2, v3, v0}, Lcom/android/tools/r8/internal/aw0;->a(Ljava/lang/Object;JB)V

    ushr-int/lit8 p1, p1, 0x1c

    iget-object v0, p0, Lcom/android/tools/r8/internal/De;->c:[B

    iget v1, p0, Lcom/android/tools/r8/internal/De;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/tools/r8/internal/De;->e:I

    int-to-long v1, v1

    int-to-byte p1, p1

    add-long/2addr v5, v1

    invoke-virtual {v4, v0, v5, v6, p1}, Lcom/android/tools/r8/internal/aw0;->a(Ljava/lang/Object;JB)V

    return-void

    :cond_4
    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_5

    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/De;->c:[B

    iget v1, p0, Lcom/android/tools/r8/internal/De;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/tools/r8/internal/De;->e:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/tools/r8/internal/De;->c:[B

    iget v1, p0, Lcom/android/tools/r8/internal/De;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/tools/r8/internal/De;->e:I

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0

    :goto_1
    new-instance v0, Lcom/android/tools/r8/internal/Fe;

    iget v1, p0, Lcom/android/tools/r8/internal/De;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/tools/r8/internal/De;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Pos: %d, limit: %d, len: %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/internal/Fe;-><init>(Ljava/lang/String;Ljava/lang/IndexOutOfBoundsException;)V

    throw v0
.end method
