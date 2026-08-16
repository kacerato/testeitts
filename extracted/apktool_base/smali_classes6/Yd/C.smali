.class public LYd/C;
.super LYd/y;
.source "SourceFile"

# interfaces
.implements Lbe/c;


# static fields
.field public static final e:J = -0x3f0dace4a1371f0L


# instance fields
.field public final d:Lbe/c;


# direct methods
.method public constructor <init>(Lbe/c;)V
    .locals 0

    invoke-direct {p0, p1}, LYd/y;-><init>(LSd/e;)V

    iput-object p1, p0, LYd/C;->d:Lbe/c;

    return-void
.end method

.method private b()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, LYd/C;->d:Lbe/c;

    instance-of v1, v0, Ljava/util/RandomAccess;

    if-eqz v1, :cond_0

    new-instance v1, LYd/y0;

    invoke-direct {v1, v0}, LYd/y0;-><init>(Lbe/c;)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    return-object v1
.end method


# virtual methods
.method public B0(I)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Bc(I[DII)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public F7(IID)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public G8(ID)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Ie(I[D)V
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

.method public P2(D)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public a6(Lhe/z;)Lbe/c;
    .locals 1

    iget-object v0, p0, LYd/C;->d:Lbe/c;

    invoke-interface {v0, p1}, Lbe/c;->a6(Lhe/z;)Lbe/c;

    move-result-object p1

    return-object p1
.end method

.method public ad(I[D)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public e4(D)I
    .locals 1

    iget-object v0, p0, LYd/C;->d:Lbe/c;

    invoke-interface {v0, p1, p2}, Lbe/c;->e4(D)I

    move-result p1

    return p1
.end method

.method public e6(ID)I
    .locals 1

    iget-object v0, p0, LYd/C;->d:Lbe/c;

    invoke-interface {v0, p1, p2, p3}, Lbe/c;->e6(ID)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, LYd/C;->d:Lbe/c;

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

.method public g5(ID)D
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public g6(D)I
    .locals 1

    iget-object v0, p0, LYd/C;->d:Lbe/c;

    invoke-interface {v0, p1, p2}, Lbe/c;->g6(D)I

    move-result p1

    return p1
.end method

.method public get(I)D
    .locals 2

    iget-object v0, p0, LYd/C;->d:Lbe/c;

    invoke-interface {v0, p1}, Lbe/c;->get(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public ha([DIII)[D
    .locals 1

    iget-object v0, p0, LYd/C;->d:Lbe/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lbe/c;->ha([DIII)[D

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LYd/C;->d:Lbe/c;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i3([DII)[D
    .locals 1

    iget-object v0, p0, LYd/C;->d:Lbe/c;

    invoke-interface {v0, p1, p2, p3}, Lbe/c;->i3([DII)[D

    move-result-object p1

    return-object p1
.end method

.method public i7(Lhe/z;)Z
    .locals 1

    iget-object v0, p0, LYd/C;->d:Lbe/c;

    invoke-interface {v0, p1}, Lbe/c;->i7(Lhe/z;)Z

    move-result p1

    return p1
.end method

.method public i8(ID)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public max()D
    .locals 2

    iget-object v0, p0, LYd/C;->d:Lbe/c;

    invoke-interface {v0}, Lbe/c;->max()D

    move-result-wide v0

    return-wide v0
.end method

.method public min()D
    .locals 2

    iget-object v0, p0, LYd/C;->d:Lbe/c;

    invoke-interface {v0}, Lbe/c;->min()D

    move-result-wide v0

    return-wide v0
.end method

.method public n3([D)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public o()D
    .locals 2

    iget-object v0, p0, LYd/C;->d:Lbe/c;

    invoke-interface {v0}, Lbe/c;->o()D

    move-result-wide v0

    return-wide v0
.end method

.method public p(LUd/c;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public q3([DII)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public q7(I[DII)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public q8(Lhe/z;)Lbe/c;
    .locals 1

    iget-object v0, p0, LYd/C;->d:Lbe/c;

    invoke-interface {v0, p1}, Lbe/c;->q8(Lhe/z;)Lbe/c;

    move-result-object p1

    return-object p1
.end method

.method public sort()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public subList(II)Lbe/c;
    .locals 2

    new-instance v0, LYd/C;

    iget-object v1, p0, LYd/C;->d:Lbe/c;

    invoke-interface {v1, p1, p2}, Lbe/c;->subList(II)Lbe/c;

    move-result-object p1

    invoke-direct {v0, p1}, LYd/C;-><init>(Lbe/c;)V

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

.method public uc(DII)I
    .locals 1

    iget-object v0, p0, LYd/C;->d:Lbe/c;

    invoke-interface {v0, p1, p2, p3, p4}, Lbe/c;->uc(DII)I

    move-result p1

    return p1
.end method

.method public w0(II)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public w3(D)I
    .locals 1

    iget-object v0, p0, LYd/C;->d:Lbe/c;

    invoke-interface {v0, p1, p2}, Lbe/c;->w3(D)I

    move-result p1

    return p1
.end method

.method public x6(ID)I
    .locals 1

    iget-object v0, p0, LYd/C;->d:Lbe/c;

    invoke-interface {v0, p1, p2, p3}, Lbe/c;->x6(ID)I

    move-result p1

    return p1
.end method

.method public y0(II)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public z0(II)[D
    .locals 1

    iget-object v0, p0, LYd/C;->d:Lbe/c;

    invoke-interface {v0, p1, p2}, Lbe/c;->z0(II)[D

    move-result-object p1

    return-object p1
.end method
