.class public final Lcom/google/android/gms/common/api/internal/C;
.super LD0/I0;
.source "SourceFile"


# instance fields
.field public final c:Lcom/google/android/gms/common/api/internal/f$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/f$a;Lv1/l;)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p2}, LD0/I0;-><init>(ILv1/l;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/C;->c:Lcom/google/android/gms/common/api/internal/f$a;

    return-void
.end method


# virtual methods
.method public final bridge synthetic d(LD0/w;Z)V
    .locals 0
    .param p1    # LD0/w;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public final f(Lcom/google/android/gms/common/api/internal/u;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/u;->y()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/C;->c:Lcom/google/android/gms/common/api/internal/f$a;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LD0/s0;

    if-eqz p1, :cond_0

    iget-object p1, p1, LD0/s0;->a:Lcom/google/android/gms/common/api/internal/h;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/h;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final g(Lcom/google/android/gms/common/api/internal/u;)[LB0/e;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/u;->y()Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/C;->c:Lcom/google/android/gms/common/api/internal/f$a;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LD0/s0;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p1, LD0/s0;->a:Lcom/google/android/gms/common/api/internal/h;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/h;->c()[LB0/e;

    move-result-object p1

    return-object p1
.end method

.method public final h(Lcom/google/android/gms/common/api/internal/u;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/u;->y()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/C;->c:Lcom/google/android/gms/common/api/internal/f$a;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LD0/s0;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/u;->w()Lcom/google/android/gms/common/api/a$f;

    move-result-object p1

    iget-object v1, p0, LD0/I0;->b:Lv1/l;

    iget-object v2, v0, LD0/s0;->b:Lcom/google/android/gms/common/api/internal/k;

    invoke-virtual {v2, p1, v1}, Lcom/google/android/gms/common/api/internal/k;->b(Lcom/google/android/gms/common/api/a$b;Lv1/l;)V

    iget-object p1, v0, LD0/s0;->a:Lcom/google/android/gms/common/api/internal/h;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/h;->a()V

    return-void

    :cond_0
    iget-object p1, p0, LD0/I0;->b:Lv1/l;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lv1/l;->e(Ljava/lang/Object;)Z

    return-void
.end method
