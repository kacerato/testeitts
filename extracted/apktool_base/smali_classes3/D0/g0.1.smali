.class public final LD0/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LG0/f$c;
.implements LD0/A0;


# instance fields
.field public final a:Lcom/google/android/gms/common/api/a$f;

.field public final b:LD0/c;

.field public c:LG0/r;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public d:Ljava/util/Set;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public e:Z

.field public final synthetic f:Lcom/google/android/gms/common/api/internal/d;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/d;Lcom/google/android/gms/common/api/a$f;LD0/c;)V
    .locals 0

    iput-object p1, p0, LD0/g0;->f:Lcom/google/android/gms/common/api/internal/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, LD0/g0;->c:LG0/r;

    iput-object p1, p0, LD0/g0;->d:Ljava/util/Set;

    const/4 p1, 0x0

    iput-boolean p1, p0, LD0/g0;->e:Z

    iput-object p2, p0, LD0/g0;->a:Lcom/google/android/gms/common/api/a$f;

    iput-object p3, p0, LD0/g0;->b:LD0/c;

    return-void
.end method

.method public static bridge synthetic e(LD0/g0;)Lcom/google/android/gms/common/api/a$f;
    .locals 0

    iget-object p0, p0, LD0/g0;->a:Lcom/google/android/gms/common/api/a$f;

    return-object p0
.end method

.method public static bridge synthetic f(LD0/g0;)LD0/c;
    .locals 0

    iget-object p0, p0, LD0/g0;->b:LD0/c;

    return-object p0
.end method

.method public static bridge synthetic g(LD0/g0;Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, LD0/g0;->e:Z

    return-void
.end method

.method public static bridge synthetic h(LD0/g0;)V
    .locals 0

    invoke-virtual {p0}, LD0/g0;->i()V

    return-void
.end method


# virtual methods
.method public final a(LG0/r;Ljava/util/Set;)V
    .locals 1
    .param p1    # LG0/r;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Set;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, LD0/g0;->c:LG0/r;

    iput-object p2, p0, LD0/g0;->d:Ljava/util/Set;

    invoke-virtual {p0}, LD0/g0;->i()V

    return-void

    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string p2, "GoogleApiManager"

    const-string v0, "Received null response from onSignInSuccess"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, LB0/c;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, LB0/c;-><init>(I)V

    invoke-virtual {p0, p1}, LD0/g0;->c(LB0/c;)V

    return-void
.end method

.method public final b(LB0/c;)V
    .locals 2
    .param p1    # LB0/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, LD0/g0;->f:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->o(Lcom/google/android/gms/common/api/internal/d;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, LD0/f0;

    invoke-direct {v1, p0, p1}, LD0/f0;-><init>(LD0/g0;LB0/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final c(LB0/c;)V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, LD0/g0;->f:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->C(Lcom/google/android/gms/common/api/internal/d;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, LD0/g0;->b:LD0/c;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/u;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/u;->J(LB0/c;)V

    :cond_0
    return-void
.end method

.method public final d(I)V
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, LD0/g0;->f:Lcom/google/android/gms/common/api/internal/d;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/d;->C(Lcom/google/android/gms/common/api/internal/d;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, LD0/g0;->b:LD0/c;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/u;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/u;->O(Lcom/google/android/gms/common/api/internal/u;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, LB0/c;

    const/16 v1, 0x11

    invoke-direct {p1, v1}, LB0/c;-><init>(I)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/u;->J(LB0/c;)V

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/api/internal/u;->k(I)V

    :cond_1
    return-void
.end method

.method public final i()V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-boolean v0, p0, LD0/g0;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LD0/g0;->c:LG0/r;

    if-eqz v0, :cond_0

    iget-object v1, p0, LD0/g0;->a:Lcom/google/android/gms/common/api/a$f;

    iget-object v2, p0, LD0/g0;->d:Ljava/util/Set;

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/common/api/a$f;->t(LG0/r;Ljava/util/Set;)V

    :cond_0
    return-void
.end method
