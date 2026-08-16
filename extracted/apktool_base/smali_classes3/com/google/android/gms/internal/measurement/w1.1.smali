.class public abstract Lcom/google/android/gms/internal/measurement/w1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final b:J

.field public final c:J

.field public final d:Z

.field public final synthetic e:Lcom/google/android/gms/internal/measurement/I1;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/measurement/I1;Z)V
    .locals 2

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/w1;->e:Lcom/google/android/gms/internal/measurement/I1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/internal/measurement/I1;->b:LT0/g;

    invoke-interface {v0}, LT0/g;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/w1;->b:J

    iget-object p1, p1, Lcom/google/android/gms/internal/measurement/I1;->b:LT0/g;

    invoke-interface {p1}, LT0/g;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/measurement/w1;->c:J

    iput-boolean p2, p0, Lcom/google/android/gms/internal/measurement/w1;->d:Z

    return-void
.end method


# virtual methods
.method public abstract a()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/w1;->e:Lcom/google/android/gms/internal/measurement/I1;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/I1;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/w1;->b()V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/w1;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/measurement/w1;->e:Lcom/google/android/gms/internal/measurement/I1;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/google/android/gms/internal/measurement/w1;->d:Z

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/gms/internal/measurement/I1;->n(Ljava/lang/Exception;ZZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/w1;->b()V

    return-void
.end method
