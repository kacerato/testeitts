.class public Lqd/w$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lqd/w$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqd/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/locks/Lock;

.field public final b:Ljava/util/concurrent/locks/Condition;

.field public volatile c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lqd/w$c;->a:Ljava/util/concurrent/locks/Lock;

    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lqd/w$c;->b:Ljava/util/concurrent/locks/Condition;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lqd/w$c;->c:I

    return-void
.end method

.method public synthetic constructor <init>(Lqd/w$a;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lqd/w$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget v0, p0, Lqd/w$c;->c:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lqd/w$c;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lqd/w$c;->b:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lqd/w$c;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lqd/w$c;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public b(JLqd/z;Lqd/z;Lqd/A;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lmax/disruptor/AlertException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lqd/w$c;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget v0, p0, Lqd/w$c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lqd/w$c;->c:I

    :goto_0
    invoke-virtual {p3}, Lqd/z;->c()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-gez v0, :cond_0

    invoke-interface {p5}, Lqd/A;->b()V

    iget-object v0, p0, Lqd/w$c;->b:Ljava/util/concurrent/locks/Condition;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    iget p3, p0, Lqd/w$c;->c:I

    add-int/lit8 p3, p3, -0x1

    iput p3, p0, Lqd/w$c;->c:I

    iget-object p3, p0, Lqd/w$c;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_1
    invoke-virtual {p4}, Lqd/z;->c()J

    move-result-wide v0

    cmp-long p3, v0, p1

    if-gez p3, :cond_1

    invoke-interface {p5}, Lqd/A;->b()V

    goto :goto_1

    :cond_1
    return-wide v0

    :goto_2
    iget p2, p0, Lqd/w$c;->c:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lqd/w$c;->c:I

    iget-object p2, p0, Lqd/w$c;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
