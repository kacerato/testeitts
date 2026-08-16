.class public abstract Lcom/android/tools/r8/internal/VB;
.super Lcom/android/tools/r8/internal/nC;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/f6;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/nC;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic f()Lcom/android/tools/r8/internal/f6;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VB;->r()Lcom/android/tools/r8/internal/VB;

    move-result-object v0

    return-object v0
.end method

.method public final j()Lcom/android/tools/r8/internal/XB;
    .locals 2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public final q()Lcom/android/tools/r8/internal/XB;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VB;->r()Lcom/android/tools/r8/internal/VB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nC;->n()Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    return-object v0
.end method

.method public abstract r()Lcom/android/tools/r8/internal/VB;
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/VB;->r()Lcom/android/tools/r8/internal/VB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nC;->n()Lcom/android/tools/r8/internal/QC;

    move-result-object v0

    return-object v0
.end method
