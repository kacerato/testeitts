.class public final LD0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LC0/a;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final e:Ljava/lang/Object;

.field public static f:LD0/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final b:Lcom/google/android/gms/common/api/Status;

.field public final c:Z

.field public final d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LD0/f;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3
    sget v1, LB0/r$b;->a:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "google_app_measurement_enable"

    const-string v3, "integer"

    .line 5
    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-eqz v0, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    iput-boolean v1, p0, LD0/f;->d:Z

    goto :goto_2

    .line 7
    :cond_2
    iput-boolean v3, p0, LD0/f;->d:Z

    .line 8
    :goto_2
    iput-boolean v2, p0, LD0/f;->c:Z

    .line 9
    invoke-static {p1}, LG0/z0;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    new-instance v0, LG0/G;

    .line 10
    invoke-direct {v0, p1}, LG0/G;-><init>(Landroid/content/Context;)V

    const-string p1, "google_app_id"

    .line 11
    invoke-virtual {v0, p1}, LG0/G;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/16 v0, 0xa

    const-string v1, "Missing google app id value from from string resources with name google_app_id."

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    iput-object p1, p0, LD0/f;->b:Lcom/google/android/gms/common/api/Status;

    const/4 p1, 0x0

    iput-object p1, p0, LD0/f;->a:Ljava/lang/String;

    return-void

    :cond_4
    iput-object v0, p0, LD0/f;->a:Ljava/lang/String;

    sget-object p1, Lcom/google/android/gms/common/api/Status;->g:Lcom/google/android/gms/common/api/Status;

    iput-object p1, p0, LD0/f;->b:Lcom/google/android/gms/common/api/Status;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD0/f;->a:Ljava/lang/String;

    sget-object p1, Lcom/google/android/gms/common/api/Status;->g:Lcom/google/android/gms/common/api/Status;

    iput-object p1, p0, LD0/f;->b:Lcom/google/android/gms/common/api/Status;

    iput-boolean p2, p0, LD0/f;->c:Z

    xor-int/lit8 p1, p2, 0x1

    iput-boolean p1, p0, LD0/f;->d:Z

    return-void
.end method

.method public static b(Ljava/lang/String;)LD0/f;
    .locals 4
    .annotation build LC0/a;
    .end annotation

    sget-object v0, LD0/f;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LD0/f;->f:LD0/f;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initialize must be called before "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static c()V
    .locals 2
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    sget-object v0, LD0/f;->e:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, LD0/f;->f:LD0/f;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static d()Ljava/lang/String;
    .locals 1
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const-string v0, "getGoogleAppId"

    invoke-static {v0}, LD0/f;->b(Ljava/lang/String;)LD0/f;

    move-result-object v0

    iget-object v0, v0, LD0/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static e(Landroid/content/Context;)Lcom/google/android/gms/common/api/Status;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "Context must not be null."

    invoke-static {p0, v0}, LG0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LD0/f;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, LD0/f;->f:LD0/f;

    if-nez v1, :cond_0

    new-instance v1, LD0/f;

    invoke-direct {v1, p0}, LD0/f;-><init>(Landroid/content/Context;)V

    sput-object v1, LD0/f;->f:LD0/f;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, LD0/f;->f:LD0/f;

    iget-object p0, p0, LD0/f;->b:Lcom/google/android/gms/common/api/Status;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;Z)Lcom/google/android/gms/common/api/Status;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "Context must not be null."

    invoke-static {p0, v0}, LG0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "App ID must be nonempty."

    invoke-static {p1, p0}, LG0/A;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    sget-object p0, LD0/f;->e:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v0, LD0/f;->f:LD0/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, LD0/f;->a(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance v0, LD0/f;

    invoke-direct {v0, p1, p2}, LD0/f;-><init>(Ljava/lang/String;Z)V

    sput-object v0, LD0/f;->f:LD0/f;

    iget-object p1, v0, LD0/f;->b:Lcom/google/android/gms/common/api/Status;

    monitor-exit p0

    return-object p1

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static g()Z
    .locals 2
    .annotation build LC0/a;
    .end annotation

    const-string v0, "isMeasurementEnabled"

    invoke-static {v0}, LD0/f;->b(Ljava/lang/String;)LD0/f;

    move-result-object v0

    iget-object v1, v0, LD0/f;->b:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->x0()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v0, v0, LD0/f;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static h()Z
    .locals 1
    .annotation build LC0/a;
    .end annotation

    const-string v0, "isMeasurementExplicitlyDisabled"

    invoke-static {v0}, LD0/f;->b(Ljava/lang/String;)LD0/f;

    move-result-object v0

    iget-boolean v0, v0, LD0/f;->d:Z

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;
    .locals 3
    .annotation build LC0/a;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, LD0/f;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, LD0/f;->a:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initialize was called with two different Google App IDs.  Only the first app ID will be used: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xa

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    return-object v0

    :cond_0
    sget-object p1, Lcom/google/android/gms/common/api/Status;->g:Lcom/google/android/gms/common/api/Status;

    return-object p1
.end method
