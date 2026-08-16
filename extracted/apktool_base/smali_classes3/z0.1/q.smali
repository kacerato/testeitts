.class public final Lz0/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LK0/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LK0/a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "GoogleSignInCommon"

    invoke-direct {v0, v2, v1}, LK0/a;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lz0/q;->a:LK0/a;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;
    .locals 3

    sget-object v0, Lz0/q;->a:LK0/a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getSignInIntent()"

    invoke-virtual {v0, v2, v1}, LK0/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;-><init>(Ljava/lang/String;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.auth.GOOGLE_SIGN_IN"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-class v1, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "config"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p1, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object p1
.end method

.method public static b(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;
    .locals 3

    sget-object v0, Lz0/q;->a:LK0/a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getFallbackSignInIntent()"

    invoke-virtual {v0, v2, v1}, LK0/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lz0/q;->a(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "com.google.android.gms.auth.APPAUTH_SIGN_IN"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public static c(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;
    .locals 3

    sget-object v0, Lz0/q;->a:LK0/a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getNoImplementationSignInIntent()"

    invoke-virtual {v0, v2, v1}, LK0/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lz0/q;->a(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "com.google.android.gms.auth.NO_IMPL"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public static d(Lcom/google/android/gms/common/api/l;Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;Z)Lcom/google/android/gms/common/api/o;
    .locals 6

    sget-object v0, Lz0/q;->a:LK0/a;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "silentSignIn()"

    invoke-virtual {v0, v3, v2}, LK0/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "getEligibleSavedSignInResult()"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, LK0/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p2}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lz0/r;->a(Landroid/content/Context;)Lz0/r;

    move-result-object v2

    invoke-virtual {v2}, Lz0/r;->e()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    move-object v4, v3

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->h()Landroid/accounts/Account;

    move-result-object v4

    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->h()Landroid/accounts/Account;

    move-result-object v5

    if-nez v4, :cond_2

    if-nez v5, :cond_0

    goto :goto_1

    :cond_2
    invoke-virtual {v4, v5}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->x0()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->w0()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->w0()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->u0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->u0()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, LG0/y;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_0

    :cond_6
    new-instance v4, Ljava/util/HashSet;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->n0()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/HashSet;

    invoke-virtual {p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->n0()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v4, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    invoke-static {p1}, Lz0/r;->a(Landroid/content/Context;)Lz0/r;

    move-result-object v2

    invoke-virtual {v2}, Lz0/r;->d()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->C0()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ly0/d;

    sget-object v5, Lcom/google/android/gms/common/api/Status;->g:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v4, v2, v5}, Ly0/d;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    :goto_2
    if-eqz v4, :cond_8

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "Eligible saved sign in result found"

    invoke-virtual {v0, p2, p1}, LK0/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v4, p0}, Lcom/google/android/gms/common/api/q;->e(Lcom/google/android/gms/common/api/u;Lcom/google/android/gms/common/api/l;)Lcom/google/android/gms/common/api/o;

    move-result-object p0

    return-object p0

    :cond_8
    if-eqz p3, :cond_9

    new-instance p1, Ly0/d;

    new-instance p2, Lcom/google/android/gms/common/api/Status;

    const/4 p3, 0x4

    invoke-direct {p2, p3}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-direct {p1, v3, p2}, Ly0/d;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    invoke-static {p1, p0}, Lcom/google/android/gms/common/api/q;->e(Lcom/google/android/gms/common/api/u;Lcom/google/android/gms/common/api/l;)Lcom/google/android/gms/common/api/o;

    move-result-object p0

    return-object p0

    :cond_9
    new-array p3, v1, [Ljava/lang/Object;

    const-string v1, "trySilentSignIn()"

    invoke-virtual {v0, v1, p3}, LK0/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p3, Lz0/k;

    invoke-direct {p3, p0, p1, p2}, Lz0/k;-><init>(Lcom/google/android/gms/common/api/l;Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    invoke-virtual {p0, p3}, Lcom/google/android/gms/common/api/l;->l(Lcom/google/android/gms/common/api/internal/b$a;)Lcom/google/android/gms/common/api/internal/b$a;

    move-result-object p0

    new-instance p1, LD0/l;

    invoke-direct {p1, p0}, LD0/l;-><init>(Lcom/google/android/gms/common/api/p;)V

    return-object p1
.end method

.method public static e(Lcom/google/android/gms/common/api/l;Landroid/content/Context;Z)Lcom/google/android/gms/common/api/p;
    .locals 3

    sget-object v0, Lz0/q;->a:LK0/a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Signing out"

    invoke-virtual {v0, v2, v1}, LK0/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lz0/q;->h(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    sget-object p1, Lcom/google/android/gms/common/api/Status;->g:Lcom/google/android/gms/common/api/Status;

    invoke-static {p1, p0}, Lcom/google/android/gms/common/api/q;->g(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/common/api/l;)Lcom/google/android/gms/common/api/p;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Lz0/m;

    invoke-direct {p1, p0}, Lz0/m;-><init>(Lcom/google/android/gms/common/api/l;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/l;->m(Lcom/google/android/gms/common/api/internal/b$a;)Lcom/google/android/gms/common/api/internal/b$a;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lcom/google/android/gms/common/api/l;Landroid/content/Context;Z)Lcom/google/android/gms/common/api/p;
    .locals 3

    sget-object v0, Lz0/q;->a:LK0/a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Revoking access"

    invoke-virtual {v0, v2, v1}, LK0/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Lz0/c;->b(Landroid/content/Context;)Lz0/c;

    move-result-object v0

    invoke-virtual {v0}, Lz0/c;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lz0/q;->h(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    invoke-static {v0}, Lz0/f;->a(Ljava/lang/String;)Lcom/google/android/gms/common/api/p;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Lz0/o;

    invoke-direct {p1, p0}, Lz0/o;-><init>(Lcom/google/android/gms/common/api/l;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/l;->m(Lcom/google/android/gms/common/api/internal/b$a;)Lcom/google/android/gms/common/api/internal/b$a;

    move-result-object p0

    return-object p0
.end method

.method public static g(Landroid/content/Intent;)Ly0/d;
    .locals 3
    .param p0    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    new-instance p0, Ly0/d;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->i:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0, v0, v1}, Ly0/d;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    return-object p0

    :cond_0
    const-string v1, "googleSignInStatus"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/Status;

    const-string v2, "googleSignInAccount"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-nez p0, :cond_2

    new-instance p0, Ly0/d;

    if-nez v1, :cond_1

    sget-object v1, Lcom/google/android/gms/common/api/Status;->i:Lcom/google/android/gms/common/api/Status;

    :cond_1
    invoke-direct {p0, v0, v1}, Ly0/d;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    return-object p0

    :cond_2
    new-instance v0, Ly0/d;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->g:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, p0, v1}, Ly0/d;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method

.method public static h(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lz0/r;->a(Landroid/content/Context;)Lz0/r;

    move-result-object p0

    invoke-virtual {p0}, Lz0/r;->b()V

    invoke-static {}, Lcom/google/android/gms/common/api/l;->n()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/l;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/l;->z()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/api/internal/d;->a()V

    return-void
.end method
