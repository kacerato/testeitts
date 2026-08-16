.class public final Lcom/android/tools/r8/internal/Qd0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/Od0;
.implements Ljava/io/Serializable;


# instance fields
.field public final b:Lcom/android/tools/r8/internal/Nd0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/Nd0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Qd0;->b:Lcom/android/tools/r8/internal/Nd0;

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 0

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

    iget-object v0, p0, Lcom/android/tools/r8/internal/Qd0;->b:Lcom/android/tools/r8/internal/Nd0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Nd0;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Qd0;->b:Lcom/android/tools/r8/internal/Nd0;

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
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qd0;->b:Lcom/android/tools/r8/internal/Nd0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/C1;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Qd0;->b:Lcom/android/tools/r8/internal/Nd0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/C1;->hashCode()I

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Qd0;->b:Lcom/android/tools/r8/internal/Nd0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Nd0;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Lcom/android/tools/r8/internal/A30;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qd0;->b:Lcom/android/tools/r8/internal/Nd0;

    .line 3
    new-instance v1, Lcom/android/tools/r8/internal/Md0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/Md0;-><init>(Lcom/android/tools/r8/internal/Nd0;)V

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/D30;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/D30;-><init>(Lcom/android/tools/r8/internal/A30;)V

    return-object v0
.end method

.method public final bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/Qd0;->iterator()Lcom/android/tools/r8/internal/A30;

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

    iget-object v0, p0, Lcom/android/tools/r8/internal/Qd0;->b:Lcom/android/tools/r8/internal/Nd0;

    iget v0, v0, Lcom/android/tools/r8/internal/Nd0;->c:I

    return v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qd0;->b:Lcom/android/tools/r8/internal/Nd0;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/Qd0;->b:Lcom/android/tools/r8/internal/Nd0;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/Qd0;->b:Lcom/android/tools/r8/internal/Nd0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/y1;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
