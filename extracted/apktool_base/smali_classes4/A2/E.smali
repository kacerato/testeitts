.class public LA2/E;
.super LA2/w;
.source "SourceFile"


# annotations
.annotation runtime LA2/t;
.end annotation

.annotation runtime LI2/j;
    containerOf = {
        "N"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LA2/E$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "LA2/w<",
        "TN;>;"
    }
.end annotation

.annotation build Lv2/a;
.end annotation


# instance fields
.field public final a:LA2/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LA2/k<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LA2/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LA2/k<",
            "TN;>;)V"
        }
    .end annotation

    invoke-direct {p0}, LA2/w;-><init>()V

    iput-object p1, p0, LA2/E;->a:LA2/k;

    return-void
.end method

.method public static R(LA2/z;Ljava/lang/Object;)LA2/B;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "LA2/z<",
            "TN;>;TN;)",
            "LA2/B<",
            "TN;",
            "LA2/C$a;",
            ">;"
        }
    .end annotation

    sget-object v0, LA2/C$a;->EDGE_EXISTS:LA2/C$a;

    invoke-static {v0}, Lw2/v;->b(Ljava/lang/Object;)Lw2/t;

    move-result-object v0

    invoke-interface {p0}, LA2/z;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0, p1}, LA2/z;->n(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p1, p0, v0}, LA2/o;->x(Ljava/lang/Object;Ljava/lang/Iterable;Lw2/t;)LA2/o;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, LA2/z;->d(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/google/common/collect/Q1;->j(Ljava/util/Set;Lw2/t;)Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, LA2/g0;->l(Ljava/util/Map;)LA2/g0;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static S(LA2/z;)LA2/E;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "LA2/z<",
            "TN;>;)",
            "LA2/E<",
            "TN;>;"
        }
    .end annotation

    instance-of v0, p0, LA2/E;

    if-eqz v0, :cond_0

    check-cast p0, LA2/E;

    goto :goto_0

    :cond_0
    new-instance v0, LA2/E;

    new-instance v1, LA2/c0;

    invoke-static {p0}, LA2/A;->g(LA2/z;)LA2/A;

    move-result-object v2

    invoke-static {p0}, LA2/E;->U(LA2/z;)Lcom/google/common/collect/i1;

    move-result-object v3

    invoke-interface {p0}, LA2/z;->g()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    int-to-long v4, p0

    invoke-direct {v1, v2, v3, v4, v5}, LA2/c0;-><init>(LA2/g;Ljava/util/Map;J)V

    invoke-direct {v0, v1}, LA2/E;-><init>(LA2/k;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static T(LA2/E;)LA2/E;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "LA2/E<",
            "TN;>;)",
            "LA2/E<",
            "TN;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LA2/E;

    return-object p0
.end method

.method public static U(LA2/z;)Lcom/google/common/collect/i1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "LA2/z<",
            "TN;>;)",
            "Lcom/google/common/collect/i1<",
            "TN;",
            "LA2/B<",
            "TN;",
            "LA2/C$a;",
            ">;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/i1;->i()Lcom/google/common/collect/i1$b;

    move-result-object v0

    invoke-interface {p0}, LA2/z;->e()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v2}, LA2/E;->R(LA2/z;Ljava/lang/Object;)LA2/B;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/common/collect/i1$b;->i(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1$b;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/common/collect/i1$b;->d()Lcom/google/common/collect/i1;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public Q()LA2/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LA2/k<",
            "TN;>;"
        }
    .end annotation

    iget-object v0, p0, LA2/E;->a:LA2/k;

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    invoke-super {p0, p1}, LA2/w;->a(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    invoke-super {p0, p1}, LA2/w;->b(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic c()Z
    .locals 1

    invoke-super {p0}, LA2/w;->c()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic d(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    invoke-super {p0, p1}, LA2/w;->d(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e()Ljava/util/Set;
    .locals 1

    invoke-super {p0}, LA2/w;->e()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic f(Ljava/lang/Object;)I
    .locals 0

    invoke-super {p0, p1}, LA2/w;->f(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic h(LA2/u;)Z
    .locals 0

    invoke-super {p0, p1}, LA2/w;->h(LA2/u;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic i(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1, p2}, LA2/w;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic j(Ljava/lang/Object;)I
    .locals 0

    invoke-super {p0, p1}, LA2/w;->j(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic k()LA2/s;
    .locals 1

    invoke-super {p0}, LA2/w;->k()LA2/s;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic l(Ljava/lang/Object;)I
    .locals 0

    invoke-super {p0, p1}, LA2/w;->l(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic m()Z
    .locals 1

    invoke-super {p0}, LA2/w;->m()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic n(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    invoke-super {p0, p1}, LA2/w;->n(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public q()LA2/s;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "LA2/s<",
            "TN;>;"
        }
    .end annotation

    invoke-static {}, LA2/s;->g()LA2/s;

    move-result-object v0

    return-object v0
.end method
