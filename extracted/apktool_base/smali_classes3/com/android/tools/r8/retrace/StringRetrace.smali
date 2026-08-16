.class public Lcom/android/tools/r8/retrace/StringRetrace;
.super Lcom/android/tools/r8/retrace/Retrace;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/tools/r8/retrace/Retrace<",
        "Ljava/lang/String;",
        "Lcom/android/tools/r8/internal/Vn0;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/retrace/StackTraceLineParser;Lcom/android/tools/r8/retrace/MappingSupplier;Lcom/android/tools/r8/DiagnosticsHandler;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/retrace/Retrace;-><init>(Lcom/android/tools/r8/retrace/StackTraceLineParser;Lcom/android/tools/r8/retrace/MappingSupplier;Lcom/android/tools/r8/DiagnosticsHandler;Z)V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 10
    const-string v0, "at "

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_2

    .line 11
    sget-object v0, Lcom/android/tools/r8/internal/zq0;->a:[C

    move v0, v1

    .line 12
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 13
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lcom/android/tools/r8/internal/zq0;->a(I)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 15
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 16
    :cond_2
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "<OR> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/tools/r8/retrace/RetraceStackFrameAmbiguousResult;

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v5, v2

    move v4, v3

    :goto_0
    if-eqz v4, :cond_0

    .line 3
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 4
    invoke-interface {v1}, Lcom/android/tools/r8/retrace/RetraceStackFrameAmbiguousResult;->getAmbiguousResult()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    move-object v8, v7

    move v7, v2

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/retrace/RetraceStackFrameResult;

    if-nez v8, :cond_2

    move-object v8, v9

    .line 5
    :cond_2
    invoke-interface {v9}, Lcom/android/tools/r8/retrace/RetraceStackFrameResult;->size()I

    move-result v10

    if-ge v5, v10, :cond_1

    .line 6
    invoke-interface {v9, v5}, Lcom/android/tools/r8/retrace/RetraceStackFrameResult;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 7
    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    if-eq v9, v8, :cond_3

    .line 8
    invoke-static {v7}, Lcom/android/tools/r8/retrace/StringRetrace;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 9
    :cond_3
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    move v7, v3

    goto :goto_1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    move v4, v7

    goto :goto_0

    :cond_6
    return-object v0
.end method

.method public static create(Lcom/android/tools/r8/retrace/MappingSupplier;Lcom/android/tools/r8/DiagnosticsHandler;Ljava/lang/String;Z)Lcom/android/tools/r8/retrace/StringRetrace;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/retrace/MappingSupplier<",
            "*>;",
            "Lcom/android/tools/r8/DiagnosticsHandler;",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/android/tools/r8/retrace/StringRetrace;"
        }
    .end annotation

    .line 6
    new-instance v0, Lcom/android/tools/r8/retrace/StringRetrace;

    .line 7
    invoke-static {p2}, Lcom/android/tools/r8/retrace/StackTraceLineParser;->createRegularExpressionParser(Ljava/lang/String;)Lcom/android/tools/r8/retrace/StackTraceLineParser;

    move-result-object p2

    invoke-direct {v0, p2, p0, p1, p3}, Lcom/android/tools/r8/retrace/StringRetrace;-><init>(Lcom/android/tools/r8/retrace/StackTraceLineParser;Lcom/android/tools/r8/retrace/MappingSupplier;Lcom/android/tools/r8/DiagnosticsHandler;Z)V

    return-object v0
.end method

