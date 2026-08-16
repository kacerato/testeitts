.class public final Lcom/android/tools/r8/internal/CH;
.super Lcom/android/tools/r8/internal/a0;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# instance fields
.field public transient b:[I

.field public c:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 3
    invoke-direct {p0}, Lcom/android/tools/r8/internal/a0;-><init>()V

    if-ltz p1, :cond_0

    .line 4
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/tools/r8/internal/CH;->b:[I

    return-void

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 6
    const-string v1, "Initial capacity ("

    const-string v2, ") is negative"

    invoke-static {p1, v1, v2}, Lcom/android/tools/r8/internal/HC;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/tools/r8/internal/a0;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/internal/CH;->b:[I

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 2

    .line 10
    iget v0, p0, Lcom/android/tools/r8/internal/CH;->c:I

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/Y3;->a(III)V

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/internal/CH;->b:[I

    iget v1, p0, Lcom/android/tools/r8/internal/CH;->c:I

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iget v0, p0, Lcom/android/tools/r8/internal/CH;->c:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/android/tools/r8/internal/CH;->c:I

    return-void
.end method

.method public final a(I[III)V
    .locals 2

    .line 1
    array-length v0, p2

    const-string v1, ") is negative"

    if-ltz p3, :cond_2

    if-ltz p4, :cond_1

    add-int v1, p3, p4

    if-gt v1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/CH;->b:[I

    invoke-static {v0, p1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Last index ("

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ") is greater than array length ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 5
    const-string p2, "Length ("

    invoke-static {p4, p2, v1}, Lcom/android/tools/r8/internal/HC;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_2
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 8
    const-string p2, "Offset ("

    invoke-static {p3, p2, v1}, Lcom/android/tools/r8/internal/HC;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 9
    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(ILcom/android/tools/r8/internal/TH;)Z
    .locals 5

    .line 15
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/a0;->k(I)V

    .line 16
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 17
    :cond_0
    iget v2, p0, Lcom/android/tools/r8/internal/CH;->c:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/CH;->p(I)V

    .line 18
    iget v2, p0, Lcom/android/tools/r8/internal/CH;->c:I

    if-eq p1, v2, :cond_1

    iget-object v3, p0, Lcom/android/tools/r8/internal/CH;->b:[I

    add-int v4, p1, v0

    sub-int/2addr v2, p1

    invoke-static {v3, p1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 19
    :cond_1
    iget-object v2, p0, Lcom/android/tools/r8/internal/CH;->b:[I

    invoke-interface {p2, v1, v2, p1, v0}, Lcom/android/tools/r8/internal/TH;->a(I[III)V

    .line 20
    iget p1, p0, Lcom/android/tools/r8/internal/CH;->c:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/tools/r8/internal/CH;->c:I

    const/4 p1, 0x1

    return p1
.end method

.method public final a([I)[I
    .locals 3

    if-eqz p1, :cond_0

    .line 13
    array-length v0, p1

    iget v1, p0, Lcom/android/tools/r8/internal/CH;->c:I

    if-ge v0, v1, :cond_1

    :cond_0
    iget p1, p0, Lcom/android/tools/r8/internal/CH;->c:I

    new-array p1, p1, [I

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/CH;->b:[I

    iget v1, p0, Lcom/android/tools/r8/internal/CH;->c:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public final add(I)Z
    .locals 4

    iget v0, p0, Lcom/android/tools/r8/internal/CH;->c:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/CH;->p(I)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/CH;->b:[I

    iget v2, p0, Lcom/android/tools/r8/internal/CH;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/tools/r8/internal/CH;->c:I

    aput p1, v0, v2

    return v1
.end method

.method public final b(II)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/a0;->k(I)V

    iget v0, p0, Lcom/android/tools/r8/internal/CH;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/CH;->p(I)V

    iget v0, p0, Lcom/android/tools/r8/internal/CH;->c:I

    if-eq p1, v0, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/CH;->b:[I

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/CH;->b:[I

    aput p2, v0, p1

    iget p1, p0, Lcom/android/tools/r8/internal/CH;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/tools/r8/internal/CH;->c:I

    return-void
.end method

.method public final c(I)I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/tools/r8/internal/CH;->c:I

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/CH;->b:[I

    aget p1, v0, p1

    return p1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 4
    const-string v1, "Index ("

    const-string v2, ") is greater than or equal to list size ("

    invoke-static {p1, v1, v2}, Lcom/android/tools/r8/internal/Jt0;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 5
    iget v1, p0, Lcom/android/tools/r8/internal/CH;->c:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c(II)I
    .locals 2

    .line 6
    iget v0, p0, Lcom/android/tools/r8/internal/CH;->c:I

    if-ge p1, v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/internal/CH;->b:[I

    aget v1, v0, p1

    .line 8
    aput p2, v0, p1

    return v1

    .line 9
    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    .line 10
    const-string v0, "Index ("

    const-string v1, ") is greater than or equal to list size ("

    invoke-static {p1, v0, v1}, Lcom/android/tools/r8/internal/Jt0;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 11
    iget v0, p0, Lcom/android/tools/r8/internal/CH;->c:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/CH;->c:I

    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/android/tools/r8/internal/CH;

    iget v1, p0, Lcom/android/tools/r8/internal/CH;->c:I

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/CH;-><init>(I)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/CH;->b:[I

    iget-object v2, v0, Lcom/android/tools/r8/internal/CH;->b:[I

    iget v3, p0, Lcom/android/tools/r8/internal/CH;->c:I

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/android/tools/r8/internal/CH;->c:I

    iput v1, v0, Lcom/android/tools/r8/internal/CH;->c:I

    return-object v0
.end method

.method public final i(I)I
    .locals 4

    iget v0, p0, Lcom/android/tools/r8/internal/CH;->c:I

    if-ge p1, v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/CH;->b:[I

    aget v2, v1, p1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/internal/CH;->c:I

    if-eq p1, v0, :cond_0

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v1, v3, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return v2

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index ("

    const-string v2, ") is greater than or equal to list size ("

    invoke-static {p1, v1, v2}, Lcom/android/tools/r8/internal/Jt0;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcom/android/tools/r8/internal/CH;->c:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/CH;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/CH;->m(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/CH;->i(I)I

    const/4 p1, 0x1

    return p1
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/a0;->k(I)V

    new-instance v0, Lcom/android/tools/r8/internal/BH;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/BH;-><init>(Lcom/android/tools/r8/internal/CH;I)V

    return-object v0
.end method

.method public final m(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/tools/r8/internal/CH;->c:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/CH;->b:[I

    aget v1, v1, v0

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final n(I)I
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/CH;->c:I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/CH;->b:[I

    aget v0, v0, v1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final o(I)Lcom/android/tools/r8/internal/UH;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/a0;->k(I)V

    new-instance v0, Lcom/android/tools/r8/internal/BH;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/BH;-><init>(Lcom/android/tools/r8/internal/CH;I)V

    return-object v0
.end method

.method public final p(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/CH;->b:[I

    iget v1, p0, Lcom/android/tools/r8/internal/CH;->c:I

    array-length v2, v0

    if-le p1, v2, :cond_0

    array-length v2, v0

    int-to-long v2, v2

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    const-wide/32 v4, 0x7ffffff7

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    int-to-long v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    long-to-int p1, v2

    new-array p1, p1, [I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, p1

    :cond_0
    iput-object v0, p0, Lcom/android/tools/r8/internal/CH;->b:[I

    return-void
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/CH;->b:[I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    iget v4, p0, Lcom/android/tools/r8/internal/CH;->c:I

    if-ge v2, v4, :cond_1

    aget v4, v0, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v4, v3, 0x1

    aget v5, v0, v2

    aput v5, v0, v3

    move v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eq v4, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    iput v3, p0, Lcom/android/tools/r8/internal/CH;->c:I

    return v1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/CH;->c:I

    return v0
.end method
