.class public final Lig/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDebugCoroutineInfoImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DebugCoroutineInfoImpl.kt\nkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,180:1\n1#2:181\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nDebugCoroutineInfoImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DebugCoroutineInfoImpl.kt\nkotlinx/coroutines/debug/internal/DebugCoroutineInfoImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,180:1\n1#2:181\n*E\n"
    }
.end annotation

.annotation build Lnf/f0;
.end annotation


# instance fields
.field public volatile _lastObservedFrame:Ljava/lang/ref/WeakReference;
    .annotation build LLf/g;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "LBf/e;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public volatile _state:Ljava/lang/String;
    .annotation build LLf/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final a:Lig/m;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final b:J
    .annotation build LLf/g;
    .end annotation
.end field

.field public final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lyf/j;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:I

.field public volatile lastObservedThread:Ljava/lang/Thread;
    .annotation build LLf/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lyf/j;Lig/m;J)V
    .locals 0
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lig/m;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lig/e;->a:Lig/m;

    iput-wide p3, p0, Lig/e;->b:J

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lig/e;->c:Ljava/lang/ref/WeakReference;

    const-string p1, "CREATED"

    iput-object p1, p0, Lig/e;->_state:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic a(Lig/e;LXf/o;LBf/e;Lyf/f;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lig/e;->k(LXf/o;LBf/e;Lyf/f;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lig/e;->a:Lig/m;

    if-nez v0, :cond_0

    invoke-static {}, Lpf/H;->J()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Lig/e$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v0, v2}, Lig/e$a;-><init>(Lig/e;Lig/m;Lyf/f;)V

    invoke-static {v1}, LXf/q;->b(LMf/p;)LXf/m;

    move-result-object v0

    invoke-static {v0}, LXf/K;->I3(LXf/m;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lyf/j;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lig/e;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lyf/j;

    return-object v0
.end method

.method public final d()Lig/m;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lig/e;->a:Lig/m;

    return-object v0
.end method

.method public final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lig/e;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final f()LBf/e;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lig/e;->_lastObservedFrame:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LBf/e;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lig/e;->_state:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/StackTraceElement;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lig/e;->f()LBf/e;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lpf/H;->J()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-eqz v0, :cond_2

    invoke-interface {v0}, LBf/e;->getStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v0}, LBf/e;->getCallerFrame()LBf/e;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public final i(LBf/e;)V
    .locals 1
    .param p1    # LBf/e;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lig/e;->_lastObservedFrame:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final declared-synchronized j(Ljava/lang/String;Lyf/f;Z)V
    .locals 2
    .param p1    # Ljava/lang/String;
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
            "Ljava/lang/String;",
            "Lyf/f<",
            "*>;Z)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lig/e;->_state:Ljava/lang/String;

    const-string v1, "RUNNING"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RUNNING"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    iget p3, p0, Lig/e;->d:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p0, Lig/e;->d:I

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget p3, p0, Lig/e;->d:I

    if-lez p3, :cond_1

    const-string p3, "SUSPENDED"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget p1, p0, Lig/e;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lig/e;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    :try_start_1
    iget-object p3, p0, Lig/e;->_state:Ljava/lang/String;

    invoke-static {p3, p1}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p3, "SUSPENDED"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lig/e;->f()LBf/e;

    move-result-object p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p3, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    iput-object p1, p0, Lig/e;->_state:Ljava/lang/String;

    instance-of p3, p2, LBf/e;

    const/4 v0, 0x0

    if-eqz p3, :cond_3

    check-cast p2, LBf/e;

    goto :goto_1

    :cond_3
    move-object p2, v0

    :goto_1
    invoke-virtual {p0, p2}, Lig/e;->i(LBf/e;)V

    const-string p2, "RUNNING"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/M;->g(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    :cond_4
    iput-object v0, p0, Lig/e;->lastObservedThread:Ljava/lang/Thread;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final k(LXf/o;LBf/e;Lyf/f;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LXf/o<",
            "-",
            "Ljava/lang/StackTraceElement;",
            ">;",
            "LBf/e;",
            "Lyf/f<",
            "-",
            "Lnf/P0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lig/e$b;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lig/e$b;

    iget v1, v0, Lig/e$b;->g:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lig/e$b;->g:I

    goto :goto_0

    :cond_0
    new-instance v0, Lig/e$b;

    invoke-direct {v0, p0, p3}, Lig/e$b;-><init>(Lig/e;Lyf/f;)V

    :goto_0
    iget-object p3, v0, Lig/e$b;->e:Ljava/lang/Object;

    invoke-static {}, LAf/d;->l()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lig/e$b;->g:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lig/e$b;->d:Ljava/lang/Object;

    check-cast p1, LBf/e;

    iget-object p2, v0, Lig/e$b;->c:Ljava/lang/Object;

    check-cast p2, LXf/o;

    iget-object v2, v0, Lig/e$b;->b:Ljava/lang/Object;

    check-cast v2, Lig/e;

    invoke-static {p3}, Lnf/j0;->n(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lnf/j0;->n(Ljava/lang/Object;)V

    move-object v2, p0

    :goto_1
    if-nez p2, :cond_3

    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1

    :cond_3
    invoke-interface {p2}, LBf/e;->getStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object p3

    if-eqz p3, :cond_5

    iput-object v2, v0, Lig/e$b;->b:Ljava/lang/Object;

    iput-object p1, v0, Lig/e$b;->c:Ljava/lang/Object;

    iput-object p2, v0, Lig/e$b;->d:Ljava/lang/Object;

    iput v3, v0, Lig/e$b;->g:I

    invoke-virtual {p1, p3, v0}, LXf/o;->a(Ljava/lang/Object;Lyf/f;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    :goto_2
    move-object v4, p2

    move-object p2, p1

    move-object p1, v4

    :cond_5
    invoke-interface {p2}, LBf/e;->getCallerFrame()LBf/e;

    move-result-object p2

    if-eqz p2, :cond_6

    goto :goto_1

    :cond_6
    sget-object p1, Lnf/P0;->a:Lnf/P0;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DebugCoroutineInfo(state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lig/e;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lig/e;->c()Lyf/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
