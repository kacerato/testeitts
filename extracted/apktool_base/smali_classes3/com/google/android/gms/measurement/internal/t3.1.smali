.class public final Lcom/google/android/gms/measurement/internal/t3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:J

.field public final synthetic f:Lcom/google/android/gms/measurement/internal/R3;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/R3;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/t3;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/t3;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/t3;->d:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/measurement/internal/t3;->e:J

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/t3;->f:Lcom/google/android/gms/measurement/internal/R3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/t3;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/t3;->f:Lcom/google/android/gms/measurement/internal/R3;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/t3;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/R3;->i1()Lcom/google/android/gms/measurement/internal/c7;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/c7;->s0(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/m5;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/t3;->d:Ljava/lang/String;

    iget-wide v2, p0, Lcom/google/android/gms/measurement/internal/t3;->e:J

    new-instance v4, Lcom/google/android/gms/measurement/internal/m5;

    invoke-direct {v4, v1, v0, v2, v3}, Lcom/google/android/gms/measurement/internal/m5;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/t3;->f:Lcom/google/android/gms/measurement/internal/R3;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/t3;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/R3;->i1()Lcom/google/android/gms/measurement/internal/c7;

    move-result-object v0

    invoke-virtual {v0, v1, v4}, Lcom/google/android/gms/measurement/internal/c7;->s0(Ljava/lang/String;Lcom/google/android/gms/measurement/internal/m5;)V

    return-void
.end method
