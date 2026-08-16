.class public final Lcom/google/android/gms/measurement/internal/O3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/internal/measurement/z0;

.field public final synthetic c:Lcom/google/android/gms/measurement/internal/I;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;Lcom/google/android/gms/internal/measurement/z0;Lcom/google/android/gms/measurement/internal/I;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/O3;->b:Lcom/google/android/gms/internal/measurement/z0;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/O3;->c:Lcom/google/android/gms/measurement/internal/I;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/O3;->d:Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/O3;->e:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/O3;->e:Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/AppMeasurementDynamiteService;->e:Lcom/google/android/gms/measurement/internal/p3;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/p3;->J()Lcom/google/android/gms/measurement/internal/f6;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/O3;->b:Lcom/google/android/gms/internal/measurement/z0;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/O3;->c:Lcom/google/android/gms/measurement/internal/I;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/O3;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/f6;->B(Lcom/google/android/gms/internal/measurement/z0;Lcom/google/android/gms/measurement/internal/I;Ljava/lang/String;)V

    return-void
.end method
