.class public abstract Lcom/android/tools/r8/internal/Kj0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/android/tools/r8/retrace/StackTraceLineParser;

.field private final b:Lcom/android/tools/r8/retrace/MappingSupplierBase;

.field private final c:Lcom/android/tools/r8/DiagnosticsHandler;

.field protected final isVerbose:Z


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/retrace/StackTraceLineParser;Lcom/android/tools/r8/retrace/MappingSupplierBase;Lcom/android/tools/r8/DiagnosticsHandler;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/Kj0;->a:Lcom/android/tools/r8/retrace/StackTraceLineParser;

    iput-object p2, p0, Lcom/android/tools/r8/internal/Kj0;->b:Lcom/android/tools/r8/retrace/MappingSupplierBase;

    iput-object p3, p0, Lcom/android/tools/r8/internal/Kj0;->c:Lcom/android/tools/r8/DiagnosticsHandler;

    iput-boolean p4, p0, Lcom/android/tools/r8/internal/Kj0;->isVerbose:Z

    return-void
.end method

.method private a(Lcom/android/tools/r8/retrace/StackTraceElementProxyRetracer;Lcom/android/tools/r8/internal/Jj0;Ljava/util/List;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;Lcom/android/tools/r8/retrace/StackTraceElementProxy;)Lcom/android/tools/r8/retrace/RetraceStackTraceContext;
    .locals 13

    .line 6
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 7
    new-instance v4, Lcom/android/tools/r8/internal/C7;

    invoke-direct {v4}, Lcom/android/tools/r8/internal/C7;-><init>()V

    .line 8
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 9
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p1

    move-object/from16 v1, p4

    move-object/from16 v7, p5

    .line 10
    invoke-interface {p1, v7, v1}, Lcom/android/tools/r8/retrace/StackTraceElementProxyRetracer;->retrace(Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxyResult;

    move-result-object v10

    .line 11
    invoke-interface {v10}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxyResult;->stream()Ljava/util/stream/Stream;

    move-result-object v11

    new-instance v12, Lcom/android/tools/r8/internal/XK0;

    move-object v0, v12

    move-object v1, p0

    move-object v3, p2

    move-object v5, v8

    move-object v6, v9

    invoke-direct/range {v0 .. v7}, Lcom/android/tools/r8/internal/XK0;-><init>(Lcom/android/tools/r8/internal/Kj0;Ljava/util/Set;Lcom/android/tools/r8/internal/Jj0;Lcom/android/tools/r8/internal/C7;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/retrace/StackTraceElementProxy;)V

    .line 12
    invoke-interface {v11, v12}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 13
    new-instance v0, Lcom/android/tools/r8/internal/YK0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/YK0;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 14
    new-instance v0, Lcom/android/tools/r8/internal/ZK0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/ZK0;-><init>()V

    .line 15
    invoke-static {v8, v0}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object v0

    .line 16
    invoke-static {}, Lcom/android/tools/r8/retrace/RetraceStackTraceContext;->empty()Lcom/android/tools/r8/retrace/RetraceStackTraceContext;

    move-result-object v1

    .line 17
    new-instance v2, Lcom/android/tools/r8/internal/Wj0;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/Wj0;-><init>(Ljava/util/List;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)V

    move-object/from16 v0, p3

    .line 18
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-interface {v10}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxyResult;->getResultContext()Lcom/android/tools/r8/retrace/RetraceStackTraceContext;

    move-result-object v0

    return-object v0

    .line 21
    :cond_0
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/retrace/RetraceStackTraceContext;

    return-object v0

    :cond_1
    invoke-static {}, Lcom/android/tools/r8/retrace/RetraceStackTraceContext;->empty()Lcom/android/tools/r8/retrace/RetraceStackTraceContext;

    move-result-object v0

    return-object v0
.end method

.method private synthetic a(Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;)Ljava/lang/Object;
    .locals 1

    .line 45
    invoke-interface {p3}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->getContext()Lcom/android/tools/r8/retrace/RetraceStackTraceContext;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/C7;->a(Ljava/lang/Object;)V

    .line 46
    iget-boolean p1, p0, Lcom/android/tools/r8/internal/Kj0;->isVerbose:Z

    invoke-virtual {p2, p3, p1}, Lcom/android/tools/r8/retrace/StackTraceElementProxy;->toRetracedItem(Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/Kj0;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/tools/r8/internal/Kj0;->a(Ljava/lang/Object;I)V

    return-void
.end method

.method private synthetic a(Ljava/lang/Object;I)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/Kj0;->c:Lcom/android/tools/r8/DiagnosticsHandler;

    .line 3
    invoke-static {p2}, Lcom/android/tools/r8/retrace/RetraceInvalidStackTraceLineDiagnostics;->createNull(I)Lcom/android/tools/r8/retrace/RetraceInvalidStackTraceLineDiagnostics;

    move-result-object p2

    .line 4
    invoke-interface {p1, p2}, Lcom/android/tools/r8/DiagnosticsHandler;->error(Lcom/android/tools/r8/Diagnostic;)V

    .line 5
    new-instance p1, Lcom/android/tools/r8/internal/Ij0;

    invoke-direct {p1}, Lcom/android/tools/r8/internal/Ij0;-><init>()V

    throw p1
.end method

.method private static a(Ljava/util/List;Ljava/util/Map;Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;)V
    .locals 1

    .line 42
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {}, Lcom/android/tools/r8/retrace/RetraceStackTraceContext;->empty()Lcom/android/tools/r8/retrace/RetraceStackTraceContext;

    move-result-object p2

    .line 43
    new-instance v0, Lcom/android/tools/r8/internal/Xj0;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/Xj0;-><init>(Ljava/util/List;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)V

    .line 44
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic a(Ljava/util/List;Ljava/util/Map;Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;)V
    .locals 1

    .line 36
    invoke-interface {p5}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->isTopFrame()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p5}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->hasRetracedClass()Z

    move-result v0

    if-nez v0, :cond_1

    .line 37
    :cond_0
    invoke-interface {p1, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_1
    invoke-static {p1}, Lcom/android/tools/r8/internal/AT;->b(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-boolean p2, p0, Lcom/android/tools/r8/internal/Kj0;->isVerbose:Z

    .line 40
    invoke-virtual {p3, p5, p2}, Lcom/android/tools/r8/retrace/StackTraceElementProxy;->toRetracedItem(Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;Z)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-interface {p5}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->getContext()Lcom/android/tools/r8/retrace/RetraceStackTraceContext;

    move-result-object p1

    invoke-virtual {p4, p1}, Lcom/android/tools/r8/internal/C7;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/util/Set;Lcom/android/tools/r8/internal/Jj0;Lcom/android/tools/r8/internal/C7;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;)V
    .locals 1

    .line 22
    invoke-interface {p7}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->isTopFrame()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p7}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->hasRetracedClass()Z

    move-result v0

    if-nez v0, :cond_2

    .line 23
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    new-instance v0, Lcom/android/tools/r8/internal/fv;

    invoke-direct {v0, p2, p7}, Lcom/android/tools/r8/internal/fv;-><init>(Lcom/android/tools/r8/internal/gv;Ljava/lang/Object;)V

    .line 25
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/C7;->a(Ljava/lang/Object;)V

    .line 27
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-static {}, Lcom/android/tools/r8/retrace/RetraceStackTraceContext;->empty()Lcom/android/tools/r8/retrace/RetraceStackTraceContext;

    move-result-object p2

    .line 28
    new-instance v0, Lcom/android/tools/r8/internal/Xj0;

    invoke-direct {v0, p1, p2}, Lcom/android/tools/r8/internal/Xj0;-><init>(Ljava/util/List;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)V

    .line 29
    invoke-static {p7, v0}, Lcom/android/tools/r8/internal/o50;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/o50;

    move-result-object p1

    .line 30
    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-interface {p7}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;->getContext()Lcom/android/tools/r8/retrace/RetraceStackTraceContext;

    move-result-object p1

    invoke-interface {p5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 32
    invoke-virtual {p3, p1}, Lcom/android/tools/r8/internal/C7;->a(Ljava/lang/Object;)V

    .line 33
    :cond_2
    :goto_0
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/D7;->b()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 34
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-boolean p2, p0, Lcom/android/tools/r8/internal/Kj0;->isVerbose:Z

    .line 35
    invoke-virtual {p6, p7, p2}, Lcom/android/tools/r8/retrace/StackTraceElementProxy;->toRetracedItem(Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;Z)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/internal/Kj0;Ljava/util/Set;Lcom/android/tools/r8/internal/Jj0;Lcom/android/tools/r8/internal/C7;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/tools/r8/internal/Kj0;->a(Ljava/util/Set;Lcom/android/tools/r8/internal/Jj0;Lcom/android/tools/r8/internal/C7;Ljava/util/List;Ljava/util/List;Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/tools/r8/internal/Kj0;Lcom/android/tools/r8/retrace/StackTraceElementProxyRetracer;Lcom/android/tools/r8/internal/Jj0;Ljava/util/List;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;Lcom/android/tools/r8/retrace/StackTraceElementProxy;)Lcom/android/tools/r8/retrace/RetraceStackTraceContext;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/tools/r8/internal/Kj0;->a(Lcom/android/tools/r8/retrace/StackTraceElementProxyRetracer;Lcom/android/tools/r8/internal/Jj0;Ljava/util/List;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;Lcom/android/tools/r8/retrace/StackTraceElementProxy;)Lcom/android/tools/r8/retrace/RetraceStackTraceContext;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lcom/android/tools/r8/internal/Kj0;Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/internal/Kj0;->a(Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/android/tools/r8/internal/Kj0;Ljava/util/List;Ljava/util/Map;Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/tools/r8/internal/Kj0;->a(Ljava/util/List;Ljava/util/Map;Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;)V

    return-void
.end method

.method public static synthetic f(Ljava/util/List;Ljava/util/Map;Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/internal/Kj0;->a(Ljava/util/List;Ljava/util/Map;Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxy;)V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/Object;)Lcom/android/tools/r8/retrace/StackTraceElementProxy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/android/tools/r8/retrace/StackTraceElementProxy<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/android/tools/r8/internal/Kj0;->a:Lcom/android/tools/r8/retrace/StackTraceLineParser;

    invoke-interface {v0, p1}, Lcom/android/tools/r8/retrace/StackTraceLineParser;->parse(Ljava/lang/Object;)Lcom/android/tools/r8/retrace/StackTraceElementProxy;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/retrace/StackTraceElementProxy<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/TK0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/TK0;-><init>(Lcom/android/tools/r8/internal/Kj0;)V

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/List;Lcom/android/tools/r8/internal/zT;)V

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Kj0;->a:Lcom/android/tools/r8/retrace/StackTraceLineParser;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/tools/r8/internal/UK0;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/UK0;-><init>(Lcom/android/tools/r8/retrace/StackTraceLineParser;)V

    invoke-static {p1, v1}, Lcom/android/tools/r8/internal/AT;->a(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public registerUses(Lcom/android/tools/r8/retrace/StackTraceElementProxy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/retrace/StackTraceElementProxy<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/Kj0;->b:Lcom/android/tools/r8/retrace/MappingSupplierBase;

    iget-object v1, p0, Lcom/android/tools/r8/internal/Kj0;->c:Lcom/android/tools/r8/DiagnosticsHandler;

    invoke-virtual {p1, v0, v1}, Lcom/android/tools/r8/retrace/StackTraceElementProxy;->registerUses(Lcom/android/tools/r8/retrace/MappingSupplierBase;Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void
.end method

.method public registerUses(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/retrace/StackTraceElementProxy<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/VK0;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/VK0;-><init>(Lcom/android/tools/r8/internal/Kj0;)V

    invoke-interface {p1, v0}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public retraceFrameWithRetracer(Lcom/android/tools/r8/retrace/Retracer;Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)Lcom/android/tools/r8/retrace/RetraceStackFrameAmbiguousResultWithContext;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/retrace/Retracer;",
            "Lcom/android/tools/r8/retrace/StackTraceElementProxy<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/android/tools/r8/retrace/RetraceStackTraceContext;",
            ")",
            "Lcom/android/tools/r8/retrace/RetraceStackFrameAmbiguousResultWithContext<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Lcom/android/tools/r8/retrace/StackTraceElementProxyRetracer;->createDefault(Lcom/android/tools/r8/retrace/Retracer;)Lcom/android/tools/r8/retrace/StackTraceElementProxyRetracer;

    move-result-object p1

    new-instance v8, Lcom/android/tools/r8/internal/C7;

    invoke-direct {v8, p3}, Lcom/android/tools/r8/internal/C7;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, p2, p3}, Lcom/android/tools/r8/retrace/StackTraceElementProxyRetracer;->retrace(Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxyResult;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxyResult;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p3, Lcom/android/tools/r8/internal/QK0;

    move-object v0, p3

    move-object v1, p0

    move-object v2, v7

    move-object v3, v6

    move-object v4, p2

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/android/tools/r8/internal/QK0;-><init>(Lcom/android/tools/r8/internal/Kj0;Ljava/util/List;Ljava/util/Map;Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/internal/C7;)V

    invoke-interface {p1, p3}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    invoke-static {v7}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance p2, Lcom/android/tools/r8/internal/RK0;

    invoke-direct {p2, p1, v6}, Lcom/android/tools/r8/internal/RK0;-><init>(Ljava/util/List;Ljava/util/Map;)V

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v8}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/retrace/RetraceStackTraceContext;

    new-instance p3, Lcom/android/tools/r8/internal/Wj0;

    invoke-direct {p3, p1, p2}, Lcom/android/tools/r8/internal/Wj0;-><init>(Ljava/util/List;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)V

    return-object p3
.end method

.method public retraceLineWithRetracer(Lcom/android/tools/r8/retrace/Retracer;Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)Lcom/android/tools/r8/retrace/RetraceStackFrameResultWithContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/retrace/Retracer;",
            "Lcom/android/tools/r8/retrace/StackTraceElementProxy<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/android/tools/r8/retrace/RetraceStackTraceContext;",
            ")",
            "Lcom/android/tools/r8/retrace/RetraceStackFrameResultWithContext<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/tools/r8/retrace/StackTraceElementProxyRetracer;->createDefault(Lcom/android/tools/r8/retrace/Retracer;)Lcom/android/tools/r8/retrace/StackTraceElementProxyRetracer;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/C7;

    invoke-direct {v0, p3}, Lcom/android/tools/r8/internal/C7;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, p2, p3}, Lcom/android/tools/r8/retrace/StackTraceElementProxyRetracer;->retrace(Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxyResult;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/r8/retrace/RetraceStackTraceElementProxyResult;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p3, Lcom/android/tools/r8/internal/WK0;

    invoke-direct {p3, p0, v0, p2}, Lcom/android/tools/r8/internal/WK0;-><init>(Lcom/android/tools/r8/internal/Kj0;Lcom/android/tools/r8/internal/C7;Lcom/android/tools/r8/retrace/StackTraceElementProxy;)V

    invoke-interface {p1, p3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/retrace/RetraceStackTraceContext;

    new-instance p3, Lcom/android/tools/r8/internal/Xj0;

    invoke-direct {p3, p1, p2}, Lcom/android/tools/r8/internal/Xj0;-><init>(Ljava/util/List;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)V

    return-object p3
.end method

.method public retraceStackTraceParsedWithRetracer(Lcom/android/tools/r8/retrace/Retracer;Ljava/util/List;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)Lcom/android/tools/r8/retrace/RetraceStackTraceResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/retrace/Retracer;",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/retrace/StackTraceElementProxy<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lcom/android/tools/r8/retrace/RetraceStackTraceContext;",
            ")",
            "Lcom/android/tools/r8/retrace/RetraceStackTraceResult<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/tools/r8/internal/Jj0;

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/Kj0;->isVerbose:Z

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/Jj0;-><init>(Z)V

    invoke-static {p1}, Lcom/android/tools/r8/retrace/StackTraceElementProxyRetracer;->createDefault(Lcom/android/tools/r8/retrace/Retracer;)Lcom/android/tools/r8/retrace/StackTraceElementProxyRetracer;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/android/tools/r8/internal/SK0;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/android/tools/r8/internal/SK0;-><init>(Lcom/android/tools/r8/internal/Kj0;Lcom/android/tools/r8/retrace/StackTraceElementProxyRetracer;Lcom/android/tools/r8/internal/Jj0;Ljava/util/List;)V

    invoke-static {p3, p2, v2}, Lcom/android/tools/r8/internal/AT;->a(Ljava/lang/Object;Ljava/util/Collection;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/retrace/RetraceStackTraceContext;

    new-instance p2, Lcom/android/tools/r8/internal/dk0;

    invoke-direct {p2, v1, p1}, Lcom/android/tools/r8/internal/dk0;-><init>(Ljava/util/ArrayList;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)V

    return-object p2
.end method
