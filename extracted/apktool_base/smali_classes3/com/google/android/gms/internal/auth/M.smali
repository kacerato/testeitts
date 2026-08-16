.class public final synthetic Lcom/google/android/gms/internal/auth/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD0/n;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/auth/Q;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/auth/Q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/M;->a:Lcom/google/android/gms/internal/auth/Q;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/M;->a:Lcom/google/android/gms/internal/auth/Q;

    check-cast p1, Lcom/google/android/gms/internal/auth/G;

    check-cast p2, Lv1/l;

    new-instance v1, Lcom/google/android/gms/internal/auth/P;

    invoke-direct {v1, v0, p2}, Lcom/google/android/gms/internal/auth/P;-><init>(Lcom/google/android/gms/internal/auth/Q;Lv1/l;)V

    invoke-virtual {p1}, LG0/f;->M()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/auth/J;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/auth/J;->l0(Lcom/google/android/gms/internal/auth/I;)V

    return-void
.end method
