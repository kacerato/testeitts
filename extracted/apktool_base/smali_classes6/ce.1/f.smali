.class public Lce/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbe/h;
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lce/f$b;
    }
.end annotation


# static fields
.field public static final e:J = 0x1L

.field public static final f:I = 0xa


# instance fields
.field public b:[J

.field public c:I

.field public d:J


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0xa

    const-wide/16 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1, v2}, Lce/f;-><init>(IJ)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v1}, Lce/f;-><init>(IJ)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-array p1, p1, [J

    iput-object p1, p0, Lce/f;->b:[J

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lce/f;->c:I

    .line 6
    iput-wide p2, p0, Lce/f;->d:J

    return-void
.end method

.method public constructor <init>(LSd/h;)V
    .locals 1

    .line 7
    invoke-interface {p1}, LSd/h;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lce/f;-><init>(I)V

    .line 8
    invoke-virtual {p0, p1}, Lce/f;->B2(LSd/h;)Z

    return-void
.end method

.method public constructor <init>([J)V
    .locals 1

    .line 9
    array-length v0, p1

    invoke-direct {p0, v0}, Lce/f;-><init>(I)V

    .line 10
    invoke-virtual {p0, p1}, Lce/f;->h3([J)V

    return-void
.end method

.method public constructor <init>([JJZ)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p4, :cond_1

    if-eqz p1, :cond_0

    .line 12
    iput-object p1, p0, Lce/f;->b:[J

    .line 13
    array-length p1, p1

    iput p1, p0, Lce/f;->c:I

    .line 14
    iput-wide p2, p0, Lce/f;->d:J

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

.method private j(II)V
    .locals 5

    iget-object v0, p0, Lce/f;->b:[J

    aget-wide v1, v0, p1

    aget-wide v3, v0, p2

    aput-wide v3, v0, p1

    aput-wide v1, v0, p2

    return-void
.end method

.method public static l([J)Lce/f;
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lce/f;->m([JJ)Lce/f;

    move-result-object p0

    return-object p0
.end method

.method public static m([JJ)Lce/f;
    .locals 2

    new-instance v0, Lce/f$a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lce/f$a;-><init>([JJZ)V

    return-object v0
.end method


# virtual methods
.method public B0(I)J
    .locals 3

    invoke-virtual {p0, p1}, Lce/f;->get(I)J

    move-result-wide v0

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lce/f;->t0(II)V

    return-wide v0
.end method

.method public B1([J)Z
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_1

    aget-wide v3, p1, v2

    invoke-virtual {p0, v3, v4}, Lce/f;->e(J)Z

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
    .locals 3

    invoke-interface {p1}, LSd/h;->iterator()LZd/b0;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, LZd/V;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, LZd/b0;->next()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lce/f;->M0(J)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public C6(IJ)I
    .locals 3

    :goto_0
    iget v0, p0, Lce/f;->c:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lce/f;->b:[J

    aget-wide v1, v0, p1

    cmp-long v0, v1, p2

    if-nez v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public D4(J)I
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lce/f;->c:I

    invoke-virtual {p0, p1, p2, v0, v1}, Lce/f;->V8(JII)I

    move-result p1

    return p1
.end method

.method public H1(LSd/h;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p1}, LSd/h;->iterator()LZd/b0;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, LZd/V;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, LZd/b0;->next()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lce/f;->X0(J)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_2
    return v0
.end method

.method public Ha([JII)V
    .locals 2

    iget v0, p0, Lce/f;->c:I

    add-int/2addr v0, p3

    invoke-virtual {p0, v0}, Lce/f;->b(I)V

    iget-object v0, p0, Lce/f;->b:[J

    iget v1, p0, Lce/f;->c:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lce/f;->c:I

    add-int/2addr p1, p3

    iput p1, p0, Lce/f;->c:I

    return-void
.end method

.method public J0(Ljava/util/Random;)V
    .locals 3

    iget v0, p0, Lce/f;->c:I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    invoke-direct {p0, v1, v0}, Lce/f;->j(II)V

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public M0(J)Z
    .locals 4

    iget v0, p0, Lce/f;->c:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lce/f;->b(I)V

    iget-object v0, p0, Lce/f;->b:[J

    iget v2, p0, Lce/f;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lce/f;->c:I

    aput-wide p1, v0, v2

    return v1
.end method

.method public N7(IJ)V
    .locals 3

    iget v0, p0, Lce/f;->c:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2, p3}, Lce/f;->M0(J)Z

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lce/f;->b(I)V

    iget-object v0, p0, Lce/f;->b:[J

    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lce/f;->c:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lce/f;->b:[J

    aput-wide p2, v0, p1

    iget p1, p0, Lce/f;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lce/f;->c:I

    return-void
.end method

.method public O0([J)[J
    .locals 3

    array-length v0, p1

    array-length v1, p1

    iget v2, p0, Lce/f;->c:I

    if-le v1, v2, :cond_0

    iget-wide v0, p0, Lce/f;->d:J

    aput-wide v0, p1, v2

    move v0, v2

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lce/f;->Wa([JII)[J

    return-object p1
.end method

.method public Pe(I[J)V
    .locals 2

    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lce/f;->i6(I[JII)V

    return-void
.end method

.method public Q1([J)Z
    .locals 6

    invoke-static {p1}, Ljava/util/Arrays;->sort([J)V

    iget-object v0, p0, Lce/f;->b:[J

    iget v1, p0, Lce/f;->c:I

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-lez v1, :cond_1

    aget-wide v4, v0, v3

    invoke-static {p1, v4, v5}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, v3, v2}, Lce/f;->t0(II)V

    :cond_0
    move v1, v3

    goto :goto_0

    :cond_1
    return v2
.end method

.method public S3(J)I
    .locals 1

    iget v0, p0, Lce/f;->c:I

    invoke-virtual {p0, v0, p1, p2}, Lce/f;->b6(IJ)I

    move-result p1

    return p1
.end method

.method public T8(IJ)J
    .locals 3

    iget v0, p0, Lce/f;->c:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lce/f;->b:[J

    aget-wide v1, v0, p1

    aput-wide p2, v0, p1

    return-wide v1

    :cond_0
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method public U1([J)Z
    .locals 4

    array-length v0, p1

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Lce/f;->X0(J)Z

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

.method public V8(JII)I
    .locals 4

    if-ltz p3, :cond_4

    iget v0, p0, Lce/f;->c:I

    if-gt p4, v0, :cond_3

    add-int/lit8 p4, p4, -0x1

    :goto_0
    if-gt p3, p4, :cond_2

    add-int v0, p3, p4

    ushr-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lce/f;->b:[J

    aget-wide v2, v1, v0

    cmp-long v1, v2, p1

    if-gez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    move p3, v0

    goto :goto_0

    :cond_0
    if-lez v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    move p4, v0

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    add-int/lit8 p3, p3, 0x1

    neg-int p1, p3

    return p1

    :cond_3
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1, p4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1, p3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p1
.end method

.method public Wa([JII)[J
    .locals 2

    if-nez p3, :cond_0

    return-object p1

    :cond_0
    if-ltz p2, :cond_1

    iget v0, p0, Lce/f;->c:I

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lce/f;->b:[J

    const/4 v1, 0x0

    invoke-static {v0, p2, p1, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p1
.end method

.method public X0(J)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lce/f;->S3(J)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public Yc(I[JII)V
    .locals 2

    if-ltz p1, :cond_0

    add-int v0, p1, p4

    iget v1, p0, Lce/f;->c:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lce/f;->b:[J

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method public a(I)V
    .locals 0

    new-array p1, p1, [J

    iput-object p1, p0, Lce/f;->b:[J

    const/4 p1, 0x0

    iput p1, p0, Lce/f;->c:I

    return-void
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Long;",
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

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lce/f;->M0(J)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public b(I)V
    .locals 3

    iget-object v0, p0, Lce/f;->b:[J

    array-length v1, v0

    if-le p1, v1, :cond_0

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [J

    iget-object v0, p0, Lce/f;->b:[J

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lce/f;->b:[J

    :cond_0
    return-void
.end method

.method public b6(IJ)I
    .locals 3

    :goto_0
    add-int/lit8 v0, p1, -0x1

    if-lez p1, :cond_1

    iget-object p1, p0, Lce/f;->b:[J

    aget-wide v1, p1, v0

    cmp-long p1, v1, p2

    if-nez p1, :cond_0

    return v0

    :cond_0
    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public b7(Lhe/b0;)Lbe/h;
    .locals 5

    new-instance v0, Lce/f;

    invoke-direct {v0}, Lce/f;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lce/f;->c:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lce/f;->b:[J

    aget-wide v3, v2, v1

    invoke-interface {p1, v3, v4}, Lhe/b0;->a(J)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lce/f;->b:[J

    aget-wide v3, v2, v1

    invoke-virtual {v0, v3, v4}, Lce/f;->M0(J)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public c(I)J
    .locals 3

    iget-object v0, p0, Lce/f;->b:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public c3(J)V
    .locals 3

    iget-object v0, p0, Lce/f;->b:[J

    const/4 v1, 0x0

    iget v2, p0, Lce/f;->c:I

    invoke-static {v0, v1, v2, p1, p2}, Ljava/util/Arrays;->fill([JIIJ)V

    return-void
.end method

.method public c5(Lhe/b0;)Lbe/h;
    .locals 5

    new-instance v0, Lce/f;

    invoke-direct {v0}, Lce/f;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lce/f;->c:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lce/f;->b:[J

    aget-wide v3, v2, v1

    invoke-interface {p1, v3, v4}, Lhe/b0;->a(J)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lce/f;->b:[J

    aget-wide v3, v2, v1

    invoke-virtual {v0, v3, v4}, Lce/f;->M0(J)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public clear()V
    .locals 1

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lce/f;->a(I)V

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

    instance-of v1, v0, Ljava/lang/Long;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lce/f;->X0(J)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_1
    return v2

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public d()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lce/f;->c:I

    iget-object v0, p0, Lce/f;->b:[J

    iget-wide v1, p0, Lce/f;->d:J

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([JJ)V

    return-void
.end method

.method public e(J)Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lce/f;->c:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lce/f;->b:[J

    aget-wide v3, v2, v1

    cmp-long v2, p1, v3

    if-nez v2, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, v1, p1}, Lce/f;->t0(II)V

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lce/f;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    check-cast p1, Lce/f;

    invoke-virtual {p1}, Lce/f;->size()I

    move-result v1

    invoke-virtual {p0}, Lce/f;->size()I

    move-result v3

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    iget v1, p0, Lce/f;->c:I

    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-lez v1, :cond_3

    iget-object v1, p0, Lce/f;->b:[J

    aget-wide v4, v1, v3

    iget-object v1, p1, Lce/f;->b:[J

    aget-wide v6, v1, v3

    cmp-long v1, v4, v6

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

    iput v0, p0, Lce/f;->c:I

    return-void
.end method

.method public f2(LSd/h;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    invoke-virtual {p0}, Lce/f;->clear()V

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

    invoke-virtual {p0, v2, v3}, Lce/f;->e(J)Z

    move-result v2

    if-eqz v2, :cond_1

    move v1, v0

    goto :goto_0

    :cond_2
    return v1
.end method

.method public g(IJ)V
    .locals 1

    iget-object v0, p0, Lce/f;->b:[J

    aput-wide p2, v0, p1

    return-void
.end method

.method public gd(I[J)V
    .locals 2

    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lce/f;->Yc(I[JII)V

    return-void
.end method

.method public get(I)J
    .locals 3

    iget v0, p0, Lce/f;->c:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lce/f;->b:[J

    aget-wide v1, v0, p1

    return-wide v1

    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0
.end method

.method public h(LUd/f;)V
    .locals 4

    iget v0, p0, Lce/f;->c:I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lce/f;->b:[J

    aget-wide v2, v0, v1

    invoke-interface {p1, v2, v3}, LUd/f;->a(J)J

    move-result-wide v2

    aput-wide v2, v0, v1

    move v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public h3([J)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lce/f;->Ha([JII)V

    return-void
.end method

.method public hashCode()I
    .locals 5

    iget v0, p0, Lce/f;->c:I

    const/4 v1, 0x0

    :goto_0
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_0

    iget-object v0, p0, Lce/f;->b:[J

    aget-wide v3, v0, v2

    invoke-static {v3, v4}, LVd/b;->e(J)I

    move-result v0

    add-int/2addr v1, v0

    move v0, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public i()J
    .locals 2

    iget-wide v0, p0, Lce/f;->d:J

    return-wide v0
.end method

.method public i6(I[JII)V
    .locals 3

    iget v0, p0, Lce/f;->c:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p2, p3, p4}, Lce/f;->Ha([JII)V

    return-void

    :cond_0
    add-int/2addr v0, p4

    invoke-virtual {p0, v0}, Lce/f;->b(I)V

    iget-object v0, p0, Lce/f;->b:[J

    add-int v1, p1, p4

    iget v2, p0, Lce/f;->c:I

    sub-int/2addr v2, p1

    invoke-static {v0, p1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lce/f;->b:[J

    invoke-static {p2, p3, v0, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lce/f;->c:I

    add-int/2addr p1, p4

    iput p1, p0, Lce/f;->c:I

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lce/f;->c:I

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

    new-instance v0, Lce/f$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lce/f$b;-><init>(Lce/f;I)V

    return-object v0
.end method

.method public j1(Lhe/b0;)Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lce/f;->c:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lce/f;->b:[J

    aget-wide v3, v2, v1

    invoke-interface {p1, v3, v4}, Lhe/b0;->a(J)Z

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

.method public k()V
    .locals 3

    iget-object v0, p0, Lce/f;->b:[J

    array-length v0, v0

    invoke-virtual {p0}, Lce/f;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lce/f;->size()I

    move-result v0

    new-array v1, v0, [J

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lce/f;->Wa([JII)[J

    iput-object v1, p0, Lce/f;->b:[J

    :cond_0
    return-void
.end method

.method public k6(J)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lce/f;->C6(IJ)I

    move-result p1

    return p1
.end method

.method public max()J
    .locals 6

    invoke-virtual {p0}, Lce/f;->size()I

    move-result v0

    if-eqz v0, :cond_2

    const-wide/high16 v0, -0x8000000000000000L

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lce/f;->c:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lce/f;->b:[J

    aget-wide v4, v3, v2

    cmp-long v3, v4, v0

    if-lez v3, :cond_0

    move-wide v0, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot find maximum of an empty list"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public min()J
    .locals 6

    invoke-virtual {p0}, Lce/f;->size()I

    move-result v0

    if-eqz v0, :cond_2

    const-wide v0, 0x7fffffffffffffffL

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lce/f;->c:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lce/f;->b:[J

    aget-wide v4, v3, v2

    cmp-long v3, v4, v0

    if-gez v3, :cond_0

    move-wide v0, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot find minimum of an empty list"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public o()J
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lce/f;->c:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lce/f;->b:[J

    aget-wide v4, v3, v2

    add-long/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public o5(IJ)J
    .locals 3

    iget v0, p0, Lce/f;->c:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lce/f;->b:[J

    aget-wide v1, v0, p1

    aput-wide p2, v0, p1

    return-wide v1

    :cond_0
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method public q1(LSd/h;)Z
    .locals 4

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lce/f;->iterator()LZd/b0;

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

.method public r6(IIJ)V
    .locals 1

    iget v0, p0, Lce/f;->c:I

    if-le p2, v0, :cond_0

    invoke-virtual {p0, p2}, Lce/f;->b(I)V

    iput p2, p0, Lce/f;->c:I

    :cond_0
    iget-object v0, p0, Lce/f;->b:[J

    invoke-static {v0, p1, p2, p3, p4}, Ljava/util/Arrays;->fill([JIIJ)V

    return-void
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/io/DataInput;->readByte()B

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    iput v0, p0, Lce/f;->c:I

    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lce/f;->d:J

    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v0

    new-array v1, v0, [J

    iput-object v1, p0, Lce/f;->b:[J

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lce/f;->b:[J

    invoke-interface {p1}, Ljava/io/DataInput;->readLong()J

    move-result-wide v3

    aput-wide v3, v2, v1

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

    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lce/f;->e(J)Z

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

    invoke-virtual {p0}, Lce/f;->iterator()LZd/b0;

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

    iget v0, p0, Lce/f;->c:I

    return v0
.end method

.method public sort()V
    .locals 3

    iget-object v0, p0, Lce/f;->b:[J

    const/4 v1, 0x0

    iget v2, p0, Lce/f;->c:I

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->sort([JII)V

    return-void
.end method

.method public subList(II)Lbe/h;
    .locals 4

    if-lt p2, p1, :cond_3

    if-ltz p1, :cond_2

    iget-object v0, p0, Lce/f;->b:[J

    array-length v0, v0

    if-gt p2, v0, :cond_1

    new-instance v0, Lce/f;

    sub-int v1, p2, p1

    invoke-direct {v0, v1}, Lce/f;-><init>(I)V

    :goto_0
    if-ge p1, p2, :cond_0

    iget-object v1, p0, Lce/f;->b:[J

    aget-wide v2, v1, p1

    invoke-virtual {v0, v2, v3}, Lce/f;->M0(J)Z

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

    iget-object v0, p0, Lce/f;->b:[J

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

    iget v0, p0, Lce/f;->c:I

    if-ge p1, v0, :cond_3

    if-nez p1, :cond_1

    iget-object p1, p0, Lce/f;->b:[J

    const/4 v1, 0x0

    sub-int/2addr v0, p2

    invoke-static {p1, p2, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    sub-int v1, v0, p2

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lce/f;->b:[J

    add-int v2, p1, p2

    sub-int/2addr v0, v2

    invoke-static {v1, v2, v1, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget p1, p0, Lce/f;->c:I

    sub-int/2addr p1, p2

    iput p1, p0, Lce/f;->c:I

    return-void

    :cond_3
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p2, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p2
.end method

.method public toArray()[J
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lce/f;->c:I

    invoke-virtual {p0, v0, v1}, Lce/f;->z0(II)[J

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lce/f;->c:I

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lce/f;->b:[J

    aget-wide v4, v3, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lce/f;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lce/f;->b:[J

    iget v2, p0, Lce/f;->c:I

    add-int/lit8 v2, v2, -0x1

    aget-wide v2, v1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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

    iget v1, p0, Lce/f;->c:I

    invoke-virtual {p0, v0, v1}, Lce/f;->y0(II)V

    return-void
.end method

.method public u5(Lhe/b0;)Z
    .locals 4

    iget v0, p0, Lce/f;->c:I

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    iget-object v0, p0, Lce/f;->b:[J

    aget-wide v2, v0, v1

    invoke-interface {p1, v2, v3}, Lhe/b0;->a(J)Z

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

.method public v8([JIII)[J
    .locals 1

    if-nez p4, :cond_0

    return-object p1

    :cond_0
    if-ltz p2, :cond_1

    iget v0, p0, Lce/f;->c:I

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lce/f;->b:[J

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p1, p2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p1
.end method

.method public w0(II)V
    .locals 1

    iget-object v0, p0, Lce/f;->b:[J

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->sort([JII)V

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    iget v1, p0, Lce/f;->c:I

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    iget-wide v1, p0, Lce/f;->d:J

    invoke-interface {p1, v1, v2}, Ljava/io/DataOutput;->writeLong(J)V

    iget-object v1, p0, Lce/f;->b:[J

    array-length v1, v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lce/f;->b:[J

    aget-wide v3, v2, v0

    invoke-interface {p1, v3, v4}, Ljava/io/DataOutput;->writeLong(J)V

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

    invoke-direct {p0, p1, p2}, Lce/f;->j(II)V

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

.method public y2([J)Z
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-wide v3, p1, v1

    invoke-virtual {p0, v3, v4}, Lce/f;->M0(J)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public z0(II)[J
    .locals 1

    new-array v0, p2, [J

    invoke-virtual {p0, v0, p1, p2}, Lce/f;->Wa([JII)[J

    return-object v0
.end method
