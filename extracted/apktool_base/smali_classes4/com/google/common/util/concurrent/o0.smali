.class public final Lcom/google/common/util/concurrent/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation runtime Lcom/google/common/util/concurrent/A;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/o0$b;,
        Lcom/google/common/util/concurrent/o0$c;
    }
.end annotation

.annotation build Lv2/c;
.end annotation


# static fields
.field public static final g:Ljava/util/logging/Logger;


# instance fields
.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Ljava/util/Deque;
    .annotation build LJ2/a;
        value = "queue"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/google/common/util/concurrent/o0$c;
    .annotation build LJ2/a;
        value = "queue"
    .end annotation
.end field

.field public e:J
    .annotation build LJ2/a;
        value = "queue"
    .end annotation
.end field

.field public final f:Lcom/google/common/util/concurrent/o0$b;
    .annotation build Lq3/h;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/common/util/concurrent/o0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/o0;->g:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/google/common/util/concurrent/o0;->c:Ljava/util/Deque;

    sget-object v0, Lcom/google/common/util/concurrent/o0$c;->IDLE:Lcom/google/common/util/concurrent/o0$c;

    iput-object v0, p0, Lcom/google/common/util/concurrent/o0;->d:Lcom/google/common/util/concurrent/o0$c;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/util/concurrent/o0;->e:J

    new-instance v0, Lcom/google/common/util/concurrent/o0$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/common/util/concurrent/o0$b;-><init>(Lcom/google/common/util/concurrent/o0;Lcom/google/common/util/concurrent/o0$a;)V

    iput-object v0, p0, Lcom/google/common/util/concurrent/o0;->f:Lcom/google/common/util/concurrent/o0$b;

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Lcom/google/common/util/concurrent/o0;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic a(Lcom/google/common/util/concurrent/o0;)Ljava/util/Deque;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/o0;->c:Ljava/util/Deque;

    return-object p0
.end method

.method public static synthetic b(Lcom/google/common/util/concurrent/o0;)Lcom/google/common/util/concurrent/o0$c;
    .locals 0

    iget-object p0, p0, Lcom/google/common/util/concurrent/o0;->d:Lcom/google/common/util/concurrent/o0$c;

    return-object p0
.end method

.method public static synthetic c(Lcom/google/common/util/concurrent/o0;Lcom/google/common/util/concurrent/o0$c;)Lcom/google/common/util/concurrent/o0$c;
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/o0;->d:Lcom/google/common/util/concurrent/o0$c;

    return-object p1
.end method

.method public static synthetic d(Lcom/google/common/util/concurrent/o0;)J
    .locals 4

    iget-wide v0, p0, Lcom/google/common/util/concurrent/o0;->e:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/common/util/concurrent/o0;->e:J

    return-wide v0
.end method

.method public static synthetic e()Ljava/util/logging/Logger;
    .locals 1

    sget-object v0, Lcom/google/common/util/concurrent/o0;->g:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 7

    invoke-static {p1}, Lw2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/common/util/concurrent/o0;->c:Ljava/util/Deque;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/o0;->d:Lcom/google/common/util/concurrent/o0$c;

    sget-object v2, Lcom/google/common/util/concurrent/o0$c;->RUNNING:Lcom/google/common/util/concurrent/o0$c;

    if-eq v1, v2, :cond_6

    sget-object v2, Lcom/google/common/util/concurrent/o0$c;->QUEUED:Lcom/google/common/util/concurrent/o0$c;

    if-ne v1, v2, :cond_0

    goto :goto_6

    :cond_0
    iget-wide v3, p0, Lcom/google/common/util/concurrent/o0;->e:J

    new-instance v1, Lcom/google/common/util/concurrent/o0$a;

    invoke-direct {v1, p0, p1}, Lcom/google/common/util/concurrent/o0$a;-><init>(Lcom/google/common/util/concurrent/o0;Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/google/common/util/concurrent/o0;->c:Ljava/util/Deque;

    invoke-interface {p1, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/google/common/util/concurrent/o0$c;->QUEUING:Lcom/google/common/util/concurrent/o0$c;

    iput-object p1, p0, Lcom/google/common/util/concurrent/o0;->d:Lcom/google/common/util/concurrent/o0$c;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/o0;->b:Ljava/util/concurrent/Executor;

    iget-object v5, p0, Lcom/google/common/util/concurrent/o0;->f:Lcom/google/common/util/concurrent/o0$b;

    invoke-interface {v0, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_0

    iget-object v0, p0, Lcom/google/common/util/concurrent/o0;->d:Lcom/google/common/util/concurrent/o0$c;

    if-eq v0, p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/o0;->c:Ljava/util/Deque;

    monitor-enter v0

    :try_start_2
    iget-wide v5, p0, Lcom/google/common/util/concurrent/o0;->e:J

    cmp-long v1, v5, v3

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/common/util/concurrent/o0;->d:Lcom/google/common/util/concurrent/o0$c;

    if-ne v1, p1, :cond_2

    iput-object v2, p0, Lcom/google/common/util/concurrent/o0;->d:Lcom/google/common/util/concurrent/o0$c;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    :goto_2
    iget-object v2, p0, Lcom/google/common/util/concurrent/o0;->c:Ljava/util/Deque;

    monitor-enter v2

    :try_start_3
    iget-object v0, p0, Lcom/google/common/util/concurrent/o0;->d:Lcom/google/common/util/concurrent/o0$c;

    sget-object v3, Lcom/google/common/util/concurrent/o0$c;->IDLE:Lcom/google/common/util/concurrent/o0$c;

    if-eq v0, v3, :cond_3

    sget-object v3, Lcom/google/common/util/concurrent/o0$c;->QUEUING:Lcom/google/common/util/concurrent/o0$c;

    if-ne v0, v3, :cond_4

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_5

    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/google/common/util/concurrent/o0;->c:Ljava/util/Deque;

    invoke-interface {v0, v1}, Ljava/util/Deque;->removeLastOccurrence(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    instance-of v1, p1, Ljava/util/concurrent/RejectedExecutionException;

    if-eqz v1, :cond_5

    if-nez v0, :cond_5

    monitor-exit v2

    return-void

    :cond_5
    throw p1

    :goto_5
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    goto :goto_7

    :cond_6
    :goto_6
    :try_start_4
    iget-object v1, p0, Lcom/google/common/util/concurrent/o0;->c:Ljava/util/Deque;

    invoke-interface {v1, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_7
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/o0;->b:Ljava/util/concurrent/Executor;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x20

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "SequentialExecutor@"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "{"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
