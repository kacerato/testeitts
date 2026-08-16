.class public final Leg/y0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic a()V
    .locals 0
    .annotation build Leg/z0;
    .end annotation

    return-void
.end method

.method public static final b(Leg/M;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0    # Leg/M;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    instance-of v0, p0, Leg/w0;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Leg/w0;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Leg/w0;->s()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Leg/i0;

    invoke-direct {v0, p0}, Leg/i0;-><init>(Leg/M;)V

    :cond_2
    return-object v0
.end method

.method public static final c(Ljava/util/concurrent/Executor;)Leg/M;
    .locals 1
    .param p0    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LLf/j;
        name = "from"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    instance-of v0, p0, Leg/i0;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Leg/i0;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, v0, Leg/i0;->b:Leg/M;

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Leg/x0;

    invoke-direct {v0, p0}, Leg/x0;-><init>(Ljava/util/concurrent/Executor;)V

    :cond_2
    return-object v0
.end method

.method public static final d(Ljava/util/concurrent/ExecutorService;)Leg/w0;
    .locals 1
    .param p0    # Ljava/util/concurrent/ExecutorService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build LLf/j;
        name = "from"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Leg/x0;

    invoke-direct {v0, p0}, Leg/x0;-><init>(Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
