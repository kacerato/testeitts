.class public final Lcom/android/tools/r8/internal/Ae;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[B

.field public b:I

.field public c:I

.field public d:I

.field public final e:Ljava/io/InputStream;

.field public f:I

.field public g:I

.field public h:I

.field public i:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/tools/r8/internal/Ae;->h:I

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/tools/r8/internal/Ae;->a:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/Ae;->b:I

    iput v0, p0, Lcom/android/tools/r8/internal/Ae;->d:I

    iput v0, p0, Lcom/android/tools/r8/internal/Ae;->g:I

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ae;->e:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 3

    .line 39
    iget v0, p0, Lcom/android/tools/r8/internal/Ae;->h:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    return v0

    .line 40
    :cond_0
    iget v1, p0, Lcom/android/tools/r8/internal/Ae;->g:I

    iget v2, p0, Lcom/android/tools/r8/internal/Ae;->d:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public final a(Lcom/android/tools/r8/internal/x50;Lcom/android/tools/r8/internal/yv;)Lcom/android/tools/r8/internal/O0;
    .locals 3

    .line 24
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v0

    .line 25
    iget v1, p0, Lcom/android/tools/r8/internal/Ae;->i:I

    const/16 v2, 0x40

    if-ge v1, v2, :cond_1

    .line 26
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Ae;->b(I)I

    move-result v0

    .line 27
    iget v1, p0, Lcom/android/tools/r8/internal/Ae;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/tools/r8/internal/Ae;->i:I

    .line 28
    invoke-interface {p1, p0, p2}, Lcom/android/tools/r8/internal/x50;->a(Lcom/android/tools/r8/internal/Ae;Lcom/android/tools/r8/internal/yv;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/O0;

    .line 29
    iget p2, p0, Lcom/android/tools/r8/internal/Ae;->f:I

    if-nez p2, :cond_0

    .line 30
    iget p2, p0, Lcom/android/tools/r8/internal/Ae;->i:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/android/tools/r8/internal/Ae;->i:I

    .line 31
    iput v0, p0, Lcom/android/tools/r8/internal/Ae;->h:I

    .line 32
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ae;->j()V

    return-object p1

    .line 33
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/LJ;

    const-string p2, "Protocol message end-group tag did not match expected tag."

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/LJ;-><init>(Ljava/lang/String;)V

    .line 34
    throw p1

    .line 35
    :cond_1
    new-instance p1, Lcom/android/tools/r8/internal/LJ;

    const-string p2, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/LJ;-><init>(Ljava/lang/String;)V

    .line 36
    throw p1
.end method

.method public final a(I)V
    .locals 0

    .line 37
    iput p1, p0, Lcom/android/tools/r8/internal/Ae;->h:I

    .line 38
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ae;->j()V

    return-void
.end method

.method public final a(ILcom/android/tools/r8/internal/He;)Z
    .locals 4

    and-int/lit8 v0, p1, 0x7

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    if-eq v0, v1, :cond_7

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ae;->d()I

    move-result v0

    .line 2
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/He;->g(I)V

    .line 3
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/He;->f(I)V

    return v1

    .line 4
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/LJ;

    const-string p2, "Protocol message tag had invalid wire type."

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/LJ;-><init>(Ljava/lang/String;)V

    .line 5
    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 6
    :cond_2
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/He;->g(I)V

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ae;->i()I

    move-result v0

    if-eqz v0, :cond_4

    .line 8
    invoke-virtual {p0, v0, p2}, Lcom/android/tools/r8/internal/Ae;->a(ILcom/android/tools/r8/internal/He;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_4
    ushr-int/2addr p1, v3

    shl-int/2addr p1, v3

    or-int/2addr p1, v2

    .line 9
    iget v0, p0, Lcom/android/tools/r8/internal/Ae;->f:I

    if-ne v0, p1, :cond_5

    .line 10
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/He;->g(I)V

    return v1

    .line 11
    :cond_5
    new-instance p1, Lcom/android/tools/r8/internal/LJ;

    const-string p2, "Protocol message end-group tag did not match expected tag."

    invoke-direct {p1, p2}, Lcom/android/tools/r8/internal/LJ;-><init>(Ljava/lang/String;)V

    .line 12
    throw p1

    .line 13
    :cond_6
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ae;->b()Lcom/android/tools/r8/internal/ET;

    move-result-object v0

    .line 14
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/He;->g(I)V

    .line 15
    iget-object p1, v0, Lcom/android/tools/r8/internal/ET;->d:[B

    array-length p1, p1

    .line 16
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/He;->g(I)V

    .line 17
    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/He;->a(Lcom/android/tools/r8/internal/l8;)V

    return v1

    .line 18
    :cond_7
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ae;->e()J

    move-result-wide v2

    .line 19
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/He;->g(I)V

    .line 20
    invoke-virtual {p2, v2, v3}, Lcom/android/tools/r8/internal/He;->c(J)V

    return v1

    .line 21
    :cond_8
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ae;->g()J

    move-result-wide v2

    .line 22
    invoke-virtual {p2, p1}, Lcom/android/tools/r8/internal/He;->g(I)V

    .line 23
    invoke-virtual {p2, v2, v3}, Lcom/android/tools/r8/internal/He;->d(J)V

    return v1
.end method

.method public final b(I)I
    .locals 2

    if-ltz p1, :cond_1

    .line 10
    iget v0, p0, Lcom/android/tools/r8/internal/Ae;->g:I

    iget v1, p0, Lcom/android/tools/r8/internal/Ae;->d:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    .line 11
    iget p1, p0, Lcom/android/tools/r8/internal/Ae;->h:I

    if-gt v0, p1, :cond_0

    .line 12
    iput v0, p0, Lcom/android/tools/r8/internal/Ae;->h:I

    .line 13
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ae;->j()V

    return p1

    .line 14
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/LJ;

    const-string v0, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/LJ;-><init>(Ljava/lang/String;)V

    .line 15
    throw p1

    .line 16
    :cond_1
    new-instance p1, Lcom/android/tools/r8/internal/LJ;

    const-string v0, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/LJ;-><init>(Ljava/lang/String;)V

    .line 17
    throw p1
.end method

.method public final b()Lcom/android/tools/r8/internal/ET;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v0

    .line 2
    iget v1, p0, Lcom/android/tools/r8/internal/Ae;->b:I

    iget v2, p0, Lcom/android/tools/r8/internal/Ae;->d:I

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    if-lez v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ae;->a:[B

    .line 4
    new-array v3, v0, [B

    const/4 v4, 0x0

    .line 5
    invoke-static {v1, v2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    new-instance v1, Lcom/android/tools/r8/internal/ET;

    invoke-direct {v1, v3}, Lcom/android/tools/r8/internal/ET;-><init>([B)V

    .line 7
    iget v2, p0, Lcom/android/tools/r8/internal/Ae;->d:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/tools/r8/internal/Ae;->d:I

    return-object v1

    :cond_0
    if-nez v0, :cond_1

    .line 8
    sget-object v0, Lcom/android/tools/r8/internal/l8;->b:Lcom/android/tools/r8/internal/ET;

    return-object v0

    .line 9
    :cond_1
    new-instance v1, Lcom/android/tools/r8/internal/ET;

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Ae;->c(I)[B

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/ET;-><init>([B)V

    return-object v1
.end method

.method public final c()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v0

    return v0
.end method

.method public final c(I)[B
    .locals 13

    if-gtz p1, :cond_1

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Lcom/android/tools/r8/internal/XI;->a:[B

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/LJ;

    const-string v0, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/LJ;-><init>(Ljava/lang/String;)V

    .line 4
    throw p1

    .line 5
    :cond_1
    iget v0, p0, Lcom/android/tools/r8/internal/Ae;->g:I

    iget v1, p0, Lcom/android/tools/r8/internal/Ae;->d:I

    add-int v2, v0, v1

    add-int/2addr v2, p1

    iget v3, p0, Lcom/android/tools/r8/internal/Ae;->h:I

    const-string v4, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length."

    if-gt v2, v3, :cond_9

    const/16 v2, 0x1000

    const/4 v3, 0x0

    if-ge p1, v2, :cond_3

    .line 6
    new-array v0, p1, [B

    .line 7
    iget v2, p0, Lcom/android/tools/r8/internal/Ae;->b:I

    sub-int/2addr v2, v1

    .line 8
    iget-object v4, p0, Lcom/android/tools/r8/internal/Ae;->a:[B

    invoke-static {v4, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    iget v1, p0, Lcom/android/tools/r8/internal/Ae;->b:I

    iput v1, p0, Lcom/android/tools/r8/internal/Ae;->d:I

    sub-int/2addr p1, v2

    if-lez p1, :cond_2

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ae;->d(I)V

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ae;->a:[B

    invoke-static {v1, v3, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iput p1, p0, Lcom/android/tools/r8/internal/Ae;->d:I

    return-object v0

    .line 13
    :cond_3
    iget v5, p0, Lcom/android/tools/r8/internal/Ae;->b:I

    add-int/2addr v0, v5

    .line 14
    iput v0, p0, Lcom/android/tools/r8/internal/Ae;->g:I

    .line 15
    iput v3, p0, Lcom/android/tools/r8/internal/Ae;->d:I

    .line 16
    iput v3, p0, Lcom/android/tools/r8/internal/Ae;->b:I

    sub-int/2addr v5, v1

    sub-int v0, p1, v5

    .line 17
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-lez v0, :cond_7

    .line 18
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    new-array v8, v7, [B

    move v9, v3

    :goto_1
    if-ge v9, v7, :cond_6

    .line 19
    iget-object v10, p0, Lcom/android/tools/r8/internal/Ae;->e:Ljava/io/InputStream;

    const/4 v11, -0x1

    if-nez v10, :cond_4

    move v10, v11

    goto :goto_2

    :cond_4
    sub-int v12, v7, v9

    invoke-virtual {v10, v8, v9, v12}, Ljava/io/InputStream;->read([BII)I

    move-result v10

    :goto_2
    if-eq v10, v11, :cond_5

    .line 20
    iget v11, p0, Lcom/android/tools/r8/internal/Ae;->g:I

    add-int/2addr v11, v10

    iput v11, p0, Lcom/android/tools/r8/internal/Ae;->g:I

    add-int/2addr v9, v10

    goto :goto_1

    .line 21
    :cond_5
    new-instance p1, Lcom/android/tools/r8/internal/LJ;

    invoke-direct {p1, v4}, Lcom/android/tools/r8/internal/LJ;-><init>(Ljava/lang/String;)V

    .line 22
    throw p1

    :cond_6
    sub-int/2addr v0, v7

    .line 23
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 24
    :cond_7
    new-array p1, p1, [B

    .line 25
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ae;->a:[B

    invoke-static {v0, v1, p1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v3

    :goto_3
    if-ge v1, v0, :cond_8

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, [B

    .line 27
    array-length v4, v2

    invoke-static {v2, v3, p1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 28
    array-length v2, v2

    add-int/2addr v5, v2

    goto :goto_3

    :cond_8
    return-object p1

    :cond_9
    sub-int/2addr v3, v0

    sub-int/2addr v3, v1

    .line 29
    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/Ae;->e(I)V

    .line 30
    new-instance p1, Lcom/android/tools/r8/internal/LJ;

    invoke-direct {p1, v4}, Lcom/android/tools/r8/internal/LJ;-><init>(Ljava/lang/String;)V

    .line 31
    throw p1
.end method

.method public final d()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/tools/r8/internal/Ae;->d:I

    .line 2
    iget v1, p0, Lcom/android/tools/r8/internal/Ae;->b:I

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    .line 3
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/Ae;->d(I)V

    .line 4
    iget v0, p0, Lcom/android/tools/r8/internal/Ae;->d:I

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ae;->a:[B

    add-int/lit8 v2, v0, 0x4

    .line 6
    iput v2, p0, Lcom/android/tools/r8/internal/Ae;->d:I

    .line 7
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0
.end method

.method public final d(I)V
    .locals 1

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ae;->f(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 9
    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/LJ;

    const-string v0, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/LJ;-><init>(Ljava/lang/String;)V

    .line 10
    throw p1
.end method

.method public final e()J
    .locals 9

    .line 1
    iget v0, p0, Lcom/android/tools/r8/internal/Ae;->d:I

    .line 2
    iget v1, p0, Lcom/android/tools/r8/internal/Ae;->b:I

    sub-int/2addr v1, v0

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 3
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/Ae;->d(I)V

    .line 4
    iget v0, p0, Lcom/android/tools/r8/internal/Ae;->d:I

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ae;->a:[B

    add-int/lit8 v3, v0, 0x8

    .line 6
    iput v3, p0, Lcom/android/tools/r8/internal/Ae;->d:I

    .line 7
    aget-byte v3, v1, v0

    int-to-long v3, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, v1, v7

    int-to-long v7, v7

    and-long/2addr v7, v5

    shl-long/2addr v7, v2

    or-long v2, v3, v7

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x10

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x18

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x4

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x20

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x28

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v1, v4

    int-to-long v7, v4

    and-long/2addr v7, v5

    const/16 v4, 0x30

    shl-long/2addr v7, v4

    or-long/2addr v2, v7

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final e(I)V
    .locals 6

    .line 8
    iget v0, p0, Lcom/android/tools/r8/internal/Ae;->b:I

    iget v1, p0, Lcom/android/tools/r8/internal/Ae;->d:I

    sub-int v2, v0, v1

    if-gt p1, v2, :cond_0

    if-ltz p1, :cond_0

    add-int/2addr v1, p1

    .line 9
    iput v1, p0, Lcom/android/tools/r8/internal/Ae;->d:I

    return-void

    :cond_0
    if-ltz p1, :cond_3

    .line 10
    iget v3, p0, Lcom/android/tools/r8/internal/Ae;->g:I

    add-int v4, v3, v1

    add-int/2addr v4, p1

    iget v5, p0, Lcom/android/tools/r8/internal/Ae;->h:I

    if-gt v4, v5, :cond_2

    .line 11
    iput v0, p0, Lcom/android/tools/r8/internal/Ae;->d:I

    const/4 v0, 0x1

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Ae;->d(I)V

    :goto_0
    sub-int v1, p1, v2

    .line 13
    iget v3, p0, Lcom/android/tools/r8/internal/Ae;->b:I

    if-le v1, v3, :cond_1

    add-int/2addr v2, v3

    .line 14
    iput v3, p0, Lcom/android/tools/r8/internal/Ae;->d:I

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Ae;->d(I)V

    goto :goto_0

    .line 16
    :cond_1
    iput v1, p0, Lcom/android/tools/r8/internal/Ae;->d:I

    return-void

    :cond_2
    sub-int/2addr v5, v3

    sub-int/2addr v5, v1

    .line 17
    invoke-virtual {p0, v5}, Lcom/android/tools/r8/internal/Ae;->e(I)V

    .line 18
    new-instance p1, Lcom/android/tools/r8/internal/LJ;

    const-string v0, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/LJ;-><init>(Ljava/lang/String;)V

    .line 19
    throw p1

    .line 20
    :cond_3
    new-instance p1, Lcom/android/tools/r8/internal/LJ;

    const-string v0, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/LJ;-><init>(Ljava/lang/String;)V

    .line 21
    throw p1
.end method

.method public final f()I
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/tools/r8/internal/Ae;->d:I

    .line 2
    iget v1, p0, Lcom/android/tools/r8/internal/Ae;->b:I

    if-ne v1, v0, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/Ae;->a:[B

    add-int/lit8 v3, v0, 0x1

    .line 4
    aget-byte v4, v2, v0

    if-ltz v4, :cond_1

    .line 5
    iput v3, p0, Lcom/android/tools/r8/internal/Ae;->d:I

    return v4

    :cond_1
    sub-int/2addr v1, v3

    const/16 v5, 0x9

    if-ge v1, v5, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v0, 0x2

    .line 6
    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v3, v4

    int-to-long v4, v3

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-gez v8, :cond_3

    const-wide/16 v2, -0x80

    xor-long/2addr v2, v4

    long-to-int v0, v2

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v0, 0x3

    .line 7
    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v1, v3

    int-to-long v8, v1

    cmp-long v3, v8, v6

    if-ltz v3, :cond_4

    const-wide/16 v0, 0x3f80

    xor-long/2addr v0, v8

    long-to-int v0, v0

    :goto_0
    move v1, v4

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v0, 0x4

    .line 8
    aget-byte v4, v2, v4

    shl-int/lit8 v4, v4, 0x15

    xor-int/2addr v1, v4

    int-to-long v4, v1

    cmp-long v6, v4, v6

    if-gez v6, :cond_5

    const-wide/32 v0, -0x1fc080

    xor-long/2addr v0, v4

    long-to-int v0, v0

    move v1, v3

    goto :goto_3

    :cond_5
    add-int/lit8 v4, v0, 0x5

    .line 9
    aget-byte v3, v2, v3

    shl-int/lit8 v5, v3, 0x1c

    xor-int/2addr v1, v5

    int-to-long v5, v1

    const-wide/32 v7, 0xfe03f80

    xor-long/2addr v5, v7

    long-to-int v1, v5

    if-gez v3, :cond_8

    add-int/lit8 v3, v0, 0x6

    .line 10
    aget-byte v4, v2, v4

    if-gez v4, :cond_7

    add-int/lit8 v4, v0, 0x7

    aget-byte v3, v2, v3

    if-gez v3, :cond_8

    add-int/lit8 v3, v0, 0x8

    aget-byte v4, v2, v4

    if-gez v4, :cond_7

    add-int/lit8 v4, v0, 0x9

    aget-byte v3, v2, v3

    if-gez v3, :cond_8

    add-int/lit8 v0, v0, 0xa

    aget-byte v2, v2, v4

    if-gez v2, :cond_6

    .line 11
    :goto_1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ae;->h()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    :cond_6
    move v4, v0

    goto :goto_2

    :cond_7
    move v4, v3

    :cond_8
    :goto_2
    move v0, v1

    goto :goto_0

    .line 12
    :goto_3
    iput v1, p0, Lcom/android/tools/r8/internal/Ae;->d:I

    return v0
.end method

.method public final f(I)Z
    .locals 5

    .line 13
    iget v0, p0, Lcom/android/tools/r8/internal/Ae;->d:I

    add-int v1, v0, p1

    iget v2, p0, Lcom/android/tools/r8/internal/Ae;->b:I

    if-le v1, v2, :cond_7

    .line 14
    iget v1, p0, Lcom/android/tools/r8/internal/Ae;->g:I

    add-int/2addr v1, v0

    add-int/2addr v1, p1

    iget v3, p0, Lcom/android/tools/r8/internal/Ae;->h:I

    const/4 v4, 0x0

    if-le v1, v3, :cond_0

    return v4

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ae;->e:Ljava/io/InputStream;

    if-eqz v1, :cond_6

    if-lez v0, :cond_2

    if-le v2, v0, :cond_1

    .line 16
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ae;->a:[B

    sub-int/2addr v2, v0

    invoke-static {v1, v0, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 17
    :cond_1
    iget v1, p0, Lcom/android/tools/r8/internal/Ae;->g:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/tools/r8/internal/Ae;->g:I

    .line 18
    iget v1, p0, Lcom/android/tools/r8/internal/Ae;->b:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/android/tools/r8/internal/Ae;->b:I

    .line 19
    iput v4, p0, Lcom/android/tools/r8/internal/Ae;->d:I

    .line 20
    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ae;->e:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ae;->a:[B

    iget v2, p0, Lcom/android/tools/r8/internal/Ae;->b:I

    array-length v3, v1

    sub-int/2addr v3, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, -0x1

    if-lt v0, v1, :cond_5

    .line 21
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ae;->a:[B

    array-length v1, v1

    if-gt v0, v1, :cond_5

    if-lez v0, :cond_6

    .line 22
    iget v1, p0, Lcom/android/tools/r8/internal/Ae;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/tools/r8/internal/Ae;->b:I

    .line 23
    iget v0, p0, Lcom/android/tools/r8/internal/Ae;->g:I

    add-int/2addr v0, p1

    const/high16 v1, 0x4000000

    sub-int/2addr v0, v1

    if-gtz v0, :cond_4

    .line 24
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ae;->j()V

    .line 25
    iget v0, p0, Lcom/android/tools/r8/internal/Ae;->b:I

    if-lt v0, p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ae;->f(I)Z

    move-result p1

    return p1

    .line 26
    :cond_4
    new-instance p1, Lcom/android/tools/r8/internal/LJ;

    const-string v0, "Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit."

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/LJ;-><init>(Ljava/lang/String;)V

    .line 27
    throw p1

    .line 28
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x66

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "InputStream#read(byte[]) returned invalid result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\nThe InputStream implementation is buggy."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    return v4

    .line 29
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x4d

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "refillBuffer() called when "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes were already available in buffer"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g()J
    .locals 10

    iget v0, p0, Lcom/android/tools/r8/internal/Ae;->d:I

    iget v1, p0, Lcom/android/tools/r8/internal/Ae;->b:I

    if-ne v1, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v2, p0, Lcom/android/tools/r8/internal/Ae;->a:[B

    add-int/lit8 v3, v0, 0x1

    aget-byte v4, v2, v0

    if-ltz v4, :cond_1

    iput v3, p0, Lcom/android/tools/r8/internal/Ae;->d:I

    int-to-long v0, v4

    return-wide v0

    :cond_1
    sub-int/2addr v1, v3

    const/16 v5, 0x9

    if-ge v1, v5, :cond_2

    goto/16 :goto_2

    :cond_2
    add-int/lit8 v1, v0, 0x2

    aget-byte v3, v2, v3

    shl-int/lit8 v3, v3, 0x7

    xor-int/2addr v3, v4

    int-to-long v3, v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gez v7, :cond_3

    const-wide/16 v5, -0x80

    :goto_0
    xor-long v2, v3, v5

    goto/16 :goto_4

    :cond_3
    add-int/lit8 v7, v0, 0x3

    aget-byte v1, v2, v1

    shl-int/lit8 v1, v1, 0xe

    int-to-long v8, v1

    xor-long/2addr v3, v8

    cmp-long v1, v3, v5

    if-ltz v1, :cond_4

    const-wide/16 v0, 0x3f80

    :goto_1
    xor-long v2, v3, v0

    move v1, v7

    goto/16 :goto_4

    :cond_4
    add-int/lit8 v1, v0, 0x4

    aget-byte v7, v2, v7

    shl-int/lit8 v7, v7, 0x15

    int-to-long v7, v7

    xor-long/2addr v3, v7

    cmp-long v7, v3, v5

    if-gez v7, :cond_5

    const-wide/32 v5, -0x1fc080

    goto :goto_0

    :cond_5
    add-int/lit8 v7, v0, 0x5

    aget-byte v1, v2, v1

    int-to-long v8, v1

    const/16 v1, 0x1c

    shl-long/2addr v8, v1

    xor-long/2addr v3, v8

    cmp-long v1, v3, v5

    if-ltz v1, :cond_6

    const-wide/32 v0, 0xfe03f80

    goto :goto_1

    :cond_6
    add-int/lit8 v1, v0, 0x6

    aget-byte v7, v2, v7

    int-to-long v7, v7

    const/16 v9, 0x23

    shl-long/2addr v7, v9

    xor-long/2addr v3, v7

    cmp-long v7, v3, v5

    if-gez v7, :cond_7

    const-wide v5, -0x7f01fc080L

    goto :goto_0

    :cond_7
    add-int/lit8 v7, v0, 0x7

    aget-byte v1, v2, v1

    int-to-long v8, v1

    const/16 v1, 0x2a

    shl-long/2addr v8, v1

    xor-long/2addr v3, v8

    cmp-long v1, v3, v5

    if-ltz v1, :cond_8

    const-wide v0, 0x3f80fe03f80L

    goto :goto_1

    :cond_8
    add-int/lit8 v1, v0, 0x8

    aget-byte v7, v2, v7

    int-to-long v7, v7

    const/16 v9, 0x31

    shl-long/2addr v7, v9

    xor-long/2addr v3, v7

    cmp-long v7, v3, v5

    if-gez v7, :cond_9

    const-wide v5, -0x1fc07f01fc080L

    goto :goto_0

    :cond_9
    add-int/lit8 v7, v0, 0x9

    aget-byte v1, v2, v1

    int-to-long v8, v1

    const/16 v1, 0x38

    shl-long/2addr v8, v1

    xor-long/2addr v3, v8

    const-wide v8, 0xfe03f80fe03f80L

    xor-long/2addr v3, v8

    cmp-long v1, v3, v5

    if-gez v1, :cond_b

    add-int/lit8 v0, v0, 0xa

    aget-byte v1, v2, v7

    int-to-long v1, v1

    cmp-long v1, v1, v5

    if-gez v1, :cond_a

    :goto_2
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ae;->h()J

    move-result-wide v0

    return-wide v0

    :cond_a
    move v1, v0

    goto :goto_3

    :cond_b
    move v1, v7

    :goto_3
    move-wide v2, v3

    :goto_4
    iput v1, p0, Lcom/android/tools/r8/internal/Ae;->d:I

    return-wide v2
.end method

.method public final h()J
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_2

    iget v3, p0, Lcom/android/tools/r8/internal/Ae;->d:I

    iget v4, p0, Lcom/android/tools/r8/internal/Ae;->b:I

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/tools/r8/internal/Ae;->d(I)V

    :cond_0
    iget-object v3, p0, Lcom/android/tools/r8/internal/Ae;->a:[B

    iget v4, p0, Lcom/android/tools/r8/internal/Ae;->d:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/tools/r8/internal/Ae;->d:I

    aget-byte v3, v3, v4

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_1

    return-wide v0

    :cond_1
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/android/tools/r8/internal/LJ;

    const-string v1, "CodedInputStream encountered a malformed varint."

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/LJ;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final i()I
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/Ae;->d:I

    iget v1, p0, Lcom/android/tools/r8/internal/Ae;->b:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Ae;->f(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/Ae;->f:I

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Ae;->f()I

    move-result v0

    iput v0, p0, Lcom/android/tools/r8/internal/Ae;->f:I

    ushr-int/lit8 v1, v0, 0x3

    if-eqz v1, :cond_1

    return v0

    :cond_1
    new-instance v0, Lcom/android/tools/r8/internal/LJ;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/LJ;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j()V
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/internal/Ae;->b:I

    iget v1, p0, Lcom/android/tools/r8/internal/Ae;->c:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/Ae;->b:I

    iget v1, p0, Lcom/android/tools/r8/internal/Ae;->g:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/android/tools/r8/internal/Ae;->h:I

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/tools/r8/internal/Ae;->c:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/tools/r8/internal/Ae;->b:I

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/Ae;->c:I

    return-void
.end method
