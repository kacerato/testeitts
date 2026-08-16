.class public final synthetic Lcom/google/android/gms/measurement/internal/L3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/R3;

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/o7;

.field public final synthetic d:Landroid/os/Bundle;

.field public final synthetic e:Lcom/google/android/gms/measurement/internal/l2;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/R3;Lcom/google/android/gms/measurement/internal/o7;Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/l2;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/L3;->b:Lcom/google/android/gms/measurement/internal/R3;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/L3;->c:Lcom/google/android/gms/measurement/internal/o7;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/L3;->d:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/L3;->e:Lcom/google/android/gms/measurement/internal/l2;

    iput-object p5, p0, Lcom/google/android/gms/measurement/internal/L3;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/L3;->b:Lcom/google/android/gms/measurement/internal/R3;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/L3;->c:Lcom/google/android/gms/measurement/internal/o7;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/L3;->d:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/L3;->e:Lcom/google/android/gms/measurement/internal/l2;

    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/L3;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/R3;->e1(Lcom/google/android/gms/measurement/internal/o7;Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/l2;Ljava/lang/String;)V

    return-void
.end method
