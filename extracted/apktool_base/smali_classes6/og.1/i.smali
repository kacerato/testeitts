.class public Log/i;
.super Leg/w0;
.source "SourceFile"


# instance fields
.field public final c:I

.field public final d:I

.field public final e:J

.field public final f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public g:Log/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 8

    const/16 v6, 0xf

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v7}, Log/i;-><init>(IIJLjava/lang/String;ILkotlin/jvm/internal/x;)V

    return-void
.end method

.method public constructor <init>(IIJLjava/lang/String;)V
    .locals 0
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0}, Leg/w0;-><init>()V

    .line 8
    iput p1, p0, Log/i;->c:I

    .line 9
    iput p2, p0, Log/i;->d:I

    .line 10
    iput-wide p3, p0, Log/i;->e:J

    .line 11
    iput-object p5, p0, Log/i;->f:Ljava/lang/String;

    .line 12
    invoke-direct {p0}, Log/i;->t()Log/a;

    move-result-object p1

    iput-object p1, p0, Log/i;->g:Log/a;

    return-void
.end method

.method public synthetic constructor <init>(IIJLjava/lang/String;ILkotlin/jvm/internal/x;)V
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    .line 2
    sget p1, Log/o;->c:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    .line 3
    sget p2, Log/o;->d:I

    :cond_1
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    .line 4
    sget-wide p3, Log/o;->e:J

    :cond_2
    move-wide v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    .line 5
    const-string p5, "CoroutineScheduler"

    :cond_3
    move-object v2, p5

    move-object p2, p0

    move p3, p1

    move p4, p7

    move-wide p5, v0

    move-object p7, v2

    .line 6
    invoke-direct/range {p2 .. p7}, Log/i;-><init>(IIJLjava/lang/String;)V

    return-void
.end method

.method private final t()Log/a;
    .locals 7

    new-instance v6, Log/a;

    iget v1, p0, Log/i;->c:I

    iget v2, p0, Log/i;->d:I

    iget-wide v3, p0, Log/i;->e:J

    iget-object v5, p0, Log/i;->f:Ljava/lang/String;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Log/a;-><init>(IIJLjava/lang/String;)V

    return-object v6
.end method


# virtual methods
.method public final declared-synchronized A()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Log/i;->g:Log/a;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Log/a;->A(J)V

    invoke-direct {p0}, Log/i;->t()Log/a;

    move-result-object v0

    iput-object v0, p0, Log/i;->g:Log/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Log/i;->g:Log/a;

    invoke-virtual {v0}, Log/a;->close()V

    return-void
.end method

.method public dispatch(Lyf/j;Ljava/lang/Runnable;)V
    .locals 6
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object v0, p0, Log/i;->g:Log/a;

    const/4 v4, 0x6

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Log/a;->o(Log/a;Ljava/lang/Runnable;Log/l;ZILjava/lang/Object;)V

    return-void
.end method

.method public dispatchYield(Lyf/j;Ljava/lang/Runnable;)V
    .locals 6
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object v0, p0, Log/i;->g:Log/a;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Log/a;->o(Log/a;Ljava/lang/Runnable;Log/l;ZILjava/lang/Object;)V

    return-void
.end method

.method public s()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Log/i;->g:Log/a;

    return-object v0
.end method

.method public final u(Ljava/lang/Runnable;Log/l;Z)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Log/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object v0, p0, Log/i;->g:Log/a;

    invoke-virtual {v0, p1, p2, p3}, Log/a;->n(Ljava/lang/Runnable;Log/l;Z)V

    return-void
.end method

.method public final v()V
    .locals 0

    invoke-virtual {p0}, Log/i;->A()V

    return-void
.end method

.method public final declared-synchronized x(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Log/i;->g:Log/a;

    invoke-virtual {v0, p1, p2}, Log/a;->A(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
