.class public Lorg/eclipse/jdt/internal/compiler/Compiler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/eclipse/jdt/internal/compiler/impl/ITypeRequestor;
.implements Lorg/eclipse/jdt/internal/compiler/problem/ProblemSeverities;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jdt/internal/compiler/Compiler$APTProblem;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field public static DebugRequestor:Lorg/eclipse/jdt/internal/compiler/IDebugRequestor;


# instance fields
.field public annotationProcessorManager:Lorg/eclipse/jdt/internal/compiler/AbstractAnnotationProcessorManager;

.field public annotationProcessorStartIndex:I

.field private aptProblems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Lorg/eclipse/jdt/internal/compiler/Compiler$APTProblem;",
            ">;"
        }
    .end annotation
.end field

.field public lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

.field public options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

.field protected out:Ljava/io/PrintWriter;

.field public parseThreshold:I

.field public parser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

.field public problemReporter:Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

.field public progress:Lorg/eclipse/jdt/core/compiler/CompilationProgress;

.field public referenceBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

.field public remainingIterations:I

.field public requestor:Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;

.field public stats:Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;

.field public totalUnits:I

.field public unitsToProcess:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

.field public useSingleThread:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Ljava/util/Map;Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;",
            "Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;",
            "Lorg/eclipse/jdt/internal/compiler/IProblemFactory;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v3, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    invoke-direct {v3, p3}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;-><init>(Ljava/util/Map;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/Compiler;-><init>(Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;Ljava/io/PrintWriter;Lorg/eclipse/jdt/core/compiler/CompilationProgress;)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Ljava/util/Map;Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;Z)V
    .locals 8

    .line 2
    new-instance v3, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    invoke-direct {v3, p3, p6}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;-><init>(Ljava/util/Map;Z)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/Compiler;-><init>(Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;Ljava/io/PrintWriter;Lorg/eclipse/jdt/core/compiler/CompilationProgress;)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 3
    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/Compiler;-><init>(Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;Ljava/io/PrintWriter;Lorg/eclipse/jdt/core/compiler/CompilationProgress;)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;Ljava/io/PrintWriter;)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 4
    invoke-direct/range {v0 .. v7}, Lorg/eclipse/jdt/internal/compiler/Compiler;-><init>(Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;Ljava/io/PrintWriter;Lorg/eclipse/jdt/core/compiler/CompilationProgress;)V

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;Ljava/io/PrintWriter;Lorg/eclipse/jdt/core/compiler/CompilationProgress;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->remainingIterations:I

    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->parseThreshold:I

    const/4 v1, 0x0

    .line 8
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->annotationProcessorStartIndex:I

    .line 9
    iput-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->useSingleThread:Z

    .line 10
    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    .line 11
    iput-object p7, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->progress:Lorg/eclipse/jdt/core/compiler/CompilationProgress;

    .line 12
    sget-object p3, Lorg/eclipse/jdt/internal/compiler/Compiler;->DebugRequestor:Lorg/eclipse/jdt/internal/compiler/IDebugRequestor;

    if-nez p3, :cond_0

    .line 13
    iput-object p4, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->requestor:Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;

    goto :goto_0

    .line 14
    :cond_0
    new-instance p3, Lorg/eclipse/jdt/internal/compiler/Compiler$1;

    invoke-direct {p3, p0, p4}, Lorg/eclipse/jdt/internal/compiler/Compiler$1;-><init>(Lorg/eclipse/jdt/internal/compiler/Compiler;Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;)V

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->requestor:Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;

    .line 15
    :goto_0
    new-instance p3, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    iget-object p4, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    invoke-direct {p3, p2, p4, p5}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;-><init>(Lorg/eclipse/jdt/internal/compiler/IErrorHandlingPolicy;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/IProblemFactory;)V

    iput-object p3, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->problemReporter:Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    .line 16
    new-instance p2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-object p4, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->problemReporter:Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    invoke-direct {p2, p0, p3, p4, p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;-><init>(Lorg/eclipse/jdt/internal/compiler/impl/ITypeRequestor;Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Lorg/eclipse/jdt/internal/compiler/env/INameEnvironment;)V

    iput-object p2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    if-nez p6, :cond_1

    .line 17
    new-instance p6, Ljava/io/PrintWriter;

    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-direct {p6, p1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    :cond_1
    iput-object p6, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->out:Ljava/io/PrintWriter;

    .line 18
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;

    invoke-direct {p1}, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;-><init>()V

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->stats:Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;

    .line 19
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/Compiler;->initializeParser()V

    return-void
.end method

.method public static synthetic a(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;)I
    .locals 0

    invoke-static {p0, p1}, Lorg/eclipse/jdt/internal/compiler/Compiler;->lambda$0(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;)I

    move-result p0

    return p0
.end method

.method private compile([Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Z)V
    .locals 4

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->stats:Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;->startTime:J

    .line 3
    :try_start_0
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/util/Messages;->compilation_beginningToCompile:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/eclipse/jdt/internal/compiler/Compiler;->reportProgress(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-wide v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->complianceLevel:J

    const-wide/32 v2, 0x350000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 5
    invoke-direct {p0, p1}, Lorg/eclipse/jdt/internal/compiler/Compiler;->sortModuleDeclarationsFirst([Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_4

    .line 6
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->annotationProcessorManager:Lorg/eclipse/jdt/internal/compiler/AbstractAnnotationProcessorManager;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/Compiler;->beginToCompile([Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;)V

    goto :goto_2

    .line 8
    :cond_1
    invoke-virtual {p1}, [Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :try_start_1
    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/Compiler;->beginToCompile([Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;)V

    if-nez p2, :cond_2

    .line 10
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/Compiler;->processAnnotations()V

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_3

    .line 11
    :cond_2
    :goto_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->generateClassFiles:Z
    :try_end_1
    .catch Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeCollisionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_1 .. :try_end_1} :catch_0

    if-nez p1, :cond_3

    return-void

    .line 12
    :cond_3
    :goto_2
    :try_start_2
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/Compiler;->restoreAptProblems()V

    .line 13
    invoke-virtual {p0, v1, p2}, Lorg/eclipse/jdt/internal/compiler/Compiler;->processCompiledUnits(IZ)V

    goto :goto_5

    .line 14
    :goto_3
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/Compiler;->backupAptProblems()V

    .line 15
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/Compiler;->reset()V

    .line 16
    array-length p2, v0

    .line 17
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeCollisionException;->newAnnotationProcessorUnits:[Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    array-length v2, v2

    add-int v3, p2, v2

    .line 18
    new-array v3, v3, [Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    .line 19
    invoke-static {v0, v1, v3, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeCollisionException;->newAnnotationProcessorUnits:[Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    invoke-static {v0, v1, v3, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    iput p2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->annotationProcessorStartIndex:I

    .line 22
    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeCollisionException;->isLastRound:Z

    invoke-direct {p0, v3, p1}, Lorg/eclipse/jdt/internal/compiler/Compiler;->compile([Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Z)V
    :try_end_2
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :goto_4
    const/4 p2, 0x0

    .line 23
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jdt/internal/compiler/Compiler;->handleInternalException(Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    .line 24
    :goto_5
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean p1, p1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->verbose:Z

    if-eqz p1, :cond_5

    .line 25
    iget p1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->totalUnits:I

    const/4 p2, 0x1

    if-le p1, p2, :cond_4

    .line 26
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->out:Ljava/io/PrintWriter;

    .line 27
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/util/Messages;->compilation_units:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 29
    :cond_4
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->out:Ljava/io/PrintWriter;

    .line 30
    sget-object v0, Lorg/eclipse/jdt/internal/compiler/util/Messages;->compilation_unit:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/eclipse/jdt/internal/compiler/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 31
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_5
    :goto_6
    return-void
.end method

.method private static synthetic lambda$0(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;)I
    .locals 4

    invoke-interface {p0}, Lorg/eclipse/jdt/internal/compiler/env/IDependent;->getFileName()[C

    move-result-object p0

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IDependent;->getFileName()[C

    move-result-object p1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->MODULE_INFO_FILE_NAME:[C

    invoke-static {p0, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->endsWith([C[C)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    sget-object v1, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->MODULE_INFO_CLASS_NAME:[C

    invoke-static {p0, v1}, Lorg/eclipse/jdt/core/compiler/CharOperation;->endsWith([C[C)Z

    move-result p0

    if-nez p0, :cond_0

    move p0, v3

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    invoke-static {p1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->endsWith([C[C)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/lookup/TypeConstants;->MODULE_INFO_CLASS_NAME:[C

    invoke-static {p1, v0}, Lorg/eclipse/jdt/core/compiler/CharOperation;->endsWith([C[C)Z

    move-result p1

    if-nez p1, :cond_1

    move p1, v3

    goto :goto_1

    :cond_1
    move p1, v2

    :goto_1
    if-ne p0, p1, :cond_2

    return v3

    :cond_2
    if-eqz p0, :cond_3

    const/4 v2, -0x1

    :cond_3
    return v2
.end method

.method private sortModuleDeclarationsFirst([Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;)V
    .locals 1

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/a;

    invoke-direct {v0}, Lorg/eclipse/jdt/internal/compiler/a;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void
.end method


# virtual methods
.method public accept(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v0, v0, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->verbose:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->out:Ljava/io/PrintWriter;

    .line 3
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/util/Messages;->compilation_loadBinary:Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;->getName()[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/compiler/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;->environment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    .line 6
    invoke-virtual {v0, p1, p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->createBinaryTypeFrom(Lorg/eclipse/jdt/internal/compiler/env/IBinaryType;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)Lorg/eclipse/jdt/internal/compiler/lookup/BinaryTypeBinding;

    return-void
.end method

.method public accept(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V
    .locals 6

    .line 7
    new-instance v0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->totalUnits:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget v2, v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->maxProblemsPerUnit:I

    invoke-direct {v0, p1, v1, v1, v2}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;-><init>(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;III)V

    const/4 v1, 0x1

    .line 8
    iput-boolean v1, v0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->checkSecondaryTypes:Z

    .line 9
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v2, v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->verbose:Z

    if-eqz v2, :cond_0

    .line 10
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->totalUnits:I

    add-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 11
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->out:Ljava/io/PrintWriter;

    .line 12
    sget-object v3, Lorg/eclipse/jdt/internal/compiler/util/Messages;->compilation_request:Ljava/lang/String;

    .line 13
    new-instance v4, Ljava/lang/String;

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IDependent;->getFileName()[C

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    filled-new-array {v1, v1, v4}, [Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-static {v3, v1}, Lorg/eclipse/jdt/internal/compiler/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p2

    goto :goto_2

    .line 16
    :cond_0
    :goto_0
    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->totalUnits:I

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->parseThreshold:I

    if-ge v1, v2, :cond_1

    .line 17
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->parser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v1, p1, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->parse(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v1

    goto :goto_1

    .line 18
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->parser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {v1, p1, v0}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->dietParse(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v1

    .line 19
    :goto_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v2, v1, p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->buildTypeBindings(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    .line 20
    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/Compiler;->addCompilationUnit(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    .line 21
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {p2, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->completeTypeBindings(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilationUnit; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 22
    :goto_2
    iget-object v1, v0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    if-ne v1, p1, :cond_2

    .line 23
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->requestor:Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->tagAsAccepted()Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;->acceptResult(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    :goto_3
    return-void

    .line 24
    :cond_2
    throw p2
.end method

.method public accept([Lorg/eclipse/jdt/internal/compiler/env/ISourceType;Lorg/eclipse/jdt/internal/compiler/lookup/PackageBinding;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V
    .locals 2

    .line 25
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->problemReporter:Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    .line 26
    sget-object p3, Lorg/eclipse/jdt/internal/compiler/util/Messages;->abort_againstSourceModel:Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-interface {v1}, Lorg/eclipse/jdt/internal/compiler/env/ISourceType;->getName()[C

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    aget-object p1, p1, v0

    invoke-interface {p1}, Lorg/eclipse/jdt/internal/compiler/env/IDependent;->getFileName()[C

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lorg/eclipse/jdt/internal/compiler/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->abortDueToInternalError(Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized addCompilationUnit(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->unitsToProcess:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    array-length v0, p1

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->totalUnits:I

    if-ne v1, v0, :cond_1

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->unitsToProcess:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->unitsToProcess:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->totalUnits:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->totalUnits:I

    aput-object p2, p1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public backupAptProblems()V
    .locals 12

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->unitsToProcess:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->totalUnits:I

    if-lt v1, v2, :cond_1

    return-void

    :cond_1
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->unitsToProcess:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    aget-object v2, v2, v1

    iget-object v3, v2, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->hasErrors()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getErrors()[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    move-result-object v4

    array-length v5, v4

    move v6, v0

    :goto_1
    if-lt v6, v5, :cond_2

    goto :goto_3

    :cond_2
    aget-object v7, v4, v6

    invoke-virtual {v7}, Lorg/eclipse/jdt/core/compiler/CategorizedProblem;->getCategoryID()I

    move-result v8

    if-nez v8, :cond_5

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->aptProblems:Ljava/util/Map;

    if-nez v8, :cond_3

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->aptProblems:Ljava/util/Map;

    :cond_3
    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->aptProblems:Ljava/util/Map;

    new-instance v9, Ljava/lang/String;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->getFileName()[C

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lorg/eclipse/jdt/internal/compiler/Compiler$APTProblem;

    if-nez v8, :cond_4

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->aptProblems:Ljava/util/Map;

    new-instance v9, Ljava/lang/String;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->getFileName()[C

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([C)V

    new-instance v10, Lorg/eclipse/jdt/internal/compiler/Compiler$APTProblem;

    invoke-virtual {v3, v7}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getContext(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    move-result-object v11

    invoke-direct {v10, p0, v7, v11}, Lorg/eclipse/jdt/internal/compiler/Compiler$APTProblem;-><init>(Lorg/eclipse/jdt/internal/compiler/Compiler;Lorg/eclipse/jdt/core/compiler/CategorizedProblem;Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;)V

    filled-new-array {v10}, [Lorg/eclipse/jdt/internal/compiler/Compiler$APTProblem;

    move-result-object v7

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    array-length v9, v8

    add-int/lit8 v9, v9, 0x1

    new-array v9, v9, [Lorg/eclipse/jdt/internal/compiler/Compiler$APTProblem;

    array-length v10, v8

    invoke-static {v8, v0, v9, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v8, v8

    new-instance v10, Lorg/eclipse/jdt/internal/compiler/Compiler$APTProblem;

    invoke-virtual {v3, v7}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getContext(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;)Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    move-result-object v11

    invoke-direct {v10, p0, v7, v11}, Lorg/eclipse/jdt/internal/compiler/Compiler$APTProblem;-><init>(Lorg/eclipse/jdt/internal/compiler/Compiler;Lorg/eclipse/jdt/core/compiler/CategorizedProblem;Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;)V

    aput-object v10, v9, v8

    iget-object v7, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->aptProblems:Ljava/util/Map;

    new-instance v8, Ljava/lang/String;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->getFileName()[C

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method public beginToCompile([Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->totalUnits:I

    new-array v1, v0, [Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->unitsToProcess:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/Compiler;->internalBeginToCompile([Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;I)V

    return-void
.end method

.method public compile([Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/eclipse/jdt/internal/compiler/Compiler;->compile([Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Z)V

    return-void
.end method

.method public declared-synchronized getUnitToProcess(I)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->totalUnits:I

    const/4 v1, 0x0

    if-ge p1, v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->unitsToProcess:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    aget-object v2, v0, p1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->annotationProcessorManager:Lorg/eclipse/jdt/internal/compiler/AbstractAnnotationProcessorManager;

    if-eqz v3, :cond_0

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->annotationProcessorStartIndex:I

    if-ge p1, v3, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    aput-object v1, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-object v2

    :cond_2
    monitor-exit p0

    return-object v1

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public handleInternalException(Ljava/lang/Throwable;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V
    .locals 12

    if-nez p3, :cond_0

    if-eqz p2, :cond_0

    .line 1
    iget-object p3, p2, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    :cond_0
    if-nez p3, :cond_1

    .line 2
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    if-eqz v0, :cond_1

    .line 3
    iget-object p3, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    :cond_1
    const/4 v0, 0x1

    if-nez p3, :cond_3

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->unitsToProcess:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    if-eqz v1, :cond_2

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->totalUnits:I

    if-lez v2, :cond_2

    sub-int/2addr v2, v0

    .line 6
    aget-object p3, v1, v2

    iget-object p3, p3, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 7
    :cond_2
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_2
    if-eqz p3, :cond_4

    .line 8
    sget-object v1, Lorg/eclipse/jdt/internal/compiler/util/Messages;->compilation_internalError:Ljava/lang/String;

    invoke-static {p1}, Lorg/eclipse/jdt/internal/compiler/util/Util;->getExceptionSummary(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jdt/internal/compiler/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v6

    .line 9
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->problemReporter:Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    .line 10
    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getFileName()[C

    move-result-object v3

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, v6

    .line 11
    invoke-virtual/range {v2 .. v11}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemHandler;->createProblem([CI[Ljava/lang/String;[Ljava/lang/String;IIIII)Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    move-result-object v1

    .line 12
    invoke-virtual {p3, v1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->record(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;Z)V

    .line 13
    iget-boolean p2, p3, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->hasBeenAccepted:Z

    if-nez p2, :cond_4

    .line 14
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->requestor:Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->tagAsAccepted()Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;->acceptResult(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    goto :goto_3

    .line 15
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public handleInternalException(Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V
    .locals 5

    .line 16
    iget-boolean v0, p1, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;->isSilent:Z

    if-eqz v0, :cond_1

    .line 17
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;->silentException:Ljava/lang/RuntimeException;

    if-nez p1, :cond_0

    return-void

    .line 18
    :cond_0
    throw p1

    .line 19
    :cond_1
    iget-object v0, p1, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    .line 20
    iget-object v0, p2, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    :cond_2
    if-nez v0, :cond_3

    .line 21
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iget-object v1, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    if-eqz v1, :cond_3

    .line 22
    iget-object v0, v1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    :cond_3
    const/4 v1, 0x1

    if-nez v0, :cond_5

    .line 23
    monitor-enter p0

    .line 24
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->unitsToProcess:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    if-eqz v2, :cond_4

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->totalUnits:I

    if-lez v3, :cond_4

    sub-int/2addr v3, v1

    .line 25
    aget-object v0, v2, v3

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 26
    :cond_4
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_5
    :goto_2
    if-eqz v0, :cond_b

    .line 27
    iget-boolean v2, v0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->hasBeenAccepted:Z

    if-nez v2, :cond_b

    .line 28
    iget-object v2, p1, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;->problem:Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    if-eqz v2, :cond_9

    .line 29
    iget-object v3, v0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problems:[Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    const/4 p1, 0x0

    .line 30
    :goto_3
    iget v4, v0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->problemCount:I

    if-lt p1, v4, :cond_7

    .line 31
    instance-of p1, v2, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;

    if-eqz p1, :cond_6

    .line 32
    move-object p1, v2

    check-cast p1, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->getFileName()[C

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/eclipse/jdt/internal/compiler/problem/DefaultProblem;->setOriginatingFileName([C)V

    .line 33
    :cond_6
    invoke-virtual {v0, v2, p2, v1}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->record(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;Z)V

    goto :goto_4

    .line 34
    :cond_7
    aget-object v4, v3, p1

    if-ne v4, v2, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 35
    :cond_9
    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_a

    const/4 p2, 0x0

    .line 36
    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/jdt/internal/compiler/Compiler;->handleInternalException(Ljava/lang/Throwable;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    return-void

    .line 37
    :cond_a
    :goto_4
    iget-boolean p1, v0, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->hasBeenAccepted:Z

    if-nez p1, :cond_c

    .line 38
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->requestor:Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->tagAsAccepted()Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;->acceptResult(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    goto :goto_5

    .line 39
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c
    :goto_5
    return-void
.end method

.method public initializeParser()V
    .locals 3

    new-instance v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->problemReporter:Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v2, v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->parseLiteralExpressionsAsConstants:Z

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;-><init>(Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;Z)V

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->parser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    return-void
.end method

.method public internalBeginToCompile([Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;I)V
    .locals 12

    iget-boolean v0, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->useSingleThread:Z

    if-nez v0, :cond_0

    const/16 v0, 0xa

    if-lt p2, v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->parser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    new-instance v1, Lorg/eclipse/jdt/internal/compiler/ReadManager;

    invoke-direct {v1, p1, p2}, Lorg/eclipse/jdt/internal/compiler/ReadManager;-><init>([Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;I)V

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->readManager:Lorg/eclipse/jdt/internal/compiler/ReadManager;

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-lt v0, p2, :cond_2

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->parser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->readManager:Lorg/eclipse/jdt/internal/compiler/ReadManager;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ReadManager;->shutdown()V

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->parser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iput-object v1, p1, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->readManager:Lorg/eclipse/jdt/internal/compiler/ReadManager;

    :cond_1
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->completeTypeBindings()V

    return-void

    :cond_2
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v2, v2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->verbose:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->out:Ljava/io/PrintWriter;

    sget-object v3, Lorg/eclipse/jdt/internal/compiler/util/Messages;->compilation_request:Ljava/lang/String;

    add-int/lit8 v4, v0, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/String;

    aget-object v7, p1, v0

    invoke-interface {v7}, Lorg/eclipse/jdt/internal/compiler/env/IDependent;->getFileName()[C

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([C)V

    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/eclipse/jdt/internal/compiler/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_4

    :catch_0
    move-exception p2

    move-object v2, v1

    goto :goto_3

    :cond_3
    :goto_1
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    aget-object v3, p1, v0

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget v4, v4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->maxProblemsPerUnit:I

    invoke-direct {v2, v3, v0, p2, v4}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;-><init>(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;III)V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget v5, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->totalUnits:I

    iget v6, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->parseThreshold:I

    if-ge v5, v6, :cond_4

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->parser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    aget-object v6, p1, v0

    invoke-virtual {v5, v6, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->parse(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v5

    goto :goto_2

    :catch_1
    move-exception p2

    goto :goto_3

    :cond_4
    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->parser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    aget-object v6, p1, v0

    invoke-virtual {v5, v6, v2}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->dietParse(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object v5

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->stats:Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;

    iget-wide v9, v8, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;->parseTime:J

    sub-long v3, v6, v3

    add-long/2addr v9, v3

    iput-wide v9, v8, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;->parseTime:J

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v3, v5, v1}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->buildTypeBindings(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->stats:Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;

    iget-wide v8, v3, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;->resolveTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v6

    add-long/2addr v8, v10

    iput-wide v8, v3, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;->resolveTime:J

    aget-object v3, p1, v0

    invoke-virtual {p0, v3, v5}, Lorg/eclipse/jdt/internal/compiler/Compiler;->addCompilationUnit(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    iget-object v3, v5, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->currentPackage:Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;

    if-eqz v3, :cond_5

    iget-object v3, v3, Lorg/eclipse/jdt/internal/compiler/ast/ImportReference;->tokens:[[C

    invoke-virtual {v2, v3}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->recordPackageName([[C)V
    :try_end_1
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :goto_3
    :try_start_2
    iget-object v3, p2, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    if-nez v3, :cond_6

    iput-object v2, p2, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    :cond_6
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_4
    aput-object v1, p1, v0

    throw p2
.end method

.method public process(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;I)V
    .locals 6

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput-object p1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->parser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->getMethodBodies(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->stats:Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;

    iget-wide v4, p2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;->parseTime:J

    sub-long v0, v2, v0

    add-long/2addr v4, v0

    iput-wide v4, p2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;->parseTime:J

    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->faultInTypes()V

    :cond_0
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->methodVerifier()Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->verifyMethods(Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;)V

    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->resolve()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->stats:Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;

    iget-wide v4, p2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;->resolveTime:J

    sub-long v2, v0, v2

    add-long/2addr v4, v2

    iput-wide v4, p2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;->resolveTime:J

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean p2, p2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->ignoreMethodBodies:Z

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->analyseCode()V

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->stats:Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;

    iget-wide v4, p2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;->analyzeTime:J

    sub-long v0, v2, v0

    add-long/2addr v4, v0

    iput-wide v4, p2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;->analyzeTime:J

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean p2, p2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->ignoreMethodBodies:Z

    if-nez p2, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->generateCode()V

    :cond_3
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean p2, p2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->produceReferenceInfo:Z

    if-eqz p2, :cond_4

    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->storeDependencyInfo()V

    :cond_4
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->finalizeProblems()V

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->stats:Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;

    iget-wide v0, p2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;->generateTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    add-long/2addr v0, v4

    iput-wide v0, p2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;->generateTime:J

    iget-object p1, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget p2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->totalUnits:I

    iput p2, p1, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->totalUnitsKnown:I

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    const/4 p2, 0x0

    iput-object p2, p1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    return-void
.end method

.method public processAnnotations()V
    .locals 11

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->annotationProcessorStartIndex:I

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->totalUnits:I

    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->referenceBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    if-nez v1, :cond_0

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->referenceBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    :goto_0
    move v10, v1

    move v1, v0

    move v0, v10

    sub-int v4, v0, v1

    new-array v5, v4, [Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-lt v1, v0, :cond_6

    if-eq v7, v4, :cond_1

    new-array v1, v7, [Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-static {v5, v6, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v5, v1

    :cond_1
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->annotationProcessorManager:Lorg/eclipse/jdt/internal/compiler/AbstractAnnotationProcessorManager;

    invoke-virtual {v1, v5, v2, v6}, Lorg/eclipse/jdt/internal/compiler/AbstractAnnotationProcessorManager;->processAnnotations([Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->totalUnits:I

    if-ge v0, v1, :cond_2

    sub-int/2addr v1, v0

    new-array v4, v1, [Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    iget-object v5, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->unitsToProcess:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    invoke-static {v5, v0, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->annotationProcessorManager:Lorg/eclipse/jdt/internal/compiler/AbstractAnnotationProcessorManager;

    invoke-virtual {v1, v4, v2, v6}, Lorg/eclipse/jdt/internal/compiler/AbstractAnnotationProcessorManager;->processAnnotations([Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)V

    :cond_2
    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->annotationProcessorStartIndex:I

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->annotationProcessorManager:Lorg/eclipse/jdt/internal/compiler/AbstractAnnotationProcessorManager;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/AbstractAnnotationProcessorManager;->getNewUnits()[Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    move-result-object v1

    array-length v2, v1

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->annotationProcessorManager:Lorg/eclipse/jdt/internal/compiler/AbstractAnnotationProcessorManager;

    invoke-virtual {v4}, Lorg/eclipse/jdt/internal/compiler/AbstractAnnotationProcessorManager;->getNewClassFiles()[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    move-result-object v4

    array-length v5, v4

    const/4 v7, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {v1}, [Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    :try_start_0
    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput-boolean v7, v9, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->isProcessingAnnotations:Z

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jdt/internal/compiler/Compiler;->internalBeginToCompile([Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;I)V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeCollisionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput-boolean v6, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->isProcessingAnnotations:Z

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->annotationProcessorManager:Lorg/eclipse/jdt/internal/compiler/AbstractAnnotationProcessorManager;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/AbstractAnnotationProcessorManager;->reset()V

    iget v1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->totalUnits:I

    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->annotationProcessorStartIndex:I

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    iput-object v8, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeCollisionException;->newAnnotationProcessorUnits:[Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput-boolean v6, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->isProcessingAnnotations:Z

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->annotationProcessorManager:Lorg/eclipse/jdt/internal/compiler/AbstractAnnotationProcessorManager;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/AbstractAnnotationProcessorManager;->reset()V

    throw v0

    :cond_3
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->annotationProcessorManager:Lorg/eclipse/jdt/internal/compiler/AbstractAnnotationProcessorManager;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/AbstractAnnotationProcessorManager;->reset()V

    move v1, v0

    :goto_3
    if-nez v2, :cond_5

    if-nez v5, :cond_5

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->annotationProcessorManager:Lorg/eclipse/jdt/internal/compiler/AbstractAnnotationProcessorManager;

    invoke-virtual {v0, v3, v3, v7}, Lorg/eclipse/jdt/internal/compiler/AbstractAnnotationProcessorManager;->processAnnotations([Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;Z)V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->annotationProcessorManager:Lorg/eclipse/jdt/internal/compiler/AbstractAnnotationProcessorManager;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/AbstractAnnotationProcessorManager;->getNewUnits()[Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    move-result-object v0

    array-length v1, v0

    if-eqz v1, :cond_4

    invoke-virtual {v0}, [Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    :try_start_2
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput-boolean v7, v3, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->isProcessingAnnotations:Z

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jdt/internal/compiler/Compiler;->internalBeginToCompile([Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;I)V
    :try_end_2
    .catch Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeCollisionException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput-boolean v6, v0, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->isProcessingAnnotations:Z

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->annotationProcessorManager:Lorg/eclipse/jdt/internal/compiler/AbstractAnnotationProcessorManager;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/AbstractAnnotationProcessorManager;->reset()V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    :try_start_3
    iput-boolean v7, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeCollisionException;->isLastRound:Z

    iput-object v2, v0, Lorg/eclipse/jdt/internal/compiler/lookup/SourceTypeCollisionException;->newAnnotationProcessorUnits:[Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_4
    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput-boolean v6, v1, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->isProcessingAnnotations:Z

    iget-object v1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->annotationProcessorManager:Lorg/eclipse/jdt/internal/compiler/AbstractAnnotationProcessorManager;

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/AbstractAnnotationProcessorManager;->reset()V

    throw v0

    :cond_4
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->annotationProcessorManager:Lorg/eclipse/jdt/internal/compiler/AbstractAnnotationProcessorManager;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/AbstractAnnotationProcessorManager;->reset()V

    :goto_5
    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->totalUnits:I

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->annotationProcessorStartIndex:I

    return-void

    :cond_5
    move-object v2, v4

    goto/16 :goto_0

    :cond_6
    iget-object v8, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->unitsToProcess:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    aget-object v8, v8, v1

    add-int/lit8 v9, v7, 0x1

    aput-object v8, v5, v7

    add-int/lit8 v1, v1, 0x1

    move v7, v9

    goto/16 :goto_1
.end method

.method public processCompiledUnits(IZ)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Error;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-boolean v2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->useSingleThread:Z
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x1

    if-eqz v2, :cond_9

    move-object v2, v1

    :goto_0
    :try_start_1
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->totalUnits:I

    if-lt p1, v4, :cond_0

    move-object p1, v2

    move-object v2, v1

    goto/16 :goto_5

    :cond_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->unitsToProcess:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    aget-object v2, v4, p1

    iget-object v4, v2, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    if-eqz v4, :cond_1

    iget-boolean v4, v4, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->hasBeenAccepted:Z

    if-eqz v4, :cond_1

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_d

    :catch_0
    move-exception p1

    move-object p2, v1

    goto/16 :goto_9

    :catch_1
    move-exception p1

    move-object p2, v1

    goto/16 :goto_a

    :catch_2
    move-exception p1

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    goto/16 :goto_b

    :cond_1
    sget-object v4, Lorg/eclipse/jdt/internal/compiler/util/Messages;->compilation_processing:Ljava/lang/String;

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->getFileName()[C

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([C)V

    invoke-static {v4, v5}, Lorg/eclipse/jdt/internal/compiler/util/Messages;->bind(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/eclipse/jdt/internal/compiler/Compiler;->reportProgress(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v4, v4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->verbose:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->out:Ljava/io/PrintWriter;

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/util/Messages;->compilation_process:Ljava/lang/String;

    add-int/lit8 v6, p1, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->totalUnits:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    iget-object v9, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->unitsToProcess:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    aget-object v9, v9, p1

    invoke-virtual {v9}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->getFileName()[C

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([C)V

    filled-new-array {v6, v7, v8}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/eclipse/jdt/internal/compiler/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :catchall_1
    move-exception p2

    goto :goto_3

    :cond_2
    :goto_1
    invoke-virtual {p0, v2, p1}, Lorg/eclipse/jdt/internal/compiler/Compiler;->process(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->annotationProcessorManager:Lorg/eclipse/jdt/internal/compiler/AbstractAnnotationProcessorManager;

    if-eqz v4, :cond_3

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/Compiler;->shouldCleanup(I)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->cleanUp()V

    :cond_4
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->annotationProcessorManager:Lorg/eclipse/jdt/internal/compiler/AbstractAnnotationProcessorManager;

    if-nez v4, :cond_5

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->unitsToProcess:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    aput-object v1, v4, p1

    :cond_5
    invoke-virtual {p0, v3, p1}, Lorg/eclipse/jdt/internal/compiler/Compiler;->reportWorked(II)V

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->stats:Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;

    iget-wide v5, v4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;->lineCount:J

    iget-object v7, v2, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget-object v7, v7, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->lineSeparatorPositions:[I

    array-length v7, v7

    int-to-long v7, v7

    add-long/2addr v5, v7

    iput-wide v5, v4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;->lineCount:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->requestor:Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;

    iget-object v7, v2, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-virtual {v7}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->tagAsAccepted()Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;->acceptResult(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->stats:Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;

    iget-wide v7, v6, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;->generateTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v4

    add-long/2addr v7, v9

    iput-wide v7, v6, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;->generateTime:J

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v4, v4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->verbose:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->out:Ljava/io/PrintWriter;

    sget-object v5, Lorg/eclipse/jdt/internal/compiler/util/Messages;->compilation_done:Ljava/lang/String;

    add-int/lit8 v6, p1, 0x1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->totalUnits:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->getFileName()[C

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([C)V

    filled-new-array {v6, v7, v8}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/eclipse/jdt/internal/compiler/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :goto_3
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->annotationProcessorManager:Lorg/eclipse/jdt/internal/compiler/AbstractAnnotationProcessorManager;

    if-eqz v3, :cond_7

    invoke-virtual {p0, p1}, Lorg/eclipse/jdt/internal/compiler/Compiler;->shouldCleanup(I)Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->cleanUp()V

    :cond_8
    throw p2
    :try_end_3
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_9
    :try_start_4
    new-instance v2, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;

    invoke-direct {v2, p0, p1}, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;-><init>(Lorg/eclipse/jdt/internal/compiler/Compiler;I)V
    :try_end_4
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_4 .. :try_end_4} :catch_a
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_8
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v4, v0

    move-object p1, v1

    :goto_4
    :try_start_5
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->removeNextUnit()Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p1
    :try_end_5
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-nez p1, :cond_d

    :goto_5
    if-nez p2, :cond_b

    :try_start_6
    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->annotationProcessorManager:Lorg/eclipse/jdt/internal/compiler/AbstractAnnotationProcessorManager;

    if-eqz v3, :cond_b

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->totalUnits:I

    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->annotationProcessorStartIndex:I

    if-le v3, v4, :cond_b

    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/Compiler;->processAnnotations()V

    move v5, v4

    :goto_6
    if-lt v5, v3, :cond_a

    invoke-virtual {p0, v4, p2}, Lorg/eclipse/jdt/internal/compiler/Compiler;->processCompiledUnits(IZ)V

    goto :goto_7

    :catchall_2
    move-exception p1

    move-object v1, v2

    goto/16 :goto_d

    :catch_3
    move-exception p2

    move-object v11, v2

    move-object v2, p1

    move-object p1, p2

    move-object p2, v11

    goto/16 :goto_9

    :catch_4
    move-exception p2

    move-object v11, v2

    move-object v2, p1

    move-object p1, p2

    move-object p2, v11

    goto/16 :goto_a

    :catch_5
    move-exception p2

    move-object v1, p1

    move-object p1, p2

    goto/16 :goto_b

    :cond_a
    iget-object v6, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->unitsToProcess:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->cleanUp()V
    :try_end_6
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Error; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_b
    :goto_7
    if-eqz v2, :cond_c

    :goto_8
    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->shutdown()V

    :cond_c
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/Compiler;->reset()V

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->annotationProcessorStartIndex:I

    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->stats:Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;->endTime:J

    goto/16 :goto_c

    :cond_d
    add-int/lit8 v5, v4, 0x1

    :try_start_7
    invoke-virtual {p0, v3, v4}, Lorg/eclipse/jdt/internal/compiler/Compiler;->reportWorked(II)V

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->stats:Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;

    iget-wide v6, v4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;->lineCount:J

    iget-object v8, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget-object v9, v8, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->lineSeparatorPositions:[I

    array-length v9, v9

    int-to-long v9, v9

    add-long/2addr v6, v9

    iput-wide v6, v4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;->lineCount:J

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->requestor:Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;

    invoke-virtual {v8}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->tagAsAccepted()Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;->acceptResult(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->options:Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;

    iget-boolean v4, v4, Lorg/eclipse/jdt/internal/compiler/impl/CompilerOptions;->verbose:Z

    if-eqz v4, :cond_e

    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->out:Ljava/io/PrintWriter;

    sget-object v6, Lorg/eclipse/jdt/internal/compiler/util/Messages;->compilation_done:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    iget v8, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->totalUnits:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/String;

    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->getFileName()[C

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/String;-><init>([C)V

    filled-new-array {v7, v8, v9}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/eclipse/jdt/internal/compiler/util/Messages;->bind(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_e
    move v4, v5

    goto/16 :goto_4

    :catch_6
    move-exception p2

    iget-object p1, v2, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->unitToProcess:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    throw p2

    :catch_7
    move-exception p2

    iget-object p1, v2, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->unitToProcess:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    throw p2
    :try_end_7
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/Error; {:try_start_7 .. :try_end_7} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catch_8
    move-exception p1

    move-object p2, v1

    move-object v2, p2

    goto :goto_9

    :catch_9
    move-exception p1

    move-object p2, v1

    move-object v2, p2

    goto :goto_a

    :catch_a
    move-exception p1

    move-object v2, v1

    goto :goto_b

    :goto_9
    :try_start_8
    invoke-virtual {p0, p1, v2, v1}, Lorg/eclipse/jdt/internal/compiler/Compiler;->handleInternalException(Ljava/lang/Throwable;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    throw p1

    :catchall_3
    move-exception p1

    move-object v1, p2

    goto :goto_d

    :goto_a
    invoke-virtual {p0, p1, v2, v1}, Lorg/eclipse/jdt/internal/compiler/Compiler;->handleInternalException(Ljava/lang/Throwable;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :goto_b
    :try_start_9
    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jdt/internal/compiler/Compiler;->handleInternalException(Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v2, :cond_c

    goto :goto_8

    :goto_c
    return-void

    :goto_d
    if-eqz v1, :cond_f

    invoke-virtual {v1}, Lorg/eclipse/jdt/internal/compiler/ProcessTaskManager;->shutdown()V

    :cond_f
    invoke-virtual {p0}, Lorg/eclipse/jdt/internal/compiler/Compiler;->reset()V

    iput v0, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->annotationProcessorStartIndex:I

    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->stats:Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p2, Lorg/eclipse/jdt/internal/compiler/impl/CompilerStats;->endTime:J

    throw p1
.end method

.method public reportProgress(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->progress:Lorg/eclipse/jdt/core/compiler/CompilationProgress;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/compiler/CompilationProgress;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->progress:Lorg/eclipse/jdt/core/compiler/CompilationProgress;

    invoke-virtual {v0, p1}, Lorg/eclipse/jdt/core/compiler/CompilationProgress;->setTaskName(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;-><init>(ZLjava/lang/RuntimeException;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public reportWorked(II)V
    .locals 4

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->progress:Lorg/eclipse/jdt/core/compiler/CompilationProgress;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/eclipse/jdt/core/compiler/CompilationProgress;->isCanceled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->progress:Lorg/eclipse/jdt/core/compiler/CompilationProgress;

    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->totalUnits:I

    iget v3, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->remainingIterations:I

    mul-int/2addr v2, v3

    sub-int/2addr v2, p2

    sub-int/2addr v2, v1

    invoke-virtual {v0, p1, v2}, Lorg/eclipse/jdt/core/compiler/CompilationProgress;->worked(II)V

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;

    const/4 p2, 0x0

    invoke-direct {p1, v1, p2}, Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;-><init>(ZLjava/lang/RuntimeException;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->reset()V

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->parser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    iget-object v0, v0, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->scanner:Lorg/eclipse/jdt/internal/compiler/parser/Scanner;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/eclipse/jdt/internal/compiler/parser/Scanner;->source:[C

    iput-object v1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->unitsToProcess:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    sget-object v0, Lorg/eclipse/jdt/internal/compiler/Compiler;->DebugRequestor:Lorg/eclipse/jdt/internal/compiler/IDebugRequestor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/eclipse/jdt/internal/compiler/IDebugRequestor;->reset()V

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->problemReporter:Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;

    invoke-virtual {v0}, Lorg/eclipse/jdt/internal/compiler/problem/ProblemReporter;->reset()V

    return-void
.end method

.method public resolve(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;ZZZ)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p1, :cond_2

    .line 1
    :try_start_0
    iput v1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->parseThreshold:I

    .line 2
    new-array v3, v0, [Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    aput-object p2, v3, v1

    invoke-virtual {p0, v3}, Lorg/eclipse/jdt/internal/compiler/Compiler;->beginToCompile([Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;)V

    move v3, v1

    .line 3
    :goto_0
    iget v4, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->totalUnits:I

    if-lt v3, v4, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v4, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->unitsToProcess:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    aget-object v4, v4, v3

    if-eqz v4, :cond_1

    .line 5
    iget-object v5, v4, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget-object v5, v5, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->compilationUnit:Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;

    if-ne v5, p2, :cond_1

    move-object p1, v4

    :goto_1
    if-nez p1, :cond_3

    .line 6
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->unitsToProcess:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    aget-object p1, p2, v1

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_3

    :catch_1
    move-exception p2

    goto :goto_4

    :catch_2
    move-exception p2

    goto :goto_5

    :cond_1
    add-int/2addr v3, v0

    goto :goto_0

    .line 7
    :cond_2
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {p2, p1, v2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->buildTypeBindings(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/env/AccessRestriction;)V

    .line 8
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->completeTypeBindings()V

    .line 9
    :cond_3
    :goto_2
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    iput-object p1, p2, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->unitBeingCompleted:Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    .line 10
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->parser:Lorg/eclipse/jdt/internal/compiler/parser/Parser;

    invoke-virtual {p2, p1}, Lorg/eclipse/jdt/internal/compiler/parser/Parser;->getMethodBodies(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    .line 11
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    if-eqz p2, :cond_7

    .line 12
    invoke-virtual {p2}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->faultInTypes()V

    .line 13
    iget-object p2, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->scope:Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    .line 14
    iget-object p3, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->lookupEnvironment:Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/lookup/LookupEnvironment;->methodVerifier()Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/eclipse/jdt/internal/compiler/lookup/CompilationUnitScope;->verifyMethods(Lorg/eclipse/jdt/internal/compiler/lookup/MethodVerifier;)V

    .line 15
    :cond_4
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->resolve()V

    if-eqz p4, :cond_5

    .line 16
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->analyseCode()V

    :cond_5
    if-eqz p5, :cond_6

    .line 17
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->generateCode()V

    .line 18
    :cond_6
    invoke-virtual {p1}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->finalizeProblems()V

    .line 19
    :cond_7
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->unitsToProcess:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    if-eqz p2, :cond_8

    aput-object v2, p2, v1

    .line 20
    :cond_8
    iget-object p2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->requestor:Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;

    iget-object p3, p1, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    invoke-virtual {p3}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->tagAsAccepted()Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    move-result-object p3

    invoke-interface {p2, p3}, Lorg/eclipse/jdt/internal/compiler/ICompilerRequestor;->acceptResult(Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V
    :try_end_0
    .catch Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 21
    :goto_3
    invoke-virtual {p0, p2, p1, v2}, Lorg/eclipse/jdt/internal/compiler/Compiler;->handleInternalException(Ljava/lang/Throwable;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    .line 22
    throw p2

    .line 23
    :goto_4
    invoke-virtual {p0, p2, p1, v2}, Lorg/eclipse/jdt/internal/compiler/Compiler;->handleInternalException(Ljava/lang/Throwable;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/CompilationResult;)V

    .line 24
    throw p2

    .line 25
    :goto_5
    invoke-virtual {p0, p2, p1}, Lorg/eclipse/jdt/internal/compiler/Compiler;->handleInternalException(Lorg/eclipse/jdt/internal/compiler/problem/AbortCompilation;Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;)V

    if-nez p1, :cond_9

    .line 26
    iget-object p1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->unitsToProcess:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    aget-object p1, p1, v1

    :cond_9
    return-object p1
.end method

.method public resolve(Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;ZZZ)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 27
    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jdt/internal/compiler/Compiler;->resolve(Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;Lorg/eclipse/jdt/internal/compiler/env/ICompilationUnit;ZZZ)Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    move-result-object p1

    return-object p1
.end method

.method public restoreAptProblems()V
    .locals 9

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->unitsToProcess:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->aptProblems:Ljava/util/Map;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->totalUnits:I

    if-lt v1, v2, :cond_0

    goto :goto_3

    :cond_0
    iget-object v2, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->unitsToProcess:[Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;

    aget-object v2, v2, v1

    iget-object v3, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->aptProblems:Ljava/util/Map;

    new-instance v4, Ljava/lang/String;

    invoke-virtual {v2}, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->getFileName()[C

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/eclipse/jdt/internal/compiler/Compiler$APTProblem;

    if-eqz v3, :cond_2

    array-length v4, v3

    move v5, v0

    :goto_1
    if-lt v5, v4, :cond_1

    goto :goto_2

    :cond_1
    aget-object v6, v3, v5

    iget-object v7, v2, Lorg/eclipse/jdt/internal/compiler/ast/CompilationUnitDeclaration;->compilationResult:Lorg/eclipse/jdt/internal/compiler/CompilationResult;

    iget-object v8, v6, Lorg/eclipse/jdt/internal/compiler/Compiler$APTProblem;->problem:Lorg/eclipse/jdt/core/compiler/CategorizedProblem;

    iget-object v6, v6, Lorg/eclipse/jdt/internal/compiler/Compiler$APTProblem;->context:Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;

    invoke-virtual {v7, v8, v6}, Lorg/eclipse/jdt/internal/compiler/CompilationResult;->record(Lorg/eclipse/jdt/core/compiler/CategorizedProblem;Lorg/eclipse/jdt/internal/compiler/impl/ReferenceContext;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_3
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->aptProblems:Ljava/util/Map;

    return-void
.end method

.method public setBinaryTypes([Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;)V
    .locals 0

    iput-object p1, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->referenceBindings:[Lorg/eclipse/jdt/internal/compiler/lookup/ReferenceBinding;

    return-void
.end method

.method public shouldCleanup(I)Z
    .locals 1

    iget v0, p0, Lorg/eclipse/jdt/internal/compiler/Compiler;->annotationProcessorStartIndex:I

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
