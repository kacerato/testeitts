.class public final Lcom/google/android/gms/measurement/internal/t6;
.super Lcom/google/android/gms/measurement/internal/z;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lcom/google/android/gms/measurement/internal/u6;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/u6;Lcom/google/android/gms/measurement/internal/U3;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/t6;->e:Lcom/google/android/gms/measurement/internal/u6;

    invoke-direct {p0, p2}, Lcom/google/android/gms/measurement/internal/z;-><init>(Lcom/google/android/gms/measurement/internal/U3;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/t6;->e:Lcom/google/android/gms/measurement/internal/u6;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/u6;->d:Lcom/google/android/gms/measurement/internal/x6;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    iget-object v2, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->e()LT0/g;

    move-result-object v3

    invoke-interface {v3}, LT0/g;->c()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v5, v3, v4}, Lcom/google/android/gms/measurement/internal/u6;->d(ZZJ)Z

    iget-object v0, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->M()Lcom/google/android/gms/measurement/internal/E0;

    move-result-object v0

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->e()LT0/g;

    move-result-object v1

    invoke-interface {v1}, LT0/g;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/E0;->k(J)V

    return-void
.end method
