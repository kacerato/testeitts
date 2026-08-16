.class public final Lkotlin/time/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation runtime LLf/h;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/time/h$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lkotlin/time/h;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDuration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Duration.kt\nkotlin/time/Duration\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1613:1\n41#1:1614\n41#1:1615\n41#1:1616\n41#1:1617\n41#1:1618\n572#1:1619\n589#1:1627\n173#2,6:1620\n1#3:1626\n*S KotlinDebug\n*F\n+ 1 Duration.kt\nkotlin/time/Duration\n*L\n42#1:1614\n43#1:1615\n353#1:1616\n362#1:1617\n546#1:1618\n847#1:1619\n938#1:1627\n889#1:1620,6\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nDuration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Duration.kt\nkotlin/time/Duration\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1613:1\n41#1:1614\n41#1:1615\n41#1:1616\n41#1:1617\n41#1:1618\n572#1:1619\n589#1:1627\n173#2,6:1620\n1#3:1626\n*S KotlinDebug\n*F\n+ 1 Duration.kt\nkotlin/time/Duration\n*L\n42#1:1614\n43#1:1615\n353#1:1616\n362#1:1617\n546#1:1618\n847#1:1619\n938#1:1627\n889#1:1620,6\n*E\n"
    }
.end annotation

.annotation build Lnf/l0;
    version = "1.6"
.end annotation


# static fields
.field public static final c:Lkotlin/time/h$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final d:J

.field public static final e:J

.field public static final f:J

.field public static final g:J = 0x7fffffffffffc0deL

.field public static final h:J


# instance fields
.field public final b:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/time/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/time/h$a;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lkotlin/time/h;->c:Lkotlin/time/h$a;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lkotlin/time/h;->o(J)J

    move-result-wide v0

    sput-wide v0, Lkotlin/time/h;->d:J

    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    invoke-static {v0, v1}, Lkotlin/time/j;->c(J)J

    move-result-wide v0

    sput-wide v0, Lkotlin/time/h;->e:J

    const-wide v0, -0x3fffffffffffffffL    # -2.0000000000000004

    invoke-static {v0, v1}, Lkotlin/time/j;->c(J)J

    move-result-wide v0

    sput-wide v0, Lkotlin/time/h;->f:J

    const-wide v0, 0x7fffffffffffc0deL

    invoke-static {v0, v1}, Lkotlin/time/h;->o(J)J

    move-result-wide v0

    sput-wide v0, Lkotlin/time/h;->h:J

    return-void
.end method

.method public synthetic constructor <init>(J)V
    .locals 0
    .annotation runtime Lnf/o;
        level = .enum Lnf/q;->ERROR:Lnf/q;
        message = "Don\'t call this constructor directly."
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lkotlin/time/h;->b:J

    return-void
.end method

