.class public final LA2/q;
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

.method public static n()LA2/q;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">()",
            "LA2/q<",
            "TN;TE;>;"
        }
    .end annotation

    new-instance v0, LA2/q;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/google/common/collect/U0;->j(I)Lcom/google/common/collect/U0;

    move-result-object v2

    invoke-static {v1}, Lcom/google/common/collect/U0;->j(I)Lcom/google/common/collect/U0;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, LA2/q;-><init>(Ljava/util/Map;Ljava/util/Map;I)V

    return-object v0
.end method

.method public static o(Ljava/util/Map;Ljava/util/Map;I)LA2/q;
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
            "LA2/q<",
            "TN;TE;>;"
        }
    .end annotation

    new-instance v0, LA2/q;

    invoke-static {p0}, Lcom/google/common/collect/a1;->Q(Ljava/util/Map;)Lcom/google/common/collect/a1;

    move-result-object p0

    invoke-static {p1}, Lcom/google/common/collect/a1;->Q(Ljava/util/Map;)Lcom/google/common/collect/a1;

    move-result-object p1

    invoke-direct {v0, p0, p1, p2}, LA2/q;-><init>(Ljava/util/Map;Ljava/util/Map;I)V

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

    iget-object v0, p0, LA2/e;->b:Ljava/util/Map;

    check-cast v0, Lcom/google/common/collect/w;

    invoke-interface {v0}, Lcom/google/common/collect/w;->values()Ljava/util/Set;

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

    iget-object v0, p0, LA2/e;->a:Ljava/util/Map;

    check-cast v0, Lcom/google/common/collect/w;

    invoke-interface {v0}, Lcom/google/common/collect/w;->values()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
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

    new-instance v0, LA2/r;

    iget-object v1, p0, LA2/e;->b:Ljava/util/Map;

    check-cast v1, Lcom/google/common/collect/w;

    invoke-interface {v1}, Lcom/google/common/collect/w;->A8()Lcom/google/common/collect/w;

    move-result-object v1

    invoke-direct {v0, v1, p1}, LA2/r;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    return-object v0
.end method
