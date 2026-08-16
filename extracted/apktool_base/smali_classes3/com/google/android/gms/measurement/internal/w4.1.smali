.class public final Lcom/google/android/gms/measurement/internal/w4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:J

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/b5;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/b5;J)V
    .locals 0

    iput-wide p2, p0, Lcom/google/android/gms/measurement/internal/w4;->b:J

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/w4;->c:Lcom/google/android/gms/measurement/internal/b5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/w4;->c:Lcom/google/android/gms/measurement/internal/b5;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/h2;->j()V

    iget-object v1, v0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->a()Lcom/google/android/gms/measurement/internal/B2;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/B2;->v()Lcom/google/android/gms/measurement/internal/z2;

    move-result-object v2

    const-string v3, "Resetting analytics data (FE)"

    invoke-virtual {v2, v3}, Lcom/google/android/gms/measurement/internal/z2;->a(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->z()Lcom/google/android/gms/measurement/internal/x6;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/S3;->h()V

    iget-object v3, v3, Lcom/google/android/gms/measurement/internal/x6;->f:Lcom/google/android/gms/measurement/internal/u6;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/u6;->c()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->L()Lcom/google/android/gms/measurement/internal/p2;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p2;->p()V

    iget-object v3, v0, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/p3;->g()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/p3;->x()Lcom/google/android/gms/measurement/internal/P2;

    move-result-object v1

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/P2;->f:Lcom/google/android/gms/measurement/internal/M2;

    iget-wide v5, p0, Lcom/google/android/gms/measurement/internal/w4;->b:J

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/measurement/internal/M2;->b(J)V

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/S3;->a:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/p3;->x()Lcom/google/android/gms/measurement/internal/P2;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/gms/measurement/internal/P2;->w:Lcom/google/android/gms/measurement/internal/O2;

    invoke-virtual {v5}, Lcom/google/android/gms/measurement/internal/O2;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/P2;->w:Lcom/google/android/gms/measurement/internal/O2;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/measurement/internal/O2;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/P2;->q:Lcom/google/android/gms/measurement/internal/M2;

    const-wide/16 v7, 0x0

    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/measurement/internal/M2;->b(J)V

    iget-object v5, v1, Lcom/google/android/gms/measurement/internal/P2;->r:Lcom/google/android/gms/measurement/internal/M2;

    invoke-virtual {v5, v7, v8}, Lcom/google/android/gms/measurement/internal/M2;->b(J)V

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/p3;->w()Lcom/google/android/gms/measurement/internal/m;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/measurement/internal/m;->L()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1, v3}, Lcom/google/android/gms/measurement/internal/P2;->y(Z)V

    :cond_1
    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/P2;->x:Lcom/google/android/gms/measurement/internal/O2;

    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/O2;->b(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/google/android/gms/measurement/internal/P2;->y:Lcom/google/android/gms/measurement/internal/M2;

    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/measurement/internal/M2;->b(J)V

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/P2;->z:Lcom/google/android/gms/measurement/internal/L2;

    invoke-virtual {v1, v6}, Lcom/google/android/gms/measurement/internal/L2;->b(Landroid/os/Bundle;)V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->J()Lcom/google/android/gms/measurement/internal/f6;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/f6;->p()V

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->z()Lcom/google/android/gms/measurement/internal/x6;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/measurement/internal/x6;->e:Lcom/google/android/gms/measurement/internal/w6;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/w6;->a()V

    iput-boolean v3, v0, Lcom/google/android/gms/measurement/internal/b5;->s:Z

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/p3;->J()Lcom/google/android/gms/measurement/internal/f6;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/f6;->q(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method
