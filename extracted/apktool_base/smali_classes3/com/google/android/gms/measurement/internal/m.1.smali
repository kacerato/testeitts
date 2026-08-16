.class public final Lcom/google/android/gms/measurement/internal/m;
.super Lcom/google/android/gms/measurement/internal/S3;
.source "SourceFile"


# instance fields
.field public b:Ljava/lang/Boolean;

.field public c:Ljava/lang/String;

.field public d:Lcom/google/android/gms/measurement/internal/l;

.field public e:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/p3;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/S3;-><init>(Lcom/google/android/gms/measurement/internal/p3;)V

    sget-object p1, Lcom/google/android/gms/measurement/internal/k;->a:Lcom/google/android/gms/measurement/internal/k;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/m;->d:Lcom/google/android/gms/measurement/internal/l;

    return-void
.end method

.method public static final n()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/measurement/internal/e2;->e:Lcom/google/android/gms/measurement/internal/d2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final o()I
    .locals 2

    sget-object v0, Lcom/google/android/gms/measurement/internal/e2;->j:Lcom/google/android/gms/measurement/internal/d2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public static final p()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/measurement/internal/e2;->l:Lcom/google/android/gms/measurement/internal/d2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public static final q()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/measurement/internal/e2;->S:Lcom/google/android/gms/measurement/internal/d2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final r()J
    .locals 2

    sget-object v0, Lcom/google/android/gms/measurement/internal/e2;->N:Lcom/google/android/gms/measurement/internal/d2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public final A()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->c()Lcom/google/android/gms/measurement/internal/f;

    const-wide/32 v0, 0x1fbd0

    return-wide v0
.end method

.method public final B()Z
    .locals 4
    .annotation runtime Lvm/d;
        value = {
            "this.isMainProcess"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/m;->e:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/m;->e:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->d()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-static {}, LT0/z;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/m;->e:Ljava/lang/Boolean;

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/m;->e:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, p0, Lcom/google/android/gms/measurement/internal/m;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v1, "My process not in the list of running processes"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    :cond_2
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/m;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final C(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/m;->d:Lcom/google/android/gms/measurement/internal/l;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/d2;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/measurement/internal/l;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final D(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)J
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v1}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/m;->d:Lcom/google/android/gms/measurement/internal/l;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/d2;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/google/android/gms/measurement/internal/l;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, v1}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1

    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    invoke-virtual {p2, v1}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1
.end method

.method public final E(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)I
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v1}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/m;->d:Lcom/google/android/gms/measurement/internal/l;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/d2;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/google/android/gms/measurement/internal/l;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, v1}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    invoke-virtual {p2, v1}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final F(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;II)I
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/m;->E(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)I

    move-result p1

    invoke-static {p1, p4}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, p3}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public final G(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)D
    .locals 4
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v1}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    return-wide p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/m;->d:Lcom/google/android/gms/measurement/internal/l;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/d2;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/google/android/gms/measurement/internal/l;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, v1}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    return-wide p1

    :cond_1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    invoke-virtual {p2, v1}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    return-wide p1
.end method

