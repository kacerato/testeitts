.class public final Lcom/google/android/gms/measurement/internal/q5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:J

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/u5;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/u5;J)V
    .locals 0

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/q5;->b:J

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/u5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/q5;->c:Lcom/google/android/gms/measurement/internal/u5;

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->M()Lcom/google/android/gms/measurement/internal/E0;

    move-result-object v1

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/q5;->b:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/E0;->k(J)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/u5;->e:Lcom/google/android/gms/measurement/internal/m5;

    return-void
.end method