.method public static final A(J)J
    .locals 1

    sget-object v0, Lkotlin/time/k;->MICROSECONDS:Lkotlin/time/k;

    invoke-static {p0, p1, v0}, Lkotlin/time/h;->g0(JLkotlin/time/k;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final B(J)J
    .locals 1

    invoke-static {p0, p1}, Lkotlin/time/h;->Q(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lkotlin/time/h;->P(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lkotlin/time/h;->N(J)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    sget-object v0, Lkotlin/time/k;->MILLISECONDS:Lkotlin/time/k;

    invoke-static {p0, p1, v0}, Lkotlin/time/h;->g0(JLkotlin/time/k;)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static final C(J)J
    .locals 1

    sget-object v0, Lkotlin/time/k;->MINUTES:Lkotlin/time/k;

    invoke-static {p0, p1, v0}, Lkotlin/time/h;->g0(JLkotlin/time/k;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final D(J)J
    .locals 2

    invoke-static {p0, p1}, Lkotlin/time/h;->N(J)J

    move-result-wide v0

    invoke-static {p0, p1}, Lkotlin/time/h;->R(J)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-wide p0, 0x8637bd05af6L

    cmp-long p0, v0, p0

    if-lez p0, :cond_1

    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_1
    const-wide p0, -0x8637bd05af6L

    cmp-long p0, v0, p0

    if-gez p0, :cond_2

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_2
    invoke-static {v0, v1}, Lkotlin/time/j;->g(J)J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public static final E(J)J
    .locals 1

    sget-object v0, Lkotlin/time/k;->SECONDS:Lkotlin/time/k;

    invoke-static {p0, p1, v0}, Lkotlin/time/h;->g0(JLkotlin/time/k;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static synthetic F()V
    .locals 0
    .annotation build Lnf/f0;
    .end annotation

    return-void
.end method

.method public static final G(J)I
    .locals 2

    invoke-static {p0, p1}, Lkotlin/time/h;->S(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lkotlin/time/h;->C(J)J

    move-result-wide p0

    const/16 v0, 0x3c

    int-to-long v0, v0

    rem-long/2addr p0, v0

    long-to-int p0, p0

    :goto_0
    return p0
.end method

.method public static synthetic H()V
    .locals 0
    .annotation build Lnf/f0;
    .end annotation

    return-void
.end method

.method public static final I(J)I
    .locals 2

    invoke-static {p0, p1}, Lkotlin/time/h;->S(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    invoke-static {p0, p1}, Lkotlin/time/h;->Q(J)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lkotlin/time/h;->N(J)J

    move-result-wide p0

    const/16 v0, 0x3e8

    int-to-long v0, v0

    rem-long/2addr p0, v0

    invoke-static {p0, p1}, Lkotlin/time/j;->g(J)J

    move-result-wide p0

    :goto_0
    long-to-int p0, p0

    goto :goto_1

    :cond_1
    invoke-static {p0, p1}, Lkotlin/time/h;->N(J)J

    move-result-wide p0

    const v0, 0x3b9aca00

    int-to-long v0, v0

    rem-long/2addr p0, v0

    goto :goto_0

    :goto_1
    return p0
.end method

.method public static synthetic J()V
    .locals 0
    .annotation build Lnf/f0;
    .end annotation

    return-void
.end method

.method public static final K(J)I
    .locals 2

    invoke-static {p0, p1}, Lkotlin/time/h;->S(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lkotlin/time/h;->E(J)J

    move-result-wide p0

    const/16 v0, 0x3c

    int-to-long v0, v0

    rem-long/2addr p0, v0

    long-to-int p0, p0

    :goto_0
    return p0
.end method

.method public static final L(J)Lkotlin/time/k;
    .locals 0

    invoke-static {p0, p1}, Lkotlin/time/h;->R(J)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lkotlin/time/k;->NANOSECONDS:Lkotlin/time/k;

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/time/k;->MILLISECONDS:Lkotlin/time/k;

    :goto_0
    return-object p0
.end method

.method public static final M(J)I
    .locals 0

    long-to-int p0, p0

    and-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static final N(J)J
    .locals 1

    const/4 v0, 0x1

    shr-long/2addr p0, v0

    return-wide p0
.end method

.method public static O(J)I
    .locals 0

    invoke-static {p0, p1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    return p0
.end method

.method public static final P(J)Z
    .locals 0

    invoke-static {p0, p1}, Lkotlin/time/h;->S(J)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static final Q(J)Z
    .locals 0

    long-to-int p0, p0

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static final R(J)Z
    .locals 0

    long-to-int p0, p0

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static final S(J)Z
    .locals 2

    sget-wide v0, Lkotlin/time/h;->e:J

    cmp-long v0, p0, v0

    if-eqz v0, :cond_1

    sget-wide v0, Lkotlin/time/h;->f:J

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static final T(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final U(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final V(JJ)J
    .locals 0

    invoke-static {p2, p3}, Lkotlin/time/h;->l0(J)J

    move-result-wide p2

    invoke-static {p0, p1, p2, p3}, Lkotlin/time/h;->W(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final W(JJ)J
    .locals 7

    long-to-int v0, p0

    and-int/lit8 v0, v0, 0x1

    long-to-int v1, p2

    and-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_4

    invoke-static {p0, p1}, Lkotlin/time/h;->R(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lkotlin/time/h;->N(J)J

    move-result-wide p0

    invoke-static {p2, p3}, Lkotlin/time/h;->N(J)J

    move-result-wide p2

    add-long/2addr p0, p2

    invoke-static {p0, p1}, Lkotlin/time/j;->f(J)J

    move-result-wide p0

    goto :goto_1

    :cond_0
    invoke-static {p0, p1}, Lkotlin/time/h;->N(J)J

    move-result-wide p0

    invoke-static {p2, p3}, Lkotlin/time/h;->N(J)J

    move-result-wide p2

    invoke-static {p0, p1, p2, p3}, Lkotlin/time/j;->a(JJ)J

    move-result-wide p0

    const-wide p2, 0x7fffffffffffc0deL

    cmp-long p2, p0, p2

    if-eqz p2, :cond_3

    const-wide p2, 0x3fffffffffffffffL    # 1.9999999999999998

    cmp-long p2, p0, p2

    if-eqz p2, :cond_2

    const-wide p2, -0x3fffffffffffffffL    # -2.0000000000000004

    cmp-long p2, p0, p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lkotlin/time/j;->d(J)J

    move-result-wide p0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {p0, p1}, Lkotlin/time/j;->c(J)J

    move-result-wide p0

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Summing infinite durations of different signs yields an undefined result."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-static {p0, p1}, Lkotlin/time/h;->Q(J)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0, p1}, Lkotlin/time/h;->N(J)J

    move-result-wide v3

    invoke-static {p2, p3}, Lkotlin/time/h;->N(J)J

    move-result-wide v5

    move-wide v1, p0

    invoke-static/range {v1 .. v6}, Lkotlin/time/h;->h(JJJ)J

    move-result-wide p0

    goto :goto_1

    :cond_5
    invoke-static {p2, p3}, Lkotlin/time/h;->N(J)J

    move-result-wide v2

    invoke-static {p0, p1}, Lkotlin/time/h;->N(J)J

    move-result-wide v4

    move-wide v0, p0

    invoke-static/range {v0 .. v5}, Lkotlin/time/h;->h(JJJ)J

    move-result-wide p0

    :goto_1
    return-wide p0
.end method

.method public static final X(JD)J
    .locals 3

    invoke-static {p2, p3}, LRf/d;->K0(D)I

    move-result v0

    int-to-double v1, v0

    cmpg-double v1, v1, p2

    if-nez v1, :cond_0

    invoke-static {p0, p1, v0}, Lkotlin/time/h;->Y(JI)J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-static {p0, p1}, Lkotlin/time/h;->L(J)Lkotlin/time/k;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lkotlin/time/h;->d0(JLkotlin/time/k;)D

    move-result-wide p0

    mul-double/2addr p0, p2

    invoke-static {p0, p1, v0}, Lkotlin/time/j;->N(DLkotlin/time/k;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final Y(JI)J
    .locals 12

    invoke-static {p0, p1}, Lkotlin/time/h;->S(J)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    if-lez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lkotlin/time/h;->l0(J)J

    move-result-wide p0

    :goto_0
    return-wide p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Multiplying infinite duration by zero yields an undefined result."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    if-nez p2, :cond_3

    sget-wide p0, Lkotlin/time/h;->d:J

    return-wide p0

    :cond_3
    invoke-static {p0, p1}, Lkotlin/time/h;->N(J)J

    move-result-wide v0

    int-to-long v2, p2

    mul-long v4, v0, v2

    invoke-static {p0, p1}, Lkotlin/time/h;->R(J)Z

    move-result p0

    const-wide v6, 0x3fffffffffffffffL    # 1.9999999999999998

    const-wide v8, -0x3fffffffffffffffL    # -2.0000000000000004

    if-eqz p0, :cond_8

    const-wide/32 p0, -0x7fffffff

    cmp-long p0, p0, v0

    if-gtz p0, :cond_4

    const-wide p0, 0x80000000L

    cmp-long p0, v0, p0

    if-gez p0, :cond_4

    invoke-static {v4, v5}, Lkotlin/time/j;->e(J)J

    move-result-wide p0

    goto/16 :goto_1

    :cond_4
    div-long p0, v4, v2

    cmp-long p0, p0, v0

    if-nez p0, :cond_5

    invoke-static {v4, v5}, Lkotlin/time/j;->f(J)J

    move-result-wide p0

    goto :goto_1

    :cond_5
    invoke-static {v0, v1}, Lkotlin/time/j;->h(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/j;->g(J)J

    move-result-wide v4

    sub-long v4, v0, v4

    mul-long v10, p0, v2

    mul-long/2addr v4, v2

    invoke-static {v4, v5}, Lkotlin/time/j;->h(J)J

    move-result-wide v4

    add-long/2addr v4, v10

    div-long v2, v10, v2

    cmp-long p0, v2, p0

    if-nez p0, :cond_6

    xor-long p0, v4, v10

    const-wide/16 v2, 0x0

    cmp-long p0, p0, v2

    if-ltz p0, :cond_6

    new-instance p0, LVf/o;

    invoke-direct {p0, v8, v9, v6, v7}, LVf/o;-><init>(JJ)V

    invoke-static {v4, v5, p0}, LVf/u;->N(JLVf/g;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/j;->c(J)J

    move-result-wide p0

    goto :goto_1

    :cond_6
    invoke-static {v0, v1}, LRf/d;->V(J)I

    move-result p0

    invoke-static {p2}, LRf/d;->U(I)I

    move-result p1

    mul-int/2addr p0, p1

    if-lez p0, :cond_7

    sget-wide p0, Lkotlin/time/h;->e:J

    goto :goto_1

    :cond_7
    sget-wide p0, Lkotlin/time/h;->f:J

    goto :goto_1

    :cond_8
    div-long p0, v4, v2

    cmp-long p0, p0, v0

    if-nez p0, :cond_9

    new-instance p0, LVf/o;

    invoke-direct {p0, v8, v9, v6, v7}, LVf/o;-><init>(JJ)V

    invoke-static {v4, v5, p0}, LVf/u;->N(JLVf/g;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/j;->c(J)J

    move-result-wide p0

    goto :goto_1

    :cond_9
    invoke-static {v0, v1}, LRf/d;->V(J)I

    move-result p0

    invoke-static {p2}, LRf/d;->U(I)I

    move-result p1

    mul-int/2addr p0, p1

    if-lez p0, :cond_a

    sget-wide p0, Lkotlin/time/h;->e:J

    goto :goto_1

    :cond_a
    sget-wide p0, Lkotlin/time/h;->f:J

    :goto_1
    return-wide p0
.end method

.method public static final Z(JLMf/p;)Ljava/lang/Object;
    .locals 2
    .param p2    # LMf/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "LMf/p<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lkotlin/time/h;->E(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, p1}, Lkotlin/time/h;->I(J)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, v0, p0}, LMf/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a()J
    .locals 2

    sget-wide v0, Lkotlin/time/h;->e:J

    return-wide v0
.end method

.method public static final a0(JLMf/q;)Ljava/lang/Object;
    .locals 2
    .param p2    # LMf/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "LMf/q<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lkotlin/time/h;->C(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, p1}, Lkotlin/time/h;->K(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p1}, Lkotlin/time/h;->I(J)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, v0, v1, p0}, LMf/q;->n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b()J
    .locals 2

    sget-wide v0, Lkotlin/time/h;->h:J

    return-wide v0
.end method

.method public static final b0(JLMf/r;)Ljava/lang/Object;
    .locals 3
    .param p2    # LMf/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "LMf/r<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lkotlin/time/h;->z(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, p1}, Lkotlin/time/h;->G(J)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p0, p1}, Lkotlin/time/h;->K(J)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p0, p1}, Lkotlin/time/h;->I(J)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p2, v0, v1, v2, p0}, LMf/r;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c()J
    .locals 2

    sget-wide v0, Lkotlin/time/h;->f:J

    return-wide v0
.end method

.method public static final c0(JLMf/s;)Ljava/lang/Object;
    .locals 8
    .param p2    # LMf/s;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(J",
            "LMf/s<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Integer;",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lkotlin/time/h;->y(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {p0, p1}, Lkotlin/time/h;->x(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p0, p1}, Lkotlin/time/h;->G(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p0, p1}, Lkotlin/time/h;->K(J)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p0, p1}, Lkotlin/time/h;->I(J)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v2, p2

    invoke-interface/range {v2 .. v7}, LMf/s;->s(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(J)J
    .locals 0

    invoke-static {p0, p1}, Lkotlin/time/h;->N(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final d0(JLkotlin/time/k;)D
    .locals 2
    .param p2    # Lkotlin/time/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-wide v0, Lkotlin/time/h;->e:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-wide/high16 p0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    :cond_0
    sget-wide v0, Lkotlin/time/h;->f:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    const-wide/high16 p0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lkotlin/time/h;->N(J)J

    move-result-wide v0

    long-to-double v0, v0

    invoke-static {p0, p1}, Lkotlin/time/h;->L(J)Lkotlin/time/k;

    move-result-object p0

    invoke-static {v0, v1, p0, p2}, Lkotlin/time/m;->a(DLkotlin/time/k;Lkotlin/time/k;)D

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static final synthetic e()J
    .locals 2

    sget-wide v0, Lkotlin/time/h;->d:J

    return-wide v0
.end method

.method public static final e0(JLkotlin/time/k;)I
    .locals 7
    .param p2    # Lkotlin/time/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, Lkotlin/time/h;->g0(JLkotlin/time/k;)J

    move-result-wide v1

    const-wide/32 v3, -0x80000000

    const-wide/32 v5, 0x7fffffff

    invoke-static/range {v1 .. v6}, LVf/u;->M(JJJ)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public static final f0(J)Ljava/lang/String;
    .locals 11
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p1}, Lkotlin/time/h;->T(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2d

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const-string v0, "PT"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lkotlin/time/h;->v(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lkotlin/time/h;->z(J)J

    move-result-wide v2

    invoke-static {v0, v1}, Lkotlin/time/h;->G(J)I

    move-result v4

    invoke-static {v0, v1}, Lkotlin/time/h;->K(J)I

    move-result v5

    invoke-static {v0, v1}, Lkotlin/time/h;->I(J)I

    move-result v6

    invoke-static {p0, p1}, Lkotlin/time/h;->S(J)Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide v2, 0x9184e729fffL

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    const/4 v1, 0x0

    const/4 v7, 0x1

    if-eqz v0, :cond_2

    move v0, v7

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    if-nez v5, :cond_4

    if-eqz v6, :cond_3

    goto :goto_1

    :cond_3
    move v9, v1

    goto :goto_2

    :cond_4
    :goto_1
    move v9, v7

    :goto_2
    if-nez v4, :cond_5

    if-eqz v9, :cond_6

    if-eqz v0, :cond_6

    :cond_5
    move v1, v7

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x48

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x4d

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_8
    if-nez v9, :cond_9

    if-nez v0, :cond_a

    if-nez v1, :cond_a

    :cond_9
    const-string v7, "S"

    const/4 v9, 0x1

    const/16 v10, 0x9

    move-wide v0, p0

    move-object v2, v8

    move v3, v5

    move v4, v6

    move v5, v10

    move-object v6, v7

    move v7, v9

    invoke-static/range {v0 .. v7}, Lkotlin/time/h;->i(JLjava/lang/StringBuilder;IIILjava/lang/String;Z)V

    :cond_a
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic g(J)Z
    .locals 0

    invoke-static {p0, p1}, Lkotlin/time/h;->R(J)Z

    move-result p0

    return p0
.end method

.method public static final g0(JLkotlin/time/k;)J
    .locals 2
    .param p2    # Lkotlin/time/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    sget-wide v0, Lkotlin/time/h;->e:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-wide p0, 0x7fffffffffffffffL

    goto :goto_0

    :cond_0
    sget-wide v0, Lkotlin/time/h;->f:J

    cmp-long v0, p0, v0

    if-nez v0, :cond_1

    const-wide/high16 p0, -0x8000000000000000L

    goto :goto_0

    :cond_1
    invoke-static {p0, p1}, Lkotlin/time/h;->N(J)J

    move-result-wide v0

    invoke-static {p0, p1}, Lkotlin/time/h;->L(J)Lkotlin/time/k;

    move-result-object p0

    invoke-static {v0, v1, p0, p2}, Lkotlin/time/m;->b(JLkotlin/time/k;Lkotlin/time/k;)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static final h(JJJ)J
    .locals 2

    invoke-static {p4, p5}, Lkotlin/time/j;->h(J)J

    move-result-wide p0

    invoke-static {p2, p3, p0, p1}, Lkotlin/time/j;->a(JJ)J

    move-result-wide p2

    const-wide v0, -0x431bde82d7aL

    cmp-long v0, v0, p2

    if-gtz v0, :cond_0

    const-wide v0, 0x431bde82d7bL

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    invoke-static {p0, p1}, Lkotlin/time/j;->g(J)J

    move-result-wide p0

    sub-long/2addr p4, p0

    invoke-static {p2, p3}, Lkotlin/time/j;->g(J)J

    move-result-wide p0

    add-long/2addr p0, p4

    invoke-static {p0, p1}, Lkotlin/time/j;->e(J)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    invoke-static {p2, p3}, Lkotlin/time/j;->c(J)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static h0(J)Ljava/lang/String;
    .locals 14
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const-string p0, "0s"

    goto/16 :goto_7

    :cond_0
    sget-wide v2, Lkotlin/time/h;->e:J

    cmp-long v2, p0, v2

    if-nez v2, :cond_1

    const-string p0, "Infinity"

    goto/16 :goto_7

    :cond_1
    sget-wide v2, Lkotlin/time/h;->f:J

    cmp-long v2, p0, v2

    if-nez v2, :cond_2

    const-string p0, "-Infinity"

    goto/16 :goto_7

    :cond_2
    invoke-static {p0, p1}, Lkotlin/time/h;->T(J)Z

    move-result v2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_3

    const/16 v3, 0x2d

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    invoke-static {p0, p1}, Lkotlin/time/h;->v(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lkotlin/time/h;->y(J)J

    move-result-wide v5

    invoke-static {v3, v4}, Lkotlin/time/h;->x(J)I

    move-result v7

    invoke-static {v3, v4}, Lkotlin/time/h;->G(J)I

    move-result v8

    invoke-static {v3, v4}, Lkotlin/time/h;->K(J)I

    move-result v9

    invoke-static {v3, v4}, Lkotlin/time/h;->I(J)I

    move-result v10

    cmp-long v0, v5, v0

    const/4 v1, 0x0

    const/4 v12, 0x1

    if-eqz v0, :cond_4

    move v0, v12

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    if-eqz v7, :cond_5

    move v3, v12

    goto :goto_1

    :cond_5
    move v3, v1

    :goto_1
    if-eqz v8, :cond_6

    move v4, v12

    goto :goto_2

    :cond_6
    move v4, v1

    :goto_2
    if-nez v9, :cond_8

    if-eqz v10, :cond_7

    goto :goto_3

    :cond_7
    move v13, v1

    goto :goto_4

    :cond_8
    :goto_3
    move v13, v12

    :goto_4
    if-eqz v0, :cond_9

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v12

    :cond_9
    const/16 v5, 0x20

    if-nez v3, :cond_a

    if-eqz v0, :cond_c

    if-nez v4, :cond_a

    if-eqz v13, :cond_c

    :cond_a
    add-int/lit8 v6, v1, 0x1

    if-lez v1, :cond_b

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_b
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x68

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v6

    :cond_c
    if-nez v4, :cond_d

    if-eqz v13, :cond_f

    if-nez v3, :cond_d

    if-eqz v0, :cond_f

    :cond_d
    add-int/lit8 v6, v1, 0x1

    if-lez v1, :cond_e

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_e
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x6d

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v1, v6

    :cond_f
    if-eqz v13, :cond_15

    add-int/lit8 v13, v1, 0x1

    if-lez v1, :cond_10

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_10
    if-nez v9, :cond_14

    if-nez v0, :cond_14

    if-nez v3, :cond_14

    if-eqz v4, :cond_11

    goto :goto_5

    :cond_11
    const v0, 0xf4240

    if-lt v10, v0, :cond_12

    div-int v6, v10, v0

    rem-int v7, v10, v0

    const-string v9, "ms"

    const/4 v10, 0x0

    const/4 v8, 0x6

    move-wide v3, p0

    move-object v5, v11

    invoke-static/range {v3 .. v10}, Lkotlin/time/h;->i(JLjava/lang/StringBuilder;IIILjava/lang/String;Z)V

    goto :goto_6

    :cond_12
    const/16 v0, 0x3e8

    if-lt v10, v0, :cond_13

    div-int/lit16 v6, v10, 0x3e8

    rem-int/lit16 v7, v10, 0x3e8

    const-string v9, "us"

    const/4 v10, 0x0

    const/4 v8, 0x3

    move-wide v3, p0

    move-object v5, v11

    invoke-static/range {v3 .. v10}, Lkotlin/time/h;->i(JLjava/lang/StringBuilder;IIILjava/lang/String;Z)V

    goto :goto_6

    :cond_13
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "ns"

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_14
    :goto_5
    const-string v0, "s"

    const/4 v1, 0x0

    const/16 v8, 0x9

    move-wide v3, p0

    move-object v5, v11

    move v6, v9

    move v7, v10

    move-object v9, v0

    move v10, v1

    invoke-static/range {v3 .. v10}, Lkotlin/time/h;->i(JLjava/lang/StringBuilder;IIILjava/lang/String;Z)V

    :goto_6
    move v1, v13

    :cond_15
    if-eqz v2, :cond_16

    if-le v1, v12, :cond_16

    const/16 p0, 0x28

    invoke-virtual {v11, v12, p0}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 p1, 0x29

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_16
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_7
    return-object p0
.end method

.method public static final i(JLjava/lang/StringBuilder;IIILjava/lang/String;Z)V
    .locals 1

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_4

    const/16 p0, 0x2e

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x30

    invoke-static {p0, p5, p1}, Lag/P;->o4(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p3

    const/4 p4, -0x1

    add-int/2addr p3, p4

    if-ltz p3, :cond_2

    :goto_0
    add-int/lit8 p5, p3, -0x1

    invoke-interface {p0, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-eq v0, p1, :cond_0

    move p4, p3

    goto :goto_1

    :cond_0
    if-gez p5, :cond_1

    goto :goto_1

    :cond_1
    move p3, p5

    goto :goto_0

    :cond_2
    :goto_1
    add-int/lit8 p1, p4, 0x1

    const-string p3, "append(...)"

    const/4 p5, 0x0

    const/4 v0, 0x3

    if-nez p7, :cond_3

    if-ge p1, v0, :cond_3

    invoke-virtual {p2, p0, p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    add-int/2addr p4, v0

    div-int/2addr p4, v0

    mul-int/2addr p4, v0

    invoke-virtual {p2, p0, p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    :goto_2
    invoke-virtual {p2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static final i0(JLkotlin/time/k;I)Ljava/lang/String;
    .locals 2
    .param p2    # Lkotlin/time/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p3, :cond_1

    invoke-static {p0, p1, p2}, Lkotlin/time/h;->d0(JLkotlin/time/k;)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0xc

    invoke-static {p3, v1}, LVf/u;->D(II)I

    move-result p3

    invoke-static {p0, p1, p3}, Lkotlin/time/i;->b(DI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lkotlin/time/n;->i(Lkotlin/time/k;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "decimals must be not negative, but was "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static final synthetic j(J)Lkotlin/time/h;
    .locals 1

    new-instance v0, Lkotlin/time/h;

    invoke-direct {v0, p0, p1}, Lkotlin/time/h;-><init>(J)V

    return-object v0
.end method

.method public static synthetic j0(JLkotlin/time/k;IILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lkotlin/time/h;->i0(JLkotlin/time/k;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final k0(JLkotlin/time/k;)J
    .locals 5
    .param p2    # Lkotlin/time/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lkotlin/time/h;->L(J)Lkotlin/time/k;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v1

    if-lez v1, :cond_1

    invoke-static {p0, p1}, Lkotlin/time/h;->S(J)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x1

    invoke-static {v1, v2, p2, v0}, Lkotlin/time/m;->b(JLkotlin/time/k;Lkotlin/time/k;)J

    move-result-wide v1

    invoke-static {p0, p1}, Lkotlin/time/h;->N(J)J

    move-result-wide v3

    invoke-static {p0, p1}, Lkotlin/time/h;->N(J)J

    move-result-wide p0

    rem-long/2addr p0, v1

    sub-long/2addr v3, p0

    invoke-static {v3, v4, v0}, Lkotlin/time/j;->P(JLkotlin/time/k;)J

    move-result-wide p0

    :cond_1
    :goto_0
    return-wide p0
.end method

.method public static final l0(J)J
    .locals 2

    invoke-static {p0, p1}, Lkotlin/time/h;->N(J)J

    move-result-wide v0

    neg-long v0, v0

    long-to-int p0, p0

    and-int/lit8 p0, p0, 0x1

    invoke-static {v0, v1, p0}, Lkotlin/time/j;->b(JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public static m(JJ)I
    .locals 4

    xor-long v0, p0, p2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    long-to-int v0, p0

    and-int/lit8 v0, v0, 0x1

    long-to-int p2, p2

    and-int/lit8 p2, p2, 0x1

    sub-int/2addr v0, p2

    invoke-static {p0, p1}, Lkotlin/time/h;->T(J)Z

    move-result p0

    if-eqz p0, :cond_1

    neg-int v0, v0

    :cond_1
    return v0

    :cond_2
    :goto_0
    invoke-static {p0, p1, p2, p3}, Lkotlin/jvm/internal/M;->u(JJ)I

    move-result p0

    return p0
.end method

.method public static o(J)J
    .locals 0
    .annotation runtime Lnf/o;
        level = .enum Lnf/q;->ERROR:Lnf/q;
        message = "Don\'t call this constructor directly."
    .end annotation

    return-wide p0
.end method

.method public static final q(JJ)D
    .locals 2

    invoke-static {p0, p1}, Lkotlin/time/h;->L(J)Lkotlin/time/k;

    move-result-object v0

    invoke-static {p2, p3}, Lkotlin/time/h;->L(J)Lkotlin/time/k;

    move-result-object v1

    invoke-static {v0, v1}, Ltf/h;->X(Ljava/lang/Comparable;Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Lkotlin/time/k;

    invoke-static {p0, p1, v0}, Lkotlin/time/h;->d0(JLkotlin/time/k;)D

    move-result-wide p0

    invoke-static {p2, p3, v0}, Lkotlin/time/h;->d0(JLkotlin/time/k;)D

    move-result-wide p2

    div-double/2addr p0, p2

    return-wide p0
.end method

.method public static final r(JD)J
    .locals 3

    invoke-static {p2, p3}, LRf/d;->K0(D)I

    move-result v0

    int-to-double v1, v0

    cmpg-double v1, v1, p2

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, v0}, Lkotlin/time/h;->s(JI)J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-static {p0, p1}, Lkotlin/time/h;->L(J)Lkotlin/time/k;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lkotlin/time/h;->d0(JLkotlin/time/k;)D

    move-result-wide p0

    div-double/2addr p0, p2

    invoke-static {p0, p1, v0}, Lkotlin/time/j;->N(DLkotlin/time/k;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final s(JI)J
    .locals 6

    if-nez p2, :cond_2

    invoke-static {p0, p1}, Lkotlin/time/h;->U(J)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-wide p0, Lkotlin/time/h;->e:J

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lkotlin/time/h;->T(J)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-wide p0, Lkotlin/time/h;->f:J

    :goto_0
    return-wide p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Dividing zero duration by zero yields an undefined result."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p0, p1}, Lkotlin/time/h;->R(J)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0, p1}, Lkotlin/time/h;->N(J)J

    move-result-wide p0

    int-to-long v0, p2

    div-long/2addr p0, v0

    invoke-static {p0, p1}, Lkotlin/time/j;->e(J)J

    move-result-wide p0

    return-wide p0

    :cond_3
    invoke-static {p0, p1}, Lkotlin/time/h;->S(J)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p2}, LRf/d;->U(I)I

    move-result p2

    invoke-static {p0, p1, p2}, Lkotlin/time/h;->Y(JI)J

    move-result-wide p0

    return-wide p0

    :cond_4
    invoke-static {p0, p1}, Lkotlin/time/h;->N(J)J

    move-result-wide v0

    int-to-long v2, p2

    div-long/2addr v0, v2

    const-wide v4, -0x431bde82d7aL

    cmp-long p2, v4, v0

    if-gtz p2, :cond_5

    const-wide v4, 0x431bde82d7bL

    cmp-long p2, v0, v4

    if-gez p2, :cond_5

    invoke-static {p0, p1}, Lkotlin/time/h;->N(J)J

    move-result-wide p0

    mul-long v4, v0, v2

    sub-long/2addr p0, v4

    invoke-static {p0, p1}, Lkotlin/time/j;->g(J)J

    move-result-wide p0

    div-long/2addr p0, v2

    invoke-static {v0, v1}, Lkotlin/time/j;->g(J)J

    move-result-wide v0

    add-long/2addr v0, p0

    invoke-static {v0, v1}, Lkotlin/time/j;->e(J)J

    move-result-wide p0

    return-wide p0

    :cond_5
    invoke-static {v0, v1}, Lkotlin/time/j;->c(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static t(JLjava/lang/Object;)Z
    .locals 4

    instance-of v0, p2, Lkotlin/time/h;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p2, Lkotlin/time/h;

    invoke-virtual {p2}, Lkotlin/time/h;->m0()J

    move-result-wide v2

    cmp-long p0, p0, v2

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static final u(JJ)Z
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

.method public static final v(J)J
    .locals 1

    invoke-static {p0, p1}, Lkotlin/time/h;->T(J)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lkotlin/time/h;->l0(J)J

    move-result-wide p0

    :cond_0
    return-wide p0
.end method

.method public static synthetic w()V
    .locals 0
    .annotation build Lnf/f0;
    .end annotation

    return-void
.end method

.method public static final x(J)I
    .locals 2

    invoke-static {p0, p1}, Lkotlin/time/h;->S(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lkotlin/time/h;->z(J)J

    move-result-wide p0

    const/16 v0, 0x18

    int-to-long v0, v0

    rem-long/2addr p0, v0

    long-to-int p0, p0

    :goto_0
    return p0
.end method

.method public static final y(J)J
    .locals 1

    sget-object v0, Lkotlin/time/k;->DAYS:Lkotlin/time/k;

    invoke-static {p0, p1, v0}, Lkotlin/time/h;->g0(JLkotlin/time/k;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final z(J)J
    .locals 1

    sget-object v0, Lkotlin/time/k;->HOURS:Lkotlin/time/k;

    invoke-static {p0, p1, v0}, Lkotlin/time/h;->g0(JLkotlin/time/k;)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lkotlin/time/h;

    invoke-virtual {p1}, Lkotlin/time/h;->m0()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lkotlin/time/h;->k(J)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    iget-wide v0, p0, Lkotlin/time/h;->b:J

    invoke-static {v0, v1, p1}, Lkotlin/time/h;->t(JLjava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Lkotlin/time/h;->b:J

    invoke-static {v0, v1}, Lkotlin/time/h;->O(J)I

    move-result v0

    return v0
.end method

.method public k(J)I
    .locals 2

    iget-wide v0, p0, Lkotlin/time/h;->b:J

    invoke-static {v0, v1, p1, p2}, Lkotlin/time/h;->m(JJ)I

    move-result p1

    return p1
.end method

.method public final synthetic m0()J
    .locals 2

    iget-wide v0, p0, Lkotlin/time/h;->b:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-wide v0, p0, Lkotlin/time/h;->b:J

    invoke-static {v0, v1}, Lkotlin/time/h;->h0(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
