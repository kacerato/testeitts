.class public final Lcom/google/android/gms/measurement/internal/O6;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/Map;

.field public final c:Lcom/google/android/gms/measurement/internal/k5;

.field public final d:Lcom/google/android/gms/internal/measurement/C3;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/k5;Lcom/google/android/gms/internal/measurement/C3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/O6;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/O6;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/gms/measurement/internal/O6;->c:Lcom/google/android/gms/measurement/internal/k5;

    iput-object p4, p0, Lcom/google/android/gms/measurement/internal/O6;->d:Lcom/google/android/gms/internal/measurement/C3;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/O6;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/O6;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final c()Lcom/google/android/gms/measurement/internal/k5;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/O6;->c:Lcom/google/android/gms/measurement/internal/k5;

    return-object v0
.end method

.method public final d()Lcom/google/android/gms/internal/measurement/C3;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/O6;->d:Lcom/google/android/gms/internal/measurement/C3;

    return-object v0
.end method
