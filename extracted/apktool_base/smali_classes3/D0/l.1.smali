.class public final LD0/l;
.super Lcom/google/android/gms/common/api/o;
.source "SourceFile"


# annotations
.annotation build LC0/a;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lcom/google/android/gms/common/api/u;",
        ">",
        "Lcom/google/android/gms/common/api/o<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/gms/common/api/internal/BasePendingResult;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/p;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/common/api/p;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/common/api/o;-><init>()V

    check-cast p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;

    iput-object p1, p0, LD0/l;->a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    return-void
.end method


# virtual methods
.method public final c(Lcom/google/android/gms/common/api/p$a;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/p$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, LD0/l;->a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/p;->c(Lcom/google/android/gms/common/api/p$a;)V

    return-void
.end method

.method public final d()Lcom/google/android/gms/common/api/u;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    iget-object v0, p0, LD0/l;->a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->d()Lcom/google/android/gms/common/api/u;

    move-result-object v0

    return-object v0
.end method

.method public final e(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/u;
    .locals 1
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation

    iget-object v0, p0, LD0/l;->a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->e(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/u;

    move-result-object p1

    return-object p1
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, LD0/l;->a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->f()V

    return-void
.end method

.method public final g()Z
    .locals 1

    iget-object v0, p0, LD0/l;->a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->g()Z

    move-result v0

    return v0
.end method

.method public final h(Lcom/google/android/gms/common/api/v;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/v<",
            "-TR;>;)V"
        }
    .end annotation

    iget-object v0, p0, LD0/l;->a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->h(Lcom/google/android/gms/common/api/v;)V

    return-void
.end method

.method public final i(Lcom/google/android/gms/common/api/v;JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/v<",
            "-TR;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, LD0/l;->a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->i(Lcom/google/android/gms/common/api/v;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public final j(Lcom/google/android/gms/common/api/x;)Lcom/google/android/gms/common/api/z;
    .locals 1
    .param p1    # Lcom/google/android/gms/common/api/x;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S::",
            "Lcom/google/android/gms/common/api/u;",
            ">(",
            "Lcom/google/android/gms/common/api/x<",
            "-TR;+TS;>;)",
            "Lcom/google/android/gms/common/api/z<",
            "TS;>;"
        }
    .end annotation

    iget-object v0, p0, LD0/l;->a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/p;->j(Lcom/google/android/gms/common/api/x;)Lcom/google/android/gms/common/api/z;

    move-result-object p1

    return-object p1
.end method

.method public final k()Lcom/google/android/gms/common/api/u;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    iget-object v0, p0, LD0/l;->a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LD0/l;->a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    const-wide/16 v1, 0x0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->e(JLjava/util/concurrent/TimeUnit;)Lcom/google/android/gms/common/api/u;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Result is not available. Check that isDone() returns true before calling get()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final l()Z
    .locals 1

    iget-object v0, p0, LD0/l;->a:Lcom/google/android/gms/common/api/internal/BasePendingResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->m()Z

    move-result v0

    return v0
.end method
