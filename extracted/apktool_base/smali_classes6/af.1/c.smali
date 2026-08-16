.class public final Laf/c;
.super LBe/J;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laf/c$a;,
        Laf/c$b;
    }
.end annotation


# instance fields
.field public final c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Laf/c$b;",
            ">;"
        }
    .end annotation
.end field

.field public d:J

.field public volatile e:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, LBe/J;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(I)V

    iput-object v0, p0, Laf/c;->c:Ljava/util/Queue;

    return-void
.end method

.method public constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 2

    .line 3
    invoke-direct {p0}, LBe/J;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(I)V

    iput-object v0, p0, Laf/c;->c:Ljava/util/Queue;

    .line 5
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Laf/c;->e:J

    return-void
.end method


# virtual methods
.method public c()LBe/J$c;
    .locals 1
    .annotation build LCe/f;
    .end annotation

    new-instance v0, Laf/c$a;

    invoke-direct {v0, p0}, Laf/c$a;-><init>(Laf/c;)V

    return-object v0
.end method

.method public e(Ljava/util/concurrent/TimeUnit;)J
    .locals 3
    .param p1    # Ljava/util/concurrent/TimeUnit;
        .annotation build LCe/f;
        .end annotation
    .end param

    iget-wide v0, p0, Laf/c;->e:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public l(JLjava/util/concurrent/TimeUnit;)V
    .locals 2

    iget-wide v0, p0, Laf/c;->e:J

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    add-long/2addr v0, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, p1}, Laf/c;->m(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public m(JLjava/util/concurrent/TimeUnit;)V
    .locals 0

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Laf/c;->o(J)V

    return-void
.end method

.method public n()V
    .locals 2

    iget-wide v0, p0, Laf/c;->e:J

    invoke-virtual {p0, v0, v1}, Laf/c;->o(J)V

    return-void
.end method

.method public final o(J)V
    .locals 5

    :cond_0
    :goto_0
    iget-object v0, p0, Laf/c;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laf/c$b;

    if-eqz v0, :cond_3

    iget-wide v1, v0, Laf/c$b;->b:J

    cmp-long v3, v1, p1

    if-lez v3, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_2

    iget-wide v1, p0, Laf/c;->e:J

    :cond_2
    iput-wide v1, p0, Laf/c;->e:J

    iget-object v1, p0, Laf/c;->c:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    iget-object v1, v0, Laf/c$b;->d:Laf/c$a;

    iget-boolean v1, v1, Laf/c$a;->b:Z

    if-nez v1, :cond_0

    iget-object v0, v0, Laf/c$b;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_3
    :goto_1
    iput-wide p1, p0, Laf/c;->e:J

    return-void
.end method
