.class public Lh4/k$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh4/k;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lh4/k;


# direct methods
.method public constructor <init>(Lh4/k;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lh4/k$f;->b:Lh4/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lh4/k$f;->b:Lh4/k;

    invoke-static {v1}, Lh4/k;->n(Lh4/k;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, p0, Lh4/k$f;->b:Lh4/k;

    invoke-static {v2}, Lh4/k;->o(Lh4/k;)Lh4/f;

    move-result-object v2

    if-nez v2, :cond_0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lh4/k$f;->b:Lh4/k;

    invoke-static {v1}, Lh4/k;->g(Lh4/k;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    :try_start_2
    iget-object v2, p0, Lh4/k$f;->b:Lh4/k;

    invoke-static {v2}, Lh4/k;->o(Lh4/k;)Lh4/f;

    move-result-object v2

    invoke-virtual {v2}, Lh4/f;->c()V

    iget-object v2, p0, Lh4/k$f;->b:Lh4/k;

    invoke-static {v2}, Lh4/k;->r(Lh4/k;)V

    iget-object v2, p0, Lh4/k$f;->b:Lh4/k;

    invoke-static {v2}, Lh4/k;->e(Lh4/k;)V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    iget-object v1, p0, Lh4/k$f;->b:Lh4/k;

    invoke-static {v1}, Lh4/k;->g(Lh4/k;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_2

    :goto_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :goto_2
    return-void

    :goto_3
    iget-object v2, p0, Lh4/k$f;->b:Lh4/k;

    invoke-static {v2}, Lh4/k;->g(Lh4/k;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v1
.end method
