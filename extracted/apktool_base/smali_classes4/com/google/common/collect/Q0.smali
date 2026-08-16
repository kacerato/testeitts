.class public abstract Lcom/google/common/collect/Q0;
.super Lcom/google/common/collect/I0;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/S2;


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/I0;",
        "Lcom/google/common/collect/S2<",
        "TR;TC;TV;>;"
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
.method public A()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TC;",
            "Ljava/util/Map<",
            "TR;TV;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/Q0;->m0()Lcom/google/common/collect/S2;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/S2;->A()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public B(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/util/Map<",
            "TR;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/Q0;->m0()Lcom/google/common/collect/S2;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/S2;->B(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public L(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/Q0;->m0()Lcom/google/common/collect/S2;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/common/collect/S2;->L(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public Q(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/common/collect/Q0;->m0()Lcom/google/common/collect/S2;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/S2;->Q(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public Y(Lcom/google/common/collect/S2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/S2<",
            "+TR;+TC;+TV;>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/Q0;->m0()Lcom/google/common/collect/S2;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/S2;->Y(Lcom/google/common/collect/S2;)V

    return-void
.end method

.method public c0()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/common/collect/S2$a<",
            "TR;TC;TV;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/Q0;->m0()Lcom/google/common/collect/S2;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/S2;->c0()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/Q0;->m0()Lcom/google/common/collect/S2;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/S2;->clear()V

    return-void
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/common/collect/Q0;->m0()Lcom/google/common/collect/S2;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/S2;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public d0()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TC;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/Q0;->m0()Lcom/google/common/collect/S2;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/S2;->d0()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/Q0;->m0()Lcom/google/common/collect/S2;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/S2;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e0(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/common/collect/Q0;->m0()Lcom/google/common/collect/S2;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/S2;->e0(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    if-eq p1, p0, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/Q0;->m0()Lcom/google/common/collect/S2;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/S2;->equals(Ljava/lang/Object;)Z

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

.method public g(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/google/common/collect/Q0;->m0()Lcom/google/common/collect/S2;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/S2;->g(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/Q0;->m0()Lcom/google/common/collect/S2;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/S2;->hashCode()I

    move-result v0

    return v0
.end method

.method public i0(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/Map<",
            "TC;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/Q0;->m0()Lcom/google/common/collect/S2;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/common/collect/S2;->i0(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/Q0;->m0()Lcom/google/common/collect/S2;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/S2;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic k0()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/Q0;->m0()Lcom/google/common/collect/S2;

    move-result-object v0

    return-object v0
.end method

.method public abstract m0()Lcom/google/common/collect/S2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/S2<",
            "TR;TC;TV;>;"
        }
    .end annotation
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/Q0;->m0()Lcom/google/common/collect/S2;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/S2;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/Q0;->m0()Lcom/google/common/collect/S2;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/S2;->size()I

    move-result v0

    return v0
.end method

.method public u()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/Q0;->m0()Lcom/google/common/collect/S2;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/S2;->u()Ljava/util/Map;

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

    invoke-virtual {p0}, Lcom/google/common/collect/Q0;->m0()Lcom/google/common/collect/S2;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/S2;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public x()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TR;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/Q0;->m0()Lcom/google/common/collect/S2;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/S2;->x()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
