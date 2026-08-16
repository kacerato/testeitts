.class public final LD0/m0;
.super LD0/U0;
.source "SourceFile"


# instance fields
.field public g:Lv1/l;


# direct methods
.method public constructor <init>(LD0/i;)V
    .locals 1

    invoke-static {}, LB0/h;->x()LB0/h;

    move-result-object v0

    invoke-direct {p0, p1, v0}, LD0/U0;-><init>(LD0/i;LB0/h;)V

    new-instance p1, Lv1/l;

    invoke-direct {p1}, Lv1/l;-><init>()V

    iput-object p1, p0, LD0/m0;->g:Lv1/l;

    iget-object p1, p0, LD0/h;->b:LD0/i;

    const-string v0, "GmsAvailabilityHelper"

    invoke-interface {p1, v0, p0}, LD0/i;->c(Ljava/lang/String;LD0/h;)V

    return-void
.end method

.method public static u(Landroid/app/Activity;)LD0/m0;
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {p0}, LD0/h;->d(Landroid/app/Activity;)LD0/i;

    move-result-object p0

    const-string v0, "GmsAvailabilityHelper"

    const-class v1, LD0/m0;

    invoke-interface {p0, v0, v1}, LD0/i;->a(Ljava/lang/String;Ljava/lang/Class;)LD0/h;

    move-result-object v0

    check-cast v0, LD0/m0;

    if-eqz v0, :cond_1

    iget-object p0, v0, LD0/m0;->g:Lv1/l;

    invoke-virtual {p0}, Lv1/l;->a()Lv1/k;

    move-result-object p0

    invoke-virtual {p0}, Lv1/k;->u()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lv1/l;

    invoke-direct {p0}, Lv1/l;-><init>()V

    iput-object p0, v0, LD0/m0;->g:Lv1/l;

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, LD0/m0;

    invoke-direct {v0, p0}, LD0/m0;-><init>(LD0/i;)V

    return-object v0
.end method


# virtual methods
.method public final h()V
    .locals 3

    invoke-super {p0}, LD0/h;->h()V

    iget-object v0, p0, LD0/m0;->g:Lv1/l;

    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v2, "Host activity was destroyed before Google Play services could be made available."

    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lv1/l;->d(Ljava/lang/Exception;)Z

    return-void
.end method

.method public final n(LB0/c;I)V
    .locals 4

    invoke-virtual {p1}, LB0/c;->t()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p2, "Error connecting to Google Play services"

    :cond_0
    iget-object v0, p0, LD0/m0;->g:Lv1/l;

    new-instance v1, Lcom/google/android/gms/common/api/ApiException;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, LB0/c;->n()I

    move-result v3

    invoke-direct {v2, p1, p2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(LB0/c;Ljava/lang/String;I)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lv1/l;->b(Ljava/lang/Exception;)V

    return-void
.end method

.method public final o()V
    .locals 4

    iget-object v0, p0, LD0/h;->b:LD0/i;

    invoke-interface {v0}, LD0/i;->b()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, LD0/m0;->g:Lv1/l;

    new-instance v1, Lcom/google/android/gms/common/api/ApiException;

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lv1/l;->d(Ljava/lang/Exception;)Z

    return-void

    :cond_0
    iget-object v1, p0, LD0/U0;->f:LB0/h;

    invoke-virtual {v1, v0}, LB0/h;->j(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, LD0/m0;->g:Lv1/l;

    invoke-virtual {v0, v1}, Lv1/l;->e(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object v2, p0, LD0/m0;->g:Lv1/l;

    invoke-virtual {v2}, Lv1/l;->a()Lv1/k;

    move-result-object v2

    invoke-virtual {v2}, Lv1/k;->u()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, LB0/c;

    invoke-direct {v2, v0, v1}, LB0/c;-><init>(ILandroid/app/PendingIntent;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, LD0/U0;->t(LB0/c;I)V

    :cond_2
    return-void
.end method

.method public final v()Lv1/k;
    .locals 1

    iget-object v0, p0, LD0/m0;->g:Lv1/l;

    invoke-virtual {v0}, Lv1/l;->a()Lv1/k;

    move-result-object v0

    return-object v0
.end method
