.class public Lcom/google/common/util/concurrent/e$g$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/e$g;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/common/util/concurrent/e$g;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/e$g;)V
    .locals 0

    iput-object p1, p0, Lcom/google/common/util/concurrent/e$g$c;->b:Lcom/google/common/util/concurrent/e$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/e$g$c;->b:Lcom/google/common/util/concurrent/e$g;

    invoke-static {v0}, Lcom/google/common/util/concurrent/e$g;->y(Lcom/google/common/util/concurrent/e$g;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/google/common/util/concurrent/e$g$c;->b:Lcom/google/common/util/concurrent/e$g;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/f;->state()Lcom/google/common/util/concurrent/p0$b;

    move-result-object v0

    sget-object v1, Lcom/google/common/util/concurrent/p0$b;->STOPPING:Lcom/google/common/util/concurrent/p0$b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eq v0, v1, :cond_0

    :try_start_2
    iget-object v0, p0, Lcom/google/common/util/concurrent/e$g$c;->b:Lcom/google/common/util/concurrent/e$g;

    invoke-static {v0}, Lcom/google/common/util/concurrent/e$g;->y(Lcom/google/common/util/concurrent/e$g;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/google/common/util/concurrent/e$g$c;->b:Lcom/google/common/util/concurrent/e$g;

    iget-object v0, v0, Lcom/google/common/util/concurrent/e$g;->t:Lcom/google/common/util/concurrent/e;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/e;->o()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, p0, Lcom/google/common/util/concurrent/e$g$c;->b:Lcom/google/common/util/concurrent/e$g;

    invoke-static {v0}, Lcom/google/common/util/concurrent/e$g;->y(Lcom/google/common/util/concurrent/e$g;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    iget-object v0, p0, Lcom/google/common/util/concurrent/e$g$c;->b:Lcom/google/common/util/concurrent/e$g;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/f;->v()V

    goto :goto_1

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/e$g$c;->b:Lcom/google/common/util/concurrent/e$g;

    invoke-static {v1}, Lcom/google/common/util/concurrent/e$g;->y(Lcom/google/common/util/concurrent/e$g;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    iget-object v1, p0, Lcom/google/common/util/concurrent/e$g$c;->b:Lcom/google/common/util/concurrent/e$g;

    invoke-virtual {v1, v0}, Lcom/google/common/util/concurrent/f;->t(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
