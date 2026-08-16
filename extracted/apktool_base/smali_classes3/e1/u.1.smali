.class public final Le1/u;
.super Lcom/google/android/gms/common/api/k;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/api/identity/m;


# static fields
.field public static final l:Lcom/google/android/gms/common/api/a$g;

.field public static final m:Lcom/google/android/gms/common/api/a$a;

.field public static final n:Lcom/google/android/gms/common/api/a;


# instance fields
.field public final k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/a$g;-><init>()V

    sput-object v0, Le1/u;->l:Lcom/google/android/gms/common/api/a$g;

    new-instance v1, Le1/l;

    invoke-direct {v1}, Le1/l;-><init>()V

    sput-object v1, Le1/u;->m:Lcom/google/android/gms/common/api/a$a;

    new-instance v2, Lcom/google/android/gms/common/api/a;

    const-string v3, "Auth.Api.Identity.SignIn.API"

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$g;)V

    sput-object v2, Le1/u;->n:Lcom/google/android/gms/common/api/a;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/auth/api/identity/M;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/auth/api/identity/M;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Le1/u;->n:Lcom/google/android/gms/common/api/a;

    sget-object v1, Lcom/google/android/gms/common/api/k$a;->c:Lcom/google/android/gms/common/api/k$a;

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/common/api/k;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/k$a;)V

    .line 2
    invoke-static {}, Le1/x;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le1/u;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/auth/api/identity/M;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/auth/api/identity/M;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    sget-object v0, Le1/u;->n:Lcom/google/android/gms/common/api/a;

    sget-object v1, Lcom/google/android/gms/common/api/k$a;->c:Lcom/google/android/gms/common/api/k$a;

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/common/api/k;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/k$a;)V

    .line 4
    invoke-static {}, Le1/x;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le1/u;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final B(Lcom/google/android/gms/auth/api/identity/g;)Lv1/k;
    .locals 2
    .param p1    # Lcom/google/android/gms/auth/api/identity/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/auth/api/identity/g;",
            ")",
            "Lv1/k<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, LD0/r;->a()LD0/r$a;

    move-result-object v0

    sget-object v1, Le1/w;->i:LB0/e;

    filled-new-array {v1}, [LB0/e;

    move-result-object v1

    invoke-virtual {v0, v1}, LD0/r$a;->e([LB0/e;)LD0/r$a;

    move-result-object v0

    new-instance v1, Le1/s;

    invoke-direct {v1, p0, p1}, Le1/s;-><init>(Le1/u;Lcom/google/android/gms/auth/api/identity/g;)V

    invoke-virtual {v0, v1}, LD0/r$a;->c(LD0/n;)LD0/r$a;

    move-result-object p1

    const/16 v0, 0x675

    invoke-virtual {p1, v0}, LD0/r$a;->f(I)LD0/r$a;

    move-result-object p1

    invoke-virtual {p1}, LD0/r$a;->a()LD0/r;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/k;->N(LD0/r;)Lv1/k;

    move-result-object p1

    return-object p1
.end method

.method public final C()Lv1/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lv1/k<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/k;->W()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.android.gms.signin"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {}, Lcom/google/android/gms/common/api/l;->n()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/l;

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/l;->z()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/api/internal/d;->a()V

    invoke-static {}, LD0/r;->a()LD0/r$a;

    move-result-object v0

    sget-object v1, Le1/w;->b:LB0/e;

    filled-new-array {v1}, [LB0/e;

    move-result-object v1

    invoke-virtual {v0, v1}, LD0/r$a;->e([LB0/e;)LD0/r$a;

    move-result-object v0

    new-instance v1, Le1/q;

    invoke-direct {v1, p0}, Le1/q;-><init>(Le1/u;)V

    invoke-virtual {v0, v1}, LD0/r$a;->c(LD0/n;)LD0/r$a;

    move-result-object v0

    invoke-virtual {v0, v2}, LD0/r$a;->d(Z)LD0/r$a;

    move-result-object v0

    const/16 v1, 0x612

    invoke-virtual {v0, v1}, LD0/r$a;->f(I)LD0/r$a;

    move-result-object v0

    invoke-virtual {v0}, LD0/r$a;->a()LD0/r;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/k;->T(LD0/r;)Lv1/k;

    move-result-object v0

    return-object v0
.end method

.method public final E(Lcom/google/android/gms/auth/api/identity/c;)Lv1/k;
    .locals 5
    .param p1    # Lcom/google/android/gms/auth/api/identity/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/auth/api/identity/c;",
            ")",
            "Lv1/k<",
            "Lcom/google/android/gms/auth/api/identity/d;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/auth/api/identity/c;->x0(Lcom/google/android/gms/auth/api/identity/c;)Lcom/google/android/gms/auth/api/identity/c$a;

    move-result-object p1

    iget-object v0, p0, Le1/u;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/auth/api/identity/c$a;->h(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/c$a;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/identity/c$a;->a()Lcom/google/android/gms/auth/api/identity/c;

    move-result-object p1

    invoke-static {}, LD0/r;->a()LD0/r$a;

    move-result-object v0

    new-instance v1, LB0/e;

    const-string v2, "auth_api_credentials_begin_sign_in"

    const-wide/16 v3, 0x8

    invoke-direct {v1, v2, v3, v4}, LB0/e;-><init>(Ljava/lang/String;J)V

    filled-new-array {v1}, [LB0/e;

    move-result-object v1

    invoke-virtual {v0, v1}, LD0/r$a;->e([LB0/e;)LD0/r$a;

    move-result-object v0

    new-instance v1, Le1/t;

    invoke-direct {v1, p0, p1}, Le1/t;-><init>(Le1/u;Lcom/google/android/gms/auth/api/identity/c;)V

    invoke-virtual {v0, v1}, LD0/r$a;->c(LD0/n;)LD0/r$a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LD0/r$a;->d(Z)LD0/r$a;

    move-result-object p1

    const/16 v0, 0x611

    invoke-virtual {p1, v0}, LD0/r$a;->f(I)LD0/r$a;

    move-result-object p1

    invoke-virtual {p1}, LD0/r$a;->a()LD0/r;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/k;->N(LD0/r;)Lv1/k;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lcom/google/android/gms/auth/api/identity/h;)Lv1/k;
    .locals 2
    .param p1    # Lcom/google/android/gms/auth/api/identity/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/auth/api/identity/h;",
            ")",
            "Lv1/k<",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/auth/api/identity/h;->w0(Lcom/google/android/gms/auth/api/identity/h;)Lcom/google/android/gms/auth/api/identity/h$a;

    move-result-object p1

    iget-object v0, p0, Le1/u;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/auth/api/identity/h$a;->g(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/h$a;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/identity/h$a;->a()Lcom/google/android/gms/auth/api/identity/h;

    move-result-object p1

    invoke-static {}, LD0/r;->a()LD0/r$a;

    move-result-object v0

    sget-object v1, Le1/w;->g:LB0/e;

    filled-new-array {v1}, [LB0/e;

    move-result-object v1

    invoke-virtual {v0, v1}, LD0/r$a;->e([LB0/e;)LD0/r$a;

    move-result-object v0

    new-instance v1, Le1/r;

    invoke-direct {v1, p0, p1}, Le1/r;-><init>(Le1/u;Lcom/google/android/gms/auth/api/identity/h;)V

    invoke-virtual {v0, v1}, LD0/r$a;->c(LD0/n;)LD0/r$a;

    move-result-object p1

    const/16 v0, 0x613

    invoke-virtual {p1, v0}, LD0/r$a;->f(I)LD0/r$a;

    move-result-object p1

    invoke-virtual {p1}, LD0/r$a;->a()LD0/r;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/k;->N(LD0/r;)Lv1/k;

    move-result-object p1

    return-object p1
.end method

.method public final d(Landroid/content/Intent;)Lcom/google/android/gms/auth/api/identity/n;
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/api/ApiException;
        }
    .end annotation

    if-eqz p1, :cond_3

    const-string v0, "status"

    sget-object v1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0, v1}, LI0/d;->b(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Parcelable$Creator;)LI0/c;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->x0()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "sign_in_credential"

    sget-object v1, Lcom/google/android/gms/auth/api/identity/n;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0, v1}, LI0/d;->b(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Parcelable$Creator;)LI0/c;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/identity/n;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    sget-object v0, Lcom/google/android/gms/common/api/Status;->i:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    throw p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    sget-object v0, Lcom/google/android/gms/common/api/Status;->k:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    throw p1

    :cond_3
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    sget-object v0, Lcom/google/android/gms/common/api/Status;->i:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    throw p1
.end method

.method public final synthetic g0(Le1/v;Lv1/l;)V
    .locals 2

    new-instance v0, Le1/n;

    invoke-direct {v0, p0, p2}, Le1/n;-><init>(Le1/u;Lv1/l;)V

    invoke-virtual {p1}, LG0/f;->M()Landroid/os/IInterface;

    move-result-object p2

    check-cast p2, Le1/i0;

    invoke-virtual {p1}, LG0/f;->G()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Le1/A;->a(Landroid/content/Context;)Lcom/google/android/gms/common/api/b;

    move-result-object p1

    iget-object v1, p0, Le1/u;->k:Ljava/lang/String;

    invoke-virtual {p2, v0, v1, p1}, Le1/i0;->l0(Lcom/google/android/gms/common/api/internal/e;Ljava/lang/String;Lcom/google/android/gms/common/api/b;)V

    return-void
.end method

.method public final synthetic h0(Lcom/google/android/gms/auth/api/identity/g;Le1/v;Lv1/l;)V
    .locals 2

    new-instance v0, Le1/p;

    invoke-direct {v0, p0, p3}, Le1/p;-><init>(Le1/u;Lv1/l;)V

    invoke-virtual {p2}, LG0/f;->M()Landroid/os/IInterface;

    move-result-object p3

    check-cast p3, Le1/i0;

    invoke-virtual {p2}, LG0/f;->G()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Le1/A;->a(Landroid/content/Context;)Lcom/google/android/gms/common/api/b;

    move-result-object p2

    iget-object v1, p0, Le1/u;->k:Ljava/lang/String;

    invoke-virtual {p3, v0, p1, v1, p2}, Le1/i0;->f1(Le1/b0;Lcom/google/android/gms/auth/api/identity/g;Ljava/lang/String;Lcom/google/android/gms/common/api/b;)V

    return-void
.end method

.method public final y(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/api/ApiException;
        }
    .end annotation

    if-eqz p1, :cond_3

    const-string v0, "status"

    sget-object v1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0, v1}, LI0/d;->b(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Parcelable$Creator;)LI0/c;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Status;->x0()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "phone_number_hint_result"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    sget-object v0, Lcom/google/android/gms/common/api/Status;->i:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    throw p1

    :cond_2
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    sget-object v0, Lcom/google/android/gms/common/api/Status;->k:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    throw p1

    :cond_3
    new-instance p1, Lcom/google/android/gms/common/api/ApiException;

    sget-object v0, Lcom/google/android/gms/common/api/Status;->i:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/ApiException;-><init>(Lcom/google/android/gms/common/api/Status;)V

    throw p1
.end method
