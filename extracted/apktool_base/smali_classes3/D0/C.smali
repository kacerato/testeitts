.class public final LD0/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG0/f$c;


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;

.field public final b:Lcom/google/android/gms/common/api/a;

.field public final c:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/o;Lcom/google/android/gms/common/api/a;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, LD0/C;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, LD0/C;->b:Lcom/google/android/gms/common/api/a;

    iput-boolean p3, p0, LD0/C;->c:Z

    return-void
.end method

.method public static bridge synthetic a(LD0/C;)Z
    .locals 0

    iget-boolean p0, p0, LD0/C;->c:Z

    return p0
.end method


# virtual methods
.method public final b(LB0/c;)V
    .locals 4
    .param p1    # LB0/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, LD0/C;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/o;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/o;->u(Lcom/google/android/gms/common/api/internal/o;)Lcom/google/android/gms/common/api/internal/s;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/s;->r:Lcom/google/android/gms/common/api/internal/q;

    invoke-virtual {v2}, Lcom/google/android/gms/common/api/l;->r()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    const-string v2, "onReportServiceBinding must be called on the GoogleApiClient handler thread"

    invoke-static {v1, v2}, LG0/A;->y(ZLjava/lang/Object;)V

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/o;->z(Lcom/google/android/gms/common/api/internal/o;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-static {v0, v3}, Lcom/google/android/gms/common/api/internal/o;->G(Lcom/google/android/gms/common/api/internal/o;I)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, LB0/c;->u0()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, LD0/C;->b:Lcom/google/android/gms/common/api/a;

    iget-boolean v2, p0, LD0/C;->c:Z

    invoke-static {v0, p1, v1, v2}, Lcom/google/android/gms/common/api/internal/o;->D(Lcom/google/android/gms/common/api/internal/o;LB0/c;Lcom/google/android/gms/common/api/a;Z)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_3
    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/o;->H(Lcom/google/android/gms/common/api/internal/o;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/o;->E(Lcom/google/android/gms/common/api/internal/o;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/o;->z(Lcom/google/android/gms/common/api/internal/o;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_3
    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/o;->z(Lcom/google/android/gms/common/api/internal/o;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
