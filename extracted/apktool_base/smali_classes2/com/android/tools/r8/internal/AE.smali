.class public interface abstract Lcom/android/tools/r8/internal/AE;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lcom/android/tools/r8/internal/GZ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/android/tools/r8/internal/zE;",
        ">;",
        "Lcom/android/tools/r8/internal/GZ<",
        "Lcom/android/tools/r8/internal/zE;",
        ">;"
    }
.end annotation


# virtual methods
.method public h()Lcom/android/tools/r8/internal/zE;
    .locals 1

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/zE;

    invoke-interface {p0}, Lcom/android/tools/r8/internal/AE;->previous()Lcom/android/tools/r8/internal/zE;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract hasPrevious()Z
.end method

.method public n()Lcom/android/tools/r8/internal/zE;
    .locals 1

    invoke-interface {p0}, Lcom/android/tools/r8/internal/AE;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/android/tools/r8/internal/AE;->previous()Lcom/android/tools/r8/internal/zE;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract previous()Lcom/android/tools/r8/internal/zE;
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
