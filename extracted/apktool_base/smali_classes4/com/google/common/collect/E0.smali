.class public abstract Lcom/google/common/collect/E0;
.super Lcom/google/common/collect/I0;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/S1;


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/I0;",
        "Lcom/google/common/collect/S1<",
        "TK;TV;>;"
    }
.end annotation

.annotation build Lv2/b;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/common/collect/I0;-><init>()V

    return-void
.end method


# virtual methods
.method public Z(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/E0;->m0()Lcom/google/common/collect/S1;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/S1;->Z(Ljava/lang/Object;Ljava/lang/Iterable;)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/E0;->m0()Lcom/google/common/collect/S1;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/S1;->c(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/E0;->m0()Lcom/google/common/collect/S1;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/S1;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/common/collect/E0;->m0()Lcom/google/common/collect/S1;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/S1;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/common/collect/E0;->m0()Lcom/google/common/collect/S1;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/S1;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/E0;->m0()Lcom/google/common/collect/S1;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/S1;->d(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    if-eq p1, p0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/E0;->m0()Lcom/google/common/collect/S1;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/S1;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public g0(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/common/collect/E0;->m0()Lcom/google/common/collect/S1;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/S1;->g0(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/E0;->m0()Lcom/google/common/collect/S1;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/S1;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/E0;->m0()Lcom/google/common/collect/S1;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/S1;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/E0;->m0()Lcom/google/common/collect/S1;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/S1;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public j()Lcom/google/common/collect/V1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/V1<",
            "TK;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/E0;->m0()Lcom/google/common/collect/S1;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/S1;->j()Lcom/google/common/collect/V1;

    move-result-object v0

    return-object v0
.end method

.method public k()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/E0;->m0()Lcom/google/common/collect/S1;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/S1;->k()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic k0()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/E0;->m0()Lcom/google/common/collect/S1;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/E0;->m0()Lcom/google/common/collect/S1;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/S1;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public abstract m0()Lcom/google/common/collect/S1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/S1<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/E0;->m0()Lcom/google/common/collect/S1;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/S1;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation build LI2/a;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/E0;->m0()Lcom/google/common/collect/S1;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/S1;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/E0;->m0()Lcom/google/common/collect/S1;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/S1;->size()I

    move-result v0

    return v0
.end method

.method public v()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/E0;->m0()Lcom/google/common/collect/S1;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/S1;->v()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/E0;->m0()Lcom/google/common/collect/S1;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/S1;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public w(Lcom/google/common/collect/S1;)Z
    .locals 1
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/S1<",
            "+TK;+TV;>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/E0;->m0()Lcom/google/common/collect/S1;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/S1;->w(Lcom/google/common/collect/S1;)Z

    move-result p1

    return p1
.end method
