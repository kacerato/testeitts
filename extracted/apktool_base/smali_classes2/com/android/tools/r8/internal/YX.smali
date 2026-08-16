.class public final Lcom/android/tools/r8/internal/YX;
.super Lcom/android/tools/r8/internal/wx0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/wx0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;)V

    return-void
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;Ljava/util/ArrayList;Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/internal/j80;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/tools/r8/internal/m80;->d:Lcom/android/tools/r8/internal/k80;

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/j80;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/j80;-><init>()V

    .line 3
    new-instance v1, Lcom/android/tools/r8/internal/t31;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/tools/r8/internal/t31;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;Lcom/android/tools/r8/internal/m80;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object p0

    .line 5
    invoke-static {p2, v1, p0, p3}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/Collection;Ljava/util/function/Consumer;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V

    return-object v0
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;Lcom/android/tools/r8/internal/m80;Ljava/util/Set;)V
    .locals 1

    .line 6
    new-instance v0, Lcom/android/tools/r8/internal/YX;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/internal/YX;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/graph/c4;)V

    .line 7
    invoke-virtual {v0, p3}, Lcom/android/tools/r8/internal/Wj;->a(Ljava/util/Collection;)V

    .line 8
    iget-object p0, v0, Lcom/android/tools/r8/internal/wx0;->g:Lcom/android/tools/r8/internal/m80;

    .line 9
    iget-object p1, p2, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    .line 10
    iget-object p0, p0, Lcom/android/tools/r8/internal/Vn;->b:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-void
.end method
