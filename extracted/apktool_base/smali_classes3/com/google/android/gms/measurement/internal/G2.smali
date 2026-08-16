.class public final Lcom/google/android/gms/measurement/internal/G2;
.super Lcom/google/android/gms/measurement/internal/N6;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/c7;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/N6;-><init>(Lcom/google/android/gms/measurement/internal/c7;)V

    return-void
.end method


# virtual methods
.method public final l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final m()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final n(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/O6;Lcom/google/android/gms/internal/measurement/l3;Lcom/google/android/gms/measurement/internal/D2;)V
    .locals 9
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/O6;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/G6;->b:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->K0()Lcom/google/android/gms/measurement/internal/h7;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/measurement/C4;->g()[B

    move-result-object v6

    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/p3;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object p3

    new-instance v0, Lcom/google/android/gms/measurement/internal/F2;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/O6;->b()Ljava/util/Map;

    move-result-object v7

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/F2;-><init>(Lcom/google/android/gms/measurement/internal/G2;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/D2;)V

    invoke-virtual {p3, v0}, Lcom/google/android/gms/measurement/internal/h3;->w(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p3, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p3

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/O6;->a()Ljava/lang/String;

    move-result-object p2

    const-string p4, "Failed to parse URL. Not uploading MeasurementBatch. appId"

    invoke-virtual {p3, p4, p1, p2}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final o(Lcom/google/android/gms/measurement/internal/I2;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/D2;)V
    .locals 10
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/N6;->j()V

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/G6;->b:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->C0()Lcom/google/android/gms/measurement/internal/P6;

    move-result-object v0

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->r0()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/measurement/internal/e2;->f:Lcom/google/android/gms/measurement/internal/d2;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    sget-object v5, Lcom/google/android/gms/measurement/internal/e2;->g:Lcom/google/android/gms/measurement/internal/d2;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "config/app/"

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "platform"

    const-string v4, "android"

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/m;->A()J

    const-wide/32 v3, 0x1fbd0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v3, "gmp_version"

    invoke-virtual {v2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "runtime_version"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v5

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v1

    new-instance v9, Lcom/google/android/gms/measurement/internal/F2;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->o0()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    move-object v2, v9

    move-object v3, p0

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/measurement/internal/F2;-><init>(Lcom/google/android/gms/measurement/internal/G2;Ljava/lang/String;Ljava/net/URL;[BLjava/util/Map;Lcom/google/android/gms/measurement/internal/D2;)V

    invoke-virtual {v1, v9}, Lcom/google/android/gms/measurement/internal/h3;->w(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/I2;->o0()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/measurement/internal/B2;->x(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p3, "Failed to parse config URL. Not fetching. appId"

    invoke-virtual {p2, p3, p1, v0}, Lcom/google/android/gms/measurement/internal/z2;->c(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
