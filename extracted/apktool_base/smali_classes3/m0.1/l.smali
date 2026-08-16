.class public Lm0/l;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/android/filament/Engine;)V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/filament/Engine;->r()Lcom/google/android/filament/Fence;

    move-result-object v0

    sget-object v1, Lcom/google/android/filament/Fence$b;->FLUSH:Lcom/google/android/filament/Fence$b;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/filament/Fence;->c(Lcom/google/android/filament/Fence$b;J)Lcom/google/android/filament/Fence$a;

    invoke-virtual {p0, v0}, Lcom/google/android/filament/Engine;->D(Lcom/google/android/filament/Fence;)V

    return-void
.end method
