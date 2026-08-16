.class public final LD0/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/l$b;


# instance fields
.field public final synthetic e:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f:LD0/q;

.field public final synthetic g:Lcom/google/android/gms/common/api/internal/q;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/q;Ljava/util/concurrent/atomic/AtomicReference;LD0/q;)V
    .locals 0

    iput-object p1, p0, LD0/O;->g:Lcom/google/android/gms/common/api/internal/q;

    iput-object p2, p0, LD0/O;->e:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, LD0/O;->f:LD0/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final h(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, LD0/O;->e:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/l;

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/l;

    iget-object v0, p0, LD0/O;->f:LD0/q;

    iget-object v1, p0, LD0/O;->g:Lcom/google/android/gms/common/api/internal/q;

    const/4 v2, 0x1

    invoke-static {v1, p1, v0, v2}, Lcom/google/android/gms/common/api/internal/q;->O(Lcom/google/android/gms/common/api/internal/q;Lcom/google/android/gms/common/api/l;LD0/q;Z)V

    return-void
.end method

.method public final k(I)V
    .locals 0

    return-void
.end method
