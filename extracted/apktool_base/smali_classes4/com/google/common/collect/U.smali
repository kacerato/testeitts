.class public final Lcom/google/common/collect/U;
.super Lcom/google/common/collect/x1;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/x1<",
        "TE;>;"
    }
.end annotation

.annotation build Lv2/c;
.end annotation


# instance fields
.field public final i:Lcom/google/common/collect/x1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/x1<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/x1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/x1<",
            "TE;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/common/collect/x1;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Ordering;->i(Ljava/util/Comparator;)Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Ordering;->F()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/common/collect/x1;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Lcom/google/common/collect/U;->i:Lcom/google/common/collect/x1;

    return-void
.end method


# virtual methods
.method public Z()Lcom/google/common/collect/x1;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/x1<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lv2/c;
        value = "NavigableSet"
    .end annotation

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public a0()Lcom/google/common/collect/e3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e3<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lv2/c;
        value = "NavigableSet"
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/U;->i:Lcom/google/common/collect/x1;

    invoke-virtual {v0}, Lcom/google/common/collect/x1;->i()Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0
.end method

.method public b0()Lcom/google/common/collect/x1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/x1<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lv2/c;
        value = "NavigableSet"
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/U;->i:Lcom/google/common/collect/x1;

    return-object v0
.end method

.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/U;->i:Lcom/google/common/collect/x1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/x1;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/collect/U;->i:Lcom/google/common/collect/x1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/c1;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic descendingIterator()Ljava/util/Iterator;
    .locals 1
    .annotation build Lv2/c;
        value = "NavigableSet"
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/U;->a0()Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic descendingSet()Ljava/util/NavigableSet;
    .locals 1
    .annotation build Lv2/c;
        value = "NavigableSet"
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/U;->b0()Lcom/google/common/collect/x1;

    move-result-object v0

    return-object v0
.end method

.method public f0(Ljava/lang/Object;Z)Lcom/google/common/collect/x1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lcom/google/common/collect/x1<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/U;->i:Lcom/google/common/collect/x1;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/x1;->v0(Ljava/lang/Object;Z)Lcom/google/common/collect/x1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/x1;->b0()Lcom/google/common/collect/x1;

    move-result-object p1

    return-object p1
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/U;->i:Lcom/google/common/collect/x1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/x1;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/U;->i:Lcom/google/common/collect/x1;

    invoke-virtual {v0}, Lcom/google/common/collect/c1;->h()Z

    move-result v0

    return v0
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/U;->i:Lcom/google/common/collect/x1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/x1;->lower(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public i()Lcom/google/common/collect/e3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e3<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/U;->i:Lcom/google/common/collect/x1;

    invoke-virtual {v0}, Lcom/google/common/collect/x1;->a0()Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/collect/U;->i:Lcom/google/common/collect/x1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/x1;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/U;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/U;->i()Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/U;->i:Lcom/google/common/collect/x1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/x1;->higher(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/U;->i:Lcom/google/common/collect/x1;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method

.method public t0(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/x1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Lcom/google/common/collect/x1<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/U;->i:Lcom/google/common/collect/x1;

    invoke-virtual {v0, p3, p4, p1, p2}, Lcom/google/common/collect/x1;->s0(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/x1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/x1;->b0()Lcom/google/common/collect/x1;

    move-result-object p1

    return-object p1
.end method

.method public w0(Ljava/lang/Object;Z)Lcom/google/common/collect/x1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lcom/google/common/collect/x1<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/U;->i:Lcom/google/common/collect/x1;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/x1;->e0(Ljava/lang/Object;Z)Lcom/google/common/collect/x1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/x1;->b0()Lcom/google/common/collect/x1;

    move-result-object p1

    return-object p1
.end method
