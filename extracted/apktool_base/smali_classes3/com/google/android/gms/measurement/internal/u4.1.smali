.class public final Lcom/google/android/gms/measurement/internal/u4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic c:Z

.field public final synthetic d:Lcom/google/android/gms/measurement/internal/b5;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/b5;Ljava/util/concurrent/atomic/AtomicReference;Z)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/u4;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iput-boolean p3, p0, Lcom/google/android/gms/measurement/internal/u4;->c:Z

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/u4;->d:Lcom/google/android/gms/measurement/internal/b5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/u4;->d:Lcom/google/android/gms/measurement/internal/b5;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->J()Lcom/google/android/gms/measurement/internal/f6;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/u4;->b:Ljava/util/concurrent/atomic/AtomicReference;

    iget-boolean v2, p0, Lcom/google/android/gms/measurement/internal/u4;->c:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/f6;->i0(Ljava/util/concurrent/atomic/AtomicReference;Z)V

    return-void
.end method
