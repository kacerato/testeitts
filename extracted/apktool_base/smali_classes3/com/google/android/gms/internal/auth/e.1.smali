.class public final Lcom/google/android/gms/internal/auth/e;
.super Lcom/google/android/gms/internal/auth/i;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lcom/google/android/gms/internal/auth/f;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/auth/f;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/e;->e:Lcom/google/android/gms/internal/auth/f;

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final N(Landroid/accounts/Account;)V
    .locals 3
    .param p1    # Landroid/accounts/Account;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/e;->e:Lcom/google/android/gms/internal/auth/f;

    new-instance v1, Lcom/google/android/gms/internal/auth/j;

    if-eqz p1, :cond_0

    sget-object v2, Lcom/google/android/gms/common/api/Status;->g:Lcom/google/android/gms/common/api/Status;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/auth/m;->e()Lcom/google/android/gms/common/api/Status;

    move-result-object v2

    :goto_0
    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/internal/auth/j;-><init>(Lcom/google/android/gms/common/api/Status;Landroid/accounts/Account;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->o(Lcom/google/android/gms/common/api/u;)V

    return-void
.end method
