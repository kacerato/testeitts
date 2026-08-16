.class public final Lcom/google/android/gms/auth/api/identity/i;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)Lcom/google/android/gms/auth/api/identity/a;
    .locals 3
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Le1/e;

    invoke-static {p0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    new-instance v1, Lcom/google/android/gms/auth/api/identity/p;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/auth/api/identity/p;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Le1/e;-><init>(Landroid/app/Activity;Lcom/google/android/gms/auth/api/identity/p;)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Lcom/google/android/gms/auth/api/identity/a;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Le1/e;

    invoke-static {p0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/auth/api/identity/p;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/auth/api/identity/p;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Le1/e;-><init>(Landroid/content/Context;Lcom/google/android/gms/auth/api/identity/p;)V

    return-object v0
.end method

.method public static c(Landroid/app/Activity;)Lcom/google/android/gms/auth/api/identity/f;
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Le1/k;

    invoke-static {p0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    new-instance v1, Lcom/google/android/gms/auth/api/identity/z;

    invoke-direct {v1}, Lcom/google/android/gms/auth/api/identity/z;-><init>()V

    invoke-direct {v0, p0, v1}, Le1/k;-><init>(Landroid/app/Activity;Lcom/google/android/gms/auth/api/identity/z;)V

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Lcom/google/android/gms/auth/api/identity/f;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Le1/k;

    invoke-static {p0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/auth/api/identity/z;

    invoke-direct {v1}, Lcom/google/android/gms/auth/api/identity/z;-><init>()V

    invoke-direct {v0, p0, v1}, Le1/k;-><init>(Landroid/content/Context;Lcom/google/android/gms/auth/api/identity/z;)V

    return-object v0
.end method

.method public static e(Landroid/app/Activity;)Lcom/google/android/gms/auth/api/identity/m;
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Le1/u;

    invoke-static {p0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    new-instance v1, Lcom/google/android/gms/auth/api/identity/M;

    invoke-direct {v1}, Lcom/google/android/gms/auth/api/identity/M;-><init>()V

    invoke-direct {v0, p0, v1}, Le1/u;-><init>(Landroid/app/Activity;Lcom/google/android/gms/auth/api/identity/M;)V

    return-object v0
.end method

.method public static f(Landroid/content/Context;)Lcom/google/android/gms/auth/api/identity/m;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Le1/u;

    invoke-static {p0}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    new-instance v1, Lcom/google/android/gms/auth/api/identity/M;

    invoke-direct {v1}, Lcom/google/android/gms/auth/api/identity/M;-><init>()V

    invoke-direct {v0, p0, v1}, Le1/u;-><init>(Landroid/content/Context;Lcom/google/android/gms/auth/api/identity/M;)V

    return-object v0
.end method
