.class public Lt0/c;
.super Lcom/google/android/gms/common/api/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/k<",
        "Lcom/google/android/gms/common/api/a$d$d;",
        ">;"
    }
.end annotation


# instance fields
.field public final k:Lt0/b;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lt0/a;->a:Lcom/google/android/gms/common/api/a;

    sget-object v1, Lcom/google/android/gms/common/api/a$d;->n4:Lcom/google/android/gms/common/api/a$d$d;

    sget-object v2, Lcom/google/android/gms/common/api/k$a;->c:Lcom/google/android/gms/common/api/k$a;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/common/api/k;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/k$a;)V

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/auth/m;

    invoke-direct {p1}, Lcom/google/android/gms/internal/auth/m;-><init>()V

    iput-object p1, p0, Lt0/c;->k:Lt0/b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    sget-object v0, Lt0/a;->a:Lcom/google/android/gms/common/api/a;

    sget-object v1, Lcom/google/android/gms/common/api/a$d;->n4:Lcom/google/android/gms/common/api/a$d$d;

    sget-object v2, Lcom/google/android/gms/common/api/k$a;->c:Lcom/google/android/gms/common/api/k$a;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/common/api/k;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/k$a;)V

    .line 4
    new-instance p1, Lcom/google/android/gms/internal/auth/m;

    invoke-direct {p1}, Lcom/google/android/gms/internal/auth/m;-><init>()V

    iput-object p1, p0, Lt0/c;->k:Lt0/b;

    return-void
.end method


# virtual methods
.method public g0(Ljava/lang/String;)Lv1/k;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lv1/k<",
            "Landroid/accounts/Account;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lt0/c;->k:Lt0/b;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/k;->H()Lcom/google/android/gms/common/api/l;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lt0/b;->b(Lcom/google/android/gms/common/api/l;Ljava/lang/String;)Lcom/google/android/gms/common/api/p;

    move-result-object p1

    new-instance v0, Lt0/j;

    invoke-direct {v0, p0}, Lt0/j;-><init>(Lt0/c;)V

    invoke-static {p1, v0}, LG0/z;->b(Lcom/google/android/gms/common/api/p;LG0/z$a;)Lv1/k;

    move-result-object p1

    return-object p1
.end method

.method public h0(Landroid/accounts/Account;)Lv1/k;
    .locals 2
    .param p1    # Landroid/accounts/Account;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            ")",
            "Lv1/k<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lt0/c;->k:Lt0/b;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/k;->H()Lcom/google/android/gms/common/api/l;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lt0/b;->d(Lcom/google/android/gms/common/api/l;Landroid/accounts/Account;)Lcom/google/android/gms/common/api/p;

    move-result-object p1

    invoke-static {p1}, LG0/z;->c(Lcom/google/android/gms/common/api/p;)Lv1/k;

    move-result-object p1

    return-object p1
.end method

.method public i0(Z)Lv1/k;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lv1/k<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lt0/c;->k:Lt0/b;

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/k;->H()Lcom/google/android/gms/common/api/l;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lt0/b;->c(Lcom/google/android/gms/common/api/l;Z)Lcom/google/android/gms/common/api/p;

    move-result-object p1

    invoke-static {p1}, LG0/z;->c(Lcom/google/android/gms/common/api/p;)Lv1/k;

    move-result-object p1

    return-object p1
.end method
