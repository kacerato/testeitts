.class public final Lcom/google/android/gms/measurement/internal/o5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/m5;

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/m5;

.field public final synthetic d:J

.field public final synthetic e:Z

.field public final synthetic f:Lcom/google/android/gms/measurement/internal/u5;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/u5;Lcom/google/android/gms/measurement/internal/m5;Lcom/google/android/gms/measurement/internal/m5;JZ)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/o5;->b:Lcom/google/android/gms/measurement/internal/m5;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/o5;->c:Lcom/google/android/gms/measurement/internal/m5;

    iput-wide p4, p0, Lcom/google/android/gms/measurement/internal/o5;->d:J

    iput-boolean p6, p0, Lcom/google/android/gms/measurement/internal/o5;->e:Z

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/o5;->f:Lcom/google/android/gms/measurement/internal/u5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/o5;->f:Lcom/google/android/gms/measurement/internal/u5;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/o5;->b:Lcom/google/android/gms/measurement/internal/m5;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/o5;->c:Lcom/google/android/gms/measurement/internal/m5;

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/o5;->d:J

    iget-boolean v5, p0, Lcom/google/android/gms/measurement/internal/o5;->e:Z

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/measurement/internal/u5;->B(Lcom/google/android/gms/measurement/internal/m5;Lcom/google/android/gms/measurement/internal/m5;JZLandroid/os/Bundle;)V

    return-void
.end method
