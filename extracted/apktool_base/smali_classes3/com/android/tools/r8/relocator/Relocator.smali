.class public Lcom/android/tools/r8/relocator/Relocator;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static synthetic a(Lcom/android/tools/r8/relocator/RelocatorCommand;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;)V
    .locals 0

    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/tools/r8/relocator/Relocator;->c(Lcom/android/tools/r8/relocator/RelocatorCommand;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    throw p0
.end method

.method private static synthetic b(Lcom/android/tools/r8/relocator/RelocatorCommand;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/tools/r8/relocator/Relocator;->c(Lcom/android/tools/r8/relocator/RelocatorCommand;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;)V

    return-void
.end method

.method private static c(Lcom/android/tools/r8/relocator/RelocatorCommand;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;)V
    .locals 9

    const-string v0, "Relocator"

    invoke-static {p3, v0}, Lcom/android/tools/r8/internal/ns0;->a(Lcom/android/tools/r8/internal/nJ;Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    move-result-object v0

    :try_start_0
    new-instance v1, Lcom/android/tools/r8/dex/c;

    invoke-direct {v1, p2, p3, v0}, Lcom/android/tools/r8/dex/c;-><init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/ns0;)V

    invoke-virtual {v1, p1}, Lcom/android/tools/r8/dex/c;->a(Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/graph/w4;

    move-result-object v1

    invoke-static {}, Lcom/android/tools/r8/synthesis/E;->d()Lcom/android/tools/r8/synthesis/E;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/tools/r8/graph/h;->a(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/synthesis/E;)Lcom/android/tools/r8/graph/h;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/graph/y;

    sget-object v5, Lcom/android/tools/r8/internal/It;->c:Lcom/android/tools/r8/internal/It;

    invoke-static {}, Lcom/android/tools/r8/internal/qo0;->b()Lcom/android/tools/r8/internal/qo0;

    move-result-object v6

    invoke-static {}, Lcom/android/tools/r8/internal/ns0;->c()Lcom/android/tools/r8/internal/ns0;

    move-result-object v8

    const/4 v7, 0x2

    move-object v3, v2

    move-object v4, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/tools/r8/graph/y;-><init>(Lcom/android/tools/r8/graph/h;Lcom/android/tools/r8/internal/l4;Lcom/android/tools/r8/internal/qo0;ILcom/android/tools/r8/internal/ns0;)V

    invoke-static {v2}, Lcom/android/tools/r8/graph/l;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/graph/l$a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/graph/l$a;->a()Lcom/android/tools/r8/graph/l;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/l;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/relocator/RelocatorCommand;->getMapping()Lcom/android/tools/r8/internal/hf0;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/tools/r8/internal/hf0;->a(Lcom/android/tools/r8/graph/y;)Lcom/android/tools/r8/internal/gf0;

    move-result-object v3

    iput-object v3, v2, Lcom/android/tools/r8/graph/y;->l:Lcom/android/tools/r8/naming/r0;

    new-instance v3, Lcom/android/tools/r8/internal/zz;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/internal/zz;-><init>(Lcom/android/tools/r8/graph/y;)V

    invoke-virtual {v1}, Lcom/android/tools/r8/graph/h;->d()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v3, v1, p1}, Lcom/android/tools/r8/internal/zz;->a(Ljava/util/Collection;Ljava/util/concurrent/ExecutorService;)V

    new-instance v1, Lcom/android/tools/r8/internal/T8;

    new-instance v3, Lcom/android/tools/r8/dex/W;

    sget-object v4, Lcom/android/tools/r8/dex/W$b;->g:Lcom/android/tools/r8/dex/W$b;

    invoke-direct {v3, v4}, Lcom/android/tools/r8/dex/W;-><init>(Lcom/android/tools/r8/dex/W$b;)V

    invoke-direct {v1, v2, v3}, Lcom/android/tools/r8/internal/T8;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/W;)V

    invoke-virtual {p0}, Lcom/android/tools/r8/relocator/RelocatorCommand;->getConsumer()Lcom/android/tools/r8/ClassFileConsumer;

    move-result-object p0

    sget-boolean v2, Lcom/android/tools/r8/internal/T8;->e:Z

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/android/tools/r8/internal/T8;->c:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->J()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, p1}, Lcom/android/tools/r8/internal/T8;->a(Lcom/android/tools/r8/ClassFileConsumer;Lcom/android/tools/r8/utils/i;Ljava/util/concurrent/ExecutorService;)V

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/nJ;->Z()V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p3, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {p2, p0}, Lcom/android/tools/r8/utils/i;->b(Lcom/android/tools/r8/internal/Ef0;)V

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/nJ;->f0()V

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/nJ;->U()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->e()V

    :cond_2
    return-void

    :goto_1
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    iget-object p1, p3, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {p2, p1}, Lcom/android/tools/r8/utils/i;->b(Lcom/android/tools/r8/internal/Ef0;)V

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/nJ;->f0()V

    invoke-virtual {p3}, Lcom/android/tools/r8/internal/nJ;->U()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->e()V

    :cond_3
    throw p0
.end method

.method public static synthetic d(Lcom/android/tools/r8/relocator/RelocatorCommand;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/tools/r8/relocator/Relocator;->a(Lcom/android/tools/r8/relocator/RelocatorCommand;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/tools/r8/relocator/RelocatorCommand;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/tools/r8/relocator/Relocator;->b(Lcom/android/tools/r8/relocator/RelocatorCommand;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;)V

    return-void
.end method

.method public static run(Lcom/android/tools/r8/relocator/RelocatorCommand;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/CompilationFailedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/relocator/RelocatorCommand;->getApp()Lcom/android/tools/r8/utils/i;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/relocator/RelocatorCommand;->getInternalOptions()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lcom/android/tools/r8/internal/Kr0;->a(Lcom/android/tools/r8/internal/nJ;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/relocator/RelocatorCommand;->getReporter()Lcom/android/tools/r8/internal/Ef0;

    move-result-object v3

    new-instance v4, Lcom/android/tools/r8/relocator/c;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/android/tools/r8/relocator/c;-><init>(Lcom/android/tools/r8/relocator/RelocatorCommand;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;)V

    .line 5
    invoke-static {v3, v4}, Lcom/android/tools/r8/internal/lv;->a(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/lv$a;)V

    return-void
.end method

.method public static run(Lcom/android/tools/r8/relocator/RelocatorCommand;Ljava/util/concurrent/ExecutorService;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/CompilationFailedException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lcom/android/tools/r8/relocator/RelocatorCommand;->getApp()Lcom/android/tools/r8/utils/i;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/android/tools/r8/relocator/RelocatorCommand;->getInternalOptions()Lcom/android/tools/r8/internal/nJ;

    move-result-object v1

    .line 8
    invoke-virtual {p0}, Lcom/android/tools/r8/relocator/RelocatorCommand;->getReporter()Lcom/android/tools/r8/internal/Ef0;

    move-result-object v2

    new-instance v3, Lcom/android/tools/r8/relocator/b;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/android/tools/r8/relocator/b;-><init>(Lcom/android/tools/r8/relocator/RelocatorCommand;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;)V

    .line 9
    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/lv;->a(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/lv$a;)V

    return-void
.end method
