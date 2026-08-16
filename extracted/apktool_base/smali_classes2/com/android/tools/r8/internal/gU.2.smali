.class public final Lcom/android/tools/r8/internal/gU;
.super Lcom/android/tools/r8/internal/m0;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# instance fields
.field public transient b:[J

.field public c:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Lcom/android/tools/r8/internal/m0;-><init>()V

    if-ltz p1, :cond_0

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/android/tools/r8/internal/gU;->b:[J

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

    .line 20
    iget v0, p0, Lcom/android/tools/r8/internal/gU;->c:I

    invoke-static {v0, p1, p2}, Lcom/android/tools/r8/internal/Y3;->a(III)V

    .line 21
    iget-object v0, p0, Lcom/android/tools/r8/internal/gU;->b:[J

    iget v1, p0, Lcom/android/tools/r8/internal/gU;->c:I

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    iget v0, p0, Lcom/android/tools/r8/internal/gU;->c:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/android/tools/r8/internal/gU;->c:I

    return-void
.end method

.method public final a(IJ)V
    .locals 7

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/m0;->j(I)V

    .line 2
    iget v0, p0, Lcom/android/tools/r8/internal/gU;->c:I

    add-int/lit8 v1, v0, 0x1

    .line 3
    iget-object v2, p0, Lcom/android/tools/r8/internal/gU;->b:[J

    .line 4
    array-length v3, v2

    if-le v1, v3, :cond_0

    .line 5
    array-length v3, v2

    int-to-long v3, v3

    const-wide/16 v5, 0x2

    mul-long/2addr v3, v5

    const-wide/32 v5, 0x7ffffff7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    int-to-long v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    long-to-int v1, v3

    .line 6
    new-array v1, v1, [J

    const/4 v3, 0x0

    .line 7
    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v1

    .line 8
    :cond_0
    iput-object v2, p0, Lcom/android/tools/r8/internal/gU;->b:[J

    .line 9
    iget v0, p0, Lcom/android/tools/r8/internal/gU;->c:I

    if-eq p1, v0, :cond_1

    add-int/lit8 v1, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v2, p1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/gU;->b:[J

    aput-wide p2, v0, p1

    .line 11
    iget p1, p0, Lcom/android/tools/r8/internal/gU;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/tools/r8/internal/gU;->c:I

    return-void
.end method

.method public final a(J)Z
    .locals 7

    .line 12
    iget v0, p0, Lcom/android/tools/r8/internal/gU;->c:I

    add-int/lit8 v1, v0, 0x1

    .line 13
    iget-object v2, p0, Lcom/android/tools/r8/internal/gU;->b:[J

    .line 14
    array-length v3, v2

    if-le v1, v3, :cond_0

    .line 15
    array-length v3, v2

    int-to-long v3, v3

    const-wide/16 v5, 0x2

    mul-long/2addr v3, v5

    const-wide/32 v5, 0x7ffffff7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    int-to-long v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    long-to-int v1, v3

    .line 16
    new-array v1, v1, [J

    const/4 v3, 0x0

    .line 17
    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v1

    .line 18
    :cond_0
    iput-object v2, p0, Lcom/android/tools/r8/internal/gU;->b:[J

    .line 19
    iget v0, p0, Lcom/android/tools/r8/internal/gU;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/tools/r8/internal/gU;->c:I

    aput-wide p1, v2, v0

    const/4 p1, 0x1

    return p1
.end method

.method public final b(IJ)J
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/internal/gU;->c:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/gU;->b:[J

    aget-wide v1, v0, p1

    aput-wide p2, v0, p1

    return-wide v1

    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    const-string p3, "Index ("

    const-string v0, ") is greater than or equal to list size ("

    invoke-static {p1, p3, v0}, Lcom/android/tools/r8/internal/Jt0;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p3, p0, Lcom/android/tools/r8/internal/gU;->c:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final c(J)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/gU;->d(J)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/gU;->f(I)J

    const/4 p1, 0x1

    return p1
.end method

.method public final clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/tools/r8/internal/gU;->c:I

    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/android/tools/r8/internal/gU;

    iget v1, p0, Lcom/android/tools/r8/internal/gU;->c:I

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/gU;-><init>(I)V

    iget-object v1, p0, Lcom/android/tools/r8/internal/gU;->b:[J

    iget-object v2, v0, Lcom/android/tools/r8/internal/gU;->b:[J

    iget v3, p0, Lcom/android/tools/r8/internal/gU;->c:I

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/android/tools/r8/internal/gU;->c:I

    iput v1, v0, Lcom/android/tools/r8/internal/gU;->c:I

    return-object v0
.end method

.method public final d(J)I
    .locals 4

    const/4 v0, 0x0

    .line 6
    :goto_0
    iget v1, p0, Lcom/android/tools/r8/internal/gU;->c:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/gU;->b:[J

    aget-wide v2, v1, v0

    cmp-long v1, p1, v2

    if-nez v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final d(I)J
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/tools/r8/internal/gU;->c:I

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/gU;->b:[J

    aget-wide v1, v0, p1

    return-wide v1

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 4
    const-string v1, "Index ("

    const-string v2, ") is greater than or equal to list size ("

    invoke-static {p1, v1, v2}, Lcom/android/tools/r8/internal/Jt0;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 5
    iget v1, p0, Lcom/android/tools/r8/internal/gU;->c:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e(J)I
    .locals 4

    iget v0, p0, Lcom/android/tools/r8/internal/gU;->c:I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/gU;->b:[J

    aget-wide v2, v0, v1

    cmp-long v0, p1, v2

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public final f(I)J
    .locals 5

    iget v0, p0, Lcom/android/tools/r8/internal/gU;->c:I

    if-ge p1, v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/gU;->b:[J

    aget-wide v2, v1, p1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/internal/gU;->c:I

    if-eq p1, v0, :cond_0

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v0, p1

    invoke-static {v1, v4, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-wide v2

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index ("

    const-string v2, ") is greater than or equal to list size ("

    invoke-static {p1, v1, v2}, Lcom/android/tools/r8/internal/Jt0;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcom/android/tools/r8/internal/gU;->c:I

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

    iget v0, p0, Lcom/android/tools/r8/internal/gU;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final l(I)Lcom/android/tools/r8/internal/n0;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/m0;->j(I)V

    new-instance v0, Lcom/android/tools/r8/internal/fU;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/fU;-><init>(Lcom/android/tools/r8/internal/gU;I)V

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/m0;->j(I)V

    new-instance v0, Lcom/android/tools/r8/internal/fU;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/fU;-><init>(Lcom/android/tools/r8/internal/gU;I)V

    return-object v0
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 7

    iget-object v0, p0, Lcom/android/tools/r8/internal/gU;->b:[J

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    iget v4, p0, Lcom/android/tools/r8/internal/gU;->c:I

    if-ge v2, v4, :cond_1

    aget-wide v4, v0, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    add-int/lit8 v4, v3, 0x1

    aget-wide v5, v0, v2

    aput-wide v5, v0, v3

    move v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eq v4, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    iput v3, p0, Lcom/android/tools/r8/internal/gU;->c:I

    return v1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/gU;->c:I

    return v0
.end method
