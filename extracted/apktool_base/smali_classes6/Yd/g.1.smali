.class public LYd/g;
.super LYd/c;
.source "SourceFile"

# interfaces
.implements Lbe/a;


# static fields
.field public static final e:J = -0x3f0dace4a1371f0L


# instance fields
.field public final d:Lbe/a;


# direct methods
.method public constructor <init>(Lbe/a;)V
    .locals 0

    invoke-direct {p0, p1}, LYd/c;-><init>(LSd/a;)V

    iput-object p1, p0, LYd/g;->d:Lbe/a;

    return-void
.end method

.method private a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, LYd/g;->d:Lbe/a;

    instance-of v1, v0, Ljava/util/RandomAccess;

    if-eqz v1, :cond_0

    new-instance v1, LYd/w0;

    invoke-direct {v1, v0}, LYd/w0;-><init>(Lbe/a;)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    return-object v1
.end method


# virtual methods
.method public Ae(I[BII)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public B0(I)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public C7([BII)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public D7(IIB)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public E8(IB)B
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Fe(I[B)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public J0(Ljava/util/Random;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public J4(IB)I
    .locals 1

    iget-object v0, p0, LYd/g;->d:Lbe/a;

    invoke-interface {v0, p1, p2}, Lbe/a;->J4(IB)I

    move-result p1

    return p1
.end method

.method public O3(B)I
    .locals 1

    iget-object v0, p0, LYd/g;->d:Lbe/a;

    invoke-interface {v0, p1}, Lbe/a;->O3(B)I

    move-result p1

    return p1
.end method

.method public Oe([BIII)[B
    .locals 1

    iget-object v0, p0, LYd/g;->d:Lbe/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lbe/a;->Oe([BIII)[B

    move-result-object p1

    return-object p1
.end method

.method public Rb(BII)I
    .locals 1

    iget-object v0, p0, LYd/g;->d:Lbe/a;

    invoke-interface {v0, p1, p2, p3}, Lbe/a;->Rb(BII)I

    move-result p1

    return p1
.end method

.method public S6(Lhe/h;)Lbe/a;
    .locals 1

    iget-object v0, p0, LYd/g;->d:Lbe/a;

    invoke-interface {v0, p1}, Lbe/a;->S6(Lhe/h;)Lbe/a;

    move-result-object p1

    return-object p1
.end method

.method public T2(B)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public b8(Lhe/h;)Z
    .locals 1

    iget-object v0, p0, LYd/g;->d:Lbe/a;

    invoke-interface {v0, p1}, Lbe/a;->b8(Lhe/h;)Z

    move-result p1

    return p1
.end method

.method public cd([BII)[B
    .locals 1

    iget-object v0, p0, LYd/g;->d:Lbe/a;

    invoke-interface {v0, p1, p2, p3}, Lbe/a;->cd([BII)[B

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, LYd/g;->d:Lbe/a;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public get(I)B
    .locals 1

    iget-object v0, p0, LYd/g;->d:Lbe/a;

    invoke-interface {v0, p1}, Lbe/a;->get(I)B

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LYd/g;->d:Lbe/a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public l1([B)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public max()B
    .locals 1

    iget-object v0, p0, LYd/g;->d:Lbe/a;

    invoke-interface {v0}, Lbe/a;->max()B

    move-result v0

    return v0
.end method

.method public min()B
    .locals 1

    iget-object v0, p0, LYd/g;->d:Lbe/a;

    invoke-interface {v0}, Lbe/a;->min()B

    move-result v0

    return v0
.end method

.method public n8(IB)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public o()B
    .locals 1

    iget-object v0, p0, LYd/g;->d:Lbe/a;

    invoke-interface {v0}, Lbe/a;->o()B

    move-result v0

    return v0
.end method

.method public p1(B)I
    .locals 1

    iget-object v0, p0, LYd/g;->d:Lbe/a;

    invoke-interface {v0, p1}, Lbe/a;->p1(B)I

    move-result p1

    return p1
.end method

.method public r2(I[B)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public s(LUd/a;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public sb(Lhe/h;)Lbe/a;
    .locals 1

    iget-object v0, p0, LYd/g;->d:Lbe/a;

    invoke-interface {v0, p1}, Lbe/a;->sb(Lhe/h;)Lbe/a;

    move-result-object p1

    return-object p1
.end method

.method public set(IB)B
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public set(I[BII)V
    .locals 0

    .line 2
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public sort()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public subList(II)Lbe/a;
    .locals 2

    new-instance v0, LYd/g;

    iget-object v1, p0, LYd/g;->d:Lbe/a;

    invoke-interface {v1, p1, p2}, Lbe/a;->subList(II)Lbe/a;

    move-result-object p1

    invoke-direct {v0, p1}, LYd/g;-><init>(Lbe/a;)V

    return-object v0
.end method

.method public t0(II)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public u0()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public w0(II)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public w6(IB)I
    .locals 1

    iget-object v0, p0, LYd/g;->d:Lbe/a;

    invoke-interface {v0, p1, p2}, Lbe/a;->w6(IB)I

    move-result p1

    return p1
.end method

.method public y0(II)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public z0(II)[B
    .locals 1

    iget-object v0, p0, LYd/g;->d:Lbe/a;

    invoke-interface {v0, p1, p2}, Lbe/a;->z0(II)[B

    move-result-object p1

    return-object p1
.end method

.method public z3(B)I
    .locals 1

    iget-object v0, p0, LYd/g;->d:Lbe/a;

    invoke-interface {v0, p1}, Lbe/a;->z3(B)I

    move-result p1

    return p1
.end method
