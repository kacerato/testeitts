.class public final Lnf/B0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation runtime LLf/h;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnf/B0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lnf/B0;",
        ">;"
    }
.end annotation

.annotation build Lnf/l0;
    version = "1.5"
.end annotation


# static fields
.field public static final c:Lnf/B0$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:I = 0x0

.field public static final e:I = -0x1

.field public static final f:I = 0x4

.field public static final g:I = 0x20


# instance fields
.field public final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnf/B0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnf/B0$a;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lnf/B0;->c:Lnf/B0$a;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0
    .annotation build LEf/g;
    .end annotation

    .annotation build Lnf/f0;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnf/B0;->b:I

    return-void
.end method

.method public static final A(IS)I
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    const v0, 0xffff

    and-int/2addr p1, v0

    invoke-static {p1}, Lnf/B0;->o(I)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->divideUnsigned(II)I

    move-result p0

    return p0
.end method

.method public static synthetic B()V
    .locals 0
    .annotation build Lnf/f0;
    .end annotation

    return-void
.end method

.method public static C(I)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    return p0
.end method

.method public static final D(I)I
    .locals 0
    .annotation build LEf/f;
    .end annotation

    add-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    return p0
.end method

.method public static final E(I)I
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    not-int p0, p0

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    return p0
.end method

.method public static final F(IB)I
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Lnf/B0;->o(I)I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    return p0
.end method

