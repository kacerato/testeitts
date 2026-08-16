.class public final Leg/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/DelayKt\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,162:1\n314#2,11:163\n314#2,11:174\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/DelayKt\n*L\n106#1:163,11\n127#1:174,11\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/DelayKt\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,162:1\n314#2,11:163\n314#2,11:174\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/DelayKt\n*L\n106#1:163,11\n127#1:174,11\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Lyf/f;)Ljava/lang/Object;
    .locals 4
    .param p0    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyf/f<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of v0, p0, Leg/c0$a;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Leg/c0$a;

    iget v1, v0, Leg/c0$a;->c:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Leg/c0$a;->c:I

    goto :goto_0

    :cond_0
    new-instance v0, Leg/c0$a;

    invoke-direct {v0, p0}, Leg/c0$a;-><init>(Lyf/f;)V

    :goto_0
    iget-object p0, v0, Leg/c0$a;->b:Ljava/lang/Object;

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Leg/c0$a;->c:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v3, :cond_1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p0}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lnf/j0;->n(Ljava/lang/Object;)V

    iput v3, v0, Leg/c0$a;->c:I

    new-instance p0, Leg/q;

    invoke-static {v0}, LAf/c;->e(Lyf/f;)Lyf/f;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Leg/q;-><init>(Lyf/f;I)V

    invoke-virtual {p0}, Leg/q;->O()V

    invoke-virtual {p0}, Leg/q;->D()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v2

    if-ne p0, v2, :cond_3

    invoke-static {v0}, LBf/h;->c(Lyf/f;)V

    :cond_3
    if-ne p0, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public static final b(JLyf/f;)Ljava/lang/Object;
    .locals 3
    .param p2    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    sget-object p0, Lnf/P0;->a:Lnf/P0;

    return-object p0

    :cond_0
    new-instance v0, Leg/q;

    invoke-static {p2}, LAf/c;->e(Lyf/f;)Lyf/f;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Leg/q;-><init>(Lyf/f;I)V

    invoke-virtual {v0}, Leg/q;->O()V

    const-wide v1, 0x7fffffffffffffffL

    cmp-long v1, p0, v1

    if-gez v1, :cond_1

    invoke-interface {v0}, Lyf/f;->getContext()Lyf/j;

    move-result-object v1

    invoke-static {v1}, Leg/c0;->d(Lyf/j;)Leg/b0;

    move-result-object v1

    invoke-interface {v1, p0, p1, v0}, Leg/b0;->o(JLeg/p;)V

    :cond_1
    invoke-virtual {v0}, Leg/q;->D()Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_2

    invoke-static {p2}, LBf/h;->c(Lyf/f;)V

    :cond_2
    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_3

    return-object p0

    :cond_3
    sget-object p0, Lnf/P0;->a:Lnf/P0;

    return-object p0
.end method

.method public static final c(JLyf/f;)Ljava/lang/Object;
    .locals 0
    .param p2    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    invoke-static {p0, p1}, Leg/c0;->e(J)J

    move-result-wide p0

    invoke-static {p0, p1, p2}, Leg/c0;->b(JLyf/f;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object p1

    if-ne p0, p1, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Lnf/P0;->a:Lnf/P0;

    return-object p0
.end method

.method public static final d(Lyf/j;)Leg/b0;
    .locals 1
    .param p0    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lyf/g;->J8:Lyf/g$b;

    invoke-interface {p0, v0}, Lyf/j;->get(Lyf/j$c;)Lyf/j$b;

    move-result-object p0

    instance-of v0, p0, Leg/b0;

    if-eqz v0, :cond_0

    check-cast p0, Leg/b0;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    invoke-static {}, Leg/Y;->a()Leg/b0;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static final e(J)J
    .locals 2

    sget-object v0, Lkotlin/time/h;->c:Lkotlin/time/h$a;

    invoke-virtual {v0}, Lkotlin/time/h$a;->W()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lkotlin/time/h;->m(JJ)I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p0, p1}, Lkotlin/time/h;->B(J)J

    move-result-wide p0

    const-wide/16 v0, 0x1

    invoke-static {p0, p1, v0, v1}, LVf/u;->x(JJ)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x0

    :goto_0
    return-wide p0
.end method
