.class public Lge/v$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lke/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lge/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation


# instance fields
.field public final synthetic b:Lge/v;


# direct methods
.method public constructor <init>(Lge/v;)V
    .locals 0

    iput-object p1, p0, Lge/v$e;->b:Lge/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public C1(LSd/e;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    invoke-virtual {p0}, Lge/v$e;->clear()V

    return v0

    :cond_0
    invoke-interface {p1}, LSd/e;->iterator()LZd/y;

    move-result-object p1

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {p1}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, LZd/y;->next()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lge/v$e;->a(D)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v0

    goto :goto_0

    :cond_2
    return v1
.end method

.method public G1(LSd/e;)Z
    .locals 3

    invoke-interface {p1}, LSd/e;->iterator()LZd/y;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, LZd/V;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lge/v$e;->b:Lge/v;

    invoke-interface {p1}, LZd/y;->next()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lge/v;->A(D)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public J1(LSd/e;)Z
    .locals 4

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lge/v$e;->iterator()LZd/y;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, LZd/y;->next()D

    move-result-wide v2

    invoke-interface {p1, v2, v3}, LSd/e;->Y0(D)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, LZd/V;->remove()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public Y0(D)Z
    .locals 1

    iget-object v0, p0, Lge/v$e;->b:Lge/v;

    invoke-virtual {v0, p1, p2}, LWd/w;->Y0(D)Z

    move-result p1

    return p1
.end method

.method public Y1([D)Z
    .locals 8

    invoke-static {p1}, Ljava/util/Arrays;->sort([D)V

    iget-object v0, p0, Lge/v$e;->b:Lge/v;

    iget-object v1, v0, LWd/w;->q:[D

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

    invoke-static {p1, v6, v7}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v2

    if-gez v2, :cond_0

    iget-object v2, p0, Lge/v$e;->b:Lge/v;

    invoke-virtual {v2, v4}, Lge/v;->hf(I)V

    move v2, v4

    move v3, v5

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    return v3
.end method

.method public a(D)Z
    .locals 2

    iget-object v0, p0, Lge/v$e;->b:Lge/v;

    invoke-static {v0}, Lge/v;->vf(Lge/v;)I

    move-result v0

    iget-object v1, p0, Lge/v$e;->b:Lge/v;

    invoke-virtual {v1, p1, p2}, Lge/v;->a(D)I

    move-result p1

    if-eq v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public add(D)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Double;",
            ">;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lge/v$e;->b:Lge/v;

    invoke-virtual {v0}, Lge/v;->clear()V

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

    instance-of v1, v0, Ljava/lang/Double;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-object v3, p0, Lge/v$e;->b:Lge/v;

    invoke-virtual {v3, v0, v1}, Lge/v;->A(D)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return v2

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lke/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lke/c;

    invoke-interface {p1}, Lke/c;->size()I

    move-result v0

    invoke-virtual {p0}, Lge/v$e;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lge/v$e;->b:Lge/v;

    iget-object v0, v0, LWd/c0;->l:[B

    array-length v0, v0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x1

    if-lez v0, :cond_3

    iget-object v0, p0, Lge/v$e;->b:Lge/v;

    iget-object v4, v0, LWd/c0;->l:[B

    aget-byte v4, v4, v2

    if-ne v4, v3, :cond_2

    iget-object v0, v0, LWd/w;->q:[D

    aget-wide v3, v0, v2

    invoke-interface {p1, v3, v4}, Lke/c;->Y0(D)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    return v3
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lge/v$e;->b:Lge/v;

    iget-object v0, v0, LWd/c0;->l:[B

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_1

    iget-object v0, p0, Lge/v$e;->b:Lge/v;

    iget-object v3, v0, LWd/c0;->l:[B

    aget-byte v3, v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v0, v0, LWd/w;->q:[D

    aget-wide v3, v0, v2

    invoke-static {v3, v4}, LVd/b;->b(D)I

    move-result v0

    add-int/2addr v1, v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public i()D
    .locals 2

    iget-object v0, p0, Lge/v$e;->b:Lge/v;

    invoke-static {v0}, Lge/v;->sf(Lge/v;)D

    move-result-wide v0

    return-wide v0
.end method

.method public i1(Lhe/z;)Z
    .locals 1

    iget-object v0, p0, Lge/v$e;->b:Lge/v;

    invoke-virtual {v0, p1}, Lge/v;->k0(Lhe/z;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lge/v$e;->b:Lge/v;

    invoke-static {v0}, Lge/v;->uf(Lge/v;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()LZd/y;
    .locals 2

    new-instance v0, Lge/v$c;

    iget-object v1, p0, Lge/v$e;->b:Lge/v;

    invoke-direct {v0, v1, v1}, Lge/v$c;-><init>(Lge/v;LWd/c0;)V

    return-object v0
.end method

.method public m2([D)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
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

    instance-of v2, v1, Ljava/lang/Double;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lge/v$e;->a(D)Z

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

    invoke-virtual {p0}, Lge/v$e;->iterator()LZd/y;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, LZd/y;->next()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

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

.method public s1([D)Z
    .locals 6

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-wide v3, p1, v2

    iget-object v5, p0, Lge/v$e;->b:Lge/v;

    invoke-virtual {v5, v3, v4}, LWd/w;->Y0(D)Z

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

.method public size()I
    .locals 1

    iget-object v0, p0, Lge/v$e;->b:Lge/v;

    invoke-static {v0}, Lge/v;->tf(Lge/v;)I

    move-result v0

    return v0
.end method

.method public toArray()[D
    .locals 1

    .line 1
    iget-object v0, p0, Lge/v$e;->b:Lge/v;

    invoke-virtual {v0}, Lge/v;->j()[D

    move-result-object v0

    return-object v0
.end method

.method public toArray([D)[D
    .locals 1

    .line 2
    iget-object v0, p0, Lge/v$e;->b:Lge/v;

    invoke-virtual {v0, p1}, Lge/v;->W([D)[D

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lge/v$e;->b:Lge/v;

    new-instance v2, Lge/v$e$a;

    invoke-direct {v2, p0, v0}, Lge/v$e$a;-><init>(Lge/v$e;Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v2}, Lge/v;->k0(Lhe/z;)Z

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w1([D)Z
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_1

    aget-wide v3, p1, v2

    invoke-virtual {p0, v3, v4}, Lge/v$e;->a(D)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public x2(LSd/e;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
