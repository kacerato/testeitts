.class public interface abstract Lcom/android/tools/r8/internal/cW;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/M2;
.end method

.method public abstract a(Lcom/android/tools/r8/graph/y;)V
.end method

.method public abstract a(Lcom/android/tools/r8/graph/M2;)Z
.end method

.method public b(Lcom/android/tools/r8/graph/M2;)Z
    .locals 1

    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/cW;->c(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0, p1}, Lcom/android/tools/r8/internal/cW;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public abstract c(Lcom/android/tools/r8/graph/M2;)Z
.end method
