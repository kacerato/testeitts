.class public final LA2/h0;
.super LA2/i;
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
        "LA2/i<",
        "TN;TE;>;"
    }
.end annotation


# instance fields
.field public transient b:Ljava/lang/ref/Reference;
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
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TE;TN;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, LA2/i;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic m(LA2/h0;)Lcom/google/common/collect/V1;
    .locals 0

    invoke-virtual {p0}, LA2/h0;->n()Lcom/google/common/collect/V1;

    move-result-object p0

    return-object p0
.end method

.method private static o(Ljava/lang/ref/Reference;)Ljava/lang/Object;
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

.method public static p()LA2/h0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">()",
            "LA2/h0<",
            "TN;TE;>;"
        }
    .end annotation

    new-instance v0, LA2/h0;

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Ljava/util/HashMap;-><init>(IF)V

    invoke-direct {v0, v1}, LA2/h0;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static q(Ljava/util/Map;)LA2/h0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TE;TN;>;)",
            "LA2/h0<",
            "TN;TE;>;"
        }
    .end annotation

    new-instance v0, LA2/h0;

    invoke-static {p0}, Lcom/google/common/collect/i1;->n(Ljava/util/Map;)Lcom/google/common/collect/i1;

    move-result-object p0

    invoke-direct {v0, p0}, LA2/h0;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    invoke-virtual {p0}, LA2/h0;->n()Lcom/google/common/collect/V1;

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

    invoke-super {p0, p1}, LA2/i;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, LA2/h0;->b:Ljava/lang/ref/Reference;

    invoke-static {v0}, LA2/h0;->o(Ljava/lang/ref/Reference;)Ljava/lang/Object;

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

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, LA2/h0;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public i(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TN;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, LA2/i;->i(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, LA2/h0;->b:Ljava/lang/ref/Reference;

    invoke-static {p1}, LA2/h0;->o(Ljava/lang/ref/Reference;)Ljava/lang/Object;

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

    if-nez p3, :cond_0

    invoke-virtual {p0, p1, p2}, LA2/h0;->i(Ljava/lang/Object;Ljava/lang/Object;)V

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

    new-instance v0, LA2/h0$a;

    iget-object v1, p0, LA2/i;->a:Ljava/util/Map;

    invoke-direct {v0, p0, v1, p1, p1}, LA2/h0$a;-><init>(LA2/h0;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final n()Lcom/google/common/collect/V1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/V1<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, LA2/h0;->b:Ljava/lang/ref/Reference;

    invoke-static {v0}, LA2/h0;->o(Ljava/lang/ref/Reference;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/V1;

    if-nez v0, :cond_0

    iget-object v0, p0, LA2/i;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/X0;->o(Ljava/lang/Iterable;)Lcom/google/common/collect/X0;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, LA2/h0;->b:Ljava/lang/ref/Reference;

    :cond_0
    return-object v0
.end method
