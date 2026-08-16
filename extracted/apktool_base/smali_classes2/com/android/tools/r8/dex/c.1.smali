.class public Lcom/android/tools/r8/dex/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic f:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/internal/nJ;

.field public final b:Lcom/android/tools/r8/graph/u1;

.field public final c:Lcom/android/tools/r8/internal/ns0;

.field public final d:Lcom/android/tools/r8/utils/i;

.field public e:Lcom/android/tools/r8/graph/z0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/ns0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/tools/r8/dex/c;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object p2, p2, Lcom/android/tools/r8/internal/nJ;->a:Lcom/android/tools/r8/graph/u1;

    iput-object p2, p0, Lcom/android/tools/r8/dex/c;->b:Lcom/android/tools/r8/graph/u1;

    iput-object p3, p0, Lcom/android/tools/r8/dex/c;->c:Lcom/android/tools/r8/internal/ns0;

    iput-object p1, p0, Lcom/android/tools/r8/dex/c;->d:Lcom/android/tools/r8/utils/i;

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/tools/r8/dex/c;->b:Lcom/android/tools/r8/graph/u1;

    invoke-static {p1}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object p1

    return-object p1
.end method

.method public a()Lcom/android/tools/r8/graph/w4;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/android/tools/r8/dex/c;->a(Lcom/android/tools/r8/v0;)Lcom/android/tools/r8/graph/w4;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/android/tools/r8/v0;)Lcom/android/tools/r8/graph/w4;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/dex/c;->a:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/r8/threading/ThreadingModule;->createSingleThreadedExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 3
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/dex/c;->a(Lcom/android/tools/r8/v0;Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/graph/w4;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-object p1

    :catchall_0
    move-exception p1

    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 6
    throw p1
.end method

.method public final a(Lcom/android/tools/r8/v0;Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/graph/w4;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/android/tools/r8/dex/c;->a:Lcom/android/tools/r8/internal/nJ;

    .line 9
    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->v0:Lcom/android/tools/r8/internal/qt;

    .line 10
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/tools/r8/dex/c;->a(Lcom/android/tools/r8/v0;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/qt;)Lcom/android/tools/r8/graph/w4;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/v0;Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/qt;)Lcom/android/tools/r8/graph/w4;
    .locals 5

    .line 11
    sget-boolean v0, Lcom/android/tools/r8/dex/c;->f:Z

    if-nez v0, :cond_7

    iget-object v1, p0, Lcom/android/tools/r8/dex/c;->d:Lcom/android/tools/r8/utils/i;

    iget-object v2, p0, Lcom/android/tools/r8/dex/c;->a:Lcom/android/tools/r8/internal/nJ;

    .line 12
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->P()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    .line 13
    :cond_0
    sget-object v3, Lcom/android/tools/r8/internal/C2;->x:Lcom/android/tools/r8/internal/C2;

    .line 14
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/android/tools/r8/internal/C40;->b(Lcom/android/tools/r8/internal/C40;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    if-nez v0, :cond_3

    .line 15
    iget-object v3, v2, Lcom/android/tools/r8/internal/nJ;->G1:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_3
    :goto_0
    if-nez v0, :cond_5

    .line 16
    iget-object v2, v2, Lcom/android/tools/r8/internal/nJ;->P1:Lcom/android/tools/r8/StringConsumer;

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_1
    if-nez v0, :cond_7

    .line 17
    invoke-virtual {v1}, Lcom/android/tools/r8/utils/i;->k()Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 18
    :cond_7
    :goto_2
    invoke-virtual {p0, p3}, Lcom/android/tools/r8/dex/c;->a(Lcom/android/tools/r8/internal/qt;)V

    .line 19
    iget-object p3, p0, Lcom/android/tools/r8/dex/c;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object p3, p3, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean p3, p3, Lcom/android/tools/r8/internal/nJ$p;->I0:Z

    if-eqz p3, :cond_8

    .line 20
    iget-object p3, p0, Lcom/android/tools/r8/dex/c;->d:Lcom/android/tools/r8/utils/i;

    invoke-virtual {p3}, Lcom/android/tools/r8/utils/i;->m()V

    .line 21
    :cond_8
    iget-object p3, p0, Lcom/android/tools/r8/dex/c;->c:Lcom/android/tools/r8/internal/ns0;

    const-string v0, "DexApplication.read"

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 22
    iget-object p3, p0, Lcom/android/tools/r8/dex/c;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v0, p0, Lcom/android/tools/r8/dex/c;->c:Lcom/android/tools/r8/internal/ns0;

    invoke-static {p3, v0}, Lcom/android/tools/r8/graph/x0;->a(Lcom/android/tools/r8/internal/nJ;Lcom/android/tools/r8/internal/ns0;)Lcom/android/tools/r8/graph/w4$a;

    move-result-object p3

    .line 23
    new-instance v0, Lcom/android/tools/r8/internal/xr0;

    iget-object v1, p0, Lcom/android/tools/r8/dex/c;->a:Lcom/android/tools/r8/internal/nJ;

    const/4 v2, -0x1

    .line 24
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object v1

    invoke-direct {v0, v1, p2, v2}, Lcom/android/tools/r8/internal/xr0;-><init>(Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;I)V

    const/4 p2, 0x0

    .line 25
    :try_start_0
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/tools/r8/dex/c;->a(Lcom/android/tools/r8/v0;Lcom/android/tools/r8/graph/w4$a;Lcom/android/tools/r8/internal/xr0;)V

    .line 26
    new-instance p1, Lcom/android/tools/r8/dex/a;

    invoke-direct {p1, p0, v0}, Lcom/android/tools/r8/dex/a;-><init>(Lcom/android/tools/r8/dex/c;Lcom/android/tools/r8/internal/xr0;)V

    .line 27
    invoke-virtual {p1}, Lcom/android/tools/r8/dex/a;->b()V

    .line 28
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/xr0;->a(Ljava/util/function/Consumer;)V

    .line 29
    invoke-virtual {p1}, Lcom/android/tools/r8/dex/a;->a()Lcom/android/tools/r8/graph/z0;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/dex/c;->e:Lcom/android/tools/r8/graph/z0;

    .line 30
    iput-object v0, p3, Lcom/android/tools/r8/graph/w0;->f:Lcom/android/tools/r8/graph/z0;

    .line 31
    invoke-virtual {p1, p3}, Lcom/android/tools/r8/dex/a;->a(Lcom/android/tools/r8/graph/w4$a;)V

    .line 32
    iget-object p1, p0, Lcom/android/tools/r8/dex/c;->d:Lcom/android/tools/r8/utils/i;

    invoke-virtual {p1}, Lcom/android/tools/r8/utils/i;->h()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/ProgramResourceProvider;

    .line 33
    invoke-interface {v0}, Lcom/android/tools/r8/ProgramResourceProvider;->getDataResourceProvider()Lcom/android/tools/r8/DataResourceProvider;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 34
    invoke-virtual {p3, v0}, Lcom/android/tools/r8/graph/w0;->a(Lcom/android/tools/r8/DataResourceProvider;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/tools/r8/ResourceException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_6

    :catch_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    goto :goto_5

    .line 35
    :cond_a
    iget-object p1, p0, Lcom/android/tools/r8/dex/c;->c:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 36
    invoke-virtual {p3}, Lcom/android/tools/r8/graph/w4$a;->d()Lcom/android/tools/r8/graph/w4;

    move-result-object p1

    return-object p1

    .line 37
    :goto_4
    :try_start_1
    iget-object p3, p0, Lcom/android/tools/r8/dex/c;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object p3, p3, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance v0, Lcom/android/tools/r8/utils/StringDiagnostic;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/tools/r8/ResourceException;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    .line 38
    invoke-virtual {p3, p2, v0}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 39
    iget-object p1, p3, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw p1

    .line 40
    :goto_5
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 41
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    :goto_6
    iget-object p2, p0, Lcom/android/tools/r8/dex/c;->c:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 43
    throw p1
.end method

.method public final a(Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/graph/w4;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/android/tools/r8/dex/c;->d:Lcom/android/tools/r8/utils/i;

    invoke-virtual {v0}, Lcom/android/tools/r8/utils/i;->i()Lcom/android/tools/r8/v0;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/tools/r8/dex/c;->a(Lcom/android/tools/r8/v0;Ljava/util/concurrent/ExecutorService;)Lcom/android/tools/r8/graph/w4;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/g3;)Lcom/android/tools/r8/shaking/o2;
    .locals 1

    const/4 v0, 0x1

    .line 61
    invoke-virtual {p0, p1, v0}, Lcom/android/tools/r8/dex/c;->a(Lcom/android/tools/r8/graph/x0;Z)Lcom/android/tools/r8/shaking/o2;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/graph/x0;Z)Lcom/android/tools/r8/shaking/o2;
    .locals 6

    .line 62
    invoke-static {}, Lcom/android/tools/r8/shaking/o2;->b()Lcom/android/tools/r8/shaking/o2;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    new-instance v1, Lcom/android/tools/r8/shaking/m2;

    iget-boolean v0, v0, Lcom/android/tools/r8/shaking/o2;->e:Z

    invoke-direct {v1, v0}, Lcom/android/tools/r8/shaking/m2;-><init>(Z)V

    .line 64
    iget-object v0, p0, Lcom/android/tools/r8/dex/c;->d:Lcom/android/tools/r8/utils/i;

    invoke-virtual {v0}, Lcom/android/tools/r8/utils/i;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 65
    iget-object v0, p0, Lcom/android/tools/r8/dex/c;->d:Lcom/android/tools/r8/utils/i;

    .line 66
    iget-object v0, v0, Lcom/android/tools/r8/utils/i;->h:Ljava/util/AbstractCollection;

    .line 67
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/tools/r8/v0;

    if-eqz p2, :cond_0

    .line 68
    iget-object v3, p0, Lcom/android/tools/r8/dex/c;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v3, v3, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance v4, Lcom/android/tools/r8/errors/UnsupportedMainDexListUsageDiagnostic;

    invoke-interface {v2}, Lcom/android/tools/r8/Resource;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/tools/r8/errors/UnsupportedMainDexListUsageDiagnostic;-><init>(Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    .line 69
    :cond_0
    iget-object v3, p0, Lcom/android/tools/r8/dex/c;->b:Lcom/android/tools/r8/graph/u1;

    invoke-static {v2, v3}, Lcom/android/tools/r8/internal/FU;->a(Lcom/android/tools/r8/v0;Lcom/android/tools/r8/graph/u1;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/tools/r8/dex/c;->a(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/shaking/m2;Ljava/lang/Iterable;)V

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/dex/c;->d:Lcom/android/tools/r8/utils/i;

    .line 71
    iget-object v0, v0, Lcom/android/tools/r8/utils/i;->i:Ljava/util/AbstractCollection;

    .line 72
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_2

    .line 73
    iget-object p2, p0, Lcom/android/tools/r8/dex/c;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object p2, p2, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance v0, Lcom/android/tools/r8/errors/UnsupportedMainDexListUsageDiagnostic;

    invoke-static {}, Lcom/android/tools/r8/origin/Origin;->unknown()Lcom/android/tools/r8/origin/Origin;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/tools/r8/errors/UnsupportedMainDexListUsageDiagnostic;-><init>(Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    .line 74
    :cond_2
    iget-object p2, p0, Lcom/android/tools/r8/dex/c;->d:Lcom/android/tools/r8/utils/i;

    .line 75
    iget-object p2, p2, Lcom/android/tools/r8/utils/i;->i:Ljava/util/AbstractCollection;

    .line 76
    invoke-interface {p2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lu/m0;

    invoke-direct {v0, p0}, Lu/m0;-><init>(Lcom/android/tools/r8/dex/c;)V

    .line 77
    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    .line 78
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Iterable;

    .line 79
    invoke-virtual {p0, p1, v1, p2}, Lcom/android/tools/r8/dex/c;->a(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/shaking/m2;Ljava/lang/Iterable;)V

    .line 80
    :cond_3
    sget-boolean p1, Lcom/android/tools/r8/shaking/m2;->f:Z

    if-nez p1, :cond_5

    iget-object p2, v1, Lcom/android/tools/r8/shaking/m2;->d:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_1
    if-nez p1, :cond_7

    .line 81
    iget-object p1, v1, Lcom/android/tools/r8/shaking/m2;->b:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 82
    :cond_7
    :goto_2
    new-instance p1, Lcom/android/tools/r8/shaking/o2;

    iget-object v1, v1, Lcom/android/tools/r8/shaking/m2;->a:Ljava/util/Set;

    .line 83
    sget-object v4, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    const/4 v5, 0x0

    move-object v0, p1

    move-object v2, v4

    move-object v3, v4

    .line 84
    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/shaking/o2;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;Z)V

    return-object p1
.end method

.method public final synthetic a(Lcom/android/tools/r8/graph/w0;Lcom/android/tools/r8/v0;)V
    .locals 5

    .line 99
    :try_start_0
    invoke-interface {p2}, Lcom/android/tools/r8/v0;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/tools/r8/dex/c;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v2, v1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    .line 100
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->X()Lcom/android/tools/r8/internal/nJ$j;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/tools/r8/internal/nJ$j;->b:Z

    iget-object v3, p0, Lcom/android/tools/r8/dex/c;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v3, v3, Lcom/android/tools/r8/internal/nJ;->F1:Lcom/android/tools/r8/internal/nJ$p;

    iget-boolean v3, v3, Lcom/android/tools/r8/internal/nJ$p;->f1:Z

    const/4 v4, 0x1

    .line 101
    invoke-static {v0, v2, v1, v3, v4}, Lcom/android/tools/r8/naming/b;->a(Ljava/lang/String;Lcom/android/tools/r8/DiagnosticsHandler;ZZZ)Lcom/android/tools/r8/naming/b;

    move-result-object v0

    .line 102
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/w0;->a(Lcom/android/tools/r8/naming/b;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/tools/r8/ResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 103
    :goto_0
    new-instance v0, Lcom/android/tools/r8/internal/If;

    invoke-interface {p2}, Lcom/android/tools/r8/Resource;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object p2

    const-string v1, "Failure to read proguard map file"

    invoke-direct {v0, p2, v1, p1}, Lcom/android/tools/r8/internal/If;-><init>(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final a(Lcom/android/tools/r8/graph/x0;Lcom/android/tools/r8/shaking/m2;Ljava/lang/Iterable;)V
    .locals 5

    .line 86
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/graph/M2;

    .line 87
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/graph/x0;->c(Lcom/android/tools/r8/graph/M2;)Lcom/android/tools/r8/graph/H2;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 88
    invoke-virtual {v1}, Lcom/android/tools/r8/graph/E0;->getType()Lcom/android/tools/r8/graph/M2;

    move-result-object v0

    .line 89
    iget-object v1, p2, Lcom/android/tools/r8/shaking/m2;->a:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/android/tools/r8/dex/c;->a:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 91
    iget-object v1, v1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    new-instance v2, Lcom/android/tools/r8/utils/StringDiagnostic;

    .line 92
    invoke-virtual {v0}, Lcom/android/tools/r8/graph/M2;->j0()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Application does not contain `"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "` as referenced in main-dex-list."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/Ms;)V
    .locals 4

    .line 94
    new-instance v0, Lcom/android/tools/r8/internal/If;

    .line 95
    iget p1, p1, Lcom/android/tools/r8/internal/Ms;->b:I

    .line 96
    iget-object v1, p0, Lcom/android/tools/r8/dex/c;->a:Lcom/android/tools/r8/internal/nJ;

    .line 97
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/nJ;->z()Lcom/android/tools/r8/internal/C2;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dex file with version \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\' cannot be used with min sdk level \'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\'."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/If;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(Lcom/android/tools/r8/internal/qt;)V
    .locals 4

    .line 44
    iget-object v0, p0, Lcom/android/tools/r8/dex/c;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object v1, v0, Lcom/android/tools/r8/internal/nJ;->w0:Lcom/android/tools/r8/internal/rt;

    if-eqz v1, :cond_2

    .line 45
    iget-object v0, v0, Lcom/android/tools/r8/internal/nJ;->E1:Lcom/android/tools/r8/internal/qb0;

    if-nez v0, :cond_2

    .line 46
    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/qt;->a(Lcom/android/tools/r8/internal/rt;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/qt;->b()Ljava/nio/file/Path;

    move-result-object v0

    .line 48
    iget-object v2, p0, Lcom/android/tools/r8/dex/c;->c:Lcom/android/tools/r8/internal/ns0;

    const-string v3, "ApplicationReader.dump"

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 49
    iget-object v2, p0, Lcom/android/tools/r8/dex/c;->d:Lcom/android/tools/r8/utils/i;

    iget-object v3, p0, Lcom/android/tools/r8/dex/c;->a:Lcom/android/tools/r8/internal/nJ;

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/tools/r8/utils/i;->a(Ljava/nio/file/Path;Lcom/android/tools/r8/internal/rt;Lcom/android/tools/r8/internal/nJ;)V

    .line 50
    iget-object v1, p0, Lcom/android/tools/r8/dex/c;->c:Lcom/android/tools/r8/internal/ns0;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 51
    new-instance v1, Lcom/android/tools/r8/utils/StringDiagnostic;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dumped compilation inputs to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/qt;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/qt;->d()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 54
    iget-object p1, p0, Lcom/android/tools/r8/dex/c;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    monitor-enter p1

    .line 55
    :try_start_0
    sget-object v0, Lcom/android/tools/r8/DiagnosticsLevel;->INFO:Lcom/android/tools/r8/DiagnosticsLevel;

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 56
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 57
    monitor-exit p1

    throw v0

    .line 58
    :cond_1
    iget-object p1, p0, Lcom/android/tools/r8/dex/c;->a:Lcom/android/tools/r8/internal/nJ;

    iget-object p1, p1, Lcom/android/tools/r8/internal/nJ;->j:Lcom/android/tools/r8/internal/Ef0;

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 60
    iget-object p1, p1, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public final a(Lcom/android/tools/r8/v0;Lcom/android/tools/r8/graph/w4$a;Lcom/android/tools/r8/internal/xr0;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 98
    :cond_0
    new-instance v0, Lu/l0;

    invoke-direct {v0, p0, p2, p1}, Lu/l0;-><init>(Lcom/android/tools/r8/dex/c;Lcom/android/tools/r8/graph/w0;Lcom/android/tools/r8/v0;)V

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/xr0;->b(Lcom/android/tools/r8/internal/Sr0;)V

    return-void
.end method
