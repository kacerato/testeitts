.class public final Lnf/F0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation runtime LLf/h;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnf/F0$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lnf/F0;",
        ">;"
    }
.end annotation

.annotation build Lnf/l0;
    version = "1.5"
.end annotation


# static fields
.field public static final c:Lnf/F0$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:J = 0x0L

.field public static final e:J = -0x1L

.field public static final f:I = 0x8

.field public static final g:I = 0x40


# instance fields
.field public final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lnf/F0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lnf/F0$a;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lnf/F0;->c:Lnf/F0$a;

    return-void
.end method

.method public synthetic constructor <init>(J)V
    .locals 0
    .annotation build LEf/g;
    .end annotation

    .annotation build Lnf/f0;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lnf/F0;->b:J

    return-void
.end method

.method public static final A(J)J
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    not-long p0, p0

    invoke-static {p0, p1}, Lnf/F0;->i(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final B(JB)J
    .locals 4
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    int-to-long v0, p2

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lnf/F0;->i(J)J

    move-result-wide v0

    sub-long/2addr p0, v0

    invoke-static {p0, p1}, Lnf/F0;->i(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final C(JJ)J
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    sub-long/2addr p0, p2

    invoke-static {p0, p1}, Lnf/F0;->i(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final D(JI)J
    .locals 4
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lnf/F0;->i(J)J

    move-result-wide v0

    sub-long/2addr p0, v0

    invoke-static {p0, p1}, Lnf/F0;->i(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final E(JS)J
    .locals 4
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    int-to-long v0, p2

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lnf/F0;->i(J)J

    move-result-wide v0

    sub-long/2addr p0, v0

    invoke-static {p0, p1}, Lnf/F0;->i(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final F(JB)B
    .locals 4
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    int-to-long v0, p2

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lnf/F0;->i(J)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->remainderUnsigned(JJ)J

    move-result-wide p0

    long-to-int p0, p0

    int-to-byte p0, p0

    invoke-static {p0}, Lnf/x0;->i(B)B

    move-result p0

    return p0
.end method

.method public static final G(JJ)J
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Long;->remainderUnsigned(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final H(JI)I
    .locals 4
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lnf/F0;->i(J)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->remainderUnsigned(JJ)J

    move-result-wide p0

    long-to-int p0, p0

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    return p0
.end method

.method public static final I(JS)S
    .locals 4
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    int-to-long v0, p2

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lnf/F0;->i(J)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->remainderUnsigned(JJ)J

    move-result-wide p0

    long-to-int p0, p0

    int-to-short p0, p0

    invoke-static {p0}, Lnf/L0;->i(S)S

    move-result p0

    return p0
.end method

.method public static final J(JJ)J
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    or-long/2addr p0, p2

    invoke-static {p0, p1}, Lnf/F0;->i(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final K(JB)J
    .locals 4
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    int-to-long v0, p2

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lnf/F0;->i(J)J

    move-result-wide v0

    add-long/2addr p0, v0

    invoke-static {p0, p1}, Lnf/F0;->i(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final L(JJ)J
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    add-long/2addr p0, p2

    invoke-static {p0, p1}, Lnf/F0;->i(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final M(JI)J
    .locals 4
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lnf/F0;->i(J)J

    move-result-wide v0

    add-long/2addr p0, v0

    invoke-static {p0, p1}, Lnf/F0;->i(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final N(JS)J
    .locals 4
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    int-to-long v0, p2

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lnf/F0;->i(J)J

    move-result-wide v0

    add-long/2addr p0, v0

    invoke-static {p0, p1}, Lnf/F0;->i(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final O(JJ)LVf/A;
    .locals 7
    .annotation build LEf/f;
    .end annotation

    new-instance v6, LVf/A;

    const/4 v5, 0x0

    move-object v0, v6

    move-wide v1, p0

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, LVf/A;-><init>(JJLkotlin/jvm/internal/x;)V

    return-object v6
.end method

.method public static final P(JJ)LVf/A;
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

    invoke-static {p0, p1, p2, p3}, LVf/C;->X(JJ)LVf/A;

    move-result-object p0

    return-object p0
.end method

.method public static final Q(JB)J
    .locals 4
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    int-to-long v0, p2

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lnf/F0;->i(J)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->remainderUnsigned(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final R(JJ)J
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lnf/S0;->p(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final S(JI)J
    .locals 4
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lnf/F0;->i(J)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->remainderUnsigned(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final T(JS)J
    .locals 4
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    int-to-long v0, p2

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lnf/F0;->i(J)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->remainderUnsigned(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final U(JI)J
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    shl-long/2addr p0, p2

    invoke-static {p0, p1}, Lnf/F0;->i(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final V(JI)J
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    ushr-long/2addr p0, p2

    invoke-static {p0, p1}, Lnf/F0;->i(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final W(JB)J
    .locals 4
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    int-to-long v0, p2

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lnf/F0;->i(J)J

    move-result-wide v0

    mul-long/2addr p0, v0

    invoke-static {p0, p1}, Lnf/F0;->i(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final X(JJ)J
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    mul-long/2addr p0, p2

    invoke-static {p0, p1}, Lnf/F0;->i(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final Y(JI)J
    .locals 4
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lnf/F0;->i(J)J

    move-result-wide v0

    mul-long/2addr p0, v0

    invoke-static {p0, p1}, Lnf/F0;->i(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final Z(JS)J
    .locals 4
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    int-to-long v0, p2

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lnf/F0;->i(J)J

    move-result-wide v0

    mul-long/2addr p0, v0

    invoke-static {p0, p1}, Lnf/F0;->i(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final a(JJ)J
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    and-long/2addr p0, p2

    invoke-static {p0, p1}, Lnf/F0;->i(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final a0(J)B
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    long-to-int p0, p0

    int-to-byte p0, p0

    return p0
.end method

.method public static final synthetic b(J)Lnf/F0;
    .locals 1

    new-instance v0, Lnf/F0;

    invoke-direct {v0, p0, p1}, Lnf/F0;-><init>(J)V

    return-object v0
.end method

.method public static final b0(J)D
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    invoke-static {p0, p1}, Lnf/S0;->q(J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static final c(JB)I
    .locals 4
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    int-to-long v0, p2

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lnf/F0;->i(J)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result p0

    return p0
.end method

.method public static final c0(J)F
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    invoke-static {p0, p1}, Lnf/S0;->q(J)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
.end method

.method public static final d0(J)I
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    long-to-int p0, p0

    return p0
.end method

.method public static e(JJ)I
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lnf/S0;->n(JJ)I

    move-result p0

    return p0
.end method

.method public static final e0(J)J
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    return-wide p0
.end method

.method public static final f0(J)S
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    long-to-int p0, p0

    int-to-short p0, p0

    return p0
.end method

.method public static final g(JI)I
    .locals 4
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lnf/F0;->i(J)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result p0

    return p0
.end method

.method public static g0(J)Ljava/lang/String;
    .locals 1
    .annotation build LEf/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Lnf/S0;->t(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final h(JS)I
    .locals 4
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    int-to-long v0, p2

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lnf/F0;->i(J)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result p0

    return p0
.end method

.method public static final h0(J)B
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    long-to-int p0, p0

    int-to-byte p0, p0

    invoke-static {p0}, Lnf/x0;->i(B)B

    move-result p0

    return p0
.end method

.method public static i(J)J
    .locals 0
    .annotation build LEf/g;
    .end annotation

    .annotation build Lnf/f0;
    .end annotation

    return-wide p0
.end method

.method public static final i0(J)I
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    long-to-int p0, p0

    invoke-static {p0}, Lnf/B0;->o(I)I

    move-result p0

    return p0
.end method

.method public static final j(J)J
    .locals 2
    .annotation build LEf/f;
    .end annotation

    const-wide/16 v0, -0x1

    add-long/2addr p0, v0

    invoke-static {p0, p1}, Lnf/F0;->i(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final j0(J)J
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    return-wide p0
.end method

.method public static final k(JB)J
    .locals 4
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    int-to-long v0, p2

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lnf/F0;->i(J)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->divideUnsigned(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final k0(J)S
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    long-to-int p0, p0

    int-to-short p0, p0

    invoke-static {p0}, Lnf/L0;->i(S)S

    move-result p0

    return p0
.end method

.method public static final m(JJ)J
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lnf/S0;->o(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final m0(JJ)J
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    xor-long/2addr p0, p2

    invoke-static {p0, p1}, Lnf/F0;->i(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final o(JI)J
    .locals 4
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lnf/F0;->i(J)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->divideUnsigned(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final q(JS)J
    .locals 4
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    int-to-long v0, p2

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lnf/F0;->i(J)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->divideUnsigned(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static r(JLjava/lang/Object;)Z
    .locals 4

    instance-of v0, p2, Lnf/F0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p2, Lnf/F0;

    invoke-virtual {p2}, Lnf/F0;->l0()J

    move-result-wide v2

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final s(JJ)Z
    .locals 0

    cmp-long p0, p0, p2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final t(JB)J
    .locals 4
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    int-to-long v0, p2

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lnf/F0;->i(J)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->divideUnsigned(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final u(JJ)J
    .locals 0
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Long;->divideUnsigned(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final v(JI)J
    .locals 4
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    int-to-long v0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lnf/F0;->i(J)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->divideUnsigned(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final w(JS)J
    .locals 4
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    int-to-long v0, p2

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    invoke-static {v0, v1}, Lnf/F0;->i(J)J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Long;->divideUnsigned(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic x()V
    .locals 0
    .annotation build Lnf/f0;
    .end annotation

    return-void
.end method

.method public static y(J)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    return p0
.end method

.method public static final z(J)J
    .locals 2
    .annotation build LEf/f;
    .end annotation

    const-wide/16 v0, 0x1

    add-long/2addr p0, v0

    invoke-static {p0, p1}, Lnf/F0;->i(J)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lnf/F0;

    invoke-virtual {p1}, Lnf/F0;->l0()J

    move-result-wide v0

    invoke-virtual {p0}, Lnf/F0;->l0()J

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Lnf/S0;->n(JJ)I

    move-result p1

    return p1
.end method

.method public final d(J)I
    .locals 2
    .annotation build LEf/f;
    .end annotation

    .annotation build LEf/g;
    .end annotation

    invoke-virtual {p0}, Lnf/F0;->l0()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lnf/S0;->n(JJ)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    iget-wide v0, p0, Lnf/F0;->b:J

    invoke-static {v0, v1, p1}, Lnf/F0;->r(JLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lnf/F0;->b:J

    invoke-static {v0, v1}, Lnf/F0;->y(J)I

    move-result v0

    return v0
.end method

.method public final synthetic l0()J
    .locals 2

    iget-wide v0, p0, Lnf/F0;->b:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build LEf/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-wide v0, p0, Lnf/F0;->b:J

    invoke-static {v0, v1}, Lnf/F0;->g0(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
