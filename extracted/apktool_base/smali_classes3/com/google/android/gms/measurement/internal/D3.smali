.class public final Lcom/google/android/gms/measurement/internal/D3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/o7;

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/R3;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/R3;Lcom/google/android/gms/measurement/internal/o7;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/D3;->b:Lcom/google/android/gms/measurement/internal/o7;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/D3;->c:Lcom/google/android/gms/measurement/internal/R3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/D3;->c:Lcom/google/android/gms/measurement/internal/R3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/R3;->i1()Lcom/google/android/gms/measurement/internal/c7;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c7;->D()V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/D3;->b:Lcom/google/android/gms/measurement/internal/o7;

    new-instance v2, Lcom/google/android/gms/measurement/internal/p;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/R3;->i1()Lcom/google/android/gms/measurement/internal/c7;

    move-result-object v0

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/o7;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/c7;->S0(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/google/android/gms/measurement/internal/p;-><init>(Landroid/os/Bundle;)V

    return-object v2
.end method
