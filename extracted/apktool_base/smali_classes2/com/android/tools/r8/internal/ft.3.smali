.class public final Lcom/android/tools/r8/internal/ft;
.super Lcom/android/tools/r8/internal/s1;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/OI;
.implements Lcom/android/tools/r8/internal/B70;


# static fields
.field public static final e:Lcom/android/tools/r8/internal/ft;


# instance fields
.field public c:[D

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/ft;

    const/4 v1, 0x0

    new-array v2, v1, [D

    invoke-direct {v0, v2, v1}, Lcom/android/tools/r8/internal/ft;-><init>([DI)V

    sput-object v0, Lcom/android/tools/r8/internal/ft;->e:Lcom/android/tools/r8/internal/ft;

    iput-boolean v1, v0, Lcom/android/tools/r8/internal/s1;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    .line 1
    new-array v0, v0, [D

    .line 2
    invoke-direct {p0}, Lcom/android/tools/r8/internal/s1;-><init>()V

    .line 3
    iput-object v0, p0, Lcom/android/tools/r8/internal/ft;->c:[D

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/android/tools/r8/internal/ft;->d:I

    return-void
.end method

.method public constructor <init>([DI)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/android/tools/r8/internal/s1;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/android/tools/r8/internal/ft;->c:[D

    .line 7
    iput p2, p0, Lcom/android/tools/r8/internal/ft;->d:I

    return-void
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p2, Ljava/lang/Double;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/s1;->a()V

    if-ltz p1, :cond_1

    .line 4
    iget p2, p0, Lcom/android/tools/r8/internal/ft;->d:I

    if-gt p1, p2, :cond_1

    .line 5
    iget-object v2, p0, Lcom/android/tools/r8/internal/ft;->c:[D

    array-length v3, v2

    if-ge p2, v3, :cond_0

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr p2, p1

    .line 6
    invoke-static {v2, p1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    mul-int/lit8 p2, p2, 0x3

    .line 7
    div-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, 0x1

    .line 8
    new-array p2, p2, [D

    const/4 v3, 0x0

    .line 9
    invoke-static {v2, v3, p2, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iget-object v2, p0, Lcom/android/tools/r8/internal/ft;->c:[D

    add-int/lit8 v3, p1, 0x1

    iget v4, p0, Lcom/android/tools/r8/internal/ft;->d:I

    sub-int/2addr v4, p1

    invoke-static {v2, p1, p2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iput-object p2, p0, Lcom/android/tools/r8/internal/ft;->c:[D

    .line 12
    :goto_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/ft;->c:[D

    aput-wide v0, p2, p1

    .line 13
    iget p1, p0, Lcom/android/tools/r8/internal/ft;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/tools/r8/internal/ft;->d:I

    .line 14
    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void

    .line 15
    :cond_1
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    .line 16
    const-string v0, "Index:"

    const-string v1, ", Size:"

    invoke-static {p1, v0, v1}, Lcom/android/tools/r8/internal/Jt0;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 17
    iget v0, p0, Lcom/android/tools/r8/internal/ft;->d:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 6

    .line 19
    check-cast p1, Ljava/lang/Double;

    .line 20
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    .line 21
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/s1;->a()V

    .line 22
    iget p1, p0, Lcom/android/tools/r8/internal/ft;->d:I

    iget-object v2, p0, Lcom/android/tools/r8/internal/ft;->c:[D

    array-length v3, v2

    const/4 v4, 0x1

    if-ne p1, v3, :cond_0

    mul-int/lit8 v3, p1, 0x3

    .line 23
    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v4

    .line 24
    new-array v3, v3, [D

    const/4 v5, 0x0

    .line 25
    invoke-static {v2, v5, v3, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 26
    iput-object v3, p0, Lcom/android/tools/r8/internal/ft;->c:[D

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/ft;->c:[D

    iget v2, p0, Lcom/android/tools/r8/internal/ft;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/tools/r8/internal/ft;->d:I

    aput-wide v0, p1, v2

    return v4
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/s1;->a()V

    sget-object v0, Lcom/android/tools/r8/internal/YI;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/android/tools/r8/internal/ft;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/s1;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    :cond_0
    check-cast p1, Lcom/android/tools/r8/internal/ft;

    iget v0, p1, Lcom/android/tools/r8/internal/ft;->d:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget v2, p0, Lcom/android/tools/r8/internal/ft;->d:I

    const v3, 0x7fffffff

    sub-int/2addr v3, v2

    if-lt v3, v0, :cond_3

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/android/tools/r8/internal/ft;->c:[D

    array-length v3, v0

    if-le v2, v3, :cond_2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/ft;->c:[D

    :cond_2
    iget-object v0, p1, Lcom/android/tools/r8/internal/ft;->c:[D

    iget-object v3, p0, Lcom/android/tools/r8/internal/ft;->c:[D

    iget v4, p0, Lcom/android/tools/r8/internal/ft;->d:I

    iget p1, p1, Lcom/android/tools/r8/internal/ft;->d:I

    invoke-static {v0, v1, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v2, p0, Lcom/android/tools/r8/internal/ft;->d:I

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return v0

    :cond_3
    new-instance p1, Ljava/lang/OutOfMemoryError;

    invoke-direct {p1}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/ft;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/ft;

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/android/tools/r8/internal/s1;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    check-cast p1, Lcom/android/tools/r8/internal/ft;

    iget v1, p0, Lcom/android/tools/r8/internal/ft;->d:I

    iget v2, p1, Lcom/android/tools/r8/internal/ft;->d:I

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    return v3

    :cond_2
    iget-object p1, p1, Lcom/android/tools/r8/internal/ft;->c:[D

    move v1, v3

    :goto_0
    iget v2, p0, Lcom/android/tools/r8/internal/ft;->d:I

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/android/tools/r8/internal/ft;->c:[D

    aget-wide v4, v2, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    aget-wide v6, p1, v1

    invoke-static {v6, v7}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-eqz v2, :cond_3

    return v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/tools/r8/internal/ft;->d:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/ft;->c:[D

    aget-wide v1, v0, p1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index:"

    const-string v2, ", Size:"

    invoke-static {p1, v1, v2}, Lcom/android/tools/r8/internal/Jt0;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcom/android/tools/r8/internal/ft;->d:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final hashCode()I
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/android/tools/r8/internal/ft;->d:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/tools/r8/internal/ft;->c:[D

    aget-wide v3, v2, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x1f

    sget-object v4, Lcom/android/tools/r8/internal/YI;->a:Ljava/nio/charset/Charset;

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 7

    instance-of v0, p1, Ljava/lang/Double;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget p1, p0, Lcom/android/tools/r8/internal/ft;->d:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    iget-object v4, p0, Lcom/android/tools/r8/internal/ft;->c:[D

    aget-wide v5, v4, v0

    cmpl-double v4, v5, v2

    if-nez v4, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final j(I)Lcom/android/tools/r8/internal/ft;
    .locals 2

    iget v0, p0, Lcom/android/tools/r8/internal/ft;->d:I

    if-lt p1, v0, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/ft;

    iget-object v1, p0, Lcom/android/tools/r8/internal/ft;->c:[D

    invoke-static {v1, p1}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object p1

    iget v1, p0, Lcom/android/tools/r8/internal/ft;->d:I

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/internal/ft;-><init>([DI)V

    return-object v0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 5

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/s1;->a()V

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/android/tools/r8/internal/ft;->d:I

    if-ge p1, v0, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/ft;->c:[D

    aget-wide v2, v1, p1

    add-int/lit8 v4, v0, -0x1

    if-ge p1, v4, :cond_0

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v4, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget p1, p0, Lcom/android/tools/r8/internal/ft;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/tools/r8/internal/ft;->d:I

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Index:"

    const-string v2, ", Size:"

    invoke-static {p1, v1, v2}, Lcom/android/tools/r8/internal/Jt0;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcom/android/tools/r8/internal/ft;->d:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final removeRange(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/s1;->a()V

    if-lt p2, p1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/ft;->c:[D

    iget v1, p0, Lcom/android/tools/r8/internal/ft;->d:I

    sub-int/2addr v1, p2

    invoke-static {v0, p2, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/android/tools/r8/internal/ft;->d:I

    sub-int/2addr p2, p1

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/android/tools/r8/internal/ft;->d:I

    iget p1, p0, Ljava/util/AbstractList;->modCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Ljava/util/AbstractList;->modCount:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "toIndex < fromIndex"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/s1;->a()V

    if-ltz p1, :cond_0

    iget p2, p0, Lcom/android/tools/r8/internal/ft;->d:I

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Lcom/android/tools/r8/internal/ft;->c:[D

    aget-wide v2, p2, p1

    aput-wide v0, p2, p1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Index:"

    const-string v1, ", Size:"

    invoke-static {p1, v0, v1}, Lcom/android/tools/r8/internal/Jt0;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/android/tools/r8/internal/ft;->d:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/android/tools/r8/internal/ft;->d:I

    return v0
.end method
