.class public abstract LD0/U0;
.super LD0/h;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public volatile c:Z

.field public final d:Ljava/util/concurrent/atomic/AtomicReference;

.field public final e:Landroid/os/Handler;

.field public final f:LB0/h;


# direct methods
.method public constructor <init>(LD0/i;LB0/h;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0, p1}, LD0/h;-><init>(LD0/i;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, LD0/U0;->d:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Lg1/u;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Lg1/u;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, LD0/U0;->e:Landroid/os/Handler;

    iput-object p2, p0, LD0/U0;->f:LB0/h;

    return-void
.end method

.method public static final q(LD0/R0;)I
    .locals 0
    .param p0    # LD0/R0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, LD0/R0;->a()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic r(LD0/U0;LB0/c;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, LD0/U0;->m(LB0/c;I)V

    return-void
.end method

.method public static bridge synthetic s(LD0/U0;)V
    .locals 0

    invoke-virtual {p0}, LD0/U0;->p()V

    return-void
.end method


# virtual methods
.method public final f(IILandroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, LD0/U0;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LD0/R0;

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, LD0/U0;->f:LB0/h;

    invoke-virtual {p0}, LD0/h;->b()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p1, p2}, LB0/h;->j(Landroid/content/Context;)I

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, LD0/U0;->p()V

    return-void

    :cond_1
    if-eqz v0, :cond_6

    invoke-virtual {v0}, LD0/R0;->b()LB0/c;

    move-result-object p2

    invoke-virtual {p2}, LB0/c;->n()I

    move-result p2

    const/16 p3, 0x12

    if-ne p2, p3, :cond_5

    if-ne p1, p3, :cond_5

    goto :goto_1

    :cond_2
    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    invoke-virtual {p0}, LD0/U0;->p()V

    return-void

    :cond_3
    if-nez p2, :cond_5

    if-eqz v0, :cond_6

    const/16 p1, 0xd

    if-eqz p3, :cond_4

    const-string p2, "<<ResolutionFailureErrorDetail>>"

    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    :cond_4
    new-instance p2, LB0/c;

    invoke-virtual {v0}, LD0/R0;->b()LB0/c;

    move-result-object p3

    invoke-virtual {p3}, LB0/c;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v1, 0x0

    invoke-direct {p2, p1, v1, p3}, LB0/c;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    invoke-static {v0}, LD0/U0;->q(LD0/R0;)I

    move-result p1

    invoke-virtual {p0, p2, p1}, LD0/U0;->m(LB0/c;I)V

    return-void

    :cond_5
    :goto_0
    if-eqz v0, :cond_6

    invoke-virtual {v0}, LD0/R0;->b()LB0/c;

    move-result-object p1

    invoke-virtual {v0}, LD0/R0;->a()I

    move-result p2

    invoke-virtual {p0, p1, p2}, LD0/U0;->m(LB0/c;I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final g(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, LD0/h;->g(Landroid/os/Bundle;)V

    if-eqz p1, :cond_1

    iget-object v0, p0, LD0/U0;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v1, "resolving_error"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, LB0/c;

    const-string v2, "failed_status"

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "failed_resolution"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    invoke-direct {v1, v2, v3}, LB0/c;-><init>(ILandroid/app/PendingIntent;)V

    const-string v2, "failed_client_id"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    new-instance v2, LD0/R0;

    invoke-direct {v2, v1, p1}, LD0/R0;-><init>(LB0/c;I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final j(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, LD0/h;->j(Landroid/os/Bundle;)V

    iget-object v0, p0, LD0/U0;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LD0/R0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "resolving_error"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "failed_client_id"

    invoke-virtual {v0}, LD0/R0;->a()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0}, LD0/R0;->b()LB0/c;

    move-result-object v1

    invoke-virtual {v1}, LB0/c;->n()I

    move-result v1

    const-string v2, "failed_status"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0}, LD0/R0;->b()LB0/c;

    move-result-object v0

    invoke-virtual {v0}, LB0/c;->b0()Landroid/app/PendingIntent;

    move-result-object v0

    const-string v1, "failed_resolution"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method public k()V
    .locals 1

    invoke-super {p0}, LD0/h;->k()V

    const/4 v0, 0x1

    iput-boolean v0, p0, LD0/U0;->c:Z

    return-void
.end method

.method public l()V
    .locals 1

    invoke-super {p0}, LD0/h;->l()V

    const/4 v0, 0x0

    iput-boolean v0, p0, LD0/U0;->c:Z

    return-void
.end method

.method public final m(LB0/c;I)V
    .locals 2

    iget-object v0, p0, LD0/U0;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2}, LD0/U0;->n(LB0/c;I)V

    return-void
.end method

.method public abstract n(LB0/c;I)V
.end method

.method public abstract o()V
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    new-instance p1, LB0/c;

    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, LB0/c;-><init>(ILandroid/app/PendingIntent;)V

    iget-object v0, p0, LD0/U0;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LD0/R0;

    invoke-static {v0}, LD0/U0;->q(LD0/R0;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, LD0/U0;->m(LB0/c;I)V

    return-void
.end method

.method public final p()V
    .locals 2

    iget-object v0, p0, LD0/U0;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {p0}, LD0/U0;->o()V

    return-void
.end method

.method public final t(LB0/c;I)V
    .locals 1

    new-instance v0, LD0/R0;

    invoke-direct {v0, p1, p2}, LD0/R0;-><init>(LB0/c;I)V

    :cond_0
    iget-object p1, p0, LD0/U0;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p2, 0x0

    invoke-static {p1, p2, v0}, Landroidx/lifecycle/c;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p1, p0, LD0/U0;->e:Landroid/os/Handler;

    new-instance p2, LD0/T0;

    invoke-direct {p2, p0, v0}, LD0/T0;-><init>(LD0/U0;LD0/R0;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void
.end method
