.class public final LA2/p;
.super LA2/e;
.source "SourceFile"


# annotations
.annotation runtime LA2/t;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "LA2/e<",
        "TN;TE;>;"
    }
.end annotation


# instance fields
.field public transient d:Ljava/lang/ref/Reference;
    .annotation runtime LJ2/b;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Lcom/google/common/collect/V1<",
            "TN;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public transient e:Ljava/lang/ref/Reference;
    .annotation runtime LJ2/b;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Lcom/google/common/collect/V1<",
            "TN;>;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TE;TN;>;",
            "Ljava/util/Map<",
            "TE;TN;>;I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, LA2/e;-><init>(Ljava/util/Map;Ljava/util/Map;I)V

    return-void
.end method

.method public static synthetic n(LA2/p;)Lcom/google/common/collect/V1;
    .locals 0

    invoke-virtual {p0}, LA2/p;->s()Lcom/google/common/collect/V1;

    move-result-object p0

    return-object p0
.end method

.method public static o(Ljava/lang/ref/Reference;)Ljava/lang/Object;
    .locals 0
    .param p0    # Ljava/lang/ref/Reference;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/ref/Reference<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static p()LA2/p;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">()",
            "LA2/p<",
            "TN;TE;>;"
        }
    .end annotation

    new-instance v0, LA2/p;

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Ljava/util/HashMap;-><init>(IF)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v2, v3}, Ljava/util/HashMap;-><init>(IF)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v4, v2}, LA2/p;-><init>(Ljava/util/Map;Ljava/util/Map;I)V

    return-object v0
.end method

.method public static q(Ljava/util/Map;Ljava/util/Map;I)LA2/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TE;TN;>;",
            "Ljava/util/Map<",
            "TE;TN;>;I)",
            "LA2/p<",
            "TN;TE;>;"
        }
    .end annotation

    new-instance v0, LA2/p;

    invoke-static {p0}, Lcom/google/common/collect/i1;->n(Ljava/util/Map;)Lcom/google/common/collect/i1;

    move-result-object p0

    invoke-static {p1}, Lcom/google/common/collect/i1;->n(Ljava/util/Map;)Lcom/google/common/collect/i1;

    move-result-object p1

    invoke-direct {v0, p0, p1, p2}, LA2/p;-><init>(Ljava/util/Map;Ljava/util/Map;I)V

    return-object v0
.end method


# virtual methods
.method public b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    invoke-virtual {p0}, LA2/p;->s()Lcom/google/common/collect/V1;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/V1;->S1()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    invoke-virtual {p0}, LA2/p;->r()Lcom/google/common/collect/V1;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/V1;->S1()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TN;"
        }
    .end annotation

    invoke-super {p0, p1}, LA2/e;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, LA2/p;->e:Ljava/lang/ref/Reference;

    invoke-static {v0}, LA2/p;->o(Ljava/lang/ref/Reference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/V1;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/common/collect/V1;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lw2/H;->g0(Z)V

    :cond_0
    return-object p1
.end method

.method public h(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)TN;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, LA2/e;->h(Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, LA2/p;->d:Ljava/lang/ref/Reference;

    invoke-static {p2}, LA2/p;->o(Ljava/lang/ref/Reference;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/common/collect/V1;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/google/common/collect/V1;->remove(Ljava/lang/Object;)Z

    move-result p2

    invoke-static {p2}, Lw2/H;->g0(Z)V

    :cond_0
    return-object p1
.end method

.method public i(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TN;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, LA2/e;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, LA2/p;->e:Ljava/lang/ref/Reference;

    invoke-static {p1}, LA2/p;->o(Ljava/lang/ref/Reference;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/V1;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/google/common/collect/V1;->add(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lw2/H;->g0(Z)V

    :cond_0
    return-void
.end method

.method public j(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TN;Z)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, LA2/e;->j(Ljava/lang/Object;Ljava/lang/Object;Z)V

    iget-object p1, p0, LA2/p;->d:Ljava/lang/ref/Reference;

    invoke-static {p1}, LA2/p;->o(Ljava/lang/ref/Reference;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/V1;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/google/common/collect/V1;->add(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lw2/H;->g0(Z)V

    :cond_0
    return-void
.end method

.method public l(Ljava/lang/Object;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, LA2/p$a;

    iget-object v1, p0, LA2/e;->b:Ljava/util/Map;

    invoke-direct {v0, p0, v1, p1, p1}, LA2/p$a;-><init>(LA2/p;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final r()Lcom/google/common/collect/V1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/V1<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, LA2/p;->d:Ljava/lang/ref/Reference;

    invoke-static {v0}, LA2/p;->o(Ljava/lang/ref/Reference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/V1;

    if-nez v0, :cond_0

    iget-object v0, p0, LA2/e;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/X0;->o(Ljava/lang/Iterable;)Lcom/google/common/collect/X0;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, LA2/p;->d:Ljava/lang/ref/Reference;

    :cond_0
    return-object v0
.end method

.method public final s()Lcom/google/common/collect/V1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/V1<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, LA2/p;->e:Ljava/lang/ref/Reference;

    invoke-static {v0}, LA2/p;->o(Ljava/lang/ref/Reference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/V1;

    if-nez v0, :cond_0

    iget-object v0, p0, LA2/e;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/X0;->o(Ljava/lang/Iterable;)Lcom/google/common/collect/X0;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, LA2/p;->e:Ljava/lang/ref/Reference;

    :cond_0
    return-object v0
.end method
