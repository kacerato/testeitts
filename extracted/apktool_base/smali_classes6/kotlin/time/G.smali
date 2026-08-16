.class public final Lkotlin/time/G;
.super Lkotlin/time/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimeSources.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TimeSources.kt\nkotlin/time/TestTimeSource\n+ 2 longSaturatedMath.kt\nkotlin/time/LongSaturatedMathKt\n*L\n1#1,210:1\n80#2:211\n80#2:212\n*S KotlinDebug\n*F\n+ 1 TimeSources.kt\nkotlin/time/TestTimeSource\n*L\n184#1:211\n191#1:212\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nTimeSources.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TimeSources.kt\nkotlin/time/TestTimeSource\n+ 2 longSaturatedMath.kt\nkotlin/time/LongSaturatedMathKt\n*L\n1#1,210:1\n80#2:211\n80#2:212\n*S KotlinDebug\n*F\n+ 1 TimeSources.kt\nkotlin/time/TestTimeSource\n*L\n184#1:211\n191#1:212\n*E\n"
    }
.end annotation

.annotation build Lnf/T0;
    markerClass = {
        Lkotlin/time/o;
    }
.end annotation

.annotation build Lnf/l0;
    version = "1.9"
.end annotation


# instance fields
.field public d:J


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lkotlin/time/k;->NANOSECONDS:Lkotlin/time/k;

    invoke-direct {p0, v0}, Lkotlin/time/c;-><init>(Lkotlin/time/k;)V

    invoke-virtual {p0}, Lkotlin/time/c;->a()Lkotlin/time/g;

    return-void
.end method


# virtual methods
.method public g()J
    .locals 2

    iget-wide v0, p0, Lkotlin/time/G;->d:J

    return-wide v0
.end method

.method public final i(J)V
    .locals 4

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TestTimeSource will overflow if its reading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lkotlin/time/G;->d:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lkotlin/time/c;->e()Lkotlin/time/k;

    move-result-object v2

    invoke-static {v2}, Lkotlin/time/n;->i(Lkotlin/time/k;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is advanced by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lkotlin/time/h;->h0(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j(J)V
    .locals 8

    invoke-virtual {p0}, Lkotlin/time/c;->e()Lkotlin/time/k;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lkotlin/time/h;->g0(JLkotlin/time/k;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    or-long/2addr v4, v2

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    const/4 v0, 0x2

    invoke-static {p1, p2, v0}, Lkotlin/time/h;->s(JI)J

    move-result-wide v0

    invoke-virtual {p0}, Lkotlin/time/c;->e()Lkotlin/time/k;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lkotlin/time/h;->g0(JLkotlin/time/k;)J

    move-result-wide v4

    sub-long/2addr v4, v2

    or-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-nez v2, :cond_0

    invoke-virtual {p0, p1, p2}, Lkotlin/time/G;->i(J)V

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lkotlin/time/G;->d:J

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lkotlin/time/G;->j(J)V

    invoke-static {p1, p2, v0, v1}, Lkotlin/time/h;->V(JJ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lkotlin/time/G;->j(J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iput-wide v2, p0, Lkotlin/time/G;->d:J

    throw p1

    :cond_1
    iget-wide v2, p0, Lkotlin/time/G;->d:J

    add-long v4, v2, v0

    xor-long/2addr v0, v2

    const-wide/16 v6, 0x0

    cmp-long v0, v0, v6

    if-ltz v0, :cond_2

    xor-long v0, v2, v4

    cmp-long v0, v0, v6

    if-gez v0, :cond_2

    invoke-virtual {p0, p1, p2}, Lkotlin/time/G;->i(J)V

    :cond_2
    iput-wide v4, p0, Lkotlin/time/G;->d:J

    :goto_0
    return-void
.end method
