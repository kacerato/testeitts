.class public final Lcom/google/android/gms/internal/measurement/b8;
.super Lcom/google/android/gms/internal/measurement/k;
.source "SourceFile"


# instance fields
.field public final d:Ljava/util/concurrent/Callable;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/Callable;)V
    .locals 0

    const-string p1, "internal.appMetadata"

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/measurement/k;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/b8;->d:Ljava/util/concurrent/Callable;

    return-void
.end method


# virtual methods
.method public final i(Lcom/google/android/gms/internal/measurement/h2;Ljava/util/List;)Lcom/google/android/gms/internal/measurement/q;
    .locals 0

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/measurement/b8;->d:Ljava/util/concurrent/Callable;

    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/measurement/j3;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/measurement/q;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    sget-object p1, Lcom/google/android/gms/internal/measurement/q;->o4:Lcom/google/android/gms/internal/measurement/q;

    return-object p1
.end method
