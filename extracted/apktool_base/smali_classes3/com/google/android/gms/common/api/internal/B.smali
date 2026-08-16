.class public final Lcom/google/android/gms/common/api/internal/B;
.super LD0/I0;
.source "SourceFile"


# instance fields
.field public final c:LD0/s0;


# direct methods
.method public constructor <init>(LD0/s0;Lv1/l;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p2}, LD0/I0;-><init>(ILv1/l;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/B;->c:LD0/s0;

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
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/B;->c:LD0/s0;

    iget-object p1, p1, LD0/s0;->a:Lcom/google/android/gms/common/api/internal/h;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/h;->f()Z

    move-result p1

    return p1
.end method

.method public final g(Lcom/google/android/gms/common/api/internal/u;)[LB0/e;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/B;->c:LD0/s0;

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

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/B;->c:LD0/s0;

    iget-object v0, v0, LD0/s0;->a:Lcom/google/android/gms/common/api/internal/h;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/u;->w()Lcom/google/android/gms/common/api/a$f;

    move-result-object v1

    iget-object v2, p0, LD0/I0;->b:Lv1/l;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/api/internal/h;->d(Lcom/google/android/gms/common/api/a$b;Lv1/l;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/B;->c:LD0/s0;

    iget-object v0, v0, LD0/s0;->a:Lcom/google/android/gms/common/api/internal/h;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/h;->b()Lcom/google/android/gms/common/api/internal/f$a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/u;->y()Ljava/util/Map;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/B;->c:LD0/s0;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
