.class public final synthetic Lcom/google/android/gms/measurement/internal/Y2;
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

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/Y2;->b:Lcom/google/android/gms/measurement/internal/c3;

    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/Y2;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/measurement/b8;

    new-instance v1, Lcom/google/android/gms/measurement/internal/a3;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/Y2;->b:Lcom/google/android/gms/measurement/internal/c3;

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/Y2;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/measurement/internal/a3;-><init>(Lcom/google/android/gms/measurement/internal/c3;Ljava/lang/String;)V

    const-string v2, "internal.appMetadata"

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/measurement/b8;-><init>(Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method
