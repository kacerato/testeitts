.class public final LD0/x;
.super LD0/U0;
.source "SourceFile"


# instance fields
.field public final g:Landroidx/collection/ArraySet;

.field public final h:Lcom/google/android/gms/common/api/internal/d;


# direct methods
.method public constructor <init>(LD0/i;Lcom/google/android/gms/common/api/internal/d;LB0/h;)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0, p1, p3}, LD0/U0;-><init>(LD0/i;LB0/h;)V

    new-instance p1, Landroidx/collection/ArraySet;

    invoke-direct {p1}, Landroidx/collection/ArraySet;-><init>()V

    iput-object p1, p0, LD0/x;->g:Landroidx/collection/ArraySet;

    iput-object p2, p0, LD0/x;->h:Lcom/google/android/gms/common/api/internal/d;

    iget-object p1, p0, LD0/h;->b:LD0/i;

    const-string p2, "ConnectionlessLifecycleHelper"

    invoke-interface {p1, p2, p0}, LD0/i;->c(Ljava/lang/String;LD0/h;)V

    return-void
.end method

.method public static v(Landroid/app/Activity;Lcom/google/android/gms/common/api/internal/d;LD0/c;)V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-static {p0}, LD0/h;->d(Landroid/app/Activity;)LD0/i;

    move-result-object p0

    const-string v0, "ConnectionlessLifecycleHelper"

    const-class v1, LD0/x;

    invoke-interface {p0, v0, v1}, LD0/i;->a(Ljava/lang/String;Ljava/lang/Class;)LD0/h;

    move-result-object v0

    check-cast v0, LD0/x;

    if-nez v0, :cond_0

    new-instance v0, LD0/x;

    invoke-static {}, LB0/h;->x()LB0/h;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, LD0/x;-><init>(LD0/i;Lcom/google/android/gms/common/api/internal/d;LB0/h;)V

    :cond_0
    const-string p0, "ApiKey cannot be null"

    invoke-static {p2, p0}, LG0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v0, LD0/x;->g:Landroidx/collection/ArraySet;

    invoke-virtual {p0, p2}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/d;->b(LD0/x;)V

    return-void
.end method


# virtual methods
.method public final i()V
    .locals 0

    invoke-super {p0}, LD0/h;->i()V

    invoke-virtual {p0}, LD0/x;->w()V

    return-void
.end method

.method public final k()V
    .locals 0

    invoke-super {p0}, LD0/U0;->k()V

    invoke-virtual {p0}, LD0/x;->w()V

    return-void
.end method

.method public final l()V
    .locals 1

    invoke-super {p0}, LD0/U0;->l()V

    iget-object v0, p0, LD0/x;->h:Lcom/google/android/gms/common/api/internal/d;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/d;->c(LD0/x;)V

    return-void
.end method

.method public final n(LB0/c;I)V
    .locals 1

    iget-object v0, p0, LD0/x;->h:Lcom/google/android/gms/common/api/internal/d;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/d;->I(LB0/c;I)V

    return-void
.end method

.method public final o()V
    .locals 1

    iget-object v0, p0, LD0/x;->h:Lcom/google/android/gms/common/api/internal/d;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/d;->J()V

    return-void
.end method

.method public final u()Landroidx/collection/ArraySet;
    .locals 1

    iget-object v0, p0, LD0/x;->g:Landroidx/collection/ArraySet;

    return-object v0
.end method

.method public final w()V
    .locals 1

    iget-object v0, p0, LD0/x;->g:Landroidx/collection/ArraySet;

    invoke-virtual {v0}, Landroidx/collection/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LD0/x;->h:Lcom/google/android/gms/common/api/internal/d;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/d;->b(LD0/x;)V

    :cond_0
    return-void
.end method
