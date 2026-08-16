.class public LYd/Z;
.super LYd/V;
.source "SourceFile"

# interfaces
.implements Lbe/e;


# static fields
.field public static final e:J = -0x3f0dace4a1371f0L


# instance fields
.field public final d:Lbe/e;


# direct methods
.method public constructor <init>(Lbe/e;)V
    .locals 0

    invoke-direct {p0, p1}, LYd/V;-><init>(LSd/g;)V

    iput-object p1, p0, LYd/Z;->d:Lbe/e;

    return-void
.end method

.method private a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, LYd/Z;->d:Lbe/e;

    instance-of v1, v0, Ljava/util/RandomAccess;

    if-eqz v1, :cond_0

    new-instance v1, LYd/A0;

    invoke-direct {v1, v0}, LYd/A0;-><init>(Lbe/e;)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    return-object v1
.end method


# virtual methods
.method public B0(I)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public B6(II)I
    .locals 1

    iget-object v0, p0, LYd/Z;->d:Lbe/e;

    invoke-interface {v0, p1, p2}, Lbe/e;->B6(II)I

    move-result p1

    return p1
.end method

.method public F3(I)I
    .locals 1

    iget-object v0, p0, LYd/Z;->d:Lbe/e;

    invoke-interface {v0, p1}, Lbe/e;->F3(I)I

    move-result p1

    return p1
.end method

.method public I4(I[III)V
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

.method public Kb(Lhe/S;)Lbe/e;
    .locals 1

    iget-object v0, p0, LYd/Z;->d:Lbe/e;

    invoke-interface {v0, p1}, Lbe/e;->Kb(Lhe/S;)Lbe/e;

    move-result-object p1

    return-object p1
.end method

.method public M7(II)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Q3(I)I
    .locals 1

    iget-object v0, p0, LYd/Z;->d:Lbe/e;

    invoke-interface {v0, p1}, Lbe/e;->Q3(I)I

    move-result p1

    return p1
.end method

.method public R8(II)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Ue(I[I)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Wc(Lhe/S;)Z
    .locals 1

    iget-object v0, p0, LYd/Z;->d:Lbe/e;

    invoke-interface {v0, p1}, Lbe/e;->Wc(Lhe/S;)Z

    move-result p1

    return p1
.end method

.method public Xa([IIII)[I
    .locals 1

    iget-object v0, p0, LYd/Z;->d:Lbe/e;

    invoke-interface {v0, p1, p2, p3, p4}, Lbe/e;->Xa([IIII)[I

    move-result-object p1

    return-object p1
.end method

.method public c6(II)I
    .locals 1

    iget-object v0, p0, LYd/Z;->d:Lbe/e;

    invoke-interface {v0, p1, p2}, Lbe/e;->c6(II)I

    move-result p1

    return p1
.end method

.method public d3(I)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public dd(I[I)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, LYd/Z;->d:Lbe/e;

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

.method public f(LUd/e;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public f9([III)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public get(I)I
    .locals 1

    iget-object v0, p0, LYd/Z;->d:Lbe/e;

    invoke-interface {v0, p1}, Lbe/e;->get(I)I

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LYd/Z;->d:Lbe/e;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public k3([I)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public m6(I)I
    .locals 1

    iget-object v0, p0, LYd/Z;->d:Lbe/e;

    invoke-interface {v0, p1}, Lbe/e;->m6(I)I

    move-result p1

    return p1
.end method

.method public max()I
    .locals 1

    iget-object v0, p0, LYd/Z;->d:Lbe/e;

    invoke-interface {v0}, Lbe/e;->max()I

    move-result v0

    return v0
.end method

.method public min()I
    .locals 1

    iget-object v0, p0, LYd/Z;->d:Lbe/e;

    invoke-interface {v0}, Lbe/e;->min()I

    move-result v0

    return v0
.end method

.method public n5(II)I
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public o()I
    .locals 1

    iget-object v0, p0, LYd/Z;->d:Lbe/e;

    invoke-interface {v0}, Lbe/e;->o()I

    move-result v0

    return v0
.end method

.method public s6(III)V
    .locals 0

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

.method public subList(II)Lbe/e;
    .locals 2

    new-instance v0, LYd/Z;

    iget-object v1, p0, LYd/Z;->d:Lbe/e;

    invoke-interface {v1, p1, p2}, Lbe/e;->subList(II)Lbe/e;

    move-result-object p1

    invoke-direct {v0, p1}, LYd/Z;-><init>(Lbe/e;)V

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

.method public v7(I[III)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public w0(II)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public w9([III)[I
    .locals 1

    iget-object v0, p0, LYd/Z;->d:Lbe/e;

    invoke-interface {v0, p1, p2, p3}, Lbe/e;->w9([III)[I

    move-result-object p1

    return-object p1
.end method

.method public y0(II)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public y7(III)I
    .locals 1

    iget-object v0, p0, LYd/Z;->d:Lbe/e;

    invoke-interface {v0, p1, p2, p3}, Lbe/e;->y7(III)I

    move-result p1

    return p1
.end method

.method public z0(II)[I
    .locals 1

    iget-object v0, p0, LYd/Z;->d:Lbe/e;

    invoke-interface {v0, p1, p2}, Lbe/e;->z0(II)[I

    move-result-object p1

    return-object p1
.end method

.method public ze(Lhe/S;)Lbe/e;
    .locals 1

    iget-object v0, p0, LYd/Z;->d:Lbe/e;

    invoke-interface {v0, p1}, Lbe/e;->ze(Lhe/S;)Lbe/e;

    move-result-object p1

    return-object p1
.end method
