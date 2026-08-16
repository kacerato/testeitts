.class public final Leg/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Leg/b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final a()J
    .locals 2
    .annotation build LEf/f;
    .end annotation

    invoke-static {}, Leg/c;->b()Leg/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Leg/b;->a()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public static final b()Leg/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    sget-object v0, Leg/c;->a:Leg/b;

    return-object v0
.end method

.method public static final c()J
    .locals 2
    .annotation build LEf/f;
    .end annotation

    invoke-static {}, Leg/c;->b()Leg/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Leg/b;->b()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public static final d(Ljava/lang/Object;J)V
    .locals 1
    .annotation build LEf/f;
    .end annotation

    invoke-static {}, Leg/c;->b()Leg/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1, p2}, Leg/b;->c(Ljava/lang/Object;J)V

    sget-object v0, Lnf/P0;->a:Lnf/P0;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-static {p0, p1, p2}, Ljava/util/concurrent/locks/LockSupport;->parkNanos(Ljava/lang/Object;J)V

    :cond_1
    return-void
.end method

.method public static final e()V
    .locals 1
    .annotation build LEf/f;
    .end annotation

    invoke-static {}, Leg/c;->b()Leg/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Leg/b;->d()V

    :cond_0
    return-void
.end method

.method public static final f(Leg/b;)V
    .locals 0
    .param p0    # Leg/b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sput-object p0, Leg/c;->a:Leg/b;

    return-void
.end method

.method public static final g()V
    .locals 1
    .annotation build LEf/f;
    .end annotation

    invoke-static {}, Leg/c;->b()Leg/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Leg/b;->e()V

    :cond_0
    return-void
.end method

.method public static final h()V
    .locals 1
    .annotation build LEf/f;
    .end annotation

    invoke-static {}, Leg/c;->b()Leg/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Leg/b;->f()V

    :cond_0
    return-void
.end method

.method public static final i(Ljava/lang/Thread;)V
    .locals 1
    .annotation build LEf/f;
    .end annotation

    invoke-static {}, Leg/c;->b()Leg/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Leg/b;->g(Ljava/lang/Thread;)V

    sget-object v0, Lnf/P0;->a:Lnf/P0;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_1
    return-void
.end method

.method public static final j()V
    .locals 1
    .annotation build LEf/f;
    .end annotation

    invoke-static {}, Leg/c;->b()Leg/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Leg/b;->h()V

    :cond_0
    return-void
.end method

.method public static final k(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1
    .annotation build LEf/f;
    .end annotation

    invoke-static {}, Leg/c;->b()Leg/b;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0}, Leg/b;->i(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :cond_1
    :goto_0
    return-object p0
.end method
