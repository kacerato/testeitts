.class public abstract Lcom/google/android/gms/measurement/internal/h2;
.super Lcom/google/android/gms/measurement/internal/G1;
.source "SourceFile"


# instance fields
.field public b:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/p3;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/G1;-><init>(Lcom/google/android/gms/measurement/internal/p3;)V

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p3;->k()V

    return-void
.end method


# virtual methods
.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/h2;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/h2;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final k()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/h2;->b:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/h2;->m()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->l()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/h2;->b:Z

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final l()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/measurement/internal/h2;->b:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/h2;->n()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->l()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/measurement/internal/h2;->b:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t initialize twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract m()Z
.end method

.method public n()V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    return-void
.end method
