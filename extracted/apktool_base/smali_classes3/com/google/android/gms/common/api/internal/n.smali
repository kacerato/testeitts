.class public final Lcom/google/android/gms/common/api/internal/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/r;


# instance fields
.field public final a:Lcom/google/android/gms/common/api/internal/s;

.field public b:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/s;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/n;->b:Z

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/n;->a:Lcom/google/android/gms/common/api/internal/s;

    return-void
.end method

.method public static bridge synthetic i(Lcom/google/android/gms/common/api/internal/n;)Lcom/google/android/gms/common/api/internal/s;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/n;->a:Lcom/google/android/gms/common/api/internal/s;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public final b()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/n;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/n;->b:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/n;->a:Lcom/google/android/gms/common/api/internal/s;

    new-instance v1, LD0/A;

    invoke-direct {v1, p0, p0}, LD0/A;-><init>(Lcom/google/android/gms/common/api/internal/n;Lcom/google/android/gms/common/api/internal/r;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/s;->u(LD0/V;)V

    :cond_0
    return-void
.end method

.method public final c(LB0/c;Lcom/google/android/gms/common/api/a;Z)V
    .locals 0

    return-void
.end method

.method public final d(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/n;->a:Lcom/google/android/gms/common/api/internal/s;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/s;->t(LB0/c;)V

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/n;->b:Z

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/n;->a:Lcom/google/android/gms/common/api/internal/s;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/s;->s:LD0/j0;

    invoke-interface {v1, p1, v0}, LD0/j0;->a(IZ)V

    return-void
.end method

.method public final e(Lcom/google/android/gms/common/api/internal/b$a;)Lcom/google/android/gms/common/api/internal/b$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/n;->g(Lcom/google/android/gms/common/api/internal/b$a;)Lcom/google/android/gms/common/api/internal/b$a;

    return-object p1
.end method

.method public final f()Z
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/n;->b:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/n;->a:Lcom/google/android/gms/common/api/internal/s;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/s;->r:Lcom/google/android/gms/common/api/internal/q;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/q;->z:Ljava/util/Set;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iput-boolean v1, p0, Lcom/google/android/gms/common/api/internal/n;->b:Z

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LD0/J0;

    invoke-virtual {v1}, LD0/J0;->k()V

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    return v0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/n;->a:Lcom/google/android/gms/common/api/internal/s;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/common/api/internal/s;->t(LB0/c;)V

    return v1
.end method

.method public final g(Lcom/google/android/gms/common/api/internal/b$a;)Lcom/google/android/gms/common/api/internal/b$a;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/n;->a:Lcom/google/android/gms/common/api/internal/s;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/s;->r:Lcom/google/android/gms/common/api/internal/q;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/q;->A:LD0/L0;

    invoke-virtual {v0, p1}, LD0/L0;->a(Lcom/google/android/gms/common/api/internal/BasePendingResult;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/n;->a:Lcom/google/android/gms/common/api/internal/s;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/s;->r:Lcom/google/android/gms/common/api/internal/q;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/b$a;->y()Lcom/google/android/gms/common/api/a$c;

    move-result-object v1

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/q;->r:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/a$f;

    const-string v1, "Appropriate Api was not requested."

    invoke-static {v0, v1}, LG0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/a$f;->isConnected()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/n;->a:Lcom/google/android/gms/common/api/internal/s;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/s;->k:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/b$a;->y()Lcom/google/android/gms/common/api/a$c;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/b$a;->b(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/b$a;->A(Lcom/google/android/gms/common/api/a$b;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/n;->a:Lcom/google/android/gms/common/api/internal/s;

    new-instance v1, Lcom/google/android/gms/common/api/internal/m;

    invoke-direct {v1, p0, p0}, Lcom/google/android/gms/common/api/internal/m;-><init>(Lcom/google/android/gms/common/api/internal/n;Lcom/google/android/gms/common/api/internal/r;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/s;->u(LD0/V;)V

    :goto_0
    return-object p1
.end method

.method public final h(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public final j()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/n;->b:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/n;->b:Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/n;->a:Lcom/google/android/gms/common/api/internal/s;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/s;->r:Lcom/google/android/gms/common/api/internal/q;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/q;->A:LD0/L0;

    invoke-virtual {v0}, LD0/L0;->b()V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/n;->f()Z

    :cond_0
    return-void
.end method
