.class public Lcom/android/tools/r8/R8Assistant;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Lcom/android/tools/r8/R8AssistantCommand;Lcom/android/tools/r8/internal/nJ;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/android/tools/r8/internal/Kr0;->a(Lcom/android/tools/r8/internal/nJ;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/tools/r8/R8Assistant;->b(Lcom/android/tools/r8/R8AssistantCommand;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method private static synthetic a(Lcom/android/tools/r8/R8AssistantCommand;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 2
    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/R8Assistant;->b(Lcom/android/tools/r8/R8AssistantCommand;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/R8AssistantCommand;Lcom/android/tools/r8/internal/nJ;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/android/tools/r8/R8Assistant;->a(Lcom/android/tools/r8/R8AssistantCommand;Lcom/android/tools/r8/internal/nJ;)V

    return-void
.end method

.method public static b(Lcom/android/tools/r8/R8AssistantCommand;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;)V
    .locals 4

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/ns0;

    const-string v1, "R8 Assistant 8.10.21"

    const/4 v2, 0x0

    .line 3
    invoke-direct {v0, v1, v2}, Lcom/android/tools/r8/internal/ns0;-><init>(Ljava/lang/String;Z)V

    .line 4
    :try_start_0
    new-instance v1, Lcom/android/tools/r8/dex/c;

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand;->a()Lcom/android/tools/r8/utils/i;

    move-result-object v2

    invoke-direct {v1, v2, p1, v0}, Lcom/android/tools/r8/dex/c;-><init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/ns0;)V

    .line 6
    invoke-virtual {v1, p2}, Lcom/android/tools/r8/dex/c;->a(Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/graph/w4;

    move-result-object v1

    .line 7
    sget-boolean v2, Lcom/android/tools/r8/R8Assistant;->a:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCommand;->a()Lcom/android/tools/r8/utils/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/tools/r8/utils/i;->k()Z

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

    .line 8
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/tools/r8/synthesis/E;->e()Lcom/android/tools/r8/synthesis/E;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/tools/r8/graph/h;->a(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/synthesis/E;)Lcom/android/tools/r8/graph/h;

    move-result-object v1

    .line 9
    invoke-static {v1}, Lcom/android/tools/r8/graph/y;->a(Lcom/android/tools/r8/graph/h;)Lcom/android/tools/r8/graph/y;

    move-result-object v1

    .line 10
    new-instance v2, Lcom/android/tools/r8/internal/t70;

    invoke-direct {v2, v1, v0}, Lcom/android/tools/r8/internal/t70;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;)V

    .line 11
    new-instance v3, Lcom/android/tools/r8/internal/ze0;

    invoke-direct {v3, v1, v2, v0}, Lcom/android/tools/r8/internal/ze0;-><init>(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/t70;Lcom/android/tools/r8/internal/ns0;)V

    .line 12
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/ze0;->a()V

    .line 13
    invoke-virtual {v2, v1, p2}, Lcom/android/tools/r8/internal/t70;->a(Lcom/android/tools/r8/graph/y;Ljava/util/concurrent/ExecutorService;)V

    .line 14
    invoke-virtual {p0}, Lcom/android/tools/r8/R8AssistantCommand;->getReflectiveReceiverDescriptor()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 15
    invoke-virtual {p0}, Lcom/android/tools/r8/R8AssistantCommand;->getReflectiveReceiverDescriptor()Ljava/lang/String;

    move-result-object p0

    .line 16
    invoke-virtual {v3, p0}, Lcom/android/tools/r8/internal/ze0;->a(Ljava/lang/String;)V

    .line 17
    :cond_2
    invoke-static {v1, v0, p2}, Lcom/android/tools/r8/synthesis/z;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/internal/ns0;Ljava/util/concurrent/ExecutorService;)V

    .line 18
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->y()Lcom/android/tools/r8/dex/W;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/tools/r8/dex/k;->a(Lcom/android/tools/r8/graph/y;Lcom/android/tools/r8/dex/W;)Lcom/android/tools/r8/dex/k;

    move-result-object p0

    .line 19
    invoke-virtual {p0, p2}, Lcom/android/tools/r8/dex/k;->c(Ljava/util/concurrent/ExecutorService;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->f0()V

    .line 21
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->U()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 22
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->e()V

    :cond_3
    return-void

    .line 23
    :goto_1
    :try_start_1
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 24
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :goto_2
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->f0()V

    .line 26
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/nJ;->U()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 27
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/ns0;->e()V

    .line 28
    :cond_4
    throw p0
.end method

.method public static synthetic c(Lcom/android/tools/r8/R8AssistantCommand;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/R8Assistant;->a(Lcom/android/tools/r8/R8AssistantCommand;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method public static run(Lcom/android/tools/r8/R8AssistantCommand;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/CompilationFailedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/R8AssistantCommand;->b()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance v2, Lcom/android/tools/r8/k3;

    invoke-direct {v2, p0, v0}, Lcom/android/tools/r8/k3;-><init>(Lcom/android/tools/r8/R8AssistantCommand;Lcom/android/tools/r8/internal/nJ;)V

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/lv;->a(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/lv$a;)V

    return-void
.end method

.method public static run(Lcom/android/tools/r8/R8AssistantCommand;Ljava/util/concurrent/ExecutorService;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/CompilationFailedException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/R8AssistantCommand;->b()Lcom/android/tools/r8/internal/nJ;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/BaseCompilerCommand;->g()Lcom/android/tools/r8/internal/Ef0;

    move-result-object v1

    new-instance v2, Lcom/android/tools/r8/j3;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/tools/r8/j3;-><init>(Lcom/android/tools/r8/R8AssistantCommand;Lcom/android/tools/r8/internal/nJ;Ljava/util/concurrent/ExecutorService;)V

    .line 5
    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/lv;->b(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/lv$a;)V

    return-void
.end method
