.class public final Lcom/android/tools/r8/internal/LH;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/JH;
.implements Ljava/io/Serializable;


# instance fields
.field public final b:Lcom/android/tools/r8/internal/FH;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/FH;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/LH;->b:Lcom/android/tools/r8/internal/FH;

    return-void
.end method


# virtual methods
.method public final add(I)Z
    .locals 0

    .line 3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final clear()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/LH;->b:Lcom/android/tools/r8/internal/FH;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/W;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/LH;->b:Lcom/android/tools/r8/internal/FH;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/LH;->b:Lcom/android/tools/r8/internal/FH;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/c0;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final h(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/LH;->b:Lcom/android/tools/r8/internal/FH;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/FH;->h(I)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/LH;->b:Lcom/android/tools/r8/internal/FH;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/c0;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/LH;->b:Lcom/android/tools/r8/internal/FH;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/FH;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Lcom/android/tools/r8/internal/PH;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/LH;->b:Lcom/android/tools/r8/internal/FH;

    .line 3
    new-instance v1, Lcom/android/tools/r8/internal/EH;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/EH;-><init>(Lcom/android/tools/r8/internal/FH;)V

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/RH;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/RH;-><init>(Lcom/android/tools/r8/internal/PH;)V

    return-object v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/LH;->iterator()Lcom/android/tools/r8/internal/PH;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/LH;->b:Lcom/android/tools/r8/internal/FH;

    iget v0, v0, Lcom/android/tools/r8/internal/FH;->c:I

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/LH;->b:Lcom/android/tools/r8/internal/FH;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/LH;->b:Lcom/android/tools/r8/internal/FH;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/LH;->b:Lcom/android/tools/r8/internal/FH;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/W;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
