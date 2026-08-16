.class public abstract Leg/q0;
.super Leg/M;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEventLoop.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoop\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,543:1\n1#2:544\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/t0;
    value = {
        "SMAP\nEventLoop.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoop\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,543:1\n1#2:544\n*E\n"
    }
.end annotation


# instance fields
.field public b:J

.field public c:Z

.field public d:Lpf/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpf/m<",
            "Leg/g0<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Leg/M;-><init>()V

    return-void
.end method

.method public static synthetic B(Leg/q0;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Leg/q0;->A(Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: incrementUseCount"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic t(Leg/q0;ZILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Leg/q0;->s(Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: decrementUseCount"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final A(Z)V
    .locals 4

    iget-wide v0, p0, Leg/q0;->b:J

    invoke-virtual {p0, p1}, Leg/q0;->u(Z)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Leg/q0;->b:J

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Leg/q0;->c:Z

    :cond_0
    return-void
.end method

.method public d0()Z
    .locals 1

    invoke-virtual {p0}, Leg/q0;->f0()Z

    move-result v0

    return v0
.end method

.method public final e0()Z
    .locals 5

    iget-wide v0, p0, Leg/q0;->b:J

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Leg/q0;->u(Z)J

    move-result-wide v3

    cmp-long v0, v0, v3

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public final f0()Z
    .locals 1

    iget-object v0, p0, Leg/q0;->d:Lpf/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lpf/m;->isEmpty()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public g0()J
    .locals 2

    invoke-virtual {p0}, Leg/q0;->i0()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final i0()Z
    .locals 2

    iget-object v0, p0, Leg/q0;->d:Lpf/m;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lpf/m;->C()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leg/g0;

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Leg/g0;->run()V

    const/4 v0, 0x1

    return v0
.end method

.method public final isActive()Z
    .locals 4

    iget-wide v0, p0, Leg/q0;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j0()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final limitedParallelism(I)Leg/M;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p1}, Lmg/t;->a(I)V

    return-object p0
.end method

.method public final s(Z)V
    .locals 4

    iget-wide v0, p0, Leg/q0;->b:J

    invoke-virtual {p0, p1}, Leg/q0;->u(Z)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Leg/q0;->b:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    return-void

    :cond_0
    iget-boolean p1, p0, Leg/q0;->c:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Leg/q0;->shutdown()V

    :cond_1
    return-void
.end method

.method public shutdown()V
    .locals 0

    return-void
.end method

.method public final u(Z)J
    .locals 2

    if-eqz p1, :cond_0

    const-wide v0, 0x100000000L

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x1

    :goto_0
    return-wide v0
.end method

.method public final v(Leg/g0;)V
    .locals 1
    .param p1    # Leg/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/g0<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Leg/q0;->d:Lpf/m;

    if-nez v0, :cond_0

    new-instance v0, Lpf/m;

    invoke-direct {v0}, Lpf/m;-><init>()V

    iput-object v0, p0, Leg/q0;->d:Lpf/m;

    :cond_0
    invoke-virtual {v0, p1}, Lpf/m;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method public x()J
    .locals 3

    iget-object v0, p0, Leg/q0;->d:Lpf/m;

    const-wide v1, 0x7fffffffffffffffL

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    invoke-virtual {v0}, Lpf/m;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1
.end method
