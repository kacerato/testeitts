.class public Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/javax/annotation/processing/ProcessingEnvironment;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ImplicitCompleter;,
        Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;,
        Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ComputeAnnotationSet;,
        Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;,
        Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;,
        Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$NameProcessIterator;,
        Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$NameServiceIterator;,
        Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;
    }
.end annotation


# static fields
.field public static final noMatches:Ljava/util/regex/Pattern;


# instance fields
.field private final allowModules:Z

.field private final annotate:Lorg/openjdk/tools/javac/comp/Annotate;

.field private final chk:Lorg/openjdk/tools/javac/comp/Check;

.field private final compiler:Lorg/openjdk/tools/javac/main/JavaCompiler;

.field private final context:Lorg/openjdk/tools/javac/util/Context;

.field diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

.field private discoveredProcs:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;

.field private final elementUtils:Lorg/openjdk/tools/javac/model/JavacElements;

.field private final enter:Lorg/openjdk/tools/javac/comp/Enter;

.field private final fatalErrors:Z

.field private final fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

.field private final filer:Lorg/openjdk/tools/javac/processing/JavacFiler;

.field private final initialCompleter:Lorg/openjdk/tools/javac/code/Symbol$Completer;

.field private final lint:Z

.field final log:Lorg/openjdk/tools/javac/util/Log;

.field private final messager:Lorg/openjdk/tools/javac/processing/JavacMessager;

.field private messages:Lorg/openjdk/tools/javac/util/JavacMessages;

.field private final modules:Lorg/openjdk/tools/javac/comp/Modules;

.field private final names:Lorg/openjdk/tools/javac/util/Names;

.field private final options:Lorg/openjdk/tools/javac/util/Options;

.field private final platformAnnotations:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final printProcessorInfo:Z

.field private final printRounds:Z

.field private processorClassLoader:Ljava/lang/ClassLoader;

.field private processorLoaderException:Ljava/lang/SecurityException;

.field private final processorOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private serviceLoader:Ljava/util/ServiceLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ServiceLoader<",
            "Lorg/openjdk/javax/annotation/processing/Processor;",
            ">;"
        }
    .end annotation
.end field

.field private final showResolveErrors:Z

.field source:Lorg/openjdk/tools/javac/code/Source;

.field private specifiedPackages:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;",
            ">;"
        }
    .end annotation
.end field

.field private final symtab:Lorg/openjdk/tools/javac/code/Symtab;

.field private taskListener:Lorg/openjdk/tools/javac/api/MultiTaskListener;

.field private final treeCleaner:Lorg/openjdk/tools/javac/tree/TreeScanner;

.field private final typeUtils:Lorg/openjdk/tools/javac/model/JavacTypes;

.field private final types:Lorg/openjdk/tools/javac/code/Types;

.field private final unmatchedProcessorOptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final verbose:Z

