.class public final Lcom/google/common/collect/q1$b;
.super Lcom/google/common/collect/x1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/q1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/x1<",
        "TC;>;"
    }
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

.field public transient j:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field public final synthetic k:Lcom/google/common/collect/q1;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/q1;Lcom/google/common/collect/W;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/W<",
            "TC;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/common/collect/q1$b;->k:Lcom/google/common/collect/q1;

    invoke-static {}, Lcom/google/common/collect/Ordering;->A()Lcom/google/common/collect/Ordering;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/common/collect/x1;-><init>(Ljava/util/Comparator;)V

    iput-object p2, p0, Lcom/google/common/collect/q1$b;->i:Lcom/google/common/collect/W;

    return-void
.end method

.method public static synthetic z0(Lcom/google/common/collect/q1$b;)Lcom/google/common/collect/W;
    .locals 0

    iget-object p0, p0, Lcom/google/common/collect/q1$b;->i:Lcom/google/common/collect/W;

    return-object p0
.end method


# virtual methods
.method public B0(Ljava/lang/Comparable;Z)Lcom/google/common/collect/x1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;Z)",
            "Lcom/google/common/collect/x1<",
            "TC;>;"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/common/collect/x;->b(Z)Lcom/google/common/collect/x;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/common/collect/j2;->I(Ljava/lang/Comparable;Lcom/google/common/collect/x;)Lcom/google/common/collect/j2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/q1$b;->C0(Lcom/google/common/collect/j2;)Lcom/google/common/collect/x1;

    move-result-object p1

    return-object p1
.end method

.method public C0(Lcom/google/common/collect/j2;)Lcom/google/common/collect/x1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/j2<",
            "TC;>;)",
            "Lcom/google/common/collect/x1<",
            "TC;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/q1$b;->k:Lcom/google/common/collect/q1;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/q1;->G(Lcom/google/common/collect/j2;)Lcom/google/common/collect/q1;

    move-result-object p1

    iget-object v0, p0, Lcom/google/common/collect/q1$b;->i:Lcom/google/common/collect/W;

    invoke-virtual {p1, v0}, Lcom/google/common/collect/q1;->v(Lcom/google/common/collect/W;)Lcom/google/common/collect/x1;

    move-result-object p1

    return-object p1
.end method

.method public D0(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lcom/google/common/collect/x1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;ZTC;Z)",
            "Lcom/google/common/collect/x1<",
            "TC;>;"
        }
    .end annotation

    if-nez p2, :cond_0

    if-nez p4, :cond_0

    invoke-static {p1, p3}, Lcom/google/common/collect/j2;->h(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/common/collect/x1;->h0()Lcom/google/common/collect/x1;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p2}, Lcom/google/common/collect/x;->b(Z)Lcom/google/common/collect/x;

    move-result-object p2

    invoke-static {p4}, Lcom/google/common/collect/x;->b(Z)Lcom/google/common/collect/x;

    move-result-object p4

    invoke-static {p1, p2, p3, p4}, Lcom/google/common/collect/j2;->C(Ljava/lang/Comparable;Lcom/google/common/collect/x;Ljava/lang/Comparable;Lcom/google/common/collect/x;)Lcom/google/common/collect/j2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/q1$b;->C0(Lcom/google/common/collect/j2;)Lcom/google/common/collect/x1;

    move-result-object p1

    return-object p1
.end method

