.class public Lcom/google/common/collect/Y2;
.super Lcom/google/common/collect/P2;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Y2$c;,
        Lcom/google/common/collect/Y2$b;
    }
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
        "Lcom/google/common/collect/P2<",
        "TR;TC;TV;>;"
    }
.end annotation

.annotation build Lv2/b;
    serializable = true
.end annotation


# static fields
.field public static final l:J


# instance fields
.field public final k:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Comparator;Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TR;>;",
            "Ljava/util/Comparator<",
            "-TC;>;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    new-instance p1, Lcom/google/common/collect/Y2$b;

    invoke-direct {p1, p2}, Lcom/google/common/collect/Y2$b;-><init>(Ljava/util/Comparator;)V

    invoke-direct {p0, v0, p1}, Lcom/google/common/collect/P2;-><init>(Ljava/util/SortedMap;Lw2/Q;)V

    iput-object p2, p0, Lcom/google/common/collect/Y2;->k:Ljava/util/Comparator;

    return-void
.end method

.method public static synthetic C(Ljava/util/Map;)Ljava/util/Iterator;
    .locals 0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Ljava/util/Map;)Ljava/util/Iterator;
    .locals 0

    invoke-static {p0}, Lcom/google/common/collect/Y2;->C(Ljava/util/Map;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static w()Lcom/google/common/collect/Y2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Ljava/lang/Comparable;",
            "C::",
            "Ljava/lang/Comparable;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/Y2<",
            "TR;TC;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/Y2;

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/Y2;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static y(Lcom/google/common/collect/Y2;)Lcom/google/common/collect/Y2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/common/collect/Y2<",
            "TR;TC;+TV;>;)",
            "Lcom/google/common/collect/Y2<",
            "TR;TC;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/Y2;

    invoke-virtual {p0}, Lcom/google/common/collect/Y2;->E()Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/collect/Y2;->v()Ljava/util/Comparator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/Y2;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;)V

    invoke-virtual {v0, p0}, Lcom/google/common/collect/Y2;->Y(Lcom/google/common/collect/S2;)V

    return-object v0
.end method

.method public static z(Ljava/util/Comparator;Ljava/util/Comparator;)Lcom/google/common/collect/Y2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TR;>;",
            "Ljava/util/Comparator<",
            "-TC;>;)",
            "Lcom/google/common/collect/Y2<",
            "TR;TC;TV;>;"
        }
    .end annotation

    invoke-static {p0}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/Y2;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Y2;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic A()Ljava/util/Map;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/Q2;->A()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic B(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/Q2;->B(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public D(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/SortedMap<",
            "TC;TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/Y2$c;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/Y2$c;-><init>(Lcom/google/common/collect/Y2;Ljava/lang/Object;)V

    return-object v0
.end method

.method public E()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TR;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/Y2;->x()Ljava/util/SortedSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/util/Comparator;

    return-object v0
.end method

.method public bridge synthetic L(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build LI2/a;
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/google/common/collect/Q2;->L(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic Q(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/Q2;->Q(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic Y(Lcom/google/common/collect/S2;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/google/common/collect/q;->Y(Lcom/google/common/collect/S2;)V

    return-void
.end method

.method public bridge synthetic c0()Ljava/util/Set;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/Q2;->c0()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()V
    .locals 0

    invoke-super {p0}, Lcom/google/common/collect/Q2;->clear()V

    return-void
.end method

.method public bridge synthetic containsValue(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/google/common/collect/Q2;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic d0()Ljava/util/Set;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/Q2;->d0()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/Q2;->e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic e0(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/google/common/collect/Q2;->e0(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/google/common/collect/q;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic g(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/google/common/collect/Q2;->g(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/q;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic i0(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Y2;->D(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/Q2;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public k()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TC;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/Y2;->v()Ljava/util/Comparator;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/collect/Q2;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    new-instance v2, Lcom/google/common/collect/X2;

    invoke-direct {v2}, Lcom/google/common/collect/X2;-><init>()V

    invoke-static {v1, v2}, Lcom/google/common/collect/D1;->U(Ljava/lang/Iterable;Lw2/t;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/common/collect/E1;->O(Ljava/lang/Iterable;Ljava/util/Comparator;)Lcom/google/common/collect/e3;

    move-result-object v1

    new-instance v2, Lcom/google/common/collect/Y2$a;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/common/collect/Y2$a;-><init>(Lcom/google/common/collect/Y2;Ljava/util/Iterator;Ljava/util/Comparator;)V

    return-object v2
.end method

.method public bridge synthetic remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
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

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/google/common/collect/Q2;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic size()I
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/Q2;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/q;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic u()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/Y2;->u()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public u()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0}, Lcom/google/common/collect/P2;->u()Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public v()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TC;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Y2;->k:Ljava/util/Comparator;

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/Q2;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic x()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/Y2;->x()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public x()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "TR;>;"
        }
    .end annotation

    .line 2
    invoke-super {p0}, Lcom/google/common/collect/P2;->x()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method