.field private final werror:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(\\P{all})+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->noMatches:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->specifiedPackages:Ljava/util/Set;

    new-instance v0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$1;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$1;-><init>(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->treeCleaner:Lorg/openjdk/tools/javac/tree/TreeScanner;

    iput-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->context:Lorg/openjdk/tools/javac/util/Context;

    const-class v0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-virtual {p1, v0, p0}, Lorg/openjdk/tools/javac/util/Context;->put(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Log;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Source;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Source;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->source:Lorg/openjdk/tools/javac/code/Source;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Options;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Options;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->options:Lorg/openjdk/tools/javac/util/Options;

    sget-object v1, Lorg/openjdk/tools/javac/main/Option;->XPRINTPROCESSORINFO:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Options;->isSet(Lorg/openjdk/tools/javac/main/Option;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->printProcessorInfo:Z

    sget-object v1, Lorg/openjdk/tools/javac/main/Option;->XPRINTROUNDS:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Options;->isSet(Lorg/openjdk/tools/javac/main/Option;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->printRounds:Z

    sget-object v1, Lorg/openjdk/tools/javac/main/Option;->VERBOSE:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Options;->isSet(Lorg/openjdk/tools/javac/main/Option;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->verbose:Z

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Lint;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Lint;

    move-result-object v1

    sget-object v2, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->PROCESSING:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/code/Lint;->isEnabled(Lorg/openjdk/tools/javac/code/Lint$LintCategory;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->lint:Z

    invoke-static {p1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/main/JavaCompiler;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->compiler:Lorg/openjdk/tools/javac/main/JavaCompiler;

    sget-object v2, Lorg/openjdk/tools/javac/main/Option;->PROC:Lorg/openjdk/tools/javac/main/Option;

    const-string v3, "only"

    invoke-virtual {v0, v2, v3}, Lorg/openjdk/tools/javac/util/Options;->isSet(Lorg/openjdk/tools/javac/main/Option;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lorg/openjdk/tools/javac/main/Option;->XPRINT:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/Options;->isSet(Lorg/openjdk/tools/javac/main/Option;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    sget-object v2, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;->PROCESS:Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    iput-object v2, v1, Lorg/openjdk/tools/javac/main/JavaCompiler;->shouldStopPolicyIfNoError:Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    :cond_1
    const-string v1, "fatalEnterError"

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->fatalErrors:Z

    const-string v1, "showResolveErrors"

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->showResolveErrors:Z

    sget-object v1, Lorg/openjdk/tools/javac/main/Option;->WERROR:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Options;->isSet(Lorg/openjdk/tools/javac/main/Option;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->werror:Z

    const-class v0, Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/javax/tools/JavaFileManager;

    iput-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->initPlatformAnnotations()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->platformAnnotations:Ljava/util/Set;

    new-instance v0, Lorg/openjdk/tools/javac/processing/JavacFiler;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/processing/JavacFiler;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->filer:Lorg/openjdk/tools/javac/processing/JavacFiler;

    new-instance v0, Lorg/openjdk/tools/javac/processing/JavacMessager;

    invoke-direct {v0, p1, p0}, Lorg/openjdk/tools/javac/processing/JavacMessager;-><init>(Lorg/openjdk/tools/javac/util/Context;Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->messager:Lorg/openjdk/tools/javac/processing/JavacMessager;

    invoke-static {p1}, Lorg/openjdk/tools/javac/model/JavacElements;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/model/JavacElements;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->elementUtils:Lorg/openjdk/tools/javac/model/JavacElements;

    invoke-static {p1}, Lorg/openjdk/tools/javac/model/JavacTypes;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/model/JavacTypes;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->typeUtils:Lorg/openjdk/tools/javac/model/JavacTypes;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Modules;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Modules;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->modules:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Types;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Annotate;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Annotate;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->initProcessorOptions()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->processorOptions:Ljava/util/Map;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->initUnmatchedProcessorOptions()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->unmatchedProcessorOptions:Ljava/util/Set;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/JavacMessages;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/JavacMessages;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->messages:Lorg/openjdk/tools/javac/util/JavacMessages;

    invoke-static {p1}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/api/MultiTaskListener;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->taskListener:Lorg/openjdk/tools/javac/api/MultiTaskListener;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Symtab;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->symtab:Lorg/openjdk/tools/javac/code/Symtab;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Names;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Enter;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Enter;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->enter:Lorg/openjdk/tools/javac/comp/Enter;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/ClassFinder;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/ClassFinder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/code/ClassFinder;->getCompleter()Lorg/openjdk/tools/javac/code/Symbol$Completer;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->initialCompleter:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Check;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-direct {p0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->initProcessorLoader()V

    iget-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->source:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Source;->allowModules()Z

    move-result p1

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->allowModules:Z

    return-void
.end method

.method public static synthetic a(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->lambda$initProcessorIterator$0(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;Ljava/lang/String;Ljava/lang/Exception;)Ljava/util/Iterator;
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->handleServiceLoaderUnavailability(Ljava/lang/String;Ljava/lang/Exception;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$100(ZLjava/lang/String;Lorg/openjdk/javax/annotation/processing/Processor;Lorg/openjdk/tools/javac/util/Log;)Ljava/util/regex/Pattern;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->importStringToPattern(ZLjava/lang/String;Lorg/openjdk/javax/annotation/processing/Processor;Lorg/openjdk/tools/javac/util/Log;)Ljava/util/regex/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1000(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->getPackageInfoFilesFromClasses(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$1100(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/processing/JavacMessager;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->messager:Lorg/openjdk/tools/javac/processing/JavacMessager;

    return-object p0
.end method

.method public static synthetic access$1200(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->werror:Z

    return p0
.end method

.method public static synthetic access$1300(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->fatalErrors:Z

    return p0
.end method

.method public static synthetic access$1400(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/model/JavacElements;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->elementUtils:Lorg/openjdk/tools/javac/model/JavacElements;

    return-object p0
.end method

.method public static synthetic access$1500(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/util/Names;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->names:Lorg/openjdk/tools/javac/util/Names;

    return-object p0
.end method

.method public static synthetic access$1600(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->isPkgInfo(Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$1700(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/code/Symtab;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->symtab:Lorg/openjdk/tools/javac/code/Symtab;

    return-object p0
.end method

.method public static synthetic access$1800(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/code/Symbol$Completer;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->initialCompleter:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    return-object p0
.end method

.method public static synthetic access$1900(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/api/MultiTaskListener;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->taskListener:Lorg/openjdk/tools/javac/api/MultiTaskListener;

    return-object p0
.end method

.method public static synthetic access$200(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->allowModules:Z

    return p0
.end method

.method public static synthetic access$2000(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/processing/JavacFiler;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->filer:Lorg/openjdk/tools/javac/processing/JavacFiler;

    return-object p0
.end method

.method public static synthetic access$2100(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->discoveredProcs:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;

    return-object p0
.end method

.method public static synthetic access$2200(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;Ljava/util/Set;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->discoverAndRunProcs(Ljava/util/Set;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)V

    return-void
.end method

.method public static synthetic access$2300(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->printRounds:Z

    return p0
.end method

.method public static synthetic access$2400(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Z
    .locals 0

    iget-boolean p0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->verbose:Z

    return p0
.end method

.method public static synthetic access$2500(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/comp/Enter;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->enter:Lorg/openjdk/tools/javac/comp/Enter;

    return-object p0
.end method

.method public static synthetic access$2600(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/tree/TreeScanner;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->treeCleaner:Lorg/openjdk/tools/javac/tree/TreeScanner;

    return-object p0
.end method

.method public static synthetic access$2700(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/comp/Check;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->chk:Lorg/openjdk/tools/javac/comp/Check;

    return-object p0
.end method

.method public static synthetic access$2800(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/comp/Modules;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->modules:Lorg/openjdk/tools/javac/comp/Modules;

    return-object p0
.end method

.method public static synthetic access$2900(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/code/Types;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->types:Lorg/openjdk/tools/javac/code/Types;

    return-object p0
.end method

.method public static synthetic access$300(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;Lorg/openjdk/javax/annotation/processing/Processor;Ljava/util/Set;Lorg/openjdk/javax/annotation/processing/RoundEnvironment;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->callProcessor(Lorg/openjdk/javax/annotation/processing/Processor;Ljava/util/Set;Lorg/openjdk/javax/annotation/processing/RoundEnvironment;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$3000(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/comp/Annotate;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    return-object p0
.end method

.method public static synthetic access$400(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;)Lorg/openjdk/tools/javac/main/JavaCompiler;
    .locals 0

    iget-object p0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->compiler:Lorg/openjdk/tools/javac/main/JavaCompiler;

    return-object p0
.end method

.method public static synthetic access$500(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->getTopLevelClasses(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$600(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->getPackageInfoFiles(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$700(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->getModuleInfoFiles(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$800(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->getTopLevelClassesFromClasses(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$900(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;
    .locals 0

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->join(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p0

    return-object p0
.end method

.method private callProcessor(Lorg/openjdk/javax/annotation/processing/Processor;Ljava/util/Set;Lorg/openjdk/javax/annotation/processing/RoundEnvironment;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/annotation/processing/Processor;",
            "Ljava/util/Set<",
            "+",
            "Lorg/openjdk/javax/lang/model/element/TypeElement;",
            ">;",
            "Lorg/openjdk/javax/annotation/processing/RoundEnvironment;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1, p2, p3}, Lorg/openjdk/javax/annotation/processing/Processor;->process(Ljava/util/Set;Lorg/openjdk/javax/annotation/processing/RoundEnvironment;)Z

    move-result p1
    :try_end_0
    .catch Lorg/openjdk/tools/javac/code/ClassFinder$BadClassFile; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/openjdk/tools/javac/util/ClientCodeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    new-instance p2, Lorg/openjdk/tools/javac/processing/AnnotationProcessingError;

    invoke-direct {p2, p1}, Lorg/openjdk/tools/javac/processing/AnnotationProcessingError;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_0
    move-exception p1

    throw p1

    :catch_1
    move-exception p1

    new-instance p2, Ljava/io/StringWriter;

    invoke-direct {p2}, Ljava/io/StringWriter;-><init>()V

    new-instance p3, Ljava/io/PrintWriter;

    invoke-direct {p3, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    iget-object p3, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v1, p1, Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;->getDetailValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {v1, p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "proc.cant.access"

    invoke-virtual {p3, p2, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :catch_2
    move-exception p1

    iget-object p2, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object p3, p1, Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;->getDetailValue()Ljava/lang/Object;

    move-result-object p1

    filled-new-array {p3, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p3, "proc.cant.access.1"

    invoke-virtual {p2, p3, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method private discoverAndRunProcs(Ljava/util/Set;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/lang/model/element/TypeElement;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/javax/lang/model/element/TypeElement;

    iget-object v3, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->elementUtils:Lorg/openjdk/tools/javac/model/JavacElements;

    invoke-virtual {v3, v1}, Lorg/openjdk/tools/javac/model/JavacElements;->getModuleOf(Lorg/openjdk/javax/lang/model/element/Element;)Lorg/openjdk/javax/lang/model/element/ModuleElement;

    move-result-object v3

    iget-boolean v4, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->allowModules:Z

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Lorg/openjdk/javax/lang/model/element/ModuleElement;->getQualifiedName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Lorg/openjdk/javax/lang/model/element/TypeElement;->getQualifiedName()Lorg/openjdk/javax/lang/model/element/Name;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->discoveredProcs:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;->iterator()Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;

    move-result-object p1

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v1, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1, p3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1, p4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    new-instance p3, Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment;

    const/4 p4, 0x0

    invoke-direct {p3, p4, p4, p2, p0}, Lorg/openjdk/tools/javac/processing/JavacRoundEnvironment;-><init>(ZZLjava/util/Set;Lorg/openjdk/javax/annotation/processing/ProcessingEnvironment;)V

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p2

    if-lez p2, :cond_9

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->next()Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;

    move-result-object p2

    new-instance p4, Ljava/util/HashSet;

    invoke-direct {p4}, Ljava/util/HashSet;-><init>()V

    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p2, v5}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;->annotationSupported(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {p4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/openjdk/javax/lang/model/element/TypeElement;

    if-eqz v4, :cond_4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_5
    invoke-interface {p4}, Ljava/util/Set;->size()I

    move-result v3

    if-gtz v3, :cond_6

    iget-boolean v3, p2, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;->contributed:Z

    if-eqz v3, :cond_3

    :cond_6
    iget-object v3, p2, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;->processor:Lorg/openjdk/javax/annotation/processing/Processor;

    invoke-direct {p0, v3, v1, p3}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->callProcessor(Lorg/openjdk/javax/annotation/processing/Processor;Ljava/util/Set;Lorg/openjdk/javax/annotation/processing/RoundEnvironment;)Z

    move-result v1

    const/4 v3, 0x1

    iput-boolean v3, p2, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;->contributed:Z

    iget-object v3, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->unmatchedProcessorOptions:Ljava/util/Set;

    invoke-virtual {p2, v3}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;->removeSupportedOptions(Ljava/util/Set;)V

    iget-boolean v3, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->printProcessorInfo:Z

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->verbose:Z

    if-eqz v3, :cond_8

    :cond_7
    iget-object v3, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object p2, p2, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ProcessorState;->processor:Lorg/openjdk/javax/annotation/processing/Processor;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array {p2, v4, v5}, [Ljava/lang/Object;

    move-result-object p2

    const-string v4, "x.print.processor.info"

    invoke-virtual {v3, v4, p2}, Lorg/openjdk/tools/javac/util/Log;->printLines(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2, p4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    :cond_9
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean p2, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->lint:Z

    if-eqz p2, :cond_a

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p2

    if-lez p2, :cond_a

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    iget-object p4, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->platformAnnotations:Ljava/util/Set;

    invoke-interface {p2, p4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p2

    if-lez p2, :cond_a

    iget-object p2, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p4

    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p4

    const-string v0, "proc.annotations.without.processors"

    invoke-virtual {p2, v0, p4}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    invoke-virtual {p1, p3}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->runContributingProcs(Lorg/openjdk/javax/annotation/processing/RoundEnvironment;)V

    return-void
.end method

.method private getModuleInfoFiles(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "+",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v2, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    sget-object v3, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->SOURCE:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    invoke-direct {p0, v2, v3}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->isModuleInfo(Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->defs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->defs:Lorg/openjdk/tools/javac/util/List;

    iget-object v2, v2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->MODULEDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->reverse()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method private getPackageInfoFiles(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "+",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v2, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    sget-object v3, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->SOURCE:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    invoke-direct {p0, v2, v3}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->isPkgInfo(Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->reverse()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method private getPackageInfoFilesFromClasses(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "+",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {p0, v1}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->isPkgInfo(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Lorg/openjdk/tools/javac/code/Symbol;->owner:Lorg/openjdk/tools/javac/code/Symbol;

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->reverse()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method private getTopLevelClasses(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "+",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->defs:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v3, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->CLASSDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v3

    if-eqz v3, :cond_1

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-static {v2}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->reverse()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method private getTopLevelClassesFromClasses(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "+",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {p0, v1}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->isPkgInfo(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/List;->reverse()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method private handleException(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lorg/openjdk/tools/javac/util/Abort;

    invoke-direct {p1, p2}, Lorg/openjdk/tools/javac/util/Abort;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    iget-object p2, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->log:Lorg/openjdk/tools/javac/util/Log;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2, p1, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lorg/openjdk/tools/javac/util/Abort;

    invoke-direct {p1}, Lorg/openjdk/tools/javac/util/Abort;-><init>()V

    throw p1
.end method

.method private handleServiceLoaderUnavailability(Ljava/lang/String;Ljava/lang/Exception;)Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Exception;",
            ")",
            "Ljava/util/Iterator<",
            "Lorg/openjdk/javax/annotation/processing/Processor;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    instance-of v1, v0, Lorg/openjdk/tools/javac/file/JavacFileManager;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lorg/openjdk/tools/javac/file/JavacFileManager;

    sget-object v2, Lorg/openjdk/javax/tools/StandardLocation;->ANNOTATION_PROCESSOR_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-interface {v0, v2}, Lorg/openjdk/javax/tools/JavaFileManager;->hasLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1, v2}, Lorg/openjdk/javax/tools/StandardJavaFileManager;->getLocationAsPaths(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/lang/Iterable;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/openjdk/javax/tools/StandardLocation;->CLASS_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-interface {v1, v0}, Lorg/openjdk/javax/tools/StandardJavaFileManager;->getLocationAsPaths(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/lang/Iterable;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->options:Lorg/openjdk/tools/javac/util/Options;

    sget-object v2, Lorg/openjdk/tools/javac/main/Option;->PROCESSOR:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/Options;->get(Lorg/openjdk/tools/javac/main/Option;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->needClassLoader(Ljava/lang/String;Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method private static importStringToPattern(ZLjava/lang/String;Lorg/openjdk/javax/annotation/processing/Processor;Lorg/openjdk/tools/javac/util/Log;)Ljava/util/regex/Pattern;
    .locals 2

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/MatchingUtils;->validImportStringToPattern(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    const-string p0, ".*/"

    goto :goto_0

    :cond_1
    const-string p0, ""

    :goto_0
    move-object v0, p1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    const/4 p0, 0x0

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lorg/openjdk/tools/javac/util/MatchingUtils;->isValidImportString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/MatchingUtils;->validImportStringToPatternString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "proc.malformed.supported.string"

    invoke-virtual {p3, p1, p0}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->noMatches:Ljava/util/regex/Pattern;

    return-object p0
.end method

.method private initPlatformAnnotations()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "java.lang.Deprecated"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "java.lang.Override"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "java.lang.SuppressWarnings"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "java.lang.annotation.Documented"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "java.lang.annotation.Inherited"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "java.lang.annotation.Retention"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "java.lang.annotation.Target"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private initProcessorIterator(Ljava/lang/Iterable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/annotation/processing/Processor;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->options:Lorg/openjdk/tools/javac/util/Options;

    sget-object v1, Lorg/openjdk/tools/javac/main/Option;->XPRINT:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Options;->isSet(Lorg/openjdk/tools/javac/main/Option;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance p1, Lorg/openjdk/tools/javac/processing/PrintingProcessor;

    invoke-direct {p1}, Lorg/openjdk/tools/javac/processing/PrintingProcessor;-><init>()V

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Problem instantiating PrintingProcessor."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->processorLoaderException:Ljava/lang/SecurityException;

    if-nez p1, :cond_5

    iget-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->options:Lorg/openjdk/tools/javac/util/Options;

    sget-object v0, Lorg/openjdk/tools/javac/main/Option;->PROCESSOR:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/Options;->get(Lorg/openjdk/tools/javac/main/Option;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    sget-object v1, Lorg/openjdk/javax/tools/StandardLocation;->ANNOTATION_PROCESSOR_MODULE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-interface {v0, v1}, Lorg/openjdk/javax/tools/JavaFileManager;->hasLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    new-instance p1, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->serviceLoader:Ljava/util/ServiceLoader;

    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-direct {p1, p0, v0, v1}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;-><init>(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;Ljava/util/ServiceLoader;Lorg/openjdk/tools/javac/util/Log;)V

    goto :goto_1

    :cond_2
    new-instance v0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$NameServiceIterator;

    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->serviceLoader:Ljava/util/ServiceLoader;

    iget-object v2, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-direct {v0, p0, v1, v2, p1}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$NameServiceIterator;-><init>(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;Ljava/util/ServiceLoader;Lorg/openjdk/tools/javac/util/Log;Ljava/lang/String;)V

    :goto_0
    move-object p1, v0

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    new-instance v0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$NameProcessIterator;

    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->processorClassLoader:Ljava/lang/ClassLoader;

    iget-object v2, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-direct {v0, p1, v1, v2}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$NameProcessIterator;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;Lorg/openjdk/tools/javac/util/Log;)V

    goto :goto_0

    :cond_4
    new-instance p1, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->processorClassLoader:Ljava/lang/ClassLoader;

    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-direct {p1, p0, v0, v1}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$ServiceIterator;-><init>(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;Ljava/lang/ClassLoader;Lorg/openjdk/tools/javac/util/Log;)V

    goto :goto_1

    :cond_5
    const-string v0, "proc.cant.create.loader"

    invoke-direct {p0, v0, p1}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->handleServiceLoaderUnavailability(Ljava/lang/String;Ljava/lang/Exception;)Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->context:Lorg/openjdk/tools/javac/util/Context;

    const-class v1, Lorg/openjdk/tools/javac/platform/PlatformDescription;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/platform/PlatformDescription;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lorg/openjdk/tools/javac/platform/PlatformDescription;->getAnnotationProcessors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/openjdk/tools/javac/processing/b;

    invoke-direct {v1}, Lorg/openjdk/tools/javac/processing/b;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    :cond_6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    new-instance v0, Lorg/openjdk/tools/javac/processing/c;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/processing/c;-><init>()V

    invoke-static {p1, v0}, Lorg/openjdk/tools/javac/util/Iterators;->createCompoundIterator(Ljava/lang/Iterable;Ljava/util/function/Function;)Ljava/util/Iterator;

    move-result-object p1

    new-instance v0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;

    invoke-direct {v0, p0, p1}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;-><init>(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;Ljava/util/Iterator;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->discoveredProcs:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;

    return-void
.end method

.method private initProcessorLoader()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    sget-object v1, Lorg/openjdk/javax/tools/StandardLocation;->ANNOTATION_PROCESSOR_MODULE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-interface {v0, v1}, Lorg/openjdk/javax/tools/JavaFileManager;->hasLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    const-class v2, Lorg/openjdk/javax/annotation/processing/Processor;

    invoke-interface {v0, v1, v2}, Lorg/openjdk/javax/tools/JavaFileManager;->getServiceLoader(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->serviceLoader:Ljava/util/ServiceLoader;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_2
    new-instance v1, Lorg/openjdk/tools/javac/util/Abort;

    invoke-direct {v1, v0}, Lorg/openjdk/tools/javac/util/Abort;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    sget-object v1, Lorg/openjdk/javax/tools/StandardLocation;->ANNOTATION_PROCESSOR_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-interface {v0, v1}, Lorg/openjdk/javax/tools/JavaFileManager;->hasLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {v0, v1}, Lorg/openjdk/javax/tools/JavaFileManager;->getClassLoader(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    sget-object v1, Lorg/openjdk/javax/tools/StandardLocation;->CLASS_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-interface {v0, v1}, Lorg/openjdk/javax/tools/JavaFileManager;->getClassLoader(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->processorClassLoader:Ljava/lang/ClassLoader;

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->options:Lorg/openjdk/tools/javac/util/Options;

    const-string v1, "accessInternalAPI"

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Module;->getModule(Ljava/lang/Class;)Lorg/openjdk/tools/javac/util/JDK9Wrappers$Module;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->processorClassLoader:Ljava/lang/ClassLoader;

    invoke-static {v1}, Lorg/openjdk/tools/javac/util/JDK9Wrappers$Module;->getUnnamedModule(Ljava/lang/ClassLoader;)Lorg/openjdk/tools/javac/util/JDK9Wrappers$Module;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/util/ModuleHelper;->addExports(Lorg/openjdk/tools/javac/util/JDK9Wrappers$Module;Lorg/openjdk/tools/javac/util/JDK9Wrappers$Module;)V

    :cond_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->processorClassLoader:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_3

    instance-of v1, v0, Ljava/io/Closeable;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->compiler:Lorg/openjdk/tools/javac/main/JavaCompiler;

    iget-object v2, v1, Lorg/openjdk/tools/javac/main/JavaCompiler;->closeables:Lorg/openjdk/tools/javac/util/List;

    check-cast v0, Ljava/io/Closeable;

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, v1, Lorg/openjdk/tools/javac/main/JavaCompiler;->closeables:Lorg/openjdk/tools/javac/util/List;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :goto_1
    iput-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->processorLoaderException:Ljava/lang/SecurityException;

    :cond_3
    :goto_2
    return-void
.end method

.method private initProcessorOptions()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->options:Lorg/openjdk/tools/javac/util/Options;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/Options;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "-A"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-le v3, v4, :cond_0

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-ne v3, v5, :cond_1

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v7, v6

    move-object v6, v2

    move-object v2, v7

    goto :goto_1

    :cond_1
    const/4 v5, 0x3

    if-lt v3, v5, :cond_3

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    :cond_2
    move-object v2, v6

    move-object v6, v4

    goto :goto_1

    :cond_3
    move-object v2, v6

    :goto_1
    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->context:Lorg/openjdk/tools/javac/util/Context;

    const-class v2, Lorg/openjdk/tools/javac/platform/PlatformDescription;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/platform/PlatformDescription;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lorg/openjdk/tools/javac/platform/PlatformDescription;->getAnnotationProcessors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/platform/PlatformDescription$PluginInfo;

    invoke-interface {v2}, Lorg/openjdk/tools/javac/platform/PlatformDescription$PluginInfo;->getOptions()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_2

    :cond_5
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private initUnmatchedProcessorOptions()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->processorOptions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public static instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;
    .locals 1

    const-class v0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    :cond_0
    return-object v0
.end method

.method private isModuleInfo(Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Z
    .locals 1

    const-string v0, "module-info"

    invoke-interface {p1, v0, p2}, Lorg/openjdk/javax/tools/JavaFileObject;->isNameCompatible(Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Z

    move-result p1

    return p1
.end method

.method private isPkgInfo(Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Z
    .locals 1

    .line 1
    const-string v0, "package-info"

    invoke-interface {p1, v0, p2}, Lorg/openjdk/javax/tools/JavaFileObject;->isNameCompatible(Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Z

    move-result p1

    return p1
.end method

.method private isPkgInfo(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Z
    .locals 2

    .line 2
    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->classfile:Lorg/openjdk/javax/tools/JavaFileObject;

    sget-object v1, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->CLASS:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    invoke-direct {p0, v0, v1}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->isPkgInfo(Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol;->packge()Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    move-result-object v0

    iget-object v0, v0, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;->package_info:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static isValidOptionName(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "\\."

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-static {v3}, Lorg/openjdk/javax/lang/model/SourceVersion;->isIdentifier(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static join(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/openjdk/tools/javac/util/List<",
            "TT;>;",
            "Lorg/openjdk/tools/javac/util/List<",
            "TT;>;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/List;->appendList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$initProcessorIterator$0(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 0

    return-object p0
.end method

.method private moreToDo()Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->filer:Lorg/openjdk/tools/javac/processing/JavacFiler;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/processing/JavacFiler;->newFiles()Z

    move-result v0

    return v0
.end method

.method private needClassLoader(Ljava/lang/String;Ljava/lang/Iterable;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/nio/file/Path;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    new-array p1, v0, [Ljava/net/URL;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/file/Path;

    :try_start_0
    invoke-interface {v1}, Ljava/nio/file/Path;->toUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1

    aput-object v1, p1, v2

    const-class v1, Lorg/openjdk/javax/annotation/processing/Processor;

    invoke-static {v1, p1}, Lorg/openjdk/tools/javac/processing/ServiceProxy;->hasService(Ljava/lang/Class;[Ljava/net/URL;)Z

    move-result v1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/openjdk/tools/javac/processing/ServiceProxy$ServiceConfigurationError; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    return v0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    iget-object p2, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "proc.bad.config.file"

    invoke-virtual {p2, v1, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    :goto_1
    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    :cond_2
    return v2
.end method

.method private warnIfUnmatchedOptions()V
    .locals 3

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->unmatchedProcessorOptions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->unmatchedProcessorOptions:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "proc.unmatched.processor.options"

    invoke-virtual {v0, v2, v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public atLeastOneProcessor()Z
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->discoveredProcs:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;->iterator()Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;

    move-result-object v0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors$ProcessorStateIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->filer:Lorg/openjdk/tools/javac/processing/JavacFiler;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/processing/JavacFiler;->close()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->discoveredProcs:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->discoveredProcs:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;

    return-void
.end method

.method public doProcessing(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Ljava/lang/Iterable;Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;",
            ">;",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;",
            ">;",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;",
            ">;",
            "Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;",
            ")Z"
        }
    .end annotation

    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v5

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->enter:Lorg/openjdk/tools/javac/comp/Enter;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/Enter;->getEnvs()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/comp/Env;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    invoke-interface {v5, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p3

    iput-object p3, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->specifiedPackages:Ljava/util/Set;

    new-instance p3, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;

    move-object v1, p3

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;-><init>(Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Ljava/util/Set;Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;)V

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {p3, p1, p1}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->run(ZZ)V

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->unrecoverableError()Z

    move-result p2

    invoke-direct {p0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->moreToDo()Z

    move-result p4

    const/4 v0, 0x1

    if-nez p2, :cond_4

    iget-boolean v1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->showResolveErrors:Z

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move v1, p1

    goto :goto_3

    :cond_4
    :goto_2
    move v1, v0

    :goto_3
    invoke-virtual {p3, v1}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->showDiagnostics(Z)V

    new-instance v1, Ljava/util/LinkedHashSet;

    iget-object v2, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->filer:Lorg/openjdk/tools/javac/processing/JavacFiler;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/processing/JavacFiler;->getGeneratedSourceFileObjects()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/LinkedHashMap;

    iget-object v3, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->filer:Lorg/openjdk/tools/javac/processing/JavacFiler;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/processing/JavacFiler;->getGeneratedClasses()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {p3, v1, v2}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->next(Ljava/util/Set;Ljava/util/Map;)Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;

    move-result-object p3

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->unrecoverableError()Z

    move-result v1

    if-eqz v1, :cond_5

    move p2, v0

    :cond_5
    if-eqz p4, :cond_6

    if-eqz p2, :cond_2

    :cond_6
    invoke-virtual {p3, v0, p2}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->run(ZZ)V

    invoke-virtual {p3, v0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->showDiagnostics(Z)V

    iget-object p4, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->filer:Lorg/openjdk/tools/javac/processing/JavacFiler;

    invoke-virtual {p4}, Lorg/openjdk/tools/javac/processing/JavacFiler;->warnIfUnclosedFiles()V

    invoke-direct {p0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->warnIfUnmatchedOptions()V

    iget-object p4, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->messager:Lorg/openjdk/tools/javac/processing/JavacMessager;

    invoke-virtual {p4}, Lorg/openjdk/tools/javac/processing/JavacMessager;->errorRaised()Z

    move-result p4

    if-nez p4, :cond_7

    iget-boolean p4, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->werror:Z

    if-eqz p4, :cond_8

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->warningCount()I

    move-result p4

    if-lez p4, :cond_8

    invoke-virtual {p3}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->errorCount()I

    move-result p4

    if-lez p4, :cond_8

    :cond_7
    move p2, v0

    :cond_8
    new-instance p4, Ljava/util/LinkedHashSet;

    iget-object v1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->filer:Lorg/openjdk/tools/javac/processing/JavacFiler;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/processing/JavacFiler;->getGeneratedSourceFileObjects()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p4, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    iget-object v1, p3, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->roots:Lorg/openjdk/tools/javac/util/List;

    if-nez p2, :cond_a

    iget-object p2, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->compiler:Lorg/openjdk/tools/javac/main/JavaCompiler;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/main/JavaCompiler;->errorCount()I

    move-result p2

    if-lez p2, :cond_9

    goto :goto_4

    :cond_9
    move p2, p1

    goto :goto_5

    :cond_a
    :goto_4
    move p2, v0

    :goto_5
    invoke-virtual {p3}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$Round;->finalCompiler()V

    invoke-interface {p4}, Ljava/util/Set;->size()I

    move-result p3

    if-lez p3, :cond_b

    iget-object p3, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->compiler:Lorg/openjdk/tools/javac/main/JavaCompiler;

    invoke-virtual {p3, p4}, Lorg/openjdk/tools/javac/main/JavaCompiler;->parseFiles(Ljava/lang/Iterable;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p3

    invoke-virtual {v1, p3}, Lorg/openjdk/tools/javac/util/List;->appendList(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    :cond_b
    if-nez p2, :cond_c

    iget-object p2, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->compiler:Lorg/openjdk/tools/javac/main/JavaCompiler;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/main/JavaCompiler;->errorCount()I

    move-result p2

    if-lez p2, :cond_d

    :cond_c
    move p1, v0

    :cond_d
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->close()V

    if-eqz p1, :cond_e

    iget-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->compiler:Lorg/openjdk/tools/javac/main/JavaCompiler;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->errorCount()I

    move-result p1

    if-nez p1, :cond_e

    iget-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->compiler:Lorg/openjdk/tools/javac/main/JavaCompiler;

    iget-object p1, p1, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    iget p2, p1, Lorg/openjdk/tools/javac/util/Log;->nerrors:I

    add-int/2addr p2, v0

    iput p2, p1, Lorg/openjdk/tools/javac/util/Log;->nerrors:I

    :cond_e
    iget-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->compiler:Lorg/openjdk/tools/javac/main/JavaCompiler;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->enterTreesIfNeeded(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    iget-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->taskListener:Lorg/openjdk/tools/javac/api/MultiTaskListener;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_f

    iget-object p1, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->taskListener:Lorg/openjdk/tools/javac/api/MultiTaskListener;

    new-instance p2, Lorg/openjdk/source/util/TaskEvent;

    sget-object p3, Lorg/openjdk/source/util/TaskEvent$Kind;->ANNOTATION_PROCESSING:Lorg/openjdk/source/util/TaskEvent$Kind;

    invoke-direct {p2, p3}, Lorg/openjdk/source/util/TaskEvent;-><init>(Lorg/openjdk/source/util/TaskEvent$Kind;)V

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->finished(Lorg/openjdk/source/util/TaskEvent;)V

    :cond_f
    return v0
.end method

.method public getContext()Lorg/openjdk/tools/javac/util/Context;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->context:Lorg/openjdk/tools/javac/util/Context;

    return-object v0
.end method

.method public bridge synthetic getElementUtils()Lorg/openjdk/javax/lang/model/util/Elements;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->getElementUtils()Lorg/openjdk/tools/javac/model/JavacElements;

    move-result-object v0

    return-object v0
.end method

.method public getElementUtils()Lorg/openjdk/tools/javac/model/JavacElements;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->elementUtils:Lorg/openjdk/tools/javac/model/JavacElements;

    return-object v0
.end method

.method public bridge synthetic getFiler()Lorg/openjdk/javax/annotation/processing/Filer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->getFiler()Lorg/openjdk/tools/javac/processing/JavacFiler;

    move-result-object v0

    return-object v0
.end method

.method public getFiler()Lorg/openjdk/tools/javac/processing/JavacFiler;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->filer:Lorg/openjdk/tools/javac/processing/JavacFiler;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->messages:Lorg/openjdk/tools/javac/util/JavacMessages;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/JavacMessages;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getMessager()Lorg/openjdk/javax/annotation/processing/Messager;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->messager:Lorg/openjdk/tools/javac/processing/JavacMessager;

    return-object v0
.end method

.method public getOptions()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->processorOptions:Ljava/util/Map;

    return-object v0
.end method

.method public getProcessorClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->processorClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public getServiceLoader(Ljava/lang/Class;)Ljava/util/ServiceLoader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TS;>;)",
            "Ljava/util/ServiceLoader<",
            "TS;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    sget-object v1, Lorg/openjdk/javax/tools/StandardLocation;->ANNOTATION_PROCESSOR_MODULE_PATH:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-interface {v0, v1}, Lorg/openjdk/javax/tools/JavaFileManager;->hasLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {v0, v1, p1}, Lorg/openjdk/javax/tools/JavaFileManager;->getServiceLoader(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Lorg/openjdk/tools/javac/util/Abort;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/util/Abort;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->getProcessorClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object p1

    return-object p1
.end method

.method public getSourceVersion()Lorg/openjdk/javax/lang/model/SourceVersion;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->source:Lorg/openjdk/tools/javac/code/Source;

    invoke-static {v0}, Lorg/openjdk/tools/javac/code/Source;->toSourceVersion(Lorg/openjdk/tools/javac/code/Source;)Lorg/openjdk/javax/lang/model/SourceVersion;

    move-result-object v0

    return-object v0
.end method

.method public getSpecifiedPackages()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->specifiedPackages:Ljava/util/Set;

    return-object v0
.end method

.method public bridge synthetic getTypeUtils()Lorg/openjdk/javax/lang/model/util/Types;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->getTypeUtils()Lorg/openjdk/tools/javac/model/JavacTypes;

    move-result-object v0

    return-object v0
.end method

.method public getTypeUtils()Lorg/openjdk/tools/javac/model/JavacTypes;
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->typeUtils:Lorg/openjdk/tools/javac/model/JavacTypes;

    return-object v0
.end method

.method public setProcessors(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/annotation/processing/Processor;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->discoveredProcs:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment$DiscoveredProcessors;

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->checkNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->initProcessorIterator(Ljava/lang/Iterable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "javac ProcessingEnvironment"

    return-object v0
.end method
