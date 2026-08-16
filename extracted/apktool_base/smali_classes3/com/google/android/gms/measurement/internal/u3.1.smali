.class public final Lcom/google/android/gms/measurement/internal/u3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/i;

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/o7;

.field public final synthetic d:Lcom/google/android/gms/measurement/internal/R3;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/R3;Lcom/google/android/gms/measurement/internal/i;Lcom/google/android/gms/measurement/internal/o7;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/u3;->b:Lcom/google/android/gms/measurement/internal/i;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/u3;->c:Lcom/google/android/gms/measurement/internal/o7;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/u3;->d:Lcom/google/android/gms/measurement/internal/R3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/u3;->d:Lcom/google/android/gms/measurement/internal/R3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/R3;->i1()Lcom/google/android/gms/measurement/internal/c7;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/c7;->D()V

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/u3;->b:Lcom/google/android/gms/measurement/internal/i;

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/i;->d:Lcom/google/android/gms/measurement/internal/i7;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/i7;->n()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/u3;->c:Lcom/google/android/gms/measurement/internal/o7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/R3;->i1()Lcom/google/android/gms/measurement/internal/c7;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/c7;->l0(Lcom/google/android/gms/measurement/internal/i;Lcom/google/android/gms/measurement/internal/o7;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/u3;->c:Lcom/google/android/gms/measurement/internal/o7;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/R3;->i1()Lcom/google/android/gms/measurement/internal/c7;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/c7;->j0(Lcom/google/android/gms/measurement/internal/i;Lcom/google/android/gms/measurement/internal/o7;)V

    return-void
.end method
