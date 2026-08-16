.class public final Lcom/google/common/collect/n2;
.super Lcom/google/common/collect/O;
.source "SourceFile"


# annotations
.annotation runtime Lcom/google/common/collect/X;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/n2$d;
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


# static fields
.field public static final k:J


# instance fields
.field public final j:Lcom/google/common/collect/j2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/j2<",
            "TC;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/collect/j2;Lcom/google/common/collect/W;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j2<",
            "TC;>;",
            "Lcom/google/common/collect/W<",
            "TC;>;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/google/common/collect/O;-><init>(Lcom/google/common/collect/W;)V

    iput-object p1, p0, Lcom/google/common/collect/n2;->j:Lcom/google/common/collect/j2;

    return-void
.end method

.method public static synthetic V0(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/google/common/collect/n2;->W0(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z

    move-result p0

    return p0
.end method

.method public static W0(Ljava/lang/Comparable;Ljava/lang/Comparable;)Z
    .locals 0
    .param p1    # Ljava/lang/Comparable;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable<",
            "*>;",
            "Ljava/lang/Comparable<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Lcom/google/common/collect/j2;->h(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
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

    invoke-static {p2}, Lcom/google/common/collect/x;->b(Z)Lcom/google/common/collect/x;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/common/collect/j2;->I(Ljava/lang/Comparable;Lcom/google/common/collect/x;)Lcom/google/common/collect/j2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/n2;->Y0(Lcom/google/common/collect/j2;)Lcom/google/common/collect/O;

    move-result-object p1

    return-object p1
.end method

.method public I0(Lcom/google/common/collect/O;)Lcom/google/common/collect/O;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/O<",
            "TC;>;)",
            "Lcom/google/common/collect/O<",
            "TC;>;"
        }
    .end annotation

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/collect/O;->i:Lcom/google/common/collect/W;

    iget-object v1, p1, Lcom/google/common/collect/O;->i:Lcom/google/common/collect/W;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lw2/H;->d(Z)V

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/collect/n2;->X0()Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/common/collect/x1;->first()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Comparable;

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/Ordering;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/collect/n2;->Z0()Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/common/collect/x1;->last()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {v1, v2, p1}, Lcom/google/common/collect/Ordering;->x(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    invoke-interface {v0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_1

    invoke-static {v0, p1}, Lcom/google/common/collect/j2;->f(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/common/collect/j2;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/collect/O;->i:Lcom/google/common/collect/W;

    invoke-static {p1, v0}, Lcom/google/common/collect/O;->E0(Lcom/google/common/collect/j2;Lcom/google/common/collect/W;)Lcom/google/common/collect/O;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/google/common/collect/Y;

    iget-object v0, p0, Lcom/google/common/collect/O;->i:Lcom/google/common/collect/W;

    invoke-direct {p1, v0}, Lcom/google/common/collect/Y;-><init>(Lcom/google/common/collect/W;)V

    :goto_0
    return-object p1
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

    sget-object v0, Lcom/google/common/collect/x;->CLOSED:Lcom/google/common/collect/x;

    invoke-virtual {p0, v0, v0}, Lcom/google/common/collect/n2;->M0(Lcom/google/common/collect/x;Lcom/google/common/collect/x;)Lcom/google/common/collect/j2;

    move-result-object v0

    return-object v0
.end method

.method public M0(Lcom/google/common/collect/x;Lcom/google/common/collect/x;)Lcom/google/common/collect/j2;
    .locals 2
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

    iget-object v0, p0, Lcom/google/common/collect/n2;->j:Lcom/google/common/collect/j2;

    iget-object v0, v0, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    iget-object v1, p0, Lcom/google/common/collect/O;->i:Lcom/google/common/collect/W;

    invoke-virtual {v0, p1, v1}, Lcom/google/common/collect/Q;->s(Lcom/google/common/collect/x;Lcom/google/common/collect/W;)Lcom/google/common/collect/Q;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/collect/n2;->j:Lcom/google/common/collect/j2;

    iget-object v0, v0, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    iget-object v1, p0, Lcom/google/common/collect/O;->i:Lcom/google/common/collect/W;

    invoke-virtual {v0, p2, v1}, Lcom/google/common/collect/Q;->u(Lcom/google/common/collect/x;Lcom/google/common/collect/W;)Lcom/google/common/collect/Q;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/common/collect/j2;->k(Lcom/google/common/collect/Q;Lcom/google/common/collect/Q;)Lcom/google/common/collect/j2;

    move-result-object p1

    return-object p1
.end method

.method public P0(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lcom/google/common/collect/O;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;ZTC;Z)",
            "Lcom/google/common/collect/O<",
            "TC;>;"
        }
    .end annotation

    invoke-interface {p1, p3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    if-nez p4, :cond_0

    new-instance p1, Lcom/google/common/collect/Y;

    iget-object p2, p0, Lcom/google/common/collect/O;->i:Lcom/google/common/collect/W;

    invoke-direct {p1, p2}, Lcom/google/common/collect/Y;-><init>(Lcom/google/common/collect/W;)V

    return-object p1

    :cond_0
    invoke-static {p2}, Lcom/google/common/collect/x;->b(Z)Lcom/google/common/collect/x;

    move-result-object p2

    invoke-static {p4}, Lcom/google/common/collect/x;->b(Z)Lcom/google/common/collect/x;

    move-result-object p4

    invoke-static {p1, p2, p3, p4}, Lcom/google/common/collect/j2;->C(Ljava/lang/Comparable;Lcom/google/common/collect/x;Ljava/lang/Comparable;Lcom/google/common/collect/x;)Lcom/google/common/collect/j2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/n2;->Y0(Lcom/google/common/collect/j2;)Lcom/google/common/collect/O;

    move-result-object p1

    return-object p1
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

    invoke-static {p2}, Lcom/google/common/collect/x;->b(Z)Lcom/google/common/collect/x;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/common/collect/j2;->l(Ljava/lang/Comparable;Lcom/google/common/collect/x;)Lcom/google/common/collect/j2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/n2;->Y0(Lcom/google/common/collect/j2;)Lcom/google/common/collect/O;

    move-result-object p1

    return-object p1
.end method

.method public X0()Ljava/lang/Comparable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/n2;->j:Lcom/google/common/collect/j2;

    iget-object v0, v0, Lcom/google/common/collect/j2;->b:Lcom/google/common/collect/Q;

    iget-object v1, p0, Lcom/google/common/collect/O;->i:Lcom/google/common/collect/W;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Q;->o(Lcom/google/common/collect/W;)Ljava/lang/Comparable;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method

.method public final Y0(Lcom/google/common/collect/j2;)Lcom/google/common/collect/O;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j2<",
            "TC;>;)",
            "Lcom/google/common/collect/O<",
            "TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/n2;->j:Lcom/google/common/collect/j2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/j2;->u(Lcom/google/common/collect/j2;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/n2;->j:Lcom/google/common/collect/j2;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/j2;->s(Lcom/google/common/collect/j2;)Lcom/google/common/collect/j2;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/collect/O;->i:Lcom/google/common/collect/W;

    invoke-static {p1, v0}, Lcom/google/common/collect/O;->E0(Lcom/google/common/collect/j2;Lcom/google/common/collect/W;)Lcom/google/common/collect/O;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/google/common/collect/Y;

    iget-object v0, p0, Lcom/google/common/collect/O;->i:Lcom/google/common/collect/W;

    invoke-direct {p1, v0}, Lcom/google/common/collect/Y;-><init>(Lcom/google/common/collect/W;)V

    :goto_0
    return-object p1
.end method

.method public Z0()Ljava/lang/Comparable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/n2;->j:Lcom/google/common/collect/j2;

    iget-object v0, v0, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    iget-object v1, p0, Lcom/google/common/collect/O;->i:Lcom/google/common/collect/W;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/Q;->k(Lcom/google/common/collect/W;)Ljava/lang/Comparable;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/Comparable;

    return-object v0
.end method

.method public a0()Lcom/google/common/collect/e3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e3<",
            "TC;>;"
        }
    .end annotation

    .annotation build Lv2/c;
    .end annotation

    new-instance v0, Lcom/google/common/collect/n2$b;

    invoke-virtual {p0}, Lcom/google/common/collect/n2;->Z0()Ljava/lang/Comparable;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/n2$b;-><init>(Lcom/google/common/collect/n2;Ljava/lang/Comparable;)V

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/common/collect/n2;->j:Lcom/google/common/collect/j2;

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/j2;->i(Ljava/lang/Comparable;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/google/common/collect/C;->b(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic descendingIterator()Ljava/util/Iterator;
    .locals 1
    .annotation build Lv2/c;
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/n2;->a0()Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/common/collect/n2;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/google/common/collect/n2;

    iget-object v2, p0, Lcom/google/common/collect/O;->i:Lcom/google/common/collect/W;

    iget-object v3, v1, Lcom/google/common/collect/O;->i:Lcom/google/common/collect/W;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/common/collect/n2;->X0()Ljava/lang/Comparable;

    move-result-object p1

    invoke-virtual {v1}, Lcom/google/common/collect/n2;->X0()Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/common/collect/n2;->Z0()Ljava/lang/Comparable;

    move-result-object p1

    invoke-virtual {v1}, Lcom/google/common/collect/n2;->Z0()Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1}, Lcom/google/common/collect/r1;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic f0(Ljava/lang/Object;Z)Lcom/google/common/collect/x1;
    .locals 0

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/n2;->H0(Ljava/lang/Comparable;Z)Lcom/google/common/collect/O;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic first()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/n2;->X0()Ljava/lang/Comparable;

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

    invoke-static {p0}, Lcom/google/common/collect/D2;->k(Ljava/util/Set;)I

    move-result v0

    return v0
.end method

.method public i()Lcom/google/common/collect/e3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/e3<",
            "TC;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/common/collect/n2$a;

    invoke-virtual {p0}, Lcom/google/common/collect/n2;->X0()Ljava/lang/Comparable;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/n2$a;-><init>(Lcom/google/common/collect/n2;Ljava/lang/Comparable;)V

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation build Lv2/c;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/common/collect/n2;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/O;->i:Lcom/google/common/collect/W;

    invoke-virtual {p0}, Lcom/google/common/collect/n2;->X0()Ljava/lang/Comparable;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {v0, v1, p1}, Lcom/google/common/collect/W;->b(Ljava/lang/Comparable;Ljava/lang/Comparable;)J

    move-result-wide v0

    long-to-int p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/n2;->i()Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/Object;
    .locals 4
    .annotation build Lv2/c;
    .end annotation

    new-instance v0, Lcom/google/common/collect/n2$d;

    iget-object v1, p0, Lcom/google/common/collect/n2;->j:Lcom/google/common/collect/j2;

    iget-object v2, p0, Lcom/google/common/collect/O;->i:Lcom/google/common/collect/W;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/collect/n2$d;-><init>(Lcom/google/common/collect/j2;Lcom/google/common/collect/W;Lcom/google/common/collect/n2$a;)V

    return-object v0
.end method

.method public bridge synthetic last()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/n2;->Z0()Ljava/lang/Comparable;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 4

    iget-object v0, p0, Lcom/google/common/collect/O;->i:Lcom/google/common/collect/W;

    invoke-virtual {p0}, Lcom/google/common/collect/n2;->X0()Ljava/lang/Comparable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/common/collect/n2;->Z0()Ljava/lang/Comparable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/W;->b(Ljava/lang/Comparable;Ljava/lang/Comparable;)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    const v0, 0x7fffffff

    goto :goto_0

    :cond_0
    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    :goto_0
    return v0
.end method

.method public bridge synthetic t0(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/x1;
    .locals 0

    check-cast p1, Ljava/lang/Comparable;

    check-cast p3, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/n2;->P0(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lcom/google/common/collect/O;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic w0(Ljava/lang/Object;Z)Lcom/google/common/collect/x1;
    .locals 0

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/n2;->U0(Ljava/lang/Comparable;Z)Lcom/google/common/collect/O;

    move-result-object p1

    return-object p1
.end method

.method public x()Lcom/google/common/collect/g1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/g1<",
            "TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/O;->i:Lcom/google/common/collect/W;

    iget-boolean v0, v0, Lcom/google/common/collect/W;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/common/collect/n2$c;

    invoke-direct {v0, p0}, Lcom/google/common/collect/n2$c;-><init>(Lcom/google/common/collect/n2;)V

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/google/common/collect/r1;->x()Lcom/google/common/collect/g1;

    move-result-object v0

    return-object v0
.end method
