.class public final Lcom/google/android/gms/internal/measurement/K5;
.super Lcom/google/android/gms/internal/measurement/k;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/l6;)V
    .locals 2

    const-string p1, "internal.remoteConfig"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/k;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/k;->c:Ljava/util/Map;

    new-instance v0, Lcom/google/android/gms/internal/measurement/l5;

    const-string v1, "getValue"

    invoke-direct {v0, p0, v1, p2}, Lcom/google/android/gms/internal/measurement/l5;-><init>(Lcom/google/android/gms/internal/measurement/K5;Ljava/lang/String;Lcom/google/android/gms/internal/measurement/l6;)V

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final i(Lcom/google/android/gms/internal/measurement/h2;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/q;
    .locals 0

    sget-object p1, Lcom/google/android/gms/internal/measurement/q;->o4:Lcom/google/android/gms/internal/measurement/q;

    return-object p1
.end method