.method public static create(Lcom/android/tools/r8/retrace/RetraceOptions;)Lcom/android/tools/r8/retrace/StringRetrace;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/tools/r8/retrace/RetraceOptions;->getMappingSupplier()Lcom/android/tools/r8/retrace/MappingSupplier;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/android/tools/r8/retrace/RetraceOptions;->getDiagnosticsHandler()Lcom/android/tools/r8/DiagnosticsHandler;

    move-result-object v1

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/retrace/RetraceOptions;->getRegularExpression()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/retrace/RetraceOptions;->isVerbose()Z

    move-result p0

    .line 5
    invoke-static {v0, v1, v2, p0}, Lcom/android/tools/r8/retrace/StringRetrace;->create(Lcom/android/tools/r8/retrace/MappingSupplier;Lcom/android/tools/r8/DiagnosticsHandler;Ljava/lang/String;Z)Lcom/android/tools/r8/retrace/StringRetrace;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public retrace(Ljava/lang/String;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)Lcom/android/tools/r8/retrace/RetraceStackFrameResultWithContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/tools/r8/retrace/RetraceStackTraceContext;",
            ")",
            "Lcom/android/tools/r8/retrace/RetraceStackFrameResultWithContext<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/retrace/Retrace;->retraceFrame(Ljava/lang/Object;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)Lcom/android/tools/r8/retrace/RetraceStackFrameAmbiguousResultWithContext;

    move-result-object p1

    .line 5
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/android/tools/r8/retrace/StringRetrace;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p2

    .line 6
    invoke-interface {p1}, Lcom/android/tools/r8/retrace/RetraceResultWithContext;->getContext()Lcom/android/tools/r8/retrace/RetraceStackTraceContext;

    move-result-object p1

    .line 7
    new-instance v0, Lcom/android/tools/r8/internal/Xj0;

    invoke-direct {v0, p2, p1}, Lcom/android/tools/r8/internal/Xj0;-><init>(Ljava/util/List;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)V

    return-object v0
.end method

.method public retrace(Ljava/util/List;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)Lcom/android/tools/r8/retrace/RetraceStackFrameResultWithContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/tools/r8/retrace/RetraceStackTraceContext;",
            ")",
            "Lcom/android/tools/r8/retrace/RetraceStackFrameResultWithContext<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/retrace/Retrace;->retraceStackTrace(Ljava/util/List;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)Lcom/android/tools/r8/retrace/RetraceStackTraceResult;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Lcom/android/tools/r8/retrace/RetraceStackTraceResult;->getResult()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/android/tools/r8/retrace/StringRetrace;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-interface {p1}, Lcom/android/tools/r8/retrace/RetraceResultWithContext;->getContext()Lcom/android/tools/r8/retrace/RetraceStackTraceContext;

    move-result-object p1

    .line 3
    new-instance v0, Lcom/android/tools/r8/internal/Xj0;

    invoke-direct {v0, p2, p1}, Lcom/android/tools/r8/internal/Xj0;-><init>(Ljava/util/List;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)V

    return-object v0
.end method

.method public retraceParsed(Ljava/util/List;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)Lcom/android/tools/r8/retrace/RetraceStackFrameResultWithContext;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/internal/Vn0;",
            ">;",
            "Lcom/android/tools/r8/retrace/RetraceStackTraceContext;",
            ")",
            "Lcom/android/tools/r8/retrace/RetraceStackFrameResultWithContext<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/retrace/Retrace;->retraceStackTraceParsed(Ljava/util/List;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)Lcom/android/tools/r8/retrace/RetraceStackTraceResult;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/tools/r8/retrace/RetraceStackTraceResult;->getResult()Ljava/util/List;

    move-result-object p2

    invoke-static {p2}, Lcom/android/tools/r8/retrace/StringRetrace;->a(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-interface {p1}, Lcom/android/tools/r8/retrace/RetraceResultWithContext;->getContext()Lcom/android/tools/r8/retrace/RetraceStackTraceContext;

    move-result-object p1

    new-instance v0, Lcom/android/tools/r8/internal/Xj0;

    invoke-direct {v0, p2, p1}, Lcom/android/tools/r8/internal/Xj0;-><init>(Ljava/util/List;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)V

    return-object v0
.end method

.method public retraceSupplier(Lcom/android/tools/r8/retrace/StreamSupplier;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lcom/android/tools/r8/retrace/StreamSupplier<",
            "TE;>;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-static {}, Lcom/android/tools/r8/retrace/RetraceStackTraceContext;->empty()Lcom/android/tools/r8/retrace/RetraceStackTraceContext;

    move-result-object v0

    :goto_0
    invoke-interface {p1}, Lcom/android/tools/r8/retrace/StreamSupplier;->getNext()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1, v0}, Lcom/android/tools/r8/retrace/StringRetrace;->retrace(Ljava/lang/String;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)Lcom/android/tools/r8/retrace/RetraceStackFrameResultWithContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/tools/r8/retrace/RetraceResultWithContext;->getContext()Lcom/android/tools/r8/retrace/RetraceStackTraceContext;

    move-result-object v1

    invoke-interface {v0, p2}, Lcom/android/tools/r8/retrace/RetraceStackFrameResult;->forEach(Ljava/util/function/Consumer;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    return-void
.end method
