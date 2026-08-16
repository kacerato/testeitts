.class public final Lcom/google/android/gms/internal/auth/T;
.super Lcom/google/android/gms/internal/auth/K;
.source "SourceFile"


# instance fields
.field public final synthetic t:Lx0/d;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/auth/W;Lcom/google/android/gms/common/api/l;Lx0/d;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/auth/T;->t:Lx0/d;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/auth/K;-><init>(Lcom/google/android/gms/common/api/l;)V

    return-void
.end method


# virtual methods
.method public final C(Landroid/content/Context;Lcom/google/android/gms/internal/auth/J;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance p1, Lcom/google/android/gms/internal/auth/S;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/auth/S;-><init>(Lcom/google/android/gms/internal/auth/T;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/T;->t:Lx0/d;

    invoke-virtual {p2, p1, v0}, Lcom/google/android/gms/internal/auth/J;->e1(Lcom/google/android/gms/internal/auth/I;Lx0/d;)V

    return-void
.end method
