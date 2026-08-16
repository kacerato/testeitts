.class public Lcom/android/tools/r8/retrace/RetraceAsync;
.super Lcom/android/tools/r8/internal/Kj0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/retrace/RetraceAsync$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "ST:",
        "Lcom/android/tools/r8/retrace/StackTraceElementProxy<",
        "TT;TST;>;>",
        "Lcom/android/tools/r8/internal/Kj0;"
    }
.end annotation


# instance fields
.field private final d:Lcom/android/tools/r8/retrace/MappingSupplierAsync;

.field private final e:Lcom/android/tools/r8/DiagnosticsHandler;


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/retrace/StackTraceLineParser;Lcom/android/tools/r8/retrace/MappingSupplierAsync;Lcom/android/tools/r8/DiagnosticsHandler;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/Kj0;-><init>(Lcom/android/tools/r8/retrace/StackTraceLineParser;Lcom/android/tools/r8/retrace/MappingSupplierBase;Lcom/android/tools/r8/DiagnosticsHandler;Z)V

    iput-object p2, p0, Lcom/android/tools/r8/retrace/RetraceAsync;->d:Lcom/android/tools/r8/retrace/MappingSupplierAsync;

    iput-object p3, p0, Lcom/android/tools/r8/retrace/RetraceAsync;->e:Lcom/android/tools/r8/DiagnosticsHandler;

    return-void
.end method

.method private synthetic a(Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;Lcom/android/tools/r8/retrace/MappingPartitionFromKeySupplier;)Lcom/android/tools/r8/retrace/RetraceStackFrameAmbiguousResultWithContext;
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/retrace/RetraceAsync;->d:Lcom/android/tools/r8/retrace/MappingSupplierAsync;

    iget-object v1, p0, Lcom/android/tools/r8/retrace/RetraceAsync;->e:Lcom/android/tools/r8/DiagnosticsHandler;

    .line 5
    invoke-interface {v0, v1, p3}, Lcom/android/tools/r8/retrace/MappingSupplierAsync;->createRetracer(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/retrace/MappingPartitionFromKeySupplier;)Lcom/android/tools/r8/retrace/Retracer;

    move-result-object p3

    .line 6
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/tools/r8/internal/Kj0;->retraceFrameWithRetracer(Lcom/android/tools/r8/retrace/Retracer;Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)Lcom/android/tools/r8/retrace/RetraceStackFrameAmbiguousResultWithContext;

    move-result-object p1

    return-object p1
.end method

.method private synthetic a(Ljava/util/List;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;Lcom/android/tools/r8/retrace/MappingPartitionFromKeySupplier;)Lcom/android/tools/r8/retrace/RetraceStackTraceResult;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/retrace/RetraceAsync;->d:Lcom/android/tools/r8/retrace/MappingSupplierAsync;

    iget-object v1, p0, Lcom/android/tools/r8/retrace/RetraceAsync;->e:Lcom/android/tools/r8/DiagnosticsHandler;

    .line 2
    invoke-interface {v0, v1, p3}, Lcom/android/tools/r8/retrace/MappingSupplierAsync;->createRetracer(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/retrace/MappingPartitionFromKeySupplier;)Lcom/android/tools/r8/retrace/Retracer;

    move-result-object p3

    .line 3
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/tools/r8/internal/Kj0;->retraceStackTraceParsedWithRetracer(Lcom/android/tools/r8/retrace/Retracer;Ljava/util/List;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)Lcom/android/tools/r8/retrace/RetraceStackTraceResult;

    move-result-object p1

    return-object p1
.end method

.method private synthetic b(Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;Lcom/android/tools/r8/retrace/MappingPartitionFromKeySupplier;)Lcom/android/tools/r8/retrace/RetraceStackFrameResultWithContext;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/retrace/RetraceAsync;->d:Lcom/android/tools/r8/retrace/MappingSupplierAsync;

    iget-object v1, p0, Lcom/android/tools/r8/retrace/RetraceAsync;->e:Lcom/android/tools/r8/DiagnosticsHandler;

    invoke-interface {v0, v1, p3}, Lcom/android/tools/r8/retrace/MappingSupplierAsync;->createRetracer(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/retrace/MappingPartitionFromKeySupplier;)Lcom/android/tools/r8/retrace/Retracer;

    move-result-object p3

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/tools/r8/internal/Kj0;->retraceLineWithRetracer(Lcom/android/tools/r8/retrace/Retracer;Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)Lcom/android/tools/r8/retrace/RetraceStackFrameResultWithContext;

    move-result-object p1

    return-object p1
.end method

