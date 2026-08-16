.class public final Lcom/android/tools/r8/internal/fn0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public b:I

.field public c:Z

.field public d:Ljava/util/Iterator;

.field public final synthetic e:Lcom/android/tools/r8/internal/in0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/in0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/fn0;->e:Lcom/android/tools/r8/internal/in0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/tools/r8/internal/fn0;->b:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 3

    iget v0, p0, Lcom/android/tools/r8/internal/fn0;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/fn0;->e:Lcom/android/tools/r8/internal/in0;

    iget-object v2, v2, Lcom/android/tools/r8/internal/in0;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/fn0;->e:Lcom/android/tools/r8/internal/in0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/in0;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/fn0;->d:Ljava/util/Iterator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/fn0;->e:Lcom/android/tools/r8/internal/in0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/in0;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/fn0;->d:Ljava/util/Iterator;

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/fn0;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/fn0;->c:Z

    iget v1, p0, Lcom/android/tools/r8/internal/fn0;->b:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/tools/r8/internal/fn0;->b:I

    iget-object v0, p0, Lcom/android/tools/r8/internal/fn0;->e:Lcom/android/tools/r8/internal/in0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/in0;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/fn0;->e:Lcom/android/tools/r8/internal/in0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/in0;->c:Ljava/util/List;

    iget v1, p0, Lcom/android/tools/r8/internal/fn0;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/fn0;->d:Ljava/util/Iterator;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/fn0;->e:Lcom/android/tools/r8/internal/in0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/in0;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/fn0;->d:Ljava/util/Iterator;

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/fn0;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public final remove()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/fn0;->c:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/tools/r8/internal/fn0;->c:Z

    iget-object v0, p0, Lcom/android/tools/r8/internal/fn0;->e:Lcom/android/tools/r8/internal/in0;

    sget v1, Lcom/android/tools/r8/internal/in0;->h:I

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/in0;->e()V

    iget v0, p0, Lcom/android/tools/r8/internal/fn0;->b:I

    iget-object v1, p0, Lcom/android/tools/r8/internal/fn0;->e:Lcom/android/tools/r8/internal/in0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/in0;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/fn0;->e:Lcom/android/tools/r8/internal/in0;

    iget v1, p0, Lcom/android/tools/r8/internal/fn0;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/android/tools/r8/internal/fn0;->b:I

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/in0;->e()V

    iget-object v2, v0, Lcom/android/tools/r8/internal/in0;->c:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/internal/dn0;

    iget-object v1, v1, Lcom/android/tools/r8/internal/dn0;->c:Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/tools/r8/internal/in0;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/in0;->j()Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, v0, Lcom/android/tools/r8/internal/in0;->c:Ljava/util/List;

    new-instance v3, Lcom/android/tools/r8/internal/dn0;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-direct {v3, v0, v4}, Lcom/android/tools/r8/internal/dn0;-><init>(Lcom/android/tools/r8/internal/in0;Ljava/util/Map$Entry;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/fn0;->d:Ljava/util/Iterator;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/fn0;->e:Lcom/android/tools/r8/internal/in0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/in0;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/fn0;->d:Ljava/util/Iterator;

    :cond_2
    iget-object v0, p0, Lcom/android/tools/r8/internal/fn0;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() was called before next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
