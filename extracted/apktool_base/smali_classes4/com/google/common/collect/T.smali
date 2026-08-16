.class public final Lcom/google/common/collect/T;
.super Lcom/google/common/collect/v1;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/v1<",
        "TE;>;"
    }
.end annotation

.annotation build Lv2/c;
.end annotation


# instance fields
.field public final transient f:Lcom/google/common/collect/v1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/v1<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/v1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/v1<",
            "TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/common/collect/v1;-><init>()V

    iput-object p1, p0, Lcom/google/common/collect/T;->f:Lcom/google/common/collect/v1;

    return-void
.end method


# virtual methods
.method public Ad(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/common/collect/T;->f:Lcom/google/common/collect/v1;

    invoke-interface {v0, p1}, Lcom/google/common/collect/V1;->Ad(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic B7(Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/K2;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/T;->W(Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/v1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic Jd(Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/K2;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/T;->i0(Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/v1;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic P6()Lcom/google/common/collect/K2;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/T;->T()Lcom/google/common/collect/v1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic S1()Ljava/util/NavigableSet;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/common/collect/T;->U()Lcom/google/common/collect/x1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic S1()Ljava/util/Set;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/google/common/collect/T;->U()Lcom/google/common/collect/x1;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic S1()Ljava/util/SortedSet;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/google/common/collect/T;->U()Lcom/google/common/collect/x1;

    move-result-object v0

    return-object v0
.end method

.method public T()Lcom/google/common/collect/v1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/v1<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/T;->f:Lcom/google/common/collect/v1;

    return-object v0
.end method

.method public U()Lcom/google/common/collect/x1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/x1<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/T;->f:Lcom/google/common/collect/v1;

    invoke-virtual {v0}, Lcom/google/common/collect/v1;->U()Lcom/google/common/collect/x1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/x1;->b0()Lcom/google/common/collect/x1;

    move-result-object v0

    return-object v0
.end method

.method public W(Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/v1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/x;",
            ")",
            "Lcom/google/common/collect/v1<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/T;->f:Lcom/google/common/collect/v1;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/v1;->i0(Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/v1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/v1;->T()Lcom/google/common/collect/v1;

    move-result-object p1

    return-object p1
.end method

.method public firstEntry()Lcom/google/common/collect/V1$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/V1$a<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/T;->f:Lcom/google/common/collect/v1;

    invoke-interface {v0}, Lcom/google/common/collect/K2;->lastEntry()Lcom/google/common/collect/V1$a;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/T;->f:Lcom/google/common/collect/v1;

    invoke-virtual {v0}, Lcom/google/common/collect/c1;->h()Z

    move-result v0

    return v0
.end method

.method public i0(Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/v1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lcom/google/common/collect/x;",
            ")",
            "Lcom/google/common/collect/v1<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/T;->f:Lcom/google/common/collect/v1;

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/v1;->W(Ljava/lang/Object;Lcom/google/common/collect/x;)Lcom/google/common/collect/v1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/common/collect/v1;->T()Lcom/google/common/collect/v1;

    move-result-object p1

    return-object p1
.end method

.method public lastEntry()Lcom/google/common/collect/V1$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/V1$a<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/T;->f:Lcom/google/common/collect/v1;

    invoke-interface {v0}, Lcom/google/common/collect/K2;->firstEntry()Lcom/google/common/collect/V1$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic s()Lcom/google/common/collect/r1;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/T;->U()Lcom/google/common/collect/x1;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/T;->f:Lcom/google/common/collect/v1;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    return v0
.end method

.method public v(I)Lcom/google/common/collect/V1$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/V1$a<",
            "TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/T;->f:Lcom/google/common/collect/v1;

    invoke-virtual {v0}, Lcom/google/common/collect/n1;->u()Lcom/google/common/collect/r1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/r1;->a()Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/g1;->L()Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/common/collect/V1$a;

    return-object p1
.end method