.method public static final G(IJ)J
    .locals 4
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lnf/F0;->i(J)J

    move-result-wide v0

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Lnf/F0;->i(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final H(II)I
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    sub-int/2addr p0, p1

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    return p0
.end method

.method public static final I(IS)I
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    const v0, 0xffff

    and-int/2addr p1, v0

    invoke-static {p1}, Lnf/B0;->o(I)I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    return p0
.end method

.method public static final J(IB)B
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Lnf/B0;->o(I)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->remainderUnsigned(II)I

    move-result p0

    int-to-byte p0, p0

    invoke-static {p0}, Lnf/x0;->i(B)B

    move-result p0

    return p0
.end method

.method public static final K(IJ)J
    .locals 4
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lnf/F0;->i(J)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->remainderUnsigned(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final L(II)I
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    invoke-static {p0, p1}, Ljava/lang/Integer;->remainderUnsigned(II)I

    move-result p0

    return p0
.end method

.method public static final M(IS)S
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    const v0, 0xffff

    and-int/2addr p1, v0

    invoke-static {p1}, Lnf/B0;->o(I)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->remainderUnsigned(II)I

    move-result p0

    int-to-short p0, p0

    invoke-static {p0}, Lnf/L0;->i(S)S

    move-result p0

    return p0
.end method

.method public static final N(II)I
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    or-int/2addr p0, p1

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    return p0
.end method

.method public static final O(IB)I
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Lnf/B0;->o(I)I

    move-result p1

    add-int/2addr p0, p1

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    return p0
.end method

.method public static final P(IJ)J
    .locals 4
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lnf/F0;->i(J)J

    move-result-wide v0

    add-long/2addr v0, p1

    invoke-static {v0, v1}, Lnf/F0;->i(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final Q(II)I
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    add-int/2addr p0, p1

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    return p0
.end method

.method public static final R(IS)I
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    const v0, 0xffff

    and-int/2addr p1, v0

    invoke-static {p1}, Lnf/B0;->o(I)I

    move-result p1

    add-int/2addr p0, p1

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    return p0
.end method

.method public static final S(II)LVf/x;
    .locals 2
    .annotation build LEf/f;
    .end annotation

    new-instance v0, LVf/x;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, LVf/x;-><init>(IILkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public static final T(II)LVf/x;
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build Lnf/T0;
        markerClass = {
            Lnf/w;
        }
    .end annotation

    .annotation build Lnf/l0;
        version = "1.9"
    .end annotation

    invoke-static {p0, p1}, LVf/C;->V(II)LVf/x;

    move-result-object p0

    return-object p0
.end method

.method public static final U(IB)I
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Lnf/B0;->o(I)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->remainderUnsigned(II)I

    move-result p0

    return p0
.end method

.method public static final V(IJ)J
    .locals 4
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lnf/F0;->i(J)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->remainderUnsigned(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final W(II)I
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    invoke-static {p0, p1}, Lnf/S0;->g(II)I

    move-result p0

    return p0
.end method

.method public static final X(IS)I
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    const v0, 0xffff

    and-int/2addr p1, v0

    invoke-static {p1}, Lnf/B0;->o(I)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->remainderUnsigned(II)I

    move-result p0

    return p0
.end method

.method public static final Y(II)I
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    shl-int/2addr p0, p1

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    return p0
.end method

.method public static final Z(II)I
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    ushr-int/2addr p0, p1

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    return p0
.end method

.method public static final a0(IB)I
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Lnf/B0;->o(I)I

    move-result p1

    mul-int/2addr p0, p1

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    return p0
.end method

.method public static final b0(IJ)J
    .locals 4
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lnf/F0;->i(J)J

    move-result-wide v0

    mul-long/2addr v0, p1

    invoke-static {v0, v1}, Lnf/F0;->i(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final c0(II)I
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    mul-int/2addr p0, p1

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    return p0
.end method

.method public static final d(II)I
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    and-int/2addr p0, p1

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    return p0
.end method

.method public static final d0(IS)I
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    const v0, 0xffff

    and-int/2addr p1, v0

    invoke-static {p1}, Lnf/B0;->o(I)I

    move-result p1

    mul-int/2addr p0, p1

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic e(I)Lnf/B0;
    .locals 1

    new-instance v0, Lnf/B0;

    invoke-direct {v0, p0}, Lnf/B0;-><init>(I)V

    return-object v0
.end method

.method public static final e0(I)B
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    int-to-byte p0, p0

    return p0
.end method

.method public static final f0(I)D
    .locals 2
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    invoke-static {p0}, Lnf/S0;->h(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final g(IB)I
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Lnf/B0;->o(I)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result p0

    return p0
.end method

.method public static final g0(I)F
    .locals 2
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    invoke-static {p0}, Lnf/S0;->h(I)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static final h(IJ)I
    .locals 4
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lnf/F0;->i(J)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result p0

    return p0
.end method

.method public static final h0(I)I
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    return p0
.end method

.method public static final i0(I)J
    .locals 4
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static final j0(I)S
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    int-to-short p0, p0

    return p0
.end method

.method public static k(II)I
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    invoke-static {p0, p1}, Lnf/S0;->e(II)I

    move-result p0

    return p0
.end method

.method public static k0(I)Ljava/lang/String;
    .locals 4
    .annotation build LEf/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final l0(I)B
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    int-to-byte p0, p0

    invoke-static {p0}, Lnf/x0;->i(B)B

    move-result p0

    return p0
.end method

.method public static final m(IS)I
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    const v0, 0xffff

    and-int/2addr p1, v0

    invoke-static {p1}, Lnf/B0;->o(I)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result p0

    return p0
.end method

.method public static final m0(I)I
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    return p0
.end method

.method public static o(I)I
    .locals 0
    .annotation build LEf/g;
    .end annotation

    .annotation build Lnf/f0;
    .end annotation

    return p0
.end method

.method public static final o0(I)J
    .locals 4
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lnf/F0;->i(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static final p0(I)S
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    int-to-short p0, p0

    invoke-static {p0}, Lnf/L0;->i(S)S

    move-result p0

    return p0
.end method

.method public static final q(I)I
    .locals 0
    .annotation build LEf/f;
    .end annotation

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    return p0
.end method

.method public static final r(IB)I
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Lnf/B0;->o(I)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->divideUnsigned(II)I

    move-result p0

    return p0
.end method

.method public static final r0(II)I
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    xor-int/2addr p0, p1

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    return p0
.end method

.method public static final s(IJ)J
    .locals 4
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lnf/F0;->i(J)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->divideUnsigned(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final t(II)I
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    invoke-static {p0, p1}, Lnf/S0;->f(II)I

    move-result p0

    return p0
.end method

.method public static final u(IS)I
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    const v0, 0xffff

    and-int/2addr p1, v0

    invoke-static {p1}, Lnf/B0;->o(I)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->divideUnsigned(II)I

    move-result p0

    return p0
.end method

.method public static v(ILjava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lnf/B0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lnf/B0;

    invoke-virtual {p1}, Lnf/B0;->q0()I

    move-result p1

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final w(II)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final x(IB)I
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Lnf/B0;->o(I)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->divideUnsigned(II)I

    move-result p0

    return p0
.end method

.method public static final y(IJ)J
    .locals 4
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lnf/F0;->i(J)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->divideUnsigned(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final z(II)I
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    invoke-static {p0, p1}, Ljava/lang/Integer;->divideUnsigned(II)I

    move-result p0

    return p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lnf/B0;

    invoke-virtual {p1}, Lnf/B0;->q0()I

    move-result p1

    invoke-virtual {p0}, Lnf/B0;->q0()I

    move-result v0

    invoke-static {v0, p1}, Lnf/S0;->e(II)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Lnf/B0;->b:I

    invoke-static {v0, p1}, Lnf/B0;->v(ILjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lnf/B0;->b:I

    invoke-static {v0}, Lnf/B0;->C(I)I

    move-result v0

    return v0
.end method

.method public final j(I)I
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    invoke-virtual {p0}, Lnf/B0;->q0()I

    move-result v0

    invoke-static {v0, p1}, Lnf/S0;->e(II)I

    move-result p1

    return p1
.end method

.method public final synthetic q0()I
    .locals 1

    iget v0, p0, Lnf/B0;->b:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build LEf/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget v0, p0, Lnf/B0;->b:I

    invoke-static {v0}, Lnf/B0;->k0(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
