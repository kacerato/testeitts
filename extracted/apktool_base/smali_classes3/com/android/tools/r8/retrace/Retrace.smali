.class public Lcom/android/tools/r8/retrace/Retrace;
.super Lcom/android/tools/r8/internal/Kj0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/retrace/Retrace$Builder;
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


# static fields
.field private static final f:Ljava/lang/String;

.field static final synthetic g:Z = true


# instance fields
.field private final d:Lcom/android/tools/r8/retrace/MappingSupplier;

.field private final e:Lcom/android/tools/r8/DiagnosticsHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Usage: retrace [options] <proguard-map> [stack-trace-file] where <proguard-map> is a generated mapping file and options are:"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/zq0;->b([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/tools/r8/retrace/Retrace;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/retrace/StackTraceLineParser;Lcom/android/tools/r8/retrace/MappingSupplier;Lcom/android/tools/r8/DiagnosticsHandler;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/retrace/StackTraceLineParser<",
            "TT;TST;>;",
            "Lcom/android/tools/r8/retrace/MappingSupplier<",
            "*>;",
            "Lcom/android/tools/r8/DiagnosticsHandler;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/tools/r8/internal/Kj0;-><init>(Lcom/android/tools/r8/retrace/StackTraceLineParser;Lcom/android/tools/r8/retrace/MappingSupplierBase;Lcom/android/tools/r8/DiagnosticsHandler;Z)V

    iput-object p2, p0, Lcom/android/tools/r8/retrace/Retrace;->d:Lcom/android/tools/r8/retrace/MappingSupplier;

    iput-object p3, p0, Lcom/android/tools/r8/retrace/Retrace;->e:Lcom/android/tools/r8/DiagnosticsHandler;

    return-void
.end method

.method private static synthetic a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Boolean;)Lcom/android/tools/r8/retrace/RetraceFailedException;
    .locals 0

    .line 80
    new-instance p2, Lcom/android/tools/r8/retrace/RetraceFailedException;

    invoke-direct {p2, p0, p1}, Lcom/android/tools/r8/retrace/RetraceFailedException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p2
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    sget-object v1, Lcom/android/tools/r8/retrace/Retrace;->f:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/android/tools/r8/ParseFlagPrinter;

    invoke-direct {v1}, Lcom/android/tools/r8/ParseFlagPrinter;-><init>()V

    invoke-static {}, Lcom/android/tools/r8/retrace/Retrace;->getFlags()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/ParseFlagPrinter;->addFlags(Ljava/util/List;)Lcom/android/tools/r8/ParseFlagPrinter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/ParseFlagPrinter;->appendLinesToBuilder(Ljava/lang/StringBuilder;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/naming/mappinginformation/b;)V
    .locals 1

    .line 76
    invoke-virtual {p1}, Lcom/android/tools/r8/naming/mappinginformation/b;->s()Lcom/android/tools/r8/naming/MapVersion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/naming/MapVersion;->isUnknown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object p1, p1, Lcom/android/tools/r8/naming/mappinginformation/b;->b:Ljava/lang/String;

    .line 78
    invoke-static {p1}, Lcom/android/tools/r8/retrace/RetraceUnknownMapVersionDiagnostic;->create(Ljava/lang/String;)Lcom/android/tools/r8/retrace/RetraceUnknownMapVersionDiagnostic;

    move-result-object p1

    .line 79
    invoke-interface {p0, p1}, Lcom/android/tools/r8/DiagnosticsHandler;->warning(Lcom/android/tools/r8/Diagnostic;)V

    :cond_0
    return-void
.end method

.method private static synthetic a(Lcom/android/tools/r8/DiagnosticsHandler;Ljava/util/List;)V
    .locals 4

    .line 81
    :try_start_0
    new-instance v0, Ljava/io/PrintStream;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    sget-object v2, Lcom/android/tools/r8/internal/ec;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 83
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 84
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_3

    .line 85
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p1
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_0

    .line 86
    :goto_3
    new-instance v0, Lcom/android/tools/r8/utils/StringDiagnostic;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/android/tools/r8/DiagnosticsHandler;->error(Lcom/android/tools/r8/Diagnostic;)V

    return-void
.end method

