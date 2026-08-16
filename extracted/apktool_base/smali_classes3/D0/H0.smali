.class public final LD0/H0;
.super Lg1/u;
.source "SourceFile"


# instance fields
.field public final synthetic b:LD0/J0;


# direct methods
.method public constructor <init>(LD0/J0;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, LD0/H0;->b:LD0/J0;

    invoke-direct {p0, p2}, Lg1/u;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TransformationResultHandler received unknown message type: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TransformedResultImpl"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Runtime exception on the transformation worker thread: "

    const-string v2, "TransformedResultImpl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw p1

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/common/api/p;

    iget-object v0, p0, LD0/H0;->b:LD0/J0;

    invoke-static {v0}, LD0/J0;->g(LD0/J0;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LD0/H0;->b:LD0/J0;

    invoke-static {v1}, LD0/J0;->f(LD0/J0;)LD0/J0;

    move-result-object v1

    invoke-static {v1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LD0/J0;

    if-nez p1, :cond_2

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const-string v2, "Transform returned null"

    const/16 v3, 0xd

    invoke-direct {p1, v3, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-static {v1, p1}, LD0/J0;->j(LD0/J0;Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    instance-of v2, p1, LD0/x0;

    if-eqz v2, :cond_3

    check-cast p1, LD0/x0;

    invoke-virtual {p1}, LD0/x0;->k()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    invoke-static {v1, p1}, LD0/J0;->j(LD0/J0;Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1, p1}, LD0/J0;->l(Lcom/google/android/gms/common/api/p;)V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
