.class public final Lcom/google/android/gms/measurement/internal/X6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/l7;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/measurement/internal/c7;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/c7;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/X6;->a:Lcom/google/android/gms/measurement/internal/c7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/measurement/internal/X6;->a:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c7;->w0()Lcom/google/android/gms/measurement/internal/p3;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/c7;->w0()Lcom/google/android/gms/measurement/internal/p3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/B2;->o()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object p1

    const-string p3, "AppId not known when logging event"

    invoke-virtual {p1, p3, p2}, Lcom/google/android/gms/measurement/internal/z2;->b(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/X6;->a:Lcom/google/android/gms/measurement/internal/c7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/c7;->b()Lcom/google/android/gms/measurement/internal/h3;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/measurement/internal/V6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/measurement/internal/V6;-><init>(Lcom/google/android/gms/measurement/internal/X6;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/h3;->t(Ljava/lang/Runnable;)V

    return-void
.end method
