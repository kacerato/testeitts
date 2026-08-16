.class public final LD0/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/l$b;
.implements Lcom/google/android/gms/common/api/l$c;


# instance fields
.field public final synthetic e:Lcom/google/android/gms/common/api/internal/o;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/o;LD0/J;)V
    .locals 0

    iput-object p1, p0, LD0/K;->e:Lcom/google/android/gms/common/api/internal/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final h(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, LD0/K;->e:Lcom/google/android/gms/common/api/internal/o;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/o;->v(Lcom/google/android/gms/common/api/internal/o;)LG0/i;

    move-result-object p1

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LG0/i;

    iget-object p1, p0, LD0/K;->e:Lcom/google/android/gms/common/api/internal/o;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/o;->x(Lcom/google/android/gms/common/api/internal/o;)Ls1/f;

    move-result-object p1

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/f;

    new-instance v0, LD0/I;

    iget-object v1, p0, LD0/K;->e:Lcom/google/android/gms/common/api/internal/o;

    invoke-direct {v0, v1}, LD0/I;-><init>(Lcom/google/android/gms/common/api/internal/o;)V

    invoke-interface {p1, v0}, Ls1/f;->o(Lt1/f;)V

    return-void
.end method

.method public final k(I)V
    .locals 0

    return-void
.end method

.method public final t(LB0/c;)V
    .locals 1
    .param p1    # LB0/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, LD0/K;->e:Lcom/google/android/gms/common/api/internal/o;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/o;->z(Lcom/google/android/gms/common/api/internal/o;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, LD0/K;->e:Lcom/google/android/gms/common/api/internal/o;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/o;->I(Lcom/google/android/gms/common/api/internal/o;LB0/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, LD0/K;->e:Lcom/google/android/gms/common/api/internal/o;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/o;->A(Lcom/google/android/gms/common/api/internal/o;)V

    iget-object p1, p0, LD0/K;->e:Lcom/google/android/gms/common/api/internal/o;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/o;->E(Lcom/google/android/gms/common/api/internal/o;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    iget-object v0, p0, LD0/K;->e:Lcom/google/android/gms/common/api/internal/o;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/o;->C(Lcom/google/android/gms/common/api/internal/o;LB0/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object p1, p0, LD0/K;->e:Lcom/google/android/gms/common/api/internal/o;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/o;->z(Lcom/google/android/gms/common/api/internal/o;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_1
    iget-object v0, p0, LD0/K;->e:Lcom/google/android/gms/common/api/internal/o;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/o;->z(Lcom/google/android/gms/common/api/internal/o;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
