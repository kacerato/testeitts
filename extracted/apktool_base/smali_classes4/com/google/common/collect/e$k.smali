.class public Lcom/google/common/collect/e$k;
.super Ljava/util/AbstractCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/e$k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public final b:Ljava/lang/Object;
    .annotation runtime Lcom/google/common/collect/f2;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field public c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field

.field public final d:Lcom/google/common/collect/e$k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/e<",
            "TK;TV;>.k;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public final e:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public final synthetic f:Lcom/google/common/collect/e;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/e;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/e$k;)V
    .locals 0
    .param p1    # Lcom/google/common/collect/e;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .param p3    # Ljava/util/Collection;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection<",
            "TV;>;",
            "Lcom/google/common/collect/e<",
            "TK;TV;>.k;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/collect/e$k;->f:Lcom/google/common/collect/e;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput-object p2, p0, Lcom/google/common/collect/e$k;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/common/collect/e$k;->c:Ljava/util/Collection;

    iput-object p4, p0, Lcom/google/common/collect/e$k;->d:Lcom/google/common/collect/e$k;

    if-nez p4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Lcom/google/common/collect/e$k;->c()Ljava/util/Collection;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/common/collect/e$k;->e:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/google/common/collect/e$k;->d:Lcom/google/common/collect/e$k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/common/collect/e$k;->a()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/e$k;->f:Lcom/google/common/collect/e;

    invoke-static {v0}, Lcom/google/common/collect/e;->l(Lcom/google/common/collect/e;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/e$k;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/e$k;->c:Ljava/util/Collection;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/e$k;->g()V

    iget-object v0, p0, Lcom/google/common/collect/e$k;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/e$k;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/e$k;->f:Lcom/google/common/collect/e;

    invoke-static {v1}, Lcom/google/common/collect/e;->n(Lcom/google/common/collect/e;)I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/e$k;->a()V

    :cond_0
    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TV;>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/e$k;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/e$k;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/google/common/collect/e$k;->c:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    iget-object v2, p0, Lcom/google/common/collect/e$k;->f:Lcom/google/common/collect/e;

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Lcom/google/common/collect/e;->q(Lcom/google/common/collect/e;I)I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/e$k;->a()V

    :cond_1
    return p1
.end method

.method public b()Lcom/google/common/collect/e$k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e<",
            "TK;TV;>.k;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/e$k;->d:Lcom/google/common/collect/e$k;

    return-object v0
.end method

.method public c()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/e$k;->c:Ljava/util/Collection;

    return-object v0
.end method

.method public clear()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/common/collect/e$k;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/e$k;->c:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    iget-object v1, p0, Lcom/google/common/collect/e$k;->f:Lcom/google/common/collect/e;

    invoke-static {v1, v0}, Lcom/google/common/collect/e;->r(Lcom/google/common/collect/e;I)I

    invoke-virtual {p0}, Lcom/google/common/collect/e$k;->h()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/common/collect/e$k;->g()V

    iget-object v0, p0, Lcom/google/common/collect/e$k;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/e$k;->g()V

    iget-object v0, p0, Lcom/google/common/collect/e$k;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public d()Ljava/lang/Object;
    .locals 1
    .annotation runtime Lcom/google/common/collect/f2;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/e$k;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/e$k;->g()V

    iget-object v0, p0, Lcom/google/common/collect/e$k;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/e$k;->d:Lcom/google/common/collect/e$k;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/common/collect/e$k;->g()V

    iget-object v0, p0, Lcom/google/common/collect/e$k;->d:Lcom/google/common/collect/e$k;

    invoke-virtual {v0}, Lcom/google/common/collect/e$k;->c()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/e$k;->e:Ljava/util/Collection;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/e$k;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/common/collect/e$k;->f:Lcom/google/common/collect/e;

    invoke-static {v0}, Lcom/google/common/collect/e;->l(Lcom/google/common/collect/e;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/e$k;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    iput-object v0, p0, Lcom/google/common/collect/e$k;->c:Ljava/util/Collection;

    :cond_2
    :goto_0
    return-void
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lcom/google/common/collect/e$k;->d:Lcom/google/common/collect/e$k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/common/collect/e$k;->h()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/e$k;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/common/collect/e$k;->f:Lcom/google/common/collect/e;

    invoke-static {v0}, Lcom/google/common/collect/e;->l(Lcom/google/common/collect/e;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/e$k;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/e$k;->g()V

    iget-object v0, p0, Lcom/google/common/collect/e$k;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/e$k;->g()V

    new-instance v0, Lcom/google/common/collect/e$k$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/e$k$a;-><init>(Lcom/google/common/collect/e$k;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/common/collect/e$k;->g()V

    iget-object v0, p0, Lcom/google/common/collect/e$k;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/e$k;->f:Lcom/google/common/collect/e;

    invoke-static {v0}, Lcom/google/common/collect/e;->p(Lcom/google/common/collect/e;)I

    invoke-virtual {p0}, Lcom/google/common/collect/e$k;->h()V

    :cond_0
    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/e$k;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/e$k;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/google/common/collect/e$k;->c:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    iget-object v2, p0, Lcom/google/common/collect/e$k;->f:Lcom/google/common/collect/e;

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Lcom/google/common/collect/e;->q(Lcom/google/common/collect/e;I)I

    invoke-virtual {p0}, Lcom/google/common/collect/e$k;->h()V

    :cond_1
    return p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/common/collect/e$k;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/common/collect/e$k;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/e$k;->c:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    iget-object v2, p0, Lcom/google/common/collect/e$k;->f:Lcom/google/common/collect/e;

    sub-int/2addr v1, v0

    invoke-static {v2, v1}, Lcom/google/common/collect/e;->q(Lcom/google/common/collect/e;I)I

    invoke-virtual {p0}, Lcom/google/common/collect/e$k;->h()V

    :cond_0
    return p1
.end method

.method public size()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/e$k;->g()V

    iget-object v0, p0, Lcom/google/common/collect/e$k;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/e$k;->g()V

    iget-object v0, p0, Lcom/google/common/collect/e$k;->c:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
