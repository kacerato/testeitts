.class public final Lcom/google/android/gms/internal/auth/g;
.super Lcom/google/android/gms/internal/auth/i;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lcom/google/android/gms/internal/auth/h;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/auth/h;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/g;->e:Lcom/google/android/gms/internal/auth/h;

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final E(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/g;->e:Lcom/google/android/gms/internal/auth/h;

    new-instance v1, Lcom/google/android/gms/internal/auth/l;

    if-eqz p1, :cond_0

    sget-object p1, Lcom/google/android/gms/common/api/Status;->g:Lcom/google/android/gms/common/api/Status;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/auth/m;->e()Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    :goto_0
    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/auth/l;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->o(Lcom/google/android/gms/common/api/u;)V

    return-void
.end method
