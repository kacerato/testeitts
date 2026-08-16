.class public final Lcom/google/android/gms/measurement/internal/n5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/os/Bundle;

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/m5;

.field public final synthetic d:Lcom/google/android/gms/measurement/internal/m5;

.field public final synthetic e:J

.field public final synthetic f:Lcom/google/android/gms/measurement/internal/u5;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/u5;Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/m5;Lcom/google/android/gms/measurement/internal/m5;J)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/n5;->b:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/n5;->c:Lcom/google/android/gms/measurement/internal/m5;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/n5;->d:Lcom/google/android/gms/measurement/internal/m5;

    iput-wide p5, p0, Lcom/google/android/gms/measurement/internal/n5;->e:J

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/n5;->f:Lcom/google/android/gms/measurement/internal/u5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/n5;->f:Lcom/google/android/gms/measurement/internal/u5;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/n5;->b:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/n5;->c:Lcom/google/android/gms/measurement/internal/m5;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/n5;->d:Lcom/google/android/gms/measurement/internal/m5;

    iget-wide v4, p0, Lcom/google/android/gms/measurement/internal/n5;->e:J

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/measurement/internal/u5;->A(Landroid/os/Bundle;Lcom/google/android/gms/measurement/internal/m5;Lcom/google/android/gms/measurement/internal/m5;J)V

    return-void
.end method
