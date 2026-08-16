.class public abstract Lcom/google/common/collect/O;
.super Lcom/google/common/collect/x1;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Lcom/google/common/collect/x1<",
        "TC;>;"
    }
.end annotation

.annotation build Lv2/b;
    emulated = true
.end annotation


# instance fields
.field public final i:Lcom/google/common/collect/W;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/W<",
            "TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/W;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/W<",
            "TC;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/x1;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Lcom/google/common/collect/O;->i:Lcom/google/common/collect/W;

    return-void
.end method

.method public static B0(JJ)Lcom/google/common/collect/O;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lcom/google/common/collect/O<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/j2;->f(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/j2;

    move-result-object p0

    invoke-static {}, Lcom/google/common/collect/W;->d()Lcom/google/common/collect/W;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/O;->E0(Lcom/google/common/collect/j2;Lcom/google/common/collect/W;)Lcom/google/common/collect/O;

    move-result-object p0

    return-object p0
.end method

.method public static C0(II)Lcom/google/common/collect/O;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/O<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/j2;->g(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/j2;

    move-result-object p0

    invoke-static {}, Lcom/google/common/collect/W;->c()Lcom/google/common/collect/W;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/O;->E0(Lcom/google/common/collect/j2;Lcom/google/common/collect/W;)Lcom/google/common/collect/O;

    move-result-object p0

    return-object p0
.end method

.method public static D0(JJ)Lcom/google/common/collect/O;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Lcom/google/common/collect/O<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/j2;->g(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/j2;

    move-result-object p0

    invoke-static {}, Lcom/google/common/collect/W;->d()Lcom/google/common/collect/W;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/O;->E0(Lcom/google/common/collect/j2;Lcom/google/common/collect/W;)Lcom/google/common/collect/O;

    move-result-object p0

    return-object p0
.end method

.method public static E0(Lcom/google/common/collect/j2;Lcom/google/common/collect/W;)Lcom/google/common/collect/O;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">(",
            "Lcom/google/common/collect/j2<",
            "TC;>;",
            "Lcom/google/common/collect/W<",
            "TC;>;)",
            "Lcom/google/common/collect/O<",
            "TC;>;"
        }
    .end annotation

    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p0}, Lcom/google/common/collect/j2;->q()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/common/collect/W;->f()Ljava/lang/Comparable;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/j2;->c(Ljava/lang/Comparable;)Lcom/google/common/collect/j2;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/j2;->s(Lcom/google/common/collect/j2;)Lcom/google/common/collect/j2;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_0
    move-object v0, p0

    :goto_0
    invoke-virtual {p0}, Lcom/google/common/collect/j2;->r()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/google/common/collect/W;->e()Ljava/lang/Comparable;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/collect/j2;->d(Ljava/lang/Comparable;)Lcom/google/common/collect/j2;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/j2;->s(Lcom/google/common/collect/j2;)Lcom/google/common/collect/j2;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    invoke-virtual {v0}, Lcom/google/common/collect/j2;->v()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/Q;->o(Lcom/google/common/collect/W;)Ljava/lang/Comparable;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Ljava/lang/Comparable;

    iget-object p0, p0, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Q;->k(Lcom/google/common/collect/W;)Ljava/lang/Comparable;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Ljava/lang/Comparable;

    invoke-static {v1, p0}, Lcom/google/common/collect/j2;->h(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    if-lez p0, :cond_3

    :goto_1
    new-instance p0, Lcom/google/common/collect/Y;

    invoke-direct {p0, p1}, Lcom/google/common/collect/Y;-><init>(Lcom/google/common/collect/W;)V

    goto :goto_2

    :cond_3
    new-instance p0, Lcom/google/common/collect/n2;

    invoke-direct {p0, v0, p1}, Lcom/google/common/collect/n2;-><init>(Lcom/google/common/collect/j2;Lcom/google/common/collect/W;)V

    :goto_2
    return-object p0

    :goto_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static H()Lcom/google/common/collect/x1$a;
    .locals 1
    .annotation build LI2/e;
        value = "Always throws UnsupportedOperationException"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/x1$a<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static z0(II)Lcom/google/common/collect/O;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/O<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lv2/a;
    .end annotation

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/j2;->f(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/j2;

    move-result-object p0

    invoke-static {}, Lcom/google/common/collect/W;->c()Lcom/google/common/collect/W;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/common/collect/O;->E0(Lcom/google/common/collect/j2;Lcom/google/common/collect/W;)Lcom/google/common/collect/O;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public F0(Ljava/lang/Comparable;)Lcom/google/common/collect/O;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lcom/google/common/collect/O<",
            "TC;>;"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/O;->H0(Ljava/lang/Comparable;Z)Lcom/google/common/collect/O;

    move-result-object p1

    return-object p1
.end method

.method public G0(Ljava/lang/Comparable;Z)Lcom/google/common/collect/O;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;Z)",
            "Lcom/google/common/collect/O<",
            "TC;>;"
        }
    .end annotation

    .annotation build Lv2/c;
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/O;->H0(Ljava/lang/Comparable;Z)Lcom/google/common/collect/O;

    move-result-object p1

    return-object p1
.end method

.method public abstract H0(Ljava/lang/Comparable;Z)Lcom/google/common/collect/O;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;Z)",
            "Lcom/google/common/collect/O<",
            "TC;>;"
        }
    .end annotation
.end method

