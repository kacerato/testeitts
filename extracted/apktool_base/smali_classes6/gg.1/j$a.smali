.class public final Lgg/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgg/n;
.implements Leg/y1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgg/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lgg/n<",
        "TE;>;",
        "Leg/y1;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBufferedChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator\n+ 2 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 4 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$receiveImpl$1\n+ 5 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,3055:1\n886#2,52:3056\n964#2,8:3112\n858#2:3120\n882#2,33:3121\n974#2:3154\n916#2,14:3155\n935#2,3:3170\n979#2,6:3173\n332#3,4:3108\n336#3,8:3179\n882#4:3169\n61#5,2:3187\n61#5,2:3190\n1#6:3189\n*S KotlinDebug\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator\n*L\n1590#1:3056,52\n1627#1:3112,8\n1627#1:3120\n1627#1:3121,33\n1627#1:3154\n1627#1:3155,14\n1627#1:3170,3\n1627#1:3173,6\n1625#1:3108,4\n1625#1:3179,8\n1627#1:3169\n1663#1:3187,2\n1708#1:3190,2\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nBufferedChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator\n+ 2 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 4 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$receiveImpl$1\n+ 5 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,3055:1\n886#2,52:3056\n964#2,8:3112\n858#2:3120\n882#2,33:3121\n974#2:3154\n916#2,14:3155\n935#2,3:3170\n979#2,6:3173\n332#3,4:3108\n336#3,8:3179\n882#4:3169\n61#5,2:3187\n61#5,2:3190\n1#6:3189\n*S KotlinDebug\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/BufferedChannel$BufferedChannelIterator\n*L\n1590#1:3056,52\n1627#1:3112,8\n1627#1:3120\n1627#1:3121,33\n1627#1:3154\n1627#1:3155,14\n1627#1:3170,3\n1627#1:3173,6\n1625#1:3108,4\n1625#1:3179,8\n1627#1:3169\n1663#1:3187,2\n1708#1:3190,2\n*E\n"
    }
.end annotation


# instance fields
.field public b:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Leg/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/q<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final synthetic d:Lgg/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgg/j<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lgg/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lgg/j$a;->d:Lgg/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lgg/k;->m()Lmg/T;

    move-result-object p1

    iput-object p1, p0, Lgg/j$a;->b:Ljava/lang/Object;

    return-void
.end method

