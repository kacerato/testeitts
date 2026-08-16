.class public final Lcom/google/android/gms/measurement/internal/p2;
.super Lcom/google/android/gms/measurement/internal/h2;
.source "SourceFile"


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:J

.field public final i:J

.field public final j:J

.field public k:Ljava/util/List;

.field public l:Ljava/lang/String;

.field public m:I

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:J

.field public q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/p3;JJ)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/h2;-><init>(Lcom/google/android/gms/measurement/internal/p3;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/p2;->p:J

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/p2;->q:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/p2;->i:J

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/p2;->j:J

    return-void
.end method


# virtual methods
.method public final m()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final n()V
    .locals 11
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation runtime Lvm/d;
        value = {
            "appId",
            "appStore",
            "appName",
            "gmpAppId",
            "gaAppId"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/p2;->j:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/p2;->i:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "sdkVersion bundled with app, dynamiteVersion"

    invoke-virtual {v1, v4, v2, v3}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->d()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->d()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, ""

    const/high16 v5, -0x80000000

    const-string v6, "Unknown"

    const-string v7, "unknown"

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "PackageManager is null, app identity information might be inaccurate. appId"

    invoke-virtual {v0, v9, v8}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    move-object v8, v6

    goto/16 :goto_4

    :cond_1
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "Error retrieving app installer package name. appId"

    invoke-virtual {v0, v9, v8}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    if-nez v7, :cond_2

    const-string v0, "manual_install"

    move-object v7, v0

    goto :goto_1

    :cond_2
    const-string v0, "com.android.vending"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v7, v4

    :cond_3
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    :cond_4
    move-object v8, v6

    :goto_2
    :try_start_2
    iget-object v6, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget v5, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-object v0, v6

    move-object v6, v8

    goto :goto_3

    :catch_2
    move-object v0, v6

    :goto_3
    iget-object v8, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v8

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    const-string v10, "Error retrieving package info. appId, appName"

    invoke-virtual {v8, v10, v9, v6}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v8, v6

    move-object v6, v0

    :goto_4
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/p2;->c:Ljava/lang/String;

    iput-object v7, p0, Lcom/google/android/gms/measurement/internal/p2;->f:Ljava/lang/String;

    iput-object v6, p0, Lcom/google/android/gms/measurement/internal/p2;->d:Ljava/lang/String;

    iput v5, p0, Lcom/google/android/gms/measurement/internal/p2;->e:I

    iput-object v8, p0, Lcom/google/android/gms/measurement/internal/p2;->g:Ljava/lang/String;

    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/google/android/gms/measurement/internal/p2;->h:J

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->h()I

    move-result v5

    if-eqz v5, :cond_b

    const/4 v6, 0x1

    if-eq v5, v6, :cond_a

    const/4 v6, 0x3

    if-eq v5, v6, :cond_9

    const/4 v6, 0x4

    if-eq v5, v6, :cond_8

    const/4 v6, 0x6

    if-eq v5, v6, :cond_7

    const/4 v6, 0x7

    if-eq v5, v6, :cond_6

    const/16 v6, 0x8

    if-eq v5, v6, :cond_5

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/android/gms/measurement/internal/B2;->u()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v7

    const-string v8, "App measurement disabled"

    invoke-virtual {v7, v8}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/B2;->p()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v6

    const-string v7, "Invalid scion state in identity"

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/B2;->u()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v6

    const-string v7, "App measurement disabled due to denied storage consent"

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/B2;->u()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v6

    const-string v7, "App measurement disabled via the global data collection setting"

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/B2;->t()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v6

    const-string v7, "App measurement deactivated via resources. This method is being deprecated. Please refer to https://firebase.google.com/support/guides/disable-analytics"

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/B2;->u()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v6

    const-string v7, "App measurement disabled via the manifest"

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/B2;->u()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v6

    const-string v7, "App measurement disabled by setAnalyticsCollectionEnabled(false)"

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    goto :goto_5

    :cond_a
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/B2;->u()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v6

    const-string v7, "App measurement deactivated via the manifest"

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v6

    const-string v7, "App measurement collection enabled"

    invoke-virtual {v6, v7}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    :goto_5
    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/p2;->n:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p3;->c()Lcom/google/android/gms/measurement/internal/f;

    :try_start_3
    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p3;->d()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->H()Ljava/lang/String;

    move-result-object v0

    const-string v8, "google_app_id"

    invoke-static {v7, v8, v0}, Lcom/google/android/gms/measurement/internal/l5;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    goto :goto_6

    :cond_c
    move-object v4, v0

    :goto_6
    iput-object v4, p0, Lcom/google/android/gms/measurement/internal/p2;->n:Ljava/lang/String;

    if-nez v5, :cond_d

    invoke-virtual {v6}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v4, "App measurement enabled for app package, google app id"

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/p2;->c:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/measurement/internal/p2;->n:Ljava/lang/String;

    invoke-virtual {v0, v4, v5, v6}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_7

    :catch_3
    move-exception v0

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v4

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v5, "Fetching Google App Id failed with exception. appId"

    invoke-virtual {v4, v5, v1, v0}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_d
    :goto_7
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/p2;->k:Ljava/util/List;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->c()Lcom/google/android/gms/measurement/internal/f;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v1

    const-string v4, "analytics.safelisted_events"

    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/m;->K(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_e

    goto :goto_8

    :cond_e
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->t()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    const-string v4, "Safelisted event list is empty. Ignoring"

    invoke-virtual {v1, v4}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    goto :goto_9

    :cond_f
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->C()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v6

    const-string v7, "safelisted event"

    invoke-virtual {v6, v7, v5}, Lcom/google/android/gms/measurement/internal/m7;->u0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_10

    goto :goto_9

    :cond_11
    :goto_8
    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/p2;->k:Ljava/util/List;

    :goto_9
    if-eqz v2, :cond_12

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LV0/b;->a(Landroid/content/Context;)Z

    move-result v0

    iput v0, p0, Lcom/google/android/gms/measurement/internal/p2;->m:I

    return-void

    :cond_12
    iput v3, p0, Lcom/google/android/gms/measurement/internal/p2;->m:I

    return-void
.end method

.method public final o(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/o7;
    .locals 49
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    new-instance v42, Lcom/google/android/gms/measurement/internal/o7;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/p2;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/p2;->r()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/h2;->j()V

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/p2;->d:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/h2;->j()V

    iget v0, v1, Lcom/google/android/gms/measurement/internal/p2;->e:I

    int-to-long v6, v0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/h2;->j()V

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/p2;->f:Ljava/lang/String;

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v1, Lcom/google/android/gms/measurement/internal/p2;->f:Ljava/lang/String;

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/m;->A()J

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/h2;->j()V

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    iget-wide v9, v1, Lcom/google/android/gms/measurement/internal/p2;->h:J

    const-wide/16 v11, 0x0

    cmp-long v2, v9, v11

    const/4 v13, 0x0

    if-nez v2, :cond_4

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->C()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->d()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-static {v9}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-static {}, Lcom/google/android/gms/measurement/internal/m7;->C()Ljava/security/MessageDigest;

    move-result-object v14

    if-nez v14, :cond_0

    iget-object v0, v2, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v2, "Could not get MD5 instance"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    const-wide/16 v9, -0x1

    goto :goto_2

    :cond_0
    if-eqz v10, :cond_3

    :try_start_0
    invoke-virtual {v2, v9, v0}, Lcom/google/android/gms/measurement/internal/m7;->S(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v9}, LV0/d;->a(Landroid/content/Context;)LV0/c;

    move-result-object v0

    iget-object v9, v2, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/p3;->d()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const/16 v15, 0x40

    invoke-virtual {v0, v10, v15}, LV0/c;->f(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v0, :cond_1

    array-length v10, v0

    if-lez v10, :cond_1

    aget-object v0, v0, v13

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/m7;->D([B)J

    move-result-wide v15

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v9, "Could not get signatures"

    invoke-virtual {v0, v9}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v15, -0x1

    goto :goto_0

    :cond_2
    move-wide v15, v11

    :goto_0
    move-wide v9, v15

    goto :goto_2

    :goto_1
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    const-string v9, "Package name not found"

    invoke-virtual {v2, v9, v0}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    move-wide v9, v11

    :goto_2
    iput-wide v9, v1, Lcom/google/android/gms/measurement/internal/p2;->h:J

    :cond_4
    move-wide v14, v9

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->g()Z

    move-result v16

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->x()Lcom/google/android/gms/measurement/internal/P2;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/gms/measurement/internal/P2;->s:Z

    const/4 v9, 0x1

    xor-int/lit8 v17, v2, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->g()Z

    move-result v2

    const/4 v10, 0x0

    if-nez v2, :cond_5

    :catch_1
    :goto_3
    move-object v0, v10

    goto/16 :goto_4

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/T7;->a()Z

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v2

    sget-object v9, Lcom/google/android/gms/measurement/internal/e2;->I0:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v2, v10, v9}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->w()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v2, "Disabled IID for tests."

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v2, "com.google.firebase.analytics.FirebaseAnalytics"

    invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    :try_start_2
    const-string v2, "getInstance"

    const-class v9, Landroid/content/Context;

    filled-new-array {v9}, [Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v0, v2, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/p3;->d()Landroid/content/Context;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v2, v10, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-nez v2, :cond_8

    goto :goto_3

    :cond_8
    :try_start_3
    const-string v9, "getFirebaseInstanceId"

    invoke-virtual {v0, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    :catch_2
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->t()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v2, "Failed to retrieve Firebase Instance Id"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    goto :goto_3

    :catch_3
    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->s()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v2, "Failed to obtain Firebase Analytics instance"

    invoke-virtual {v0, v2}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    goto :goto_3

    :goto_4
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->x()Lcom/google/android/gms/measurement/internal/P2;

    move-result-object v9

    iget-object v9, v9, Lcom/google/android/gms/measurement/internal/P2;->f:Lcom/google/android/gms/measurement/internal/M2;

    move-wide/from16 v20, v14

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/M2;->a()J

    move-result-wide v13

    cmp-long v9, v13, v11

    if-nez v9, :cond_9

    iget-wide v13, v2, Lcom/google/android/gms/measurement/internal/p3;->D:J

    move-wide/from16 v24, v13

    goto :goto_5

    :cond_9
    iget-wide v10, v2, Lcom/google/android/gms/measurement/internal/p3;->D:J

    invoke-static {v10, v11, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    move-wide/from16 v24, v10

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/h2;->j()V

    iget v15, v1, Lcom/google/android/gms/measurement/internal/p2;->m:I

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/m;->M()Z

    move-result v26

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->x()Lcom/google/android/gms/measurement/internal/P2;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/P2;->p()Landroid/content/SharedPreferences;

    move-result-object v10

    const-string v11, "deferred_analytics_collection"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v27

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v10

    const-string v11, "google_analytics_default_allow_ad_personalization_signals"

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/google/android/gms/measurement/internal/m;->O(Ljava/lang/String;Z)Lcom/google/android/gms/measurement/internal/W3;

    move-result-object v10

    sget-object v12, Lcom/google/android/gms/measurement/internal/W3;->zzd:Lcom/google/android/gms/measurement/internal/W3;

    if-eq v10, v12, :cond_a

    const/4 v12, 0x1

    goto :goto_6

    :cond_a
    const/4 v12, 0x0

    :goto_6
    iget-wide v13, v1, Lcom/google/android/gms/measurement/internal/p2;->i:J

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v28

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/p2;->k:Ljava/util/List;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->x()Lcom/google/android/gms/measurement/internal/P2;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/P2;->w()Lcom/google/android/gms/measurement/internal/Z3;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/Z3;->l()Ljava/lang/String;

    move-result-object v29

    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/p2;->l:Ljava/lang/String;

    if-nez v10, :cond_b

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->C()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/m7;->l0()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/google/android/gms/measurement/internal/p2;->l:Ljava/lang/String;

    :cond_b
    iget-object v10, v1, Lcom/google/android/gms/measurement/internal/p2;->l:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->x()Lcom/google/android/gms/measurement/internal/P2;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Lcom/google/android/gms/measurement/internal/P2;->w()Lcom/google/android/gms/measurement/internal/Z3;

    move-result-object v9

    move-object/from16 v30, v10

    sget-object v10, Lcom/google/android/gms/measurement/internal/Y3;->zzb:Lcom/google/android/gms/measurement/internal/Y3;

    invoke-virtual {v9, v10}, Lcom/google/android/gms/measurement/internal/Z3;->o(Lcom/google/android/gms/measurement/internal/Y3;)Z

    move-result v9

    if-nez v9, :cond_c

    move-wide/from16 v32, v13

    const-wide/16 v22, 0x0

    const/16 v34, 0x0

    move-object v14, v12

    goto :goto_8

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    iget-wide v9, v1, Lcom/google/android/gms/measurement/internal/p2;->p:J

    const-wide/16 v22, 0x0

    cmp-long v9, v9, v22

    if-nez v9, :cond_d

    move-wide/from16 v32, v13

    move-object v14, v12

    goto :goto_7

    :cond_d
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->e()LT0/g;

    move-result-object v9

    invoke-interface {v9}, LT0/g;->a()J

    move-result-wide v9

    move-wide/from16 v32, v13

    move-object v14, v12

    iget-wide v12, v1, Lcom/google/android/gms/measurement/internal/p2;->p:J

    sub-long/2addr v9, v12

    iget-object v12, v1, Lcom/google/android/gms/measurement/internal/p2;->o:Ljava/lang/String;

    if-eqz v12, :cond_e

    const-wide/32 v12, 0x5265c00

    cmp-long v9, v9, v12

    if-lez v9, :cond_e

    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/p2;->q:Ljava/lang/String;

    if-nez v9, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/p2;->p()V

    :cond_e
    :goto_7
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/p2;->o:Ljava/lang/String;

    if-nez v9, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/p2;->p()V

    :cond_f
    iget-object v9, v1, Lcom/google/android/gms/measurement/internal/p2;->o:Ljava/lang/String;

    move-object/from16 v34, v9

    :goto_8
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/m;->P()Z

    move-result v35

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->C()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/measurement/internal/p2;->q()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v2, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/p3;->d()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    if-nez v12, :cond_10

    move-wide/from16 v43, v22

    const/4 v12, 0x0

    goto :goto_b

    :cond_10
    :try_start_4
    invoke-virtual {v10}, Lcom/google/android/gms/measurement/internal/p3;->d()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, LV0/d;->a(Landroid/content/Context;)LV0/c;

    move-result-object v10
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    const/4 v12, 0x0

    :try_start_5
    invoke-virtual {v10, v9, v12}, LV0/c;->c(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    if-eqz v10, :cond_11

    iget v2, v10, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_a

    :cond_11
    :goto_9
    move v2, v12

    goto :goto_a

    :catch_4
    const/4 v12, 0x0

    :catch_5
    iget-object v2, v2, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->c()Lcom/google/android/gms/measurement/internal/f;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->u()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    const-string v10, "PackageManager failed to find running app: app_id"

    invoke-virtual {v2, v10, v9}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_9

    :goto_a
    int-to-long v9, v2

    move-wide/from16 v43, v9

    :goto_b
    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->x()Lcom/google/android/gms/measurement/internal/P2;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/P2;->w()Lcom/google/android/gms/measurement/internal/Z3;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/Z3;->b()I

    move-result v36

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->x()Lcom/google/android/gms/measurement/internal/P2;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/P2;->u()Lcom/google/android/gms/measurement/internal/A;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/A;->e()Ljava/lang/String;

    move-result-object v45

    invoke-static {}, Lcom/google/android/gms/internal/measurement/x7;->a()Z

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v9

    sget-object v10, Lcom/google/android/gms/measurement/internal/e2;->R0:Lcom/google/android/gms/measurement/internal/d2;

    const/4 v13, 0x0

    invoke-virtual {v9, v13, v10}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->C()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/m7;->I()I

    move-result v9

    move/from16 v46, v9

    goto :goto_c

    :cond_12
    move/from16 v46, v12

    :goto_c
    invoke-static {}, Lcom/google/android/gms/internal/measurement/x7;->a()Z

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v9

    invoke-virtual {v9, v13, v10}, Lcom/google/android/gms/measurement/internal/m;->H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)Z

    move-result v9

    if-eqz v9, :cond_13

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->C()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/m7;->J()J

    move-result-wide v9

    move-wide/from16 v47, v9

    goto :goto_d

    :cond_13
    move-wide/from16 v47, v22

    :goto_d
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/m;->R()Ljava/lang/String;

    move-result-object v37

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v2

    const/4 v9, 0x1

    invoke-virtual {v2, v11, v9}, Lcom/google/android/gms/measurement/internal/m;->O(Ljava/lang/String;Z)Lcom/google/android/gms/measurement/internal/W3;

    move-result-object v2

    new-instance v9, Lcom/google/android/gms/measurement/internal/f1;

    invoke-direct {v9, v2}, Lcom/google/android/gms/measurement/internal/f1;-><init>(Lcom/google/android/gms/measurement/internal/W3;)V

    invoke-virtual {v9}, Lcom/google/android/gms/measurement/internal/f1;->b()Ljava/lang/String;

    move-result-object v38

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    iget-wide v9, v2, Lcom/google/android/gms/measurement/internal/p3;->D:J

    move-wide/from16 v39, v9

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->N()Lcom/google/android/gms/measurement/internal/i5;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i5;->q()Lcom/google/android/gms/internal/measurement/x3;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/measurement/x3;->N1()I

    move-result v41

    const-wide/32 v9, 0x1fbd0

    move-object/from16 v2, v42

    move-object/from16 v31, v14

    move-wide/from16 v11, v20

    move-object/from16 v13, p1

    move/from16 v14, v16

    move/from16 v19, v15

    move/from16 v15, v17

    move-object/from16 v16, v0

    move-wide/from16 v17, v24

    move/from16 v20, v26

    move/from16 v21, v27

    move-object/from16 v22, v28

    move-wide/from16 v23, v32

    move-object/from16 v25, v31

    move-object/from16 v26, v29

    move-object/from16 v27, v30

    move-object/from16 v28, v34

    move/from16 v29, v35

    move-wide/from16 v30, v43

    move/from16 v32, v36

    move-object/from16 v33, v45

    move/from16 v34, v46

    move-wide/from16 v35, v47

    invoke-direct/range {v2 .. v41}, Lcom/google/android/gms/measurement/internal/o7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJLjava/lang/String;ZZLjava/lang/String;JIZZLjava/lang/Boolean;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;JI)V

    return-object v42
.end method

.method public final p()V
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->x()Lcom/google/android/gms/measurement/internal/P2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/P2;->w()Lcom/google/android/gms/measurement/internal/Z3;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/measurement/internal/Y3;->zzb:Lcom/google/android/gms/measurement/internal/Y3;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/Z3;->o(Lcom/google/android/gms/measurement/internal/Y3;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->v()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    const-string v2, "Analytics Storage consent is not granted"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x10

    new-array v1, v1, [B

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->C()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/m7;->q0()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v3, Ljava/math/BigInteger;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "%032x"

    invoke-static {v2, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->v()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    if-nez v1, :cond_1

    const-string v3, "null"

    goto :goto_1

    :cond_1
    const-string v3, "not null"

    :goto_1
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "Resetting session stitching token to %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/p2;->o:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->e()LT0/g;

    move-result-object v0

    invoke-interface {v0}, LT0/g;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/measurement/internal/p2;->p:J

    return-void
.end method

.method public final q()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/h2;->j()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/p2;->c:Ljava/lang/String;

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/p2;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/h2;->j()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/p2;->n:Ljava/lang/String;

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/p2;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/h2;->j()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/p2;->g:Ljava/lang/String;

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/p2;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final t()I
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/h2;->j()V

    iget v0, p0, Lcom/google/android/gms/measurement/internal/p2;->e:I

    return v0
.end method

.method public final u()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/measurement/internal/p2;->j:J

    return-wide v0
.end method

.method public final v()I
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/h2;->j()V

    iget v0, p0, Lcom/google/android/gms/measurement/internal/p2;->m:I

    return v0
.end method

.method public final w()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/p2;->k:Ljava/util/List;

    return-object v0
.end method

.method public final x(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/p2;->q:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/p2;->q:Ljava/lang/String;

    return v1
.end method
