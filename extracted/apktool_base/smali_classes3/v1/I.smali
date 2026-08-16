.class public final Lv1/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lv1/k;

.field public final synthetic c:Lv1/J;


# direct methods
.method public constructor <init>(Lv1/J;Lv1/k;)V
    .locals 0

    iput-object p1, p0, Lv1/I;->c:Lv1/J;

    iput-object p2, p0, Lv1/I;->b:Lv1/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lv1/I;->c:Lv1/J;

    invoke-static {v0}, Lv1/J;->e(Lv1/J;)Lv1/j;

    move-result-object v0

    iget-object v1, p0, Lv1/I;->b:Lv1/k;

    invoke-virtual {v1}, Lv1/k;->r()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lv1/j;->a(Ljava/lang/Object;)Lv1/k;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/tasks/RuntimeExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lv1/I;->c:Lv1/J;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Continuation returned null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lv1/J;->c(Ljava/lang/Exception;)V

    return-void

    :cond_0
    iget-object v1, p0, Lv1/I;->c:Lv1/J;

    sget-object v2, Lv1/m;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v2, v1}, Lv1/k;->k(Ljava/util/concurrent/Executor;Lv1/g;)Lv1/k;

    iget-object v1, p0, Lv1/I;->c:Lv1/J;

    invoke-virtual {v0, v2, v1}, Lv1/k;->h(Ljava/util/concurrent/Executor;Lv1/f;)Lv1/k;

    iget-object v1, p0, Lv1/I;->c:Lv1/J;

    invoke-virtual {v0, v2, v1}, Lv1/k;->b(Ljava/util/concurrent/Executor;Lv1/d;)Lv1/k;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    :goto_0
    iget-object v1, p0, Lv1/I;->c:Lv1/J;

    invoke-virtual {v1, v0}, Lv1/J;->c(Ljava/lang/Exception;)V

    return-void

    :catch_2
    iget-object v0, p0, Lv1/I;->c:Lv1/J;

    invoke-virtual {v0}, Lv1/J;->a()V

    return-void

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lv1/I;->c:Lv1/J;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v1, v0}, Lv1/J;->c(Ljava/lang/Exception;)V

    return-void

    :cond_1
    iget-object v1, p0, Lv1/I;->c:Lv1/J;

    invoke-virtual {v1, v0}, Lv1/J;->c(Ljava/lang/Exception;)V

    return-void
.end method
