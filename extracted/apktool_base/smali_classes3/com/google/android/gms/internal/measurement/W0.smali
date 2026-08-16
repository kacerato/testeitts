.class public final Lcom/google/android/gms/internal/measurement/W0;
.super Lcom/google/android/gms/internal/measurement/w1;
.source "SourceFile"


# instance fields
.field public final synthetic f:Landroid/content/Context;

.field public final synthetic g:Landroid/os/Bundle;

.field public final synthetic h:Lcom/google/android/gms/internal/measurement/I1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/I1;Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/W0;->f:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/W0;->g:Landroid/os/Bundle;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/W0;->h:Lcom/google/android/gms/internal/measurement/I1;

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/measurement/w1;-><init>(Lcom/google/android/gms/internal/measurement/I1;Z)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 17

    move-object/from16 v1, p0

    const-string v0, "com.google.android.gms.measurement.dynamite"

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/W0;->f:Landroid/content/Context;

    invoke-static {v4}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/d3;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "google_analytics_force_disable_updates"

    invoke-static {v4}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/d3;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_0
    :goto_0
    invoke-static {v6, v7, v5}, Lcom/google/android/gms/measurement/internal/d3;->c(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    iget-object v6, v1, Lcom/google/android/gms/internal/measurement/W0;->h:Lcom/google/android/gms/internal/measurement/I1;

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    move v7, v3

    goto :goto_1

    :cond_2
    move v7, v2

    :goto_1
    invoke-virtual {v6, v4, v7}, Lcom/google/android/gms/internal/measurement/I1;->x(Landroid/content/Context;Z)Lcom/google/android/gms/internal/measurement/w0;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/measurement/I1;->r(Lcom/google/android/gms/internal/measurement/w0;)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/I1;->q()Lcom/google/android/gms/internal/measurement/w0;

    move-result-object v7

    if-nez v7, :cond_3

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/I1;->o()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Failed to connect to measurement client."

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-static {v4, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    invoke-static {v4, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v9, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    if-ge v0, v7, :cond_5

    :cond_4
    move v14, v3

    goto :goto_2

    :cond_5
    move v14, v2

    :goto_2
    new-instance v0, Lcom/google/android/gms/internal/measurement/I0;

    int-to-long v12, v8

    iget-object v15, v1, Lcom/google/android/gms/internal/measurement/W0;->g:Landroid/os/Bundle;

    invoke-static {v4}, Lcom/google/android/gms/measurement/internal/d3;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v16

    const-wide/32 v10, 0x1fbd0

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/google/android/gms/internal/measurement/I0;-><init>(JJZLandroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/measurement/I1;->q()Lcom/google/android/gms/internal/measurement/w0;

    move-result-object v5

    invoke-static {v5}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/measurement/w0;

    invoke-static {v4}, LW0/f;->l0(Ljava/lang/Object;)LW0/d;

    move-result-object v4

    iget-wide v6, v1, Lcom/google/android/gms/internal/measurement/w1;->b:J

    invoke-interface {v5, v4, v0, v6, v7}, Lcom/google/android/gms/internal/measurement/w0;->initialize(LW0/d;Lcom/google/android/gms/internal/measurement/I0;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_3
    iget-object v4, v1, Lcom/google/android/gms/internal/measurement/W0;->h:Lcom/google/android/gms/internal/measurement/I1;

    invoke-virtual {v4, v0, v3, v2}, Lcom/google/android/gms/internal/measurement/I1;->n(Ljava/lang/Exception;ZZ)V

    return-void
.end method
