.class public final Lcom/android/tools/r8/internal/V20;
.super Lcom/android/tools/r8/internal/i1;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/c30;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/c30;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/V20;->b:Lcom/android/tools/r8/internal/c30;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/i1;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/V20;->b:Lcom/android/tools/r8/internal/c30;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/c30;->clear()V

    return-void
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/V20;->b:Lcom/android/tools/r8/internal/c30;

    iget-object v0, v0, Lcom/android/tools/r8/internal/c30;->i:Lcom/android/tools/r8/internal/f30;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/f30;->i()Lcom/android/tools/r8/internal/M30;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/P20;

    iget-object v0, v0, Lcom/android/tools/r8/internal/P20;->b:Lcom/android/tools/r8/internal/O20;

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/android/tools/r8/internal/V20;->b:Lcom/android/tools/r8/internal/c30;

    iget-object v0, v0, Lcom/android/tools/r8/internal/c30;->i:Lcom/android/tools/r8/internal/f30;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/f30;->d(Ljava/lang/Object;)Lcom/android/tools/r8/internal/R20;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/tools/r8/internal/V20;->b:Lcom/android/tools/r8/internal/c30;

    iget-object v3, v0, Lcom/android/tools/r8/internal/R20;->b:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/c30;->d(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1, v0}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public final first()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/V20;->b:Lcom/android/tools/r8/internal/c30;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/c30;->j()Lcom/android/tools/r8/internal/R20;

    move-result-object v0

    return-object v0
.end method

.method public final headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    check-cast p1, Lcom/android/tools/r8/internal/N20;

    iget-object v0, p0, Lcom/android/tools/r8/internal/V20;->b:Lcom/android/tools/r8/internal/c30;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/c30;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/a1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/a1;->i()Lcom/android/tools/r8/internal/M30;

    move-result-object p1

    return-object p1
.end method

.method public final isEmpty()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/V20;->b:Lcom/android/tools/r8/internal/c30;

    iget-object v1, v0, Lcom/android/tools/r8/internal/c30;->i:Lcom/android/tools/r8/internal/f30;

    iget-object v1, v1, Lcom/android/tools/r8/internal/f30;->d:Lcom/android/tools/r8/internal/R20;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/c30;->j()Lcom/android/tools/r8/internal/R20;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method public final iterator()Lcom/android/tools/r8/internal/A30;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/Y20;

    iget-object v1, p0, Lcom/android/tools/r8/internal/V20;->b:Lcom/android/tools/r8/internal/c30;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Y20;-><init>(Lcom/android/tools/r8/internal/c30;)V

    return-object v0
.end method

.method public final iterator()Lcom/android/tools/r8/internal/v30;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/Y20;

    iget-object v1, p0, Lcom/android/tools/r8/internal/V20;->b:Lcom/android/tools/r8/internal/c30;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Y20;-><init>(Lcom/android/tools/r8/internal/c30;)V

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/Y20;

    iget-object v1, p0, Lcom/android/tools/r8/internal/V20;->b:Lcom/android/tools/r8/internal/c30;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Y20;-><init>(Lcom/android/tools/r8/internal/c30;)V

    return-object v0
.end method

.method public final last()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/V20;->b:Lcom/android/tools/r8/internal/c30;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/c30;->k()Lcom/android/tools/r8/internal/R20;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lcom/android/tools/r8/internal/V20;->b:Lcom/android/tools/r8/internal/c30;

    iget-object v0, v0, Lcom/android/tools/r8/internal/c30;->i:Lcom/android/tools/r8/internal/f30;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/f30;->d(Ljava/lang/Object;)Lcom/android/tools/r8/internal/R20;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/V20;->b:Lcom/android/tools/r8/internal/c30;

    iget-object v2, p1, Lcom/android/tools/r8/internal/R20;->b:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/c30;->d(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/V20;->b:Lcom/android/tools/r8/internal/c30;

    iget-object v2, p1, Lcom/android/tools/r8/internal/R20;->b:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/c30;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public final size()I
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/Y20;

    iget-object v1, p0, Lcom/android/tools/r8/internal/V20;->b:Lcom/android/tools/r8/internal/c30;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Y20;-><init>(Lcom/android/tools/r8/internal/c30;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/d30;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/d30;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    check-cast p1, Lcom/android/tools/r8/internal/N20;

    check-cast p2, Lcom/android/tools/r8/internal/N20;

    iget-object v0, p0, Lcom/android/tools/r8/internal/V20;->b:Lcom/android/tools/r8/internal/c30;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/c30;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/a1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/a1;->i()Lcom/android/tools/r8/internal/M30;

    move-result-object p1

    return-object p1
.end method

.method public final tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    check-cast p1, Lcom/android/tools/r8/internal/N20;

    iget-object v0, p0, Lcom/android/tools/r8/internal/V20;->b:Lcom/android/tools/r8/internal/c30;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/c30;->c(Ljava/lang/Object;)Lcom/android/tools/r8/internal/a1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/a1;->i()Lcom/android/tools/r8/internal/M30;

    move-result-object p1

    return-object p1
.end method
