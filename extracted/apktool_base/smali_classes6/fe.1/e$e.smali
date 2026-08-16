.class public Lfe/e$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LSd/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfe/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfe/e$e$b;
    }
.end annotation


# instance fields
.field public final synthetic b:Lfe/e;


# direct methods
.method public constructor <init>(Lfe/e;)V
    .locals 0

    iput-object p1, p0, Lfe/e$e;->b:Lfe/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A1([I)Z
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_1

    aget v0, p1, v2

    invoke-virtual {p0, v0}, Lfe/e$e;->remove(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public K1([I)Z
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    iget-object v4, p0, Lfe/e$e;->b:Lfe/e;

    invoke-virtual {v4, v3}, Lfe/e;->Q(I)Z

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

.method public M1([I)Z
    .locals 6

    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    iget-object v0, p0, Lfe/e$e;->b:Lfe/e;

    iget-object v1, v0, Lfe/e;->t:[I

    iget-object v0, v0, LWd/b0;->l:[Ljava/lang/Object;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-lez v2, :cond_1

    aget-object v2, v0, v4

    sget-object v5, LWd/b0;->p:Ljava/lang/Object;

    if-eq v2, v5, :cond_0

    sget-object v5, LWd/b0;->o:Ljava/lang/Object;

    if-eq v2, v5, :cond_0

    aget v2, v1, v4

    invoke-static {p1, v2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    if-gez v2, :cond_0

    iget-object v2, p0, Lfe/e$e;->b:Lfe/e;

    invoke-virtual {v2, v4}, Lfe/e;->hf(I)V

    const/4 v3, 0x1

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    return v3
.end method

.method public P0([I)[I
    .locals 1

    iget-object v0, p0, Lfe/e$e;->b:Lfe/e;

    invoke-virtual {v0, p1}, Lfe/e;->e0([I)[I

    move-result-object p1

    return-object p1
.end method

.method public U0(Lhe/S;)Z
    .locals 1

    iget-object v0, p0, Lfe/e$e;->b:Lfe/e;

    invoke-virtual {v0, p1}, Lfe/e;->m0(Lhe/S;)Z

    move-result p1

    return p1
.end method

.method public add(I)Z
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
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public b2(LSd/g;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lfe/e$e;->b:Lfe/e;

    invoke-virtual {v0}, Lfe/e;->clear()V

    return-void
.end method

.method public contains(I)Z
    .locals 1

    iget-object v0, p0, Lfe/e$e;->b:Lfe/e;

    invoke-virtual {v0, p1}, Lfe/e;->Q(I)Z

    move-result p1

    return p1
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

    instance-of v1, v0, Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lfe/e$e;->b:Lfe/e;

    invoke-virtual {v1, v0}, Lfe/e;->Q(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return v2

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public d2(LSd/g;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    invoke-virtual {p0}, Lfe/e$e;->clear()V

    return v0

    :cond_0
    invoke-interface {p1}, LSd/g;->iterator()LZd/Q;

    move-result-object p1

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {p1}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, LZd/Q;->next()I

    move-result v2

    invoke-virtual {p0, v2}, Lfe/e$e;->remove(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v0

    goto :goto_0

    :cond_2
    return v1
.end method

.method public h2(LSd/g;)Z
    .locals 2

    invoke-interface {p1}, LSd/g;->iterator()LZd/Q;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, LZd/V;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfe/e$e;->b:Lfe/e;

    invoke-interface {p1}, LZd/Q;->next()I

    move-result v1

    invoke-virtual {v0, v1}, Lfe/e;->Q(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lfe/e$e;->b:Lfe/e;

    iget v0, v0, Lfe/e;->u:I

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lfe/e$e;->b:Lfe/e;

    invoke-static {v0}, Lfe/e;->Gf(Lfe/e;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()LZd/Q;
    .locals 1

    new-instance v0, Lfe/e$e$b;

    invoke-direct {v0, p0}, Lfe/e$e$b;-><init>(Lfe/e$e;)V

    return-object v0
.end method

.method public j2(LSd/g;)Z
    .locals 3

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lfe/e$e;->iterator()LZd/Q;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, LZd/Q;->next()I

    move-result v2

    invoke-interface {p1, v2}, LSd/g;->contains(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, LZd/V;->remove()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public remove(I)Z
    .locals 5

    iget-object v0, p0, Lfe/e$e;->b:Lfe/e;

    iget-object v1, v0, Lfe/e;->t:[I

    iget-object v0, v0, LWd/b0;->l:[Ljava/lang/Object;

    array-length v2, v1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1

    aget-object v2, v0, v3

    sget-object v4, LWd/b0;->p:Ljava/lang/Object;

    if-eq v2, v4, :cond_0

    sget-object v4, LWd/b0;->o:Ljava/lang/Object;

    if-eq v2, v4, :cond_0

    aget v2, v1, v3

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lfe/e$e;->b:Lfe/e;

    invoke-virtual {p1, v3}, Lfe/e;->hf(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
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

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lfe/e$e;->remove(I)Z

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

    invoke-virtual {p0}, Lfe/e$e;->iterator()LZd/Q;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, LZd/Q;->next()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    iget-object v0, p0, Lfe/e$e;->b:Lfe/e;

    invoke-static {v0}, Lfe/e;->Ff(Lfe/e;)I

    move-result v0

    return v0
.end method

.method public toArray()[I
    .locals 1

    iget-object v0, p0, Lfe/e$e;->b:Lfe/e;

    invoke-virtual {v0}, Lfe/e;->values()[I

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lfe/e$e;->b:Lfe/e;

    new-instance v2, Lfe/e$e$a;

    invoke-direct {v2, p0, v0}, Lfe/e$e$a;-><init>(Lfe/e$e;Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v2}, Lfe/e;->m0(Lhe/S;)Z

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public z2([I)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
