.class public final Lcom/google/common/collect/a1$a;
.super Lcom/google/common/collect/i1$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/a1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/i1$b<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/collect/i1$b;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/i1$b;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Lcom/google/common/collect/i1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/a1$a;->n()Lcom/google/common/collect/a1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()Lcom/google/common/collect/i1;
    .locals 1
    .annotation build LI2/e;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/a1$a;->o()Lcom/google/common/collect/a1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Lcom/google/common/collect/i1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/a1$a;->p()Lcom/google/common/collect/a1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic e(Lcom/google/common/collect/i1$b;)Lcom/google/common/collect/i1$b;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/a1$a;->q(Lcom/google/common/collect/i1$b;)Lcom/google/common/collect/a1$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic h(Ljava/util/Comparator;)Lcom/google/common/collect/i1$b;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/a1$a;->r(Ljava/util/Comparator;)Lcom/google/common/collect/a1$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic i(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1$b;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/a1$a;->s(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/a1$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic j(Ljava/util/Map$Entry;)Lcom/google/common/collect/i1$b;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/a1$a;->t(Ljava/util/Map$Entry;)Lcom/google/common/collect/a1$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic k(Ljava/lang/Iterable;)Lcom/google/common/collect/i1$b;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/a1$a;->u(Ljava/lang/Iterable;)Lcom/google/common/collect/a1$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic l(Ljava/util/Map;)Lcom/google/common/collect/i1$b;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/a1$a;->v(Ljava/util/Map;)Lcom/google/common/collect/a1$a;

    move-result-object p1

    return-object p1
.end method

.method public n()Lcom/google/common/collect/a1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/a1<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/a1$a;->p()Lcom/google/common/collect/a1;

    move-result-object v0

    return-object v0
.end method

.method public o()Lcom/google/common/collect/a1;
    .locals 2
    .annotation build LI2/e;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/a1<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported for bimaps"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public p()Lcom/google/common/collect/a1;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/a1<",
            "TK;TV;>;"
        }
    .end annotation

    iget v0, p0, Lcom/google/common/collect/i1$b;->c:I

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/a1;->U()Lcom/google/common/collect/a1;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/google/common/collect/i1$b;->a:Ljava/util/Comparator;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/google/common/collect/i1$b;->d:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/common/collect/i1$b;->b:[Ljava/lang/Object;

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/i1$b;->b:[Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/i1$b;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/i1$b;->c:I

    iget-object v2, p0, Lcom/google/common/collect/i1$b;->a:Ljava/util/Comparator;

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/i1$b;->m([Ljava/lang/Object;ILjava/util/Comparator;)V

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/common/collect/i1$b;->d:Z

    new-instance v0, Lcom/google/common/collect/p2;

    iget-object v1, p0, Lcom/google/common/collect/i1$b;->b:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/i1$b;->c:I

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/p2;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method

.method public q(Lcom/google/common/collect/i1$b;)Lcom/google/common/collect/a1$a;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/i1$b<",
            "TK;TV;>;)",
            "Lcom/google/common/collect/a1$a<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/i1$b;->e(Lcom/google/common/collect/i1$b;)Lcom/google/common/collect/i1$b;

    return-object p0
.end method

.method public r(Ljava/util/Comparator;)Lcom/google/common/collect/a1$a;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TV;>;)",
            "Lcom/google/common/collect/a1$a<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/i1$b;->h(Ljava/util/Comparator;)Lcom/google/common/collect/i1$b;

    return-object p0
.end method

.method public s(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/a1$a;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/common/collect/a1$a<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/i1$b;->i(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/i1$b;

    return-object p0
.end method

.method public t(Ljava/util/Map$Entry;)Lcom/google/common/collect/a1$a;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/a1$a<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/i1$b;->j(Ljava/util/Map$Entry;)Lcom/google/common/collect/i1$b;

    return-object p0
.end method

.method public u(Ljava/lang/Iterable;)Lcom/google/common/collect/a1$a;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)",
            "Lcom/google/common/collect/a1$a<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/i1$b;->k(Ljava/lang/Iterable;)Lcom/google/common/collect/i1$b;

    return-object p0
.end method

.method public v(Ljava/util/Map;)Lcom/google/common/collect/a1$a;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Lcom/google/common/collect/a1$a<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/google/common/collect/i1$b;->l(Ljava/util/Map;)Lcom/google/common/collect/i1$b;

    return-object p0
.end method