.method public abstract I0(Lcom/google/common/collect/O;)Lcom/google/common/collect/O;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/O<",
            "TC;>;)",
            "Lcom/google/common/collect/O<",
            "TC;>;"
        }
    .end annotation
.end method

.method public abstract J0()Lcom/google/common/collect/j2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/j2<",
            "TC;>;"
        }
    .end annotation
.end method

.method public abstract M0(Lcom/google/common/collect/x;Lcom/google/common/collect/x;)Lcom/google/common/collect/j2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/x;",
            "Lcom/google/common/collect/x;",
            ")",
            "Lcom/google/common/collect/j2<",
            "TC;>;"
        }
    .end annotation
.end method

.method public N0(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/O;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;TC;)",
            "Lcom/google/common/collect/O<",
            "TC;>;"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/common/collect/x1;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gtz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lw2/H;->d(Z)V

    invoke-virtual {p0, p1, v2, p2, v1}, Lcom/google/common/collect/O;->P0(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lcom/google/common/collect/O;

    move-result-object p1

    return-object p1
.end method

.method public O0(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lcom/google/common/collect/O;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;ZTC;Z)",
            "Lcom/google/common/collect/O<",
            "TC;>;"
        }
    .end annotation

    .annotation build Lv2/c;
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/common/collect/x1;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lw2/H;->d(Z)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/O;->P0(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lcom/google/common/collect/O;

    move-result-object p1

    return-object p1
.end method

.method public abstract P0(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lcom/google/common/collect/O;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;ZTC;Z)",
            "Lcom/google/common/collect/O<",
            "TC;>;"
        }
    .end annotation
.end method

.method public Q0(Ljava/lang/Comparable;)Lcom/google/common/collect/O;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lcom/google/common/collect/O<",
            "TC;>;"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/common/collect/O;->U0(Ljava/lang/Comparable;Z)Lcom/google/common/collect/O;

    move-result-object p1

    return-object p1
.end method

.method public R0(Ljava/lang/Comparable;Z)Lcom/google/common/collect/O;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;Z)",
            "Lcom/google/common/collect/O<",
            "TC;>;"
        }
    .end annotation

    .annotation build Lv2/c;
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/O;->U0(Ljava/lang/Comparable;Z)Lcom/google/common/collect/O;

    move-result-object p1

    return-object p1
.end method

.method public abstract U0(Ljava/lang/Comparable;Z)Lcom/google/common/collect/O;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;Z)",
            "Lcom/google/common/collect/O<",
            "TC;>;"
        }
    .end annotation
.end method

.method public Z()Lcom/google/common/collect/x1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/x1<",
            "TC;>;"
        }
    .end annotation

    .annotation build Lv2/c;
    .end annotation

    new-instance v0, Lcom/google/common/collect/U;

    invoke-direct {v0, p0}, Lcom/google/common/collect/U;-><init>(Lcom/google/common/collect/x1;)V

    return-object v0
.end method

.method public bridge synthetic d0(Ljava/lang/Object;)Lcom/google/common/collect/x1;
    .locals 0

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/O;->F0(Ljava/lang/Comparable;)Lcom/google/common/collect/O;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e0(Ljava/lang/Object;Z)Lcom/google/common/collect/x1;
    .locals 0
    .annotation build Lv2/c;
    .end annotation

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/O;->G0(Ljava/lang/Comparable;Z)Lcom/google/common/collect/O;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic f0(Ljava/lang/Object;Z)Lcom/google/common/collect/x1;
    .locals 0

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/O;->H0(Ljava/lang/Comparable;Z)Lcom/google/common/collect/O;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 0
    .annotation build Lv2/c;
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/O;->G0(Ljava/lang/Comparable;Z)Lcom/google/common/collect/O;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    .line 2
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/O;->F0(Ljava/lang/Comparable;)Lcom/google/common/collect/O;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic r0(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/x1;
    .locals 0

    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/O;->N0(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/O;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic s0(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/x1;
    .locals 0
    .annotation build Lv2/c;
    .end annotation

    check-cast p1, Ljava/lang/Comparable;

    check-cast p3, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/O;->O0(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lcom/google/common/collect/O;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 0
    .annotation build Lv2/c;
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Comparable;

    check-cast p3, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/O;->O0(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lcom/google/common/collect/O;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    .line 2
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/O;->N0(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/O;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic t0(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/x1;
    .locals 0

    check-cast p1, Ljava/lang/Comparable;

    check-cast p3, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/O;->P0(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lcom/google/common/collect/O;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 0
    .annotation build Lv2/c;
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/O;->R0(Ljava/lang/Comparable;Z)Lcom/google/common/collect/O;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    .line 2
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/O;->Q0(Ljava/lang/Comparable;)Lcom/google/common/collect/O;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/O;->J0()Lcom/google/common/collect/j2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/j2;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic u0(Ljava/lang/Object;)Lcom/google/common/collect/x1;
    .locals 0

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/O;->Q0(Ljava/lang/Comparable;)Lcom/google/common/collect/O;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic v0(Ljava/lang/Object;Z)Lcom/google/common/collect/x1;
    .locals 0
    .annotation build Lv2/c;
    .end annotation

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/O;->R0(Ljava/lang/Comparable;Z)Lcom/google/common/collect/O;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic w0(Ljava/lang/Object;Z)Lcom/google/common/collect/x1;
    .locals 0

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/O;->U0(Ljava/lang/Comparable;Z)Lcom/google/common/collect/O;

    move-result-object p1

    return-object p1
.end method
