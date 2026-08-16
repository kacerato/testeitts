.class public LYd/J0;
.super LYd/F0;
.source "SourceFile"

# interfaces
.implements Lbe/i;


# static fields
.field public static final e:J = -0x3f0dace4a1371f0L


# instance fields
.field public final d:Lbe/i;


# direct methods
.method public constructor <init>(Lbe/i;)V
    .locals 0

    invoke-direct {p0, p1}, LYd/F0;-><init>(LSd/i;)V

    iput-object p1, p0, LYd/J0;->d:Lbe/i;

    return-void
.end method

.method private a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, LYd/J0;->d:Lbe/i;

    instance-of v1, v0, Ljava/util/RandomAccess;

    if-eqz v1, :cond_0

    new-instance v1, LYd/C0;

    invoke-direct {v1, v0}, LYd/C0;-><init>(Lbe/i;)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    return-object v1
.end method


# virtual methods
.method public B0(I)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public H6(IS)I
    .locals 1

    iget-object v0, p0, LYd/J0;->d:Lbe/i;

    invoke-interface {v0, p1, p2}, Lbe/i;->H6(IS)I

    move-result p1

    return p1
.end method

.method public J0(Ljava/util/Random;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public O7(IS)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public O8(IS)S
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Ve(I[S)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public X2([S)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Y6(Lhe/t0;)Lbe/i;
    .locals 1

    iget-object v0, p0, LYd/J0;->d:Lbe/i;

    invoke-interface {v0, p1}, Lbe/i;->Y6(Lhe/t0;)Lbe/i;

    move-result-object p1

    return-object p1
.end method

.method public Y7(I[SII)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public a3(I[SII)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, LYd/J0;->d:Lbe/i;

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

.method public f6(IS)I
    .locals 1

    iget-object v0, p0, LYd/J0;->d:Lbe/i;

    invoke-interface {v0, p1, p2}, Lbe/i;->f6(IS)I

    move-result p1

    return p1
.end method

.method public get(I)S
    .locals 1

    iget-object v0, p0, LYd/J0;->d:Lbe/i;

    invoke-interface {v0, p1}, Lbe/i;->get(I)S

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LYd/J0;->d:Lbe/i;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public ib([SII)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public j3(S)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public l7(Lhe/t0;)Lbe/i;
    .locals 1

    iget-object v0, p0, LYd/J0;->d:Lbe/i;

    invoke-interface {v0, p1}, Lbe/i;->l7(Lhe/t0;)Lbe/i;

    move-result-object p1

    return-object p1
.end method

.method public max()S
    .locals 1

    iget-object v0, p0, LYd/J0;->d:Lbe/i;

    invoke-interface {v0}, Lbe/i;->max()S

    move-result v0

    return v0
.end method

.method public min()S
    .locals 1

    iget-object v0, p0, LYd/J0;->d:Lbe/i;

    invoke-interface {v0}, Lbe/i;->min()S

    move-result v0

    return v0
.end method

.method public o()S
    .locals 1

    iget-object v0, p0, LYd/J0;->d:Lbe/i;

    invoke-interface {v0}, Lbe/i;->o()S

    move-result v0

    return v0
.end method

.method public o6(IIS)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public qd(I[S)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public r(LUd/h;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public r5(SII)I
    .locals 1

    iget-object v0, p0, LYd/J0;->d:Lbe/i;

    invoke-interface {v0, p1, p2, p3}, Lbe/i;->r5(SII)I

    move-result p1

    return p1
.end method

.method public rd([SIII)[S
    .locals 1

    iget-object v0, p0, LYd/J0;->d:Lbe/i;

    invoke-interface {v0, p1, p2, p3, p4}, Lbe/i;->rd([SIII)[S

    move-result-object p1

    return-object p1
.end method

.method public sort()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public subList(II)Lbe/i;
    .locals 2

    new-instance v0, LYd/J0;

    iget-object v1, p0, LYd/J0;->d:Lbe/i;

    invoke-interface {v1, p1, p2}, Lbe/i;->subList(II)Lbe/i;

    move-result-object p1

    invoke-direct {v0, p1}, LYd/J0;-><init>(Lbe/i;)V

    return-object v0
.end method

.method public t0(II)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public t5(IS)S
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

.method public w4(S)I
    .locals 1

    iget-object v0, p0, LYd/J0;->d:Lbe/i;

    invoke-interface {v0, p1}, Lbe/i;->w4(S)I

    move-result p1

    return p1
.end method

.method public wb(Lhe/t0;)Z
    .locals 1

    iget-object v0, p0, LYd/J0;->d:Lbe/i;

    invoke-interface {v0, p1}, Lbe/i;->wb(Lhe/t0;)Z

    move-result p1

    return p1
.end method

.method public y0(II)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public y3(S)I
    .locals 1

    iget-object v0, p0, LYd/J0;->d:Lbe/i;

    invoke-interface {v0, p1}, Lbe/i;->y3(S)I

    move-result p1

    return p1
.end method

.method public y5(S)I
    .locals 1

    iget-object v0, p0, LYd/J0;->d:Lbe/i;

    invoke-interface {v0, p1}, Lbe/i;->y5(S)I

    move-result p1

    return p1
.end method

.method public z0(II)[S
    .locals 1

    iget-object v0, p0, LYd/J0;->d:Lbe/i;

    invoke-interface {v0, p1, p2}, Lbe/i;->z0(II)[S

    move-result-object p1

    return-object p1
.end method

.method public zb([SII)[S
    .locals 1

    iget-object v0, p0, LYd/J0;->d:Lbe/i;

    invoke-interface {v0, p1, p2, p3}, Lbe/i;->zb([SII)[S

    move-result-object p1

    return-object p1
.end method
