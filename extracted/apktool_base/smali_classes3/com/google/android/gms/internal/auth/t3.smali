.class public final synthetic Lcom/google/android/gms/internal/auth/t3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD0/n;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/auth/c;

.field public final synthetic b:Ls0/b;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/auth/c;Ls0/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/t3;->a:Lcom/google/android/gms/internal/auth/c;

    iput-object p2, p0, Lcom/google/android/gms/internal/auth/t3;->b:Ls0/b;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/t3;->a:Lcom/google/android/gms/internal/auth/c;

    iget-object v1, p0, Lcom/google/android/gms/internal/auth/t3;->b:Ls0/b;

    check-cast p1, Lcom/google/android/gms/internal/auth/h3;

    check-cast p2, Lv1/l;

    new-instance v2, Lcom/google/android/gms/internal/auth/y3;

    invoke-direct {v2, v0, p2}, Lcom/google/android/gms/internal/auth/y3;-><init>(Lcom/google/android/gms/internal/auth/c;Lv1/l;)V

    invoke-virtual {p1}, LG0/f;->M()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/auth/o3;

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/auth/o3;->e1(Lcom/google/android/gms/internal/auth/l3;Ls0/b;)V

    return-void
.end method
