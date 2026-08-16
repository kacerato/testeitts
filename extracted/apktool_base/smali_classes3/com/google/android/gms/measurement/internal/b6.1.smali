.class public final synthetic Lcom/google/android/gms/measurement/internal/b6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/f6;

.field public final synthetic c:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic d:Lcom/google/android/gms/measurement/internal/o7;

.field public final synthetic e:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/f6;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/o7;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/b6;->b:Lcom/google/android/gms/measurement/internal/f6;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/b6;->c:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/b6;->d:Lcom/google/android/gms/measurement/internal/o7;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/b6;->e:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/b6;->b:Lcom/google/android/gms/measurement/internal/f6;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/b6;->c:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/b6;->d:Lcom/google/android/gms/measurement/internal/o7;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/b6;->e:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/f6;->G(Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/android/gms/measurement/internal/o7;Landroid/os/Bundle;)V

    return-void
.end method
