.class public final Lcom/android/tools/r8/internal/YB;
.super Ljava/util/ArrayDeque;
.source "SourceFile"


# instance fields
.field public b:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/YB;->b:Z

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/YB;->b:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string v0, "Modification not allowed on immutable structure"

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/YB;->b:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    move-result p1

    return p1

    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string v0, "Modification not allowed on immutable structure"

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final addFirst(Ljava/lang/Object;)V
    .locals 1

    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string v0, "Modification not allowed on immutable structure"

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final addLast(Ljava/lang/Object;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/YB;->b:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string v0, "Modification not allowed on immutable structure"

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final pop()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    const-string v1, "Modification not allowed on immutable structure"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final push(Ljava/lang/Object;)V
    .locals 1

    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string v0, "Modification not allowed on immutable structure"

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final remove()Ljava/lang/Object;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    const-string v1, "Modification not allowed on immutable structure"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string v0, "Modification not allowed on immutable structure"

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 1

    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string v0, "Modification not allowed on immutable structure"

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final removeFirst()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    const-string v1, "Modification not allowed on immutable structure"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final removeFirstOccurrence(Ljava/lang/Object;)Z
    .locals 1

    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string v0, "Modification not allowed on immutable structure"

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final removeIf(Ljava/util/function/Predicate;)Z
    .locals 1

    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string v0, "Modification not allowed on immutable structure"

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final removeLast()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/Jv0;

    const-string v1, "Modification not allowed on immutable structure"

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final removeLastOccurrence(Ljava/lang/Object;)Z
    .locals 1

    new-instance p1, Lcom/android/tools/r8/internal/Jv0;

    const-string v0, "Modification not allowed on immutable structure"

    invoke-direct {p1, v0}, Lcom/android/tools/r8/internal/Jv0;-><init>(Ljava/lang/String;)V

    throw p1
.end method