.method public static builder()Lcom/android/tools/r8/retrace/RetraceAsync$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ST:",
            "Lcom/android/tools/r8/retrace/StackTraceElementProxy<",
            "TT;TST;>;>()",
            "Lcom/android/tools/r8/retrace/RetraceAsync$Builder<",
            "TT;TST;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/tools/r8/retrace/RetraceAsync$Builder;

    invoke-direct {v0}, Lcom/android/tools/r8/retrace/RetraceAsync$Builder;-><init>()V

    return-object v0
.end method

.method public static synthetic g(Lcom/android/tools/r8/retrace/RetraceAsync;Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;Lcom/android/tools/r8/retrace/MappingPartitionFromKeySupplier;)Lcom/android/tools/r8/retrace/RetraceStackFrameAmbiguousResultWithContext;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/retrace/RetraceAsync;->a(Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;Lcom/android/tools/r8/retrace/MappingPartitionFromKeySupplier;)Lcom/android/tools/r8/retrace/RetraceStackFrameAmbiguousResultWithContext;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Lcom/android/tools/r8/retrace/RetraceAsync;Ljava/util/List;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;Lcom/android/tools/r8/retrace/MappingPartitionFromKeySupplier;)Lcom/android/tools/r8/retrace/RetraceStackTraceResult;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/retrace/RetraceAsync;->a(Ljava/util/List;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;Lcom/android/tools/r8/retrace/MappingPartitionFromKeySupplier;)Lcom/android/tools/r8/retrace/RetraceStackTraceResult;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/android/tools/r8/retrace/RetraceAsync;Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;Lcom/android/tools/r8/retrace/MappingPartitionFromKeySupplier;)Lcom/android/tools/r8/retrace/RetraceStackFrameResultWithContext;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/tools/r8/retrace/RetraceAsync;->b(Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;Lcom/android/tools/r8/retrace/MappingPartitionFromKeySupplier;)Lcom/android/tools/r8/retrace/RetraceStackFrameResultWithContext;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public retraceFrame(Ljava/lang/Object;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)Lcom/android/tools/r8/retrace/RetraceAsyncResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/tools/r8/retrace/RetraceStackTraceContext;",
            ")",
            "Lcom/android/tools/r8/retrace/RetraceAsyncResult<",
            "Lcom/android/tools/r8/retrace/RetraceStackFrameAmbiguousResultWithContext<",
            "TT;>;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Kj0;->parse(Ljava/lang/Object;)Lcom/android/tools/r8/retrace/StackTraceElementProxy;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Kj0;->registerUses(Lcom/android/tools/r8/retrace/StackTraceElementProxy;)V

    new-instance v0, Lcom/android/tools/r8/retrace/E;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/retrace/E;-><init>(Lcom/android/tools/r8/retrace/RetraceAsync;Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)V

    return-object v0
.end method

.method public retraceLine(Ljava/lang/Object;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)Lcom/android/tools/r8/retrace/RetraceAsyncResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/tools/r8/retrace/RetraceStackTraceContext;",
            ")",
            "Lcom/android/tools/r8/retrace/RetraceAsyncResult<",
            "Lcom/android/tools/r8/retrace/RetraceStackFrameResultWithContext<",
            "TT;>;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Kj0;->parse(Ljava/lang/Object;)Lcom/android/tools/r8/retrace/StackTraceElementProxy;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Kj0;->registerUses(Lcom/android/tools/r8/retrace/StackTraceElementProxy;)V

    new-instance v0, Lcom/android/tools/r8/retrace/F;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/retrace/F;-><init>(Lcom/android/tools/r8/retrace/RetraceAsync;Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)V

    return-object v0
.end method

.method public retraceStackTrace(Ljava/util/List;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)Lcom/android/tools/r8/retrace/RetraceAsyncResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/android/tools/r8/retrace/RetraceStackTraceContext;",
            ")",
            "Lcom/android/tools/r8/retrace/RetraceAsyncResult<",
            "Lcom/android/tools/r8/retrace/RetraceStackTraceResult<",
            "TT;>;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Kj0;->parse(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/retrace/RetraceAsync;->retraceStackTraceParsed(Ljava/util/List;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)Lcom/android/tools/r8/retrace/RetraceAsyncResult;

    move-result-object p1

    return-object p1
.end method

.method public retraceStackTraceParsed(Ljava/util/List;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)Lcom/android/tools/r8/retrace/RetraceAsyncResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TST;>;",
            "Lcom/android/tools/r8/retrace/RetraceStackTraceContext;",
            ")",
            "Lcom/android/tools/r8/retrace/RetraceAsyncResult<",
            "Lcom/android/tools/r8/retrace/RetraceStackTraceResult<",
            "TT;>;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Kj0;->registerUses(Ljava/util/List;)V

    new-instance v0, Lcom/android/tools/r8/retrace/D;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/tools/r8/retrace/D;-><init>(Lcom/android/tools/r8/retrace/RetraceAsync;Ljava/util/List;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)V

    return-object v0
.end method
