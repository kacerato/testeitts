.class public final synthetic Lcom/google/android/gms/measurement/internal/P4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/b5;

.field public final synthetic c:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/b5;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/P4;->b:Lcom/google/android/gms/measurement/internal/b5;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/P4;->c:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/P4;->b:Lcom/google/android/gms/measurement/internal/b5;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->x()Lcom/google/android/gms/measurement/internal/P2;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/P2;->o:Lcom/google/android/gms/measurement/internal/L2;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/L2;->a()Landroid/os/Bundle;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->J()Lcom/google/android/gms/measurement/internal/f6;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/P4;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/measurement/internal/f6;->j0(Ljava/util/concurrent/atomic/AtomicReference;Landroid/os/Bundle;)V

    return-void
.end method
