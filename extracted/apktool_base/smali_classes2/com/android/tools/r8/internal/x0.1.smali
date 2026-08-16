.class public abstract Lcom/android/tools/r8/internal/x0;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/Object;

.field public c:Ljava/util/Collection;

.field public final d:Lcom/android/tools/r8/internal/z0;

.field public final e:Ljava/util/Collection;

.field public final synthetic f:Lcom/android/tools/r8/internal/A0;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/internal/A0;Ljava/lang/Object;Ljava/util/List;Lcom/android/tools/r8/internal/z0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/x0;->f:Lcom/android/tools/r8/internal/A0;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/internal/x0;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/tools/r8/internal/x0;->c:Ljava/util/Collection;

    iput-object p4, p0, Lcom/android/tools/r8/internal/x0;->d:Lcom/android/tools/r8/internal/z0;

    if-nez p4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p4, Lcom/android/tools/r8/internal/x0;->c:Ljava/util/Collection;

    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/x0;->e:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/x0;->d:Lcom/android/tools/r8/internal/z0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/x0;->a()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/x0;->f:Lcom/android/tools/r8/internal/A0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/A0;->f:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/tools/r8/internal/x0;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/tools/r8/internal/x0;->c:Ljava/util/Collection;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final add(Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/x0;->b()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/x0;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/x0;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/x0;->f:Lcom/android/tools/r8/internal/A0;

    iget v2, v1, Lcom/android/tools/r8/internal/A0;->g:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/tools/r8/internal/A0;->g:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/x0;->a()V

    :cond_0
    return p1
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 4

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/x0;->b()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/x0;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/x0;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/x0;->c:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/x0;->f:Lcom/android/tools/r8/internal/A0;

    sub-int/2addr v1, v0

    iget v3, v2, Lcom/android/tools/r8/internal/A0;->g:I

    add-int/2addr v3, v1

    iput v3, v2, Lcom/android/tools/r8/internal/A0;->g:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/x0;->a()V

    :cond_1
    return p1
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/x0;->d:Lcom/android/tools/r8/internal/z0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/x0;->b()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/x0;->d:Lcom/android/tools/r8/internal/z0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/x0;->c:Ljava/util/Collection;

    iget-object v1, p0, Lcom/android/tools/r8/internal/x0;->e:Ljava/util/Collection;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/internal/x0;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/tools/r8/internal/x0;->f:Lcom/android/tools/r8/internal/A0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/A0;->f:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/tools/r8/internal/x0;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    iput-object v0, p0, Lcom/android/tools/r8/internal/x0;->c:Ljava/util/Collection;

    :cond_2
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/x0;->d:Lcom/android/tools/r8/internal/z0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/x0;->c()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/x0;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/x0;->f:Lcom/android/tools/r8/internal/A0;

    iget-object v0, v0, Lcom/android/tools/r8/internal/A0;->f:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/tools/r8/internal/x0;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public final clear()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/x0;->b()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/x0;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/internal/x0;->c:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    iget-object v1, p0, Lcom/android/tools/r8/internal/x0;->f:Lcom/android/tools/r8/internal/A0;

    iget v2, v1, Lcom/android/tools/r8/internal/A0;->g:I

    sub-int/2addr v2, v0

    iput v2, v1, Lcom/android/tools/r8/internal/A0;->g:I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/x0;->c()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/x0;->b()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/x0;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/x0;->b()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/x0;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/x0;->b()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/x0;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/x0;->b()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/x0;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/x0;->b()V

    new-instance v0, Lcom/android/tools/r8/internal/w0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/w0;-><init>(Lcom/android/tools/r8/internal/x0;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/x0;->b()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/x0;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/internal/x0;->f:Lcom/android/tools/r8/internal/A0;

    iget v1, v0, Lcom/android/tools/r8/internal/A0;->g:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/tools/r8/internal/A0;->g:I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/x0;->c()V

    :cond_0
    return p1
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 3

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/android/tools/r8/internal/x0;->b()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/x0;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/x0;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/tools/r8/internal/x0;->c:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/x0;->f:Lcom/android/tools/r8/internal/A0;

    sub-int/2addr v1, v0

    iget v0, v2, Lcom/android/tools/r8/internal/A0;->g:I

    add-int/2addr v0, v1

    iput v0, v2, Lcom/android/tools/r8/internal/A0;->g:I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/x0;->c()V

    :cond_1
    return p1
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/x0;->b()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/x0;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/x0;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/tools/r8/internal/x0;->c:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/tools/r8/internal/x0;->f:Lcom/android/tools/r8/internal/A0;

    sub-int/2addr v1, v0

    iget v0, v2, Lcom/android/tools/r8/internal/A0;->g:I

    add-int/2addr v0, v1

    iput v0, v2, Lcom/android/tools/r8/internal/A0;->g:I

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/x0;->c()V

    :cond_0
    return p1
.end method

.method public final size()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/x0;->b()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/x0;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public final spliterator()Ljava/util/Spliterator;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/x0;->b()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/x0;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/x0;->b()V

    iget-object v0, p0, Lcom/android/tools/r8/internal/x0;->c:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
