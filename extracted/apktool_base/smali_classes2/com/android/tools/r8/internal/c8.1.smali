.class public abstract Lcom/android/tools/r8/internal/c8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/b8;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/b8;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;)[B
    .locals 10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v2

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    const/16 v4, 0x80

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    const/16 v4, 0x2000

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v4, v1

    :goto_0
    const/4 v5, -0x1

    const v6, 0x7ffffff7

    if-ge v4, v6, :cond_6

    sub-int/2addr v6, v4

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    new-array v7, v6, [B

    invoke-virtual {v0, v7}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    move v8, v1

    :goto_1
    if-ge v8, v6, :cond_4

    sub-int v9, v6, v8

    invoke-virtual {p0, v7, v8, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    if-ne v9, v5, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    new-array p0, v1, [B

    return-object p0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    array-length v2, p0

    if-ne v2, v4, :cond_1

    return-object p0

    :cond_1
    array-length v2, p0

    sub-int v2, v4, v2

    invoke-static {p0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    :goto_2
    if-lez v2, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v5, v3

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int v6, v4, v2

    invoke-static {v3, v1, p0, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v2, v5

    goto :goto_2

    :cond_2
    return-object p0

    :cond_3
    add-int/2addr v8, v9

    add-int/2addr v4, v9

    goto :goto_1

    :cond_4
    const/16 v5, 0x1000

    if-ge v2, v5, :cond_5

    const/4 v5, 0x4

    goto :goto_3

    :cond_5
    move v5, v3

    :goto_3
    int-to-long v6, v2

    int-to-long v8, v5

    mul-long/2addr v6, v8

    invoke-static {v6, v7}, Lcom/android/tools/r8/internal/HJ;->a(J)I

    move-result v2

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    if-ne p0, v5, :cond_a

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_7

    new-array p0, v1, [B

    return-object p0

    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    array-length v2, p0

    if-ne v2, v6, :cond_8

    return-object p0

    :cond_8
    array-length v2, p0

    sub-int v2, v6, v2

    invoke-static {p0, v6}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    :goto_4
    if-lez v2, :cond_9

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v4, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    sub-int v5, v6, v2

    invoke-static {v3, v1, p0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v2, v4

    goto :goto_4

    :cond_9
    return-object p0

    :cond_a
    new-instance p0, Ljava/lang/OutOfMemoryError;

    const-string v0, "input is too large to fit in a byte array"

    invoke-direct {p0, v0}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw p0
.end method
