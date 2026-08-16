.class public LM9/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LM9/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, LM9/i;->a()Llb/e;

    move-result-object v1

    invoke-virtual {v1}, Llb/e;->n()V

    invoke-static {}, Lcom/itsmagic/engine/Engines/Engine/GC/SGC;->lpUpdate()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, LM9/i;->a()Llb/e;

    move-result-object v1

    invoke-virtual {v1}, Llb/e;->g()V

    invoke-static {}, LM9/i;->b()LJAVARuntime/AtomicFloat;

    move-result-object v1

    invoke-static {}, LM9/i;->a()Llb/e;

    move-result-object v2

    invoke-virtual {v2}, Llb/e;->k()F

    move-result v2

    :goto_0
    invoke-virtual {v1, v2}, LJAVARuntime/AtomicFloat;->set(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    invoke-static {}, LM9/i;->c()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_1

    :catchall_1
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/TextOutputActivity;->h(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {}, LM9/i;->a()Llb/e;

    move-result-object v1

    invoke-virtual {v1}, Llb/e;->g()V

    invoke-static {}, LM9/i;->b()LJAVARuntime/AtomicFloat;

    move-result-object v1

    invoke-static {}, LM9/i;->a()Llb/e;

    move-result-object v2

    invoke-virtual {v2}, Llb/e;->k()F

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    :try_start_4
    invoke-static {}, LM9/i;->a()Llb/e;

    move-result-object v2

    invoke-virtual {v2}, Llb/e;->g()V

    invoke-static {}, LM9/i;->b()LJAVARuntime/AtomicFloat;

    move-result-object v2

    invoke-static {}, LM9/i;->a()Llb/e;

    move-result-object v3

    invoke-virtual {v3}, Llb/e;->k()F

    move-result v3

    invoke-virtual {v2, v3}, LJAVARuntime/AtomicFloat;->set(F)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    invoke-static {}, LM9/i;->c()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v1
.end method
