.class public final Ltg/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Ljava/time/Duration;)J
    .locals 4

    sget-object v0, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    invoke-virtual {p0, v0}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result v0

    if-gtz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    sget-object v0, Ljava/time/temporal/ChronoUnit;->MILLIS:Ljava/time/temporal/ChronoUnit;

    invoke-virtual {v0}, Ljava/time/temporal/ChronoUnit;->getDuration()Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result v0

    if-gtz v0, :cond_1

    const-wide/16 v0, 0x1

    return-wide v0

    :cond_1
    invoke-virtual {p0}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v0

    const-wide v2, 0x20c49ba5e353f7L

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    invoke-virtual {p0}, Ljava/time/Duration;->getSeconds()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/time/Duration;->getNano()I

    move-result v0

    const v1, 0x3019d7c0

    if-ge v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    :goto_1
    return-wide v0
.end method

.method public static final b(Ljg/i;Ljava/time/Duration;)Ljg/i;
    .locals 2
    .param p0    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/time/Duration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljg/i<",
            "+TT;>;",
            "Ljava/time/Duration;",
            ")",
            "Ljg/i<",
            "TT;>;"
        }
    .end annotation

    .annotation build Leg/A0;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1}, Ltg/a;->a(Ljava/time/Duration;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Ljg/k;->a0(Ljg/i;J)Ljg/i;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Ljava/time/Duration;Lyf/f;)Ljava/lang/Object;
    .locals 2
    .param p0    # Ljava/time/Duration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/Duration;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0}, Ltg/a;->a(Ljava/time/Duration;)J

    move-result-wide v0

    invoke-static {v0, v1, p1}, Leg/c0;->b(JLyf/f;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lnf/P0;->a:Lnf/P0;

    return-object p0
.end method

.method public static final d(Lpg/c;Ljava/time/Duration;LMf/l;)V
    .locals 2
    .param p0    # Lpg/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/time/Duration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LMf/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lpg/c<",
            "-TR;>;",
            "Ljava/time/Duration;",
            "LMf/l<",
            "-",
            "Lyf/f<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Ltg/a;->a(Ljava/time/Duration;)J

    move-result-wide v0

    invoke-static {p0, v0, v1, p2}, Lpg/b;->a(Lpg/c;JLMf/l;)V

    return-void
.end method

.method public static final e(Ljg/i;Ljava/time/Duration;)Ljg/i;
    .locals 2
    .param p0    # Ljg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/time/Duration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljg/i<",
            "+TT;>;",
            "Ljava/time/Duration;",
            ")",
            "Ljg/i<",
            "TT;>;"
        }
    .end annotation

    .annotation build Leg/A0;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1}, Ltg/a;->a(Ljava/time/Duration;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Ljg/k;->B1(Ljg/i;J)Ljg/i;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Ljava/time/Duration;LMf/p;Lyf/f;)Ljava/lang/Object;
    .locals 2
    .param p0    # Ljava/time/Duration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LMf/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/time/Duration;",
            "LMf/p<",
            "-",
            "Leg/S;",
            "-",
            "Lyf/f<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lyf/f<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0}, Ltg/a;->a(Ljava/time/Duration;)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Leg/u1;->c(JLMf/p;Lyf/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final g(Ljava/time/Duration;LMf/p;Lyf/f;)Ljava/lang/Object;
    .locals 2
    .param p0    # Ljava/time/Duration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # LMf/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/time/Duration;",
            "LMf/p<",
            "-",
            "Leg/S;",
            "-",
            "Lyf/f<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lyf/f<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0}, Ltg/a;->a(Ljava/time/Duration;)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Leg/u1;->e(JLMf/p;Lyf/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
