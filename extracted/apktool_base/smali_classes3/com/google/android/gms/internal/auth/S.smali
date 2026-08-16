.class public final Lcom/google/android/gms/internal/auth/S;
.super Lcom/google/android/gms/internal/auth/F;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lcom/google/android/gms/internal/auth/T;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/auth/T;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/S;->e:Lcom/google/android/gms/internal/auth/T;

    invoke-direct {p0}, Lcom/google/android/gms/internal/auth/F;-><init>()V

    return-void
.end method


# virtual methods
.method public final V0(Lx0/e;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/S;->e:Lcom/google/android/gms/internal/auth/T;

    new-instance v1, Lcom/google/android/gms/internal/auth/X;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/auth/X;-><init>(Lx0/e;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->o(Lcom/google/android/gms/common/api/u;)V

    return-void
.end method
