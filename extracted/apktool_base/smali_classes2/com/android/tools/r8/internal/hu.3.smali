.class public Lcom/android/tools/r8/internal/hu;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/android/tools/r8/dex/D;I)D
    .locals 2

    .line 13
    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/hu;->d(Lcom/android/tools/r8/dex/D;I)J

    move-result-wide v0

    rsub-int/lit8 p0, p1, 0x8

    mul-int/lit8 p0, p0, 0x8

    shl-long p0, v0, p0

    .line 14
    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static a(Lcom/android/tools/r8/dex/y;D)I
    .locals 1

    .line 15
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    const/16 v0, 0x8

    .line 16
    invoke-static {p0, p1, p2, v0}, Lcom/android/tools/r8/internal/hu;->a(Lcom/android/tools/r8/dex/y;JI)I

    move-result p0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/dex/y;F)I
    .locals 2

    .line 5
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    int-to-long v0, p1

    const/16 p1, 0x20

    shl-long/2addr v0, p1

    const/4 p1, 0x4

    .line 6
    invoke-static {p0, v0, v1, p1}, Lcom/android/tools/r8/internal/hu;->a(Lcom/android/tools/r8/dex/y;JI)I

    move-result p0

    return p0
.end method

.method public static a(Lcom/android/tools/r8/dex/y;JI)I
    .locals 3

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x3f

    const/16 v1, 0x8

    .line 2
    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 3
    sget-boolean v2, Lcom/android/tools/r8/internal/hu;->a:Z

    if-nez v2, :cond_1

    if-lez v0, :cond_0

    if-gt v0, p3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    mul-int/lit8 p3, v0, 0x8

    rsub-int/lit8 p3, p3, 0x40

    shr-long/2addr p1, p3

    const/4 p3, 0x0

    :goto_1
    if-ge p3, v0, :cond_2

    long-to-int v2, p1

    int-to-byte v2, v2

    .line 4
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/dex/y;->a(B)V

    shr-long/2addr p1, v1

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_2
    return v0
.end method

.method public static a(D)[B
    .locals 5

    .line 17
    invoke-static {p0, p1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p0

    .line 18
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x3f

    const/16 v1, 0x8

    .line 19
    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v2, v0, 0x8

    rsub-int/lit8 v2, v2, 0x40

    shr-long/2addr p0, v2

    .line 20
    new-array v2, v0, [B

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    long-to-int v4, p0

    int-to-byte v4, v4

    .line 21
    aput-byte v4, v2, v3

    shr-long/2addr p0, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 22
    :cond_0
    sget-boolean p0, Lcom/android/tools/r8/internal/hu;->a:Z

    if-nez p0, :cond_2

    if-gt v0, v1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_2
    :goto_1
    return-object v2
.end method

.method public static a(F)[B
    .locals 6

    .line 7
    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    int-to-long v0, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    .line 8
    invoke-static {v0, v1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x3f

    const/16 v2, 0x8

    .line 9
    div-int/2addr p0, v2

    add-int/lit8 p0, p0, 0x1

    mul-int/lit8 v3, p0, 0x8

    rsub-int/lit8 v3, v3, 0x40

    shr-long/2addr v0, v3

    .line 10
    new-array v3, p0, [B

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p0, :cond_0

    long-to-int v5, v0

    int-to-byte v5, v5

    .line 11
    aput-byte v5, v3, v4

    shr-long/2addr v0, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 12
    :cond_0
    sget-boolean v0, Lcom/android/tools/r8/internal/hu;->a:Z

    if-nez v0, :cond_2

    const/4 v0, 0x4

    if-gt p0, v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_2
    :goto_1
    return-object v3
.end method

.method public static b(Lcom/android/tools/r8/dex/D;I)F
    .locals 2

    invoke-static {p0, p1}, Lcom/android/tools/r8/internal/hu;->d(Lcom/android/tools/r8/dex/D;I)J

    move-result-wide v0

    rsub-int/lit8 p0, p1, 0x4

    mul-int/lit8 p0, p0, 0x8

    shl-long p0, v0, p0

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    return p0
.end method

.method public static c(Lcom/android/tools/r8/dex/D;I)J
    .locals 6

    sget-boolean v0, Lcom/android/tools/r8/internal/hu;->a:Z

    if-nez v0, :cond_1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v0, p1, :cond_2

    iget-object v4, p0, Lcom/android/tools/r8/dex/m;->b:Lcom/android/tools/r8/dex/s;

    invoke-virtual {v4}, Lcom/android/tools/r8/dex/s;->a()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    shl-long/2addr v4, v3

    or-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/tools/r8/dex/m;->b:Lcom/android/tools/r8/dex/s;

    invoke-virtual {p0}, Lcom/android/tools/r8/dex/s;->a()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    int-to-long p0, p0

    shl-long/2addr p0, v3

    or-long/2addr p0, v1

    return-wide p0
.end method

.method public static d(Lcom/android/tools/r8/dex/D;I)J
    .locals 6

    sget-boolean v0, Lcom/android/tools/r8/internal/hu;->a:Z

    if-nez v0, :cond_1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    move-wide v2, v1

    move v1, v0

    :goto_1
    if-ge v0, p1, :cond_2

    iget-object v4, p0, Lcom/android/tools/r8/dex/m;->b:Lcom/android/tools/r8/dex/s;

    invoke-virtual {v4}, Lcom/android/tools/r8/dex/s;->a()Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-long v4, v4

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-wide v2
.end method
