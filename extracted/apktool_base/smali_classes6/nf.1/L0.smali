.class public final Lnf/L0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation runtime LLf/h;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnf/L0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lnf/L0;",
        ">;"
    }
.end annotation

.annotation build Lnf/l0;
    version = "1.5"
.end annotation


# static fields
.field public static final c:Lnf/L0$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:S = 0x0s

.field public static final e:S = -0x1s

.field public static final f:I = 0x2

.field public static final g:I = 0x10


# instance fields
.field public final b:S


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnf/L0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnf/L0$a;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lnf/L0;->c:Lnf/L0$a;

    return-void
.end method

.method public synthetic constructor <init>(S)V
    .locals 0
    .annotation build LEf/g;
    .end annotation

    .annotation build Lnf/f0;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Lnf/L0;->b:S

    return-void
.end method

.method public static final A(S)S
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    not-int p0, p0

    int-to-short p0, p0

    invoke-static {p0}, Lnf/L0;->i(S)S

    move-result p0

    return p0
.end method

.method public static final B(SB)I
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    const v0, 0xffff

    and-int/2addr p0, v0

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Lnf/B0;->o(I)I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    return p0
.end method

.method public static final C(SJ)J
    .locals 4
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    int-to-long v0, p0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lnf/F0;->i(J)J

    move-result-wide v0

    sub-long/2addr v0, p1

    invoke-static {v0, v1}, Lnf/F0;->i(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final D(SI)I
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    const v0, 0xffff

    and-int/2addr p0, v0

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    sub-int/2addr p0, p1

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    return p0
.end method

.method public static final E(SS)I
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    const v0, 0xffff

    and-int/2addr p0, v0

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    and-int/2addr p1, v0

    invoke-static {p1}, Lnf/B0;->o(I)I

    move-result p1

    sub-int/2addr p0, p1

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    return p0
.end method

.method public static final F(SB)B
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    const v0, 0xffff

    and-int/2addr p0, v0

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

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

.method public static final G(SJ)J
    .locals 4
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    int-to-long v0, p0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lnf/F0;->i(J)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->remainderUnsigned(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final H(SI)I
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    const v0, 0xffff

    and-int/2addr p0, v0

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    invoke-static {p0, p1}, Ljava/lang/Integer;->remainderUnsigned(II)I

    move-result p0

    return p0
.end method

.method public static final I(SS)S
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    const v0, 0xffff

    and-int/2addr p0, v0

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

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

.method public static final J(SS)S
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    or-int/2addr p0, p1

    int-to-short p0, p0

    invoke-static {p0}, Lnf/L0;->i(S)S

    move-result p0

    return p0
.end method

.method public static final K(SB)I
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    const v0, 0xffff

    and-int/2addr p0, v0

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Lnf/B0;->o(I)I

    move-result p1

    add-int/2addr p0, p1

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    return p0
.end method

.method public static final L(SJ)J
    .locals 4
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    int-to-long v0, p0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lnf/F0;->i(J)J

    move-result-wide v0

    add-long/2addr v0, p1

    invoke-static {v0, v1}, Lnf/F0;->i(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final M(SI)I
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    const v0, 0xffff

    and-int/2addr p0, v0

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    add-int/2addr p0, p1

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    return p0
.end method

.method public static final N(SS)I
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    const v0, 0xffff

    and-int/2addr p0, v0

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    and-int/2addr p1, v0

    invoke-static {p1}, Lnf/B0;->o(I)I

    move-result p1

    add-int/2addr p0, p1

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    return p0
.end method

.method public static final O(SS)LVf/x;
    .locals 2
    .annotation build LEf/f;
    .end annotation

    new-instance v0, LVf/x;

    const v1, 0xffff

    and-int/2addr p0, v1

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    and-int/2addr p1, v1

    invoke-static {p1}, Lnf/B0;->o(I)I

    move-result p1

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, LVf/x;-><init>(IILkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public static final P(SS)LVf/x;
    .locals 1
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

    const v0, 0xffff

    and-int/2addr p0, v0

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    and-int/2addr p1, v0

    invoke-static {p1}, Lnf/B0;->o(I)I

    move-result p1

    invoke-static {p0, p1}, LVf/C;->V(II)LVf/x;

    move-result-object p0

    return-object p0
.end method

.method public static final Q(SB)I
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    const v0, 0xffff

    and-int/2addr p0, v0

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Lnf/B0;->o(I)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->remainderUnsigned(II)I

    move-result p0

    return p0
.end method

.method public static final R(SJ)J
    .locals 4
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    int-to-long v0, p0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lnf/F0;->i(J)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->remainderUnsigned(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final S(SI)I
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    const v0, 0xffff

    and-int/2addr p0, v0

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    invoke-static {p0, p1}, Ljava/lang/Integer;->remainderUnsigned(II)I

    move-result p0

    return p0
.end method

.method public static final T(SS)I
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    const v0, 0xffff

    and-int/2addr p0, v0

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    and-int/2addr p1, v0

    invoke-static {p1}, Lnf/B0;->o(I)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->remainderUnsigned(II)I

    move-result p0

    return p0
.end method

.method public static final U(SB)I
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    const v0, 0xffff

    and-int/2addr p0, v0

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Lnf/B0;->o(I)I

    move-result p1

    mul-int/2addr p0, p1

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    return p0
.end method

.method public static final V(SJ)J
    .locals 4
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    int-to-long v0, p0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lnf/F0;->i(J)J

    move-result-wide v0

    mul-long/2addr v0, p1

    invoke-static {v0, v1}, Lnf/F0;->i(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final W(SI)I
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    const v0, 0xffff

    and-int/2addr p0, v0

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    mul-int/2addr p0, p1

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    return p0
.end method

.method public static final X(SS)I
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    const v0, 0xffff

    and-int/2addr p0, v0

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    and-int/2addr p1, v0

    invoke-static {p1}, Lnf/B0;->o(I)I

    move-result p1

    mul-int/2addr p0, p1

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    return p0
.end method

.method public static final Y(S)B
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    int-to-byte p0, p0

    return p0
.end method

.method public static final Z(S)D
    .locals 2
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    const v0, 0xffff

    and-int/2addr p0, v0

    invoke-static {p0}, Lnf/S0;->h(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final a(SS)S
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    and-int/2addr p0, p1

    int-to-short p0, p0

    invoke-static {p0}, Lnf/L0;->i(S)S

    move-result p0

    return p0
.end method

.method public static final a0(S)F
    .locals 2
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    const v0, 0xffff

    and-int/2addr p0, v0

    invoke-static {p0}, Lnf/S0;->h(I)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method public static final synthetic b(S)Lnf/L0;
    .locals 1

    new-instance v0, Lnf/L0;

    invoke-direct {v0, p0}, Lnf/L0;-><init>(S)V

    return-object v0
.end method

.method public static final b0(S)I
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    const v0, 0xffff

    and-int/2addr p0, v0

    return p0
.end method

.method public static final c(SB)I
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    const v0, 0xffff

    and-int/2addr p0, v0

    and-int/lit16 p1, p1, 0xff

    invoke-static {p0, p1}, Lkotlin/jvm/internal/M;->t(II)I

    move-result p0

    return p0
.end method

.method public static final c0(S)J
    .locals 4
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    int-to-long v0, p0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public static final d(SJ)I
    .locals 4
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    int-to-long v0, p0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lnf/F0;->i(J)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result p0

    return p0
.end method

.method public static final d0(S)S
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    return p0
.end method

.method public static final e(SI)I
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    const v0, 0xffff

    and-int/2addr p0, v0

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    invoke-static {p0, p1}, Ljava/lang/Integer;->compareUnsigned(II)I

    move-result p0

    return p0
.end method

.method public static e0(S)Ljava/lang/String;
    .locals 1
    .annotation build LEf/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const v0, 0xffff

    and-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final f0(S)B
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

.method public static final g0(S)I
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    const v0, 0xffff

    and-int/2addr p0, v0

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    return p0
.end method

.method public static h(SS)I
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    const v0, 0xffff

    and-int/2addr p0, v0

    and-int/2addr p1, v0

    invoke-static {p0, p1}, Lkotlin/jvm/internal/M;->t(II)I

    move-result p0

    return p0
.end method

.method public static final h0(S)J
    .locals 4
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    int-to-long v0, p0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lnf/F0;->i(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static i(S)S
    .locals 0
    .annotation build LEf/g;
    .end annotation

    .annotation build Lnf/f0;
    .end annotation

    return p0
.end method

.method public static final i0(S)S
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    return p0
.end method

.method public static final j(S)S
    .locals 0
    .annotation build LEf/f;
    .end annotation

    add-int/lit8 p0, p0, -0x1

    int-to-short p0, p0

    invoke-static {p0}, Lnf/L0;->i(S)S

    move-result p0

    return p0
.end method

.method public static final k(SB)I
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    const v0, 0xffff

    and-int/2addr p0, v0

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Lnf/B0;->o(I)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->divideUnsigned(II)I

    move-result p0

    return p0
.end method

.method public static final k0(SS)S
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    xor-int/2addr p0, p1

    int-to-short p0, p0

    invoke-static {p0}, Lnf/L0;->i(S)S

    move-result p0

    return p0
.end method

.method public static final m(SJ)J
    .locals 4
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    int-to-long v0, p0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lnf/F0;->i(J)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->divideUnsigned(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final o(SI)I
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    const v0, 0xffff

    and-int/2addr p0, v0

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    invoke-static {p0, p1}, Ljava/lang/Integer;->divideUnsigned(II)I

    move-result p0

    return p0
.end method

.method public static final q(SS)I
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    const v0, 0xffff

    and-int/2addr p0, v0

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    and-int/2addr p1, v0

    invoke-static {p1}, Lnf/B0;->o(I)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->divideUnsigned(II)I

    move-result p0

    return p0
.end method

.method public static r(SLjava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lnf/L0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lnf/L0;

    invoke-virtual {p1}, Lnf/L0;->j0()S

    move-result p1

    if-eq p0, p1, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final s(SS)Z
    .locals 0

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final t(SB)I
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    const v0, 0xffff

    and-int/2addr p0, v0

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    and-int/lit16 p1, p1, 0xff

    invoke-static {p1}, Lnf/B0;->o(I)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->divideUnsigned(II)I

    move-result p0

    return p0
.end method

.method public static final u(SJ)J
    .locals 4
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    int-to-long v0, p0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lnf/F0;->i(J)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->divideUnsigned(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final v(SI)I
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    const v0, 0xffff

    and-int/2addr p0, v0

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    invoke-static {p0, p1}, Ljava/lang/Integer;->divideUnsigned(II)I

    move-result p0

    return p0
.end method

.method public static final w(SS)I
    .locals 1
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    const v0, 0xffff

    and-int/2addr p0, v0

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    and-int/2addr p1, v0

    invoke-static {p1}, Lnf/B0;->o(I)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->divideUnsigned(II)I

    move-result p0

    return p0
.end method

.method public static synthetic x()V
    .locals 0
    .annotation build Lnf/f0;
    .end annotation

    return-void
.end method

.method public static y(S)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Short;->hashCode(S)I

    move-result p0

    return p0
.end method

.method public static final z(S)S
    .locals 0
    .annotation build LEf/f;
    .end annotation

    add-int/lit8 p0, p0, 0x1

    int-to-short p0, p0

    invoke-static {p0}, Lnf/L0;->i(S)S

    move-result p0

    return p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lnf/L0;

    invoke-virtual {p1}, Lnf/L0;->j0()S

    move-result p1

    invoke-virtual {p0}, Lnf/L0;->j0()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    and-int/2addr p1, v1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/M;->t(II)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    iget-short v0, p0, Lnf/L0;->b:S

    invoke-static {v0, p1}, Lnf/L0;->r(SLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final g(S)I
    .locals 2
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    invoke-virtual {p0}, Lnf/L0;->j0()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    and-int/2addr p1, v1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/M;->t(II)I

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-short v0, p0, Lnf/L0;->b:S

    invoke-static {v0}, Lnf/L0;->y(S)I

    move-result v0

    return v0
.end method

.method public final synthetic j0()S
    .locals 1

    iget-short v0, p0, Lnf/L0;->b:S

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build LEf/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-short v0, p0, Lnf/L0;->b:S

    invoke-static {v0}, Lnf/L0;->e0(S)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
