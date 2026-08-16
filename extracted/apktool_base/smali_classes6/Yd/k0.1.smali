.class public LYd/k0;
.super LYd/g0;
.source "SourceFile"

# interfaces
.implements Lbe/h;


# static fields
.field public static final e:J = -0x3f0dace4a1371f0L


# instance fields
.field public final d:Lbe/h;


# direct methods
.method public constructor <init>(Lbe/h;)V
    .locals 0

    invoke-direct {p0, p1}, LYd/g0;-><init>(LSd/h;)V

    iput-object p1, p0, LYd/k0;->d:Lbe/h;

    return-void
.end method

.method private a()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, LYd/k0;->d:Lbe/h;

    instance-of v1, v0, Ljava/util/RandomAccess;

    if-eqz v1, :cond_0

    new-instance v1, LYd/B0;

    invoke-direct {v1, v0}, LYd/B0;-><init>(Lbe/h;)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    return-object v1
.end method


# virtual methods
.method public B0(I)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public C6(IJ)I
    .locals 1

    iget-object v0, p0, LYd/k0;->d:Lbe/h;

    invoke-interface {v0, p1, p2, p3}, Lbe/h;->C6(IJ)I

    move-result p1

    return p1
.end method

.method public D4(J)I
    .locals 1

    iget-object v0, p0, LYd/k0;->d:Lbe/h;

    invoke-interface {v0, p1, p2}, Lbe/h;->D4(J)I

    move-result p1

    return p1
.end method

.method public Ha([JII)V
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

.method public N7(IJ)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public Pe(I[J)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public S3(J)I
    .locals 1

    iget-object v0, p0, LYd/k0;->d:Lbe/h;

    invoke-interface {v0, p1, p2}, Lbe/h;->S3(J)I

    move-result p1

    return p1
.end method

.method public T8(IJ)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public V8(JII)I
    .locals 1

    iget-object v0, p0, LYd/k0;->d:Lbe/h;

    invoke-interface {v0, p1, p2, p3, p4}, Lbe/h;->V8(JII)I

    move-result p1

    return p1
.end method

.method public Wa([JII)[J
    .locals 1

    iget-object v0, p0, LYd/k0;->d:Lbe/h;

    invoke-interface {v0, p1, p2, p3}, Lbe/h;->Wa([JII)[J

    move-result-object p1

    return-object p1
.end method

.method public Yc(I[JII)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public b6(IJ)I
    .locals 1

    iget-object v0, p0, LYd/k0;->d:Lbe/h;

    invoke-interface {v0, p1, p2, p3}, Lbe/h;->b6(IJ)I

    move-result p1

    return p1
.end method

.method public b7(Lhe/b0;)Lbe/h;
    .locals 1

    iget-object v0, p0, LYd/k0;->d:Lbe/h;

    invoke-interface {v0, p1}, Lbe/h;->b7(Lhe/b0;)Lbe/h;

    move-result-object p1

    return-object p1
.end method

.method public c3(J)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public c5(Lhe/b0;)Lbe/h;
    .locals 1

    iget-object v0, p0, LYd/k0;->d:Lbe/h;

    invoke-interface {v0, p1}, Lbe/h;->c5(Lhe/b0;)Lbe/h;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p1, p0, :cond_1

    iget-object v0, p0, LYd/k0;->d:Lbe/h;

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

.method public gd(I[J)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public get(I)J
    .locals 2

    iget-object v0, p0, LYd/k0;->d:Lbe/h;

    invoke-interface {v0, p1}, Lbe/h;->get(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public h(LUd/f;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public h3([J)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LYd/k0;->d:Lbe/h;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public i6(I[JII)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public k6(J)I
    .locals 1

    iget-object v0, p0, LYd/k0;->d:Lbe/h;

    invoke-interface {v0, p1, p2}, Lbe/h;->k6(J)I

    move-result p1

    return p1
.end method

.method public max()J
    .locals 2

    iget-object v0, p0, LYd/k0;->d:Lbe/h;

    invoke-interface {v0}, Lbe/h;->max()J

    move-result-wide v0

    return-wide v0
.end method

.method public min()J
    .locals 2

    iget-object v0, p0, LYd/k0;->d:Lbe/h;

    invoke-interface {v0}, Lbe/h;->min()J

    move-result-wide v0

    return-wide v0
.end method

.method public o()J
    .locals 2

    iget-object v0, p0, LYd/k0;->d:Lbe/h;

    invoke-interface {v0}, Lbe/h;->o()J

    move-result-wide v0

    return-wide v0
.end method

.method public o5(IJ)J
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public r6(IIJ)V
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

.method public subList(II)Lbe/h;
    .locals 2

    new-instance v0, LYd/k0;

    iget-object v1, p0, LYd/k0;->d:Lbe/h;

    invoke-interface {v1, p1, p2}, Lbe/h;->subList(II)Lbe/h;

    move-result-object p1

    invoke-direct {v0, p1}, LYd/k0;-><init>(Lbe/h;)V

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

.method public u5(Lhe/b0;)Z
    .locals 1

    iget-object v0, p0, LYd/k0;->d:Lbe/h;

    invoke-interface {v0, p1}, Lbe/h;->u5(Lhe/b0;)Z

    move-result p1

    return p1
.end method

.method public v8([JIII)[J
    .locals 1

    iget-object v0, p0, LYd/k0;->d:Lbe/h;

    invoke-interface {v0, p1, p2, p3, p4}, Lbe/h;->v8([JIII)[J

    move-result-object p1

    return-object p1
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

.method public z0(II)[J
    .locals 1

    iget-object v0, p0, LYd/k0;->d:Lbe/h;

    invoke-interface {v0, p1, p2}, Lbe/h;->z0(II)[J

    move-result-object p1

    return-object p1
.end method
