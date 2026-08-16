.class public Lce/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbe/e;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lce/e$b;
    }
.end annotation


# static fields
.field public static final e:J = 0x1L

.field public static final f:I = 0xa


# instance fields
.field public b:[I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0xa

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lce/e;-><init>(II)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lce/e;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-array p1, p1, [I

    iput-object p1, p0, Lce/e;->b:[I

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lce/e;->c:I

    .line 6
    iput p2, p0, Lce/e;->d:I

    return-void
.end method

.method public constructor <init>(LSd/g;)V
    .locals 1

    .line 7
    invoke-interface {p1}, LSd/g;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lce/e;-><init>(I)V

    .line 8
    invoke-virtual {p0, p1}, Lce/e;->b2(LSd/g;)Z

    return-void
.end method

.method public constructor <init>([I)V
    .locals 1

    .line 9
    array-length v0, p1

    invoke-direct {p0, v0}, Lce/e;-><init>(I)V

    .line 10
    invoke-virtual {p0, p1}, Lce/e;->k3([I)V

    return-void
.end method

.method public constructor <init>([IIZ)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_1

    if-eqz p1, :cond_0

    .line 12
    iput-object p1, p0, Lce/e;->b:[I

    .line 13
    array-length p1, p1

    iput p1, p0, Lce/e;->c:I

    .line 14
    iput p2, p0, Lce/e;->d:I

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

    iget-object v0, p0, Lce/e;->b:[I

    aget v1, v0, p1

    aget v2, v0, p2

    aput v2, v0, p1

    aput v1, v0, p2

    return-void
.end method

.method public static k([I)Lce/e;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lce/e;->l([II)Lce/e;

    move-result-object p0

    return-object p0
.end method

.method public static l([II)Lce/e;
    .locals 2

    new-instance v0, Lce/e$a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lce/e$a;-><init>([IIZ)V

    return-object v0
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

    invoke-virtual {p0, v0}, Lce/e;->remove(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public B0(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lce/e;->get(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lce/e;->t0(II)V

    return v0
.end method

.method public B6(II)I
    .locals 1

    :goto_0
    iget v0, p0, Lce/e;->c:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lce/e;->b:[I

    aget v0, v0, p1

    if-ne v0, p2, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public F3(I)I
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lce/e;->c:I

    invoke-virtual {p0, p1, v0, v1}, Lce/e;->y7(III)I

    move-result p1

    return p1
.end method

.method public I4(I[III)V
    .locals 2

    if-ltz p1, :cond_0

    add-int v0, p1, p4

    iget v1, p0, Lce/e;->c:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lce/e;->b:[I

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method public J0(Ljava/util/Random;)V
    .locals 3

    iget v0, p0, Lce/e;->c:I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lce/e;->h(II)V

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public K1([I)Z
    .locals 2

    array-length v0, p1

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    aget v0, p1, v1

    invoke-virtual {p0, v0}, Lce/e;->contains(I)Z

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

.method public Kb(Lhe/S;)Lbe/e;
    .locals 3

    new-instance v0, Lce/e;

    invoke-direct {v0}, Lce/e;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lce/e;->c:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lce/e;->b:[I

    aget v2, v2, v1

    invoke-interface {p1, v2}, Lhe/S;->a(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lce/e;->b:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Lce/e;->add(I)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public M1([I)Z
    .locals 4

    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    iget-object v0, p0, Lce/e;->b:[I

    iget v1, p0, Lce/e;->c:I

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-lez v1, :cond_1

    aget v1, v0, v3

    invoke-static {p1, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, v3, v2}, Lce/e;->t0(II)V

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    return v2
.end method

.method public M7(II)V
    .locals 3

    iget v0, p0, Lce/e;->c:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Lce/e;->add(I)Z

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lce/e;->b(I)V

    iget-object v0, p0, Lce/e;->b:[I

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lce/e;->c:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lce/e;->b:[I

    aput p2, v0, p1

    iget p1, p0, Lce/e;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lce/e;->c:I

    return-void
.end method

.method public P0([I)[I
    .locals 3

    array-length v0, p1

    array-length v1, p1

    iget v2, p0, Lce/e;->c:I

    if-le v1, v2, :cond_0

    iget v0, p0, Lce/e;->d:I

    aput v0, p1, v2

    move v0, v2

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lce/e;->w9([III)[I

    return-object p1
.end method

.method public Q3(I)I
    .locals 1

    iget v0, p0, Lce/e;->c:I

    invoke-virtual {p0, v0, p1}, Lce/e;->c6(II)I

    move-result p1

    return p1
.end method

.method public R8(II)I
    .locals 2

    iget v0, p0, Lce/e;->c:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lce/e;->b:[I

    aget v1, v0, p1

    aput p2, v0, p1

    return v1

    :cond_0
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method public U0(Lhe/S;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lce/e;->c:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lce/e;->b:[I

    aget v2, v2, v1

    invoke-interface {p1, v2}, Lhe/S;->a(I)Z

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

.method public Ue(I[I)V
    .locals 2

    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lce/e;->v7(I[III)V

    return-void
.end method

.method public Wc(Lhe/S;)Z
    .locals 2

    iget v0, p0, Lce/e;->c:I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    iget-object v0, p0, Lce/e;->b:[I

    aget v0, v0, v1

    invoke-interface {p1, v0}, Lhe/S;->a(I)Z

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

.method public Xa([IIII)[I
    .locals 1

    if-nez p4, :cond_0

    return-object p1

    :cond_0
    if-ltz p2, :cond_1

    iget v0, p0, Lce/e;->c:I

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lce/e;->b:[I

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p1
.end method

.method public a(I)V
    .locals 0

    new-array p1, p1, [I

    iput-object p1, p0, Lce/e;->b:[I

    const/4 p1, 0x0

    iput p1, p0, Lce/e;->c:I

    return-void
.end method

.method public add(I)Z
    .locals 4

    iget v0, p0, Lce/e;->c:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lce/e;->b(I)V

    iget-object v0, p0, Lce/e;->b:[I

    iget v2, p0, Lce/e;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lce/e;->c:I

    aput p1, v0, v2

    return v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Integer;",
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

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lce/e;->add(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public b(I)V
    .locals 3

    iget-object v0, p0, Lce/e;->b:[I

    array-length v1, v0

    if-le p1, v1, :cond_0

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [I

    iget-object v0, p0, Lce/e;->b:[I

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lce/e;->b:[I

    :cond_0
    return-void
.end method

.method public b2(LSd/g;)Z
    .locals 2

    invoke-interface {p1}, LSd/g;->iterator()LZd/Q;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, LZd/V;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, LZd/Q;->next()I

    move-result v1

    invoke-virtual {p0, v1}, Lce/e;->add(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public c(I)I
    .locals 1

    iget-object v0, p0, Lce/e;->b:[I

    aget p1, v0, p1

    return p1
.end method

.method public c6(II)I
    .locals 1

    :goto_0
    add-int/lit8 v0, p1, -0x1

    if-lez p1, :cond_1

    iget-object p1, p0, Lce/e;->b:[I

    aget p1, p1, v0

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public clear()V
    .locals 1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lce/e;->a(I)V

    return-void
.end method

.method public contains(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lce/e;->Q3(I)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
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

    invoke-virtual {p0, v0}, Lce/e;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return v2

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lce/e;->c:I

    iget-object v0, p0, Lce/e;->b:[I

    iget v1, p0, Lce/e;->d:I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method public d2(LSd/g;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    invoke-virtual {p0}, Lce/e;->clear()V

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

    invoke-virtual {p0, v2}, Lce/e;->remove(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v0

    goto :goto_0

    :cond_2
    return v1
.end method

.method public d3(I)V
    .locals 3

    iget-object v0, p0, Lce/e;->b:[I

    const/4 v1, 0x0

    iget v2, p0, Lce/e;->c:I

    invoke-static {v0, v1, v2, p1}, Ljava/util/Arrays;->fill([IIII)V

    return-void
.end method

.method public dd(I[I)V
    .locals 2

    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lce/e;->I4(I[III)V

    return-void
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lce/e;->c:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lce/e;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    check-cast p1, Lce/e;

    invoke-virtual {p1}, Lce/e;->size()I

    move-result v1

    invoke-virtual {p0}, Lce/e;->size()I

    move-result v3

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    iget v1, p0, Lce/e;->c:I

    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-lez v1, :cond_3

    iget-object v1, p0, Lce/e;->b:[I

    aget v1, v1, v3

    iget-object v4, p1, Lce/e;->b:[I

    aget v4, v4, v3

    if-eq v1, v4, :cond_2

    return v2

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    return v2
.end method

.method public f(LUd/e;)V
    .locals 3

    iget v0, p0, Lce/e;->c:I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lce/e;->b:[I

    aget v2, v0, v1

    invoke-interface {p1, v2}, LUd/e;->a(I)I

    move-result v2

    aput v2, v0, v1

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public f9([III)V
    .locals 2

    iget v0, p0, Lce/e;->c:I

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Lce/e;->b(I)V

    iget-object v0, p0, Lce/e;->b:[I

    iget v1, p0, Lce/e;->c:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lce/e;->c:I

    add-int/2addr p1, p3

    iput p1, p0, Lce/e;->c:I

    return-void
.end method

.method public g(II)V
    .locals 1

    iget-object v0, p0, Lce/e;->b:[I

    aput p2, v0, p1

    return-void
.end method

.method public get(I)I
    .locals 1

    iget v0, p0, Lce/e;->c:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lce/e;->b:[I

    aget p1, v0, p1

    return p1

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public h2(LSd/g;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p1}, LSd/g;->iterator()LZd/Q;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, LZd/V;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, LZd/Q;->next()I

    move-result v1

    invoke-virtual {p0, v1}, Lce/e;->contains(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lce/e;->c:I

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lce/e;->b:[I

    aget v0, v0, v2

    invoke-static {v0}, LVd/b;->d(I)I

    move-result v0

    add-int/2addr v1, v0

    move v0, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lce/e;->d:I

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lce/e;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()LZd/Q;
    .locals 2

    new-instance v0, Lce/e$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lce/e$b;-><init>(Lce/e;I)V

    return-object v0
.end method

.method public j()V
    .locals 3

    iget-object v0, p0, Lce/e;->b:[I

    array-length v0, v0

    invoke-virtual {p0}, Lce/e;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lce/e;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lce/e;->w9([III)[I

    iput-object v1, p0, Lce/e;->b:[I

    :cond_0
    return-void
.end method

.method public j2(LSd/g;)Z
    .locals 3

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lce/e;->iterator()LZd/Q;

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

.method public k3([I)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lce/e;->f9([III)V

    return-void
.end method

.method public m6(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lce/e;->B6(II)I

    move-result p1

    return p1
.end method

.method public max()I
    .locals 3

    invoke-virtual {p0}, Lce/e;->size()I

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lce/e;->c:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lce/e;->b:[I

    aget v2, v2, v1

    if-le v2, v0, :cond_0

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

.method public min()I
    .locals 3

    invoke-virtual {p0}, Lce/e;->size()I

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7fffffff

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lce/e;->c:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lce/e;->b:[I

    aget v2, v2, v1

    if-ge v2, v0, :cond_0

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

.method public n5(II)I
    .locals 2

    iget v0, p0, Lce/e;->c:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lce/e;->b:[I

    aget v1, v0, p1

    aput p2, v0, p1

    return v1

    :cond_0
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method public o()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lce/e;->c:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lce/e;->b:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
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

    iput v0, p0, Lce/e;->c:I

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iput v0, p0, Lce/e;->d:I

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    new-array v1, v0, [I

    iput-object v1, p0, Lce/e;->b:[I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lce/e;->b:[I

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(I)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lce/e;->c:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lce/e;->b:[I

    aget v2, v2, v1

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, v1, p1}, Lce/e;->t0(II)V

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
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

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lce/e;->remove(I)Z

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

    invoke-virtual {p0}, Lce/e;->iterator()LZd/Q;

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

.method public s6(III)V
    .locals 1

    iget v0, p0, Lce/e;->c:I

    if-le p2, v0, :cond_0

    invoke-virtual {p0, p2}, Lce/e;->b(I)V

    iput p2, p0, Lce/e;->c:I

    :cond_0
    iget-object v0, p0, Lce/e;->b:[I

    invoke-static {v0, p1, p2, p3}, Ljava/util/Arrays;->fill([IIII)V

    return-void
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lce/e;->c:I

    return v0
.end method

.method public sort()V
    .locals 3

    iget-object v0, p0, Lce/e;->b:[I

    const/4 v1, 0x0

    iget v2, p0, Lce/e;->c:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([III)V

    return-void
.end method

.method public subList(II)Lbe/e;
    .locals 3

    if-lt p2, p1, :cond_3

    if-ltz p1, :cond_2

    iget-object v0, p0, Lce/e;->b:[I

    array-length v0, v0

    if-gt p2, v0, :cond_1

    new-instance v0, Lce/e;

    sub-int v1, p2, p1

    invoke-direct {v0, v1}, Lce/e;-><init>(I)V

    :goto_0
    if-ge p1, p2, :cond_0

    iget-object v1, p0, Lce/e;->b:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lce/e;->add(I)Z

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

    iget-object v0, p0, Lce/e;->b:[I

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

    iget v0, p0, Lce/e;->c:I

    if-ge p1, v0, :cond_3

    if-nez p1, :cond_1

    iget-object p1, p0, Lce/e;->b:[I

    const/4 v1, 0x0

    sub-int/2addr v0, p2

    invoke-static {p1, p2, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    sub-int v1, v0, p2

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lce/e;->b:[I

    add-int v2, p1, p2

    sub-int/2addr v0, v2

    invoke-static {v1, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget p1, p0, Lce/e;->c:I

    sub-int/2addr p1, p2

    iput p1, p0, Lce/e;->c:I

    return-void

    :cond_3
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method public toArray()[I
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lce/e;->c:I

    invoke-virtual {p0, v0, v1}, Lce/e;->z0(II)[I

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lce/e;->c:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lce/e;->b:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lce/e;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lce/e;->b:[I

    iget v2, p0, Lce/e;->c:I

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    iget v1, p0, Lce/e;->c:I

    invoke-virtual {p0, v0, v1}, Lce/e;->y0(II)V

    return-void
.end method

.method public v7(I[III)V
    .locals 3

    iget v0, p0, Lce/e;->c:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2, p3, p4}, Lce/e;->f9([III)V

    return-void

    :cond_0
    add-int/2addr v0, p4

    invoke-virtual {p0, v0}, Lce/e;->b(I)V

    iget-object v0, p0, Lce/e;->b:[I

    add-int v1, p1, p4

    iget v2, p0, Lce/e;->c:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lce/e;->b:[I

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lce/e;->c:I

    add-int/2addr p1, p4

    iput p1, p0, Lce/e;->c:I

    return-void
.end method

.method public w0(II)V
    .locals 1

    iget-object v0, p0, Lce/e;->b:[I

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->sort([III)V

    return-void
.end method

.method public w9([III)[I
    .locals 2

    if-nez p3, :cond_0

    return-object p1

    :cond_0
    if-ltz p2, :cond_1

    iget v0, p0, Lce/e;->c:I

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lce/e;->b:[I

    const/4 v1, 0x0

    invoke-static {v0, p2, p1, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p1
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

    iget v1, p0, Lce/e;->c:I

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    iget v1, p0, Lce/e;->d:I

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    iget-object v1, p0, Lce/e;->b:[I

    array-length v1, v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lce/e;->b:[I

    aget v2, v2, v0

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
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

    invoke-direct {p0, p1, p2}, Lce/e;->h(II)V

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

.method public y7(III)I
    .locals 2

    if-ltz p2, :cond_4

    iget v0, p0, Lce/e;->c:I

    if-gt p3, v0, :cond_3

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-gt p2, p3, :cond_2

    add-int v0, p2, p3

    ushr-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lce/e;->b:[I

    aget v1, v1, v0

    if-ge v1, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    move p2, v0

    goto :goto_0

    :cond_0
    if-le v1, p1, :cond_1

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

.method public z0(II)[I
    .locals 1

    new-array v0, p2, [I

    invoke-virtual {p0, v0, p1, p2}, Lce/e;->w9([III)[I

    return-object v0
.end method

.method public z2([I)Z
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget v3, p1, v1

    invoke-virtual {p0, v3}, Lce/e;->add(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public ze(Lhe/S;)Lbe/e;
    .locals 3

    new-instance v0, Lce/e;

    invoke-direct {v0}, Lce/e;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lce/e;->c:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lce/e;->b:[I

    aget v2, v2, v1

    invoke-interface {p1, v2}, Lhe/S;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lce/e;->b:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Lce/e;->add(I)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
