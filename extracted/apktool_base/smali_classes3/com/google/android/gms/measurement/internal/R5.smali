.class public final Lcom/google/android/gms/measurement/internal/R5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/i2;

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/Z5;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/Z5;Lcom/google/android/gms/measurement/internal/i2;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/R5;->b:Lcom/google/android/gms/measurement/internal/i2;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/R5;->c:Lcom/google/android/gms/measurement/internal/Z5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/R5;->c:Lcom/google/android/gms/measurement/internal/Z5;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/Z5;->d(Z)V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/Z5;->e:Lcom/google/android/gms/measurement/internal/f6;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f6;->W()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    const-string v3, "Connected to service"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/R5;->b:Lcom/google/android/gms/measurement/internal/i2;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/f6;->z(Lcom/google/android/gms/measurement/internal/i2;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
