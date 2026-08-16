.class public Lge/j0$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LSd/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lge/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public final synthetic b:Lge/j0;


# direct methods
.method public constructor <init>(Lge/j0;)V
    .locals 0

    iput-object p1, p0, Lge/j0$f;->b:Lge/j0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public C2(LSd/f;)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public D1(LSd/f;)Z
    .locals 2

    invoke-interface {p1}, LSd/f;->iterator()LZd/H;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, LZd/V;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lge/j0$f;->b:Lge/j0;

    invoke-interface {p1}, LZd/H;->next()F

    move-result v1

    invoke-virtual {v0, v1}, Lge/j0;->U(F)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public L1([F)Z
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    iget-object v4, p0, Lge/j0$f;->b:Lge/j0;

    invoke-virtual {v4, v3}, Lge/j0;->U(F)Z

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

.method public V1([F)Z
    .locals 6

    invoke-static {p1}, Ljava/util/Arrays;->sort([F)V

    iget-object v0, p0, Lge/j0$f;->b:Lge/j0;

    iget-object v1, v0, Lge/j0;->v:[F

    iget-object v0, v0, LWd/c0;->l:[B

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-lez v2, :cond_1

    aget-byte v2, v0, v4

    const/4 v5, 0x1

    if-ne v2, v5, :cond_0

    aget v2, v1, v4

    invoke-static {p1, v2}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v2

    if-gez v2, :cond_0

    iget-object v2, p0, Lge/j0$f;->b:Lge/j0;

    invoke-virtual {v2, v4}, Lge/j0;->hf(I)V

    move v2, v4

    move v3, v5

    goto :goto_0

    :cond_0
    move v2, v4

    goto :goto_0

    :cond_1
    return v3
.end method

.method public Z0(F)Z
    .locals 1

    iget-object v0, p0, Lge/j0$f;->b:Lge/j0;

    invoke-virtual {v0, p1}, Lge/j0;->U(F)Z

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
            "Ljava/lang/Float;",
            ">;)Z"
        }
    .end annotation

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public c(F)Z
    .locals 5

    iget-object v0, p0, Lge/j0$f;->b:Lge/j0;

    iget-object v1, v0, Lge/j0;->v:[F

    iget-object v0, v0, LWd/g0;->q:[S

    array-length v2, v1

    :goto_0
    add-int/lit8 v3, v2, -0x1

    if-lez v2, :cond_1

    aget-short v2, v0, v3

    if-eqz v2, :cond_0

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    aget v2, v1, v3

    cmpl-float v2, p1, v2

    if-nez v2, :cond_0

    iget-object p1, p0, Lge/j0$f;->b:Lge/j0;

    invoke-virtual {p1, v3}, Lge/j0;->hf(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public c2(LSd/f;)Z
    .locals 3

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lge/j0$f;->iterator()LZd/H;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, LZd/H;->next()F

    move-result v2

    invoke-interface {p1, v2}, LSd/f;->Z0(F)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, LZd/V;->remove()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lge/j0$f;->b:Lge/j0;

    invoke-virtual {v0}, Lge/j0;->clear()V

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

    instance-of v1, v0, Ljava/lang/Float;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lge/j0$f;->b:Lge/j0;

    invoke-virtual {v1, v0}, Lge/j0;->U(F)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return v2

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public f1(F)Z
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public g2(LSd/f;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    invoke-virtual {p0}, Lge/j0$f;->clear()V

    return v0

    :cond_0
    invoke-interface {p1}, LSd/f;->iterator()LZd/H;

    move-result-object p1

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {p1}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, LZd/H;->next()F

    move-result v2

    invoke-virtual {p0, v2}, Lge/j0$f;->c(F)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v0

    goto :goto_0

    :cond_2
    return v1
.end method

.method public i()F
    .locals 1

    iget-object v0, p0, Lge/j0$f;->b:Lge/j0;

    invoke-static {v0}, Lge/j0;->wf(Lge/j0;)F

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lge/j0$f;->b:Lge/j0;

    invoke-static {v0}, Lge/j0;->yf(Lge/j0;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()LZd/H;
    .locals 2

    new-instance v0, Lge/j0$e;

    iget-object v1, p0, Lge/j0$f;->b:Lge/j0;

    invoke-direct {v0, v1, v1}, Lge/j0$e;-><init>(Lge/j0;LWd/c0;)V

    return-object v0
.end method

.method public k1(Lhe/I;)Z
    .locals 1

    iget-object v0, p0, Lge/j0$f;->b:Lge/j0;

    invoke-virtual {v0, p1}, Lge/j0;->B(Lhe/I;)Z

    move-result p1

    return p1
.end method

.method public l2([F)Z
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

    instance-of v2, v1, Ljava/lang/Float;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, v1}, Lge/j0$f;->c(F)Z

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

    invoke-virtual {p0}, Lge/j0$f;->iterator()LZd/H;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, LZd/H;->next()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

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

    iget-object v0, p0, Lge/j0$f;->b:Lge/j0;

    invoke-static {v0}, Lge/j0;->xf(Lge/j0;)I

    move-result v0

    return v0
.end method

.method public toArray()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lge/j0$f;->b:Lge/j0;

    invoke-virtual {v0}, Lge/j0;->values()[F

    move-result-object v0

    return-object v0
.end method

.method public toArray([F)[F
    .locals 1

    .line 2
    iget-object v0, p0, Lge/j0$f;->b:Lge/j0;

    invoke-virtual {v0, p1}, Lge/j0;->c0([F)[F

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lge/j0$f;->b:Lge/j0;

    new-instance v2, Lge/j0$f$a;

    invoke-direct {v2, p0, v0}, Lge/j0$f$a;-><init>(Lge/j0$f;Ljava/lang/StringBuilder;)V

    invoke-virtual {v1, v2}, Lge/j0;->B(Lhe/I;)Z

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x1([F)Z
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_1

    aget v0, p1, v2

    invoke-virtual {p0, v0}, Lge/j0$f;->c(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    return v1
.end method
