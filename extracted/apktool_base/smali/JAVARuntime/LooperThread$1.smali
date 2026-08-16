.class LJAVARuntime/LooperThread$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJAVARuntime/LooperThread;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LJAVARuntime/LooperThread;


# direct methods
.method public constructor <init>(LJAVARuntime/LooperThread;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LJAVARuntime/LooperThread$1;->this$0:LJAVARuntime/LooperThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :cond_0
    iget-object v0, p0, LJAVARuntime/LooperThread$1;->this$0:LJAVARuntime/LooperThread;

    invoke-static {v0}, LJAVARuntime/LooperThread;->access$000(LJAVARuntime/LooperThread;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LJAVARuntime/LooperThread$1;->this$0:LJAVARuntime/LooperThread;

    invoke-static {v1}, LJAVARuntime/LooperThread;->access$100(LJAVARuntime/LooperThread;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, LJAVARuntime/LooperThread$1;->this$0:LJAVARuntime/LooperThread;

    invoke-static {v1}, LJAVARuntime/LooperThread;->access$100(LJAVARuntime/LooperThread;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_1
    move-object v1, v3

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :cond_2
    iget-object v0, p0, LJAVARuntime/LooperThread$1;->this$0:LJAVARuntime/LooperThread;

    invoke-static {v0}, LJAVARuntime/LooperThread;->access$200(LJAVARuntime/LooperThread;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LJAVARuntime/LooperThread$1;->this$0:LJAVARuntime/LooperThread;

    invoke-static {v0}, LJAVARuntime/LooperThread;->access$000(LJAVARuntime/LooperThread;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, LJAVARuntime/LooperThread$1;->this$0:LJAVARuntime/LooperThread;

    invoke-static {v1, v3}, LJAVARuntime/LooperThread;->access$302(LJAVARuntime/LooperThread;LJAVARuntime/Thread;)LJAVARuntime/Thread;

    iget-object v1, p0, LJAVARuntime/LooperThread$1;->this$0:LJAVARuntime/LooperThread;

    invoke-static {v1}, LJAVARuntime/LooperThread;->access$200(LJAVARuntime/LooperThread;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
