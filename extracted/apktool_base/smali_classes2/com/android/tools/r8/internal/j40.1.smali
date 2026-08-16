.class public interface abstract Lcom/android/tools/r8/internal/j40;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/internal/VY;)V
.end method

.method public a(Lcom/android/tools/r8/graph/h1;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/h1;->D0()Lcom/android/tools/r8/internal/KV;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Lcom/android/tools/r8/internal/KV;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lcom/android/tools/r8/internal/if1;

    invoke-direct {v1, p0, v0}, Lcom/android/tools/r8/internal/if1;-><init>(Lcom/android/tools/r8/internal/j40;Lcom/android/tools/r8/internal/KV;)V

    new-instance v2, Lcom/android/tools/r8/internal/jf1;

    invoke-direct {v2, p0, v0}, Lcom/android/tools/r8/internal/jf1;-><init>(Lcom/android/tools/r8/internal/j40;Lcom/android/tools/r8/internal/KV;)V

    invoke-virtual {p1, v1, v2}, Lcom/android/tools/r8/graph/h1;->a(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method

.method public abstract a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/WY;)V
.end method

.method public synthetic a(Lcom/android/tools/r8/internal/KV;Lcom/android/tools/r8/graph/g1;)V
    .locals 0

    .line 4
    invoke-interface {p1}, Lcom/android/tools/r8/internal/KV;->b()Lcom/android/tools/r8/internal/VY;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Lcom/android/tools/r8/internal/j40;->a(Lcom/android/tools/r8/graph/g1;Lcom/android/tools/r8/internal/VY;)V

    return-void
.end method

.method public synthetic a(Lcom/android/tools/r8/internal/KV;Lcom/android/tools/r8/graph/j1;)V
    .locals 0

    .line 5
    invoke-interface {p1}, Lcom/android/tools/r8/internal/KV;->c()Lcom/android/tools/r8/internal/WY;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Lcom/android/tools/r8/internal/j40;->a(Lcom/android/tools/r8/graph/j1;Lcom/android/tools/r8/internal/WY;)V

    return-void
.end method
