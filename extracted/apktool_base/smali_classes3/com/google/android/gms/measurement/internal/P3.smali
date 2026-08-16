.class public final synthetic Lcom/google/android/gms/measurement/internal/P3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/R3;

.field public final synthetic c:Landroid/os/Bundle;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/google/android/gms/measurement/internal/o7;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/R3;Landroid/os/Bundle;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/o7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/P3;->b:Lcom/google/android/gms/measurement/internal/R3;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/P3;->c:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/P3;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/P3;->e:Lcom/google/android/gms/measurement/internal/o7;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/P3;->b:Lcom/google/android/gms/measurement/internal/R3;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/P3;->c:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/P3;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/P3;->e:Lcom/google/android/gms/measurement/internal/o7;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/R3;->h1(Landroid/os/Bundle;Ljava/lang/String;Lcom/google/android/gms/measurement/internal/o7;)V

    return-void
.end method
