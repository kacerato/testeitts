.class public Lcom/android/tools/r8/retrace/Partition;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;

.field static final synthetic b:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Usage: partition [options] <proguard-map> where <proguard-map> is a generated mapping file and options are:"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/zq0;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/retrace/Partition;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Boolean;)Lcom/android/tools/r8/retrace/RetracePartitionException;
    .locals 0

    .line 29
    new-instance p2, Lcom/android/tools/r8/retrace/RetracePartitionException;

    invoke-direct {p2, p0, p1}, Lcom/android/tools/r8/retrace/RetracePartitionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p2
.end method

.method private static synthetic a([Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-static {p0}, Lcom/android/tools/r8/retrace/Partition;->run([Ljava/lang/String;)V

    return-void
.end method

.method private static a([Ljava/lang/String;Lcom/android/tools/r8/retrace/a;)V
    .locals 7

    .line 1
    new-instance v0, Lcom/android/tools/r8/internal/y40;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/y40;-><init>([Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/android/tools/r8/retrace/PartitionCommand;->builder()Lcom/android/tools/r8/retrace/PartitionCommand$Builder;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 3
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/y40;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "--help"

    if-eqz v4, :cond_3

    .line 4
    invoke-static {v0, v5}, Lcom/android/tools/r8/internal/z40;->a(Lcom/android/tools/r8/internal/y40;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    move-object v1, v6

    goto/16 :goto_1

    .line 5
    :cond_0
    const-string v4, "--output"

    invoke-static {v0, v4, v6}, Lcom/android/tools/r8/internal/z40;->a(Lcom/android/tools/r8/internal/y40;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 7
    new-array v5, v2, [Ljava/lang/String;

    .line 8
    invoke-static {v4, v5}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    .line 9
    new-instance v5, Lcom/android/tools/r8/utils/s;

    invoke-direct {v5, v4}, Lcom/android/tools/r8/utils/s;-><init>(Ljava/nio/file/Path;)V

    .line 10
    invoke-virtual {v1, v5}, Lcom/android/tools/r8/retrace/PartitionCommand$Builder;->setPartitionMapConsumer(Lcom/android/tools/r8/PartitionMapConsumer;)Lcom/android/tools/r8/retrace/PartitionCommand$Builder;

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    .line 11
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/y40;->a()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-static {v3}, Lcom/android/tools/r8/retrace/ProguardMapProducer;->fromPath(Ljava/nio/file/Path;)Lcom/android/tools/r8/retrace/ProguardMapProducer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/tools/r8/retrace/PartitionCommand$Builder;->setProguardMapProducer(Lcom/android/tools/r8/retrace/ProguardMapProducer;)Lcom/android/tools/r8/retrace/PartitionCommand$Builder;

    .line 12
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/y40;->b()Ljava/lang/String;

    const/4 v3, 0x1

    goto :goto_0

    .line 13
    :cond_2
    new-instance p0, Lcom/android/tools/r8/utils/StringDiagnostic;

    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    sget-object v2, Lcom/android/tools/r8/retrace/Partition;->a:Ljava/lang/String;

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 16
    new-instance v2, Lcom/android/tools/r8/ParseFlagPrinter;

    invoke-direct {v2}, Lcom/android/tools/r8/ParseFlagPrinter;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/retrace/Partition;->getFlags()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/tools/r8/ParseFlagPrinter;->addFlags(Ljava/util/List;)Lcom/android/tools/r8/ParseFlagPrinter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/tools/r8/ParseFlagPrinter;->appendLinesToBuilder(Ljava/lang/StringBuilder;)V

    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-direct {p0, v1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, p0}, Lcom/android/tools/r8/DiagnosticsHandler;->error(Lcom/android/tools/r8/Diagnostic;)V

    .line 19
    new-instance p0, Lcom/android/tools/r8/retrace/RetracePartitionException;

    .line 20
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/y40;->a()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Too many arguments specified for builder at \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/tools/r8/retrace/RetracePartitionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    if-nez v1, :cond_6

    .line 21
    sget-boolean p1, Lcom/android/tools/r8/retrace/Partition;->b:Z

    if-nez p1, :cond_5

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 22
    :cond_5
    :goto_2
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lcom/android/tools/r8/Version;->getVersionString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Partition "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    sget-object v0, Lcom/android/tools/r8/retrace/Partition;->a:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/android/tools/r8/ParseFlagPrinter;

    invoke-direct {v0}, Lcom/android/tools/r8/ParseFlagPrinter;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/retrace/Partition;->getFlags()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/ParseFlagPrinter;->addFlags(Ljava/util/List;)Lcom/android/tools/r8/ParseFlagPrinter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/ParseFlagPrinter;->appendLinesToBuilder(Ljava/lang/StringBuilder;)V

    .line 26
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void

    .line 28
    :cond_6
    invoke-virtual {v1}, Lcom/android/tools/r8/retrace/PartitionCommand$Builder;->build()Lcom/android/tools/r8/retrace/PartitionCommand;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/retrace/Partition;->run(Lcom/android/tools/r8/retrace/PartitionCommand;)V

    return-void
.end method

.method public static synthetic b(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Boolean;)Lcom/android/tools/r8/retrace/RetracePartitionException;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/retrace/Partition;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Boolean;)Lcom/android/tools/r8/retrace/RetracePartitionException;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c([Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/retrace/Partition;->a([Ljava/lang/String;)V

    return-void
.end method

.method public static getFlags()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/ParseFlagInfo;",
            ">;"
        }
    .end annotation

    sget v0, Lcom/android/tools/r8/internal/hC;->c:I

    new-instance v0, Lcom/android/tools/r8/internal/eC;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/eC;-><init>()V

    const-string v1, "Output destination of partitioned map"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "<partition-map>"

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v3, "--output"

    invoke-static {v3, v2, v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    invoke-static {}, Lcom/android/tools/r8/Y;->c()Lcom/android/tools/r8/Y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/eC;->a()Lcom/android/tools/r8/internal/hC;

    move-result-object v0

    return-object v0
.end method

.method public static varargs main([Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/retrace/m;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/retrace/m;-><init>([Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/tools/r8/internal/lv;->a(Lcom/android/tools/r8/internal/mv;)V

    return-void
.end method

.method public static run(Lcom/android/tools/r8/retrace/PartitionCommand;)V
    .locals 4

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/tools/r8/retrace/PartitionCommand;->getPartitionMapConsumer()Lcom/android/tools/r8/PartitionMapConsumer;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/retrace/PartitionCommand;->getDiagnosticsHandler()Lcom/android/tools/r8/DiagnosticsHandler;

    move-result-object v1

    invoke-static {v1}, Lcom/android/tools/r8/retrace/ProguardMapPartitioner;->builder(Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/retrace/ProguardMapPartitionerBuilder;

    move-result-object v1

    .line 4
    invoke-virtual {p0}, Lcom/android/tools/r8/retrace/PartitionCommand;->getProguardMapProducer()Lcom/android/tools/r8/retrace/ProguardMapProducer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/tools/r8/retrace/ProguardMapPartitionerBuilder;->setProguardMapProducer(Lcom/android/tools/r8/retrace/ProguardMapProducer;)Lcom/android/tools/r8/retrace/ProguardMapPartitionerBuilder;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/retrace/PartitionCommand;->getPartitionMapConsumer()Lcom/android/tools/r8/PartitionMapConsumer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/tools/r8/M3;

    invoke-direct {v3, v2}, Lcom/android/tools/r8/M3;-><init>(Lcom/android/tools/r8/PartitionMapConsumer;)V

    invoke-interface {v1, v3}, Lcom/android/tools/r8/retrace/ProguardMapPartitionerBuilder;->setPartitionConsumer(Ljava/util/function/Consumer;)Lcom/android/tools/r8/retrace/ProguardMapPartitionerBuilder;

    move-result-object v1

    const/4 v2, 0x1

    .line 6
    invoke-interface {v1, v2}, Lcom/android/tools/r8/retrace/ProguardMapPartitionerBuilder;->setAllowEmptyMappedRanges(Z)Lcom/android/tools/r8/retrace/ProguardMapPartitionerBuilder;

    move-result-object v1

    const/4 v2, 0x0

    .line 7
    invoke-interface {v1, v2}, Lcom/android/tools/r8/retrace/ProguardMapPartitionerBuilder;->setAllowExperimentalMapping(Z)Lcom/android/tools/r8/retrace/ProguardMapPartitionerBuilder;

    move-result-object v1

    .line 8
    invoke-interface {v1}, Lcom/android/tools/r8/retrace/ProguardMapPartitionerBuilder;->build()Lcom/android/tools/r8/retrace/ProguardMapPartitioner;

    move-result-object v1

    .line 9
    invoke-interface {v1}, Lcom/android/tools/r8/retrace/ProguardMapPartitioner;->run()Lcom/android/tools/r8/retrace/MappingPartitionMetadata;

    move-result-object v1

    .line 10
    invoke-interface {v0, v1}, Lcom/android/tools/r8/PartitionMapConsumer;->acceptMappingPartitionMetadata(Lcom/android/tools/r8/retrace/MappingPartitionMetadata;)V

    .line 11
    invoke-virtual {p0}, Lcom/android/tools/r8/retrace/PartitionCommand;->getPartitionMapConsumer()Lcom/android/tools/r8/PartitionMapConsumer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/tools/r8/retrace/PartitionCommand;->getDiagnosticsHandler()Lcom/android/tools/r8/DiagnosticsHandler;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/tools/r8/H;->finished(Lcom/android/tools/r8/DiagnosticsHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 12
    invoke-virtual {p0}, Lcom/android/tools/r8/retrace/PartitionCommand;->getDiagnosticsHandler()Lcom/android/tools/r8/DiagnosticsHandler;

    move-result-object p0

    new-instance v1, Lcom/android/tools/r8/retrace/l;

    invoke-direct {v1}, Lcom/android/tools/r8/retrace/l;-><init>()V

    .line 13
    const-class v2, Lcom/android/tools/r8/retrace/RetracePartitionException;

    invoke-static {p0, v0, v1, v2}, Lcom/android/tools/r8/internal/lv;->a(Lcom/android/tools/r8/DiagnosticsHandler;Ljava/lang/Throwable;Lcom/android/tools/r8/internal/gt0;Ljava/lang/Class;)Ljava/lang/Exception;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/retrace/RetracePartitionException;

    throw p0
.end method

.method public static run([Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/retrace/RetracePartitionException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/tools/r8/retrace/a;

    invoke-direct {v0}, Lcom/android/tools/r8/retrace/a;-><init>()V

    invoke-static {p0, v0}, Lcom/android/tools/r8/retrace/Partition;->a([Ljava/lang/String;Lcom/android/tools/r8/retrace/a;)V

    return-void
.end method
