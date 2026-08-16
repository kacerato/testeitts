.class public final synthetic Lcom/google/android/gms/internal/auth/p3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD0/n;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/auth/c;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/auth/c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/auth/p3;->a:Lcom/google/android/gms/internal/auth/c;

    iput-object p2, p0, Lcom/google/android/gms/internal/auth/p3;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/auth/p3;->a:Lcom/google/android/gms/internal/auth/c;

    iget-object v1, p0, Lcom/google/android/gms/internal/auth/p3;->b:Ljava/lang/String;

    check-cast p1, Lcom/google/android/gms/internal/auth/h3;

    check-cast p2, Lv1/l;

    invoke-virtual {p1}, LG0/f;->M()Landroid/os/IInterface;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/auth/o3;

    new-instance v2, Lcom/google/android/gms/internal/auth/x3;

    invoke-direct {v2, v0, p2}, Lcom/google/android/gms/internal/auth/x3;-><init>(Lcom/google/android/gms/internal/auth/c;Lv1/l;)V

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/auth/o3;->h1(Lcom/google/android/gms/internal/auth/j3;Ljava/lang/String;)V

    return-void
.end method
