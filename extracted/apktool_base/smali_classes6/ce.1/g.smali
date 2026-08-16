.class public Lce/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbe/i;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lce/g$b;
    }
.end annotation


# static fields
.field public static final e:J = 0x1L

.field public static final f:I = 0xa


# instance fields
.field public b:[S

.field public c:I

.field public d:S


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0xa

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lce/g;-><init>(IS)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lce/g;-><init>(IS)V

    return-void
.end method

.method public constructor <init>(IS)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-array p1, p1, [S

    iput-object p1, p0, Lce/g;->b:[S

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lce/g;->c:I

    .line 6
    iput-short p2, p0, Lce/g;->d:S

    return-void
.end method

.method public constructor <init>(LSd/i;)V
    .locals 1

    .line 7
    invoke-interface {p1}, LSd/i;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lce/g;-><init>(I)V

    .line 8
    invoke-virtual {p0, p1}, Lce/g;->F1(LSd/i;)Z

    return-void
.end method

.method public constructor <init>([S)V
    .locals 1

    .line 9
    array-length v0, p1

    invoke-direct {p0, v0}, Lce/g;-><init>(I)V

    .line 10
    invoke-virtual {p0, p1}, Lce/g;->X2([S)V

    return-void
.end method

.method public constructor <init>([SSZ)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_1

    if-eqz p1, :cond_0

    .line 12
    iput-object p1, p0, Lce/g;->b:[S

    .line 13
    array-length p1, p1

    iput p1, p0, Lce/g;->c:I

    .line 14
    iput-short p2, p0, Lce/g;->d:S

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

.method public static k([S)Lce/g;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lce/g;->l([SS)Lce/g;

    move-result-object p0

    return-object p0
.end method

.method public static l([SS)Lce/g;
    .locals 2

    new-instance v0, Lce/g$a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lce/g$a;-><init>([SSZ)V

    return-object v0
.end method


# virtual methods
.method public A2([S)Z
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-short v3, p1, v1

    invoke-virtual {p0, v3}, Lce/g;->c1(S)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public B0(I)S
    .locals 2

    invoke-virtual {p0, p1}, Lce/g;->get(I)S

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lce/g;->t0(II)V

    return v0
.end method

.method public F1(LSd/i;)Z
    .locals 2

    invoke-interface {p1}, LSd/i;->iterator()LZd/s0;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, LZd/V;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, LZd/s0;->next()S

    move-result v1

    invoke-virtual {p0, v1}, Lce/g;->c1(S)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public H6(IS)I
    .locals 1

    :goto_0
    iget v0, p0, Lce/g;->c:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lce/g;->b:[S

    aget-short v0, v0, p1

    if-ne v0, p2, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public J0(Ljava/util/Random;)V
    .locals 3

    iget v0, p0, Lce/g;->c:I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lce/g;->h(II)V

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public N0([S)[S
    .locals 3

    array-length v0, p1

    array-length v1, p1

    iget v2, p0, Lce/g;->c:I

    if-le v1, v2, :cond_0

    iget-short v0, p0, Lce/g;->d:S

    aput-short v0, p1, v2

    move v0, v2

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lce/g;->zb([SII)[S

    return-object p1
.end method

.method public O7(IS)V
    .locals 3

    iget v0, p0, Lce/g;->c:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Lce/g;->c1(S)Z

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lce/g;->b(I)V

    iget-object v0, p0, Lce/g;->b:[S

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lce/g;->c:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lce/g;->b:[S

    aput-short p2, v0, p1

    iget p1, p0, Lce/g;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lce/g;->c:I

    return-void
.end method

.method public O8(IS)S
    .locals 2

    iget v0, p0, Lce/g;->c:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lce/g;->b:[S

    aget-short v1, v0, p1

    aput-short p2, v0, p1

    return v1

    :cond_0
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method public Ve(I[S)V
    .locals 2

    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lce/g;->Y7(I[SII)V

    return-void
.end method

.method public W0(S)Z
    .locals 0

    invoke-virtual {p0, p1}, Lce/g;->y3(S)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public X2([S)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lce/g;->ib([SII)V

    return-void
.end method

.method public Y6(Lhe/t0;)Lbe/i;
    .locals 3

    new-instance v0, Lce/g;

    invoke-direct {v0}, Lce/g;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lce/g;->c:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lce/g;->b:[S

    aget-short v2, v2, v1

    invoke-interface {p1, v2}, Lhe/t0;->a(S)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lce/g;->b:[S

    aget-short v2, v2, v1

    invoke-virtual {v0, v2}, Lce/g;->c1(S)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public Y7(I[SII)V
    .locals 3

    iget v0, p0, Lce/g;->c:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2, p3, p4}, Lce/g;->ib([SII)V

    return-void

    :cond_0
    add-int/2addr v0, p4

    invoke-virtual {p0, v0}, Lce/g;->b(I)V

    iget-object v0, p0, Lce/g;->b:[S

    add-int v1, p1, p4

    iget v2, p0, Lce/g;->c:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lce/g;->b:[S

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lce/g;->c:I

    add-int/2addr p1, p4

    iput p1, p0, Lce/g;->c:I

    return-void
.end method

.method public Z1([S)Z
    .locals 2

    array-length v0, p1

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    aget-short v0, p1, v1

    invoke-virtual {p0, v0}, Lce/g;->W0(S)Z

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

.method public a(I)V
    .locals 0

    new-array p1, p1, [S

    iput-object p1, p0, Lce/g;->b:[S

    const/4 p1, 0x0

    iput p1, p0, Lce/g;->c:I

    return-void
.end method

.method public a3(I[SII)V
    .locals 2

    if-ltz p1, :cond_0

    add-int v0, p1, p4

    iget v1, p0, Lce/g;->c:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lce/g;->b:[S

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Short;",
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

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-virtual {p0, v1}, Lce/g;->c1(S)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public b(I)V
    .locals 3

    iget-object v0, p0, Lce/g;->b:[S

    array-length v1, v0

    if-le p1, v1, :cond_0

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [S

    iget-object v0, p0, Lce/g;->b:[S

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lce/g;->b:[S

    :cond_0
    return-void
.end method

.method public c(I)S
    .locals 1

    iget-object v0, p0, Lce/g;->b:[S

    aget-short p1, v0, p1

    return p1
.end method

.method public c1(S)Z
    .locals 4

    iget v0, p0, Lce/g;->c:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lce/g;->b(I)V

    iget-object v0, p0, Lce/g;->b:[S

    iget v2, p0, Lce/g;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lce/g;->c:I

    aput-short p1, v0, v2

    return v1
.end method

.method public clear()V
    .locals 1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lce/g;->a(I)V

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

    invoke-virtual {p0, v0}, Lce/g;->W0(S)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return v2

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public d(S)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lce/g;->c:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lce/g;->b:[S

    aget-short v2, v2, v1

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, v1, p1}, Lce/g;->t0(II)V

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public e()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lce/g;->c:I

    iget-object v0, p0, Lce/g;->b:[S

    iget-short v1, p0, Lce/g;->d:S

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([SS)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lce/g;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    check-cast p1, Lce/g;

    invoke-virtual {p1}, Lce/g;->size()I

    move-result v1

    invoke-virtual {p0}, Lce/g;->size()I

    move-result v3

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    iget v1, p0, Lce/g;->c:I

    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-lez v1, :cond_3

    iget-object v1, p0, Lce/g;->b:[S

    aget-short v1, v1, v3

    iget-object v4, p1, Lce/g;->b:[S

    aget-short v4, v4, v3

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

.method public f()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lce/g;->c:I

    return-void
.end method

.method public f6(IS)I
    .locals 1

    :goto_0
    add-int/lit8 v0, p1, -0x1

    if-lez p1, :cond_1

    iget-object p1, p0, Lce/g;->b:[S

    aget-short p1, p1, v0

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public g(IS)V
    .locals 1

    iget-object v0, p0, Lce/g;->b:[S

    aput-short p2, v0, p1

    return-void
.end method

.method public get(I)S
    .locals 1

    iget v0, p0, Lce/g;->c:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lce/g;->b:[S

    aget-short p1, v0, p1

    return p1

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public final h(II)V
    .locals 3

    iget-object v0, p0, Lce/g;->b:[S

    aget-short v1, v0, p1

    aget-short v2, v0, p2

    aput-short v2, v0, p1

    aput-short v1, v0, p2

    return-void
.end method

.method public h1(Lhe/t0;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lce/g;->c:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lce/g;->b:[S

    aget-short v2, v2, v1

    invoke-interface {p1, v2}, Lhe/t0;->a(S)Z

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

.method public hashCode()I
    .locals 3

    iget v0, p0, Lce/g;->c:I

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lce/g;->b:[S

    aget-short v0, v0, v2

    invoke-static {v0}, LVd/b;->d(I)I

    move-result v0

    add-int/2addr v1, v0

    move v0, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public i()S
    .locals 1

    iget-short v0, p0, Lce/g;->d:S

    return v0
.end method

.method public ib([SII)V
    .locals 2

    iget v0, p0, Lce/g;->c:I

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Lce/g;->b(I)V

    iget-object v0, p0, Lce/g;->b:[S

    iget v1, p0, Lce/g;->c:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lce/g;->c:I

    add-int/2addr p1, p3

    iput p1, p0, Lce/g;->c:I

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lce/g;->c:I

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

    new-instance v0, Lce/g$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lce/g$b;-><init>(Lce/g;I)V

    return-object v0
.end method

.method public j()V
    .locals 3

    iget-object v0, p0, Lce/g;->b:[S

    array-length v0, v0

    invoke-virtual {p0}, Lce/g;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lce/g;->size()I

    move-result v0

    new-array v1, v0, [S

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lce/g;->zb([SII)[S

    iput-object v1, p0, Lce/g;->b:[S

    :cond_0
    return-void
.end method

.method public j3(S)V
    .locals 3

    iget-object v0, p0, Lce/g;->b:[S

    const/4 v1, 0x0

    iget v2, p0, Lce/g;->c:I

    invoke-static {v0, v1, v2, p1}, Ljava/util/Arrays;->fill([SIIS)V

    return-void
.end method

.method public l7(Lhe/t0;)Lbe/i;
    .locals 3

    new-instance v0, Lce/g;

    invoke-direct {v0}, Lce/g;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lce/g;->c:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lce/g;->b:[S

    aget-short v2, v2, v1

    invoke-interface {p1, v2}, Lhe/t0;->a(S)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lce/g;->b:[S

    aget-short v2, v2, v1

    invoke-virtual {v0, v2}, Lce/g;->c1(S)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public max()S
    .locals 3

    invoke-virtual {p0}, Lce/g;->size()I

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, -0x8000

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lce/g;->c:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lce/g;->b:[S

    aget-short v2, v2, v1

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

.method public min()S
    .locals 3

    invoke-virtual {p0}, Lce/g;->size()I

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x7fff

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lce/g;->c:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lce/g;->b:[S

    aget-short v2, v2, v1

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

.method public n1([S)Z
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_1

    aget-short v0, p1, v2

    invoke-virtual {p0, v0}, Lce/g;->d(S)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public o()S
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lce/g;->c:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lce/g;->b:[S

    aget-short v2, v2, v0

    add-int/2addr v1, v2

    int-to-short v1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public o1(LSd/i;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    invoke-virtual {p0}, Lce/g;->clear()V

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

    invoke-virtual {p0, v2}, Lce/g;->d(S)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v0

    goto :goto_0

    :cond_2
    return v1
.end method

.method public o6(IIS)V
    .locals 1

    iget v0, p0, Lce/g;->c:I

    if-le p2, v0, :cond_0

    invoke-virtual {p0, p2}, Lce/g;->b(I)V

    iput p2, p0, Lce/g;->c:I

    :cond_0
    iget-object v0, p0, Lce/g;->b:[S

    invoke-static {v0, p1, p2, p3}, Ljava/util/Arrays;->fill([SIIS)V

    return-void
.end method

.method public q2(LSd/i;)Z
    .locals 3

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lce/g;->iterator()LZd/s0;

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

.method public qd(I[S)V
    .locals 2

    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lce/g;->a3(I[SII)V

    return-void
.end method

.method public r(LUd/h;)V
    .locals 3

    iget v0, p0, Lce/g;->c:I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lce/g;->b:[S

    aget-short v2, v0, v1

    invoke-interface {p1, v2}, LUd/h;->a(S)S

    move-result v2

    aput-short v2, v0, v1

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public r1([S)Z
    .locals 4

    invoke-static {p1}, Ljava/util/Arrays;->sort([S)V

    iget-object v0, p0, Lce/g;->b:[S

    iget v1, p0, Lce/g;->c:I

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-lez v1, :cond_1

    aget-short v1, v0, v3

    invoke-static {p1, v1}, Ljava/util/Arrays;->binarySearch([SS)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, v3, v2}, Lce/g;->t0(II)V

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    return v2
.end method

.method public r5(SII)I
    .locals 2

    if-ltz p2, :cond_4

    iget v0, p0, Lce/g;->c:I

    if-gt p3, v0, :cond_3

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-gt p2, p3, :cond_2

    add-int v0, p2, p3

    ushr-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lce/g;->b:[S

    aget-short v1, v1, v0

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

.method public rd([SIII)[S
    .locals 1

    if-nez p4, :cond_0

    return-object p1

    :cond_0
    if-ltz p2, :cond_1

    iget v0, p0, Lce/g;->c:I

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lce/g;->b:[S

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p1
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

    iput v0, p0, Lce/g;->c:I

    invoke-interface {p1}, Ljava/io/DataInput;->readShort()S

    move-result v0

    iput-short v0, p0, Lce/g;->d:S

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    new-array v1, v0, [S

    iput-object v1, p0, Lce/g;->b:[S

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lce/g;->b:[S

    invoke-interface {p1}, Ljava/io/DataInput;->readShort()S

    move-result v3

    aput-short v3, v2, v1

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

    instance-of v2, v1, Ljava/lang/Short;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Short;->shortValue()S

    move-result v1

    invoke-virtual {p0, v1}, Lce/g;->d(S)Z

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

    invoke-virtual {p0}, Lce/g;->iterator()LZd/s0;

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

    iget v0, p0, Lce/g;->c:I

    return v0
.end method

.method public sort()V
    .locals 3

    iget-object v0, p0, Lce/g;->b:[S

    const/4 v1, 0x0

    iget v2, p0, Lce/g;->c:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([SII)V

    return-void
.end method

.method public subList(II)Lbe/i;
    .locals 3

    if-lt p2, p1, :cond_3

    if-ltz p1, :cond_2

    iget-object v0, p0, Lce/g;->b:[S

    array-length v0, v0

    if-gt p2, v0, :cond_1

    new-instance v0, Lce/g;

    sub-int v1, p2, p1

    invoke-direct {v0, v1}, Lce/g;-><init>(I)V

    :goto_0
    if-ge p1, p2, :cond_0

    iget-object v1, p0, Lce/g;->b:[S

    aget-short v1, v1, p1

    invoke-virtual {v0, v1}, Lce/g;->c1(S)Z

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

    iget-object v0, p0, Lce/g;->b:[S

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

    iget v0, p0, Lce/g;->c:I

    if-ge p1, v0, :cond_3

    if-nez p1, :cond_1

    iget-object p1, p0, Lce/g;->b:[S

    const/4 v1, 0x0

    sub-int/2addr v0, p2

    invoke-static {p1, p2, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    sub-int v1, v0, p2

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lce/g;->b:[S

    add-int v2, p1, p2

    sub-int/2addr v0, v2

    invoke-static {v1, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget p1, p0, Lce/g;->c:I

    sub-int/2addr p1, p2

    iput p1, p0, Lce/g;->c:I

    return-void

    :cond_3
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method public t5(IS)S
    .locals 2

    iget v0, p0, Lce/g;->c:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lce/g;->b:[S

    aget-short v1, v0, p1

    aput-short p2, v0, p1

    return v1

    :cond_0
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method public toArray()[S
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lce/g;->c:I

    invoke-virtual {p0, v0, v1}, Lce/g;->z0(II)[S

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lce/g;->c:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lce/g;->b:[S

    aget-short v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lce/g;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lce/g;->b:[S

    iget v2, p0, Lce/g;->c:I

    add-int/lit8 v2, v2, -0x1

    aget-short v1, v1, v2

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

    iget v1, p0, Lce/g;->c:I

    invoke-virtual {p0, v0, v1}, Lce/g;->y0(II)V

    return-void
.end method

.method public v2(LSd/i;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p1}, LSd/i;->iterator()LZd/s0;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, LZd/V;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, LZd/s0;->next()S

    move-result v1

    invoke-virtual {p0, v1}, Lce/g;->W0(S)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_2
    return v0
.end method

.method public w0(II)V
    .locals 1

    iget-object v0, p0, Lce/g;->b:[S

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->sort([SII)V

    return-void
.end method

.method public w4(S)I
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lce/g;->c:I

    invoke-virtual {p0, p1, v0, v1}, Lce/g;->r5(SII)I

    move-result p1

    return p1
.end method

.method public wb(Lhe/t0;)Z
    .locals 2

    iget v0, p0, Lce/g;->c:I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    iget-object v0, p0, Lce/g;->b:[S

    aget-short v0, v0, v1

    invoke-interface {p1, v0}, Lhe/t0;->a(S)Z

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

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget v1, p0, Lce/g;->c:I

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    iget-short v1, p0, Lce/g;->d:S

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeShort(I)V

    iget-object v1, p0, Lce/g;->b:[S

    array-length v1, v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lce/g;->b:[S

    aget-short v2, v2, v0

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeShort(I)V

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

    invoke-virtual {p0, p1, p2}, Lce/g;->h(II)V

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

.method public y3(S)I
    .locals 1

    iget v0, p0, Lce/g;->c:I

    invoke-virtual {p0, v0, p1}, Lce/g;->f6(IS)I

    move-result p1

    return p1
.end method

.method public y5(S)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lce/g;->H6(IS)I

    move-result p1

    return p1
.end method

.method public z0(II)[S
    .locals 1

    new-array v0, p2, [S

    invoke-virtual {p0, v0, p1, p2}, Lce/g;->zb([SII)[S

    return-object v0
.end method

.method public zb([SII)[S
    .locals 2

    if-nez p3, :cond_0

    return-object p1

    :cond_0
    if-ltz p2, :cond_1

    iget v0, p0, Lce/g;->c:I

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lce/g;->b:[S

    const/4 v1, 0x0

    invoke-static {v0, p2, p1, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p1
.end method
