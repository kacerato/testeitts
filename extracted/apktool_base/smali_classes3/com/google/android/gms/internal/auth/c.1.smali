.class public final Lcom/google/android/gms/internal/auth/c;
.super Lcom/google/android/gms/common/api/k;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/auth/g2;


# static fields
.field public static final l:Lcom/google/android/gms/common/api/a$g;

.field public static final m:Lcom/google/android/gms/common/api/a$a;

.field public static final n:Lcom/google/android/gms/common/api/a;

.field public static final o:LK0/a;


# instance fields
.field public final k:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/common/api/a$g;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/a$g;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/auth/c;->l:Lcom/google/android/gms/common/api/a$g;

    new-instance v1, Lcom/google/android/gms/internal/auth/u3;

    invoke-direct {v1}, Lcom/google/android/gms/internal/auth/u3;-><init>()V

    sput-object v1, Lcom/google/android/gms/internal/auth/c;->m:Lcom/google/android/gms/common/api/a$a;

    new-instance v2, Lcom/google/android/gms/common/api/a;

    const-string v3, "GoogleAuthService.API"

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$g;)V

    sput-object v2, Lcom/google/android/gms/internal/auth/c;->n:Lcom/google/android/gms/common/api/a;

    const-string v0, "GoogleAuthServiceClient"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls0/j;->a([Ljava/lang/String;)LK0/a;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/auth/c;->o:LK0/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/google/android/gms/internal/auth/c;->n:Lcom/google/android/gms/common/api/a;

    sget-object v1, Lcom/google/android/gms/common/api/a$d;->n4:Lcom/google/android/gms/common/api/a$d$d;

    sget-object v2, Lcom/google/android/gms/common/api/k$a;->c:Lcom/google/android/gms/common/api/k$a;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/gms/common/api/k;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/k$a;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/c;->k:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic g0(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lv1/l;)V
    .locals 0

    invoke-static {p0, p1, p2}, LD0/s;->d(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lv1/l;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/auth/c;->o:LK0/a;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "The task is already complete."

    invoke-virtual {p0, p2, p1}, LK0/a;->j(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lv1/k;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Client package name cannot be null!"

    invoke-static {p1, v0}, LG0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, LD0/r;->a()LD0/r$a;

    move-result-object v0

    sget-object v1, Ls0/k;->k:LB0/e;

    filled-new-array {v1}, [LB0/e;

    move-result-object v1

    invoke-virtual {v0, v1}, LD0/r$a;->e([LB0/e;)LD0/r$a;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/auth/p3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/auth/p3;-><init>(Lcom/google/android/gms/internal/auth/c;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, LD0/r$a;->c(LD0/n;)LD0/r$a;

    move-result-object p1

    const/16 v0, 0x5ea

    invoke-virtual {p1, v0}, LD0/r$a;->f(I)LD0/r$a;

    move-result-object p1

    invoke-virtual {p1}, LD0/r$a;->a()LD0/r;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/k;->T(LD0/r;)Lv1/k;

    move-result-object p1

    return-object p1
.end method

.method public final i(Landroid/accounts/Account;)Lv1/k;
    .locals 2
    .param p1    # Landroid/accounts/Account;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "account cannot be null."

    invoke-static {p1, v0}, LG0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, LD0/r;->a()LD0/r$a;

    move-result-object v0

    sget-object v1, Ls0/k;->k:LB0/e;

    filled-new-array {v1}, [LB0/e;

    move-result-object v1

    invoke-virtual {v0, v1}, LD0/r$a;->e([LB0/e;)LD0/r$a;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/auth/q3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/auth/q3;-><init>(Lcom/google/android/gms/internal/auth/c;Landroid/accounts/Account;)V

    invoke-virtual {v0, v1}, LD0/r$a;->c(LD0/n;)LD0/r$a;

    move-result-object p1

    const/16 v0, 0x5ed

    invoke-virtual {p1, v0}, LD0/r$a;->f(I)LD0/r$a;

    move-result-object p1

    invoke-virtual {p1}, LD0/r$a;->a()LD0/r;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/k;->T(LD0/r;)Lv1/k;

    move-result-object p1

    return-object p1
.end method

.method public final u(Ls0/b;)Lv1/k;
    .locals 2
    .param p1    # Ls0/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "request cannot be null."

    invoke-static {p1, v0}, LG0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, LD0/r;->a()LD0/r$a;

    move-result-object v0

    sget-object v1, Ls0/k;->k:LB0/e;

    filled-new-array {v1}, [LB0/e;

    move-result-object v1

    invoke-virtual {v0, v1}, LD0/r$a;->e([LB0/e;)LD0/r$a;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/auth/t3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/auth/t3;-><init>(Lcom/google/android/gms/internal/auth/c;Ls0/b;)V

    invoke-virtual {v0, v1}, LD0/r$a;->c(LD0/n;)LD0/r$a;

    move-result-object p1

    const/16 v0, 0x5eb

    invoke-virtual {p1, v0}, LD0/r$a;->f(I)LD0/r$a;

    move-result-object p1

    invoke-virtual {p1}, LD0/r$a;->a()LD0/r;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/k;->T(LD0/r;)Lv1/k;

    move-result-object p1

    return-object p1
.end method

.method public final w(Lcom/google/android/gms/internal/auth/Z;)Lv1/k;
    .locals 2

    invoke-static {}, LD0/r;->a()LD0/r$a;

    move-result-object v0

    sget-object v1, Ls0/k;->l:LB0/e;

    filled-new-array {v1}, [LB0/e;

    move-result-object v1

    invoke-virtual {v0, v1}, LD0/r$a;->e([LB0/e;)LD0/r$a;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/auth/s3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/auth/s3;-><init>(Lcom/google/android/gms/internal/auth/c;Lcom/google/android/gms/internal/auth/Z;)V

    invoke-virtual {v0, v1}, LD0/r$a;->c(LD0/n;)LD0/r$a;

    move-result-object p1

    const/16 v0, 0x5e9

    invoke-virtual {p1, v0}, LD0/r$a;->f(I)LD0/r$a;

    move-result-object p1

    invoke-virtual {p1}, LD0/r$a;->a()LD0/r;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/k;->T(LD0/r;)Lv1/k;

    move-result-object p1

    return-object p1
.end method

.method public final x(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Lv1/k;
    .locals 2
    .param p1    # Landroid/accounts/Account;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "Account name cannot be null!"

    invoke-static {p1, v0}, LG0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Scope cannot be null!"

    invoke-static {p2, v0}, LG0/A;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {}, LD0/r;->a()LD0/r$a;

    move-result-object v0

    sget-object v1, Ls0/k;->l:LB0/e;

    filled-new-array {v1}, [LB0/e;

    move-result-object v1

    invoke-virtual {v0, v1}, LD0/r$a;->e([LB0/e;)LD0/r$a;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/auth/r3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/auth/r3;-><init>(Lcom/google/android/gms/internal/auth/c;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, LD0/r$a;->c(LD0/n;)LD0/r$a;

    move-result-object p1

    const/16 p2, 0x5e8

    invoke-virtual {p1, p2}, LD0/r$a;->f(I)LD0/r$a;

    move-result-object p1

    invoke-virtual {p1}, LD0/r$a;->a()LD0/r;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/k;->T(LD0/r;)Lv1/k;

    move-result-object p1

    return-object p1
.end method
