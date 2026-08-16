.class public LB0/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LC0/a;
.end annotation

.annotation build LG0/F;
.end annotation


# static fields
.field public static a:LB0/C;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static volatile b:LB0/B;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Landroid/content/Context;)LB0/C;
    .locals 2

    const-class v0, LB0/o;

    monitor-enter v0

    :try_start_0
    sget-object v1, LB0/o;->a:LB0/C;

    if-nez v1, :cond_0

    new-instance v1, LB0/C;

    invoke-direct {v1, p0}, LB0/C;-><init>(Landroid/content/Context;)V

    sput-object v1, LB0/o;->a:LB0/C;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, LB0/o;->a:LB0/C;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)LB0/p;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build LG0/F;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-static {p1}, LB0/k;->k(Landroid/content/Context;)Z

    move-result v0

    invoke-static {p1}, LB0/o;->c(Landroid/content/Context;)LB0/C;

    invoke-static {}, LB0/P;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const-string v1, "-0"

    goto :goto_0

    :cond_0
    const-string v1, "-1"

    :goto_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, LB0/o;->b:LB0/B;

    if-eqz v2, :cond_1

    sget-object v2, LB0/o;->b:LB0/B;

    invoke-static {v2}, LB0/B;->b(LB0/B;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object p1, LB0/o;->b:LB0/B;

    invoke-static {p1}, LB0/B;->a(LB0/B;)LB0/p;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-static {p1}, LB0/o;->c(Landroid/content/Context;)LB0/C;

    const/4 p1, 0x0

    invoke-static {p2, v0, p1, p1}, LB0/P;->c(Ljava/lang/String;ZZZ)LB0/Z;

    move-result-object p1

    iget-boolean v0, p1, LB0/Z;->a:Z

    if-eqz v0, :cond_2

    iget p1, p1, LB0/Z;->d:I

    new-instance v0, LB0/B;

    invoke-static {p2, p1}, LB0/p;->d(Ljava/lang/String;I)LB0/p;

    move-result-object p1

    invoke-direct {v0, v1, p1}, LB0/B;-><init>(Ljava/lang/String;LB0/p;)V

    sput-object v0, LB0/o;->b:LB0/B;

    sget-object p1, LB0/o;->b:LB0/B;

    invoke-static {p1}, LB0/B;->a(LB0/B;)LB0/p;

    move-result-object p1

    goto :goto_1

    :cond_2
    iget-object v0, p1, LB0/Z;->b:Ljava/lang/String;

    invoke-static {v0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p1, LB0/Z;->b:Ljava/lang/String;

    iget-object p1, p1, LB0/Z;->c:Ljava/lang/Throwable;

    invoke-static {p2, v0, p1}, LB0/p;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)LB0/p;

    move-result-object p1

    :goto_1
    return-object p1

    :cond_3
    new-instance p1, Lcom/google/android/gms/common/zzad;

    invoke-direct {p1}, Lcom/google/android/gms/common/zzad;-><init>()V

    throw p1
.end method

.method public b(Landroid/content/Context;Ljava/lang/String;)LB0/p;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build LC0/a;
    .end annotation

    .annotation build LG0/F;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2}, LB0/o;->a(Landroid/content/Context;Ljava/lang/String;)LB0/p;

    move-result-object v0

    invoke-virtual {v0}, LB0/p;->b()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0, p1, p2}, LB0/o;->a(Landroid/content/Context;Ljava/lang/String;)LB0/p;

    move-result-object p1

    invoke-virtual {p1}, LB0/p;->c()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "PkgSignatureVerifier"

    const-string v1, "Got flaky result during package signature verification"

    invoke-static {p2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p1

    :cond_0
    move-object v0, p1

    :goto_0
    return-object v0
.end method