.method private static synthetic a([Ljava/lang/String;)V
    .locals 0

    .line 87
    invoke-static {p0}, Lcom/android/tools/r8/retrace/Retrace;->run([Ljava/lang/String;)V

    return-void
.end method

.method private static a([Ljava/lang/String;Lcom/android/tools/r8/retrace/h;)V
    .locals 11

    .line 5
    new-instance v0, Lcom/android/tools/r8/internal/y40;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/y40;-><init>([Ljava/lang/String;)V

    .line 6
    invoke-static {p1}, Lcom/android/tools/r8/retrace/RetraceCommand;->builder(Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/retrace/RetraceCommand$Builder;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    .line 7
    :goto_0
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/y40;->a()Ljava/lang/String;

    move-result-object v6

    const-string v7, "--version"

    const-string v8, "--help"

    if-eqz v6, :cond_d

    .line 8
    invoke-static {v0, v8}, Lcom/android/tools/r8/internal/z40;->a(Lcom/android/tools/r8/internal/y40;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    invoke-static {v0, v7}, Lcom/android/tools/r8/internal/z40;->a(Lcom/android/tools/r8/internal/y40;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    if-eqz v6, :cond_1

    :goto_1
    const/4 v1, 0x0

    goto/16 :goto_6

    .line 10
    :cond_1
    const-string v6, "--info"

    invoke-static {v0, v6}, Lcom/android/tools/r8/internal/z40;->a(Lcom/android/tools/r8/internal/y40;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    if-eqz v6, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    const-string v6, "--verbose"

    invoke-static {v0, v6}, Lcom/android/tools/r8/internal/z40;->a(Lcom/android/tools/r8/internal/y40;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x1

    if-eqz v6, :cond_3

    .line 12
    invoke-virtual {v1, v7}, Lcom/android/tools/r8/retrace/RetraceCommand$Builder;->setVerbose(Z)Lcom/android/tools/r8/retrace/RetraceCommand$Builder;

    goto :goto_0

    .line 13
    :cond_3
    const-string v6, "--quiet"

    invoke-static {v0, v6}, Lcom/android/tools/r8/internal/z40;->a(Lcom/android/tools/r8/internal/y40;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    if-eqz v6, :cond_4

    move v5, v7

    goto :goto_0

    .line 14
    :cond_4
    const-string v6, "--regex"

    const-string v8, "--r"

    invoke-static {v0, v6, v8}, Lcom/android/tools/r8/internal/z40;->a(Lcom/android/tools/r8/internal/y40;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 15
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5

    .line 16
    invoke-virtual {v1, v6}, Lcom/android/tools/r8/retrace/RetraceCommand$Builder;->setRegularExpression(Ljava/lang/String;)Lcom/android/tools/r8/retrace/RetraceCommand$Builder;

    goto :goto_0

    .line 17
    :cond_5
    const-string v6, "--verify-mapping-file-hash"

    invoke-static {v0, v6}, Lcom/android/tools/r8/internal/z40;->a(Lcom/android/tools/r8/internal/y40;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 18
    invoke-virtual {v1, v7}, Lcom/android/tools/r8/retrace/RetraceCommand$Builder;->setVerifyMappingFileHash(Z)Lcom/android/tools/r8/retrace/RetraceCommand$Builder;

    :goto_2
    move v4, v7

    goto :goto_0

    .line 19
    :cond_6
    const-string v6, "--partition-map"

    const-string v8, "--p"

    invoke-static {v0, v6, v8}, Lcom/android/tools/r8/internal/z40;->a(Lcom/android/tools/r8/internal/y40;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "\'."

    const-string v9, "Could not find mapping file \'"

    if-eqz v6, :cond_8

    .line 20
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_8

    .line 21
    new-array v3, v2, [Ljava/lang/String;

    invoke-static {v6, v3}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    .line 22
    new-array v10, v2, [Ljava/nio/file/LinkOption;

    invoke-static {v3, v10}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 23
    :try_start_0
    invoke-static {v3}, Lcom/android/tools/r8/utils/t;->a(Ljava/nio/file/Path;)Lcom/android/tools/r8/retrace/PartitionMappingSupplier;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/retrace/RetraceCommand$Builder;->setMappingSupplier(Lcom/android/tools/r8/retrace/MappingSupplier;)Lcom/android/tools/r8/retrace/RetraceCommand$Builder;

    :goto_3
    move v3, v7

    goto/16 :goto_0

    :catch_0
    move-exception p0

    .line 25
    new-instance v0, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;)V

    .line 26
    iget-object p0, p1, Lcom/android/tools/r8/retrace/h;->a:Lcom/android/tools/r8/retrace/f;

    invoke-interface {p0, v0}, Lcom/android/tools/r8/DiagnosticsHandler;->error(Lcom/android/tools/r8/Diagnostic;)V

    .line 27
    new-instance p0, Lcom/android/tools/r8/internal/Ij0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ij0;-><init>()V

    throw p0

    .line 28
    :cond_7
    new-instance p0, Lcom/android/tools/r8/utils/StringDiagnostic;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    .line 30
    iget-object p1, p1, Lcom/android/tools/r8/retrace/h;->a:Lcom/android/tools/r8/retrace/f;

    invoke-interface {p1, p0}, Lcom/android/tools/r8/DiagnosticsHandler;->error(Lcom/android/tools/r8/Diagnostic;)V

    .line 31
    new-instance p0, Lcom/android/tools/r8/internal/Ij0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ij0;-><init>()V

    throw p0

    :cond_8
    if-nez v3, :cond_b

    .line 32
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/y40;->a()Ljava/lang/String;

    move-result-object v3

    .line 33
    new-array v6, v2, [Ljava/lang/String;

    invoke-static {v3, v6}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v6

    .line 34
    new-array v10, v2, [Ljava/nio/file/LinkOption;

    invoke-static {v6, v10}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 35
    const-string v6, "com.android.tools.r8.experimentalmapping"

    invoke-static {v6}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_9

    move v6, v7

    goto :goto_4

    :cond_9
    move v6, v2

    .line 36
    :goto_4
    invoke-static {}, Lcom/android/tools/r8/retrace/ProguardMappingSupplier;->builder()Lcom/android/tools/r8/retrace/ProguardMappingSupplier$Builder;

    move-result-object v8

    new-array v9, v2, [Ljava/lang/String;

    .line 37
    invoke-static {v3, v9}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-static {v3}, Lcom/android/tools/r8/retrace/ProguardMapProducer;->fromPath(Ljava/nio/file/Path;)Lcom/android/tools/r8/retrace/ProguardMapProducer;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/android/tools/r8/retrace/ProguardMappingSupplier$Builder;->setProguardMapProducer(Lcom/android/tools/r8/retrace/ProguardMapProducer;)Lcom/android/tools/r8/retrace/ProguardMappingSupplier$Builder;

    move-result-object v3

    .line 38
    invoke-virtual {v3, v6}, Lcom/android/tools/r8/retrace/MappingSupplierBuilder;->setAllowExperimental(Z)Lcom/android/tools/r8/retrace/MappingSupplierBuilder;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/retrace/ProguardMappingSupplier$Builder;

    .line 39
    invoke-virtual {v3, v2}, Lcom/android/tools/r8/retrace/ProguardMappingSupplier$Builder;->setLoadAllDefinitions(Z)Lcom/android/tools/r8/retrace/ProguardMappingSupplier$Builder;

    move-result-object v3

    .line 40
    invoke-virtual {v3}, Lcom/android/tools/r8/retrace/MappingSupplierBuilder;->build()Lcom/android/tools/r8/retrace/MappingSupplier;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/retrace/ProguardMappingSupplier;

    .line 41
    invoke-virtual {v1, v3}, Lcom/android/tools/r8/retrace/RetraceCommand$Builder;->setMappingSupplier(Lcom/android/tools/r8/retrace/MappingSupplier;)Lcom/android/tools/r8/retrace/RetraceCommand$Builder;

    .line 42
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/y40;->b()Ljava/lang/String;

    goto :goto_3

    .line 43
    :cond_a
    new-instance p0, Lcom/android/tools/r8/utils/StringDiagnostic;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    .line 45
    iget-object p1, p1, Lcom/android/tools/r8/retrace/h;->a:Lcom/android/tools/r8/retrace/f;

    invoke-interface {p1, p0}, Lcom/android/tools/r8/DiagnosticsHandler;->error(Lcom/android/tools/r8/Diagnostic;)V

    .line 46
    new-instance p0, Lcom/android/tools/r8/internal/Ij0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ij0;-><init>()V

    throw p0

    :cond_b
    if-nez v4, :cond_c

    .line 47
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/y40;->a()Ljava/lang/String;

    move-result-object v4

    .line 48
    :try_start_1
    new-array v6, v2, [Ljava/lang/String;

    invoke-static {v4, v6}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    sget-object v6, Lcom/android/tools/r8/internal/ec;->a:Ljava/nio/charset/Charset;

    invoke-static {v4, v6}, Ljava/nio/file/Files;->readAllLines(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Ljava/util/List;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 49
    invoke-virtual {v1, v4}, Lcom/android/tools/r8/retrace/RetraceCommand$Builder;->setStackTrace(Ljava/util/List;)Lcom/android/tools/r8/retrace/RetraceCommand$Builder;

    .line 50
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/y40;->b()Ljava/lang/String;

    goto/16 :goto_2

    :catch_1
    move-exception p0

    .line 51
    new-instance v0, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;)V

    .line 52
    iget-object p0, p1, Lcom/android/tools/r8/retrace/h;->a:Lcom/android/tools/r8/retrace/f;

    invoke-interface {p0, v0}, Lcom/android/tools/r8/DiagnosticsHandler;->error(Lcom/android/tools/r8/Diagnostic;)V

    .line 53
    new-instance p0, Lcom/android/tools/r8/internal/Ij0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ij0;-><init>()V

    throw p0

    .line 54
    :cond_c
    new-instance p0, Lcom/android/tools/r8/utils/StringDiagnostic;

    .line 55
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/y40;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Too many arguments specified for builder at \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    .line 56
    iget-object v0, p1, Lcom/android/tools/r8/retrace/h;->a:Lcom/android/tools/r8/retrace/f;

    invoke-interface {v0, p0}, Lcom/android/tools/r8/DiagnosticsHandler;->error(Lcom/android/tools/r8/Diagnostic;)V

    .line 57
    new-instance p0, Lcom/android/tools/r8/utils/StringDiagnostic;

    invoke-static {}, Lcom/android/tools/r8/retrace/Retrace;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    .line 58
    iget-object p1, p1, Lcom/android/tools/r8/retrace/h;->a:Lcom/android/tools/r8/retrace/f;

    invoke-interface {p1, p0}, Lcom/android/tools/r8/DiagnosticsHandler;->error(Lcom/android/tools/r8/Diagnostic;)V

    .line 59
    new-instance p0, Lcom/android/tools/r8/internal/Ij0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ij0;-><init>()V

    throw p0

    :cond_d
    if-eqz v3, :cond_15

    if-nez v4, :cond_10

    if-nez v5, :cond_e

    .line 60
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Waiting for stack-trace input..."

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 61
    :cond_e
    new-instance v0, Ljava/util/Scanner;

    new-instance v2, Ljava/io/InputStreamReader;

    sget-object v3, Ljava/lang/System;->in:Ljava/io/InputStream;

    sget-object v4, Lcom/android/tools/r8/internal/ec;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v2}, Ljava/util/Scanner;-><init>(Ljava/lang/Readable;)V

    .line 62
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 63
    :goto_5
    invoke-virtual {v0}, Ljava/util/Scanner;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 64
    invoke-virtual {v0}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 65
    :cond_f
    invoke-virtual {v1, v2}, Lcom/android/tools/r8/retrace/RetraceCommand$Builder;->setStackTrace(Ljava/util/List;)Lcom/android/tools/r8/retrace/RetraceCommand$Builder;

    :cond_10
    :goto_6
    if-nez v1, :cond_14

    .line 66
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "Retrace "

    if-eqz p1, :cond_11

    .line 67
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lcom/android/tools/r8/Version;->getVersionString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void

    .line 68
    :cond_11
    sget-boolean p1, Lcom/android/tools/r8/retrace/Retrace;->g:Z

    if-nez p1, :cond_13

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    goto :goto_7

    :cond_12
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 69
    :cond_13
    :goto_7
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {}, Lcom/android/tools/r8/Version;->getVersionString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/android/tools/r8/retrace/Retrace;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void

    .line 71
    :cond_14
    new-instance p0, Lcom/android/tools/r8/retrace/A;

    invoke-direct {p0, p1}, Lcom/android/tools/r8/retrace/A;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;)V

    invoke-virtual {v1, p0}, Lcom/android/tools/r8/retrace/RetraceCommand$Builder;->setRetracedStackTraceConsumer(Ljava/util/function/Consumer;)Lcom/android/tools/r8/retrace/RetraceCommand$Builder;

    .line 72
    invoke-virtual {v1}, Lcom/android/tools/r8/retrace/RetraceCommand$Builder;->build()Lcom/android/tools/r8/retrace/RetraceCommand;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/retrace/Retrace;->run(Lcom/android/tools/r8/retrace/RetraceCommand;)V

    return-void

    .line 73
    :cond_15
    new-instance p0, Lcom/android/tools/r8/utils/StringDiagnostic;

    const-string v0, "Mapping file not specified"

    invoke-direct {p0, v0}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    .line 74
    iget-object p1, p1, Lcom/android/tools/r8/retrace/h;->a:Lcom/android/tools/r8/retrace/f;

    invoke-interface {p1, p0}, Lcom/android/tools/r8/DiagnosticsHandler;->error(Lcom/android/tools/r8/Diagnostic;)V

    .line 75
    new-instance p0, Lcom/android/tools/r8/internal/Ij0;

    invoke-direct {p0}, Lcom/android/tools/r8/internal/Ij0;-><init>()V

    throw p0
.end method

.method public static builder()Lcom/android/tools/r8/retrace/Retrace$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "ST:",
            "Lcom/android/tools/r8/retrace/StackTraceElementProxy<",
            "TT;TST;>;>()",
            "Lcom/android/tools/r8/retrace/Retrace$Builder<",
            "TT;TST;>;"
        }
    .end annotation

    new-instance v0, Lcom/android/tools/r8/retrace/Retrace$Builder;

    invoke-direct {v0}, Lcom/android/tools/r8/retrace/Retrace$Builder;-><init>()V

    return-object v0
.end method

.method public static synthetic g(Lcom/android/tools/r8/DiagnosticsHandler;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/tools/r8/retrace/Retrace;->a(Lcom/android/tools/r8/DiagnosticsHandler;Ljava/util/List;)V

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

    const-string v1, "Regular expression for parsing stack-trace-file as lines"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "<regexp>"

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v3, "--regex"

    invoke-static {v3, v2, v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    const-string v1, "Get verbose retraced output"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v3, "--verbose"

    invoke-static {v3, v2, v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    const-string v1, "Write information messages to stdout"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v3, "--info"

    invoke-static {v3, v2, v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    const-string v1, "Silence ordinary messages printed to stdout"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v3, "--quiet"

    invoke-static {v3, v2, v1}, Lcom/android/tools/r8/Y;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lcom/android/tools/r8/Y;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/eC;->b(Ljava/lang/Object;)Lcom/android/tools/r8/internal/eC;

    move-result-object v0

    const-string v1, "Verify the mapping file hash"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const-string v3, "--verify-mapping-file-hash"

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

.method public static synthetic h(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/naming/mappinginformation/b;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/tools/r8/retrace/Retrace;->a(Lcom/android/tools/r8/DiagnosticsHandler;Lcom/android/tools/r8/naming/mappinginformation/b;)V

    return-void
.end method

.method public static synthetic i([Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/tools/r8/retrace/Retrace;->a([Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic j(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Boolean;)Lcom/android/tools/r8/retrace/RetraceFailedException;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/retrace/Retrace;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Boolean;)Lcom/android/tools/r8/retrace/RetraceFailedException;

    move-result-object p0

    return-object p0
.end method

.method public static varargs main([Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/retrace/C;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/retrace/C;-><init>([Ljava/lang/String;)V

    :try_start_0
    invoke-interface {v0}, Lcom/android/tools/r8/retrace/g;->run()V
    :try_end_0
    .catch Lcom/android/tools/r8/retrace/RetraceFailedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/tools/r8/internal/Ij0; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Retrace failed with an internal error."

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Retrace failed"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static run(Lcom/android/tools/r8/retrace/RetraceCommand;)V
    .locals 12

    .line 1
    :try_start_0
    const-string v0, "R8 retrace"

    invoke-virtual {p0}, Lcom/android/tools/r8/retrace/RetraceCommand;->printMemory()Z

    move-result v1

    .line 2
    new-instance v2, Lcom/android/tools/r8/internal/ns0;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/internal/ns0;-><init>(Ljava/lang/String;Z)V

    .line 3
    invoke-virtual {p0}, Lcom/android/tools/r8/retrace/RetraceCommand;->getOptions()Lcom/android/tools/r8/retrace/RetraceOptions;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/android/tools/r8/retrace/RetraceOptions;->getMappingSupplier()Lcom/android/tools/r8/retrace/MappingSupplier;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Lcom/android/tools/r8/retrace/RetraceCommand;->getOptions()Lcom/android/tools/r8/retrace/RetraceOptions;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/retrace/RetraceOptions;->isVerifyMappingFileHash()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/android/tools/r8/retrace/RetraceOptions;->getDiagnosticsHandler()Lcom/android/tools/r8/DiagnosticsHandler;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/android/tools/r8/retrace/MappingSupplier;->verifyMappingFileHash(Lcom/android/tools/r8/DiagnosticsHandler;)V

    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_2

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/android/tools/r8/retrace/RetraceOptions;->getDiagnosticsHandler()Lcom/android/tools/r8/DiagnosticsHandler;

    move-result-object v3

    .line 8
    new-instance v4, Lcom/android/tools/r8/internal/jo0;

    .line 9
    invoke-virtual {v0}, Lcom/android/tools/r8/retrace/RetraceOptions;->getRegularExpression()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/tools/r8/internal/jo0;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Lcom/android/tools/r8/retrace/RetraceCommand;->getStacktraceSupplier()Lcom/android/tools/r8/retrace/StackTraceSupplier;

    move-result-object v5

    .line 11
    invoke-static {}, Lcom/android/tools/r8/retrace/RetraceStackTraceContext;->empty()Lcom/android/tools/r8/retrace/RetraceStackTraceContext;

    move-result-object v6

    const/4 v7, 0x0

    .line 12
    :goto_0
    invoke-interface {v5}, Lcom/android/tools/r8/retrace/StackTraceSupplier;->get()Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 13
    const-string v9, "Parsing"

    invoke-virtual {v2, v9}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 14
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_1

    .line 16
    invoke-virtual {v4, v11}, Lcom/android/tools/r8/internal/jo0;->parse(Ljava/lang/String;)Lcom/android/tools/r8/internal/Vn0;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 17
    :cond_1
    invoke-static {v7}, Lcom/android/tools/r8/retrace/RetraceInvalidStackTraceLineDiagnostics;->createNull(I)Lcom/android/tools/r8/retrace/RetraceInvalidStackTraceLineDiagnostics;

    move-result-object v0

    .line 18
    invoke-interface {v3, v0}, Lcom/android/tools/r8/DiagnosticsHandler;->error(Lcom/android/tools/r8/Diagnostic;)V

    .line 19
    new-instance v0, Lcom/android/tools/r8/internal/Ij0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Ij0;-><init>()V

    throw v0

    .line 20
    :cond_2
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 21
    const-string v10, "Read proguard map"

    invoke-virtual {v2, v10}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 22
    new-instance v10, Lcom/android/tools/r8/retrace/StringRetrace;

    .line 23
    invoke-virtual {v0}, Lcom/android/tools/r8/retrace/RetraceOptions;->isVerbose()Z

    move-result v11

    invoke-direct {v10, v4, v1, v3, v11}, Lcom/android/tools/r8/retrace/StringRetrace;-><init>(Lcom/android/tools/r8/retrace/StackTraceLineParser;Lcom/android/tools/r8/retrace/MappingSupplier;Lcom/android/tools/r8/DiagnosticsHandler;Z)V

    .line 24
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 25
    const-string v11, "Retracing"

    invoke-virtual {v2, v11}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 26
    invoke-virtual {v10, v9, v6}, Lcom/android/tools/r8/retrace/StringRetrace;->retraceParsed(Ljava/util/List;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)Lcom/android/tools/r8/retrace/RetraceStackFrameResultWithContext;

    move-result-object v6

    .line 27
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    .line 28
    const-string v9, "Report result"

    invoke-virtual {v2, v9}, Lcom/android/tools/r8/internal/ns0;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/ns0;

    .line 29
    invoke-interface {v6}, Lcom/android/tools/r8/retrace/RetraceResultWithContext;->getContext()Lcom/android/tools/r8/retrace/RetraceStackTraceContext;

    move-result-object v9

    .line 30
    invoke-interface {v6}, Lcom/android/tools/r8/retrace/RetraceStackFrameResultWithContext;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 31
    :cond_3
    invoke-virtual {p0}, Lcom/android/tools/r8/retrace/RetraceCommand;->getRetracedStackTraceConsumer()Ljava/util/function/Consumer;

    move-result-object v8

    invoke-interface {v6}, Lcom/android/tools/r8/retrace/RetraceStackFrameResult;->getResult()Ljava/util/List;

    move-result-object v6

    invoke-interface {v8, v6}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 32
    :cond_4
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ns0;->d()Lcom/android/tools/r8/internal/ns0;

    move-object v6, v9

    goto :goto_0

    .line 33
    :cond_5
    invoke-virtual {p0}, Lcom/android/tools/r8/retrace/RetraceCommand;->printTimes()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 34
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/ns0;->e()V

    .line 35
    :cond_6
    invoke-interface {v1, v3}, Lcom/android/tools/r8/retrace/MappingSupplier;->getMapVersions(Lcom/android/tools/r8/DiagnosticsHandler;)Ljava/util/Set;

    move-result-object v0

    new-instance v2, Lcom/android/tools/r8/retrace/B;

    invoke-direct {v2, v3}, Lcom/android/tools/r8/retrace/B;-><init>(Lcom/android/tools/r8/DiagnosticsHandler;)V

    .line 36
    invoke-interface {v0, v2}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 37
    invoke-interface {v1, v3}, Lcom/android/tools/r8/H;->finished(Lcom/android/tools/r8/DiagnosticsHandler;)V
    :try_end_0
    .catch Lcom/android/tools/r8/retrace/InvalidMappingFileException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 38
    :goto_2
    invoke-virtual {p0}, Lcom/android/tools/r8/retrace/RetraceCommand;->getOptions()Lcom/android/tools/r8/retrace/RetraceOptions;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/tools/r8/retrace/RetraceOptions;->getDiagnosticsHandler()Lcom/android/tools/r8/DiagnosticsHandler;

    move-result-object p0

    new-instance v1, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {p0, v1}, Lcom/android/tools/r8/DiagnosticsHandler;->error(Lcom/android/tools/r8/Diagnostic;)V

    .line 39
    throw v0
.end method

.method public static run([Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/retrace/RetraceFailedException;
        }
    .end annotation

    .line 40
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 41
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_4

    .line 42
    aget-object v4, p0, v2

    if-eqz v4, :cond_2

    .line 43
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    goto :goto_2

    .line 44
    :cond_0
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2d

    const/4 v7, 0x1

    if-ne v5, v6, :cond_1

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v5, v6, :cond_1

    .line 45
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    goto :goto_1

    .line 46
    :cond_1
    aput-object v4, v0, v2

    .line 47
    :goto_1
    aget-object v4, v0, v2

    const-string v5, "--info"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v3, v7

    goto :goto_3

    .line 48
    :cond_2
    :goto_2
    aput-object v4, v0, v2

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 49
    :cond_4
    new-instance p0, Lcom/android/tools/r8/retrace/h;

    new-instance v1, Lcom/android/tools/r8/retrace/f;

    invoke-direct {v1}, Lcom/android/tools/r8/retrace/f;-><init>()V

    invoke-direct {p0, v1, v3}, Lcom/android/tools/r8/retrace/h;-><init>(Lcom/android/tools/r8/retrace/f;Z)V

    .line 50
    :try_start_0
    invoke-static {v0, p0}, Lcom/android/tools/r8/retrace/Retrace;->a([Ljava/lang/String;Lcom/android/tools/r8/retrace/h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 51
    new-instance v1, Lcom/android/tools/r8/retrace/z;

    invoke-direct {v1}, Lcom/android/tools/r8/retrace/z;-><init>()V

    const-class v2, Lcom/android/tools/r8/internal/Ij0;

    invoke-static {p0, v0, v1, v2}, Lcom/android/tools/r8/internal/lv;->a(Lcom/android/tools/r8/DiagnosticsHandler;Ljava/lang/Throwable;Lcom/android/tools/r8/internal/gt0;Ljava/lang/Class;)Ljava/lang/Exception;

    move-result-object p0

    check-cast p0, Lcom/android/tools/r8/retrace/RetraceFailedException;

    throw p0
.end method


# virtual methods
.method public retraceFrame(Ljava/lang/Object;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)Lcom/android/tools/r8/retrace/RetraceStackFrameAmbiguousResultWithContext;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/tools/r8/retrace/RetraceStackTraceContext;",
            ")",
            "Lcom/android/tools/r8/retrace/RetraceStackFrameAmbiguousResultWithContext<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Kj0;->parse(Ljava/lang/Object;)Lcom/android/tools/r8/retrace/StackTraceElementProxy;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Kj0;->registerUses(Lcom/android/tools/r8/retrace/StackTraceElementProxy;)V

    iget-object v0, p0, Lcom/android/tools/r8/retrace/Retrace;->d:Lcom/android/tools/r8/retrace/MappingSupplier;

    iget-object v1, p0, Lcom/android/tools/r8/retrace/Retrace;->e:Lcom/android/tools/r8/DiagnosticsHandler;

    invoke-interface {v0, v1}, Lcom/android/tools/r8/retrace/MappingSupplier;->createRetracer(Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/retrace/Retracer;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/tools/r8/internal/Kj0;->retraceFrameWithRetracer(Lcom/android/tools/r8/retrace/Retracer;Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)Lcom/android/tools/r8/retrace/RetraceStackFrameAmbiguousResultWithContext;

    move-result-object p1

    return-object p1
.end method

.method public retraceLine(Ljava/lang/Object;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)Lcom/android/tools/r8/retrace/RetraceStackFrameResultWithContext;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/tools/r8/retrace/RetraceStackTraceContext;",
            ")",
            "Lcom/android/tools/r8/retrace/RetraceStackFrameResultWithContext<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Kj0;->parse(Ljava/lang/Object;)Lcom/android/tools/r8/retrace/StackTraceElementProxy;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Kj0;->registerUses(Lcom/android/tools/r8/retrace/StackTraceElementProxy;)V

    iget-object v0, p0, Lcom/android/tools/r8/retrace/Retrace;->d:Lcom/android/tools/r8/retrace/MappingSupplier;

    iget-object v1, p0, Lcom/android/tools/r8/retrace/Retrace;->e:Lcom/android/tools/r8/DiagnosticsHandler;

    invoke-interface {v0, v1}, Lcom/android/tools/r8/retrace/MappingSupplier;->createRetracer(Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/retrace/Retracer;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/tools/r8/internal/Kj0;->retraceLineWithRetracer(Lcom/android/tools/r8/retrace/Retracer;Lcom/android/tools/r8/retrace/StackTraceElementProxy;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)Lcom/android/tools/r8/retrace/RetraceStackFrameResultWithContext;

    move-result-object p1

    return-object p1
.end method

.method public retraceStackTrace(Ljava/util/List;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)Lcom/android/tools/r8/retrace/RetraceStackTraceResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/android/tools/r8/retrace/RetraceStackTraceContext;",
            ")",
            "Lcom/android/tools/r8/retrace/RetraceStackTraceResult<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Kj0;->parse(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/tools/r8/retrace/Retrace;->retraceStackTraceParsed(Ljava/util/List;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)Lcom/android/tools/r8/retrace/RetraceStackTraceResult;

    move-result-object p1

    return-object p1
.end method

.method public retraceStackTraceParsed(Ljava/util/List;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)Lcom/android/tools/r8/retrace/RetraceStackTraceResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TST;>;",
            "Lcom/android/tools/r8/retrace/RetraceStackTraceContext;",
            ")",
            "Lcom/android/tools/r8/retrace/RetraceStackTraceResult<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/Kj0;->registerUses(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/tools/r8/retrace/Retrace;->d:Lcom/android/tools/r8/retrace/MappingSupplier;

    iget-object v1, p0, Lcom/android/tools/r8/retrace/Retrace;->e:Lcom/android/tools/r8/DiagnosticsHandler;

    invoke-interface {v0, v1}, Lcom/android/tools/r8/retrace/MappingSupplier;->createRetracer(Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/retrace/Retracer;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/tools/r8/internal/Kj0;->retraceStackTraceParsedWithRetracer(Lcom/android/tools/r8/retrace/Retracer;Ljava/util/List;Lcom/android/tools/r8/retrace/RetraceStackTraceContext;)Lcom/android/tools/r8/retrace/RetraceStackTraceResult;

    move-result-object p1

    return-object p1
.end method
