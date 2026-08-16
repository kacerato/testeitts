.class public interface abstract Lcom/android/tools/r8/internal/l1;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(Lcom/android/tools/r8/internal/o1;)Lcom/android/tools/r8/internal/l1;
.end method

.method public abstract a(Lcom/android/tools/r8/internal/q1;)Lcom/android/tools/r8/internal/l1;
.end method

.method public abstract a(Lcom/android/tools/r8/internal/r1;)Lcom/android/tools/r8/internal/l1;
.end method

.method public a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;)V
    .locals 1

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/ki1;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/internal/ki1;-><init>(Lcom/android/tools/r8/internal/l1;Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/E0;->e(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/M2;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/y;->e()Lcom/android/tools/r8/graph/x0;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/tools/r8/graph/x0;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/H2;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/tools/r8/internal/l1;->a(Lcom/android/tools/r8/graph/M2;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p0, p2, p1}, Lcom/android/tools/r8/internal/l1;->a(Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/graph/y;)V

    :cond_0
    return-void
.end method

.method public abstract a(Lcom/android/tools/r8/graph/M2;)Z
.end method

.method public abstract build()Lcom/android/tools/r8/internal/m1;
.end method
