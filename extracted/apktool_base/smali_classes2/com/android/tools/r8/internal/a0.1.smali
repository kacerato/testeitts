.class public abstract Lcom/android/tools/r8/internal/a0;
.super Lcom/android/tools/r8/internal/W;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/TH;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/W;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)I
    .locals 6

    const/4 v0, 0x0

    if-ne p1, p0, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/android/tools/r8/internal/TH;

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eqz v1, :cond_5

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/a0;->o(I)Lcom/android/tools/r8/internal/UH;

    move-result-object v1

    .line 3
    check-cast p1, Lcom/android/tools/r8/internal/TH;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/TH;->listIterator()Lcom/android/tools/r8/internal/UH;

    move-result-object p1

    .line 4
    :cond_1
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5
    invoke-interface {v1}, Lcom/android/tools/r8/internal/PH;->r()I

    move-result v4

    .line 6
    invoke-interface {p1}, Lcom/android/tools/r8/internal/PH;->r()I

    move-result v5

    .line 7
    invoke-static {v4, v5}, Ljava/lang/Integer;->compare(II)I

    move-result v4

    if-eqz v4, :cond_1

    return v4

    .line 8
    :cond_2
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    return v3

    :cond_3
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v0

    .line 9
    :cond_5
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/a0;->o(I)Lcom/android/tools/r8/internal/UH;

    move-result-object v1

    .line 10
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    .line 11
    :cond_6
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 12
    move-object v4, v1

    check-cast v4, Lcom/android/tools/r8/internal/X;

    .line 13
    invoke-interface {v4}, Lcom/android/tools/r8/internal/PH;->r()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 14
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_6

    return v4

    .line 15
    :cond_7
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_8

    return v3

    :cond_8
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public abstract a(ILcom/android/tools/r8/internal/TH;)Z
.end method

.method public add(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Integer;

    .line 2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/android/tools/r8/internal/TH;->b(II)V

    return-void
.end method

.method public abstract add(I)Z
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/a0;->k(I)V

    .line 2
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    .line 4
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v1, p1, 0x1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {p0, p1, v2}, Lcom/android/tools/r8/internal/TH;->b(II)V

    move p1, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1

    .line 6
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/internal/a0;->addAll(ILjava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public clear()V
    .locals 2

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/android/tools/r8/internal/TH;->a(II)V

    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/a0;->a(Ljava/util/List;)I

    move-result p1

    return p1
.end method

.method public e(II)Lcom/android/tools/r8/internal/TH;
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/a0;->k(I)V

    invoke-virtual {p0, p2}, Lcom/android/tools/r8/internal/a0;->k(I)V

    if-gt p1, p2, :cond_0

    new-instance v0, Lcom/android/tools/r8/internal/Z;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/internal/Z;-><init>(Lcom/android/tools/r8/internal/a0;II)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Start index ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is greater than end index ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    instance-of v3, p1, Lcom/android/tools/r8/internal/TH;

    if-eqz v3, :cond_5

    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/a0;->o(I)Lcom/android/tools/r8/internal/UH;

    move-result-object v3

    check-cast p1, Lcom/android/tools/r8/internal/TH;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/TH;->listIterator()Lcom/android/tools/r8/internal/UH;

    move-result-object p1

    :goto_0
    add-int/lit8 v4, v1, -0x1

    if-eqz v1, :cond_4

    invoke-interface {v3}, Lcom/android/tools/r8/internal/PH;->r()I

    move-result v1

    invoke-interface {p1}, Lcom/android/tools/r8/internal/PH;->r()I

    move-result v5

    if-eq v1, v5, :cond_3

    return v2

    :cond_3
    move v1, v4

    goto :goto_0

    :cond_4
    return v0

    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/tools/r8/internal/a0;->o(I)Lcom/android/tools/r8/internal/UH;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    :goto_1
    add-int/lit8 v4, v1, -0x1

    if-eqz v1, :cond_7

    move-object v1, v3

    check-cast v1, Lcom/android/tools/r8/internal/X;

    invoke-interface {v1}, Lcom/android/tools/r8/internal/PH;->r()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    move v1, v4

    goto :goto_1

    :cond_7
    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/TH;->c(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final h(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/a0;->m(I)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/a0;->o(I)Lcom/android/tools/r8/internal/UH;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v2, 0x1

    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/android/tools/r8/internal/PH;->r()I

    move-result v1

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v1

    move v1, v3

    goto :goto_0

    :cond_0
    return v2
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/a0;->m(I)I

    move-result p1

    return p1
.end method

.method public iterator()Lcom/android/tools/r8/internal/PH;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/a0;->o(I)Lcom/android/tools/r8/internal/UH;

    move-result-object v0

    return-object v0
.end method

.method public final iterator()Lcom/android/tools/r8/internal/UH;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/a0;->o(I)Lcom/android/tools/r8/internal/UH;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/a0;->o(I)Lcom/android/tools/r8/internal/UH;

    move-result-object v0

    return-object v0
.end method

.method public final k(I)V
    .locals 3

    const-string v0, "Index ("

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-gt p1, v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, ") is greater than list size ("

    invoke-static {p1, v0, v2}, Lcom/android/tools/r8/internal/Jt0;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, ") is negative"

    invoke-static {p1, v0, v2}, Lcom/android/tools/r8/internal/HC;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final l(I)V
    .locals 3

    const-string v0, "Index ("

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, ") is greater than or equal to list size ("

    invoke-static {p1, v0, v2}, Lcom/android/tools/r8/internal/Jt0;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, ") is negative"

    invoke-static {p1, v0, v2}, Lcom/android/tools/r8/internal/HC;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/a0;->n(I)I

    move-result p1

    return p1
.end method

.method public final listIterator()Lcom/android/tools/r8/internal/UH;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/a0;->o(I)Lcom/android/tools/r8/internal/UH;

    move-result-object v0

    return-object v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/a0;->o(I)Lcom/android/tools/r8/internal/UH;

    move-result-object v0

    return-object v0
.end method

.method public m(I)I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/a0;->o(I)Lcom/android/tools/r8/internal/UH;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/android/tools/r8/internal/PH;->r()I

    move-result v1

    if-ne p1, v1, :cond_0

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public n(I)I
    .locals 2

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/a0;->o(I)Lcom/android/tools/r8/internal/UH;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/android/tools/r8/internal/HH;->c()I

    move-result v1

    if-ne p1, v1, :cond_0

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result p1

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public abstract o(I)Lcom/android/tools/r8/internal/UH;
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/TH;->i(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/android/tools/r8/internal/TH;->c(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/internal/a0;->e(II)Lcom/android/tools/r8/internal/TH;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/tools/r8/internal/a0;->o(I)Lcom/android/tools/r8/internal/UH;

    move-result-object v2

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    const/4 v4, 0x1

    :goto_0
    add-int/lit8 v5, v3, -0x1

    if-eqz v3, :cond_1

    if-eqz v4, :cond_0

    move v4, v1

    goto :goto_1

    :cond_0
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-interface {v2}, Lcom/android/tools/r8/internal/PH;->r()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v3, v5

    goto :goto_0

    :cond_1
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
