.class public final Lcom/android/tools/r8/internal/nG;
.super Lcom/android/tools/r8/internal/i1;
.source "SourceFile"


# instance fields
.field public final b:Lcom/android/tools/r8/internal/mG;

.field public final synthetic c:Lcom/android/tools/r8/internal/DG;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/DG;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/nG;->c:Lcom/android/tools/r8/internal/DG;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/i1;-><init>()V

    new-instance p1, Lcom/android/tools/r8/internal/mG;

    invoke-direct {p1, p0}, Lcom/android/tools/r8/internal/mG;-><init>(Lcom/android/tools/r8/internal/nG;)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/nG;->b:Lcom/android/tools/r8/internal/mG;

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/nG;->c:Lcom/android/tools/r8/internal/DG;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/DG;->clear()V

    return-void
.end method

.method public final comparator()Ljava/util/Comparator;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/nG;->b:Lcom/android/tools/r8/internal/mG;

    return-object v0
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 2

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
    iget-object v0, p0, Lcom/android/tools/r8/internal/nG;->c:Lcom/android/tools/r8/internal/DG;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/DG;->d(I)Lcom/android/tools/r8/internal/pG;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public final first()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/nG;->c:Lcom/android/tools/r8/internal/DG;

    iget-object v0, v0, Lcom/android/tools/r8/internal/DG;->d:Lcom/android/tools/r8/internal/pG;

    return-object v0
.end method

.method public final headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    check-cast p1, Lcom/android/tools/r8/internal/RG;

    iget-object v0, p0, Lcom/android/tools/r8/internal/nG;->c:Lcom/android/tools/r8/internal/DG;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/DG;->c(I)Lcom/android/tools/r8/internal/wH;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/AG;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/AG;->c()Lcom/android/tools/r8/internal/M30;

    move-result-object p1

    return-object p1
.end method

.method public final iterator()Lcom/android/tools/r8/internal/A30;
    .locals 2

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/qG;

    iget-object v1, p0, Lcom/android/tools/r8/internal/nG;->c:Lcom/android/tools/r8/internal/DG;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/qG;-><init>(Lcom/android/tools/r8/internal/DG;)V

    return-object v0
.end method

.method public final iterator()Lcom/android/tools/r8/internal/v30;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/qG;

    iget-object v1, p0, Lcom/android/tools/r8/internal/nG;->c:Lcom/android/tools/r8/internal/DG;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/qG;-><init>(Lcom/android/tools/r8/internal/DG;)V

    return-object v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/qG;

    iget-object v1, p0, Lcom/android/tools/r8/internal/nG;->c:Lcom/android/tools/r8/internal/DG;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/qG;-><init>(Lcom/android/tools/r8/internal/DG;)V

    return-object v0
.end method

.method public final last()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/nG;->c:Lcom/android/tools/r8/internal/DG;

    iget-object v0, v0, Lcom/android/tools/r8/internal/DG;->e:Lcom/android/tools/r8/internal/pG;

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
    iget-object v0, p0, Lcom/android/tools/r8/internal/nG;->c:Lcom/android/tools/r8/internal/DG;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/DG;->d(I)Lcom/android/tools/r8/internal/pG;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/nG;->c:Lcom/android/tools/r8/internal/DG;

    iget v2, p1, Lcom/android/tools/r8/internal/S;->b:I

    invoke-virtual {v0, v2}, Lcom/android/tools/r8/internal/DG;->remove(I)Ljava/lang/Object;

    :cond_2
    if-eqz p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/nG;->c:Lcom/android/tools/r8/internal/DG;

    iget v0, v0, Lcom/android/tools/r8/internal/DG;->c:I

    return v0
.end method

.method public final subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 6

    check-cast p1, Lcom/android/tools/r8/internal/RG;

    check-cast p2, Lcom/android/tools/r8/internal/RG;

    iget-object v1, p0, Lcom/android/tools/r8/internal/nG;->c:Lcom/android/tools/r8/internal/DG;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result v2

    invoke-interface {p2}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result v4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Lcom/android/tools/r8/internal/AG;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/AG;-><init>(Lcom/android/tools/r8/internal/DG;IZIZ)V

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/AG;->c()Lcom/android/tools/r8/internal/M30;

    move-result-object p1

    return-object p1
.end method

.method public final tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1

    check-cast p1, Lcom/android/tools/r8/internal/RG;

    iget-object v0, p0, Lcom/android/tools/r8/internal/nG;->c:Lcom/android/tools/r8/internal/DG;

    invoke-interface {p1}, Lcom/android/tools/r8/internal/RG;->a()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/DG;->b(I)Lcom/android/tools/r8/internal/wH;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/AG;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/AG;->c()Lcom/android/tools/r8/internal/M30;

    move-result-object p1

    return-object p1
.end method
