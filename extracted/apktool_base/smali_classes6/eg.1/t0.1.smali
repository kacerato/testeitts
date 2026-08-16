.class public final Leg/t0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a()Leg/q0;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Leg/h;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-direct {v0, v1}, Leg/h;-><init>(Ljava/lang/Thread;)V

    return-object v0
.end method

.method public static final b(Ljava/lang/Thread;)Z
    .locals 1
    .param p0    # Ljava/lang/Thread;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Leg/F0;
    .end annotation

    .annotation build Leg/e0;
    .end annotation

    .annotation build Lnf/f0;
    .end annotation

    instance-of v0, p0, Log/a$c;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p0, Log/a$c;

    invoke-virtual {p0}, Log/a$c;->q()Z

    move-result p0

    return p0
.end method

.method public static final c(LMf/a;)V
    .locals 0
    .param p0    # LMf/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LMf/a<",
            "Lnf/P0;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, LMf/a;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public static final d()J
    .locals 2
    .annotation build Leg/F0;
    .end annotation

    sget-object v0, Leg/n1;->a:Leg/n1;

    invoke-virtual {v0}, Leg/n1;->a()Leg/q0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Leg/q0;->g0()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    return-wide v0
.end method

.method public static final e()J
    .locals 4
    .annotation build Leg/F0;
    .end annotation

    .annotation build Leg/e0;
    .end annotation

    .annotation build Lnf/f0;
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    instance-of v1, v0, Log/a$c;

    if-eqz v1, :cond_0

    check-cast v0, Log/a$c;

    invoke-virtual {v0}, Log/a$c;->u()J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected CoroutineScheduler.Worker, but got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
