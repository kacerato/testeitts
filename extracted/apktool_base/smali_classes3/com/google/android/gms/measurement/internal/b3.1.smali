.class public final synthetic Lcom/google/android/gms/measurement/internal/b3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/c3;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/c3;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/b3;->b:Lcom/google/android/gms/measurement/internal/c3;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/b3;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/measurement/K5;

    new-instance v1, Lcom/google/android/gms/measurement/internal/X2;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/b3;->b:Lcom/google/android/gms/measurement/internal/c3;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/b3;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/X2;-><init>(Lcom/google/android/gms/measurement/internal/c3;Ljava/lang/String;)V

    const-string v2, "internal.remoteConfig"

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/measurement/K5;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/l6;)V

    return-object v0
.end method