.method public static final synthetic c(Lgg/j$a;Lgg/q;IJLyf/f;)Ljava/lang/Object;
    .locals 0

    invoke-virtual/range {p0 .. p5}, Lgg/j$a;->g(Lgg/q;IJLyf/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(Lgg/j$a;)V
    .locals 0

    invoke-virtual {p0}, Lgg/j$a;->i()V

    return-void
.end method

.method public static final synthetic e(Lgg/j$a;Leg/q;)V
    .locals 0

    iput-object p1, p0, Lgg/j$a;->c:Leg/q;

    return-void
.end method

.method public static final synthetic f(Lgg/j$a;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lgg/j$a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lyf/f;)Ljava/lang/Object;
    .locals 13
    .param p1    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyf/f<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v6, p0, Lgg/j$a;->d:Lgg/j;

    invoke-static {}, Lgg/j;->f()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgg/q;

    :goto_0
    invoke-virtual {v6}, Lgg/j;->D()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lgg/j$a;->h()Z

    move-result p1

    invoke-static {p1}, LBf/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    :cond_0
    invoke-static {}, Lgg/j;->g()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide v10

    sget v1, Lgg/k;->b:I

    int-to-long v2, v1

    div-long v2, v10, v2

    int-to-long v4, v1

    rem-long v4, v10, v4

    long-to-int v9, v4

    iget-wide v4, v0, Lmg/P;->d:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    invoke-static {v6, v2, v3, v0}, Lgg/j;->c(Lgg/j;JLgg/q;)Lgg/q;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v8, v1

    goto :goto_1

    :cond_2
    move-object v8, v0

    :goto_1
    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, v8

    move v2, v9

    move-wide v3, v10

    invoke-static/range {v0 .. v5}, Lgg/j;->N(Lgg/j;Lgg/q;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lgg/k;->r()Lmg/T;

    move-result-object v1

    if-eq v0, v1, :cond_6

    invoke-static {}, Lgg/k;->h()Lmg/T;

    move-result-object v1

    if-ne v0, v1, :cond_4

    invoke-virtual {v6}, Lgg/j;->o0()J

    move-result-wide v0

    cmp-long v0, v10, v0

    if-gez v0, :cond_3

    invoke-virtual {v8}, Lmg/g;->b()V

    :cond_3
    move-object v0, v8

    goto :goto_0

    :cond_4
    invoke-static {}, Lgg/k;->s()Lmg/T;

    move-result-object v1

    if-ne v0, v1, :cond_5

    move-object v7, p0

    move-object v12, p1

    invoke-virtual/range {v7 .. v12}, Lgg/j$a;->g(Lgg/q;IJLyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_5
    invoke-virtual {v8}, Lmg/g;->b()V

    iput-object v0, p0, Lgg/j$a;->b:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-static {p1}, LBf/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_2
    return-object p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "unreachable"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic b(Lyf/f;)Ljava/lang/Object;
    .locals 0
    .annotation build LLf/j;
        name = "next"
    .end annotation

    .annotation runtime Lnf/o;
        level = .enum Lnf/q;->HIDDEN:Lnf/q;
        message = "Since 1.3.0, binary compatibility with versions <= 1.2.x"
    .end annotation

    invoke-static {p0, p1}, Lgg/n$a;->a(Lgg/n;Lyf/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final g(Lgg/q;IJLyf/f;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgg/q<",
            "TE;>;IJ",
            "Lyf/f<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v6, p0, Lgg/j$a;->d:Lgg/j;

    invoke-static {p5}, LAf/c;->e(Lyf/f;)Lyf/f;

    move-result-object v0

    invoke-static {v0}, Leg/s;->b(Lyf/f;)Leg/q;

    move-result-object v7

    :try_start_0
    invoke-static {p0, v7}, Lgg/j$a;->e(Lgg/j$a;Leg/q;)V

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lgg/j;->N(Lgg/j;Lgg/q;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lgg/k;->r()Lmg/T;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {v6, p0, p1, p2}, Lgg/j;->w(Lgg/j;Leg/y1;Lgg/q;I)V

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :cond_0
    invoke-static {}, Lgg/k;->h()Lmg/T;

    move-result-object p2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-ne v0, p2, :cond_a

    invoke-virtual {v6}, Lgg/j;->o0()J

    move-result-wide v0

    cmp-long p2, p3, v0

    if-gez p2, :cond_1

    invoke-virtual {p1}, Lmg/g;->b()V

    :cond_1
    invoke-static {}, Lgg/j;->f()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgg/q;

    :cond_2
    :goto_0
    invoke-virtual {v6}, Lgg/j;->D()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {p0}, Lgg/j$a;->d(Lgg/j$a;)V

    goto/16 :goto_2

    :cond_3
    invoke-static {}, Lgg/j;->g()Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->getAndIncrement(Ljava/lang/Object;)J

    move-result-wide p2

    sget p4, Lgg/k;->b:I

    int-to-long v0, p4

    div-long v0, p2, v0

    int-to-long v2, p4

    rem-long v2, p2, v2

    long-to-int p4, v2

    iget-wide v2, p1, Lmg/P;->d:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_5

    invoke-static {v6, v0, v1, p1}, Lgg/j;->c(Lgg/j;JLgg/q;)Lgg/q;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    move-object p1, v0

    :cond_5
    move-object v0, v6

    move-object v1, p1

    move v2, p4

    move-wide v3, p2

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lgg/j;->N(Lgg/j;Lgg/q;IJLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Lgg/k;->r()Lmg/T;

    move-result-object v1

    if-ne v0, v1, :cond_6

    invoke-static {v6, p0, p1, p4}, Lgg/j;->w(Lgg/j;Leg/y1;Lgg/q;I)V

    goto :goto_2

    :cond_6
    invoke-static {}, Lgg/k;->h()Lmg/T;

    move-result-object p4

    if-ne v0, p4, :cond_7

    invoke-virtual {v6}, Lgg/j;->o0()J

    move-result-wide v0

    cmp-long p2, p2, v0

    if-gez p2, :cond_2

    invoke-virtual {p1}, Lmg/g;->b()V

    goto :goto_0

    :cond_7
    invoke-static {}, Lgg/k;->s()Lmg/T;

    move-result-object p2

    if-eq v0, p2, :cond_9

    invoke-virtual {p1}, Lmg/g;->b()V

    invoke-static {p0, v0}, Lgg/j$a;->f(Lgg/j$a;Ljava/lang/Object;)V

    invoke-static {p0, v9}, Lgg/j$a;->e(Lgg/j$a;Leg/q;)V

    invoke-static {v8}, LBf/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object p2, v6, Lgg/j;->c:LMf/l;

    if-eqz p2, :cond_8

    invoke-virtual {v7}, Leg/q;->getContext()Lyf/j;

    move-result-object p3

    invoke-static {p2, v0, p3}, Lmg/J;->a(LMf/l;Ljava/lang/Object;Lyf/j;)LMf/l;

    move-result-object v9

    :cond_8
    :goto_1
    invoke-virtual {v7, p1, v9}, Leg/q;->o(Ljava/lang/Object;LMf/l;)V

    goto :goto_2

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "unexpected"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    invoke-virtual {p1}, Lmg/g;->b()V

    invoke-static {p0, v0}, Lgg/j$a;->f(Lgg/j$a;Ljava/lang/Object;)V

    invoke-static {p0, v9}, Lgg/j$a;->e(Lgg/j$a;Leg/q;)V

    invoke-static {v8}, LBf/b;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object p2, v6, Lgg/j;->c:LMf/l;

    if-eqz p2, :cond_8

    invoke-virtual {v7}, Leg/q;->getContext()Lyf/j;

    move-result-object p3

    invoke-static {p2, v0, p3}, Lmg/J;->a(LMf/l;Ljava/lang/Object;Lyf/j;)LMf/l;

    move-result-object v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_2
    invoke-virtual {v7}, Leg/q;->D()Ljava/lang/Object;

    move-result-object p1

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_b

    invoke-static {p5}, LBf/h;->c(Lyf/f;)V

    :cond_b
    return-object p1

    :goto_3
    invoke-virtual {v7}, Leg/q;->T()V

    throw p1
.end method

.method public final h()Z
    .locals 1

    invoke-static {}, Lgg/k;->z()Lmg/T;

    move-result-object v0

    iput-object v0, p0, Lgg/j$a;->b:Ljava/lang/Object;

    iget-object v0, p0, Lgg/j$a;->d:Lgg/j;

    invoke-virtual {v0}, Lgg/j;->f0()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {v0}, Lmg/S;->o(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method public final i()V
    .locals 3

    iget-object v0, p0, Lgg/j$a;->c:Leg/q;

    invoke-static {v0}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lgg/j$a;->c:Leg/q;

    invoke-static {}, Lgg/k;->z()Lmg/T;

    move-result-object v1

    iput-object v1, p0, Lgg/j$a;->b:Ljava/lang/Object;

    iget-object v1, p0, Lgg/j$a;->d:Lgg/j;

    invoke-virtual {v1}, Lgg/j;->f0()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lnf/i0;->c:Lnf/i0$a;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1}, Lnf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lyf/f;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v2, Lnf/i0;->c:Lnf/i0$a;

    invoke-static {v1}, Lnf/j0;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lnf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lyf/f;->resumeWith(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final j(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    iget-object v0, p0, Lgg/j$a;->c:Leg/q;

    invoke-static {v0}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lgg/j$a;->c:Leg/q;

    iput-object p1, p0, Lgg/j$a;->b:Ljava/lang/Object;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, p0, Lgg/j$a;->d:Lgg/j;

    iget-object v3, v3, Lgg/j;->c:LMf/l;

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Leg/q;->getContext()Lyf/j;

    move-result-object v1

    invoke-static {v3, p1, v1}, Lmg/J;->a(LMf/l;Ljava/lang/Object;Lyf/j;)LMf/l;

    move-result-object v1

    :cond_0
    invoke-static {v0, v2, v1}, Lgg/k;->u(Leg/p;Ljava/lang/Object;LMf/l;)Z

    move-result p1

    return p1
.end method

.method public final k()V
    .locals 3

    iget-object v0, p0, Lgg/j$a;->c:Leg/q;

    invoke-static {v0}, Lkotlin/jvm/internal/M;->m(Ljava/lang/Object;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lgg/j$a;->c:Leg/q;

    invoke-static {}, Lgg/k;->z()Lmg/T;

    move-result-object v1

    iput-object v1, p0, Lgg/j$a;->b:Ljava/lang/Object;

    iget-object v1, p0, Lgg/j$a;->d:Lgg/j;

    invoke-virtual {v1}, Lgg/j;->f0()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lnf/i0;->c:Lnf/i0$a;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1}, Lnf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lyf/f;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object v2, Lnf/i0;->c:Lnf/i0$a;

    invoke-static {v1}, Lnf/j0;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lnf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lyf/f;->resumeWith(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lgg/j$a;->b:Ljava/lang/Object;

    invoke-static {}, Lgg/k;->m()Lmg/T;

    move-result-object v1

    if-eq v0, v1, :cond_1

    invoke-static {}, Lgg/k;->m()Lmg/T;

    move-result-object v1

    iput-object v1, p0, Lgg/j$a;->b:Ljava/lang/Object;

    invoke-static {}, Lgg/k;->z()Lmg/T;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lgg/j$a;->d:Lgg/j;

    invoke-static {v0}, Lgg/j;->e(Lgg/j;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lmg/S;->o(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "`hasNext()` has not been invoked"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public t(Lmg/P;I)V
    .locals 1
    .param p1    # Lmg/P;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmg/P<",
            "*>;I)V"
        }
    .end annotation

    iget-object v0, p0, Lgg/j$a;->c:Leg/q;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Leg/q;->t(Lmg/P;I)V

    :cond_0
    return-void
.end method
