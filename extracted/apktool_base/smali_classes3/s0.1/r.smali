.class public Ls0/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LG0/F;
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "com.google"

.field public static final b:Ljava/lang/String; = "com.google.work"
    .annotation build LG0/F;
    .end annotation
.end field

.field public static final c:[Ljava/lang/String;
    .annotation build LG0/F;
    .end annotation
.end field

.field public static final d:Ljava/lang/String; = "suppressProgressScreen"

.field public static final e:Ljava/lang/String;
    .annotation build LG0/F;
    .end annotation

    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field public static final f:I = 0x1

.field public static final g:I = 0x2

.field public static final h:I = 0x3

.field public static final i:I = 0x4

.field public static final j:Landroid/content/ComponentName;

.field public static final k:LK0/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "com.google.work"

    const-string v1, "cn.google"

    const-string v2, "com.google"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ls0/r;->c:[Ljava/lang/String;

    const-string v0, "androidPackageName"

    sput-object v0, Ls0/r;->e:Ljava/lang/String;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gms"

    const-string v2, "com.google.android.gms.auth.GetToken"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ls0/r;->j:Landroid/content/ComponentName;

    const-string v0, "GoogleAuthUtil"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls0/j;->a([Ljava/lang/String;)LK0/a;

    move-result-object v0

    sput-object v0, Ls0/r;->k:LK0/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/auth/GoogleAuthException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Ls0/r;->o(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public static b(Landroid/content/Context;ILjava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ls0/a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/auth/GoogleAuthException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "accountName must be provided"

    invoke-static {p2, v0}, LG0/A;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    const-string v0, "Calling this from your main thread can lead to deadlock"

    invoke-static {v0}, LG0/A;->q(Ljava/lang/String;)V

    const v0, 0x802c80

    invoke-static {p0, v0}, Ls0/r;->u(Landroid/content/Context;I)V

    new-instance v0, Ls0/b;

    invoke-direct {v0}, Ls0/b;-><init>()V

    invoke-virtual {v0, p2}, Ls0/b;->n0(Ljava/lang/String;)Ls0/b;

    invoke-virtual {v0, p1}, Ls0/b;->u0(I)Ls0/b;

    invoke-static {p0}, Lcom/google/android/gms/internal/auth/H0;->d(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/internal/auth/d3;->c()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Ls0/r;->z(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/auth/G2;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/auth/g2;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/auth/g2;->u(Ls0/b;)Lv1/k;

    move-result-object p1

    const-string p2, "account change events retrieval"

    :try_start_0
    invoke-static {p1, p2}, Ls0/r;->s(Lv1/k;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls0/c;

    invoke-static {p1}, Ls0/r;->t(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Ls0/c;->n()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    invoke-static {p1, p2}, Ls0/r;->v(Lcom/google/android/gms/common/api/ApiException;Ljava/lang/String;)V

    :cond_0
    new-instance v3, Ls0/o;

    invoke-direct {v3, v0}, Ls0/o;-><init>(Ls0/b;)V

    sget-object v2, Ls0/r;->j:Landroid/content/ComponentName;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls0/r;->r(Landroid/content/Context;Landroid/content/ComponentName;Ls0/q;JLjava/util/concurrent/Executor;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/auth/GoogleAuthException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "accountName must be provided"

    invoke-static {p1, v0}, LG0/A;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    const-string v0, "Calling this from your main thread can lead to deadlock"

    invoke-static {v0}, LG0/A;->q(Ljava/lang/String;)V

    const v0, 0x802c80

    invoke-static {p0, v0}, Ls0/r;->u(Landroid/content/Context;I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "^^_account_id_^^"

    invoke-static {p0, p1, v1, v0}, Ls0/r;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/UserRecoverableAuthException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0, p1, p2, v0}, Ls0/r;->e(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/UserRecoverableAuthException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    invoke-static {p1}, Ls0/r;->y(Landroid/accounts/Account;)V

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v6}, Ls0/r;->k(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JLjava/util/concurrent/Executor;)Lcom/google/android/gms/auth/TokenData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/auth/TokenData;->n()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/UserRecoverableAuthException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.google"

    invoke-direct {v0, p1, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0, p2}, Ls0/r;->d(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/UserRecoverableAuthException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.google"

    invoke-direct {v0, p1, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0, p2, p3}, Ls0/r;->e(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.MANAGE_ACCOUNTS"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object p0

    const-string v0, "com.google"

    invoke-virtual {p0, v0, p1}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static i(Landroid/content/Context;Landroid/accounts/Account;)Landroid/os/Bundle;
    .locals 8
    .annotation build LG0/F;
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/auth/GoogleAuthException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ls0/r;->y(Landroid/accounts/Account;)V

    const v0, 0x802c80

    invoke-static {p0, v0}, Ls0/r;->u(Landroid/content/Context;I)V

    invoke-static {p0}, Lcom/google/android/gms/internal/auth/H0;->d(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/internal/auth/d3;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ls0/r;->z(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/auth/G2;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/auth/g2;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/auth/g2;->i(Landroid/accounts/Account;)Lv1/k;

    move-result-object v0

    const-string v1, "account removal"

    :try_start_0
    invoke-static {v0, v1}, Ls0/r;->s(Lv1/k;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v0}, Ls0/r;->t(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0, v1}, Ls0/r;->v(Lcom/google/android/gms/common/api/ApiException;Ljava/lang/String;)V

    :cond_0
    new-instance v4, Ls0/l;

    invoke-direct {v4, p1}, Ls0/l;-><init>(Landroid/accounts/Account;)V

    sget-object v3, Ls0/r;->j:Landroid/content/ComponentName;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Ls0/r;->r(Landroid/content/Context;Landroid/content/ComponentName;Ls0/q;JLjava/util/concurrent/Executor;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    return-object p0
.end method

.method public static j(Landroid/content/Context;)Ljava/lang/Boolean;
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/auth/GoogleAuthException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0xadf340

    invoke-static {p0, v0}, Ls0/r;->u(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/gms/internal/auth/H0;->d(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/internal/auth/d3;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Ls0/r;->z(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/google/android/gms/internal/auth/G2;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/auth/g2;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/auth/g2;->a(Ljava/lang/String;)Lv1/k;

    move-result-object v1

    const-string v2, "google accounts access request"

    :try_start_0
    invoke-static {v1, v2}, Ls0/r;->s(Lv1/k;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string v3, "Error"

    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "userRecoveryIntent"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/Intent;

    const-string v5, "userRecoveryPendingIntent"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    invoke-static {v3}, Lcom/google/android/gms/internal/auth/b0;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/auth/b0;

    move-result-object v5

    sget-object v6, Lcom/google/android/gms/internal/auth/b0;->zzc:Lcom/google/android/gms/internal/auth/b0;

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    const-string v5, "requestGoogleAccountsAccess"

    invoke-static {p0, v5, v3, v4, v1}, Ls0/r;->x(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/app/PendingIntent;)V

    new-instance v1, Lcom/google/android/gms/auth/GoogleAuthException;

    const-string v3, "Invalid state. Shouldn\'t happen"

    invoke-direct {v1, v3}, Lcom/google/android/gms/auth/GoogleAuthException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v1, v2}, Ls0/r;->v(Lcom/google/android/gms/common/api/ApiException;Ljava/lang/String;)V

    :cond_1
    new-instance v5, Ls0/p;

    invoke-direct {v5, v0, p0}, Ls0/p;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    sget-object v4, Ls0/r;->j:Landroid/content/ComponentName;

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Ls0/r;->r(Landroid/content/Context;Landroid/content/ComponentName;Ls0/q;JLjava/util/concurrent/Executor;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    return-object p0
.end method

.method public static k(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JLjava/util/concurrent/Executor;)Lcom/google/android/gms/auth/TokenData;
    .locals 6
    .param p6    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build LG0/F;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    const-string p4, "Calling this from your main thread can lead to deadlock"

    invoke-static {p4}, LG0/A;->q(Ljava/lang/String;)V

    const-string p4, "Scope cannot be empty or null."

    invoke-static {p2, p4}, LG0/A;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p1}, Ls0/r;->y(Landroid/accounts/Account;)V

    const p4, 0x802c80

    invoke-static {p0, p4}, Ls0/r;->u(Landroid/content/Context;I)V

    if-nez p3, :cond_0

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p3, p4

    :goto_0
    invoke-static {p0, p3}, Ls0/r;->w(Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/google/android/gms/internal/auth/H0;->d(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/internal/auth/d3;->d()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-static {p0}, Ls0/r;->z(Landroid/content/Context;)Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-static {p0}, Lcom/google/android/gms/internal/auth/G2;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/auth/g2;

    move-result-object p4

    invoke-interface {p4, p1, p2, p3}, Lcom/google/android/gms/internal/auth/g2;->x(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Lv1/k;

    move-result-object p4

    const-string p5, "token retrieval"

    :try_start_0
    invoke-static {p4, p5}, Ls0/r;->s(Lv1/k;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/os/Bundle;

    invoke-static {p4}, Ls0/r;->t(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p6, "getTokenWithDetails"

    invoke-static {p0, p6, p4}, Ls0/r;->q(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/auth/TokenData;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p4

    invoke-static {p4, p5}, Ls0/r;->v(Lcom/google/android/gms/common/api/ApiException;Ljava/lang/String;)V

    :cond_1
    new-instance v2, Ls0/m;

    invoke-direct {v2, p1, p2, p3, p0}, Ls0/m;-><init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Context;)V

    sget-object v1, Ls0/r;->j:Landroid/content/ComponentName;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls0/r;->r(Landroid/content/Context;Landroid/content/ComponentName;Ls0/q;JLjava/util/concurrent/Executor;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/auth/TokenData;

    return-object p0
.end method

.method public static synthetic l(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Context;Landroid/os/IBinder;)Lcom/google/android/gms/auth/TokenData;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    invoke-static {p4}, Lcom/google/android/gms/internal/auth/f1;->k(Landroid/os/IBinder;)Lcom/google/android/gms/internal/auth/G1;

    move-result-object p4

    invoke-interface {p4, p0, p1, p2}, Lcom/google/android/gms/internal/auth/G1;->S0(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "getTokenWithDetails"

    invoke-static {p3, p1, p0}, Ls0/r;->q(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/auth/TokenData;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Service call returned null"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static bridge synthetic m(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Ls0/r;->t(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic n(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/app/PendingIntent;)V
    .locals 0

    const-string p1, "requestGoogleAccountsAccess"

    invoke-static {p0, p1, p2, p3, p4}, Ls0/r;->x(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public static o(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 7
    .annotation build LG0/F;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/auth/GoogleAuthException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string p2, "Calling this from your main thread can lead to deadlock"

    invoke-static {p2}, LG0/A;->q(Ljava/lang/String;)V

    const p2, 0x802c80

    invoke-static {p0, p2}, Ls0/r;->u(Landroid/content/Context;I)V

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0, p2}, Ls0/r;->w(Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/google/android/gms/internal/auth/H0;->d(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/internal/auth/d3;->d()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {p0}, Ls0/r;->z(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/auth/G2;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/auth/g2;

    move-result-object p3

    new-instance v0, Lcom/google/android/gms/internal/auth/Z;

    invoke-direct {v0}, Lcom/google/android/gms/internal/auth/Z;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auth/Z;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/auth/Z;

    invoke-interface {p3, v0}, Lcom/google/android/gms/internal/auth/g2;->w(Lcom/google/android/gms/internal/auth/Z;)Lv1/k;

    move-result-object p3

    const-string v0, "clear token"

    :try_start_0
    invoke-static {p3, v0}, Ls0/r;->s(Lv1/k;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p3

    invoke-static {p3, v0}, Ls0/r;->v(Lcom/google/android/gms/common/api/ApiException;Ljava/lang/String;)V

    :cond_0
    new-instance v3, Ls0/n;

    invoke-direct {v3, p1, p2}, Ls0/n;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    sget-object v2, Ls0/r;->j:Landroid/content/ComponentName;

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls0/r;->r(Landroid/content/Context;Landroid/content/ComponentName;Ls0/q;JLjava/util/concurrent/Executor;)Ljava/lang/Object;

    return-void
.end method

.method public static p(Landroid/content/Intent;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object p0

    :try_start_0
    invoke-static {p0, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Parameter callback contains invalid data. It must be serializable using toUri() and parseUri()."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Callback cannot be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static q(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/auth/TokenData;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/auth/GoogleAuthException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object p1, Lcom/google/android/gms/auth/TokenData;->CREATOR:Landroid/os/Parcelable$Creator;

    const-class p1, Lcom/google/android/gms/auth/TokenData;

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_0
    const-string v0, "tokenDetails"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_2
    const-string p1, "TokenData"

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/TokenData;

    :goto_0
    if-eqz p1, :cond_3

    return-object p1

    :cond_3
    const-string p1, "Error"

    invoke-virtual {p2, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "userRecoveryIntent"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const-string v1, "userRecoveryPendingIntent"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/app/PendingIntent;

    const-string v1, "getTokenWithDetails"

    invoke-static {p0, v1, p1, v0, p2}, Ls0/r;->x(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/app/PendingIntent;)V

    new-instance p0, Lcom/google/android/gms/auth/GoogleAuthException;

    const-string p1, "Invalid state. Shouldn\'t happen"

    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/GoogleAuthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static r(Landroid/content/Context;Landroid/content/ComponentName;Ls0/q;JLjava/util/concurrent/Executor;)Ljava/lang/Object;
    .locals 1
    .param p5    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    const-string p3, "Error on service connection."

    const-string p4, "GoogleAuthUtil"

    new-instance p5, LB0/b;

    invoke-direct {p5}, LB0/b;-><init>()V

    invoke-static {p0}, LG0/o;->e(Landroid/content/Context;)LG0/o;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p5, p4, v0}, LG0/o;->b(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;Ljava/util/concurrent/Executor;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {p5}, LB0/b;->a()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p2, v0}, Ls0/q;->a(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, p1, p5, p4}, LG0/o;->k(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    goto :goto_0

    :catch_2
    move-exception p2

    :goto_0
    :try_start_2
    invoke-static {p4, p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p3, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-virtual {p0, p1, p5, p4}, LG0/o;->k(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    throw p2

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Could not bind to service."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "SecurityException while bind to auth service: %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/io/IOException;

    const-string p2, "SecurityException while binding to Auth service."

    invoke-direct {p1, p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static s(Lv1/k;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/common/api/ApiException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lv1/n;->a(Lv1/k;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Canceled while waiting for the task of %s to finish."

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ls0/r;->k:LK0/a;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v0}, LK0/a;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Interrupted while waiting for the task of %s to finish."

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ls0/r;->k:LK0/a;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v0}, LK0/a;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/common/api/ApiException;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/google/android/gms/common/api/ApiException;

    throw v1

    :cond_0
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Unable to get a result for %s due to ExecutionException."

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ls0/r;->k:LK0/a;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v0}, LK0/a;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static t(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Ls0/r;->k:LK0/a;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Service call returned null."

    invoke-virtual {p0, v1, v0}, LK0/a;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Ljava/io/IOException;

    const-string v0, "Service unavailable."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static u(Landroid/content/Context;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, LB0/k;->c(Landroid/content/Context;I)V
    :try_end_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/common/GooglePlayServicesIncorrectManifestValueException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_0

    :catch_2
    move-exception p0

    goto :goto_1

    :goto_0
    new-instance p1, Lcom/google/android/gms/auth/GoogleAuthException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/google/android/gms/auth/GoogleAuthException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :goto_1
    new-instance p1, Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException;

    invoke-virtual {p0}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->getConnectionStatusCode()I

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/common/UserRecoverableException;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-direct {p1, v0, v1, p0}, Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException;-><init>(ILjava/lang/String;Landroid/content/Intent;)V

    throw p1
.end method

.method public static v(Lcom/google/android/gms/common/api/ApiException;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ls0/r;->k:LK0/a;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s failed via GoogleAuthServiceClient, falling back to previous approach:\n%s"

    invoke-virtual {v0, p1, p0}, LK0/a;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static w(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v0, "clientPackageName"

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ls0/r;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p0, "service_connection_start_time_millis"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public static x(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/app/PendingIntent;)V
    .locals 5
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/auth/GoogleAuthException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/google/android/gms/internal/auth/b0;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/auth/b0;

    move-result-object v0

    sget-object v1, Ls0/r;->k:LK0/a;

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "[GoogleAuthUtil] error status:%s with method:%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v4}, LK0/a;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Lcom/google/android/gms/internal/auth/b0;->zzi:Lcom/google/android/gms/internal/auth/b0;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/google/android/gms/internal/auth/b0;->zzs:Lcom/google/android/gms/internal/auth/b0;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/google/android/gms/internal/auth/b0;->zzw:Lcom/google/android/gms/internal/auth/b0;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/google/android/gms/internal/auth/b0;->zzx:Lcom/google/android/gms/internal/auth/b0;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/google/android/gms/internal/auth/b0;->zzn:Lcom/google/android/gms/internal/auth/b0;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/google/android/gms/internal/auth/b0;->zzz:Lcom/google/android/gms/internal/auth/b0;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/google/android/gms/internal/auth/b0;->zzN:Lcom/google/android/gms/internal/auth/b0;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/google/android/gms/internal/auth/b0;->zzF:Lcom/google/android/gms/internal/auth/b0;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/google/android/gms/internal/auth/b0;->zzG:Lcom/google/android/gms/internal/auth/b0;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/google/android/gms/internal/auth/b0;->zzH:Lcom/google/android/gms/internal/auth/b0;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/google/android/gms/internal/auth/b0;->zzI:Lcom/google/android/gms/internal/auth/b0;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/google/android/gms/internal/auth/b0;->zzJ:Lcom/google/android/gms/internal/auth/b0;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/google/android/gms/internal/auth/b0;->zzK:Lcom/google/android/gms/internal/auth/b0;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/google/android/gms/internal/auth/b0;->zzM:Lcom/google/android/gms/internal/auth/b0;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/google/android/gms/internal/auth/b0;->zzE:Lcom/google/android/gms/internal/auth/b0;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/google/android/gms/internal/auth/b0;->zzL:Lcom/google/android/gms/internal/auth/b0;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/auth/b0;->zze:Lcom/google/android/gms/internal/auth/b0;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/google/android/gms/internal/auth/b0;->zzf:Lcom/google/android/gms/internal/auth/b0;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/google/android/gms/internal/auth/b0;->zzg:Lcom/google/android/gms/internal/auth/b0;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/google/android/gms/internal/auth/b0;->zzaf:Lcom/google/android/gms/internal/auth/b0;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lcom/google/android/gms/internal/auth/b0;->zzah:Lcom/google/android/gms/internal/auth/b0;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lcom/google/android/gms/auth/GoogleAuthException;

    invoke-direct {p0, p2}, Lcom/google/android/gms/auth/GoogleAuthException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    invoke-static {p0}, Lcom/google/android/gms/internal/auth/H0;->d(Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/internal/auth/a3;->b()Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz p4, :cond_5

    if-nez p3, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {p2, p3, p4}, Lcom/google/android/gms/auth/UserRecoverableAuthException;->zza(Ljava/lang/String;Landroid/content/Intent;Landroid/app/PendingIntent;)Lcom/google/android/gms/auth/UserRecoverableAuthException;

    move-result-object p0

    throw p0

    :cond_5
    :goto_2
    invoke-static {}, LB0/h;->x()LB0/h;

    move-result-object v0

    invoke-virtual {v0, p0}, LB0/i;->b(Landroid/content/Context;)I

    move-result p0

    const v0, 0x7fffffff

    if-lt p0, v0, :cond_6

    if-nez p4, :cond_6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0, p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p4, "Recovery PendingIntent is missing on current Gms version: %s for method: %s. It should always be present on or above Gms version %s. This indicates a bug in Gms implementation."

    invoke-static {p4, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array p4, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, p4}, LK0/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    if-nez p3, :cond_7

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "no recovery Intent found with status=%s for method=%s. This shouldn\'t happen"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p0, p1}, LK0/a;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    new-instance p0, Lcom/google/android/gms/auth/UserRecoverableAuthException;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/auth/UserRecoverableAuthException;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    throw p0

    :cond_8
    new-instance p0, Lcom/google/android/gms/auth/UserRecoverableAuthException;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/auth/UserRecoverableAuthException;-><init>(Ljava/lang/String;Landroid/content/Intent;)V

    throw p0
.end method

.method public static y(Landroid/accounts/Account;)V
    .locals 4

    if-eqz p0, :cond_3

    iget-object v0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Ls0/r;->c:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    iget-object v3, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Account type not supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Account name cannot be empty!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Account cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static z(Landroid/content/Context;)Z
    .locals 3

    invoke-static {}, LB0/h;->x()LB0/h;

    move-result-object v0

    const v1, 0x1110e58

    invoke-virtual {v0, p0, v1}, LB0/h;->k(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/auth/d3;->a()Lcom/google/android/gms/internal/auth/Z2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/auth/Z2;->q()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_0
    return v1
.end method
