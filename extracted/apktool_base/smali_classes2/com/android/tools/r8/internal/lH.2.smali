.class public final Lcom/android/tools/r8/internal/lH;
.super Lcom/android/tools/r8/internal/i1;
.source "SourceFile"


# instance fields
.field public final synthetic b:Lcom/android/tools/r8/internal/sH;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/sH;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/lH;->b:Lcom/android/tools/r8/internal/sH;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/i1;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/lH;->b:Lcom/android/tools/r8/internal/sH;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/sH;->clear()V

    return-void
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/lH;->b:Lcom/android/tools/r8/internal/sH;

    iget-object v0, v0, Lcom/android/tools/r8/internal/sH;->i:Lcom/android/tools/r8/internal/vH;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/vH;->c()Lcom/android/tools/r8/internal/M30;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/fH;

    iget-object v0, v0, Lcom/android/tools/r8/internal/fH;->b:Lcom/android/tools/r8/internal/eH;

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

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/lH;->b:Lcom/android/tools/r8/internal/sH;

    iget-object v0, v0, Lcom/android/tools/r8/internal/sH;->i:Lcom/android/tools/r8/internal/vH;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/vH;->d(I)Lcom/android/tools/r8/internal/hH;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/tools/r8/internal/lH;->b:Lcom/android/tools/r8/internal/sH;

    iget v3, v0, Lcom/android/tools/r8/internal/S;->b:I

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/sH;->d(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1, v0}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public final first()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/lH;->b:Lcom/android/tools/r8/internal/sH;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/sH;->i()Lcom/android/tools/r8/internal/hH;

    move-result-object v0

    return-object v0
.end method

.method public final headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    check-cast p1, Lcom/android/tools/r8/internal/RG;

    iget-object v0, p0, Lcom/android/tools/r8/internal/lH;->b:Lcom/android/tools/r8/internal/sH;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/sH;->c(I)Lcom/android/tools/r8/internal/wH;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/sH;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/sH;->c()Lcom/android/tools/r8/internal/M30;

    move-result-object p1

    return-object p1
.end method

.method public final isEmpty()Z
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/lH;->b:Lcom/android/tools/r8/internal/sH;

    iget-object v1, v0, Lcom/android/tools/r8/internal/sH;->i:Lcom/android/tools/r8/internal/vH;

    iget-object v1, v1, Lcom/android/tools/r8/internal/vH;->d:Lcom/android/tools/r8/internal/hH;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/sH;->i()Lcom/android/tools/r8/internal/hH;

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
    new-instance v0, Lcom/android/tools/r8/internal/oH;

    iget-object v1, p0, Lcom/android/tools/r8/internal/lH;->b:Lcom/android/tools/r8/internal/sH;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/oH;-><init>(Lcom/android/tools/r8/internal/sH;)V

    return-object v0
.end method

.method public final iterator()Lcom/android/tools/r8/internal/v30;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/oH;

    iget-object v1, p0, Lcom/android/tools/r8/internal/lH;->b:Lcom/android/tools/r8/internal/sH;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/oH;-><init>(Lcom/android/tools/r8/internal/sH;)V

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/oH;

    iget-object v1, p0, Lcom/android/tools/r8/internal/lH;->b:Lcom/android/tools/r8/internal/sH;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/oH;-><init>(Lcom/android/tools/r8/internal/sH;)V

    return-object v0
.end method

.method public final last()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/lH;->b:Lcom/android/tools/r8/internal/sH;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/sH;->j()Lcom/android/tools/r8/internal/hH;

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

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/lH;->b:Lcom/android/tools/r8/internal/sH;

    iget-object v0, v0, Lcom/android/tools/r8/internal/sH;->i:Lcom/android/tools/r8/internal/vH;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/vH;->d(I)Lcom/android/tools/r8/internal/hH;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/lH;->b:Lcom/android/tools/r8/internal/sH;

    iget v2, p1, Lcom/android/tools/r8/internal/S;->b:I

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/sH;->d(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/lH;->b:Lcom/android/tools/r8/internal/sH;

    iget v2, p1, Lcom/android/tools/r8/internal/S;->b:I

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/sH;->remove(I)Ljava/lang/Object;

    :cond_2
    if-eqz p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method public final size()I
    .locals 3

    new-instance v0, Lcom/android/tools/r8/internal/oH;

    iget-object v1, p0, Lcom/android/tools/r8/internal/lH;->b:Lcom/android/tools/r8/internal/sH;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/oH;-><init>(Lcom/android/tools/r8/internal/sH;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/tH;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/tH;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    check-cast p1, Lcom/android/tools/r8/internal/RG;

    check-cast p2, Lcom/android/tools/r8/internal/RG;

    iget-object v0, p0, Lcom/android/tools/r8/internal/lH;->b:Lcom/android/tools/r8/internal/sH;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result p1

    invoke-interface {p2}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/sH;->a(II)Lcom/android/tools/r8/internal/wH;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/sH;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/sH;->c()Lcom/android/tools/r8/internal/M30;

    move-result-object p1

    return-object p1
.end method

.method public final tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    check-cast p1, Lcom/android/tools/r8/internal/RG;

    iget-object v0, p0, Lcom/android/tools/r8/internal/lH;->b:Lcom/android/tools/r8/internal/sH;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/sH;->b(I)Lcom/android/tools/r8/internal/wH;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/sH;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/sH;->c()Lcom/android/tools/r8/internal/M30;

    move-result-object p1

    return-object p1
.end method
