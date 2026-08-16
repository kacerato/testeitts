.class public Lce/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbe/a;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lce/a$b;
    }
.end annotation


# static fields
.field public static final e:J = 0x1L

.field public static final f:I = 0xa


# instance fields
.field public b:[B

.field public c:I

.field public d:B


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v0, 0xa

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lce/a;-><init>(IB)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lce/a;-><init>(IB)V

    return-void
.end method

.method public constructor <init>(IB)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-array p1, p1, [B

    iput-object p1, p0, Lce/a;->b:[B

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lce/a;->c:I

    .line 6
    iput-byte p2, p0, Lce/a;->d:B

    return-void
.end method

.method public constructor <init>(LSd/a;)V
    .locals 1

    .line 7
    invoke-interface {p1}, LSd/a;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lce/a;-><init>(I)V

    .line 8
    invoke-virtual {p0, p1}, Lce/a;->E1(LSd/a;)Z

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 9
    array-length v0, p1

    invoke-direct {p0, v0}, Lce/a;-><init>(I)V

    .line 10
    invoke-virtual {p0, p1}, Lce/a;->l1([B)V

    return-void
.end method

.method public constructor <init>([BBZ)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_1

    if-eqz p1, :cond_0

    .line 12
    iput-object p1, p0, Lce/a;->b:[B

    .line 13
    array-length p1, p1

    iput p1, p0, Lce/a;->c:I

    .line 14
    iput-byte p2, p0, Lce/a;->d:B

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

.method private g(II)V
    .locals 3

    iget-object v0, p0, Lce/a;->b:[B

    aget-byte v1, v0, p1

    aget-byte v2, v0, p2

    aput-byte v2, v0, p1

    aput-byte v1, v0, p2

    return-void
.end method

.method public static j([B)Lce/a;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lce/a;->k([BB)Lce/a;

    move-result-object p0

    return-object p0
.end method

.method public static k([BB)Lce/a;
    .locals 2

    new-instance v0, Lce/a$a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lce/a$a;-><init>([BBZ)V

    return-object v0
.end method


# virtual methods
.method public Ae(I[BII)V
    .locals 3

    iget v0, p0, Lce/a;->c:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2, p3, p4}, Lce/a;->C7([BII)V

    return-void

    :cond_0
    add-int/2addr v0, p4

    invoke-virtual {p0, v0}, Lce/a;->b(I)V

    iget-object v0, p0, Lce/a;->b:[B

    add-int v1, p1, p4

    iget v2, p0, Lce/a;->c:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lce/a;->b:[B

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lce/a;->c:I

    add-int/2addr p1, p4

    iput p1, p0, Lce/a;->c:I

    return-void
.end method

.method public B0(I)B
    .locals 2

    invoke-virtual {p0, p1}, Lce/a;->get(I)B

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lce/a;->t0(II)V

    return v0
.end method

.method public C7([BII)V
    .locals 2

    iget v0, p0, Lce/a;->c:I

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Lce/a;->b(I)V

    iget-object v0, p0, Lce/a;->b:[B

    iget v1, p0, Lce/a;->c:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lce/a;->c:I

    add-int/2addr p1, p3

    iput p1, p0, Lce/a;->c:I

    return-void
.end method

.method public D7(IIB)V
    .locals 1

    iget v0, p0, Lce/a;->c:I

    if-le p2, v0, :cond_0

    invoke-virtual {p0, p2}, Lce/a;->b(I)V

    iput p2, p0, Lce/a;->c:I

    :cond_0
    iget-object v0, p0, Lce/a;->b:[B

    invoke-static {v0, p1, p2, p3}, Ljava/util/Arrays;->fill([BIIB)V

    return-void
.end method

.method public E1(LSd/a;)Z
    .locals 2

    invoke-interface {p1}, LSd/a;->iterator()LZd/g;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, LZd/V;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, LZd/g;->next()B

    move-result v1

    invoke-virtual {p0, v1}, Lce/a;->d1(B)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public E8(IB)B
    .locals 2

    iget v0, p0, Lce/a;->c:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lce/a;->b:[B

    aget-byte v1, v0, p1

    aput-byte p2, v0, p1

    return v1

    :cond_0
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method public Fe(I[B)V
    .locals 2

    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lce/a;->Ae(I[BII)V

    return-void
.end method

.method public J0(Ljava/util/Random;)V
    .locals 3

    iget v0, p0, Lce/a;->c:I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lce/a;->g(II)V

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public J4(IB)I
    .locals 1

    :goto_0
    add-int/lit8 v0, p1, -0x1

    if-lez p1, :cond_1

    iget-object p1, p0, Lce/a;->b:[B

    aget-byte p1, p1, v0

    if-ne p1, p2, :cond_0

    return v0

    :cond_0
    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public O3(B)I
    .locals 1

    iget v0, p0, Lce/a;->c:I

    invoke-virtual {p0, v0, p1}, Lce/a;->J4(IB)I

    move-result p1

    return p1
.end method

.method public Oe([BIII)[B
    .locals 1

    if-nez p4, :cond_0

    return-object p1

    :cond_0
    if-ltz p2, :cond_1

    iget v0, p0, Lce/a;->c:I

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lce/a;->b:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p1
.end method

.method public R0([B)[B
    .locals 3

    array-length v0, p1

    array-length v1, p1

    iget v2, p0, Lce/a;->c:I

    if-le v1, v2, :cond_0

    iget-byte v0, p0, Lce/a;->d:B

    aput-byte v0, p1, v2

    move v0, v2

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lce/a;->cd([BII)[B

    return-object p1
.end method

.method public Rb(BII)I
    .locals 2

    if-ltz p2, :cond_4

    iget v0, p0, Lce/a;->c:I

    if-gt p3, v0, :cond_3

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-gt p2, p3, :cond_2

    add-int v0, p2, p3

    ushr-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lce/a;->b:[B

    aget-byte v1, v1, v0

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

.method public S6(Lhe/h;)Lbe/a;
    .locals 3

    new-instance v0, Lce/a;

    invoke-direct {v0}, Lce/a;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lce/a;->c:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lce/a;->b:[B

    aget-byte v2, v2, v1

    invoke-interface {p1, v2}, Lhe/h;->a(B)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lce/a;->b:[B

    aget-byte v2, v2, v1

    invoke-virtual {v0, v2}, Lce/a;->d1(B)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public T2(B)V
    .locals 3

    iget-object v0, p0, Lce/a;->b:[B

    const/4 v1, 0x0

    iget v2, p0, Lce/a;->c:I

    invoke-static {v0, v1, v2, p1}, Ljava/util/Arrays;->fill([BIIB)V

    return-void
.end method

.method public V0(Lhe/h;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lce/a;->c:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lce/a;->b:[B

    aget-byte v2, v2, v1

    invoke-interface {p1, v2}, Lhe/h;->a(B)Z

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

.method public W1([B)Z
    .locals 4

    invoke-static {p1}, Ljava/util/Arrays;->sort([B)V

    iget-object v0, p0, Lce/a;->b:[B

    iget v1, p0, Lce/a;->c:I

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-lez v1, :cond_1

    aget-byte v1, v0, v3

    invoke-static {p1, v1}, Ljava/util/Arrays;->binarySearch([BB)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, v3, v2}, Lce/a;->t0(II)V

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    return v2
.end method

.method public a(I)V
    .locals 0

    new-array p1, p1, [B

    iput-object p1, p0, Lce/a;->b:[B

    const/4 p1, 0x0

    iput p1, p0, Lce/a;->c:I

    return-void
.end method

.method public a1(B)Z
    .locals 0

    invoke-virtual {p0, p1}, Lce/a;->O3(B)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Byte;",
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

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-virtual {p0, v1}, Lce/a;->d1(B)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public b(I)V
    .locals 3

    iget-object v0, p0, Lce/a;->b:[B

    array-length v1, v0

    if-le p1, v1, :cond_0

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [B

    iget-object v0, p0, Lce/a;->b:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lce/a;->b:[B

    :cond_0
    return-void
.end method

.method public b8(Lhe/h;)Z
    .locals 2

    iget v0, p0, Lce/a;->c:I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    iget-object v0, p0, Lce/a;->b:[B

    aget-byte v0, v0, v1

    invoke-interface {p1, v0}, Lhe/h;->a(B)Z

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

.method public c(I)B
    .locals 1

    iget-object v0, p0, Lce/a;->b:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public cd([BII)[B
    .locals 2

    if-nez p3, :cond_0

    return-object p1

    :cond_0
    if-ltz p2, :cond_1

    iget v0, p0, Lce/a;->c:I

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lce/a;->b:[B

    const/4 v1, 0x0

    invoke-static {v0, p2, p1, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p1
.end method

.method public clear()V
    .locals 1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lce/a;->a(I)V

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

    instance-of v1, v0, Ljava/lang/Byte;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {p0, v0}, Lce/a;->a1(B)Z

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

    iput v0, p0, Lce/a;->c:I

    iget-object v0, p0, Lce/a;->b:[B

    iget-byte v1, p0, Lce/a;->d:B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method

.method public d1(B)Z
    .locals 4

    iget v0, p0, Lce/a;->c:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lce/a;->b(I)V

    iget-object v0, p0, Lce/a;->b:[B

    iget v2, p0, Lce/a;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lce/a;->c:I

    aput-byte p1, v0, v2

    return v1
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lce/a;->c:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lce/a;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    check-cast p1, Lce/a;

    invoke-virtual {p1}, Lce/a;->size()I

    move-result v1

    invoke-virtual {p0}, Lce/a;->size()I

    move-result v3

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    iget v1, p0, Lce/a;->c:I

    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-lez v1, :cond_3

    iget-object v1, p0, Lce/a;->b:[B

    aget-byte v1, v1, v3

    iget-object v4, p1, Lce/a;->b:[B

    aget-byte v4, v4, v3

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

.method public f(IB)V
    .locals 1

    iget-object v0, p0, Lce/a;->b:[B

    aput-byte p2, v0, p1

    return-void
.end method

.method public get(I)B
    .locals 1

    iget v0, p0, Lce/a;->c:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lce/a;->b:[B

    aget-byte p1, v0, p1

    return p1

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public h()V
    .locals 3

    iget-object v0, p0, Lce/a;->b:[B

    array-length v0, v0

    invoke-virtual {p0}, Lce/a;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lce/a;->size()I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lce/a;->cd([BII)[B

    iput-object v1, p0, Lce/a;->b:[B

    :cond_0
    return-void
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lce/a;->c:I

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lce/a;->b:[B

    aget-byte v0, v0, v2

    invoke-static {v0}, LVd/b;->d(I)I

    move-result v0

    add-int/2addr v1, v0

    move v0, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public i()B
    .locals 1

    iget-byte v0, p0, Lce/a;->d:B

    return v0
.end method

.method public i2(LSd/a;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    invoke-virtual {p0}, Lce/a;->clear()V

    return v0

    :cond_0
    invoke-interface {p1}, LSd/a;->iterator()LZd/g;

    move-result-object p1

    const/4 v1, 0x0

    :cond_1
    :goto_0
    invoke-interface {p1}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, LZd/g;->next()B

    move-result v2

    invoke-virtual {p0, v2}, Lce/a;->m(B)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v0

    goto :goto_0

    :cond_2
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lce/a;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()LZd/g;
    .locals 2

    new-instance v0, Lce/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lce/a$b;-><init>(Lce/a;I)V

    return-object v0
.end method

.method public l1([B)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lce/a;->C7([BII)V

    return-void
.end method

.method public m(B)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lce/a;->c:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lce/a;->b:[B

    aget-byte v2, v2, v1

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, v1, p1}, Lce/a;->t0(II)V

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public max()B
    .locals 3

    invoke-virtual {p0}, Lce/a;->size()I

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, -0x80

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lce/a;->c:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lce/a;->b:[B

    aget-byte v2, v2, v1

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

.method public min()B
    .locals 3

    invoke-virtual {p0}, Lce/a;->size()I

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x7f

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lce/a;->c:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lce/a;->b:[B

    aget-byte v2, v2, v1

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

.method public n8(IB)V
    .locals 3

    iget v0, p0, Lce/a;->c:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2}, Lce/a;->d1(B)Z

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lce/a;->b(I)V

    iget-object v0, p0, Lce/a;->b:[B

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lce/a;->c:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lce/a;->b:[B

    aput-byte p2, v0, p1

    iget p1, p0, Lce/a;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lce/a;->c:I

    return-void
.end method

.method public o()B
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lce/a;->c:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lce/a;->b:[B

    aget-byte v2, v2, v0

    add-int/2addr v1, v2

    int-to-byte v1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public o2([B)Z
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-byte v3, p1, v1

    invoke-virtual {p0, v3}, Lce/a;->d1(B)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public p1(B)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lce/a;->w6(IB)I

    move-result p1

    return p1
.end method

.method public r2(I[B)V
    .locals 2

    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lce/a;->set(I[BII)V

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

    iput v0, p0, Lce/a;->c:I

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Lce/a;->d:B

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    new-array v1, v0, [B

    iput-object v1, p0, Lce/a;->b:[B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lce/a;->b:[B

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    move-result v3

    aput-byte v3, v2, v1

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

    instance-of v2, v1, Ljava/lang/Byte;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-virtual {p0, v1}, Lce/a;->m(B)Z

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

    invoke-virtual {p0}, Lce/a;->iterator()LZd/g;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, LZd/g;->next()B

    move-result v2

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

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

.method public s(LUd/a;)V
    .locals 3

    iget v0, p0, Lce/a;->c:I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lce/a;->b:[B

    aget-byte v2, v0, v1

    invoke-interface {p1, v2}, LUd/a;->a(B)B

    move-result v2

    aput-byte v2, v0, v1

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public s2(LSd/a;)Z
    .locals 3

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lce/a;->iterator()LZd/g;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, LZd/V;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, LZd/g;->next()B

    move-result v2

    invoke-interface {p1, v2}, LSd/a;->a1(B)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v1}, LZd/V;->remove()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public sb(Lhe/h;)Lbe/a;
    .locals 3

    new-instance v0, Lce/a;

    invoke-direct {v0}, Lce/a;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lce/a;->c:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lce/a;->b:[B

    aget-byte v2, v2, v1

    invoke-interface {p1, v2}, Lhe/h;->a(B)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lce/a;->b:[B

    aget-byte v2, v2, v1

    invoke-virtual {v0, v2}, Lce/a;->d1(B)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public set(IB)B
    .locals 2

    .line 1
    iget v0, p0, Lce/a;->c:I

    if-ge p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lce/a;->b:[B

    aget-byte v1, v0, p1

    .line 3
    aput-byte p2, v0, p1

    return v1

    .line 4
    :cond_0
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method public set(I[BII)V
    .locals 2

    if-ltz p1, :cond_0

    add-int v0, p1, p4

    .line 5
    iget v1, p0, Lce/a;->c:I

    if-gt v0, v1, :cond_0

    .line 6
    iget-object v0, p0, Lce/a;->b:[B

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 7
    :cond_0
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lce/a;->c:I

    return v0
.end method

.method public sort()V
    .locals 3

    iget-object v0, p0, Lce/a;->b:[B

    const/4 v1, 0x0

    iget v2, p0, Lce/a;->c:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([BII)V

    return-void
.end method

.method public subList(II)Lbe/a;
    .locals 3

    if-lt p2, p1, :cond_3

    if-ltz p1, :cond_2

    iget-object v0, p0, Lce/a;->b:[B

    array-length v0, v0

    if-gt p2, v0, :cond_1

    new-instance v0, Lce/a;

    sub-int v1, p2, p1

    invoke-direct {v0, v1}, Lce/a;-><init>(I)V

    :goto_0
    if-ge p1, p2, :cond_0

    iget-object v1, p0, Lce/a;->b:[B

    aget-byte v1, v1, p1

    invoke-virtual {v0, v1}, Lce/a;->d1(B)Z

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

    iget-object v0, p0, Lce/a;->b:[B

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

    iget v0, p0, Lce/a;->c:I

    if-ge p1, v0, :cond_3

    if-nez p1, :cond_1

    iget-object p1, p0, Lce/a;->b:[B

    const/4 v1, 0x0

    sub-int/2addr v0, p2

    invoke-static {p1, p2, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    sub-int v1, v0, p2

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lce/a;->b:[B

    add-int v2, p1, p2

    sub-int/2addr v0, v2

    invoke-static {v1, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget p1, p0, Lce/a;->c:I

    sub-int/2addr p1, p2

    iput p1, p0, Lce/a;->c:I

    return-void

    :cond_3
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method public t1([B)Z
    .locals 2

    array-length v0, p1

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    aget-byte v0, p1, v1

    invoke-virtual {p0, v0}, Lce/a;->a1(B)Z

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

.method public toArray()[B
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lce/a;->c:I

    invoke-virtual {p0, v0, v1}, Lce/a;->z0(II)[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lce/a;->c:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lce/a;->b:[B

    aget-byte v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lce/a;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lce/a;->b:[B

    iget v2, p0, Lce/a;->c:I

    add-int/lit8 v2, v2, -0x1

    aget-byte v1, v1, v2

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

    iget v1, p0, Lce/a;->c:I

    invoke-virtual {p0, v0, v1}, Lce/a;->y0(II)V

    return-void
.end method

.method public w0(II)V
    .locals 1

    iget-object v0, p0, Lce/a;->b:[B

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->sort([BII)V

    return-void
.end method

.method public w2(LSd/a;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p1}, LSd/a;->iterator()LZd/g;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, LZd/V;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, LZd/g;->next()B

    move-result v1

    invoke-virtual {p0, v1}, Lce/a;->a1(B)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_2
    return v0
.end method

.method public w6(IB)I
    .locals 1

    :goto_0
    iget v0, p0, Lce/a;->c:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lce/a;->b:[B

    aget-byte v0, v0, p1

    if-ne v0, p2, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

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

    iget v1, p0, Lce/a;->c:I

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    iget-byte v1, p0, Lce/a;->d:B

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeByte(I)V

    iget-object v1, p0, Lce/a;->b:[B

    array-length v1, v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lce/a;->b:[B

    aget-byte v2, v2, v0

    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeByte(I)V

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

    invoke-direct {p0, p1, p2}, Lce/a;->g(II)V

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

.method public y1([B)Z
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_1

    aget-byte v0, p1, v2

    invoke-virtual {p0, v0}, Lce/a;->m(B)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public z0(II)[B
    .locals 1

    new-array v0, p2, [B

    invoke-virtual {p0, v0, p1, p2}, Lce/a;->cd([BII)[B

    return-object v0
.end method

.method public z3(B)I
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lce/a;->c:I

    invoke-virtual {p0, p1, v0, v1}, Lce/a;->Rb(BII)I

    move-result p1

    return p1
.end method