.method public final H(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;)Z
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v1}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/m;->d:Lcom/google/android/gms/measurement/internal/l;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/d2;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/google/android/gms/measurement/internal/l;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, v1}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_1
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/measurement/internal/d2;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final I()Landroid/os/Bundle;
    .locals 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->d()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    const-string v2, "Failed to load metadata: PackageManager is null"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->d()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, LV0/d;->a(Landroid/content/Context;)LV0/c;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->d()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, LV0/c;->c(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    const-string v2, "Failed to load metadata: ApplicationInfo is null"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    return-object v0

    :cond_1
    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    const-string v3, "Failed to load metadata: Package name not found"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final J(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Size;
            min = 0x1L
        .end annotation
    .end param

    invoke-static {p1}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/m;->I()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p1

    const-string v0, "Failed to load metadata: Metadata bundle is null"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final K(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Size;
            min = 0x1L
        .end annotation
    .end param

    const-string p1, "analytics.safelisted_events"

    invoke-static {p1}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/m;->I()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p1

    const-string v0, "Failed to load metadata: Metadata bundle is null"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    :goto_0
    move-object p1, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->d()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v1

    :cond_2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v0

    const-string v2, "Failed to load string array from metadata: resource not found"

    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    return-object v1
.end method

.method public final L()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->c()Lcom/google/android/gms/measurement/internal/f;

    const-string v0, "firebase_analytics_collection_deactivated"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/m;->J(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final M()Z
    .locals 1

    const-string v0, "google_analytics_adid_collection_enabled"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/m;->J(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final N()Z
    .locals 1

    const-string v0, "google_analytics_automatic_screen_reporting_enabled"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/m;->J(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final O(Ljava/lang/String;Z)Lcom/google/android/gms/measurement/internal/W3;
    .locals 3

    invoke-static {p1}, LG0/A;->l(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/m;->I()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v1

    const-string v2, "Failed to load metadata: Metadata bundle is null"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    sget-object p1, Lcom/google/android/gms/measurement/internal/W3;->zza:Lcom/google/android/gms/measurement/internal/W3;

    return-object p1

    :cond_1
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object p1, Lcom/google/android/gms/measurement/internal/W3;->zzd:Lcom/google/android/gms/measurement/internal/W3;

    return-object p1

    :cond_2
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object p1, Lcom/google/android/gms/measurement/internal/W3;->zzc:Lcom/google/android/gms/measurement/internal/W3;

    return-object p1

    :cond_3
    if-eqz p2, :cond_4

    const-string p2, "eu_consent_policy"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object p1, Lcom/google/android/gms/measurement/internal/W3;->zzb:Lcom/google/android/gms/measurement/internal/W3;

    return-object p1

    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/B2;->r()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p2

    const-string v0, "Invalid manifest metadata for"

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lcom/google/android/gms/measurement/internal/W3;->zza:Lcom/google/android/gms/measurement/internal/W3;

    return-object p1
.end method

.method public final P()Z
    .locals 1

    const-string v0, "google_analytics_sgtm_upload_enabled"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/m;->J(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final Q(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/m;->c:Ljava/lang/String;

    return-void
.end method

.method public final R()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/m;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .locals 2

    const-string v0, "debug.firebase.analytics.app"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/m;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .locals 2

    const-string v0, "debug.deferred.deeplink"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/measurement/internal/m;->s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "gaia_collection_enabled"

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/m;->d:Lcom/google/android/gms/measurement/internal/l;

    invoke-interface {v1, p1, v0}, Lcom/google/android/gms/measurement/internal/l;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final l(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "measurement.event_sampling_enabled"

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/m;->d:Lcom/google/android/gms/measurement/internal/l;

    invoke-interface {v1, p1, v0}, Lcom/google/android/gms/measurement/internal/l;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final m()Z
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/m;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const-string v0, "app_measurement_lite"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/measurement/internal/m;->J(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/m;->b:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/m;->b:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/m;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->G()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final s(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-class p2, Ljava/lang/String;

    const-string v0, ""

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    filled-new-array {p2, p2}, [Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p2, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_2

    :catch_3
    move-exception p1

    goto :goto_3

    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p2

    const-string v1, "SystemProperties.get() threw an exception"

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p2

    const-string v1, "Could not access SystemProperties.get()"

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :goto_2
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p2

    const-string v1, "Could not find SystemProperties.get() method"

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :goto_3
    iget-object p2, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p2

    const-string v1, "Could not find SystemProperties class"

    invoke-virtual {p2, v1, p1}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_4
    return-object v0
.end method

.method public final t(Lcom/google/android/gms/measurement/internal/l;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/m;->d:Lcom/google/android/gms/measurement/internal/l;

    return-void
.end method

.method public final u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->c()Lcom/google/android/gms/measurement/internal/f;

    const-string v0, "FA"

    return-object v0
.end method

.method public final v()I
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->C()Lcom/google/android/gms/measurement/internal/m7;

    move-result-object v0

    const v1, 0xc02a560

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/m7;->V(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x64

    return v0

    :cond_0
    const/16 v0, 0x19

    return v0
.end method

.method public final w(Ljava/lang/String;)I
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Size;
            min = 0x1L
        .end annotation
    .end param

    sget-object v0, Lcom/google/android/gms/measurement/internal/e2;->Y:Lcom/google/android/gms/measurement/internal/d2;

    const/16 v1, 0x19

    const/16 v2, 0x64

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/m;->F(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;II)I

    move-result p1

    return p1
.end method

.method public final x(Ljava/lang/String;Z)I
    .locals 2

    const/16 v0, 0x1f4

    if-eqz p2, :cond_0

    sget-object p2, Lcom/google/android/gms/measurement/internal/e2;->i0:Lcom/google/android/gms/measurement/internal/d2;

    const/16 v1, 0x64

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/google/android/gms/measurement/internal/m;->F(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;II)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public final y(Ljava/lang/String;Z)I
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/measurement/internal/m;->x(Ljava/lang/String;Z)I

    move-result p1

    const/16 p2, 0x100

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public final z(Ljava/lang/String;)I
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Size;
            min = 0x1L
        .end annotation
    .end param

    sget-object v0, Lcom/google/android/gms/measurement/internal/e2;->X:Lcom/google/android/gms/measurement/internal/d2;

    const/16 v1, 0x1f4

    const/16 v2, 0x7d0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gms/measurement/internal/m;->F(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/d2;II)I

    move-result p1

    return p1
.end method
