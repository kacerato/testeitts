.class public final Lcom/android/tools/r8/internal/He;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[B

.field public final b:I

.field public c:I

.field public final d:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(I[B)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    .line 3
    iput-object p2, p0, Lcom/android/tools/r8/internal/He;->a:[B

    const/4 p2, 0x0

    .line 4
    iput p2, p0, Lcom/android/tools/r8/internal/He;->c:I

    .line 5
    iput p1, p0, Lcom/android/tools/r8/internal/He;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;[B)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    .line 8
    iput-object p2, p0, Lcom/android/tools/r8/internal/He;->a:[B

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/android/tools/r8/internal/He;->c:I

    .line 10
    array-length p1, p2

    iput p1, p0, Lcom/android/tools/r8/internal/He;->b:I

    return-void
.end method

.method public static a(I)I
    .locals 0

    if-ltz p0, :cond_0

    .line 11
    invoke-static {p0}, Lcom/android/tools/r8/internal/He;->b(I)I

    move-result p0

    return p0

    :cond_0
    const/16 p0, 0xa

    return p0
.end method

.method public static a(II)I
    .locals 0

    .line 6
    invoke-static {p0}, Lcom/android/tools/r8/internal/He;->c(I)I

    move-result p0

    if-ltz p1, :cond_0

    .line 7
    invoke-static {p1}, Lcom/android/tools/r8/internal/He;->b(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0xa

    :goto_0
    add-int/2addr p0, p1

    return p0
.end method

.method public static a(ILcom/android/tools/r8/internal/O0;)I
    .locals 1

    .line 8
    invoke-static {p0}, Lcom/android/tools/r8/internal/He;->c(I)I

    move-result p0

    .line 9
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/O0;->a()I

    move-result p1

    .line 10
    invoke-static {p1}, Lcom/android/tools/r8/internal/He;->b(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/2addr v0, p0

    return v0
.end method

.method public static a(J)I
    .locals 4

    .line 1
    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const/4 p0, 0x5

    return p0

    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    const/4 p0, 0x6

    return p0

    :cond_5
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    const/4 p0, 0x7

    return p0

    :cond_6
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    const/16 p0, 0x8

    return p0

    :cond_7
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr p0, v0

    cmp-long p0, p0, v2

    if-nez p0, :cond_8

    const/16 p0, 0x9

    return p0

    :cond_8
    const/16 p0, 0xa

    return p0
.end method

.method public static a(Lcom/android/tools/r8/internal/j8;)Lcom/android/tools/r8/internal/He;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/He;

    const/4 v1, 0x1

    new-array v1, v1, [B

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/internal/He;-><init>(Ljava/io/OutputStream;[B)V

    return-object v0
.end method

.method public static b(I)I
    .locals 1

    .line 1
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static b(J)J
    .locals 3

    .line 2
    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method public static c(I)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    .line 1
    invoke-static {p0}, Lcom/android/tools/r8/internal/He;->b(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 13
    iget-object v1, p0, Lcom/android/tools/r8/internal/He;->a:[B

    iget v2, p0, Lcom/android/tools/r8/internal/He;->c:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 14
    iput v3, p0, Lcom/android/tools/r8/internal/He;->c:I

    return-void

    .line 15
    :cond_0
    new-instance v0, Lcom/android/tools/r8/internal/Ee;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Ee;-><init>()V

    throw v0
.end method

.method public final a(ILcom/android/tools/r8/internal/l8;)V
    .locals 1

    const/4 v0, 0x2

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 4
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/He;->g(I)V

    .line 5
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/He;->a(Lcom/android/tools/r8/internal/l8;)V

    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/l8;)V
    .locals 5

    .line 16
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v0

    .line 17
    iget v1, p0, Lcom/android/tools/r8/internal/He;->b:I

    iget v2, p0, Lcom/android/tools/r8/internal/He;->c:I

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    if-lt v1, v0, :cond_0

    .line 18
    iget-object v1, p0, Lcom/android/tools/r8/internal/He;->a:[B

    invoke-virtual {p1, v1, v3, v2, v0}, Lcom/android/tools/r8/internal/l8;->a([BIII)V

    .line 19
    iget p1, p0, Lcom/android/tools/r8/internal/He;->c:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/tools/r8/internal/He;->c:I

    return-void

    .line 20
    :cond_0
    iget-object v4, p0, Lcom/android/tools/r8/internal/He;->a:[B

    invoke-virtual {p1, v4, v3, v2, v1}, Lcom/android/tools/r8/internal/l8;->a([BIII)V

    sub-int/2addr v0, v1

    .line 21
    iget v2, p0, Lcom/android/tools/r8/internal/He;->b:I

    iput v2, p0, Lcom/android/tools/r8/internal/He;->c:I

    .line 22
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/He;->a()V

    .line 23
    iget v2, p0, Lcom/android/tools/r8/internal/He;->b:I

    if-gt v0, v2, :cond_1

    .line 24
    iget-object v2, p0, Lcom/android/tools/r8/internal/He;->a:[B

    invoke-virtual {p1, v2, v1, v3, v0}, Lcom/android/tools/r8/internal/l8;->a([BIII)V

    .line 25
    iput v0, p0, Lcom/android/tools/r8/internal/He;->c:I

    goto :goto_0

    .line 26
    :cond_1
    iget-object v2, p0, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    if-ltz v1, :cond_5

    if-ltz v0, :cond_4

    add-int v3, v1, v0

    .line 27
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/l8;->size()I

    move-result v4

    if-gt v3, v4, :cond_3

    if-lez v0, :cond_2

    .line 28
    invoke-virtual {p1, v2, v1, v0}, Lcom/android/tools/r8/internal/l8;->a(Ljava/io/OutputStream;II)V

    :cond_2
    :goto_0
    return-void

    .line 29
    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Source end offset exceeded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_4
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x17

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Length < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_5
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x1e

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Source offset < 0: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a([B)V
    .locals 5

    .line 32
    array-length v0, p1

    .line 33
    iget v1, p0, Lcom/android/tools/r8/internal/He;->b:I

    iget v2, p0, Lcom/android/tools/r8/internal/He;->c:I

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    if-lt v1, v0, :cond_0

    .line 34
    iget-object v1, p0, Lcom/android/tools/r8/internal/He;->a:[B

    invoke-static {p1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    iget p1, p0, Lcom/android/tools/r8/internal/He;->c:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/tools/r8/internal/He;->c:I

    return-void

    .line 36
    :cond_0
    iget-object v4, p0, Lcom/android/tools/r8/internal/He;->a:[B

    invoke-static {p1, v3, v4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v0, v1

    .line 37
    iget v2, p0, Lcom/android/tools/r8/internal/He;->b:I

    iput v2, p0, Lcom/android/tools/r8/internal/He;->c:I

    .line 38
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/He;->a()V

    .line 39
    iget v2, p0, Lcom/android/tools/r8/internal/He;->b:I

    if-gt v0, v2, :cond_1

    .line 40
    iget-object v2, p0, Lcom/android/tools/r8/internal/He;->a:[B

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 41
    iput v0, p0, Lcom/android/tools/r8/internal/He;->c:I

    goto :goto_0

    .line 42
    :cond_1
    iget-object v2, p0, Lcom/android/tools/r8/internal/He;->d:Ljava/io/OutputStream;

    invoke-virtual {v2, p1, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    :goto_0
    return-void
.end method

.method public final b(II)V
    .locals 0

    shl-int/lit8 p1, p1, 0x3

    or-int/2addr p1, p2

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/He;->g(I)V

    return-void
.end method

.method public final b(ILcom/android/tools/r8/internal/O0;)V
    .locals 1

    const/4 v0, 0x2

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/internal/He;->b(II)V

    .line 4
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/O0;->a()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/He;->g(I)V

    .line 5
    invoke-virtual {p2, p0}, Lcom/android/tools/r8/internal/O0;->a(Lcom/android/tools/r8/internal/He;)V

    return-void
.end method

.method public final c(J)V
    .locals 2

    long-to-int v0, p1

    and-int/lit16 v0, v0, 0xff

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/He;->e(I)V

    const/16 v0, 0x8

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/He;->e(I)V

    const/16 v0, 0x10

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/He;->e(I)V

    const/16 v0, 0x18

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/He;->e(I)V

    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/He;->e(I)V

    const/16 v0, 0x28

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/He;->e(I)V

    const/16 v0, 0x30

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/He;->e(I)V

    const/16 v0, 0x38

    shr-long/2addr p1, v0

    long-to-int p1, p1

    and-int/lit16 p1, p1, 0xff

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/He;->e(I)V

    return-void
.end method

.method public final d(I)V
    .locals 2

    if-ltz p1, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/He;->g(I)V

    return-void

    :cond_0
    int-to-long v0, p1

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/He;->d(J)V

    return-void
.end method

.method public final d(J)V
    .locals 4

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    long-to-int p1, p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/He;->e(I)V

    return-void

    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/He;->e(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public final e(I)V
    .locals 3

    int-to-byte p1, p1

    iget v0, p0, Lcom/android/tools/r8/internal/He;->c:I

    iget v1, p0, Lcom/android/tools/r8/internal/He;->b:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/He;->a()V

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/He;->a:[B

    iget v1, p0, Lcom/android/tools/r8/internal/He;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/tools/r8/internal/He;->c:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public final f(I)V
    .locals 1

    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/He;->e(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/He;->e(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/He;->e(I)V

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/He;->e(I)V

    return-void
.end method

.method public final g(I)V
    .locals 1

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/He;->e(I)V

    return-void

    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/He;->e(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method
