.class public LYd/N;
.super LYd/J;
.source "SourceFile"

# interfaces
.implements Lbe/d;


# static fields
.field public static final e:J = -0x3f0dace4a1371f0L


# instance fields
.field public final d:Lbe/d;


# direct methods
.method public constructor <init>(Lbe/d;)V
    .locals 0

    invoke-direct {p0, p1}, LYd/J;-><init>(LSd/f;)V

    iput-object p1, p0, LYd/N;->d:Lbe/d;

    return-void
.end method

.method private a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, LYd/N;->d:Lbe/d;

    instance-of v1, v0, Ljava/util/RandomAccess;

    if-eqz v1, :cond_0

    new-instance v1, LYd/z0;

    invoke-direct {v1, v0}, LYd/z0;-><init>(Lbe/d;)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    return-object v1
.end method


# virtual methods
.method public B0(I)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public G3(FII)I
    .locals 1

    iget-object v0, p0, LYd/N;->d:Lbe/d;

    invoke-interface {v0, p1, p2, p3}, Lbe/d;->G3(FII)I

    move-result p1

    return p1
.end method

.method public H3(F)I
    .locals 1

    iget-object v0, p0, LYd/N;->d:Lbe/d;

    invoke-interface {v0, p1}, Lbe/d;->H3(F)I

    move-result p1

    return p1
.end method

.method public J0(Ljava/util/Random;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Ka(I[FII)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public M2(F)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Q8(IF)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public R5([FIII)[F
    .locals 1

    iget-object v0, p0, LYd/N;->d:Lbe/d;

    invoke-interface {v0, p1, p2, p3, p4}, Lbe/d;->R5([FIII)[F

    move-result-object p1

    return-object p1
.end method

.method public T7(I[FII)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Te(I[F)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public U8([FII)[F
    .locals 1

    iget-object v0, p0, LYd/N;->d:Lbe/d;

    invoke-interface {v0, p1, p2, p3}, Lbe/d;->U8([FII)[F

    move-result-object p1

    return-object p1
.end method

.method public V2(Lhe/I;)Lbe/d;
    .locals 1

    iget-object v0, p0, LYd/N;->d:Lbe/d;

    invoke-interface {v0, p1}, Lbe/d;->V2(Lhe/I;)Lbe/d;

    move-result-object p1

    return-object p1
.end method

.method public We([FII)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public X3(F)I
    .locals 1

    iget-object v0, p0, LYd/N;->d:Lbe/d;

    invoke-interface {v0, p1}, Lbe/d;->X3(F)I

    move-result p1

    return p1
.end method

.method public bd(I[F)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public d5(Lhe/I;)Lbe/d;
    .locals 1

    iget-object v0, p0, LYd/N;->d:Lbe/d;

    invoke-interface {v0, p1}, Lbe/d;->d5(Lhe/I;)Lbe/d;

    move-result-object p1

    return-object p1
.end method

.method public d6(IF)I
    .locals 1

    iget-object v0, p0, LYd/N;->d:Lbe/d;

    invoke-interface {v0, p1, p2}, Lbe/d;->d6(IF)I

    move-result p1

    return p1
.end method

.method public e3([F)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, LYd/N;->d:Lbe/d;

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

.method public get(I)F
    .locals 1

    iget-object v0, p0, LYd/N;->d:Lbe/d;

    invoke-interface {v0, p1}, Lbe/d;->get(I)F

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LYd/N;->d:Lbe/d;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public j6(F)I
    .locals 1

    iget-object v0, p0, LYd/N;->d:Lbe/d;

    invoke-interface {v0, p1}, Lbe/d;->j6(F)I

    move-result p1

    return p1
.end method

.method public l5(IF)F
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public l8(IF)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public max()F
    .locals 1

    iget-object v0, p0, LYd/N;->d:Lbe/d;

    invoke-interface {v0}, Lbe/d;->max()F

    move-result v0

    return v0
.end method

.method public min()F
    .locals 1

    iget-object v0, p0, LYd/N;->d:Lbe/d;

    invoke-interface {v0}, Lbe/d;->min()F

    move-result v0

    return v0
.end method

.method public n(LUd/d;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public o()F
    .locals 1

    iget-object v0, p0, LYd/N;->d:Lbe/d;

    invoke-interface {v0}, Lbe/d;->o()F

    move-result v0

    return v0
.end method

.method public q6(IIF)V
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

.method public subList(II)Lbe/d;
    .locals 2

    new-instance v0, LYd/N;

    iget-object v1, p0, LYd/N;->d:Lbe/d;

    invoke-interface {v1, p1, p2}, Lbe/d;->subList(II)Lbe/d;

    move-result-object p1

    invoke-direct {v0, p1}, LYd/N;-><init>(Lbe/d;)V

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

.method public y0(II)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public z0(II)[F
    .locals 1

    iget-object v0, p0, LYd/N;->d:Lbe/d;

    invoke-interface {v0, p1, p2}, Lbe/d;->z0(II)[F

    move-result-object p1

    return-object p1
.end method

.method public z6(IF)I
    .locals 1

    iget-object v0, p0, LYd/N;->d:Lbe/d;

    invoke-interface {v0, p1, p2}, Lbe/d;->z6(IF)I

    move-result p1

    return p1
.end method

.method public zc(Lhe/I;)Z
    .locals 1

    iget-object v0, p0, LYd/N;->d:Lbe/d;

    invoke-interface {v0, p1}, Lbe/d;->zc(Lhe/I;)Z

    move-result p1

    return p1
.end method
