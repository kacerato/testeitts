.class public final Lcom/google/android/gms/internal/auth/Q;
.super Lcom/google/android/gms/common/api/k;
.source "SourceFile"

# interfaces
.implements Lx0/c;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lu0/c;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lu0/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lu0/b;->a:Lcom/google/android/gms/common/api/a;

    if-nez p2, :cond_0

    .line 2
    sget-object p2, Lu0/c;->c:Lu0/c;

    :cond_0
    sget-object v1, Lcom/google/android/gms/common/api/k$a;->c:Lcom/google/android/gms/common/api/k$a;

    .line 3
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/common/api/k;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/k$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lu0/c;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lu0/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    sget-object v0, Lu0/b;->a:Lcom/google/android/gms/common/api/a;

    if-nez p2, :cond_0

    .line 5
    sget-object p2, Lu0/c;->c:Lu0/c;

    :cond_0
    sget-object v1, Lcom/google/android/gms/common/api/k$a;->c:Lcom/google/android/gms/common/api/k$a;

    .line 6
    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/common/api/k;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/k$a;)V

    return-void
.end method


# virtual methods
.method public final g()Lv1/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lv1/k<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, LD0/r;->a()LD0/r$a;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/auth/M;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/auth/M;-><init>(Lcom/google/android/gms/internal/auth/Q;)V

    invoke-virtual {v0, v1}, LD0/r$a;->c(LD0/n;)LD0/r$a;

    move-result-object v0

    const/16 v1, 0x5f0

    invoke-virtual {v0, v1}, LD0/r$a;->f(I)LD0/r$a;

    move-result-object v0

    invoke-virtual {v0}, LD0/r$a;->a()LD0/r;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/k;->N(LD0/r;)Lv1/k;

    move-result-object v0

    return-object v0
.end method

.method public final p(Lx0/d;)Lv1/k;
    .locals 2
    .param p1    # Lx0/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx0/d;",
            ")",
            "Lv1/k<",
            "Lx0/e;",
            ">;"
        }
    .end annotation

    invoke-static {}, LD0/r;->a()LD0/r$a;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/auth/N;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/auth/N;-><init>(Lcom/google/android/gms/internal/auth/Q;Lx0/d;)V

    invoke-virtual {v0, v1}, LD0/r$a;->c(LD0/n;)LD0/r$a;

    move-result-object p1

    const/16 v0, 0x5ee

    invoke-virtual {p1, v0}, LD0/r$a;->f(I)LD0/r$a;

    move-result-object p1

    invoke-virtual {p1}, LD0/r$a;->a()LD0/r;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/k;->T(LD0/r;)Lv1/k;

    move-result-object p1

    return-object p1
.end method
