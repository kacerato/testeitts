.class public final LD0/c1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD0/j0;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/common/api/internal/l;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/common/api/internal/l;LD0/b1;)V
    .locals 0

    iput-object p1, p0, LD0/c1;->a:Lcom/google/android/gms/common/api/internal/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IZ)V
    .locals 2

    iget-object v0, p0, LD0/c1;->a:Lcom/google/android/gms/common/api/internal/l;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/l;->w(Lcom/google/android/gms/common/api/internal/l;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, LD0/c1;->a:Lcom/google/android/gms/common/api/internal/l;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/l;->D(Lcom/google/android/gms/common/api/internal/l;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/l;->s(Lcom/google/android/gms/common/api/internal/l;)LB0/c;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/l;->s(Lcom/google/android/gms/common/api/internal/l;)LB0/c;

    move-result-object v0

    invoke-virtual {v0}, LB0/c;->u0()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, LD0/c1;->a:Lcom/google/android/gms/common/api/internal/l;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/google/android/gms/common/api/internal/l;->z(Lcom/google/android/gms/common/api/internal/l;Z)V

    iget-object p2, p0, LD0/c1;->a:Lcom/google/android/gms/common/api/internal/l;

    invoke-static {p2}, Lcom/google/android/gms/common/api/internal/l;->v(Lcom/google/android/gms/common/api/internal/l;)Lcom/google/android/gms/common/api/internal/s;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/common/api/internal/s;->k(I)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v0, p0, LD0/c1;->a:Lcom/google/android/gms/common/api/internal/l;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/l;->z(Lcom/google/android/gms/common/api/internal/l;Z)V

    iget-object v0, p0, LD0/c1;->a:Lcom/google/android/gms/common/api/internal/l;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/l;->A(Lcom/google/android/gms/common/api/internal/l;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    iget-object p1, p0, LD0/c1;->a:Lcom/google/android/gms/common/api/internal/l;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/l;->w(Lcom/google/android/gms/common/api/internal/l;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :goto_2
    iget-object p2, p0, LD0/c1;->a:Lcom/google/android/gms/common/api/internal/l;

    invoke-static {p2}, Lcom/google/android/gms/common/api/internal/l;->w(Lcom/google/android/gms/common/api/internal/l;)Ljava/util/concurrent/locks/Lock;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final b(LB0/c;)V
    .locals 1
    .param p1    # LB0/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, LD0/c1;->a:Lcom/google/android/gms/common/api/internal/l;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/l;->w(Lcom/google/android/gms/common/api/internal/l;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, LD0/c1;->a:Lcom/google/android/gms/common/api/internal/l;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/l;->x(Lcom/google/android/gms/common/api/internal/l;LB0/c;)V

    iget-object p1, p0, LD0/c1;->a:Lcom/google/android/gms/common/api/internal/l;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/l;->C(Lcom/google/android/gms/common/api/internal/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, LD0/c1;->a:Lcom/google/android/gms/common/api/internal/l;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/l;->w(Lcom/google/android/gms/common/api/internal/l;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, LD0/c1;->a:Lcom/google/android/gms/common/api/internal/l;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/l;->w(Lcom/google/android/gms/common/api/internal/l;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public final c(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, LD0/c1;->a:Lcom/google/android/gms/common/api/internal/l;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/l;->w(Lcom/google/android/gms/common/api/internal/l;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, LD0/c1;->a:Lcom/google/android/gms/common/api/internal/l;

    invoke-static {v0, p1}, Lcom/google/android/gms/common/api/internal/l;->B(Lcom/google/android/gms/common/api/internal/l;Landroid/os/Bundle;)V

    iget-object p1, p0, LD0/c1;->a:Lcom/google/android/gms/common/api/internal/l;

    sget-object v0, LB0/c;->E:LB0/c;

    invoke-static {p1, v0}, Lcom/google/android/gms/common/api/internal/l;->x(Lcom/google/android/gms/common/api/internal/l;LB0/c;)V

    iget-object p1, p0, LD0/c1;->a:Lcom/google/android/gms/common/api/internal/l;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/l;->C(Lcom/google/android/gms/common/api/internal/l;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, LD0/c1;->a:Lcom/google/android/gms/common/api/internal/l;

    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/l;->w(Lcom/google/android/gms/common/api/internal/l;)Ljava/util/concurrent/locks/Lock;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, LD0/c1;->a:Lcom/google/android/gms/common/api/internal/l;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/l;->w(Lcom/google/android/gms/common/api/internal/l;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