.method public E0(Ljava/lang/Comparable;Z)Lcom/google/common/collect/x1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;Z)",
            "Lcom/google/common/collect/x1<",
            "TC;>;"
        }
    .end annotation

    invoke-static {p2}, Lcom/google/common/collect/x;->b(Z)Lcom/google/common/collect/x;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/common/collect/j2;->l(Ljava/lang/Comparable;Lcom/google/common/collect/x;)Lcom/google/common/collect/j2;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/common/collect/q1$b;->C0(Lcom/google/common/collect/j2;)Lcom/google/common/collect/x1;

    move-result-object p1

    return-object p1
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

    new-instance v0, Lcom/google/common/collect/U;

    invoke-direct {v0, p0}, Lcom/google/common/collect/U;-><init>(Lcom/google/common/collect/x1;)V

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
        value = "NavigableSet"
    .end annotation

    new-instance v0, Lcom/google/common/collect/q1$b$b;

    invoke-direct {v0, p0}, Lcom/google/common/collect/q1$b$b;-><init>(Lcom/google/common/collect/q1$b;)V

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
    check-cast p1, Ljava/lang/Comparable;

    iget-object v1, p0, Lcom/google/common/collect/q1$b;->k:Lcom/google/common/collect/q1;

    invoke-virtual {v1, p1}, Lcom/google/common/collect/q1;->contains(Ljava/lang/Comparable;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v0
.end method

.method public bridge synthetic descendingIterator()Ljava/util/Iterator;
    .locals 1
    .annotation build Lv2/c;
        value = "NavigableSet"
    .end annotation

    invoke-virtual {p0}, Lcom/google/common/collect/q1$b;->a0()Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic f0(Ljava/lang/Object;Z)Lcom/google/common/collect/x1;
    .locals 0

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/q1$b;->B0(Ljava/lang/Comparable;Z)Lcom/google/common/collect/x1;

    move-result-object p1

    return-object p1
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/q1$b;->k:Lcom/google/common/collect/q1;

    invoke-static {v0}, Lcom/google/common/collect/q1;->q(Lcom/google/common/collect/q1;)Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/c1;->h()Z

    move-result v0

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

    new-instance v0, Lcom/google/common/collect/q1$b$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/q1$b$a;-><init>(Lcom/google/common/collect/q1$b;)V

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/google/common/collect/q1$b;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljava/lang/Comparable;

    iget-object v0, p0, Lcom/google/common/collect/q1$b;->k:Lcom/google/common/collect/q1;

    invoke-static {v0}, Lcom/google/common/collect/q1;->q(Lcom/google/common/collect/q1;)Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/g1;->i()Lcom/google/common/collect/e3;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/j2;

    invoke-virtual {v3, p1}, Lcom/google/common/collect/j2;->i(Ljava/lang/Comparable;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/q1$b;->i:Lcom/google/common/collect/W;

    invoke-static {v3, v0}, Lcom/google/common/collect/O;->E0(Lcom/google/common/collect/j2;Lcom/google/common/collect/W;)Lcom/google/common/collect/O;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/common/collect/x1;->indexOf(Ljava/lang/Object;)I

    move-result p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Lcom/google/common/primitives/l;->x(J)I

    move-result p1

    return p1

    :cond_0
    iget-object v4, p0, Lcom/google/common/collect/q1$b;->i:Lcom/google/common/collect/W;

    invoke-static {v3, v4}, Lcom/google/common/collect/O;->E0(Lcom/google/common/collect/j2;Lcom/google/common/collect/W;)Lcom/google/common/collect/O;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "impossible"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/collect/q1$b;->i()Lcom/google/common/collect/e3;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lcom/google/common/collect/q1$c;

    iget-object v1, p0, Lcom/google/common/collect/q1$b;->k:Lcom/google/common/collect/q1;

    invoke-static {v1}, Lcom/google/common/collect/q1;->q(Lcom/google/common/collect/q1;)Lcom/google/common/collect/g1;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/collect/q1$b;->i:Lcom/google/common/collect/W;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/q1$c;-><init>(Lcom/google/common/collect/g1;Lcom/google/common/collect/W;)V

    return-object v0
.end method

.method public size()I
    .locals 5

    iget-object v0, p0, Lcom/google/common/collect/q1$b;->j:Ljava/lang/Integer;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/common/collect/q1$b;->k:Lcom/google/common/collect/q1;

    invoke-static {v0}, Lcom/google/common/collect/q1;->q(Lcom/google/common/collect/q1;)Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/g1;->i()Lcom/google/common/collect/e3;

    move-result-object v0

    const-wide/16 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/collect/j2;

    iget-object v4, p0, Lcom/google/common/collect/q1$b;->i:Lcom/google/common/collect/W;

    invoke-static {v3, v4}, Lcom/google/common/collect/O;->E0(Lcom/google/common/collect/j2;Lcom/google/common/collect/W;)Lcom/google/common/collect/O;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-ltz v3, :cond_0

    :cond_1
    invoke-static {v1, v2}, Lcom/google/common/primitives/l;->x(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/q1$b;->j:Ljava/lang/Integer;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public bridge synthetic t0(Ljava/lang/Object;ZLjava/lang/Object;Z)Lcom/google/common/collect/x1;
    .locals 0

    check-cast p1, Ljava/lang/Comparable;

    check-cast p3, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/common/collect/q1$b;->D0(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lcom/google/common/collect/x1;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/common/collect/q1$b;->k:Lcom/google/common/collect/q1;

    invoke-static {v0}, Lcom/google/common/collect/q1;->q(Lcom/google/common/collect/q1;)Lcom/google/common/collect/g1;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic w0(Ljava/lang/Object;Z)Lcom/google/common/collect/x1;
    .locals 0

    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/q1$b;->E0(Ljava/lang/Comparable;Z)Lcom/google/common/collect/x1;

    move-result-object p1

    return-object p1
.end method
