.class public final Lcom/google/android/gms/measurement/internal/r5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/m5;

.field public final synthetic c:J

.field public final synthetic d:Lcom/google/android/gms/measurement/internal/u5;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/u5;Lcom/google/android/gms/measurement/internal/m5;J)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/r5;->b:Lcom/google/android/gms/measurement/internal/m5;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/r5;->c:J

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/r5;->d:Lcom/google/android/gms/measurement/internal/u5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/r5;->d:Lcom/google/android/gms/measurement/internal/u5;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/r5;->b:Lcom/google/android/gms/measurement/internal/m5;

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/r5;->c:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/u5;->C(Lcom/google/android/gms/measurement/internal/m5;ZJ)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/u5;->e:Lcom/google/android/gms/measurement/internal/m5;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->J()Lcom/google/android/gms/measurement/internal/f6;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/f6;->u(Lcom/google/android/gms/measurement/internal/m5;)V

    return-void
.end method
