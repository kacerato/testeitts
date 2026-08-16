.class public Lcom/android/tools/r8/internal/BR;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lcom/android/tools/r8/dex/m;)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 4
    :goto_0
    iget-object v2, p0, Lcom/android/tools/r8/dex/m;->b:Lcom/android/tools/r8/dex/s;

    .line 5
    invoke-virtual {v2}, Lcom/android/tools/r8/dex/s;->a()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 6
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit8 v3, v2, 0x7f

    shl-int/2addr v3, v1

    or-int/2addr v0, v3

    add-int/lit8 v3, v1, 0x7

    const/16 v4, -0x80

    and-int/2addr v2, v4

    if-eq v2, v4, :cond_2

    add-int/lit8 v1, v1, 0x6

    const/4 p0, 0x1

    shl-int/2addr p0, v1

    .line 7
    sget-boolean v1, Lcom/android/tools/r8/internal/BR;->a:Z

    if-nez v1, :cond_1

    const/16 v1, 0x23

    if-gt v3, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1
    :goto_1
    xor-int/2addr v0, p0

    sub-int/2addr v0, p0

    return v0

    :cond_2
    move v1, v3

    goto :goto_0
.end method

.method public static a(Lcom/android/tools/r8/dex/y;I)V
    .locals 7

    shr-int/lit8 v0, p1, 0x7

    const/high16 v1, -0x80000000

    and-int/2addr v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    const/4 v3, 0x1

    move v4, v3

    :goto_1
    move v6, v0

    move v0, p1

    move p1, v6

    if-eqz v4, :cond_4

    if-ne p1, v1, :cond_2

    and-int/lit8 v4, p1, 0x1

    shr-int/lit8 v5, v0, 0x6

    and-int/2addr v5, v3

    if-eq v4, v5, :cond_1

    goto :goto_2

    :cond_1
    move v4, v2

    goto :goto_3

    :cond_2
    :goto_2
    move v4, v3

    :goto_3
    and-int/lit8 v0, v0, 0x7f

    if-eqz v4, :cond_3

    const/16 v5, 0x80

    goto :goto_4

    :cond_3
    move v5, v2

    :goto_4
    or-int/2addr v0, v5

    int-to-byte v0, v0

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/dex/y;->a(B)V

    shr-int/lit8 v0, p1, 0x7

    goto :goto_1

    :cond_4
    return-void
.end method

.method public static a(I)[B
    .locals 10

    const/4 v0, 0x5

    .line 1
    new-array v0, v0, [B

    shr-int/lit8 v1, p0, 0x7

    const/4 v2, 0x0

    if-ltz p0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    :goto_0
    const/4 v4, 0x1

    move v6, v2

    move v5, v4

    :goto_1
    move v9, v1

    move v1, p0

    move p0, v9

    if-eqz v5, :cond_4

    if-ne p0, v3, :cond_2

    and-int/lit8 v5, p0, 0x1

    shr-int/lit8 v7, v1, 0x6

    and-int/2addr v7, v4

    if-eq v5, v7, :cond_1

    goto :goto_2

    :cond_1
    move v5, v2

    goto :goto_3

    :cond_2
    :goto_2
    move v5, v4

    :goto_3
    add-int/lit8 v7, v6, 0x1

    and-int/lit8 v1, v1, 0x7f

    if-eqz v5, :cond_3

    const/16 v8, 0x80

    goto :goto_4

    :cond_3
    move v8, v2

    :goto_4
    or-int/2addr v1, v8

    int-to-byte v1, v1

    .line 2
    aput-byte v1, v0, v6

    shr-int/lit8 v1, p0, 0x7

    move v6, v7

    goto :goto_1

    .line 3
    :cond_4
    invoke-static {v0, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static b(Lcom/android/tools/r8/dex/m;)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/android/tools/r8/dex/m;->b:Lcom/android/tools/r8/dex/s;

    .line 8
    invoke-virtual {v2}, Lcom/android/tools/r8/dex/s;->a()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 9
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit8 v3, v2, 0x7f

    shl-int/2addr v3, v1

    or-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x7

    const/16 v3, -0x80

    and-int/2addr v2, v3

    if-eq v2, v3, :cond_0

    .line 10
    sget-boolean p0, Lcom/android/tools/r8/internal/BR;->a:Z

    if-nez p0, :cond_2

    const/16 v2, 0x23

    if-gt v1, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_2
    :goto_0
    if-nez p0, :cond_4

    if-ltz v0, :cond_3

    goto :goto_1

    .line 11
    :cond_3
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_4
    :goto_1
    return v0
.end method

.method public static b(Lcom/android/tools/r8/dex/y;I)V
    .locals 2

    :goto_0
    ushr-int/lit8 v0, p1, 0x7

    move v1, v0

    move v0, p1

    move p1, v1

    if-eqz p1, :cond_0

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/dex/y;->a(B)V

    goto :goto_0

    :cond_0
    and-int/lit8 p1, v0, 0x7f

    int-to-byte p1, p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/dex/y;->a(B)V

    return-void
.end method

.method public static b(I)[B
    .locals 5

    const/4 v0, 0x5

    .line 1
    new-array v0, v0, [B

    ushr-int/lit8 v1, p0, 0x7

    const/4 v2, 0x0

    :goto_0
    move v4, v1

    move v1, p0

    move p0, v4

    if-eqz p0, :cond_0

    add-int/lit8 v3, v2, 0x1

    and-int/lit8 v1, v1, 0x7f

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    .line 2
    aput-byte v1, v0, v2

    ushr-int/lit8 v1, p0, 0x7

    move v2, v3

    goto :goto_0

    :cond_0
    add-int/lit8 p0, v2, 0x1

    and-int/lit8 v1, v1, 0x7f

    int-to-byte v1, v1

    .line 3
    aput-byte v1, v0, v2

    .line 4
    invoke-static {v0, p0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static c(I)I
    .locals 0

    if-gez p0, :cond_0

    not-int p0, p0

    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x27

    div-int/lit8 p0, p0, 0x7

    return p0
.end method

.method public static d(I)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x26

    div-int/lit8 p0, p0, 0x7

    const/4 v0, 0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method
