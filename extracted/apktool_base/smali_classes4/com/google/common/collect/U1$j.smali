.class public Lcom/google/common/collect/U1$j;
.super Lcom/google/common/collect/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/U1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V1:",
        "Ljava/lang/Object;",
        "V2:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/h<",
        "TK;TV2;>;"
    }
.end annotation


# instance fields
.field public final g:Lcom/google/common/collect/S1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/S1<",
            "TK;TV1;>;"
        }
    .end annotation
.end field

.field public final h:Lcom/google/common/collect/Q1$t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/Q1$t<",
            "-TK;-TV1;TV2;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/S1;Lcom/google/common/collect/Q1$t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/S1<",
            "TK;TV1;>;",
            "Lcom/google/common/collect/Q1$t<",
            "-TK;-TV1;TV2;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/h;-><init>()V

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/S1;

    iput-object p1, p0, Lcom/google/common/collect/U1$j;->g:Lcom/google/common/collect/S1;

    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/Q1$t;

    iput-object p1, p0, Lcom/google/common/collect/U1$j;->h:Lcom/google/common/collect/Q1$t;

    return-void
.end method


# virtual methods
.method public Z(Ljava/lang/Object;Ljava/lang/Iterable;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV2;>;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public a()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV2;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/U1$j;->g:Lcom/google/common/collect/S1;

    invoke-interface {v0}, Lcom/google/common/collect/S1;->k()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/google/common/collect/U1$j$a;

    invoke-direct {v1, p0}, Lcom/google/common/collect/U1$j$a;-><init>(Lcom/google/common/collect/U1$j;)V

    invoke-static {v0, v1}, Lcom/google/common/collect/Q1;->x0(Ljava/util/Map;Lcom/google/common/collect/Q1$t;)Ljava/util/Map;

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
            "TK;TV2;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/h$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/h$a;-><init>(Lcom/google/common/collect/h;)V

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
            "TV2;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/U1$j;->g:Lcom/google/common/collect/S1;

    invoke-interface {v0, p1}, Lcom/google/common/collect/S1;->c(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/U1$j;->l(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/U1$j;->g:Lcom/google/common/collect/S1;

    invoke-interface {v0}, Lcom/google/common/collect/S1;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/collect/U1$j;->g:Lcom/google/common/collect/S1;

    invoke-interface {v0, p1}, Lcom/google/common/collect/S1;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV2;>;)",
            "Ljava/util/Collection<",
            "TV2;>;"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public e()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/U1$j;->g:Lcom/google/common/collect/S1;

    invoke-interface {v0}, Lcom/google/common/collect/S1;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/google/common/collect/V1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/V1<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/U1$j;->g:Lcom/google/common/collect/S1;

    invoke-interface {v0}, Lcom/google/common/collect/S1;->j()Lcom/google/common/collect/V1;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV2;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/U1$j;->g:Lcom/google/common/collect/S1;

    invoke-interface {v0}, Lcom/google/common/collect/S1;->v()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/U1$j;->h:Lcom/google/common/collect/Q1$t;

    invoke-static {v1}, Lcom/google/common/collect/Q1;->h(Lcom/google/common/collect/Q1$t;)Lw2/t;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/C;->m(Ljava/util/Collection;Lw2/t;)Ljava/util/Collection;

    move-result-object v0

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
            "TV2;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/U1$j;->g:Lcom/google/common/collect/S1;

    invoke-interface {v0, p1}, Lcom/google/common/collect/S1;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/U1$j;->l(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public h()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV2;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/U1$j;->g:Lcom/google/common/collect/S1;

    invoke-interface {v0}, Lcom/google/common/collect/S1;->v()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/U1$j;->h:Lcom/google/common/collect/Q1$t;

    invoke-static {v1}, Lcom/google/common/collect/Q1;->g(Lcom/google/common/collect/Q1$t;)Lw2/t;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/E1;->c0(Ljava/util/Iterator;Lw2/t;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/U1$j;->g:Lcom/google/common/collect/S1;

    invoke-interface {v0}, Lcom/google/common/collect/S1;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public l(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection<",
            "TV1;>;)",
            "Ljava/util/Collection<",
            "TV2;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/U1$j;->h:Lcom/google/common/collect/Q1$t;

    invoke-static {v0, p1}, Lcom/google/common/collect/Q1;->n(Lcom/google/common/collect/Q1$t;Ljava/lang/Object;)Lw2/t;

    move-result-object p1

    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/util/List;

    invoke-static {p2, p1}, Lcom/google/common/collect/M1;->D(Ljava/util/List;Lw2/t;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p2, p1}, Lcom/google/common/collect/C;->m(Ljava/util/Collection;Lw2/t;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV2;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/google/common/collect/U1$j;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/U1$j;->g:Lcom/google/common/collect/S1;

    invoke-interface {v0}, Lcom/google/common/collect/S1;->size()I

    move-result v0

    return v0
.end method

.method public w(Lcom/google/common/collect/S1;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/S1<",
            "+TK;+TV2;>;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
