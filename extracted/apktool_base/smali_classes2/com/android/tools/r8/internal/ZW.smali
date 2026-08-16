.class public abstract Lcom/android/tools/r8/internal/ZW;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;Ljava/util/Collection;Ljava/util/function/Predicate;)Lcom/android/tools/r8/internal/m80;
    .locals 5

    .line 1
    invoke-static {}, Lcom/android/tools/r8/internal/m80;->c()Lcom/android/tools/r8/internal/m80;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/android/tools/r8/internal/m80;->c()Lcom/android/tools/r8/internal/m80;

    move-result-object v1

    .line 3
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/graph/H2;

    .line 4
    new-instance v4, Lcom/android/tools/r8/internal/k41;

    invoke-direct {v4, p3, v3, v1, v0}, Lcom/android/tools/r8/internal/k41;-><init>(Ljava/util/function/Predicate;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/m80;Lcom/android/tools/r8/internal/m80;)V

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/graph/H2;->l(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p3, v1, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 6
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    .line 7
    new-instance p3, Lcom/android/tools/r8/internal/XW;

    invoke-direct {p3, p0, p1, v0, v1}, Lcom/android/tools/r8/internal/XW;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;Lcom/android/tools/r8/internal/m80;Lcom/android/tools/r8/internal/m80;)V

    .line 8
    invoke-virtual {p3, p2}, Lcom/android/tools/r8/internal/Wj;->a(Ljava/util/Collection;)V

    .line 9
    :cond_1
    new-instance p3, Lcom/android/tools/r8/internal/YW;

    invoke-direct {p3, p0, p1, v0, v1}, Lcom/android/tools/r8/internal/YW;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;Lcom/android/tools/r8/internal/m80;Lcom/android/tools/r8/internal/m80;)V

    .line 10
    invoke-virtual {p3, p2}, Lcom/android/tools/r8/internal/Wj;->a(Ljava/util/Collection;)V

    .line 11
    iget-object p0, p3, Lcom/android/tools/r8/internal/YW;->g:Lcom/android/tools/r8/internal/m80;

    return-object p0
.end method

.method public static synthetic a(Ljava/util/function/Predicate;Lcom/android/tools/r8/graph/H2;Lcom/android/tools/r8/internal/m80;Lcom/android/tools/r8/internal/m80;Lcom/android/tools/r8/graph/H5;)V
    .locals 0

    .line 12
    invoke-interface {p0, p4}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 13
    invoke-virtual {p1}, Lcom/android/tools/r8/graph/E0;->isInterface()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 14
    invoke-virtual {p2, p4}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    return-void

    .line 15
    :cond_0
    invoke-virtual {p3, p4}, Lcom/android/tools/r8/internal/Vn;->a(Lcom/android/tools/r8/graph/H0;)Z

    :cond_1
    return-void
.end method
