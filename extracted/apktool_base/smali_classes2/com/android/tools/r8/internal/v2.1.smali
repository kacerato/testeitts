.class public final Lcom/android/tools/r8/internal/v2;
.super Lcom/android/tools/r8/internal/y2;
.source "SourceFile"


# instance fields
.field public final c:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/y2;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/v2;->c:[B

    return-void
.end method


# virtual methods
.method public final a(II[BLjava/util/function/BiPredicate;)I
    .locals 5

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/v2;->c:[B

    array-length v0, v0

    const/4 v1, -0x1

    if-ge v0, p2, :cond_0

    return v1

    :cond_0
    move v0, p1

    :goto_0
    add-int v2, p1, p2

    if-ge v0, v2, :cond_2

    .line 4
    iget-object v2, p0, Lcom/android/tools/r8/internal/v2;->c:[B

    aget-byte v3, v2, v0

    add-int/lit8 v4, v0, 0x1

    aget-byte v2, v2, v4

    const/4 v4, 0x0

    invoke-static {v4, v4, v3, v2}, Lcom/android/tools/r8/internal/HJ;->a(BBBB)I

    move-result v2

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p4, v3, p3}, Ljava/util/function/BiPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final a([BII)Z
    .locals 5

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    if-eq v0, p3, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    if-ge v0, p3, :cond_2

    .line 2
    aget-byte v2, p1, v0

    iget-object v3, p0, Lcom/android/tools/r8/internal/v2;->c:[B

    add-int v4, v0, p2

    aget-byte v3, v3, v4

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final b([BII)B
    .locals 5

    move v0, p2

    :goto_0
    add-int v1, p2, p3

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/v2;->c:[B

    aget-byte v3, v1, v0

    add-int/lit8 v4, v0, 0x1

    aget-byte v1, v1, v4

    invoke-static {v2, v2, v3, v1}, Lcom/android/tools/r8/internal/HJ;->a(BBBB)I

    move-result v1

    add-int/lit8 v0, v0, 0x2

    add-int v2, v0, v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/tools/r8/internal/v2;->a([BII)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/tools/r8/internal/v2;->c:[B

    aget-byte p1, p1, v2

    return p1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public final c(I)Lcom/android/tools/r8/internal/x2;
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/v2;->c:[B

    sget-object v1, Lcom/android/tools/r8/internal/x2;->c:Lcom/android/tools/r8/internal/x2;

    aget-byte v2, v0, p1

    add-int/lit8 v3, p1, 0x1

    aget-byte v3, v0, v3

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, v0, v4

    add-int/lit8 v5, p1, 0x3

    aget-byte v5, v0, v5

    invoke-static {v2, v3, v4, v5}, Lcom/android/tools/r8/internal/HJ;->a(BBBB)I

    move-result v2

    add-int/lit8 v3, p1, 0x4

    aget-byte v3, v0, v3

    add-int/lit8 p1, p1, 0x5

    aget-byte p1, v0, p1

    const/4 v0, 0x0

    invoke-static {v0, v0, v3, p1}, Lcom/android/tools/r8/internal/HJ;->a(BBBB)I

    move-result p1

    if-nez v2, :cond_0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    if-gez v2, :cond_1

    if-gtz p1, :cond_2

    :cond_1
    if-lez v2, :cond_4

    if-nez p1, :cond_4

    :cond_2
    sget-boolean p1, Lcom/android/tools/r8/internal/x2;->d:Z

    if-eqz p1, :cond_3

    return-object v1

    :cond_3
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Unexpected position and length"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_4
    new-instance v0, Lcom/android/tools/r8/internal/x2;

    invoke-direct {v0, v2, p1}, Lcom/android/tools/r8/internal/x2;-><init>(II)V

    return-object v0
.end method

.method public final d()I
    .locals 5

    iget-object v0, p0, Lcom/android/tools/r8/internal/v2;->c:[B

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    const/4 v3, 0x2

    aget-byte v3, v0, v3

    const/4 v4, 0x3

    aget-byte v0, v0, v4

    invoke-static {v1, v2, v3, v0}, Lcom/android/tools/r8/internal/HJ;->a(BBBB)I

    move-result v0

    return v0
.end method
