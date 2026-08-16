.class public final Lcom/android/tools/r8/internal/l9;
.super Lcom/android/tools/r8/internal/m9;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/y;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/y;Ljava/util/ArrayList;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/tools/r8/internal/m9;-><init>()V

    sget-boolean v0, Lcom/android/tools/r8/internal/l9;->c:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/l9;->a:Lcom/android/tools/r8/graph/y;

    iput-object p2, p0, Lcom/android/tools/r8/internal/l9;->b:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Lcom/android/tools/r8/internal/Ef;Lcom/android/tools/r8/internal/o9;Lcom/android/tools/r8/internal/j9;)V
    .locals 2

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    new-instance v0, Lcom/android/tools/r8/internal/Af;

    invoke-direct {v0, p0, p2}, Lcom/android/tools/r8/internal/Af;-><init>(Lcom/android/tools/r8/internal/Ef;Lcom/android/tools/r8/internal/j9;)V

    .line 17
    sget-boolean v1, Lcom/android/tools/r8/internal/Ef;->c:Z

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/tools/r8/internal/Ef;->a(Lcom/android/tools/r8/internal/Bf;)V

    .line 18
    :cond_0
    invoke-interface {p2, v0, p1}, Lcom/android/tools/r8/internal/j9;->a(Lcom/android/tools/r8/internal/Af;Lcom/android/tools/r8/internal/o9;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/ExecutorService;Lcom/android/tools/r8/internal/o9;Lcom/android/tools/r8/internal/ns0;)V
    .locals 3

    .line 1
    const-string v0, "Synthesize classes for desugaring"

    invoke-virtual {p3, v0}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    move-result-object p3

    .line 2
    :try_start_0
    sget-boolean v0, Lcom/android/tools/r8/internal/l9;->c:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/tools/r8/internal/l9;->b:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/Ci1;

    invoke-direct {v1}, Lcom/android/tools/r8/internal/Ci1;-><init>()V

    .line 3
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 4
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/tools/r8/internal/l9;->b:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 8
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/tools/r8/internal/l9;->a:Lcom/android/tools/r8/graph/y;

    invoke-virtual {v0}, Lcom/android/tools/r8/graph/y;->k()Lcom/android/tools/r8/internal/Ef;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/tools/r8/internal/l9;->b:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/tools/r8/internal/Di1;

    invoke-direct {v2, v0, p2}, Lcom/android/tools/r8/internal/Di1;-><init>(Lcom/android/tools/r8/internal/Ef;Lcom/android/tools/r8/internal/o9;)V

    iget-object p2, p0, Lcom/android/tools/r8/internal/l9;->a:Lcom/android/tools/r8/graph/y;

    .line 10
    invoke-virtual {p2}, Lcom/android/tools/r8/graph/y;->E()Lcom/android/tools/r8/internal/nJ;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/nJ;->G()Lcom/android/tools/r8/threading/ThreadingModule;

    move-result-object p2

    .line 11
    invoke-static {v1, v2, p2, p1}, Lcom/android/tools/r8/internal/Kr0;->a(Ljava/util/Collection;Ljava/util/function/Consumer;Lcom/android/tools/r8/threading/ThreadingModule;Ljava/util/concurrent/ExecutorService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    return-void

    .line 13
    :goto_1
    :try_start_1
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    .line 14
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
.end method
