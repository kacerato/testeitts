.class public final Lcom/google/android/gms/internal/auth/U;
.super Lcom/google/android/gms/internal/auth/F;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lcom/google/android/gms/internal/auth/V;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/auth/V;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/U;->e:Lcom/google/android/gms/internal/auth/V;

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/F;-><init>()V

    return-void
.end method


# virtual methods
.method public final S(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/U;->e:Lcom/google/android/gms/internal/auth/V;

    new-instance v1, Lcom/google/android/gms/internal/auth/Y;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/auth/Y;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->o(Lcom/google/android/gms/common/api/u;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/auth/U;->e:Lcom/google/android/gms/internal/auth/V;

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0xbbe

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    new-instance v1, Lcom/google/android/gms/internal/auth/Y;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/auth/Y;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {p1, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->o(Lcom/google/android/gms/common/api/u;)V

    return-void
.end method
