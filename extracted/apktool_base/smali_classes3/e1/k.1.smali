.class public final Le1/k;
.super Lcom/google/android/gms/common/api/k;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/auth/api/identity/f;


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

    sput-object v0, Le1/k;->l:Lcom/google/android/gms/common/api/a$g;

    new-instance v1, Le1/f;

    invoke-direct {v1}, Le1/f;-><init>()V

    sput-object v1, Le1/k;->m:Lcom/google/android/gms/common/api/a$a;

    new-instance v2, Lcom/google/android/gms/common/api/a;

    const-string v3, "Auth.Api.Identity.CredentialSaving.API"

    invoke-direct {v2, v3, v1, v0}, Lcom/google/android/gms/common/api/a;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/api/a$a;Lcom/google/android/gms/common/api/a$g;)V

    sput-object v2, Le1/k;->n:Lcom/google/android/gms/common/api/a;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/auth/api/identity/z;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/auth/api/identity/z;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Le1/k;->n:Lcom/google/android/gms/common/api/a;

    sget-object v1, Lcom/google/android/gms/common/api/k$a;->c:Lcom/google/android/gms/common/api/k$a;

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/common/api/k;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/k$a;)V

    .line 2
    invoke-static {}, Le1/x;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le1/k;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/auth/api/identity/z;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/auth/api/identity/z;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    sget-object v0, Le1/k;->n:Lcom/google/android/gms/common/api/a;

    sget-object v1, Lcom/google/android/gms/common/api/k$a;->c:Lcom/google/android/gms/common/api/k$a;

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/common/api/k;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/k$a;)V

    .line 4
    invoke-static {}, Le1/x;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Le1/k;->k:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A(Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest;)Lv1/k;
    .locals 2
    .param p1    # Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest;",
            ")",
            "Lv1/k<",
            "Lcom/google/android/gms/auth/api/identity/j;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest;->v0(Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest;)Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest$a;

    move-result-object p1

    iget-object v0, p0, Le1/k;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest$a;->f(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest$a;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest$a;->a()Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest;

    move-result-object p1

    invoke-static {}, LD0/r;->a()LD0/r$a;

    move-result-object v0

    sget-object v1, Le1/w;->h:LB0/e;

    filled-new-array {v1}, [LB0/e;

    move-result-object v1

    invoke-virtual {v0, v1}, LD0/r$a;->e([LB0/e;)LD0/r$a;

    move-result-object v0

    new-instance v1, Le1/j;

    invoke-direct {v1, p0, p1}, Le1/j;-><init>(Le1/k;Lcom/google/android/gms/auth/api/identity/SaveAccountLinkingTokenRequest;)V

    invoke-virtual {v0, v1}, LD0/r$a;->c(LD0/n;)LD0/r$a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LD0/r$a;->d(Z)LD0/r$a;

    move-result-object p1

    const/16 v0, 0x5ff

    invoke-virtual {p1, v0}, LD0/r$a;->f(I)LD0/r$a;

    move-result-object p1

    invoke-virtual {p1}, LD0/r$a;->a()LD0/r;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/k;->N(LD0/r;)Lv1/k;

    move-result-object p1

    return-object p1
.end method

.method public final h(Landroid/content/Intent;)Lcom/google/android/gms/common/api/Status;
    .locals 2
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    sget-object p1, Lcom/google/android/gms/common/api/Status;->i:Lcom/google/android/gms/common/api/Status;

    return-object p1

    :cond_0
    const-string v0, "status"

    sget-object v1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v0, v1}, LI0/d;->b(Landroid/content/Intent;Ljava/lang/String;Landroid/os/Parcelable$Creator;)LI0/c;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    if-nez p1, :cond_1

    sget-object p1, Lcom/google/android/gms/common/api/Status;->i:Lcom/google/android/gms/common/api/Status;

    :cond_1
    return-object p1
.end method

.method public final n(Lcom/google/android/gms/auth/api/identity/k;)Lv1/k;
    .locals 2
    .param p1    # Lcom/google/android/gms/auth/api/identity/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/auth/api/identity/k;",
            ")",
            "Lv1/k<",
            "Lcom/google/android/gms/auth/api/identity/l;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, LG0/A;->r(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/auth/api/identity/k;->b0(Lcom/google/android/gms/auth/api/identity/k;)Lcom/google/android/gms/auth/api/identity/k$a;

    move-result-object p1

    iget-object v0, p0, Le1/k;->k:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/auth/api/identity/k$a;->d(Ljava/lang/String;)Lcom/google/android/gms/auth/api/identity/k$a;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/identity/k$a;->a()Lcom/google/android/gms/auth/api/identity/k;

    move-result-object p1

    invoke-static {}, LD0/r;->a()LD0/r$a;

    move-result-object v0

    sget-object v1, Le1/w;->f:LB0/e;

    filled-new-array {v1}, [LB0/e;

    move-result-object v1

    invoke-virtual {v0, v1}, LD0/r$a;->e([LB0/e;)LD0/r$a;

    move-result-object v0

    new-instance v1, Le1/i;

    invoke-direct {v1, p0, p1}, Le1/i;-><init>(Le1/k;Lcom/google/android/gms/auth/api/identity/k;)V

    invoke-virtual {v0, v1}, LD0/r$a;->c(LD0/n;)LD0/r$a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, LD0/r$a;->d(Z)LD0/r$a;

    move-result-object p1

    const/16 v0, 0x600

    invoke-virtual {p1, v0}, LD0/r$a;->f(I)LD0/r$a;

    move-result-object p1

    invoke-virtual {p1}, LD0/r$a;->a()LD0/r;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/k;->N(LD0/r;)Lv1/k;

    move-result-object p1

    return-object p1
.end method
