.class public final Lgg/F;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTickerChannels.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TickerChannels.kt\nkotlinx/coroutines/channels/TickerChannelsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,112:1\n1#2:113\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nTickerChannels.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TickerChannels.kt\nkotlinx/coroutines/channels/TickerChannelsKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,112:1\n1#2:113\n*E\n"
    }
.end annotation


# direct methods
.method public static final synthetic a(JJLgg/E;Lyf/f;)Ljava/lang/Object;
    .locals 0

    invoke-static/range {p0 .. p5}, Lgg/F;->c(JJLgg/E;Lyf/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(JJLgg/E;Lyf/f;)Ljava/lang/Object;
    .locals 0

    invoke-static/range {p0 .. p5}, Lgg/F;->d(JJLgg/E;Lyf/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final c(JJLgg/E;Lyf/f;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lgg/E<",
            "-",
            "Lnf/P0;",
            ">;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Lgg/F$a;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lgg/F$a;

    iget v1, v0, Lgg/F$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lgg/F$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lgg/F$a;

    invoke-direct {v0, p5}, Lgg/F$a;-><init>(Lyf/f;)V

    :goto_0
    iget-object p5, v0, Lgg/F$a;->d:Ljava/lang/Object;

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lgg/F$a;->e:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v5, :cond_4

    if-eq v2, v4, :cond_3

    if-ne v2, v3, :cond_2

    iget-wide p0, v0, Lgg/F$a;->b:J

    iget-object p2, v0, Lgg/F$a;->c:Ljava/lang/Object;

    check-cast p2, Lgg/E;

    invoke-static {p5}, Lnf/j0;->n(Ljava/lang/Object;)V

    :cond_1
    move-object p4, p2

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iget-wide p0, v0, Lgg/F$a;->b:J

    iget-object p2, v0, Lgg/F$a;->c:Ljava/lang/Object;

    check-cast p2, Lgg/E;

    invoke-static {p5}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-wide p0, v0, Lgg/F$a;->b:J

    iget-object p2, v0, Lgg/F$a;->c:Ljava/lang/Object;

    move-object p4, p2

    check-cast p4, Lgg/E;

    invoke-static {p5}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {p5}, Lnf/j0;->n(Ljava/lang/Object;)V

    iput-object p4, v0, Lgg/F$a;->c:Ljava/lang/Object;

    iput-wide p0, v0, Lgg/F$a;->b:J

    iput v5, v0, Lgg/F$a;->e:I

    invoke-static {p2, p3, v0}, Leg/c0;->b(JLyf/f;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    return-object v1

    :cond_6
    :goto_1
    sget-object p2, Lnf/P0;->a:Lnf/P0;

    iput-object p4, v0, Lgg/F$a;->c:Ljava/lang/Object;

    iput-wide p0, v0, Lgg/F$a;->b:J

    iput v4, v0, Lgg/F$a;->e:I

    invoke-interface {p4, p2, v0}, Lgg/E;->M(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_7

    return-object v1

    :cond_7
    move-object p2, p4

    :goto_2
    iput-object p2, v0, Lgg/F$a;->c:Ljava/lang/Object;

    iput-wide p0, v0, Lgg/F$a;->b:J

    iput v3, v0, Lgg/F$a;->e:I

    invoke-static {p0, p1, v0}, Leg/c0;->b(JLyf/f;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_1

    return-object v1
.end method

.method public static final d(JJLgg/E;Lyf/f;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lgg/E<",
            "-",
            "Lnf/P0;",
            ">;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p5

    instance-of v1, v0, Lgg/F$b;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lgg/F$b;

    iget v2, v1, Lgg/F$b;->f:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lgg/F$b;->f:I

    goto :goto_0

    :cond_0
    new-instance v1, Lgg/F$b;

    invoke-direct {v1, v0}, Lgg/F$b;-><init>(Lyf/f;)V

    :goto_0
    iget-object v0, v1, Lgg/F$b;->e:Ljava/lang/Object;

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v2

    iget v3, v1, Lgg/F$b;->f:I

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v3, :cond_7

    if-eq v3, v7, :cond_6

    if-eq v3, v6, :cond_5

    if-eq v3, v5, :cond_3

    if-ne v3, v4, :cond_2

    iget-wide v7, v1, Lgg/F$b;->c:J

    iget-wide v9, v1, Lgg/F$b;->b:J

    iget-object v3, v1, Lgg/F$b;->d:Ljava/lang/Object;

    check-cast v3, Lgg/E;

    invoke-static {v0}, Lnf/j0;->n(Ljava/lang/Object;)V

    move v11, v4

    move v0, v5

    :cond_1
    move-wide/from16 v16, v7

    move-wide v7, v9

    move-wide/from16 v9, v16

    goto/16 :goto_7

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-wide v7, v1, Lgg/F$b;->c:J

    iget-wide v9, v1, Lgg/F$b;->b:J

    iget-object v3, v1, Lgg/F$b;->d:Ljava/lang/Object;

    check-cast v3, Lgg/E;

    invoke-static {v0}, Lnf/j0;->n(Ljava/lang/Object;)V

    move v0, v5

    :cond_4
    move-wide/from16 v16, v7

    move-wide v7, v9

    move-wide/from16 v9, v16

    goto/16 :goto_6

    :cond_5
    iget-wide v7, v1, Lgg/F$b;->c:J

    iget-wide v9, v1, Lgg/F$b;->b:J

    iget-object v3, v1, Lgg/F$b;->d:Ljava/lang/Object;

    check-cast v3, Lgg/E;

    invoke-static {v0}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    iget-wide v7, v1, Lgg/F$b;->c:J

    iget-wide v9, v1, Lgg/F$b;->b:J

    iget-object v3, v1, Lgg/F$b;->d:Ljava/lang/Object;

    check-cast v3, Lgg/E;

    invoke-static {v0}, Lnf/j0;->n(Ljava/lang/Object;)V

    move-object v0, v3

    move-wide v10, v9

    goto :goto_2

    :cond_7
    invoke-static {v0}, Lnf/j0;->n(Ljava/lang/Object;)V

    invoke-static {}, Leg/c;->b()Leg/b;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Leg/b;->b()J

    move-result-wide v8

    goto :goto_1

    :cond_8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    :goto_1
    invoke-static/range {p2 .. p3}, Leg/u0;->d(J)J

    move-result-wide v10

    add-long/2addr v8, v10

    move-object/from16 v0, p4

    iput-object v0, v1, Lgg/F$b;->d:Ljava/lang/Object;

    move-wide/from16 v10, p0

    iput-wide v10, v1, Lgg/F$b;->b:J

    iput-wide v8, v1, Lgg/F$b;->c:J

    iput v7, v1, Lgg/F$b;->f:I

    move-wide/from16 v12, p2

    invoke-static {v12, v13, v1}, Leg/c0;->b(JLyf/f;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_9

    return-object v2

    :cond_9
    move-wide v7, v8

    :goto_2
    invoke-static {v10, v11}, Leg/u0;->d(J)J

    move-result-wide v9

    :goto_3
    add-long/2addr v7, v9

    sget-object v3, Lnf/P0;->a:Lnf/P0;

    iput-object v0, v1, Lgg/F$b;->d:Ljava/lang/Object;

    iput-wide v7, v1, Lgg/F$b;->b:J

    iput-wide v9, v1, Lgg/F$b;->c:J

    iput v6, v1, Lgg/F$b;->f:I

    invoke-interface {v0, v3, v1}, Lgg/E;->M(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_a

    return-object v2

    :cond_a
    move-object v3, v0

    move-wide/from16 v16, v7

    move-wide v7, v9

    move-wide/from16 v9, v16

    :goto_4
    invoke-static {}, Leg/c;->b()Leg/b;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Leg/b;->b()J

    move-result-wide v11

    goto :goto_5

    :cond_b
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    :goto_5
    sub-long v13, v9, v11

    const-wide/16 v4, 0x0

    invoke-static {v13, v14, v4, v5}, LVf/u;->x(JJ)J

    move-result-wide v13

    cmp-long v15, v13, v4

    if-nez v15, :cond_c

    cmp-long v4, v7, v4

    if-eqz v4, :cond_c

    sub-long v4, v11, v9

    rem-long/2addr v4, v7

    sub-long v4, v7, v4

    add-long v9, v11, v4

    invoke-static {v4, v5}, Leg/u0;->c(J)J

    move-result-wide v4

    iput-object v3, v1, Lgg/F$b;->d:Ljava/lang/Object;

    iput-wide v9, v1, Lgg/F$b;->b:J

    iput-wide v7, v1, Lgg/F$b;->c:J

    const/4 v0, 0x3

    iput v0, v1, Lgg/F$b;->f:I

    invoke-static {v4, v5, v1}, Leg/c0;->b(JLyf/f;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_4

    return-object v2

    :goto_6
    move v5, v0

    move-object v0, v3

    const/4 v4, 0x4

    goto :goto_3

    :cond_c
    const/4 v0, 0x3

    invoke-static {v13, v14}, Leg/u0;->c(J)J

    move-result-wide v4

    iput-object v3, v1, Lgg/F$b;->d:Ljava/lang/Object;

    iput-wide v9, v1, Lgg/F$b;->b:J

    iput-wide v7, v1, Lgg/F$b;->c:J

    const/4 v11, 0x4

    iput v11, v1, Lgg/F$b;->f:I

    invoke-static {v4, v5, v1}, Leg/c0;->b(JLyf/f;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v2, :cond_1

    return-object v2

    :goto_7
    move v5, v0

    move-object v0, v3

    move v4, v11

    goto :goto_3
.end method

.method public static final e(JJLyf/j;Lgg/G;)Lgg/D;
    .locals 9
    .param p4    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lgg/G;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lyf/j;",
            "Lgg/G;",
            ")",
            "Lgg/D<",
            "Lnf/P0;",
            ">;"
        }
    .end annotation

    .annotation build Leg/a1;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    const-string v3, " ms"

    if-ltz v2, :cond_1

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    sget-object v0, Leg/B0;->b:Leg/B0;

    invoke-static {}, Leg/j0;->g()Leg/M;

    move-result-object v1

    invoke-virtual {v1, p4}, Lyf/a;->plus(Lyf/j;)Lyf/j;

    move-result-object p4

    new-instance v8, Lgg/F$c;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p5

    move-wide v3, p0

    move-wide v5, p2

    invoke-direct/range {v1 .. v7}, Lgg/F$c;-><init>(Lgg/G;JJLyf/f;)V

    const/4 p0, 0x0

    invoke-static {v0, p4, p0, v8}, Lgg/z;->c(Leg/S;Lyf/j;ILMf/p;)Lgg/D;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Expected non-negative initial delay, but has "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Expected non-negative delay, but has "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic f(JJLyf/j;Lgg/G;ILjava/lang/Object;)Lgg/D;
    .locals 0

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    move-wide p2, p0

    :cond_0
    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_1

    sget-object p4, Lyf/l;->b:Lyf/l;

    :cond_1
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_2

    sget-object p5, Lgg/G;->FIXED_PERIOD:Lgg/G;

    :cond_2
    invoke-static/range {p0 .. p5}, Lgg/F;->e(JJLyf/j;Lgg/G;)Lgg/D;

    move-result-object p0

    return-object p0
.end method
