.class public abstract Lcom/android/tools/r8/internal/n;
.super Ljava/util/AbstractCollection;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/util/Collection;
.implements Ljava/lang/Iterable;
.implements Ljava/util/Set;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    move-object v0, p0

    check-cast v0, Lcom/android/tools/r8/internal/Mb;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Mb;->a(C)Z

    move-result p1

    return p1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    move-object v1, p0

    check-cast v1, Lcom/android/tools/r8/internal/Mb;

    iget v2, v1, Lcom/android/tools/r8/internal/Mb;->c:I

    :goto_0
    add-int/lit8 v3, v2, -0x1

    const/4 v4, -0x1

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/android/tools/r8/internal/Mb;->b:[C

    aget-char v2, v2, v3

    if-ne v2, p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_1
    if-eq v3, v4, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Ljava/util/Set;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 6

    move-object v0, p0

    check-cast v0, Lcom/android/tools/r8/internal/Mb;

    iget v1, v0, Lcom/android/tools/r8/internal/Mb;->c:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    add-int/lit8 v4, v1, -0x1

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/android/tools/r8/internal/Mb;->c:I

    if-ge v3, v1, :cond_0

    iget-object v1, v0, Lcom/android/tools/r8/internal/Mb;->b:[C

    add-int/lit8 v5, v3, 0x1

    aget-char v1, v1, v3

    add-int/2addr v2, v1

    move v1, v4

    move v3, v5

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_1
    return v2
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    move-object v1, p0

    check-cast v1, Lcom/android/tools/r8/internal/Mb;

    iget v2, v1, Lcom/android/tools/r8/internal/Mb;->c:I

    :goto_0
    add-int/lit8 v3, v2, -0x1

    const/4 v4, -0x1

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/android/tools/r8/internal/Mb;->b:[C

    aget-char v2, v2, v3

    if-ne v2, p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_1
    if-ne v3, v4, :cond_3

    return v0

    :cond_3
    iget p1, v1, Lcom/android/tools/r8/internal/Mb;->c:I

    sub-int/2addr p1, v3

    const/4 v2, 0x1

    sub-int/2addr p1, v2

    :goto_2
    if-ge v0, p1, :cond_4

    iget-object v4, v1, Lcom/android/tools/r8/internal/Mb;->b:[C

    add-int v5, v3, v0

    add-int/lit8 v6, v5, 0x1

    aget-char v6, v4, v6

    aput-char v6, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget p1, v1, Lcom/android/tools/r8/internal/Mb;->c:I

    sub-int/2addr p1, v2

    iput p1, v1, Lcom/android/tools/r8/internal/Mb;->c:I

    return v2
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v1, p0

    check-cast v1, Lcom/android/tools/r8/internal/Mb;

    iget v2, v1, Lcom/android/tools/r8/internal/Mb;->c:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v5, v3

    :goto_0
    add-int/lit8 v6, v2, -0x1

    if-eqz v2, :cond_2

    if-eqz v4, :cond_0

    move v4, v3

    goto :goto_1

    :cond_0
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    iget v2, v1, Lcom/android/tools/r8/internal/Mb;->c:I

    if-ge v5, v2, :cond_1

    iget-object v2, v1, Lcom/android/tools/r8/internal/Mb;->b:[C

    add-int/lit8 v7, v5, 0x1

    aget-char v2, v2, v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v6

    move v5, v7

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_2
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
