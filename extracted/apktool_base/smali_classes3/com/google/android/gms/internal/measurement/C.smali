.class public final synthetic Lcom/google/android/gms/internal/measurement/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lcom/google/android/gms/internal/measurement/e0;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/e0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/C;->b:Lcom/google/android/gms/internal/measurement/e0;

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/C;->b:Lcom/google/android/gms/internal/measurement/e0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/e0;->g()Lcom/google/android/gms/internal/measurement/k;

    move-result-object v0

    return-object v0
.end method
