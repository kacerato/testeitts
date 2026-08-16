.class public final Lcom/android/tools/r8/internal/Ld0;
.super Lcom/android/tools/r8/internal/B1;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# instance fields
.field public transient b:[Ljava/lang/Object;

.field public c:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Lcom/android/tools/r8/internal/B1;-><init>()V

    if-ltz p1, :cond_0

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/tools/r8/internal/Ld0;->b:[Ljava/lang/Object;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Initial capacity ("

    const-string v2, ") is negative"

    invoke-static {p1, v1, v2}, Lcom/android/tools/r8/internal/HC;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(II)V
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/Ld0;->c:I

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/Y3;->a(III)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ld0;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/android/tools/r8/internal/Ld0;->c:I

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/android/tools/r8/internal/Ld0;->c:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/android/tools/r8/internal/Ld0;->c:I

    :goto_0
    add-int/lit8 p1, p2, -0x1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/tools/r8/internal/Ld0;->b:[Ljava/lang/Object;

    iget v0, p0, Lcom/android/tools/r8/internal/Ld0;->c:I

    add-int/2addr v0, p1

    const/4 v1, 0x0

    aput-object v1, p2, v0

    move p2, p1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final add(ILjava/lang/Object;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/B1;->j(I)V

    .line 2
    iget v0, p0, Lcom/android/tools/r8/internal/Ld0;->c:I

    add-int/lit8 v0, v0, 0x1

    .line 3
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ld0;->b:[Ljava/lang/Object;

    array-length v2, v1

    if-le v0, v2, :cond_0

    .line 4
    array-length v1, v1

    int-to-long v1, v1

    const-wide/16 v3, 0x2

    mul-long/2addr v1, v3

    const-wide/32 v3, 0x7ffffff7

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    int-to-long v3, v0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    .line 5
    new-array v0, v0, [Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ld0;->b:[Ljava/lang/Object;

    iget v2, p0, Lcom/android/tools/r8/internal/Ld0;->c:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iput-object v0, p0, Lcom/android/tools/r8/internal/Ld0;->b:[Ljava/lang/Object;

    .line 8
    :cond_0
    iget v0, p0, Lcom/android/tools/r8/internal/Ld0;->c:I

    if-eq p1, v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ld0;->b:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v1, p1, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ld0;->b:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 10
    iget p1, p0, Lcom/android/tools/r8/internal/Ld0;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/tools/r8/internal/Ld0;->c:I

    return-void
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 6

    .line 11
    iget v0, p0, Lcom/android/tools/r8/internal/Ld0;->c:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 12
    iget-object v2, p0, Lcom/android/tools/r8/internal/Ld0;->b:[Ljava/lang/Object;

    array-length v3, v2

    if-le v0, v3, :cond_0

    .line 13
    array-length v2, v2

    int-to-long v2, v2

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    const-wide/32 v4, 0x7ffffff7

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    int-to-long v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    .line 14
    new-array v0, v0, [Ljava/lang/Object;

    .line 15
    iget-object v2, p0, Lcom/android/tools/r8/internal/Ld0;->b:[Ljava/lang/Object;

    iget v3, p0, Lcom/android/tools/r8/internal/Ld0;->c:I

    const/4 v4, 0x0

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 16
    iput-object v0, p0, Lcom/android/tools/r8/internal/Ld0;->b:[Ljava/lang/Object;

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/Ld0;->b:[Ljava/lang/Object;

    iget v2, p0, Lcom/android/tools/r8/internal/Ld0;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/tools/r8/internal/Ld0;->c:I

    aput-object p1, v0, v2

    return v1
.end method

.method public final clear()V
    .locals 4

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ld0;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/android/tools/r8/internal/Ld0;->c:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput v3, p0, Lcom/android/tools/r8/internal/Ld0;->c:I

    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/android/tools/r8/internal/Ld0;

    iget v1, p0, Lcom/android/tools/r8/internal/Ld0;->c:I

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Ld0;-><init>(I)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ld0;->b:[Ljava/lang/Object;

    iget-object v2, v0, Lcom/android/tools/r8/internal/Ld0;->b:[Ljava/lang/Object;

    iget v3, p0, Lcom/android/tools/r8/internal/Ld0;->c:I

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/android/tools/r8/internal/Ld0;->c:I

    iput v1, v0, Lcom/android/tools/r8/internal/Ld0;->c:I

    return-object v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/internal/Ld0;->c:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ld0;->b:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index ("

    const-string v2, ") is greater than or equal to list size ("

    invoke-static {p1, v1, v2}, Lcom/android/tools/r8/internal/Jt0;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcom/android/tools/r8/internal/Ld0;->c:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/tools/r8/internal/Ld0;->c:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/Ld0;->b:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final isEmpty()Z
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/Ld0;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final l(I)Lcom/android/tools/r8/internal/G30;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/B1;->j(I)V

    new-instance v0, Lcom/android/tools/r8/internal/Kd0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/Kd0;-><init>(Lcom/android/tools/r8/internal/Ld0;I)V

    return-object v0
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/Ld0;->c:I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ld0;->b:[Ljava/lang/Object;

    aget-object v0, v0, v1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/B1;->j(I)V

    new-instance v0, Lcom/android/tools/r8/internal/Kd0;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/Kd0;-><init>(Lcom/android/tools/r8/internal/Ld0;I)V

    return-object v0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/tools/r8/internal/Ld0;->c:I

    if-ge p1, v0, :cond_1

    .line 2
    iget-object v1, p0, Lcom/android/tools/r8/internal/Ld0;->b:[Ljava/lang/Object;

    aget-object v2, v1, p1

    add-int/lit8 v0, v0, -0x1

    .line 3
    iput v0, p0, Lcom/android/tools/r8/internal/Ld0;->c:I

    if-eq p1, v0, :cond_0

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v0, p1

    .line 4
    invoke-static {v1, v3, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/Ld0;->b:[Ljava/lang/Object;

    iget v0, p0, Lcom/android/tools/r8/internal/Ld0;->c:I

    const/4 v1, 0x0

    aput-object v1, p1, v0

    return-object v2

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 7
    const-string v1, "Index ("

    const-string v2, ") is greater than or equal to list size ("

    invoke-static {p1, v1, v2}, Lcom/android/tools/r8/internal/Jt0;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 8
    iget v1, p0, Lcom/android/tools/r8/internal/Ld0;->c:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ld0;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Ld0;->remove(I)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ld0;->b:[Ljava/lang/Object;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    iget v4, p0, Lcom/android/tools/r8/internal/Ld0;->c:I

    if-ge v2, v4, :cond_1

    aget-object v4, v0, v2

    invoke-interface {p1, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v4, v3, 0x1

    aget-object v5, v0, v2

    aput-object v5, v0, v3

    move v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-static {v0, v3, v4, p1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget p1, p0, Lcom/android/tools/r8/internal/Ld0;->c:I

    if-eq p1, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    iput v3, p0, Lcom/android/tools/r8/internal/Ld0;->c:I

    return v1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/Ld0;->c:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/Ld0;->b:[Ljava/lang/Object;

    aget-object v1, v0, p1

    aput-object p2, v0, p1

    return-object v1

    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Index ("

    const-string v1, ") is greater than or equal to list size ("

    invoke-static {p1, v0, v1}, Lcom/android/tools/r8/internal/Jt0;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/android/tools/r8/internal/Ld0;->c:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/Ld0;->c:I

    return v0
.end method
