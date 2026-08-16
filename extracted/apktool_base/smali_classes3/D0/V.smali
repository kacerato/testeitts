.class public abstract LD0/V;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/common/api/internal/r;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD0/V;->a:Lcom/google/android/gms/common/api/internal/r;

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final b(Lcom/google/android/gms/common/api/internal/s;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/s;->b(Lcom/google/android/gms/common/api/internal/s;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/s;->a(Lcom/google/android/gms/common/api/internal/s;)Lcom/google/android/gms/common/api/internal/r;

    move-result-object v0

    iget-object v1, p0, LD0/V;->a:Lcom/google/android/gms/common/api/internal/r;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, LD0/V;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/s;->b(Lcom/google/android/gms/common/api/internal/s;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_1
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/s;->b(Lcom/google/android/gms/common/api/internal/s;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
