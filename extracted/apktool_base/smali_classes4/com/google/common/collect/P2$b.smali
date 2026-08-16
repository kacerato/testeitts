.class public Lcom/google/common/collect/P2$b;
.super Lcom/google/common/collect/Q2$h;
.source "SourceFile"

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/P2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Q2<",
        "TR;TC;TV;>.h;",
        "Ljava/util/SortedMap<",
        "TR;",
        "Ljava/util/Map<",
        "TC;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic f:Lcom/google/common/collect/P2;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/P2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/collect/P2$b;->f:Lcom/google/common/collect/P2;

    invoke-direct {p0, p1}, Lcom/google/common/collect/Q2$h;-><init>(Lcom/google/common/collect/Q2;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/collect/P2;Lcom/google/common/collect/P2$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/collect/P2$b;-><init>(Lcom/google/common/collect/P2;)V

    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TR;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/P2$b;->f:Lcom/google/common/collect/P2;

    invoke-static {v0}, Lcom/google/common/collect/P2;->p(Lcom/google/common/collect/P2;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/P2$b;->f:Lcom/google/common/collect/P2;

    invoke-static {v0}, Lcom/google/common/collect/P2;->p(Lcom/google/common/collect/P2;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/SortedMap<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/P2;

    iget-object v1, p0, Lcom/google/common/collect/P2$b;->f:Lcom/google/common/collect/P2;

    invoke-static {v1}, Lcom/google/common/collect/P2;->p(Lcom/google/common/collect/P2;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    iget-object v1, p0, Lcom/google/common/collect/P2$b;->f:Lcom/google/common/collect/P2;

    iget-object v1, v1, Lcom/google/common/collect/Q2;->e:Lw2/Q;

    invoke-direct {v0, p1, v1}, Lcom/google/common/collect/P2;-><init>(Ljava/util/SortedMap;Lw2/Q;)V

    invoke-virtual {v0}, Lcom/google/common/collect/P2;->u()Ljava/util/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic i()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/P2$b;->m()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/P2$b;->n()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/P2$b;->f:Lcom/google/common/collect/P2;

    invoke-static {v0}, Lcom/google/common/collect/P2;->p(Lcom/google/common/collect/P2;)Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "TR;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/Q1$G;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Q1$G;-><init>(Ljava/util/SortedMap;)V

    return-object v0
.end method

.method public n()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "TR;>;"
        }
    .end annotation

    invoke-super {p0}, Lcom/google/common/collect/Q1$R;->keySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TR;)",
            "Ljava/util/SortedMap<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/P2;

    iget-object v1, p0, Lcom/google/common/collect/P2$b;->f:Lcom/google/common/collect/P2;

    invoke-static {v1}, Lcom/google/common/collect/P2;->p(Lcom/google/common/collect/P2;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    iget-object p2, p0, Lcom/google/common/collect/P2$b;->f:Lcom/google/common/collect/P2;

    iget-object p2, p2, Lcom/google/common/collect/Q2;->e:Lw2/Q;

    invoke-direct {v0, p1, p2}, Lcom/google/common/collect/P2;-><init>(Ljava/util/SortedMap;Lw2/Q;)V

    invoke-virtual {v0}, Lcom/google/common/collect/P2;->u()Ljava/util/SortedMap;

    move-result-object p1

    return-object p1
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/SortedMap<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/common/collect/P2;

    iget-object v1, p0, Lcom/google/common/collect/P2$b;->f:Lcom/google/common/collect/P2;

    invoke-static {v1}, Lcom/google/common/collect/P2;->p(Lcom/google/common/collect/P2;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object p1

    iget-object v1, p0, Lcom/google/common/collect/P2$b;->f:Lcom/google/common/collect/P2;

    iget-object v1, v1, Lcom/google/common/collect/Q2;->e:Lw2/Q;

    invoke-direct {v0, p1, v1}, Lcom/google/common/collect/P2;-><init>(Ljava/util/SortedMap;Lw2/Q;)V

    invoke-virtual {v0}, Lcom/google/common/collect/P2;->u()Ljava/util/SortedMap;

    move-result-object p1

    return-object p1
.end method
