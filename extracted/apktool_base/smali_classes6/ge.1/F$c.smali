.class public Lge/F$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lke/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lge/F;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lge/F$c$a;
    }
.end annotation


# instance fields
.field public final synthetic b:Lge/F;


# direct methods
.method public constructor <init>(Lge/F;)V
    .locals 0

    iput-object p1, p0, Lge/F$c;->b:Lge/F;

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
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    invoke-interface {p1}, LSd/f;->iterator()LZd/H;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, LZd/V;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lge/F$c;->b:Lge/F;

    invoke-interface {p1}, LZd/H;->next()F

    move-result v2

    invoke-virtual {v1, v2}, Lge/F;->H(F)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_2
    return v0
.end method

.method public L1([F)Z
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    iget-object v4, p0, Lge/F$c;->b:Lge/F;

    invoke-virtual {v4, v3}, Lge/F;->H(F)Z

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

    iget-object v0, p0, Lge/F$c;->b:Lge/F;

    iget-object v1, v0, LWd/D;->q:[F

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

    iget-object v2, p0, Lge/F$c;->b:Lge/F;

    invoke-virtual {v2, v4}, Lge/F;->hf(I)V

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

    iget-object v0, p0, Lge/F$c;->b:Lge/F;

    invoke-virtual {v0, p1}, Lge/F;->H(F)Z

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
    .locals 1

    iget-object v0, p0, Lge/F$c;->b:Lge/F;

    invoke-virtual {v0, p1}, Lge/F;->c(F)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c2(LSd/f;)Z
    .locals 3

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lge/F$c;->iterator()LZd/H;

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

    iget-object v0, p0, Lge/F$c;->b:Lge/F;

    invoke-virtual {v0}, Lge/F;->clear()V

    return-void
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
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

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lge/F$c;->b:Lge/F;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lge/F;->H(F)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lke/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lke/d;

    invoke-interface {p1}, Lke/d;->size()I

    move-result v0

    invoke-virtual {p0}, Lge/F$c;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lge/F$c;->b:Lge/F;

    iget-object v0, v0, LWd/c0;->l:[B

    array-length v0, v0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    const/4 v3, 0x1

    if-lez v0, :cond_3

    iget-object v0, p0, Lge/F$c;->b:Lge/F;

    iget-object v4, v0, LWd/c0;->l:[B

    aget-byte v4, v4, v2

    if-ne v4, v3, :cond_2

    iget-object v0, v0, LWd/D;->q:[F

    aget v0, v0, v2

    invoke-interface {p1, v0}, Lke/d;->Z0(F)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    return v3
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

    if-ne p1, p0, :cond_0

    invoke-virtual {p0}, Lge/F$c;->clear()V

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

    invoke-virtual {p0, v2}, Lge/F$c;->c(F)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v0

    goto :goto_0

    :cond_2
    return v1
.end method

.method public hashCode()I
    .locals 5

    iget-object v0, p0, Lge/F$c;->b:Lge/F;

    iget-object v0, v0, LWd/c0;->l:[B

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_1

    iget-object v0, p0, Lge/F$c;->b:Lge/F;

    iget-object v3, v0, LWd/c0;->l:[B

    aget-byte v3, v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v0, v0, LWd/D;->q:[F

    aget v0, v0, v2

    invoke-static {v0}, LVd/b;->c(F)I

    move-result v0

    add-int/2addr v1, v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public i()F
    .locals 1

    iget-object v0, p0, Lge/F$c;->b:Lge/F;

    iget v0, v0, Lge/F;->w:F

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lge/F$c;->b:Lge/F;

    invoke-static {v0}, Lge/F;->sf(Lge/F;)I

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

    new-instance v0, Lge/F$c$a;

    iget-object v1, p0, Lge/F$c;->b:Lge/F;

    invoke-direct {v0, p0, v1}, Lge/F$c$a;-><init>(Lge/F$c;LWd/D;)V

    return-object v0
.end method

.method public k1(Lhe/I;)Z
    .locals 1

    iget-object v0, p0, Lge/F$c;->b:Lge/F;

    invoke-virtual {v0, p1}, Lge/F;->j0(Lhe/I;)Z

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

    invoke-virtual {p0, v1}, Lge/F$c;->c(F)Z

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

    invoke-virtual {p0}, Lge/F$c;->iterator()LZd/H;

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

    iget-object v0, p0, Lge/F$c;->b:Lge/F;

    invoke-static {v0}, Lge/F;->rf(Lge/F;)I

    move-result v0

    return v0
.end method

.method public toArray()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lge/F$c;->b:Lge/F;

    invoke-virtual {v0}, Lge/F;->j()[F

    move-result-object v0

    return-object v0
.end method

.method public toArray([F)[F
    .locals 1

    .line 2
    iget-object v0, p0, Lge/F$c;->b:Lge/F;

    invoke-virtual {v0, p1}, Lge/F;->d0([F)[F

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lge/F$c;->b:Lge/F;

    iget-object v1, v1, LWd/c0;->l:[B

    array-length v1, v1

    const/4 v2, 0x1

    move v3, v2

    :goto_0
    add-int/lit8 v4, v1, -0x1

    if-lez v1, :cond_2

    iget-object v1, p0, Lge/F$c;->b:Lge/F;

    iget-object v1, v1, LWd/c0;->l:[B

    aget-byte v1, v1, v4

    if-ne v1, v2, :cond_1

    if-eqz v3, :cond_0

    const/4 v1, 0x0

    move v3, v1

    goto :goto_1

    :cond_0
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    iget-object v1, p0, Lge/F$c;->b:Lge/F;

    iget-object v1, v1, LWd/D;->q:[F

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_1
    move v1, v4

    goto :goto_0

    :cond_2
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

    invoke-virtual {p0, v0}, Lge/F$c;->c(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    return v1
.end method
