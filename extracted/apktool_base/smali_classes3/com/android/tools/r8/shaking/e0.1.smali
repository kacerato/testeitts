.class public Lcom/android/tools/r8/shaking/e0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/M70;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/graph/Y5;)Lcom/android/tools/r8/shaking/N;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/graph/y<",
            "+",
            "Lcom/android/tools/r8/graph/j;",
            ">;",
            "Lcom/android/tools/r8/internal/M70;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/android/tools/r8/graph/Y5;",
            ")",
            "Lcom/android/tools/r8/shaking/N;"
        }
    .end annotation

    .line 1
    new-instance v9, Lcom/android/tools/r8/shaking/N;

    sget-object v6, Lcom/android/tools/r8/shaking/N$a;->b:Lcom/android/tools/r8/shaking/N$a;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 2
    invoke-direct/range {v0 .. v8}, Lcom/android/tools/r8/shaking/N;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/M70;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/graph/Y5;Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;Lcom/android/tools/r8/shaking/N$a;Ljava/util/Set;Lcom/android/tools/r8/shaking/K4;)V

    return-object v9
.end method

.method public static a(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/graph/Y5;Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;Ljava/util/Set;Lcom/android/tools/r8/shaking/K4;)Lcom/android/tools/r8/shaking/N;
    .locals 10

    .line 3
    invoke-static {p0}, Lcom/android/tools/r8/internal/M70;->b(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/M70;

    move-result-object v2

    .line 4
    new-instance v9, Lcom/android/tools/r8/shaking/N;

    sget-object v6, Lcom/android/tools/r8/shaking/N$a;->c:Lcom/android/tools/r8/shaking/N$a;

    move-object v0, v9

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/tools/r8/shaking/N;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/M70;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/graph/Y5;Lcom/android/tools/r8/experimental/graphinfo/GraphConsumer;Lcom/android/tools/r8/shaking/N$a;Ljava/util/Set;Lcom/android/tools/r8/shaking/K4;)V

    .line 5
    new-instance p1, Lcom/android/tools/r8/shaking/cc;

    invoke-direct {p1, v9}, Lcom/android/tools/r8/shaking/cc;-><init>(Lcom/android/tools/r8/shaking/N;)V

    .line 6
    iget-object p0, p0, Lcom/android/tools/r8/graph/y;->C:Lcom/android/tools/r8/internal/Oa0;

    if-eqz p0, :cond_0

    .line 7
    invoke-interface {p1, p0}, Lcom/android/tools/r8/internal/Wr0;->accept(Ljava/lang/Object;)V

    :cond_0
    return-object v9
.end method

.method public static a(Lcom/android/tools/r8/shaking/N;Lcom/android/tools/r8/internal/Oa0;)V
    .locals 1

    .line 8
    iget-object p1, p1, Lcom/android/tools/r8/internal/Oa0;->i:Ljava/util/Set;

    .line 9
    sget-boolean v0, Lcom/android/tools/r8/shaking/N;->p0:Z

    if-nez v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/android/tools/r8/shaking/N;->b:Lcom/android/tools/r8/shaking/N$a;

    .line 11
    invoke-virtual {v0}, Lcom/android/tools/r8/shaking/N$a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 12
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/shaking/N;->G:Ljava/util/Set;

    return-void
.end method
