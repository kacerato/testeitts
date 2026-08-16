.class public Lge/g0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lke/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lge/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic b:Lge/g0;


# direct methods
.method public constructor <init>(Lge/g0;)V
    .locals 0

    iput-object p1, p0, Lge/g0$b;->b:Lge/g0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A2([S)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public F1(LSd/i;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public N0([S)[S
    .locals 1

    iget-object v0, p0, Lge/g0$b;->b:Lge/g0;

    invoke-virtual {v0, p1}, Lge/g0;->Y([S)[S

    move-result-object p1

    return-object p1
.end method

.method public W0(S)Z
    .locals 1

    iget-object v0, p0, Lge/g0$b;->b:Lge/g0;

    invoke-virtual {v0, p1}, LWd/d0;->W0(S)Z

    move-result p1

    return p1
.end method

.method public Z1([S)Z
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-short v3, p1, v2

    iget-object v4, p0, Lge/g0$b;->b:Lge/g0;

    invoke-virtual {v4, v3}, LWd/d0;->W0(S)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Short;",
            ">;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public c1(S)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lge/g0$b;->b:Lge/g0;

    invoke-virtual {v0}, Lge/g0;->clear()V

    return-void
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Short;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    iget-object v1, p0, Lge/g0$b;->b:Lge/g0;

    invoke-virtual {v1, v0}, Lge/g0;->z(S)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return v2

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public d(S)Z
    .locals 2

    iget-object v0, p0, Lge/g0$b;->b:Lge/g0;

    invoke-static {v0}, Lge/g0;->vf(Lge/g0;)B

    move-result v0

    iget-object v1, p0, Lge/g0$b;->b:Lge/g0;

    invoke-virtual {v1, p1}, Lge/g0;->d(S)B

    move-result p1

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lke/g;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lke/g;

    invoke-interface {p1}, Lke/g;->size()I

    move-result v0

    invoke-virtual {p0}, Lge/g0$b;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lge/g0$b;->b:Lge/g0;

    iget-object v0, v0, LWd/c0;->l:[B

    array-length v0, v0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x1

    if-lez v0, :cond_3

    iget-object v0, p0, Lge/g0$b;->b:Lge/g0;

    iget-object v4, v0, LWd/c0;->l:[B

    aget-byte v4, v4, v2

    if-ne v4, v3, :cond_2

    iget-object v0, v0, LWd/d0;->q:[S

    aget-short v0, v0, v2

    invoke-interface {p1, v0}, Lke/g;->W0(S)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    return v3
.end method

.method public h1(Lhe/t0;)Z
    .locals 1

    iget-object v0, p0, Lge/g0$b;->b:Lge/g0;

    invoke-virtual {v0, p1}, Lge/g0;->v(Lhe/t0;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lge/g0$b;->b:Lge/g0;

    iget-object v0, v0, LWd/c0;->l:[B

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_1

    iget-object v0, p0, Lge/g0$b;->b:Lge/g0;

    iget-object v3, v0, LWd/c0;->l:[B

    aget-byte v3, v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v0, v0, LWd/d0;->q:[S

    aget-short v0, v0, v2

    invoke-static {v0}, LVd/b;->d(I)I

    move-result v0

    add-int/2addr v1, v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public i()S
    .locals 1

    iget-object v0, p0, Lge/g0$b;->b:Lge/g0;

    invoke-static {v0}, Lge/g0;->sf(Lge/g0;)S

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lge/g0$b;->b:Lge/g0;

    invoke-static {v0}, Lge/g0;->uf(Lge/g0;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()LZd/s0;
    .locals 2

    new-instance v0, Lge/g0$d;

    iget-object v1, p0, Lge/g0$b;->b:Lge/g0;

    invoke-direct {v0, v1, v1}, Lge/g0$d;-><init>(Lge/g0;LWd/c0;)V

    return-object v0
.end method

.method public n1([S)Z
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_1

    aget-short v0, p1, v2

    invoke-virtual {p0, v0}, Lge/g0$b;->d(S)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public o1(LSd/i;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    invoke-virtual {p0}, Lge/g0$b;->clear()V

    return v0

    :cond_0
    invoke-interface {p1}, LSd/i;->iterator()LZd/s0;

    move-result-object p1

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {p1}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, LZd/s0;->next()S

    move-result v2

    invoke-virtual {p0, v2}, Lge/g0$b;->d(S)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v0

    goto :goto_0

    :cond_2
    return v1
.end method

.method public q2(LSd/i;)Z
    .locals 3

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lge/g0$b;->iterator()LZd/s0;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, LZd/s0;->next()S

    move-result v2

    invoke-interface {p1, v2}, LSd/i;->W0(S)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, LZd/V;->remove()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public r1([S)Z
    .locals 6

    invoke-static {p1}, Ljava/util/Arrays;->sort([S)V

    iget-object v0, p0, Lge/g0$b;->b:Lge/g0;

    iget-object v1, v0, LWd/d0;->q:[S

    iget-object v0, v0, LWd/c0;->l:[B

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-lez v2, :cond_1

    aget-byte v2, v0, v4

    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    aget-short v2, v1, v4

    invoke-static {p1, v2}, Ljava/util/Arrays;->binarySearch([SS)I

    move-result v2

    if-gez v2, :cond_0

    iget-object v2, p0, Lge/g0$b;->b:Lge/g0;

    invoke-virtual {v2, v4}, Lge/g0;->hf(I)V

    move v2, v4

    move v3, v5

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    return v3
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/Short;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-virtual {p0, v1}, Lge/g0$b;->d(S)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lge/g0$b;->iterator()LZd/s0;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, LZd/s0;->next()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, LZd/V;->remove()V

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lge/g0$b;->b:Lge/g0;

    invoke-static {v0}, Lge/g0;->tf(Lge/g0;)I

    move-result v0

    return v0
.end method

.method public toArray()[S
    .locals 1

    iget-object v0, p0, Lge/g0$b;->b:Lge/g0;

    invoke-virtual {v0}, Lge/g0;->j()[S

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lge/g0$b;->b:Lge/g0;

    new-instance v2, Lge/g0$b$a;

    invoke-direct {v2, p0, v0}, Lge/g0$b$a;-><init>(Lge/g0$b;Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v2}, Lge/g0;->v(Lhe/t0;)Z

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public v2(LSd/i;)Z
    .locals 2

    invoke-interface {p1}, LSd/i;->iterator()LZd/s0;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, LZd/V;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lge/g0$b;->b:Lge/g0;

    invoke-interface {p1}, LZd/s0;->next()S

    move-result v1

    invoke-virtual {v0, v1}, Lge/g0;->z(S)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
