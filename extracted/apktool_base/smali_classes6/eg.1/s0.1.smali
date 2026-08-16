.class public abstract Leg/s0;
.super Leg/q0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Leg/q0;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract k0()Ljava/lang/Thread;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public m0(JLeg/r0$c;)V
    .locals 1
    .param p3    # Leg/r0$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    sget-object v0, Leg/X;->h:Leg/X;

    invoke-virtual {v0, p1, p2, p3}, Leg/r0;->y0(JLeg/r0$c;)V

    return-void
.end method

.method public final n0()V
    .locals 2

    invoke-virtual {p0}, Leg/s0;->k0()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v1, v0, :cond_1

    invoke-static {}, Leg/c;->b()Leg/b;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Leg/b;->g(Ljava/lang/Thread;)V

    sget-object v1, Lnf/P0;->a:Lnf/P0;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :cond_1
    return-void
.end method
