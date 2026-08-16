.class public final Lz0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ly0/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final f(Lcom/google/android/gms/common/api/l;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    .locals 1

    sget-object v0, Lu0/a;->f:Lcom/google/android/gms/common/api/a$g;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/l;->o(Lcom/google/android/gms/common/api/a$c;)Lcom/google/android/gms/common/api/a$f;

    move-result-object p0

    check-cast p0, Lz0/i;

    invoke-virtual {p0}, Lz0/i;->v0()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/l;)Lcom/google/android/gms/common/api/o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/l;",
            ")",
            "Lcom/google/android/gms/common/api/o<",
            "Ly0/d;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/l;->q()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lz0/h;->f(Lcom/google/android/gms/common/api/l;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lz0/q;->d(Lcom/google/android/gms/common/api/l;Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;Z)Lcom/google/android/gms/common/api/o;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/google/android/gms/common/api/l;)Landroid/content/Intent;
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/l;->q()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lz0/h;->f(Lcom/google/android/gms/common/api/l;)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object p1

    invoke-static {v0, p1}, Lz0/q;->a(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method public final c(Landroid/content/Intent;)Ly0/d;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-static {p1}, Lz0/q;->g(Landroid/content/Intent;)Ly0/d;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lcom/google/android/gms/common/api/l;)Lcom/google/android/gms/common/api/p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/l;",
            ")",
            "Lcom/google/android/gms/common/api/p<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/l;->q()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lz0/q;->f(Lcom/google/android/gms/common/api/l;Landroid/content/Context;Z)Lcom/google/android/gms/common/api/p;

    move-result-object p1

    return-object p1
.end method

.method public final e(Lcom/google/android/gms/common/api/l;)Lcom/google/android/gms/common/api/p;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/l;",
            ")",
            "Lcom/google/android/gms/common/api/p<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/l;->q()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lz0/q;->e(Lcom/google/android/gms/common/api/l;Landroid/content/Context;Z)Lcom/google/android/gms/common/api/p;

    move-result-object p1

    return-object p1
.end method
