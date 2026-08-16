.class public LYd/r;
.super LYd/n;
.source "SourceFile"

# interfaces
.implements Lbe/b;


# static fields
.field public static final e:J = -0x3f0dace4a1371f0L


# instance fields
.field public final d:Lbe/b;


# direct methods
.method public constructor <init>(Lbe/b;)V
    .locals 0

    invoke-direct {p0, p1}, LYd/n;-><init>(LSd/b;)V

    iput-object p1, p0, LYd/r;->d:Lbe/b;

    return-void
.end method

.method private a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, LYd/r;->d:Lbe/b;

    instance-of v1, v0, Ljava/util/RandomAccess;

    if-eqz v1, :cond_0

    new-instance v1, LYd/x0;

    invoke-direct {v1, v0}, LYd/x0;-><init>(Lbe/b;)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    return-object v1
.end method


# virtual methods
.method public B0(I)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public B3(C)I
    .locals 1

    iget-object v0, p0, LYd/r;->d:Lbe/b;

    invoke-interface {v0, p1}, Lbe/b;->B3(C)I

    move-result p1

    return p1
.end method

.method public B5([CII)[C
    .locals 1

    iget-object v0, p0, LYd/r;->d:Lbe/b;

    invoke-interface {v0, p1, p2, p3}, Lbe/b;->B5([CII)[C

    move-result-object p1

    return-object p1
.end method

.method public C8(IC)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Fc([CIII)[C
    .locals 1

    iget-object v0, p0, LYd/r;->d:Lbe/b;

    invoke-interface {v0, p1, p2, p3, p4}, Lbe/b;->Fc([CIII)[C

    move-result-object p1

    return-object p1
.end method

.method public Ge(I[C)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public H7(IIC)V
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

.method public K4(IC)I
    .locals 1

    iget-object v0, p0, LYd/r;->d:Lbe/b;

    invoke-interface {v0, p1, p2}, Lbe/b;->K4(IC)I

    move-result p1

    return p1
.end method

.method public L5([CII)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Mc(Lhe/q;)Lbe/b;
    .locals 1

    iget-object v0, p0, LYd/r;->d:Lbe/b;

    invoke-interface {v0, p1}, Lbe/b;->Mc(Lhe/q;)Lbe/b;

    move-result-object p1

    return-object p1
.end method

.method public S2(C)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public S8(Lhe/q;)Z
    .locals 1

    iget-object v0, p0, LYd/r;->d:Lbe/b;

    invoke-interface {v0, p1}, Lbe/b;->S8(Lhe/q;)Z

    move-result p1

    return p1
.end method

.method public Xc(I[C)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Z3(C)I
    .locals 1

    iget-object v0, p0, LYd/r;->d:Lbe/b;

    invoke-interface {v0, p1}, Lbe/b;->Z3(C)I

    move-result p1

    return p1
.end method

.method public b5(IC)C
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, LYd/r;->d:Lbe/b;

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

.method public g(LUd/b;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public gc(I[CII)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public get(I)C
    .locals 1

    iget-object v0, p0, LYd/r;->d:Lbe/b;

    invoke-interface {v0, p1}, Lbe/b;->get(I)C

    move-result p1

    return p1
.end method

.method public h6(C)I
    .locals 1

    iget-object v0, p0, LYd/r;->d:Lbe/b;

    invoke-interface {v0, p1}, Lbe/b;->h6(C)I

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LYd/r;->d:Lbe/b;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public id(CII)I
    .locals 1

    iget-object v0, p0, LYd/r;->d:Lbe/b;

    invoke-interface {v0, p1, p2, p3}, Lbe/b;->id(CII)I

    move-result p1

    return p1
.end method

.method public max()C
    .locals 1

    iget-object v0, p0, LYd/r;->d:Lbe/b;

    invoke-interface {v0}, Lbe/b;->max()C

    move-result v0

    return v0
.end method

.method public min()C
    .locals 1

    iget-object v0, p0, LYd/r;->d:Lbe/b;

    invoke-interface {v0}, Lbe/b;->min()C

    move-result v0

    return v0
.end method

.method public o()C
    .locals 1

    iget-object v0, p0, LYd/r;->d:Lbe/b;

    invoke-interface {v0}, Lbe/b;->o()C

    move-result v0

    return v0
.end method

.method public o3([C)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public o8(IC)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public p4(Lhe/q;)Lbe/b;
    .locals 1

    iget-object v0, p0, LYd/r;->d:Lbe/b;

    invoke-interface {v0, p1}, Lbe/b;->p4(Lhe/q;)Lbe/b;

    move-result-object p1

    return-object p1
.end method

.method public sort()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public subList(II)Lbe/b;
    .locals 2

    new-instance v0, LYd/r;

    iget-object v1, p0, LYd/r;->d:Lbe/b;

    invoke-interface {v1, p1, p2}, Lbe/b;->subList(II)Lbe/b;

    move-result-object p1

    invoke-direct {v0, p1}, LYd/r;-><init>(Lbe/b;)V

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

.method public v6(IC)I
    .locals 1

    iget-object v0, p0, LYd/r;->d:Lbe/b;

    invoke-interface {v0, p1, p2}, Lbe/b;->v6(IC)I

    move-result p1

    return p1
.end method

.method public w0(II)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public y0(II)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public yd(I[CII)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public z0(II)[C
    .locals 1

    iget-object v0, p0, LYd/r;->d:Lbe/b;

    invoke-interface {v0, p1, p2}, Lbe/b;->z0(II)[C

    move-result-object p1

    return-object p1
.end method
