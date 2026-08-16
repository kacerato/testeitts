.class public final Lcom/google/android/gms/measurement/internal/Q2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/internal/measurement/U;

.field public final synthetic c:Landroid/content/ServiceConnection;

.field public final synthetic d:Lcom/google/android/gms/measurement/internal/R2;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/R2;Lcom/google/android/gms/internal/measurement/U;Landroid/content/ServiceConnection;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/Q2;->b:Lcom/google/android/gms/internal/measurement/U;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/Q2;->c:Landroid/content/ServiceConnection;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/Q2;->d:Lcom/google/android/gms/measurement/internal/R2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/Q2;->d:Lcom/google/android/gms/measurement/internal/R2;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/R2;->d:Lcom/google/android/gms/measurement/internal/S2;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/S2;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/R2;->a()Ljava/lang/String;

    move-result-object v0

    const-string v4, "package_name"

    invoke-virtual {v3, v4, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/Q2;->b:Lcom/google/android/gms/internal/measurement/U;

    const/4 v5, 0x0

    :try_start_0
    invoke-interface {v4, v3}, Lcom/google/android/gms/internal/measurement/U;->c0(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    const-string v3, "Install Referrer Service returned a null response"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v3, v5

    goto :goto_1

    :catch_0
    move-exception v2

    iget-object v3, v1, Lcom/google/android/gms/measurement/internal/S2;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v3

    const-string v4, "Exception occurred while retrieving the Install Referrer"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/S2;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-static {}, Lcom/google/android/gms/measurement/internal/p3;->q()V

    if-nez v3, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string v2, "install_begin_timestamp_seconds"

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v2, v6, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    cmp-long v2, v8, v6

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v2, "Service response is missing Install Referrer install timestamp"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_2
    const-string v2, "install_referrer"

    invoke-virtual {v3, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    goto/16 :goto_2

    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v4

    const-string v12, "InstallReferrer API result"

    invoke-virtual {v4, v12, v2}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->C()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v4

    const-string v12, "?"

    invoke-virtual {v12, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/google/android/gms/measurement/internal/m7;->s0(Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v2, "No campaign params defined in Install Referrer result"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_4
    sget-object v4, Lcom/google/android/gms/measurement/internal/e2;->i1:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v4, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    const-string v4, "referrer_click_timestamp_server_seconds"

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    mul-long/2addr v3, v10

    cmp-long v5, v3, v6

    if-lez v5, :cond_6

    const-string v5, "click_timestamp"

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    :cond_6
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->x()Lcom/google/android/gms/measurement/internal/P2;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/P2;->g:Lcom/google/android/gms/measurement/internal/M2;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/M2;->a()J

    move-result-wide v3

    cmp-long v3, v8, v3

    if-nez v3, :cond_7

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v3

    const-string v4, "Logging Install Referrer campaign from module while it may have already been logged."

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->g()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->x()Lcom/google/android/gms/measurement/internal/P2;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/P2;->g:Lcom/google/android/gms/measurement/internal/M2;

    invoke-virtual {v3, v8, v9}, Lcom/google/android/gms/measurement/internal/M2;->b(J)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v3

    const-string v4, "Logging Install Referrer campaign from gmscore with "

    const-string v5, "referrer API v2"

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v3, "_cis"

    invoke-virtual {v2, v3, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->B()Lcom/google/android/gms/measurement/internal/b5;

    move-result-object v3

    const-string v4, "auto"

    const-string v5, "_cmp"

    invoke-virtual {v3, v4, v5, v2, v0}, Lcom/google/android/gms/measurement/internal/b5;->w(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    :goto_2
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v2, "No referrer defined in Install Referrer response"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/Q2;->c:Landroid/content/ServiceConnection;

    invoke-static {}, LS0/b;->b()LS0/b;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->d()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, LS0/b;->c(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    return-void
.end method
