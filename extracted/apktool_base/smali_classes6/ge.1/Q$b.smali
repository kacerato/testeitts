.class public Lge/Q$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lke/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lge/Q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic b:Lge/Q;


# direct methods
.method public constructor <init>(Lge/Q;)V
    .locals 0

    iput-object p1, p0, Lge/Q$b;->b:Lge/Q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public B1([J)Z
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_1

    aget-wide v3, p1, v2

    invoke-virtual {p0, v3, v4}, Lge/Q$b;->e(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public B2(LSd/h;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public H1(LSd/h;)Z
    .locals 3

    invoke-interface {p1}, LSd/h;->iterator()LZd/b0;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, LZd/V;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lge/Q$b;->b:Lge/Q;

    invoke-interface {p1}, LZd/b0;->next()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lge/Q;->E(J)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public M0(J)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public O0([J)[J
    .locals 1

    iget-object v0, p0, Lge/Q$b;->b:Lge/Q;

    invoke-virtual {v0, p1}, Lge/Q;->h0([J)[J

    move-result-object p1

    return-object p1
.end method

.method public Q1([J)Z
    .locals 8

    invoke-static {p1}, Ljava/util/Arrays;->sort([J)V

    iget-object v0, p0, Lge/Q$b;->b:Lge/Q;

    iget-object v1, v0, LWd/T;->q:[J

    iget-object v0, v0, LWd/c0;->l:[B

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-lez v2, :cond_1

    aget-byte v2, v0, v4

    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    aget-wide v6, v1, v4

    invoke-static {p1, v6, v7}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v2

    if-gez v2, :cond_0

    iget-object v2, p0, Lge/Q$b;->b:Lge/Q;

    invoke-virtual {v2, v4}, Lge/Q;->hf(I)V

    move v2, v4

    move v3, v5

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    return v3
.end method

.method public U1([J)Z
    .locals 6

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-wide v3, p1, v2

    iget-object v5, p0, Lge/Q$b;->b:Lge/Q;

    invoke-virtual {v5, v3, v4}, LWd/T;->X0(J)Z

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

.method public X0(J)Z
    .locals 1

    iget-object v0, p0, Lge/Q$b;->b:Lge/Q;

    invoke-virtual {v0, p1, p2}, LWd/T;->X0(J)Z

    move-result p1

    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lge/Q$b;->b:Lge/Q;

    invoke-virtual {v0}, Lge/Q;->clear()V

    return-void
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 4
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

    instance-of v1, v0, Ljava/lang/Long;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v3, p0, Lge/Q$b;->b:Lge/Q;

    invoke-virtual {v3, v0, v1}, Lge/Q;->E(J)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return v2

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public e(J)Z
    .locals 2

    iget-object v0, p0, Lge/Q$b;->b:Lge/Q;

    invoke-static {v0}, Lge/Q;->vf(Lge/Q;)B

    move-result v0

    iget-object v1, p0, Lge/Q$b;->b:Lge/Q;

    invoke-virtual {v1, p1, p2}, Lge/Q;->e(J)B

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

    instance-of v0, p1, Lke/f;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lke/f;

    invoke-interface {p1}, Lke/f;->size()I

    move-result v0

    invoke-virtual {p0}, Lge/Q$b;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lge/Q$b;->b:Lge/Q;

    iget-object v0, v0, LWd/c0;->l:[B

    array-length v0, v0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x1

    if-lez v0, :cond_3

    iget-object v0, p0, Lge/Q$b;->b:Lge/Q;

    iget-object v4, v0, LWd/c0;->l:[B

    aget-byte v4, v4, v2

    if-ne v4, v3, :cond_2

    iget-object v0, v0, LWd/T;->q:[J

    aget-wide v3, v0, v2

    invoke-interface {p1, v3, v4}, Lke/f;->X0(J)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    return v3
.end method

.method public f2(LSd/h;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    invoke-virtual {p0}, Lge/Q$b;->clear()V

    return v0

    :cond_0
    invoke-interface {p1}, LSd/h;->iterator()LZd/b0;

    move-result-object p1

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {p1}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, LZd/b0;->next()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lge/Q$b;->e(J)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v0

    goto :goto_0

    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lge/Q$b;->b:Lge/Q;

    iget-object v0, v0, LWd/c0;->l:[B

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_1

    iget-object v0, p0, Lge/Q$b;->b:Lge/Q;

    iget-object v3, v0, LWd/c0;->l:[B

    aget-byte v3, v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v0, v0, LWd/T;->q:[J

    aget-wide v3, v0, v2

    invoke-static {v3, v4}, LVd/b;->e(J)I

    move-result v0

    add-int/2addr v1, v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public i()J
    .locals 2

    iget-object v0, p0, Lge/Q$b;->b:Lge/Q;

    invoke-static {v0}, Lge/Q;->sf(Lge/Q;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lge/Q$b;->b:Lge/Q;

    invoke-static {v0}, Lge/Q;->uf(Lge/Q;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()LZd/b0;
    .locals 2

    new-instance v0, Lge/Q$d;

    iget-object v1, p0, Lge/Q$b;->b:Lge/Q;

    invoke-direct {v0, v1, v1}, Lge/Q$d;-><init>(Lge/Q;LWd/c0;)V

    return-object v0
.end method

.method public j1(Lhe/b0;)Z
    .locals 1

    iget-object v0, p0, Lge/Q$b;->b:Lge/Q;

    invoke-virtual {v0, p1}, Lge/Q;->l0(Lhe/b0;)Z

    move-result p1

    return p1
.end method

.method public q1(LSd/h;)Z
    .locals 4

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lge/Q$b;->iterator()LZd/b0;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, LZd/b0;->next()J

    move-result-wide v2

    invoke-interface {p1, v2, v3}, LSd/h;->X0(J)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, LZd/V;->remove()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    return v0
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

    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lge/Q$b;->e(J)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lge/Q$b;->iterator()LZd/b0;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, LZd/b0;->next()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

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

    iget-object v0, p0, Lge/Q$b;->b:Lge/Q;

    invoke-static {v0}, Lge/Q;->tf(Lge/Q;)I

    move-result v0

    return v0
.end method

.method public toArray()[J
    .locals 1

    iget-object v0, p0, Lge/Q$b;->b:Lge/Q;

    invoke-virtual {v0}, Lge/Q;->j()[J

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lge/Q$b;->b:Lge/Q;

    new-instance v2, Lge/Q$b$a;

    invoke-direct {v2, p0, v0}, Lge/Q$b$a;-><init>(Lge/Q$b;Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v2}, Lge/Q;->l0(Lhe/b0;)Z

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y2([J)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
