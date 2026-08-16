.class public final Lmg/l;
.super Leg/g0;
.source "SourceFile"

# interfaces
.implements LBf/e;
.implements Lyf/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Leg/g0<",
        "TT;>;",
        "LBf/e;",
        "Lyf/f<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDispatchedContinuation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuationKt\n+ 4 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 5 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n*L\n1#1,317:1\n243#1,8:381\n255#1:389\n256#1,2:400\n258#1:404\n1#2:318\n1#2:324\n1#2:365\n297#3,5:319\n302#3,12:325\n314#3:359\n297#3,5:360\n302#3,12:366\n314#3:419\n200#4,3:337\n203#4,14:345\n200#4,3:378\n203#4,14:405\n95#5,5:340\n107#5,10:390\n118#5,2:402\n107#5,13:420\n*S KotlinDebug\n*F\n+ 1 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuation\n*L\n224#1:381,8\n225#1:389\n225#1:400,2\n225#1:404\n202#1:324\n223#1:365\n202#1:319,5\n202#1:325,12\n202#1:359\n223#1:360,5\n223#1:366,12\n223#1:419\n202#1:337,3\n202#1:345,14\n223#1:378,3\n223#1:405,14\n203#1:340,5\n225#1:390,10\n225#1:402,2\n255#1:420,13\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nDispatchedContinuation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuationKt\n+ 4 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 5 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n*L\n1#1,317:1\n243#1,8:381\n255#1:389\n256#1,2:400\n258#1:404\n1#2:318\n1#2:324\n1#2:365\n297#3,5:319\n302#3,12:325\n314#3:359\n297#3,5:360\n302#3,12:366\n314#3:419\n200#4,3:337\n203#4,14:345\n200#4,3:378\n203#4,14:405\n95#5,5:340\n107#5,10:390\n118#5,2:402\n107#5,13:420\n*S KotlinDebug\n*F\n+ 1 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuation\n*L\n224#1:381,8\n225#1:389\n225#1:400,2\n225#1:404\n202#1:324\n223#1:365\n202#1:319,5\n202#1:325,12\n202#1:359\n223#1:360,5\n223#1:366,12\n223#1:419\n202#1:337,3\n202#1:345,14\n223#1:378,3\n223#1:405,14\n203#1:340,5\n225#1:390,10\n225#1:402,2\n255#1:420,13\n*E\n"
    }
.end annotation

.annotation build Lnf/f0;
.end annotation


# static fields
.field public static final i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private volatile _reusableCancellableContinuation:Ljava/lang/Object;
    .annotation runtime LLf/x;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final e:Leg/M;
    .annotation build LLf/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lyf/f;
    .annotation build LLf/g;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyf/f<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Ljava/lang/Object;
    .annotation build LLf/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final h:Ljava/lang/Object;
    .annotation build LLf/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Ljava/lang/Object;

    const-string v1, "_reusableCancellableContinuation"

    const-class v2, Lmg/l;

    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    sput-object v0, Lmg/l;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    return-void
.end method

