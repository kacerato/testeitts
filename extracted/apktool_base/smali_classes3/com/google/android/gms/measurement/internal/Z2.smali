.class public final synthetic Lcom/google/android/gms/measurement/internal/Z2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/measurement/internal/c3;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/measurement/internal/c3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/Z2;->b:Lcom/google/android/gms/measurement/internal/c3;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/Z2;->b:Lcom/google/android/gms/measurement/internal/c3;

    new-instance v1, Lcom/google/android/gms/internal/measurement/a8;

    iget-object v0, v0, Lcom/google/android/gms/measurement/internal/c3;->k:Lcom/google/android/gms/internal/measurement/M7;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/measurement/a8;-><init>(Lcom/google/android/gms/internal/measurement/M7;)V

    return-object v1
.end method
