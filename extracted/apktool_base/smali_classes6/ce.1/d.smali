.class public Lce/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbe/d;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lce/d$b;
    }
.end annotation


# static fields
.field public static final e:J = 0x1L

.field public static final f:I = 0xa


# instance fields
.field public b:[F

.field public c:I

.field public d:F


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0xa

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lce/d;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lce/d;-><init>(IF)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-array p1, p1, [F

    iput-object p1, p0, Lce/d;->b:[F

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lce/d;->c:I

    .line 6
    iput p2, p0, Lce/d;->d:F

    return-void
.end method

.method public constructor <init>(LSd/f;)V
    .locals 1

    .line 7
    invoke-interface {p1}, LSd/f;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lce/d;-><init>(I)V

    .line 8
    invoke-virtual {p0, p1}, Lce/d;->C2(LSd/f;)Z

    return-void
.end method

.method public constructor <init>([F)V
    .locals 1

    .line 9
    array-length v0, p1

    invoke-direct {p0, v0}, Lce/d;-><init>(I)V

    .line 10
    invoke-virtual {p0, p1}, Lce/d;->e3([F)V

    return-void
.end method

.method public constructor <init>([FFZ)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_1

    if-eqz p1, :cond_0

    .line 12
    iput-object p1, p0, Lce/d;->b:[F

    .line 13
    array-length p1, p1

    iput p1, p0, Lce/d;->c:I

    .line 14
    iput p2, p0, Lce/d;->d:F

    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "values can not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Wrong call"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private h(II)V
    .locals 3

    iget-object v0, p0, Lce/d;->b:[F

    aget v1, v0, p1

    aget v2, v0, p2

    aput v2, v0, p1

    aput v1, v0, p2

    return-void
.end method

.method public static k([F)Lce/d;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lce/d;->l([FF)Lce/d;

    move-result-object p0

    return-object p0
.end method

.method public static l([FF)Lce/d;
    .locals 2

    new-instance v0, Lce/d$a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lce/d$a;-><init>([FFZ)V

    return-object v0
.end method


# virtual methods
.method public B0(I)F
    .locals 2

    invoke-virtual {p0, p1}, Lce/d;->get(I)F

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lce/d;->t0(II)V

    return v0
.end method

.method public C2(LSd/f;)Z
    .locals 2

    invoke-interface {p1}, LSd/f;->iterator()LZd/H;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, LZd/V;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, LZd/H;->next()F

    move-result v1

    invoke-virtual {p0, v1}, Lce/d;->f1(F)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public D1(LSd/f;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p1}, LSd/f;->iterator()LZd/H;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, LZd/V;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, LZd/H;->next()F

    move-result v1

    invoke-virtual {p0, v1}, Lce/d;->Z0(F)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_2
    return v0
.end method

.method public G3(FII)I
    .locals 3

    if-ltz p2, :cond_4

    iget v0, p0, Lce/d;->c:I

    if-gt p3, v0, :cond_3

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-gt p2, p3, :cond_2

    add-int v0, p2, p3

    ushr-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lce/d;->b:[F

    aget v1, v1, v0

    cmpg-float v2, v1, p1

    if-gez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    move p2, v0

    goto :goto_0

    :cond_0
    cmpl-float p3, v1, p1

    if-lez p3, :cond_1

    add-int/lit8 v0, v0, -0x1

    move p3, v0

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    add-int/lit8 p2, p2, 0x1

    neg-int p1, p2

    return p1

    :cond_3
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1, p3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p1
.end method

.method public H3(F)I
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lce/d;->c:I

    invoke-virtual {p0, p1, v0, v1}, Lce/d;->G3(FII)I

    move-result p1

    return p1
.end method

.method public J0(Ljava/util/Random;)V
    .locals 3

    iget v0, p0, Lce/d;->c:I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lce/d;->h(II)V

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public Ka(I[FII)V
    .locals 3

    iget v0, p0, Lce/d;->c:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2, p3, p4}, Lce/d;->We([FII)V

    return-void

    :cond_0
    add-int/2addr v0, p4

    invoke-virtual {p0, v0}, Lce/d;->b(I)V

    iget-object v0, p0, Lce/d;->b:[F

    add-int v1, p1, p4

    iget v2, p0, Lce/d;->c:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lce/d;->b:[F

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lce/d;->c:I

    add-int/2addr p1, p4

    iput p1, p0, Lce/d;->c:I

    return-void
.end method

.method public L1([F)Z
    .locals 2

    array-length v0, p1

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    aget v0, p1, v1

    invoke-virtual {p0, v0}, Lce/d;->Z0(F)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public M2(F)V
    .locals 3

    iget-object v0, p0, Lce/d;->b:[F

    const/4 v1, 0x0

    iget v2, p0, Lce/d;->c:I

    invoke-static {v0, v1, v2, p1}, Ljava/util/Arrays;->fill([FIIF)V

    return-void
.end method

.method public Q8(IF)F
    .locals 2

    iget v0, p0, Lce/d;->c:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lce/d;->b:[F

    aget v1, v0, p1

    aput p2, v0, p1

    return v1

    :cond_0
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method public R5([FIII)[F
    .locals 1

    if-nez p4, :cond_0

    return-object p1

    :cond_0
    if-ltz p2, :cond_1

    iget v0, p0, Lce/d;->c:I

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lce/d;->b:[F

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p1
.end method

.method public T7(I[FII)V
    .locals 2

    if-ltz p1, :cond_0

    add-int v0, p1, p4

    iget v1, p0, Lce/d;->c:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lce/d;->b:[F

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method public Te(I[F)V
    .locals 2

    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lce/d;->Ka(I[FII)V

    return-void
.end method

.method public U8([FII)[F
    .locals 2

    if-nez p3, :cond_0

    return-object p1

    :cond_0
    if-ltz p2, :cond_1

    iget v0, p0, Lce/d;->c:I

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lce/d;->b:[F

    const/4 v1, 0x0

    invoke-static {v0, p2, p1, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p1
.end method

.method public V1([F)Z
    .locals 4

    invoke-static {p1}, Ljava/util/Arrays;->sort([F)V

    iget-object v0, p0, Lce/d;->b:[F

    iget v1, p0, Lce/d;->c:I

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-lez v1, :cond_1

    aget v1, v0, v3

    invoke-static {p1, v1}, Ljava/util/Arrays;->binarySearch([FF)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, v3, v2}, Lce/d;->t0(II)V

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    return v2
.end method

.method public V2(Lhe/I;)Lbe/d;
    .locals 3

    new-instance v0, Lce/d;

    invoke-direct {v0}, Lce/d;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lce/d;->c:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lce/d;->b:[F

    aget v2, v2, v1

    invoke-interface {p1, v2}, Lhe/I;->a(F)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lce/d;->b:[F

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Lce/d;->f1(F)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public We([FII)V
    .locals 2

    iget v0, p0, Lce/d;->c:I

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Lce/d;->b(I)V

    iget-object v0, p0, Lce/d;->b:[F

    iget v1, p0, Lce/d;->c:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lce/d;->c:I

    add-int/2addr p1, p3

    iput p1, p0, Lce/d;->c:I

    return-void
.end method

.method public X3(F)I
    .locals 1

    iget v0, p0, Lce/d;->c:I

    invoke-virtual {p0, v0, p1}, Lce/d;->d6(IF)I

    move-result p1

    return p1
.end method

.method public Z0(F)Z
    .locals 0

    invoke-virtual {p0, p1}, Lce/d;->X3(F)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a(I)V
    .locals 0

    new-array p1, p1, [F

    iput-object p1, p0, Lce/d;->b:[F

    const/4 p1, 0x0

    iput p1, p0, Lce/d;->c:I

    return-void
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Float;",
            ">;)Z"
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

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p0, v1}, Lce/d;->f1(F)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public b(I)V
    .locals 3

    iget-object v0, p0, Lce/d;->b:[F

    array-length v1, v0

    if-le p1, v1, :cond_0

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [F

    iget-object v0, p0, Lce/d;->b:[F

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lce/d;->b:[F

    :cond_0
    return-void
.end method

.method public bd(I[F)V
    .locals 2

    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lce/d;->T7(I[FII)V

    return-void
.end method

.method public c(F)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lce/d;->c:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lce/d;->b:[F

    aget v2, v2, v1

    cmpl-float v2, p1, v2

    if-nez v2, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, v1, p1}, Lce/d;->t0(II)V

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public c2(LSd/f;)Z
    .locals 3

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lce/d;->iterator()LZd/H;

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

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lce/d;->a(I)V

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

    invoke-virtual {p0, v0}, Lce/d;->Z0(F)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return v2

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public d(I)F
    .locals 1

    iget-object v0, p0, Lce/d;->b:[F

    aget p1, v0, p1

    return p1
.end method

.method public d5(Lhe/I;)Lbe/d;
    .locals 3

    new-instance v0, Lce/d;

    invoke-direct {v0}, Lce/d;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lce/d;->c:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lce/d;->b:[F

    aget v2, v2, v1

    invoke-interface {p1, v2}, Lhe/I;->a(F)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lce/d;->b:[F

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Lce/d;->f1(F)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public d6(IF)I
    .locals 1

    :goto_0
    add-int/lit8 v0, p1, -0x1

    if-lez p1, :cond_1

    iget-object p1, p0, Lce/d;->b:[F

    aget p1, p1, v0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    return v0

    :cond_0
    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public e()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lce/d;->c:I

    iget-object v0, p0, Lce/d;->b:[F

    iget v1, p0, Lce/d;->d:F

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    return-void
.end method

.method public e3([F)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lce/d;->We([FII)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lce/d;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    check-cast p1, Lce/d;

    invoke-virtual {p1}, Lce/d;->size()I

    move-result v1

    invoke-virtual {p0}, Lce/d;->size()I

    move-result v3

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    iget v1, p0, Lce/d;->c:I

    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-lez v1, :cond_3

    iget-object v1, p0, Lce/d;->b:[F

    aget v1, v1, v3

    iget-object v4, p1, Lce/d;->b:[F

    aget v4, v4, v3

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_2

    return v2

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    return v2
.end method

.method public f()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lce/d;->c:I

    return-void
.end method

.method public f1(F)Z
    .locals 4

    iget v0, p0, Lce/d;->c:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lce/d;->b(I)V

    iget-object v0, p0, Lce/d;->b:[F

    iget v2, p0, Lce/d;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lce/d;->c:I

    aput p1, v0, v2

    return v1
.end method

.method public g(IF)V
    .locals 1

    iget-object v0, p0, Lce/d;->b:[F

    aput p2, v0, p1

    return-void
.end method

.method public g2(LSd/f;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    invoke-virtual {p0}, Lce/d;->clear()V

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

    invoke-virtual {p0, v2}, Lce/d;->c(F)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v0

    goto :goto_0

    :cond_2
    return v1
.end method

.method public get(I)F
    .locals 1

    iget v0, p0, Lce/d;->c:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lce/d;->b:[F

    aget p1, v0, p1

    return p1

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lce/d;->c:I

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lce/d;->b:[F

    aget v0, v0, v2

    invoke-static {v0}, LVd/b;->c(F)I

    move-result v0

    add-int/2addr v1, v0

    move v0, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public i()F
    .locals 1

    iget v0, p0, Lce/d;->d:F

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lce/d;->c:I

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

    new-instance v0, Lce/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lce/d$b;-><init>(Lce/d;I)V

    return-object v0
.end method

.method public j()V
    .locals 3

    iget-object v0, p0, Lce/d;->b:[F

    array-length v0, v0

    invoke-virtual {p0}, Lce/d;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lce/d;->size()I

    move-result v0

    new-array v1, v0, [F

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lce/d;->U8([FII)[F

    iput-object v1, p0, Lce/d;->b:[F

    :cond_0
    return-void
.end method

.method public j6(F)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lce/d;->z6(IF)I

    move-result p1

    return p1
.end method

.method public k1(Lhe/I;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lce/d;->c:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lce/d;->b:[F

    aget v2, v2, v1

    invoke-interface {p1, v2}, Lhe/I;->a(F)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public l2([F)Z
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget v3, p1, v1

    invoke-virtual {p0, v3}, Lce/d;->f1(F)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public l5(IF)F
    .locals 2

    iget v0, p0, Lce/d;->c:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lce/d;->b:[F

    aget v1, v0, p1

    aput p2, v0, p1

    return v1

    :cond_0
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method public l8(IF)V
    .locals 3

    iget v0, p0, Lce/d;->c:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Lce/d;->f1(F)Z

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lce/d;->b(I)V

    iget-object v0, p0, Lce/d;->b:[F

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lce/d;->c:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lce/d;->b:[F

    aput p2, v0, p1

    iget p1, p0, Lce/d;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lce/d;->c:I

    return-void
.end method

.method public max()F
    .locals 4

    invoke-virtual {p0}, Lce/d;->size()I

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lce/d;->c:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lce/d;->b:[F

    aget v2, v2, v1

    cmpl-float v3, v2, v0

    if-lez v3, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot find maximum of an empty list"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public min()F
    .locals 4

    invoke-virtual {p0}, Lce/d;->size()I

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lce/d;->c:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lce/d;->b:[F

    aget v2, v2, v1

    cmpg-float v3, v2, v0

    if-gez v3, :cond_0

    move v0, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot find minimum of an empty list"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public n(LUd/d;)V
    .locals 3

    iget v0, p0, Lce/d;->c:I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lce/d;->b:[F

    aget v2, v0, v1

    invoke-interface {p1, v2}, LUd/d;->a(F)F

    move-result v2

    aput v2, v0, v1

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public o()F
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lce/d;->c:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lce/d;->b:[F

    aget v2, v2, v1

    add-float/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public q6(IIF)V
    .locals 1

    iget v0, p0, Lce/d;->c:I

    if-le p2, v0, :cond_0

    invoke-virtual {p0, p2}, Lce/d;->b(I)V

    iput p2, p0, Lce/d;->c:I

    :cond_0
    iget-object v0, p0, Lce/d;->b:[F

    invoke-static {v0, p1, p2, p3}, Ljava/util/Arrays;->fill([FIIF)V

    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iput v0, p0, Lce/d;->c:I

    invoke-interface {p1}, Ljava/io/DataInput;->readFloat()F

    move-result v0

    iput v0, p0, Lce/d;->d:F

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    new-array v1, v0, [F

    iput-object v1, p0, Lce/d;->b:[F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lce/d;->b:[F

    invoke-interface {p1}, Ljava/io/DataInput;->readFloat()F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
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

    invoke-virtual {p0, v1}, Lce/d;->c(F)Z

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

    invoke-virtual {p0}, Lce/d;->iterator()LZd/H;

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

    iget v0, p0, Lce/d;->c:I

    return v0
.end method

.method public sort()V
    .locals 3

    iget-object v0, p0, Lce/d;->b:[F

    const/4 v1, 0x0

    iget v2, p0, Lce/d;->c:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([FII)V

    return-void
.end method

.method public subList(II)Lbe/d;
    .locals 3

    if-lt p2, p1, :cond_3

    if-ltz p1, :cond_2

    iget-object v0, p0, Lce/d;->b:[F

    array-length v0, v0

    if-gt p2, v0, :cond_1

    new-instance v0, Lce/d;

    sub-int v1, p2, p1

    invoke-direct {v0, v1}, Lce/d;-><init>(I)V

    :goto_0
    if-ge p1, p2, :cond_0

    iget-object v1, p0, Lce/d;->b:[F

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lce/d;->f1(F)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "end index < "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lce/d;->b:[F

    array-length v0, v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "begin index can not be < 0"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " greater than begin index "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public t0(II)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_3

    iget v0, p0, Lce/d;->c:I

    if-ge p1, v0, :cond_3

    if-nez p1, :cond_1

    iget-object p1, p0, Lce/d;->b:[F

    const/4 v1, 0x0

    sub-int/2addr v0, p2

    invoke-static {p1, p2, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    sub-int v1, v0, p2

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lce/d;->b:[F

    add-int v2, p1, p2

    sub-int/2addr v0, v2

    invoke-static {v1, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget p1, p0, Lce/d;->c:I

    sub-int/2addr p1, p2

    iput p1, p0, Lce/d;->c:I

    return-void

    :cond_3
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method public toArray()[F
    .locals 2

    const/4 v0, 0x0

    .line 1
    iget v1, p0, Lce/d;->c:I

    invoke-virtual {p0, v0, v1}, Lce/d;->z0(II)[F

    move-result-object v0

    return-object v0
.end method

.method public toArray([F)[F
    .locals 3

    .line 2
    array-length v0, p1

    .line 3
    array-length v1, p1

    iget v2, p0, Lce/d;->c:I

    if-le v1, v2, :cond_0

    .line 4
    iget v0, p0, Lce/d;->d:F

    aput v0, p1, v2

    move v0, v2

    :cond_0
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p0, p1, v1, v0}, Lce/d;->U8([FII)[F

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lce/d;->c:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lce/d;->b:[F

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lce/d;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lce/d;->b:[F

    iget v2, p0, Lce/d;->c:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u0()V
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lce/d;->c:I

    invoke-virtual {p0, v0, v1}, Lce/d;->y0(II)V

    return-void
.end method

.method public w0(II)V
    .locals 1

    iget-object v0, p0, Lce/d;->b:[F

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->sort([FII)V

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget v1, p0, Lce/d;->c:I

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    iget v1, p0, Lce/d;->d:F

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeFloat(F)V

    iget-object v1, p0, Lce/d;->b:[F

    array-length v1, v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lce/d;->b:[F

    aget v2, v2, v0

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeFloat(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public x1([F)Z
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_1

    aget v0, p1, v2

    invoke-virtual {p0, v0}, Lce/d;->c(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public y0(II)V
    .locals 0

    if-ne p1, p2, :cond_0

    return-void

    :cond_0
    if-gt p1, p2, :cond_2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ge p1, p2, :cond_1

    invoke-direct {p0, p1, p2}, Lce/d;->h(II)V

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "from cannot be greater than to"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public z0(II)[F
    .locals 1

    new-array v0, p2, [F

    invoke-virtual {p0, v0, p1, p2}, Lce/d;->U8([FII)[F

    return-object v0
.end method

.method public z6(IF)I
    .locals 1

    :goto_0
    iget v0, p0, Lce/d;->c:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lce/d;->b:[F

    aget v0, v0, p1

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public zc(Lhe/I;)Z
    .locals 2

    iget v0, p0, Lce/d;->c:I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    iget-object v0, p0, Lce/d;->b:[F

    aget v0, v0, v1

    invoke-interface {p1, v0}, Lhe/I;->a(F)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