.method public constructor <init>(Leg/M;Lyf/f;)V
    .locals 1
    .param p1    # Leg/M;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lyf/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/M;",
            "Lyf/f<",
            "-TT;>;)V"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Leg/g0;-><init>(I)V

    iput-object p1, p0, Lmg/l;->e:Leg/M;

    iput-object p2, p0, Lmg/l;->f:Lyf/f;

    invoke-static {}, Lmg/m;->a()Lmg/T;

    move-result-object p1

    iput-object p1, p0, Lmg/l;->g:Ljava/lang/Object;

    invoke-virtual {p0}, Lmg/l;->getContext()Lyf/j;

    move-result-object p1

    invoke-static {p1}, Lmg/Z;->b(Lyf/j;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lmg/l;->h:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic r()V
    .locals 0

    return-void
.end method

.method private final u(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;LMf/l;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;",
            "LMf/l<",
            "Ljava/lang/Object;",
            "Lnf/P0;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    :goto_0
    invoke-virtual {p1, p3}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public final A(Ljava/lang/Object;)V
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object v0, p0, Lmg/l;->f:Lyf/f;

    iget-object v1, p0, Lmg/l;->h:Ljava/lang/Object;

    invoke-interface {v0}, Lyf/f;->getContext()Lyf/j;

    move-result-object v2

    invoke-static {v2, v1}, Lmg/Z;->c(Lyf/j;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v3, Lmg/Z;->a:Lmg/T;

    if-eq v1, v3, :cond_0

    invoke-static {v0, v2, v1}, Leg/L;->g(Lyf/f;Lyf/j;Ljava/lang/Object;)Leg/w1;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v3, 0x1

    :try_start_0
    iget-object v4, p0, Lmg/l;->f:Lyf/f;

    invoke-interface {v4, p1}, Lyf/f;->resumeWith(Ljava/lang/Object;)V

    sget-object p1, Lnf/P0;->a:Lnf/P0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3}, Lkotlin/jvm/internal/J;->d(I)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Leg/w1;->C1()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    invoke-static {v2, v1}, Lmg/Z;->a(Lyf/j;Ljava/lang/Object;)V

    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/J;->c(I)V

    return-void

    :catchall_0
    move-exception p1

    invoke-static {v3}, Lkotlin/jvm/internal/J;->d(I)V

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Leg/w1;->C1()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    invoke-static {v2, v1}, Lmg/Z;->a(Lyf/j;Ljava/lang/Object;)V

    :cond_4
    invoke-static {v3}, Lkotlin/jvm/internal/J;->c(I)V

    throw p1
.end method

.method public final D(Leg/p;)Ljava/lang/Throwable;
    .locals 4
    .param p1    # Leg/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/p<",
            "*>;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lmg/l;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lmg/m;->b:Lmg/T;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    sget-object v1, Lmg/l;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v1, p0, v2, p1}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v3

    :cond_1
    instance-of p1, v1, Ljava/lang/Throwable;

    if-eqz p1, :cond_3

    sget-object p1, Lmg/l;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {p1, p0, v1, v3}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    check-cast v1, Ljava/lang/Throwable;

    return-object v1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Failed requirement."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inconsistent state "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    instance-of v0, p1, Leg/E;

    if-eqz v0, :cond_0

    check-cast p1, Leg/E;

    iget-object p1, p1, Leg/E;->b:LMf/l;

    invoke-interface {p1, p2}, LMf/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public e()Lyf/f;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lyf/f<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    return-object p0
.end method

.method public getCallerFrame()LBf/e;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lmg/l;->f:Lyf/f;

    instance-of v1, v0, LBf/e;

    if-eqz v1, :cond_0

    check-cast v0, LBf/e;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getContext()Lyf/j;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lmg/l;->f:Lyf/f;

    invoke-interface {v0}, Lyf/f;->getContext()Lyf/j;

    move-result-object v0

    return-object v0
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public l()Ljava/lang/Object;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lmg/l;->g:Ljava/lang/Object;

    invoke-static {}, Lmg/m;->a()Lmg/T;

    move-result-object v1

    iput-object v1, p0, Lmg/l;->g:Ljava/lang/Object;

    return-object v0
.end method

.method public final m()V
    .locals 3

    sget-object v0, Lmg/l;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lmg/m;->b:Lmg/T;

    if-eq v1, v2, :cond_0

    return-void
.end method

.method public final n()Leg/q;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Leg/q<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Lmg/l;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    :goto_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v0, Lmg/l;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v1, Lmg/m;->b:Lmg/T;

    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0

    :cond_1
    instance-of v2, v1, Leg/q;

    if-eqz v2, :cond_2

    sget-object v2, Lmg/l;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    sget-object v3, Lmg/m;->b:Lmg/T;

    invoke-static {v2, p0, v1, v3}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast v1, Leg/q;

    return-object v1

    :cond_2
    sget-object v2, Lmg/m;->b:Lmg/T;

    if-eq v1, v2, :cond_0

    instance-of v2, v1, Ljava/lang/Throwable;

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inconsistent state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final p(Lyf/j;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyf/j;",
            "TT;)V"
        }
    .end annotation

    iput-object p2, p0, Lmg/l;->g:Ljava/lang/Object;

    const/4 p2, 0x1

    iput p2, p0, Leg/g0;->d:I

    iget-object p2, p0, Lmg/l;->e:Leg/M;

    invoke-virtual {p2, p1, p0}, Leg/M;->dispatchYield(Lyf/j;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final q()Leg/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Leg/q<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lmg/l;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Leg/q;

    if-eqz v1, :cond_0

    check-cast v0, Leg/q;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public resumeWith(Ljava/lang/Object;)V
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object v0, p0, Lmg/l;->f:Lyf/f;

    invoke-interface {v0}, Lyf/f;->getContext()Lyf/j;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v1, v2, v1}, Leg/I;->d(Ljava/lang/Object;LMf/l;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lmg/l;->e:Leg/M;

    invoke-virtual {v4, v0}, Leg/M;->isDispatchNeeded(Lyf/j;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iput-object v3, p0, Lmg/l;->g:Ljava/lang/Object;

    iput v5, p0, Leg/g0;->d:I

    iget-object p1, p0, Lmg/l;->e:Leg/M;

    invoke-virtual {p1, v0, p0}, Leg/M;->dispatch(Lyf/j;Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_0
    sget-object v0, Leg/n1;->a:Leg/n1;

    invoke-virtual {v0}, Leg/n1;->b()Leg/q0;

    move-result-object v0

    invoke-virtual {v0}, Leg/q0;->e0()Z

    move-result v4

    if-eqz v4, :cond_1

    iput-object v3, p0, Lmg/l;->g:Ljava/lang/Object;

    iput v5, p0, Leg/g0;->d:I

    invoke-virtual {v0, p0}, Leg/q0;->v(Leg/g0;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v0, v2}, Leg/q0;->A(Z)V

    :try_start_0
    invoke-virtual {p0}, Lmg/l;->getContext()Lyf/j;

    move-result-object v3

    iget-object v4, p0, Lmg/l;->h:Ljava/lang/Object;

    invoke-static {v3, v4}, Lmg/Z;->c(Lyf/j;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v5, p0, Lmg/l;->f:Lyf/f;

    invoke-interface {v5, p1}, Lyf/f;->resumeWith(Ljava/lang/Object;)V

    sget-object p1, Lnf/P0;->a:Lnf/P0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v3, v4}, Lmg/Z;->a(Lyf/j;Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {v0}, Leg/q0;->i0()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_2

    :goto_0
    invoke-virtual {v0, v2}, Leg/q0;->s(Z)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-static {v3, v4}, Lmg/Z;->a(Lyf/j;Ljava/lang/Object;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    invoke-virtual {p0, p1, v1}, Leg/g0;->j(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :goto_2
    return-void

    :catchall_2
    move-exception p1

    invoke-virtual {v0, v2}, Leg/q0;->s(Z)V

    throw p1
.end method

.method public final s()Z
    .locals 1

    sget-object v0, Lmg/l;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DispatchedContinuation["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmg/l;->e:Leg/M;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmg/l;->f:Lyf/f;

    invoke-static {v1}, Leg/W;->c(Lyf/f;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final v(Ljava/lang/Throwable;)Z
    .locals 5
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    sget-object v0, Lmg/l;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lmg/m;->b:Lmg/T;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    sget-object v1, Lmg/l;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-static {v1, p0, v2, p1}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v4

    :cond_1
    instance-of v2, v1, Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    return v4

    :cond_2
    sget-object v2, Lmg/l;->i:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    const/4 v3, 0x0

    invoke-static {v2, p0, v1, v3}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return p1
.end method

.method public final w()V
    .locals 1

    invoke-virtual {p0}, Lmg/l;->m()V

    invoke-virtual {p0}, Lmg/l;->q()Leg/q;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Leg/q;->v()V

    :cond_0
    return-void
.end method

.method public final y(Ljava/lang/Object;LMf/l;)V
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LMf/l;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "LMf/l<",
            "-",
            "Ljava/lang/Throwable;",
            "Lnf/P0;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1, p2}, Leg/I;->b(Ljava/lang/Object;LMf/l;)Ljava/lang/Object;

    move-result-object p2

    iget-object v0, p0, Lmg/l;->e:Leg/M;

    invoke-virtual {p0}, Lmg/l;->getContext()Lyf/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Leg/M;->isDispatchNeeded(Lyf/j;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-object p2, p0, Lmg/l;->g:Ljava/lang/Object;

    iput v1, p0, Leg/g0;->d:I

    iget-object p1, p0, Lmg/l;->e:Leg/M;

    invoke-virtual {p0}, Lmg/l;->getContext()Lyf/j;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Leg/M;->dispatch(Lyf/j;Ljava/lang/Runnable;)V

    goto/16 :goto_4

    :cond_0
    sget-object v0, Leg/n1;->a:Leg/n1;

    invoke-virtual {v0}, Leg/n1;->b()Leg/q0;

    move-result-object v0

    invoke-virtual {v0}, Leg/q0;->e0()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-object p2, p0, Lmg/l;->g:Ljava/lang/Object;

    iput v1, p0, Leg/g0;->d:I

    invoke-virtual {v0, p0}, Leg/q0;->v(Leg/g0;)V

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v0, v1}, Leg/q0;->A(Z)V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lmg/l;->getContext()Lyf/j;

    move-result-object v3

    sget-object v4, Leg/K0;->y4:Leg/K0$b;

    invoke-interface {v3, v4}, Lyf/j;->get(Lyf/j$c;)Lyf/j$b;

    move-result-object v3

    check-cast v3, Leg/K0;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Leg/K0;->isActive()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {v3}, Leg/K0;->Q()Ljava/util/concurrent/CancellationException;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lmg/l;->c(Ljava/lang/Object;Ljava/lang/Throwable;)V

    sget-object p2, Lnf/i0;->c:Lnf/i0$a;

    invoke-static {p1}, Lnf/j0;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lnf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lyf/f;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_2
    iget-object p2, p0, Lmg/l;->f:Lyf/f;

    iget-object v3, p0, Lmg/l;->h:Ljava/lang/Object;

    invoke-interface {p2}, Lyf/f;->getContext()Lyf/j;

    move-result-object v4

    invoke-static {v4, v3}, Lmg/Z;->c(Lyf/j;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Lmg/Z;->a:Lmg/T;

    if-eq v3, v5, :cond_3

    invoke-static {p2, v4, v3}, Leg/L;->g(Lyf/f;Lyf/j;Ljava/lang/Object;)Leg/w1;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    move-object p2, v2

    :goto_0
    :try_start_1
    iget-object v5, p0, Lmg/l;->f:Lyf/f;

    invoke-interface {v5, p1}, Lyf/f;->resumeWith(Ljava/lang/Object;)V

    sget-object p1, Lnf/P0;->a:Lnf/P0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v1}, Lkotlin/jvm/internal/J;->d(I)V

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Leg/w1;->C1()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    invoke-static {v4, v3}, Lmg/Z;->a(Lyf/j;Ljava/lang/Object;)V

    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/J;->c(I)V

    :cond_6
    :goto_1
    invoke-virtual {v0}, Leg/q0;->i0()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_6

    invoke-static {v1}, Lkotlin/jvm/internal/J;->d(I)V

    :goto_2
    invoke-virtual {v0, v1}, Leg/q0;->s(Z)V

    invoke-static {v1}, Lkotlin/jvm/internal/J;->c(I)V

    goto :goto_4

    :catchall_1
    move-exception p1

    :try_start_3
    invoke-static {v1}, Lkotlin/jvm/internal/J;->d(I)V

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Leg/w1;->C1()Z

    move-result p2

    if-eqz p2, :cond_8

    :cond_7
    invoke-static {v4, v3}, Lmg/Z;->a(Lyf/j;Ljava/lang/Object;)V

    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/J;->c(I)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    :try_start_4
    invoke-virtual {p0, p1, v2}, Leg/g0;->j(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {v1}, Lkotlin/jvm/internal/J;->d(I)V

    goto :goto_2

    :goto_4
    return-void

    :catchall_2
    move-exception p1

    invoke-static {v1}, Lkotlin/jvm/internal/J;->d(I)V

    invoke-virtual {v0, v1}, Leg/q0;->s(Z)V

    invoke-static {v1}, Lkotlin/jvm/internal/J;->c(I)V

    throw p1
.end method

.method public final z(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lmg/l;->getContext()Lyf/j;

    move-result-object v0

    sget-object v1, Leg/K0;->y4:Leg/K0$b;

    invoke-interface {v0, v1}, Lyf/j;->get(Lyf/j$c;)Lyf/j$b;

    move-result-object v0

    check-cast v0, Leg/K0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Leg/K0;->isActive()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Leg/K0;->Q()Ljava/util/concurrent/CancellationException;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmg/l;->c(Ljava/lang/Object;Ljava/lang/Throwable;)V

    sget-object p1, Lnf/i0;->c:Lnf/i0$a;

    invoke-static {v0}, Lnf/j0;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lnf/i0;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p1}, Lyf/f;->resumeWith(Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
