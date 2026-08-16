.class public final Lkotlin/time/C;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nlongSaturatedMath.kt\nKotlin\n*S Kotlin\n*F\n+ 1 longSaturatedMath.kt\nkotlin/time/LongSaturatedMathKt\n*L\n1#1,81:1\n80#1:82\n80#1:83\n80#1:84\n80#1:85\n80#1:86\n80#1:87\n*S KotlinDebug\n*F\n+ 1 longSaturatedMath.kt\nkotlin/time/LongSaturatedMathKt\n*L\n14#1:82\n17#1:83\n36#1:84\n46#1:85\n53#1:86\n57#1:87\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nlongSaturatedMath.kt\nKotlin\n*S Kotlin\n*F\n+ 1 longSaturatedMath.kt\nkotlin/time/LongSaturatedMathKt\n*L\n1#1,81:1\n80#1:82\n80#1:83\n80#1:84\n80#1:85\n80#1:86\n80#1:87\n*S KotlinDebug\n*F\n+ 1 longSaturatedMath.kt\nkotlin/time/LongSaturatedMathKt\n*L\n14#1:82\n17#1:83\n36#1:84\n46#1:85\n53#1:86\n57#1:87\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(JJJ)J
    .locals 0

    invoke-static {p2, p3}, Lkotlin/time/h;->S(J)Z

    move-result p2

    if-eqz p2, :cond_1

    xor-long p2, p0, p4

    const-wide/16 p4, 0x0

    cmp-long p2, p2, p4

    if-ltz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Summing infinities of different signs"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-wide p0
.end method

.method public static final b(J)J
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-gez p0, :cond_0

    sget-object p0, Lkotlin/time/h;->c:Lkotlin/time/h$a;

    invoke-virtual {p0}, Lkotlin/time/h$a;->J()J

    move-result-wide p0

    goto :goto_0

    :cond_0
    sget-object p0, Lkotlin/time/h;->c:Lkotlin/time/h$a;

    invoke-virtual {p0}, Lkotlin/time/h$a;->o()J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static final c(J)Z
    .locals 2

    const-wide/16 v0, 0x1

    sub-long/2addr p0, v0

    or-long/2addr p0, v0

    const-wide v0, 0x7fffffffffffffffL

    cmp-long p0, p0, v0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final d(JLkotlin/time/k;J)J
    .locals 9
    .param p2    # Lkotlin/time/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, p4, p2}, Lkotlin/time/h;->g0(JLkotlin/time/k;)J

    move-result-wide v5

    const-wide/16 v0, 0x1

    sub-long v2, p0, v0

    or-long/2addr v2, v0

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v2, v2, v7

    if-nez v2, :cond_0

    move-wide v1, p0

    move-wide v3, p3

    invoke-static/range {v1 .. v6}, Lkotlin/time/C;->a(JJJ)J

    move-result-wide p0

    return-wide p0

    :cond_0
    sub-long v2, v5, v0

    or-long/2addr v0, v2

    cmp-long v0, v0, v7

    if-nez v0, :cond_1

    invoke-static {p0, p1, p2, p3, p4}, Lkotlin/time/C;->e(JLkotlin/time/k;J)J

    move-result-wide p0

    return-wide p0

    :cond_1
    add-long p2, p0, v5

    xor-long v0, p0, p2

    xor-long v2, v5, p2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p4, v0, v2

    if-gez p4, :cond_3

    cmp-long p0, p0, v2

    if-gez p0, :cond_2

    const-wide/high16 v7, -0x8000000000000000L

    :cond_2
    return-wide v7

    :cond_3
    return-wide p2
.end method

.method public static final e(JLkotlin/time/k;J)J
    .locals 8

    const/4 v0, 0x2

    invoke-static {p3, p4, v0}, Lkotlin/time/h;->s(JI)J

    move-result-wide v0

    invoke-static {v0, v1, p2}, Lkotlin/time/h;->g0(JLkotlin/time/k;)J

    move-result-wide v2

    const-wide/16 v4, 0x1

    sub-long v6, v2, v4

    or-long/2addr v4, v6

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    return-wide v2

    :cond_0
    invoke-static {p0, p1, p2, v0, v1}, Lkotlin/time/C;->d(JLkotlin/time/k;J)J

    move-result-wide p0

    invoke-static {p3, p4, v0, v1}, Lkotlin/time/h;->V(JJ)J

    move-result-wide p3

    invoke-static {p0, p1, p2, p3, p4}, Lkotlin/time/C;->d(JLkotlin/time/k;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final f(JJLkotlin/time/k;)J
    .locals 4
    .param p4    # Lkotlin/time/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "unit"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x1

    sub-long v2, p2, v0

    or-long/2addr v0, v2

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-static {p2, p3}, Lkotlin/time/C;->b(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/h;->l0(J)J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lkotlin/time/C;->g(JJLkotlin/time/k;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final g(JJLkotlin/time/k;)J
    .locals 7

    sub-long v0, p0, p2

    xor-long v2, v0, p0

    xor-long v4, v0, p2

    not-long v4, v4

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    sget-object v2, Lkotlin/time/k;->MILLISECONDS:Lkotlin/time/k;

    invoke-virtual {p4, v2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-gez v3, :cond_0

    const-wide/16 v0, 0x1

    invoke-static {v0, v1, v2, p4}, Lkotlin/time/m;->b(JLkotlin/time/k;Lkotlin/time/k;)J

    move-result-wide v0

    div-long v3, p0, v0

    div-long v5, p2, v0

    sub-long/2addr v3, v5

    rem-long/2addr p0, v0

    rem-long/2addr p2, v0

    sub-long/2addr p0, p2

    sget-object p2, Lkotlin/time/h;->c:Lkotlin/time/h$a;

    invoke-static {v3, v4, v2}, Lkotlin/time/j;->P(JLkotlin/time/k;)J

    move-result-wide p2

    invoke-static {p0, p1, p4}, Lkotlin/time/j;->P(JLkotlin/time/k;)J

    move-result-wide p0

    invoke-static {p2, p3, p0, p1}, Lkotlin/time/h;->W(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-static {v0, v1}, Lkotlin/time/C;->b(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/h;->l0(J)J

    move-result-wide p0

    return-wide p0

    :cond_1
    invoke-static {v0, v1, p4}, Lkotlin/time/j;->P(JLkotlin/time/k;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final h(JJLkotlin/time/k;)J
    .locals 6
    .param p4    # Lkotlin/time/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "unit"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x1

    sub-long v2, p2, v0

    or-long/2addr v2, v0

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    cmp-long p0, p0, p2

    if-nez p0, :cond_0

    sget-object p0, Lkotlin/time/h;->c:Lkotlin/time/h$a;

    invoke-virtual {p0}, Lkotlin/time/h$a;->W()J

    move-result-wide p0

    return-wide p0

    :cond_0
    invoke-static {p2, p3}, Lkotlin/time/C;->b(J)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/h;->l0(J)J

    move-result-wide p0

    return-wide p0

    :cond_1
    sub-long v2, p0, v0

    or-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    invoke-static {p0, p1}, Lkotlin/time/C;->b(J)J

    move-result-wide p0

    return-wide p0

    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Lkotlin/time/C;->g(JJLkotlin/time/k;)J

    move-result-wide p0

    return-wide p0
.end method
