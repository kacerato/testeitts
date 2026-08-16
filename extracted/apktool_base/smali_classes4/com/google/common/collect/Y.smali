.class public final Lcom/google/common/collect/Y;
.super Lcom/google/common/collect/O;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/Y$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Lcom/google/common/collect/O<",
        "TC;>;"
    }
.end annotation

.annotation build Lv2/b;
    emulated = true
.end annotation


# direct methods
.method public constructor <init>(Lcom/google/common/collect/W;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/W<",
            "TC;>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/common/collect/O;-><init>(Lcom/google/common/collect/W;)V

    return-void
.end method


# virtual methods
.method public H0(Ljava/lang/Comparable;Z)Lcom/google/common/collect/O;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;Z)",
            "Lcom/google/common/collect/O<",
            "TC;>;"
        }
    .end annotation

    return-object p0
.end method

.method public I0(Lcom/google/common/collect/O;)Lcom/google/common/collect/O;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/O<",
            "TC;>;)",
            "Lcom/google/common/collect/O<",
            "TC;>;"
        }
    .end annotation

    return-object p0
.end method

.method public J0()Lcom/google/common/collect/j2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/j2<",
            "TC;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public M0(Lcom/google/common/collect/x;Lcom/google/common/collect/x;)Lcom/google/common/collect/j2;
    .locals 0
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

    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1
.end method

.method public P0(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lcom/google/common/collect/O;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;ZTC;Z)",
            "Lcom/google/common/collect/O<",
            "TC;>;"
        }
    .end annotation

    return-object p0
.end method

.method public U0(Ljava/lang/Comparable;Z)Lcom/google/common/collect/O;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;Z)",
            "Lcom/google/common/collect/O<",
            "TC;>;"
        }
    .end annotation

    return-object p0
.end method

.method public V0()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public W0()Ljava/lang/Comparable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
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

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/Ordering;->F()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/x1;->c0(Ljava/util/Comparator;)Lcom/google/common/collect/v2;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/google/common/collect/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/g1<",
            "TC;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/g1;->x()Lcom/google/common/collect/g1;

    move-result-object v0

    return-object v0
.end method

.method public a0()Lcom/google/common/collect/e3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e3<",
            "TC;>;"
        }
    .end annotation

    .annotation build Lv2/c;
    .end annotation

    invoke-static {}, Lcom/google/common/collect/E1;->u()Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic descendingIterator()Ljava/util/Iterator;
    .locals 1
    .annotation build Lv2/c;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/Y;->a0()Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic f0(Ljava/lang/Object;Z)Lcom/google/common/collect/x1;
    .locals 0

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Y;->H0(Ljava/lang/Comparable;Z)Lcom/google/common/collect/O;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic first()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/Y;->V0()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i()Lcom/google/common/collect/e3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e3<",
            "TC;>;"
        }
    .end annotation

    invoke-static {}, Lcom/google/common/collect/E1;->u()Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation build Lv2/c;
    .end annotation

    const/4 p1, -0x1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/Y;->i()Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/Object;
    .locals 3
    .annotation build Lv2/c;
    .end annotation

    new-instance v0, Lcom/google/common/collect/Y$b;

    iget-object v1, p0, Lcom/google/common/collect/O;->i:Lcom/google/common/collect/W;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/Y$b;-><init>(Lcom/google/common/collect/W;Lcom/google/common/collect/Y$a;)V

    return-object v0
.end method

.method public bridge synthetic last()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/Y;->W0()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic t0(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/x1;
    .locals 0

    check-cast p1, Ljava/lang/Comparable;

    check-cast p3, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/Y;->P0(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lcom/google/common/collect/O;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "[]"

    return-object v0
.end method

.method public bridge synthetic w0(Ljava/lang/Object;Z)Lcom/google/common/collect/x1;
    .locals 0

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/Y;->U0(Ljava/lang/Comparable;Z)Lcom/google/common/collect/O;

    move-result-object p1

    return-object p1
.end method

.method public y()Z
    .locals 1
    .annotation build Lv2/c;
    .end annotation

    const/4 v0, 0x1

    return v0
.end method
