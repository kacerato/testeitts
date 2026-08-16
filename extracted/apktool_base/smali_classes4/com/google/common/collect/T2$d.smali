.class public Lcom/google/common/collect/T2$d;
.super Lcom/google/common/collect/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/T2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V1:",
        "Ljava/lang/Object;",
        "V2:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/q<",
        "TR;TC;TV2;>;"
    }
.end annotation


# instance fields
.field public final d:Lcom/google/common/collect/S2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/S2<",
            "TR;TC;TV1;>;"
        }
    .end annotation
.end field

.field public final e:Lw2/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw2/t<",
            "-TV1;TV2;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/S2;Lw2/t;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/S2<",
            "TR;TC;TV1;>;",
            "Lw2/t<",
            "-TV1;TV2;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/q;-><init>()V

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/S2;

    iput-object p1, p0, Lcom/google/common/collect/T2$d;->d:Lcom/google/common/collect/S2;

    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lw2/t;

    iput-object p1, p0, Lcom/google/common/collect/T2$d;->e:Lw2/t;

    return-void
.end method


# virtual methods
.method public A()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TC;",
            "Ljava/util/Map<",
            "TR;TV2;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/T2$d$c;

    invoke-direct {v0, p0}, Lcom/google/common/collect/T2$d$c;-><init>(Lcom/google/common/collect/T2$d;)V

    iget-object v1, p0, Lcom/google/common/collect/T2$d;->d:Lcom/google/common/collect/S2;

    invoke-interface {v1}, Lcom/google/common/collect/S2;->A()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/collect/Q1;->B0(Ljava/util/Map;Lw2/t;)Ljava/util/Map;

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
            "TR;TV2;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/T2$d;->d:Lcom/google/common/collect/S2;

    invoke-interface {v0, p1}, Lcom/google/common/collect/S2;->B(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/collect/T2$d;->e:Lw2/t;

    invoke-static {p1, v0}, Lcom/google/common/collect/Q1;->B0(Ljava/util/Map;Lw2/t;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public L(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;TV2;)TV2;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
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

    iget-object v0, p0, Lcom/google/common/collect/T2$d;->d:Lcom/google/common/collect/S2;

    invoke-interface {v0, p1, p2}, Lcom/google/common/collect/S2;->Q(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public Y(Lcom/google/common/collect/S2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/S2<",
            "+TR;+TC;+TV2;>;)V"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public a()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/S2$a<",
            "TR;TC;TV2;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/T2$d;->d:Lcom/google/common/collect/S2;

    invoke-interface {v0}, Lcom/google/common/collect/S2;->c0()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/collect/T2$d;->f()Lw2/t;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/E1;->c0(Ljava/util/Iterator;Lw2/t;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV2;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/T2$d;->d:Lcom/google/common/collect/S2;

    invoke-interface {v0}, Lcom/google/common/collect/S2;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/T2$d;->e:Lw2/t;

    invoke-static {v0, v1}, Lcom/google/common/collect/C;->m(Ljava/util/Collection;Lw2/t;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/T2$d;->d:Lcom/google/common/collect/S2;

    invoke-interface {v0}, Lcom/google/common/collect/S2;->clear()V

    return-void
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

    iget-object v0, p0, Lcom/google/common/collect/T2$d;->d:Lcom/google/common/collect/S2;

    invoke-interface {v0}, Lcom/google/common/collect/S2;->d0()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
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
            ")TV2;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/T2$d;->Q(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/T2$d;->e:Lw2/t;

    iget-object v1, p0, Lcom/google/common/collect/T2$d;->d:Lcom/google/common/collect/S2;

    invoke-interface {v1, p1, p2}, Lcom/google/common/collect/S2;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Z1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lw2/t;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public f()Lw2/t;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw2/t<",
            "Lcom/google/common/collect/S2$a<",
            "TR;TC;TV1;>;",
            "Lcom/google/common/collect/S2$a<",
            "TR;TC;TV2;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/T2$d$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/T2$d$a;-><init>(Lcom/google/common/collect/T2$d;)V

    return-object v0
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
            "TC;TV2;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/T2$d;->d:Lcom/google/common/collect/S2;

    invoke-interface {v0, p1}, Lcom/google/common/collect/S2;->i0(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/collect/T2$d;->e:Lw2/t;

    invoke-static {p1, v0}, Lcom/google/common/collect/Q1;->B0(Ljava/util/Map;Lw2/t;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
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
            ")TV2;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/T2$d;->Q(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/T2$d;->e:Lw2/t;

    iget-object v1, p0, Lcom/google/common/collect/T2$d;->d:Lcom/google/common/collect/S2;

    invoke-interface {v1, p1, p2}, Lcom/google/common/collect/S2;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Z1;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lw2/t;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/T2$d;->d:Lcom/google/common/collect/S2;

    invoke-interface {v0}, Lcom/google/common/collect/S2;->size()I

    move-result v0

    return v0
.end method

.method public u()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV2;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/T2$d$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/T2$d$b;-><init>(Lcom/google/common/collect/T2$d;)V

    iget-object v1, p0, Lcom/google/common/collect/T2$d;->d:Lcom/google/common/collect/S2;

    invoke-interface {v1}, Lcom/google/common/collect/S2;->u()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/collect/Q1;->B0(Ljava/util/Map;Lw2/t;)Ljava/util/Map;

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

    iget-object v0, p0, Lcom/google/common/collect/T2$d;->d:Lcom/google/common/collect/S2;

    invoke-interface {v0}, Lcom/google/common/collect/S2;->x()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
