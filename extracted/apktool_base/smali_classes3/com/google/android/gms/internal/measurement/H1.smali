.class public final Lcom/google/android/gms/internal/measurement/H1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/internal/measurement/I1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/I1;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/H1;->b:Lcom/google/android/gms/internal/measurement/I1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/z1;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/gms/internal/measurement/z1;-><init>(Lcom/google/android/gms/internal/measurement/H1;Landroid/os/Bundle;Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/H1;->b:Lcom/google/android/gms/internal/measurement/I1;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/I1;->m(Lcom/google/android/gms/internal/measurement/w1;)V

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/F1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/F1;-><init>(Lcom/google/android/gms/internal/measurement/H1;Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/H1;->b:Lcom/google/android/gms/internal/measurement/I1;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/I1;->m(Lcom/google/android/gms/internal/measurement/w1;)V

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/C1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/C1;-><init>(Lcom/google/android/gms/internal/measurement/H1;Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/H1;->b:Lcom/google/android/gms/internal/measurement/I1;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/I1;->m(Lcom/google/android/gms/internal/measurement/w1;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/B1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/B1;-><init>(Lcom/google/android/gms/internal/measurement/H1;Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/H1;->b:Lcom/google/android/gms/internal/measurement/I1;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/I1;->m(Lcom/google/android/gms/internal/measurement/w1;)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/measurement/t0;

    invoke-direct {v0}, Lcom/google/android/gms/internal/measurement/t0;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/measurement/E1;

    invoke-direct {v1, p0, p1, v0}, Lcom/google/android/gms/internal/measurement/E1;-><init>(Lcom/google/android/gms/internal/measurement/H1;Landroid/app/Activity;Lcom/google/android/gms/internal/measurement/t0;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/H1;->b:Lcom/google/android/gms/internal/measurement/I1;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/measurement/I1;->m(Lcom/google/android/gms/internal/measurement/w1;)V

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/measurement/t0;->l0(J)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/A1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/A1;-><init>(Lcom/google/android/gms/internal/measurement/H1;Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/H1;->b:Lcom/google/android/gms/internal/measurement/I1;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/I1;->m(Lcom/google/android/gms/internal/measurement/w1;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/measurement/D1;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/measurement/D1;-><init>(Lcom/google/android/gms/internal/measurement/H1;Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/H1;->b:Lcom/google/android/gms/internal/measurement/I1;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/measurement/I1;->m(Lcom/google/android/gms/internal/measurement/w1;)V

    return-void
.end method
