.class public abstract Lcom/google/common/collect/o;
.super Lcom/google/common/collect/i;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/K2;


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/i<",
        "TE;>;",
        "Lcom/google/common/collect/K2<",
        "TE;>;"
    }
.end annotation

.annotation build Lv2/b;
    emulated = true
.end annotation


# instance fields
.field public final d:Ljava/util/Comparator;
    .annotation runtime Lcom/google/common/collect/S0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation
.end field

.field public transient e:Lcom/google/common/collect/K2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/K2<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/o;-><init>(Ljava/util/Comparator;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/google/common/collect/i;-><init>()V

    .line 3
    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    iput-object p1, p0, Lcom/google/common/collect/o;->d:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public P6()Lcom/google/common/collect/K2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/K2<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/o;->e:Lcom/google/common/collect/K2;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/o;->h()Lcom/google/common/collect/K2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/o;->e:Lcom/google/common/collect/K2;

    :cond_0
    return-object v0
.end method

.method public S1()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 3
    invoke-super {p0}, Lcom/google/common/collect/i;->S1()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableSet;

    return-object v0
.end method

.method public bridge synthetic S1()Ljava/util/Set;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/o;->S1()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic S1()Ljava/util/SortedSet;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/o;->S1()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/o;->i()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/o;->d:Ljava/util/Comparator;

    return-object v0
.end method

.method public dc(Ljava/lang/Object;Lcom/google/common/collect/x;Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/K2;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lcom/google/common/collect/f2;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/x;",
            "TE;",
            "Lcom/google/common/collect/x;",
            ")",
            "Lcom/google/common/collect/K2<",
            "TE;>;"
        }
    .end annotation

    invoke-static {p2}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p0, p1, p2}, Lcom/google/common/collect/K2;->Jd(Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/K2;

    move-result-object p1

    invoke-interface {p1, p3, p4}, Lcom/google/common/collect/K2;->B7(Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/K2;

    move-result-object p1

    return-object p1
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/o;->P6()Lcom/google/common/collect/K2;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/W1;->n(Lcom/google/common/collect/V1;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public firstEntry()Lcom/google/common/collect/V1$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/V1$a<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/i;->g()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/V1$a;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public h()Lcom/google/common/collect/K2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/K2<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/o$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/o$a;-><init>(Lcom/google/common/collect/o;)V

    return-object v0
.end method

.method public i()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/M2$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/M2$b;-><init>(Lcom/google/common/collect/K2;)V

    return-object v0
.end method

.method public abstract j()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/google/common/collect/V1$a<",
            "TE;>;>;"
        }
    .end annotation
.end method

.method public lastEntry()Lcom/google/common/collect/V1$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/V1$a<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/o;->j()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/V1$a;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public pollFirstEntry()Lcom/google/common/collect/V1$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/V1$a<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/i;->g()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/V1$a;

    invoke-interface {v1}, Lcom/google/common/collect/V1$a;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Lcom/google/common/collect/V1$a;->getCount()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/common/collect/W1;->k(Ljava/lang/Object;I)Lcom/google/common/collect/V1$a;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public pollLastEntry()Lcom/google/common/collect/V1$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/V1$a<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/o;->j()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/collect/V1$a;

    invoke-interface {v1}, Lcom/google/common/collect/V1$a;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Lcom/google/common/collect/V1$a;->getCount()I

    move-result v1

    invoke-static {v2, v1}, Lcom/google/common/collect/W1;->k(Ljava/lang/Object;I)Lcom/google/common/collect/V1$a;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
