.class public Lcom/google/common/collect/k0;
.super Lcom/google/common/collect/h;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/m0;


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/k0$c;,
        Lcom/google/common/collect/k0$a;,
        Lcom/google/common/collect/k0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/h<",
        "TK;TV;>;",
        "Lcom/google/common/collect/m0<",
        "TK;TV;>;"
    }
.end annotation

.annotation build Lv2/b;
.end annotation


# instance fields
.field public final g:Lcom/google/common/collect/S1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/S1<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public final h:Lw2/I;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/I<",
            "-TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/S1;Lw2/I;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/S1<",
            "TK;TV;>;",
            "Lw2/I<",
            "-TK;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/h;-><init>()V

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/S1;

    iput-object p1, p0, Lcom/google/common/collect/k0;->g:Lcom/google/common/collect/S1;

    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw2/I;

    iput-object p1, p0, Lcom/google/common/collect/k0;->h:Lw2/I;

    return-void
.end method


# virtual methods
.method public N()Lw2/I;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw2/I<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/k0;->h:Lw2/I;

    invoke-static {v0}, Lcom/google/common/collect/Q1;->U(Lw2/I;)Lw2/I;

    move-result-object v0

    return-object v0
.end method

.method public a()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/k0;->g:Lcom/google/common/collect/S1;

    invoke-interface {v0}, Lcom/google/common/collect/S1;->k()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/k0;->h:Lw2/I;

    invoke-static {v0, v1}, Lcom/google/common/collect/Q1;->G(Ljava/util/Map;Lw2/I;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/k0$c;

    invoke-direct {v0, p0}, Lcom/google/common/collect/k0$c;-><init>(Lcom/google/common/collect/k0;)V

    return-object v0
.end method

.method public c(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/k0;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/k0;->g:Lcom/google/common/collect/S1;

    invoke-interface {v0, p1}, Lcom/google/common/collect/S1;->c(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/k0;->l()Ljava/util/Collection;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public clear()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/h;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/collect/k0;->g:Lcom/google/common/collect/S1;

    invoke-interface {v0, p1}, Lcom/google/common/collect/S1;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/k0;->h:Lw2/I;

    invoke-interface {v0, p1}, Lw2/I;->apply(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public e()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/k0;->g:Lcom/google/common/collect/S1;

    invoke-interface {v0}, Lcom/google/common/collect/S1;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/k0;->h:Lw2/I;

    invoke-static {v0, v1}, Lcom/google/common/collect/D2;->i(Ljava/util/Set;Lw2/I;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/google/common/collect/V1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/V1<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/k0;->g:Lcom/google/common/collect/S1;

    invoke-interface {v0}, Lcom/google/common/collect/S1;->j()Lcom/google/common/collect/V1;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/k0;->h:Lw2/I;

    invoke-static {v0, v1}, Lcom/google/common/collect/W1;->j(Lcom/google/common/collect/V1;Lw2/I;)Lcom/google/common/collect/V1;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/n0;

    invoke-direct {v0, p0}, Lcom/google/common/collect/n0;-><init>(Lcom/google/common/collect/m0;)V

    return-object v0
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

    iget-object v0, p0, Lcom/google/common/collect/k0;->h:Lw2/I;

    invoke-interface {v0, p1}, Lw2/I;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/k0;->g:Lcom/google/common/collect/S1;

    invoke-interface {v0, p1}, Lcom/google/common/collect/S1;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/k0;->g:Lcom/google/common/collect/S1;

    instance-of v0, v0, Lcom/google/common/collect/C2;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/google/common/collect/k0$b;

    invoke-direct {v0, p1}, Lcom/google/common/collect/k0$b;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/common/collect/k0$a;

    invoke-direct {v0, p1}, Lcom/google/common/collect/k0$a;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public h()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public l()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/k0;->g:Lcom/google/common/collect/S1;

    instance-of v0, v0, Lcom/google/common/collect/C2;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public o()Lcom/google/common/collect/S1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/S1<",
            "TK;TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/k0;->g:Lcom/google/common/collect/S1;

    return-object v0
.end method

.method public size()I
    .locals 3

    invoke-virtual {p0}, Lcom/google/common/collect/h;->k()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method
