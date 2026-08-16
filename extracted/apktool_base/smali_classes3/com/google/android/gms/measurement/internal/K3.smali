.class public final synthetic Lcom/google/android/gms/measurement/internal/K3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/R3;

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/o7;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/R3;Lcom/google/android/gms/measurement/internal/o7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/K3;->b:Lcom/google/android/gms/measurement/internal/R3;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/K3;->c:Lcom/google/android/gms/measurement/internal/o7;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/K3;->b:Lcom/google/android/gms/measurement/internal/R3;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/K3;->c:Lcom/google/android/gms/measurement/internal/o7;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/R3;->l0(Lcom/google/android/gms/measurement/internal/o7;)V

    return-void
.end method
