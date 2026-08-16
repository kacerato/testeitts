.class public Lorg/openjdk/tools/javac/main/JavaCompiler;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;,
        Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;
    }
.end annotation


# static fields
.field private static final DEFAULT_COMPILE_POLICY:Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;

.field public static final compilerKey:Lorg/openjdk/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "Lorg/openjdk/tools/javac/main/JavaCompiler;",
            ">;"
        }
    .end annotation
.end field

.field private static versionRB:Ljava/util/ResourceBundle; = null

.field private static final versionRBName:Ljava/lang/String; = "org.openjdk.tools.javac.resources.version"


# instance fields
.field protected annotate:Lorg/openjdk/tools/javac/comp/Annotate;

.field protected annotationProcessingOccurred:Z

.field protected attr:Lorg/openjdk/tools/javac/comp/Attr;

.field protected chk:Lorg/openjdk/tools/javac/comp/Check;

.field public closeables:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Ljava/io/Closeable;",
            ">;"
        }
    .end annotation
.end field

.field protected compilePolicy:Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;

.field protected compileStates:Lorg/openjdk/tools/javac/comp/CompileStates;

.field protected final completionFailureName:Lorg/openjdk/tools/javac/util/Name;

.field protected context:Lorg/openjdk/tools/javac/util/Context;

.field deferredDiagnosticHandler:Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;

.field desugaredEnvs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Ljava/util/Queue<",
            "Lorg/openjdk/tools/javac/util/Pair<",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;",
            ">;>;>;"
        }
    .end annotation
.end field

.field protected devVerbose:Z

.field diagFactory:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

.field protected diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

.field public elapsed_msec:J

.field protected enter:Lorg/openjdk/tools/javac/comp/Enter;

.field private enterDone:Z

.field protected explicitAnnotationProcessingRequested:Z

.field protected fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

.field protected finder:Lorg/openjdk/tools/javac/code/ClassFinder;

.field protected flow:Lorg/openjdk/tools/javac/comp/Flow;

.field protected gen:Lorg/openjdk/tools/javac/jvm/Gen;

.field public genEndPos:Z

.field private hasBeenUsed:Z

.field protected implicitSourceFilesRead:Z

.field protected implicitSourcePolicy:Lorg/openjdk/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

.field protected inputFiles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;"
        }
    .end annotation
.end field

.field protected jniWriter:Lorg/openjdk/tools/javac/jvm/JNIWriter;

.field public keepComments:Z

.field public lineDebugInfo:Z

.field public log:Lorg/openjdk/tools/javac/util/Log;

.field protected lower:Lorg/openjdk/tools/javac/comp/Lower;

.field protected make:Lorg/openjdk/tools/javac/tree/TreeMaker;

.field protected moduleFinder:Lorg/openjdk/tools/javac/code/ModuleFinder;

.field protected modules:Lorg/openjdk/tools/javac/comp/Modules;

.field protected names:Lorg/openjdk/tools/javac/util/Names;

.field protected options:Lorg/openjdk/tools/javac/util/Options;

.field protected parserFactory:Lorg/openjdk/tools/javac/parser/ParserFactory;

.field private procEnvImpl:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

.field processAnnotations:Z

.field protected processPcks:Z

.field protected reader:Lorg/openjdk/tools/javac/jvm/ClassReader;

.field private rootClasses:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;",
            ">;"
        }
    .end annotation
.end field

.field public shouldStopPolicyIfError:Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

.field public shouldStopPolicyIfNoError:Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

.field private final silentFail:Lorg/openjdk/tools/javac/code/Symbol;

.field protected source:Lorg/openjdk/tools/javac/code/Source;

.field protected final sourceCompleter:Lorg/openjdk/tools/javac/code/Symbol$Completer;

.field public sourceOutput:Z

.field private start_msec:J

.field protected syms:Lorg/openjdk/tools/javac/code/Symtab;

.field protected taskListener:Lorg/openjdk/tools/javac/api/MultiTaskListener;

.field public todo:Lorg/openjdk/tools/javac/comp/Todo;

.field protected transTypes:Lorg/openjdk/tools/javac/comp/TransTypes;

.field protected types:Lorg/openjdk/tools/javac/code/Types;

.field public verbose:Z

.field public verboseCompilePolicy:Z

.field protected werror:Z

.field protected writer:Lorg/openjdk/tools/javac/jvm/ClassWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/main/JavaCompiler;->compilerKey:Lorg/openjdk/tools/javac/util/Context$Key;

    sget-object v0, Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;->BY_TODO:Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;

    sput-object v0, Lorg/openjdk/tools/javac/main/JavaCompiler;->DEFAULT_COMPILE_POLICY:Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/openjdk/tools/javac/main/h;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/main/h;-><init>(Lorg/openjdk/tools/javac/main/JavaCompiler;)V

    iput-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->sourceCompleter:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->explicitAnnotationProcessingRequested:Z

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->closeables:Lorg/openjdk/tools/javac/util/List;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->inputFiles:Ljava/util/Set;

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->keepComments:Z

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->hasBeenUsed:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->start_msec:J

    iput-wide v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->elapsed_msec:J

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->processAnnotations:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->procEnvImpl:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->desugaredEnvs:Ljava/util/HashMap;

    iput-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->context:Lorg/openjdk/tools/javac/util/Context;

    sget-object v2, Lorg/openjdk/tools/javac/main/JavaCompiler;->compilerKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p1, v2, p0}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    const-class v2, Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-static {p1}, Lorg/openjdk/tools/javac/file/JavacFileManager;->preRegister(Lorg/openjdk/tools/javac/util/Context;)V

    :cond_0
    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Names;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Names;

    move-result-object v3

    iput-object v3, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Log;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Log;

    move-result-object v3

    iput-object v3, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    move-result-object v3

    iput-object v3, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->diagFactory:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/ClassFinder;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/ClassFinder;

    move-result-object v3

    iput-object v3, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->finder:Lorg/openjdk/tools/javac/code/ClassFinder;

    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/ClassReader;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/jvm/ClassReader;

    move-result-object v3

    iput-object v3, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->reader:Lorg/openjdk/tools/javac/jvm/ClassReader;

    invoke-static {p1}, Lorg/openjdk/tools/javac/tree/TreeMaker;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v3

    iput-object v3, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/jvm/ClassWriter;

    move-result-object v3

    iput-object v3, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->writer:Lorg/openjdk/tools/javac/jvm/ClassWriter;

    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/JNIWriter;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/jvm/JNIWriter;

    move-result-object v3

    iput-object v3, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->jniWriter:Lorg/openjdk/tools/javac/jvm/JNIWriter;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Enter;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Enter;

    move-result-object v3

    iput-object v3, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->enter:Lorg/openjdk/tools/javac/comp/Enter;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Todo;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Todo;

    move-result-object v3

    iput-object v3, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->todo:Lorg/openjdk/tools/javac/comp/Todo;

    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/javax/tools/JavaFileManager;

    iput-object v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-static {p1}, Lorg/openjdk/tools/javac/parser/ParserFactory;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/parser/ParserFactory;

    move-result-object v2

    iput-object v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->parserFactory:Lorg/openjdk/tools/javac/parser/ParserFactory;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/CompileStates;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/CompileStates;

    move-result-object v2

    iput-object v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->compileStates:Lorg/openjdk/tools/javac/comp/CompileStates;

    :try_start_0
    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Symtab;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Symtab;

    move-result-object v2

    iput-object v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->syms:Lorg/openjdk/tools/javac/code/Symtab;
    :try_end_0
    .catch Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v3, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v4, v2, Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;->getDetailValue()Ljava/lang/Object;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "cant.access"

    invoke-virtual {v3, v5, v4}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    instance-of v2, v2, Lorg/openjdk/tools/javac/code/ClassFinder$BadClassFile;

    if-nez v2, :cond_c

    :goto_0
    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Source;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Source;

    move-result-object v2

    iput-object v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->source:Lorg/openjdk/tools/javac/code/Source;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Attr;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Attr;

    move-result-object v2

    iput-object v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Check;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Check;

    move-result-object v2

    iput-object v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-static {p1}, Lorg/openjdk/tools/javac/jvm/Gen;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/jvm/Gen;

    move-result-object v2

    iput-object v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->gen:Lorg/openjdk/tools/javac/jvm/Gen;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Flow;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Flow;

    move-result-object v2

    iput-object v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->flow:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/TransTypes;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/TransTypes;

    move-result-object v2

    iput-object v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->transTypes:Lorg/openjdk/tools/javac/comp/TransTypes;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Lower;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Lower;

    move-result-object v2

    iput-object v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->lower:Lorg/openjdk/tools/javac/comp/Lower;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Annotate;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Annotate;

    move-result-object v2

    iput-object v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/Types;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/Types;

    move-result-object v2

    iput-object v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->types:Lorg/openjdk/tools/javac/code/Types;

    invoke-static {p1}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/api/MultiTaskListener;

    move-result-object v2

    iput-object v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->taskListener:Lorg/openjdk/tools/javac/api/MultiTaskListener;

    invoke-static {p1}, Lorg/openjdk/tools/javac/comp/Modules;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/Modules;

    move-result-object v2

    iput-object v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->modules:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {p1}, Lorg/openjdk/tools/javac/code/ModuleFinder;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/code/ModuleFinder;

    move-result-object v2

    iput-object v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->moduleFinder:Lorg/openjdk/tools/javac/code/ModuleFinder;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    move-result-object v2

    iput-object v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    iget-object v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->finder:Lorg/openjdk/tools/javac/code/ClassFinder;

    iget-object v3, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->sourceCompleter:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    iput-object v3, v2, Lorg/openjdk/tools/javac/code/ClassFinder;->sourceCompleter:Lorg/openjdk/tools/javac/code/Symbol$Completer;

    iget-object v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->modules:Lorg/openjdk/tools/javac/comp/Modules;

    new-instance v3, Lorg/openjdk/tools/javac/main/i;

    invoke-direct {v3, p0}, Lorg/openjdk/tools/javac/main/i;-><init>(Lorg/openjdk/tools/javac/main/JavaCompiler;)V

    iput-object v3, v2, Lorg/openjdk/tools/javac/comp/Modules;->findPackageInFile:Lorg/openjdk/tools/javac/comp/Modules$PackageNameFinder;

    iget-object v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->moduleFinder:Lorg/openjdk/tools/javac/code/ModuleFinder;

    new-instance v3, Lorg/openjdk/tools/javac/main/j;

    invoke-direct {v3, p0}, Lorg/openjdk/tools/javac/main/j;-><init>(Lorg/openjdk/tools/javac/main/JavaCompiler;)V

    iput-object v3, v2, Lorg/openjdk/tools/javac/code/ModuleFinder;->moduleNameFromSourceReader:Lorg/openjdk/tools/javac/code/ModuleFinder$ModuleNameFromSourceReader;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Options;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/Options;

    move-result-object v2

    iput-object v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->options:Lorg/openjdk/tools/javac/util/Options;

    sget-object v3, Lorg/openjdk/tools/javac/main/Option;->VERBOSE:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/Options;->isSet(Lorg/openjdk/tools/javac/main/Option;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->verbose:Z

    iget-object v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->options:Lorg/openjdk/tools/javac/util/Options;

    sget-object v3, Lorg/openjdk/tools/javac/main/Option;->PRINTSOURCE:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/Options;->isSet(Lorg/openjdk/tools/javac/main/Option;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->sourceOutput:Z

    iget-object v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->options:Lorg/openjdk/tools/javac/util/Options;

    sget-object v3, Lorg/openjdk/tools/javac/main/Option;->G_CUSTOM:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/Options;->isUnset(Lorg/openjdk/tools/javac/main/Option;)Z

    move-result v2

    const/4 v4, 0x1

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->options:Lorg/openjdk/tools/javac/util/Options;

    const-string v5, "lines"

    invoke-virtual {v2, v3, v5}, Lorg/openjdk/tools/javac/util/Options;->isSet(Lorg/openjdk/tools/javac/main/Option;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    goto :goto_2

    :cond_2
    :goto_1
    move v2, v4

    :goto_2
    iput-boolean v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->lineDebugInfo:Z

    iget-object v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->options:Lorg/openjdk/tools/javac/util/Options;

    sget-object v3, Lorg/openjdk/tools/javac/main/Option;->XJCOV:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/Options;->isSet(Lorg/openjdk/tools/javac/main/Option;)Z

    move-result v2

    if-nez v2, :cond_3

    const-class v2, Lorg/openjdk/javax/tools/DiagnosticListener;

    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    :cond_3
    move v0, v4

    :cond_4
    iput-boolean v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->genEndPos:Z

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->options:Lorg/openjdk/tools/javac/util/Options;

    const-string v2, "dev"

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->devVerbose:Z

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->options:Lorg/openjdk/tools/javac/util/Options;

    const-string v2, "process.packages"

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->processPcks:Z

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->options:Lorg/openjdk/tools/javac/util/Options;

    sget-object v2, Lorg/openjdk/tools/javac/main/Option;->WERROR:Lorg/openjdk/tools/javac/main/Option;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/Options;->isSet(Lorg/openjdk/tools/javac/main/Option;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->werror:Z

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->options:Lorg/openjdk/tools/javac/util/Options;

    const-string v2, "verboseCompilePolicy"

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->verboseCompilePolicy:Z

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->options:Lorg/openjdk/tools/javac/util/Options;

    const-string v2, "should-stop.at"

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->options:Lorg/openjdk/tools/javac/util/Options;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;->valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    move-result-object v0

    sget-object v3, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;->ATTR:Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    if-ne v0, v3, :cond_5

    sget-object v0, Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;->ATTR_ONLY:Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;

    iput-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->compilePolicy:Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->options:Lorg/openjdk/tools/javac/util/Options;

    const-string v3, "compilePolicy"

    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/util/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;->decode(Ljava/lang/String;)Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->compilePolicy:Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;

    :goto_3
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->options:Lorg/openjdk/tools/javac/util/Options;

    const-string v3, "-implicit"

    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/util/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;->decode(Ljava/lang/String;)Lorg/openjdk/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->implicitSourcePolicy:Lorg/openjdk/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->options:Lorg/openjdk/tools/javac/util/Options;

    const-string v3, "failcomplete"

    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->options:Lorg/openjdk/tools/javac/util/Options;

    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/util/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v1

    :cond_6
    iput-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->completionFailureName:Lorg/openjdk/tools/javac/util/Name;

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->options:Lorg/openjdk/tools/javac/util/Options;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->options:Lorg/openjdk/tools/javac/util/Options;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;->valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    move-result-object v0

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->options:Lorg/openjdk/tools/javac/util/Options;

    const-string v1, "should-stop.ifError"

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->options:Lorg/openjdk/tools/javac/util/Options;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;->valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    move-result-object v0

    goto :goto_4

    :cond_8
    sget-object v0, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;->INIT:Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    :goto_4
    iput-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->shouldStopPolicyIfError:Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->options:Lorg/openjdk/tools/javac/util/Options;

    const-string v1, "should-stop.ifNoError"

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Options;->isSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->options:Lorg/openjdk/tools/javac/util/Options;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Options;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;->valueOf(Ljava/lang/String;)Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    move-result-object v0

    goto :goto_5

    :cond_9
    sget-object v0, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;->GENERATE:Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    :goto_5
    iput-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->shouldStopPolicyIfNoError:Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->options:Lorg/openjdk/tools/javac/util/Options;

    const-string v1, "diags.legacy"

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Options;->isUnset(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/RichDiagnosticFormatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Log;->setDiagnosticFormatter(Lorg/openjdk/tools/javac/api/DiagnosticFormatter;)V

    :cond_a
    const-class v0, Lorg/openjdk/tools/javac/platform/PlatformDescription;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/platform/PlatformDescription;

    if-eqz p1, :cond_b

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->closeables:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->closeables:Lorg/openjdk/tools/javac/util/List;

    :cond_b
    new-instance p1, Lorg/openjdk/tools/javac/main/JavaCompiler$1;

    sget-object v2, Lorg/openjdk/tools/javac/code/Kinds$Kind;->ABSENT_TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v5, v0, Lorg/openjdk/tools/javac/util/Names;->empty:Lorg/openjdk/tools/javac/util/Name;

    sget-object v6, Lorg/openjdk/tools/javac/code/Type;->noType:Lorg/openjdk/tools/javac/code/Type$JCNoType;

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object v7, v0, Lorg/openjdk/tools/javac/code/Symtab;->rootPackage:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    const-wide/16 v3, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lorg/openjdk/tools/javac/main/JavaCompiler$1;-><init>(Lorg/openjdk/tools/javac/main/JavaCompiler;Lorg/openjdk/tools/javac/code/Kinds$Kind;JLorg/openjdk/tools/javac/util/Name;Lorg/openjdk/tools/javac/code/Type;Lorg/openjdk/tools/javac/code/Symbol;)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->silentFail:Lorg/openjdk/tools/javac/code/Symbol;

    return-void

    :cond_c
    new-instance p1, Lorg/openjdk/tools/javac/util/Abort;

    invoke-direct {p1}, Lorg/openjdk/tools/javac/util/Abort;-><init>()V

    throw p1
.end method

.method public static synthetic a(Lorg/openjdk/tools/javac/main/JavaCompiler;Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/tools/javac/util/Name;
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->findPackageInFile(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000()Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/main/JavaCompiler;->DEFAULT_COMPILE_POLICY:Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;

    return-object v0
.end method

.method public static synthetic b(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)Lorg/openjdk/tools/javac/util/Name;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->lambda$findPackageInFile$2(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lorg/openjdk/tools/javac/main/JavaCompiler;Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/tools/javac/util/Name;
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->readModuleName(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Lorg/openjdk/tools/javac/main/JavaCompiler;Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->lambda$new$0(Lorg/openjdk/tools/javac/code/Symbol;)V

    return-void
.end method

.method private desugarByFile(Ljava/lang/Iterable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;>;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/comp/Env;

    iget-object v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->compileStates:Lorg/openjdk/tools/javac/comp/CompileStates;

    sget-object v3, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;->FLOW:Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    invoke-virtual {v2, v1, v3}, Lorg/openjdk/tools/javac/comp/CompileStates;->isDone(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->todo:Lorg/openjdk/tools/javac/comp/Todo;

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/comp/Todo;->groupByFile(Lorg/openjdk/tools/javac/comp/Env;)Ljava/util/Queue;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/main/JavaCompiler;->attribute(Ljava/util/Queue;)Ljava/util/Queue;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/main/JavaCompiler;->flow(Ljava/util/Queue;)Ljava/util/Queue;

    :cond_1
    iget-object v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->desugaredEnvs:Ljava/util/HashMap;

    invoke-static {v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/openjdk/tools/javac/main/JavaCompiler;->desugar(Ljava/util/Queue;)Ljava/util/Queue;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static synthetic e(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)Lorg/openjdk/tools/javac/util/Name;
    .locals 0

    invoke-static {p0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->lambda$readModuleName$1(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p0

    return-object p0
.end method

.method private static elapsed(J)J
    .locals 2

    invoke-static {}, Lorg/openjdk/tools/javac/main/JavaCompiler;->now()J

    move-result-wide v0

    sub-long/2addr v0, p0

    return-wide v0
.end method

.method public static explicitAnnotationProcessingRequested(Lorg/openjdk/tools/javac/util/Options;)Z
    .locals 2

    .line 3
    sget-object v0, Lorg/openjdk/tools/javac/main/Option;->PROCESSOR:Lorg/openjdk/tools/javac/main/Option;

    .line 4
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Options;->isSet(Lorg/openjdk/tools/javac/main/Option;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/openjdk/tools/javac/main/Option;->PROCESSOR_PATH:Lorg/openjdk/tools/javac/main/Option;

    .line 5
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Options;->isSet(Lorg/openjdk/tools/javac/main/Option;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/openjdk/tools/javac/main/Option;->PROCESSOR_MODULE_PATH:Lorg/openjdk/tools/javac/main/Option;

    .line 6
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Options;->isSet(Lorg/openjdk/tools/javac/main/Option;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/openjdk/tools/javac/main/Option;->PROC:Lorg/openjdk/tools/javac/main/Option;

    const-string v1, "only"

    .line 7
    invoke-virtual {p0, v0, v1}, Lorg/openjdk/tools/javac/util/Options;->isSet(Lorg/openjdk/tools/javac/main/Option;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/openjdk/tools/javac/main/Option;->XPRINT:Lorg/openjdk/tools/javac/main/Option;

    .line 8
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Options;->isSet(Lorg/openjdk/tools/javac/main/Option;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private findPackageInFile(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/tools/javac/util/Name;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/main/g;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/main/g;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->parseAndGetName(Lorg/openjdk/javax/tools/JavaFileObject;Ljava/util/function/Function;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    return-object p1
.end method

.method public static fullVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "full"

    invoke-static {v0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->version(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/main/JavaCompiler;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/main/JavaCompiler;->compilerKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Lorg/openjdk/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/main/JavaCompiler;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/main/JavaCompiler;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/main/JavaCompiler;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    :cond_0
    return-object v0
.end method

.method private static synthetic lambda$findPackageInFile$2(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)Lorg/openjdk/tools/javac/util/Name;
    .locals 1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->getPackage()Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->getPackage()Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;

    move-result-object p0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCPackageDecl;->getPackageName()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p0

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->fullName(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private synthetic lambda$new$0(Lorg/openjdk/tools/javac/code/Symbol;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;
        }
    .end annotation

    check-cast p1, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {p0, p1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->readSourceFile(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    return-void
.end method

.method private static synthetic lambda$readModuleName$1(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)Lorg/openjdk/tools/javac/util/Name;
    .locals 0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->getModuleDecl()Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/tree/JCTree$JCModuleDecl;->getName()Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;

    move-result-object p0

    invoke-static {p0}, Lorg/openjdk/tools/javac/tree/TreeInfo;->fullName(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static now()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private parseAndGetName(Lorg/openjdk/javax/tools/JavaFileObject;Ljava/util/function/Function;)Lorg/openjdk/tools/javac/util/Name;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            "Ljava/util/function/Function<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;",
            "Lorg/openjdk/tools/javac/util/Name;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/Name;"
        }
    .end annotation

    new-instance v0, Lorg/openjdk/tools/javac/util/Log$DiscardDiagnosticHandler;

    iget-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-direct {v0, v1}, Lorg/openjdk/tools/javac/util/Log$DiscardDiagnosticHandler;-><init>(Lorg/openjdk/tools/javac/util/Log;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1, v1}, Lorg/openjdk/javax/tools/FileObject;->getCharContent(Z)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->parse(Lorg/openjdk/javax/tools/JavaFileObject;Ljava/lang/CharSequence;)Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/util/Name;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/util/Log;->popDiagnosticHandler(Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;)V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/util/Log;->popDiagnosticHandler(Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;)V

    throw p1

    :catch_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/Log;->popDiagnosticHandler(Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private readModuleName(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/tools/javac/util/Name;
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/main/k;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/main/k;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->parseAndGetName(Lorg/openjdk/javax/tools/JavaFileObject;Ljava/util/function/Function;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object p1

    return-object p1
.end method

.method private readSourceFile(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->readSourceFile(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    return-void
.end method

.method private unrecoverableError()Z
    .locals 4

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->deferredDiagnosticHandler:Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;->getDiagnostics()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/util/JCDiagnostic;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->getKind()Lorg/openjdk/javax/tools/Diagnostic$Kind;

    move-result-object v2

    sget-object v3, Lorg/openjdk/javax/tools/Diagnostic$Kind;->ERROR:Lorg/openjdk/javax/tools/Diagnostic$Kind;

    if-ne v2, v3, :cond_0

    sget-object v2, Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;->RECOVERABLE:Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/JCDiagnostic;->isFlagSet(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticFlag;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static version()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "release"

    invoke-static {v0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->version(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static version(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 2
    sget-object v0, Lorg/openjdk/tools/javac/main/JavaCompiler;->versionRB:Ljava/util/ResourceBundle;

    const/4 v1, 0x0

    const-string v2, "version.not.available"

    if-nez v0, :cond_0

    .line 3
    :try_start_0
    const-string v0, "org.openjdk.tools.javac.resources.version"

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/main/JavaCompiler;->versionRB:Ljava/util/ResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    new-array p0, v1, [Ljava/lang/Object;

    invoke-static {v2, p0}, Lorg/openjdk/tools/javac/util/Log;->getLocalizedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    :goto_0
    :try_start_1
    sget-object v0, Lorg/openjdk/tools/javac/main/JavaCompiler;->versionRB:Ljava/util/ResourceBundle;

    invoke-virtual {v0, p0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    .line 6
    :catch_1
    new-array p0, v1, [Ljava/lang/Object;

    invoke-static {v2, p0}, Lorg/openjdk/tools/javac/util/Log;->getLocalizedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public attribute(Ljava/util/Queue;)Ljava/util/Queue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;>;)",
            "Ljava/util/Queue<",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->attribute(Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;->ATTR:Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->stopIfError(Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;Ljava/util/Queue;)Ljava/util/Queue;

    move-result-object p1

    return-object p1
.end method

.method public attribute(Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->compileStates:Lorg/openjdk/tools/javac/comp/CompileStates;

    sget-object v1, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;->ATTR:Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    invoke-virtual {v0, p1, v1}, Lorg/openjdk/tools/javac/comp/CompileStates;->isDone(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 6
    :cond_0
    iget-boolean v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->verboseCompilePolicy:Z

    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[attribute "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->printNote(Ljava/lang/String;)V

    .line 8
    :cond_1
    iget-boolean v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->verbose:Z

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v2, p1, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "checking.attribution"

    invoke-virtual {v0, v3, v2}, Lorg/openjdk/tools/javac/util/Log;->printVerbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 10
    :cond_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->taskListener:Lorg/openjdk/tools/javac/api/MultiTaskListener;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 11
    new-instance v0, Lorg/openjdk/source/util/TaskEvent;

    sget-object v2, Lorg/openjdk/source/util/TaskEvent$Kind;->ANALYZE:Lorg/openjdk/source/util/TaskEvent$Kind;

    iget-object v3, p1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v4, p1, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v4, v4, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v0, v2, v3, v4}, Lorg/openjdk/source/util/TaskEvent;-><init>(Lorg/openjdk/source/util/TaskEvent$Kind;Lorg/openjdk/source/tree/CompilationUnitTree;Lorg/openjdk/javax/lang/model/element/TypeElement;)V

    .line 12
    iget-object v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->taskListener:Lorg/openjdk/tools/javac/api/MultiTaskListener;

    invoke-virtual {v2, v0}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->started(Lorg/openjdk/source/util/TaskEvent;)V

    .line 13
    :cond_3
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v2, p1, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    :goto_0
    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v0

    .line 14
    :try_start_0
    iget-object v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-virtual {v2, p1}, Lorg/openjdk/tools/javac/comp/Attr;->attrib(Lorg/openjdk/tools/javac/comp/Env;)V

    .line 15
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->errorCount()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->shouldStop(Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 16
    iget-object v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    iget-object v3, p1, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/comp/Attr;->postAttr(Lorg/openjdk/tools/javac/tree/JCTree;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 17
    :cond_5
    :goto_1
    iget-object v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->compileStates:Lorg/openjdk/tools/javac/comp/CompileStates;

    invoke-virtual {v2, p1, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    iget-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    return-object p1

    :goto_2
    iget-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    .line 19
    throw p1
.end method

.method public checkReusable()V
    .locals 2

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "attempt to reuse JavaCompiler"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public close()V
    .locals 5

    const-string v0, "fatal.err.cant.close"

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->rootClasses:Lorg/openjdk/tools/javac/util/List;

    iput-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->finder:Lorg/openjdk/tools/javac/code/ClassFinder;

    iput-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->reader:Lorg/openjdk/tools/javac/jvm/ClassReader;

    iput-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iput-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->writer:Lorg/openjdk/tools/javac/jvm/ClassWriter;

    iput-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->enter:Lorg/openjdk/tools/javac/comp/Enter;

    iget-object v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->todo:Lorg/openjdk/tools/javac/comp/Todo;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->clear()V

    :cond_0
    iput-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->todo:Lorg/openjdk/tools/javac/comp/Todo;

    iput-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->parserFactory:Lorg/openjdk/tools/javac/parser/ParserFactory;

    iput-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iput-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->source:Lorg/openjdk/tools/javac/code/Source;

    iput-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    iput-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->chk:Lorg/openjdk/tools/javac/comp/Check;

    iput-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->gen:Lorg/openjdk/tools/javac/jvm/Gen;

    iput-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->flow:Lorg/openjdk/tools/javac/comp/Flow;

    iput-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->transTypes:Lorg/openjdk/tools/javac/comp/TransTypes;

    iput-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->lower:Lorg/openjdk/tools/javac/comp/Lower;

    iput-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    iput-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->types:Lorg/openjdk/tools/javac/code/Types;

    iget-object v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/Log;->flush()V

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    invoke-interface {v3}, Lorg/openjdk/javax/tools/JavaFileManager;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->names:Lorg/openjdk/tools/javac/util/Names;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/util/Names;->dispose()V

    :cond_1
    iput-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->closeables:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/Closeable;

    :try_start_1
    invoke-interface {v3}, Ljava/io/Closeable;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v3, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->diagFactory:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v0

    new-instance v2, Lorg/openjdk/tools/javac/util/FatalError;

    invoke-direct {v2, v0, v1}, Lorg/openjdk/tools/javac/util/FatalError;-><init>(Lorg/openjdk/tools/javac/util/JCDiagnostic;Ljava/lang/Throwable;)V

    throw v2

    :cond_2
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->closeables:Lorg/openjdk/tools/javac/util/List;

    return-void

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    :try_start_2
    new-instance v4, Lorg/openjdk/tools/javac/util/Abort;

    invoke-direct {v4, v3}, Lorg/openjdk/tools/javac/util/Abort;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    iget-object v4, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->names:Lorg/openjdk/tools/javac/util/Names;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lorg/openjdk/tools/javac/util/Names;->dispose()V

    :cond_3
    iput-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->names:Lorg/openjdk/tools/javac/util/Names;

    iget-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->closeables:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/Closeable;

    :try_start_3
    invoke-interface {v4}, Ljava/io/Closeable;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    iget-object v3, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->diagFactory:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v0

    new-instance v2, Lorg/openjdk/tools/javac/util/FatalError;

    invoke-direct {v2, v0, v1}, Lorg/openjdk/tools/javac/util/FatalError;-><init>(Lorg/openjdk/tools/javac/util/JCDiagnostic;Ljava/lang/Throwable;)V

    throw v2

    :cond_4
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->closeables:Lorg/openjdk/tools/javac/util/List;

    throw v3
.end method

.method public compile(Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/Iterable;Ljava/util/Collection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/annotation/processing/Processor;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    const-string v0, "warn"

    const-string v1, "error"

    const-string v2, "total"

    iget-object v3, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->taskListener:Lorg/openjdk/tools/javac/api/MultiTaskListener;

    invoke-virtual {v3}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 3
    iget-object v3, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->taskListener:Lorg/openjdk/tools/javac/api/MultiTaskListener;

    new-instance v4, Lorg/openjdk/source/util/TaskEvent;

    sget-object v5, Lorg/openjdk/source/util/TaskEvent$Kind;->COMPILATION:Lorg/openjdk/source/util/TaskEvent$Kind;

    invoke-direct {v4, v5}, Lorg/openjdk/source/util/TaskEvent;-><init>(Lorg/openjdk/source/util/TaskEvent$Kind;)V

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->started(Lorg/openjdk/source/util/TaskEvent;)V

    :cond_0
    const/4 v3, 0x1

    if-eqz p3, :cond_1

    .line 4
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5
    iput-boolean v3, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->explicitAnnotationProcessingRequested:Z

    .line 6
    :cond_1
    iget-boolean v4, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->hasBeenUsed:Z

    if-eqz v4, :cond_2

    .line 7
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->checkReusable()V

    .line 8
    :cond_2
    iput-boolean v3, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->hasBeenUsed:Z

    .line 9
    iget-object v4, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->options:Lorg/openjdk/tools/javac/util/Options;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/openjdk/tools/javac/main/Option;->XLINT_CUSTOM:Lorg/openjdk/tools/javac/main/Option;

    iget-object v7, v6, Lorg/openjdk/tools/javac/main/Option;->primaryName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "-"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->OPTIONS:Lorg/openjdk/tools/javac/code/Lint$LintCategory;

    iget-object v8, v7, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->option:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v8, "true"

    invoke-virtual {v4, v5, v8}, Lorg/openjdk/tools/javac/util/Options;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v4, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->options:Lorg/openjdk/tools/javac/util/Options;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v6, Lorg/openjdk/tools/javac/main/Option;->primaryName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v7, Lorg/openjdk/tools/javac/code/Lint$LintCategory;->option:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/util/Options;->remove(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lorg/openjdk/tools/javac/main/JavaCompiler;->now()J

    move-result-wide v4

    iput-wide v4, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->start_msec:J

    .line 12
    :try_start_0
    invoke-virtual {p0, p3, p1, p2}, Lorg/openjdk/tools/javac/main/JavaCompiler;->initProcessAnnotations(Ljava/lang/Iterable;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 13
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_3
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v5, 0x2f

    .line 14
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 15
    iget-object v6, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->modules:Lorg/openjdk/tools/javac/comp/Modules;

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lorg/openjdk/tools/javac/comp/Modules;->addExtraAddModules([Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_8

    :catch_0
    move-exception p1

    goto/16 :goto_6

    .line 16
    :cond_4
    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 17
    iget-object v4, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->modules:Lorg/openjdk/tools/javac/comp/Modules;

    filled-new-array {p4}, [Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v4, p4}, Lorg/openjdk/tools/javac/comp/Modules;->addExtraAddModules([Ljava/lang/String;)V

    goto :goto_1

    .line 18
    :cond_5
    sget-object p3, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;->PARSE:Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    .line 19
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->parseFiles(Ljava/lang/Iterable;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->stopIfError(Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->initModules(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    .line 20
    invoke-virtual {p0, p3, p1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->stopIfError(Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->enterTrees(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    .line 22
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/main/JavaCompiler;->processAnnotations(Lorg/openjdk/tools/javac/util/List;Ljava/util/Collection;)V

    .line 23
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->taskListener:Lorg/openjdk/tools/javac/api/MultiTaskListener;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->implicitSourcePolicy:Lorg/openjdk/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

    sget-object p2, Lorg/openjdk/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;->NONE:Lorg/openjdk/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

    if-ne p1, p2, :cond_6

    .line 24
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->todo:Lorg/openjdk/tools/javac/comp/Todo;

    iget-object p2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->inputFiles:Ljava/util/Set;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/comp/Todo;->retainFiles(Ljava/util/Collection;)V

    .line 25
    :cond_6
    sget-object p1, Lorg/openjdk/tools/javac/main/JavaCompiler$2;->$SwitchMap$com$sun$tools$javac$main$JavaCompiler$CompilePolicy:[I

    iget-object p2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->compilePolicy:Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v3, :cond_b

    const/4 p2, 0x2

    if-eq p1, p2, :cond_a

    const/4 p2, 0x3

    if-eq p1, p2, :cond_9

    const/4 p2, 0x4

    if-eq p1, p2, :cond_8

    const/4 p2, 0x5

    if-eq p1, p2, :cond_7

    .line 26
    const-string p1, "unknown compile policy"

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->error(Ljava/lang/String;)V

    goto :goto_4

    .line 27
    :cond_7
    :goto_2
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->todo:Lorg/openjdk/tools/javac/comp/Todo;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_c

    .line 28
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->todo:Lorg/openjdk/tools/javac/comp/Todo;

    invoke-virtual {p1}, Ljava/util/AbstractQueue;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/comp/Env;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->attribute(Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->flow(Lorg/openjdk/tools/javac/comp/Env;)Ljava/util/Queue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->desugar(Ljava/util/Queue;)Ljava/util/Queue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->generate(Ljava/util/Queue;)V

    goto :goto_2

    .line 29
    :cond_8
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->todo:Lorg/openjdk/tools/javac/comp/Todo;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/comp/Todo;->groupByFile()Ljava/util/Queue;

    move-result-object p1

    .line 30
    :goto_3
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_c

    sget-object p2, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;->ATTR:Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/main/JavaCompiler;->shouldStop(Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;)Z

    move-result p2

    if-nez p2, :cond_c

    .line 31
    invoke-interface {p1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Queue;

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/main/JavaCompiler;->attribute(Ljava/util/Queue;)Ljava/util/Queue;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/main/JavaCompiler;->flow(Ljava/util/Queue;)Ljava/util/Queue;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/main/JavaCompiler;->desugar(Ljava/util/Queue;)Ljava/util/Queue;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/main/JavaCompiler;->generate(Ljava/util/Queue;)V

    goto :goto_3

    .line 32
    :cond_9
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->todo:Lorg/openjdk/tools/javac/comp/Todo;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->attribute(Ljava/util/Queue;)Ljava/util/Queue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->flow(Ljava/util/Queue;)Ljava/util/Queue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->desugar(Ljava/util/Queue;)Ljava/util/Queue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->generate(Ljava/util/Queue;)V

    goto :goto_4

    .line 33
    :cond_a
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->todo:Lorg/openjdk/tools/javac/comp/Todo;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->attribute(Ljava/util/Queue;)Ljava/util/Queue;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->flow(Ljava/util/Queue;)Ljava/util/Queue;

    goto :goto_4

    .line 34
    :cond_b
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->todo:Lorg/openjdk/tools/javac/comp/Todo;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->attribute(Ljava/util/Queue;)Ljava/util/Queue;
    :try_end_0
    .catch Lorg/openjdk/tools/javac/util/Abort; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    :cond_c
    :goto_4
    iget-boolean p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->verbose:Z

    if-eqz p1, :cond_d

    .line 36
    iget-wide p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->start_msec:J

    invoke-static {p1, p2}, Lorg/openjdk/tools/javac/main/JavaCompiler;->elapsed(J)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->elapsed_msec:J

    .line 37
    iget-object p3, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, v2, p1}, Lorg/openjdk/tools/javac/util/Log;->printVerbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    :cond_d
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->reportDeferredDiagnostics()V

    .line 39
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/Log;->hasDiagnosticListener()Z

    move-result p1

    if-nez p1, :cond_e

    .line 40
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->errorCount()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->printCount(Ljava/lang/String;I)V

    .line 41
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->warningCount()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->printCount(Ljava/lang/String;I)V

    .line 42
    :cond_e
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->taskListener:Lorg/openjdk/tools/javac/api/MultiTaskListener;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_f

    .line 43
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->taskListener:Lorg/openjdk/tools/javac/api/MultiTaskListener;

    new-instance p2, Lorg/openjdk/source/util/TaskEvent;

    sget-object p3, Lorg/openjdk/source/util/TaskEvent$Kind;->COMPILATION:Lorg/openjdk/source/util/TaskEvent$Kind;

    invoke-direct {p2, p3}, Lorg/openjdk/source/util/TaskEvent;-><init>(Lorg/openjdk/source/util/TaskEvent$Kind;)V

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->finished(Lorg/openjdk/source/util/TaskEvent;)V

    .line 44
    :cond_f
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->close()V

    .line 45
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->procEnvImpl:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    if-eqz p1, :cond_14

    .line 46
    :goto_5
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->close()V

    goto :goto_7

    .line 47
    :goto_6
    :try_start_1
    iget-boolean p2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->devVerbose:Z

    if-eqz p2, :cond_10

    .line 48
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :cond_10
    iget-boolean p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->verbose:Z

    if-eqz p1, :cond_11

    .line 50
    iget-wide p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->start_msec:J

    invoke-static {p1, p2}, Lorg/openjdk/tools/javac/main/JavaCompiler;->elapsed(J)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->elapsed_msec:J

    .line 51
    iget-object p3, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, v2, p1}, Lorg/openjdk/tools/javac/util/Log;->printVerbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    :cond_11
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->reportDeferredDiagnostics()V

    .line 53
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/Log;->hasDiagnosticListener()Z

    move-result p1

    if-nez p1, :cond_12

    .line 54
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->errorCount()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->printCount(Ljava/lang/String;I)V

    .line 55
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->warningCount()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->printCount(Ljava/lang/String;I)V

    .line 56
    :cond_12
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->taskListener:Lorg/openjdk/tools/javac/api/MultiTaskListener;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_13

    .line 57
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->taskListener:Lorg/openjdk/tools/javac/api/MultiTaskListener;

    new-instance p2, Lorg/openjdk/source/util/TaskEvent;

    sget-object p3, Lorg/openjdk/source/util/TaskEvent$Kind;->COMPILATION:Lorg/openjdk/source/util/TaskEvent$Kind;

    invoke-direct {p2, p3}, Lorg/openjdk/source/util/TaskEvent;-><init>(Lorg/openjdk/source/util/TaskEvent$Kind;)V

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->finished(Lorg/openjdk/source/util/TaskEvent;)V

    .line 58
    :cond_13
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->close()V

    .line 59
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->procEnvImpl:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    if-eqz p1, :cond_14

    goto :goto_5

    :cond_14
    :goto_7
    return-void

    .line 60
    :goto_8
    iget-boolean p2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->verbose:Z

    if-eqz p2, :cond_15

    .line 61
    iget-wide p2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->start_msec:J

    invoke-static {p2, p3}, Lorg/openjdk/tools/javac/main/JavaCompiler;->elapsed(J)J

    move-result-wide p2

    iput-wide p2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->elapsed_msec:J

    .line 62
    iget-object p4, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p4, v2, p2}, Lorg/openjdk/tools/javac/util/Log;->printVerbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    :cond_15
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->reportDeferredDiagnostics()V

    .line 64
    iget-object p2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/util/Log;->hasDiagnosticListener()Z

    move-result p2

    if-nez p2, :cond_16

    .line 65
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->errorCount()I

    move-result p2

    invoke-virtual {p0, v1, p2}, Lorg/openjdk/tools/javac/main/JavaCompiler;->printCount(Ljava/lang/String;I)V

    .line 66
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->warningCount()I

    move-result p2

    invoke-virtual {p0, v0, p2}, Lorg/openjdk/tools/javac/main/JavaCompiler;->printCount(Ljava/lang/String;I)V

    .line 67
    :cond_16
    iget-object p2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->taskListener:Lorg/openjdk/tools/javac/api/MultiTaskListener;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_17

    .line 68
    iget-object p2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->taskListener:Lorg/openjdk/tools/javac/api/MultiTaskListener;

    new-instance p3, Lorg/openjdk/source/util/TaskEvent;

    sget-object p4, Lorg/openjdk/source/util/TaskEvent$Kind;->COMPILATION:Lorg/openjdk/source/util/TaskEvent$Kind;

    invoke-direct {p3, p4}, Lorg/openjdk/source/util/TaskEvent;-><init>(Lorg/openjdk/source/util/TaskEvent$Kind;)V

    invoke-virtual {p2, p3}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->finished(Lorg/openjdk/source/util/TaskEvent;)V

    .line 69
    :cond_17
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->close()V

    .line 70
    iget-object p2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->procEnvImpl:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    if-eqz p2, :cond_18

    .line 71
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->close()V

    .line 72
    :cond_18
    throw p1
.end method

.method public compile(Lorg/openjdk/tools/javac/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/openjdk/tools/javac/main/JavaCompiler;->compile(Ljava/util/Collection;Ljava/util/Collection;Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method public desugar(Ljava/util/Queue;)Ljava/util/Queue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;>;)",
            "Ljava/util/Queue<",
            "Lorg/openjdk/tools/javac/util/Pair<",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/comp/Env;

    .line 3
    invoke-virtual {p0, v1, v0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->desugar(Lorg/openjdk/tools/javac/comp/Env;Ljava/util/Queue;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;->FLOW:Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->stopIfError(Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;Ljava/util/Queue;)Ljava/util/Queue;

    move-result-object p1

    return-object p1
.end method

.method public desugar(Lorg/openjdk/tools/javac/comp/Env;Ljava/util/Queue;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Ljava/util/Queue<",
            "Lorg/openjdk/tools/javac/util/Pair<",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;",
            ">;>;)V"
        }
    .end annotation

    .line 5
    sget-object v0, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;->TRANSTYPES:Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->shouldStop(Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->implicitSourcePolicy:Lorg/openjdk/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

    sget-object v1, Lorg/openjdk/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;->NONE:Lorg/openjdk/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->inputFiles:Ljava/util/Set;

    iget-object v1, p1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 8
    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->modules:Lorg/openjdk/tools/javac/comp/Modules;

    iget-boolean v1, v0, Lorg/openjdk/tools/javac/comp/Modules;->multiModuleMode:Z

    if-nez v1, :cond_2

    iget-object v1, p1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/Modules;->getDefaultModule()Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object v0

    if-eq v1, v0, :cond_2

    return-void

    .line 9
    :cond_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->compileStates:Lorg/openjdk/tools/javac/comp/CompileStates;

    sget-object v1, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;->LOWER:Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    invoke-virtual {v0, p1, v1}, Lorg/openjdk/tools/javac/comp/CompileStates;->isDone(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->desugaredEnvs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p2, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 11
    :cond_3
    new-instance v0, Lorg/openjdk/tools/javac/main/JavaCompiler$1ScanNested;

    invoke-direct {v0, p0, p1}, Lorg/openjdk/tools/javac/main/JavaCompiler$1ScanNested;-><init>(Lorg/openjdk/tools/javac/main/JavaCompiler;Lorg/openjdk/tools/javac/comp/Env;)V

    .line 12
    iget-object v1, p1, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/tree/TreeScanner;->scan(Lorg/openjdk/tools/javac/tree/JCTree;)V

    .line 13
    iget-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->compilePolicy:Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;

    sget-object v2, Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;->BY_FILE:Lorg/openjdk/tools/javac/main/JavaCompiler$CompilePolicy;

    if-ne v1, v2, :cond_4

    .line 14
    iget-object v1, v0, Lorg/openjdk/tools/javac/main/JavaCompiler$1ScanNested;->dependencies:Ljava/util/Set;

    invoke-direct {p0, v1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->desugarByFile(Ljava/lang/Iterable;)V

    goto :goto_1

    .line 15
    :cond_4
    iget-object v1, v0, Lorg/openjdk/tools/javac/main/JavaCompiler$1ScanNested;->dependencies:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/comp/Env;

    .line 16
    iget-object v3, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->compileStates:Lorg/openjdk/tools/javac/comp/CompileStates;

    sget-object v4, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;->FLOW:Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    invoke-virtual {v3, v2, v4}, Lorg/openjdk/tools/javac/comp/CompileStates;->isDone(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 17
    iget-object v3, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->desugaredEnvs:Ljava/util/HashMap;

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/main/JavaCompiler;->attribute(Lorg/openjdk/tools/javac/comp/Env;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/openjdk/tools/javac/main/JavaCompiler;->flow(Lorg/openjdk/tools/javac/comp/Env;)Ljava/util/Queue;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/openjdk/tools/javac/main/JavaCompiler;->desugar(Ljava/util/Queue;)Ljava/util/Queue;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 18
    :cond_6
    :goto_1
    sget-object v1, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;->TRANSTYPES:Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->shouldStop(Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;)Z

    move-result v2

    if-eqz v2, :cond_7

    return-void

    .line 19
    :cond_7
    iget-boolean v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->verboseCompilePolicy:Z

    if-eqz v2, :cond_8

    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[desugar "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/main/JavaCompiler;->printNote(Ljava/lang/String;)V

    .line 21
    :cond_8
    iget-object v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v3, p1, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    if-eqz v3, :cond_9

    goto :goto_2

    :cond_9
    iget-object v3, p1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    :goto_2
    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v2

    .line 22
    :try_start_0
    iget-object v3, p1, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    .line 23
    iget-object v4, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    .line 24
    iget-object v4, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v5, p1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    invoke-virtual {v4, v5}, Lorg/openjdk/tools/javac/tree/TreeMaker;->forToplevel(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v4

    .line 25
    iget-object v5, p1, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v6, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->PACKAGEDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v5

    if-nez v5, :cond_13

    iget-object v5, p1, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    sget-object v6, Lorg/openjdk/tools/javac/tree/JCTree$Tag;->MODULEDEF:Lorg/openjdk/tools/javac/tree/JCTree$Tag;

    invoke-virtual {v5, v6}, Lorg/openjdk/tools/javac/tree/JCTree;->hasTag(Lorg/openjdk/tools/javac/tree/JCTree$Tag;)Z

    move-result v5

    if-eqz v5, :cond_a

    goto/16 :goto_5

    .line 26
    :cond_a
    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->shouldStop(Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_b

    .line 27
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    return-void

    .line 28
    :cond_b
    :try_start_1
    iget-object v5, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->transTypes:Lorg/openjdk/tools/javac/comp/TransTypes;

    iget-object v6, p1, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v5, v6, v4}, Lorg/openjdk/tools/javac/comp/TransTypes;->translateTopLevelClass(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/TreeMaker;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v5

    iput-object v5, p1, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    .line 29
    iget-object v5, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->compileStates:Lorg/openjdk/tools/javac/comp/CompileStates;

    invoke-virtual {v5, p1, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->source:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Source;->allowLambda()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-boolean v0, v0, Lorg/openjdk/tools/javac/main/JavaCompiler$1ScanNested;->hasLambdas:Z

    if-eqz v0, :cond_d

    .line 31
    sget-object v0, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;->UNLAMBDA:Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->shouldStop(Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_c

    .line 32
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    return-void

    .line 33
    :cond_c
    :try_start_2
    iget-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->context:Lorg/openjdk/tools/javac/util/Context;

    invoke-static {v1}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/comp/LambdaToMethod;

    move-result-object v1

    iget-object v5, p1, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v1, p1, v5, v4}, Lorg/openjdk/tools/javac/comp/LambdaToMethod;->translateTopLevelClass(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/TreeMaker;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object v1

    iput-object v1, p1, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    .line 34
    iget-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->compileStates:Lorg/openjdk/tools/javac/comp/CompileStates;

    invoke-virtual {v1, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    .line 35
    :cond_d
    :goto_3
    sget-object v0, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;->LOWER:Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->shouldStop(Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_e

    .line 36
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    return-void

    .line 37
    :cond_e
    :try_start_3
    iget-boolean v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->sourceOutput:Z

    if-eqz v1, :cond_10

    .line 38
    iget-object v0, p1, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    .line 39
    instance-of v1, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->rootClasses:Lorg/openjdk/tools/javac/util/List;

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    .line 40
    invoke-virtual {v1, v3}, Lorg/openjdk/tools/javac/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 41
    new-instance v1, Lorg/openjdk/tools/javac/util/Pair;

    invoke-direct {v1, p1, v0}, Lorg/openjdk/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 42
    :cond_f
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    return-void

    .line 43
    :cond_10
    :try_start_4
    iget-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->lower:Lorg/openjdk/tools/javac/comp/Lower;

    iget-object v3, p1, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v1, p1, v3, v4}, Lorg/openjdk/tools/javac/comp/Lower;->translateTopLevelClass(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/TreeMaker;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v1

    .line 44
    iget-object v3, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->compileStates:Lorg/openjdk/tools/javac/comp/CompileStates;

    invoke-virtual {v3, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->shouldStop(Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_11

    .line 46
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    return-void

    .line 47
    :cond_11
    :goto_4
    :try_start_5
    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 48
    iget-object v0, v1, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    .line 49
    new-instance v3, Lorg/openjdk/tools/javac/util/Pair;

    invoke-direct {v3, p1, v0}, Lorg/openjdk/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v1, v1, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 51
    :cond_12
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    return-void

    .line 52
    :cond_13
    :goto_5
    :try_start_6
    iget-boolean v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->sourceOutput:Z

    if-nez v0, :cond_15

    .line 53
    sget-object v0, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;->LOWER:Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->shouldStop(Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;)Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v0, :cond_14

    .line 54
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    return-void

    .line 55
    :cond_14
    :try_start_7
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->lower:Lorg/openjdk/tools/javac/comp/Lower;

    iget-object v1, p1, Lorg/openjdk/tools/javac/comp/Env;->tree:Lorg/openjdk/tools/javac/tree/JCTree;

    invoke-virtual {v0, p1, v1, v4}, Lorg/openjdk/tools/javac/comp/Lower;->translateTopLevelClass(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/TreeMaker;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    .line 56
    iget-object v1, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    if-eqz v1, :cond_15

    .line 57
    iget-object v1, v0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v1

    invoke-static {v1}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    .line 58
    new-instance v1, Lorg/openjdk/tools/javac/util/Pair;

    iget-object v0, v0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    invoke-direct {v1, p1, v0}, Lorg/openjdk/tools/javac/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p2, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 59
    :cond_15
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    return-void

    :goto_6
    iget-object p2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    .line 60
    throw p1
.end method

.method public enterDone()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->enterDone:Z

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->annotate:Lorg/openjdk/tools/javac/comp/Annotate;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/Annotate;->enterDone()V

    return-void
.end method

.method public enterTrees(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->taskListener:Lorg/openjdk/tools/javac/api/MultiTaskListener;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    new-instance v2, Lorg/openjdk/source/util/TaskEvent;

    sget-object v3, Lorg/openjdk/source/util/TaskEvent$Kind;->ENTER:Lorg/openjdk/source/util/TaskEvent$Kind;

    invoke-direct {v2, v3, v1}, Lorg/openjdk/source/util/TaskEvent;-><init>(Lorg/openjdk/source/util/TaskEvent$Kind;Lorg/openjdk/source/tree/CompilationUnitTree;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->taskListener:Lorg/openjdk/tools/javac/api/MultiTaskListener;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->started(Lorg/openjdk/source/util/TaskEvent;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->enter:Lorg/openjdk/tools/javac/comp/Enter;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/comp/Enter;->main(Lorg/openjdk/tools/javac/util/List;)V

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->enterDone()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->taskListener:Lorg/openjdk/tools/javac/api/MultiTaskListener;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    new-instance v2, Lorg/openjdk/source/util/TaskEvent;

    sget-object v3, Lorg/openjdk/source/util/TaskEvent$Kind;->ENTER:Lorg/openjdk/source/util/TaskEvent$Kind;

    invoke-direct {v2, v3, v1}, Lorg/openjdk/source/util/TaskEvent;-><init>(Lorg/openjdk/source/util/TaskEvent$Kind;Lorg/openjdk/source/tree/CompilationUnitTree;)V

    iget-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->taskListener:Lorg/openjdk/tools/javac/api/MultiTaskListener;

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->finished(Lorg/openjdk/source/util/TaskEvent;)V

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->sourceOutput:Z

    if-eqz v0, :cond_5

    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->defs:Lorg/openjdk/tools/javac/util/List;

    :goto_2
    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v2, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    instance-of v4, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    if-eqz v4, :cond_3

    check-cast v3, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    invoke-virtual {v0, v3}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    :cond_3
    iget-object v2, v2, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->rootClasses:Lorg/openjdk/tools/javac/util/List;

    :cond_5
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->inputFiles:Ljava/util/Set;

    iget-object v1, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    return-object p1
.end method

.method public enterTreesIfNeeded(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;->ATTR:Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->shouldStop(Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->initModules(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->enterTrees(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public errorCount()I
    .locals 3

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->werror:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    iget v1, v0, Lorg/openjdk/tools/javac/util/Log;->nerrors:I

    if-nez v1, :cond_0

    iget v1, v0, Lorg/openjdk/tools/javac/util/Log;->nwarnings:I

    if-lez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "warnings.and.werror"

    invoke-virtual {v0, v2, v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    iget v0, v0, Lorg/openjdk/tools/javac/util/Log;->nerrors:I

    return v0
.end method

.method public explicitAnnotationProcessingRequested()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->explicitAnnotationProcessingRequested:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->options:Lorg/openjdk/tools/javac/util/Options;

    .line 2
    invoke-static {v0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->explicitAnnotationProcessingRequested(Lorg/openjdk/tools/javac/util/Options;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public flow(Ljava/util/Queue;)Ljava/util/Queue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;>;)",
            "Ljava/util/Queue<",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/openjdk/tools/javac/comp/Env;

    .line 3
    invoke-virtual {p0, v1, v0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->flow(Lorg/openjdk/tools/javac/comp/Env;Ljava/util/Queue;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;->FLOW:Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->stopIfError(Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;Ljava/util/Queue;)Ljava/util/Queue;

    move-result-object p1

    return-object p1
.end method

.method public flow(Lorg/openjdk/tools/javac/comp/Env;)Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;)",
            "Ljava/util/Queue<",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;>;"
        }
    .end annotation

    .line 5
    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    .line 6
    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->flow(Lorg/openjdk/tools/javac/comp/Env;Ljava/util/Queue;)V

    .line 7
    sget-object p1, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;->FLOW:Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->stopIfError(Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;Ljava/util/Queue;)Ljava/util/Queue;

    move-result-object p1

    return-object p1
.end method

.method public flow(Lorg/openjdk/tools/javac/comp/Env;Ljava/util/Queue;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Ljava/util/Queue<",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;>;)V"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->compileStates:Lorg/openjdk/tools/javac/comp/CompileStates;

    sget-object v1, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;->FLOW:Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    invoke-virtual {v0, p1, v1}, Lorg/openjdk/tools/javac/comp/CompileStates;->isDone(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void

    .line 10
    :cond_0
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->shouldStop(Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 11
    iget-object p2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->taskListener:Lorg/openjdk/tools/javac/api/MultiTaskListener;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    .line 12
    new-instance p2, Lorg/openjdk/source/util/TaskEvent;

    sget-object v0, Lorg/openjdk/source/util/TaskEvent$Kind;->ANALYZE:Lorg/openjdk/source/util/TaskEvent$Kind;

    iget-object v1, p1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {p2, v0, v1, p1}, Lorg/openjdk/source/util/TaskEvent;-><init>(Lorg/openjdk/source/util/TaskEvent$Kind;Lorg/openjdk/source/tree/CompilationUnitTree;Lorg/openjdk/javax/lang/model/element/TypeElement;)V

    .line 13
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->taskListener:Lorg/openjdk/tools/javac/api/MultiTaskListener;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->finished(Lorg/openjdk/source/util/TaskEvent;)V

    :cond_1
    return-void

    .line 14
    :cond_2
    :try_start_1
    iget-boolean v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->verboseCompilePolicy:Z

    if-eqz v0, :cond_3

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[flow "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->printNote(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto/16 :goto_2

    .line 16
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v2, p1, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    iget-object v2, p1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v2, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    :goto_1
    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :try_start_2
    iget-object v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->at(I)Lorg/openjdk/tools/javac/tree/TreeMaker;

    .line 18
    iget-object v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v3, p1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->forToplevel(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)Lorg/openjdk/tools/javac/tree/TreeMaker;

    move-result-object v2

    .line 19
    iget-object v3, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->flow:Lorg/openjdk/tools/javac/comp/Flow;

    invoke-virtual {v3, p1, v2}, Lorg/openjdk/tools/javac/comp/Flow;->analyzeTree(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/TreeMaker;)V

    .line 20
    iget-object v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->compileStates:Lorg/openjdk/tools/javac/comp/CompileStates;

    invoke-virtual {v2, p1, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-virtual {p0, v1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->shouldStop(Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_6

    .line 22
    :try_start_3
    iget-object p2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 23
    iget-object p2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->taskListener:Lorg/openjdk/tools/javac/api/MultiTaskListener;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_5

    .line 24
    new-instance p2, Lorg/openjdk/source/util/TaskEvent;

    sget-object v0, Lorg/openjdk/source/util/TaskEvent$Kind;->ANALYZE:Lorg/openjdk/source/util/TaskEvent$Kind;

    iget-object v1, p1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {p2, v0, v1, p1}, Lorg/openjdk/source/util/TaskEvent;-><init>(Lorg/openjdk/source/util/TaskEvent$Kind;Lorg/openjdk/source/tree/CompilationUnitTree;Lorg/openjdk/javax/lang/model/element/TypeElement;)V

    .line 25
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->taskListener:Lorg/openjdk/tools/javac/api/MultiTaskListener;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->finished(Lorg/openjdk/source/util/TaskEvent;)V

    :cond_5
    return-void

    .line 26
    :cond_6
    :try_start_4
    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 27
    :try_start_5
    iget-object p2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 28
    iget-object p2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->taskListener:Lorg/openjdk/tools/javac/api/MultiTaskListener;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_7

    .line 29
    new-instance p2, Lorg/openjdk/source/util/TaskEvent;

    sget-object v0, Lorg/openjdk/source/util/TaskEvent$Kind;->ANALYZE:Lorg/openjdk/source/util/TaskEvent$Kind;

    iget-object v1, p1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {p2, v0, v1, p1}, Lorg/openjdk/source/util/TaskEvent;-><init>(Lorg/openjdk/source/util/TaskEvent$Kind;Lorg/openjdk/source/tree/CompilationUnitTree;Lorg/openjdk/javax/lang/model/element/TypeElement;)V

    .line 30
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->taskListener:Lorg/openjdk/tools/javac/api/MultiTaskListener;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->finished(Lorg/openjdk/source/util/TaskEvent;)V

    :cond_7
    return-void

    :catchall_1
    move-exception p2

    .line 31
    :try_start_6
    iget-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    .line 32
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 33
    :goto_2
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->taskListener:Lorg/openjdk/tools/javac/api/MultiTaskListener;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 34
    new-instance v0, Lorg/openjdk/source/util/TaskEvent;

    sget-object v1, Lorg/openjdk/source/util/TaskEvent$Kind;->ANALYZE:Lorg/openjdk/source/util/TaskEvent$Kind;

    iget-object v2, p1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v0, v1, v2, p1}, Lorg/openjdk/source/util/TaskEvent;-><init>(Lorg/openjdk/source/util/TaskEvent$Kind;Lorg/openjdk/source/tree/CompilationUnitTree;Lorg/openjdk/javax/lang/model/element/TypeElement;)V

    .line 35
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->taskListener:Lorg/openjdk/tools/javac/api/MultiTaskListener;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->finished(Lorg/openjdk/source/util/TaskEvent;)V

    .line 36
    :cond_8
    throw p2
.end method

.method public genCode(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)Lorg/openjdk/javax/tools/JavaFileObject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;",
            ")",
            "Lorg/openjdk/javax/tools/JavaFileObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->gen:Lorg/openjdk/tools/javac/jvm/Gen;

    invoke-virtual {v1, p1, p2}, Lorg/openjdk/tools/javac/jvm/Gen;->genClass(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->errorCount()I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->writer:Lorg/openjdk/tools/javac/jvm/ClassWriter;

    iget-object v1, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/jvm/ClassWriter;->writeClass(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object p1
    :try_end_0
    .catch Lorg/openjdk/tools/javac/jvm/ClassWriter$PoolOverflow; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/openjdk/tools/javac/jvm/ClassWriter$StringOverflow; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    :goto_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lorg/openjdk/tools/javac/comp/Check;->completionError(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;)Lorg/openjdk/tools/javac/code/Type;

    goto :goto_2

    :goto_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p2

    iget-object p1, p1, Lorg/openjdk/tools/javac/jvm/ClassWriter$StringOverflow;->value:Ljava/lang/String;

    const/16 v2, 0x14

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "limit.string.overflow"

    invoke-virtual {v1, p2, v0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :catch_2
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p2

    const-string v1, "limit.pool"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v1, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public generate(Ljava/util/Queue;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lorg/openjdk/tools/javac/util/Pair<",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->generate(Ljava/util/Queue;Ljava/util/Queue;)V

    return-void
.end method

.method public generate(Ljava/util/Queue;Ljava/util/Queue;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lorg/openjdk/tools/javac/util/Pair<",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;",
            ">;>;",
            "Ljava/util/Queue<",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;)V"
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;->GENERATE:Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->shouldStop(Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/util/Pair;

    .line 4
    iget-object v1, v0, Lorg/openjdk/tools/javac/util/Pair;->fst:Ljava/lang/Object;

    check-cast v1, Lorg/openjdk/tools/javac/comp/Env;

    .line 5
    iget-object v0, v0, Lorg/openjdk/tools/javac/util/Pair;->snd:Ljava/lang/Object;

    check-cast v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    .line 6
    iget-boolean v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->verboseCompilePolicy:Z

    if-eqz v2, :cond_3

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[generate "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->sourceOutput:Z

    if-eqz v3, :cond_2

    const-string v3, " source"

    goto :goto_1

    :cond_2
    const-string v3, "code"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/main/JavaCompiler;->printNote(Ljava/lang/String;)V

    .line 8
    :cond_3
    iget-object v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->taskListener:Lorg/openjdk/tools/javac/api/MultiTaskListener;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 9
    new-instance v2, Lorg/openjdk/source/util/TaskEvent;

    sget-object v3, Lorg/openjdk/source/util/TaskEvent$Kind;->GENERATE:Lorg/openjdk/source/util/TaskEvent$Kind;

    iget-object v4, v1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v5, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v2, v3, v4, v5}, Lorg/openjdk/source/util/TaskEvent;-><init>(Lorg/openjdk/source/util/TaskEvent$Kind;Lorg/openjdk/source/tree/CompilationUnitTree;Lorg/openjdk/javax/lang/model/element/TypeElement;)V

    .line 10
    iget-object v3, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->taskListener:Lorg/openjdk/tools/javac/api/MultiTaskListener;

    invoke-virtual {v3, v2}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->started(Lorg/openjdk/source/util/TaskEvent;)V

    .line 11
    :cond_4
    iget-object v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v3, v1, Lorg/openjdk/tools/javac/comp/Env;->enclClass:Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v3, v3, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    iget-object v3, v1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v3, v3, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    :goto_2
    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v2

    .line 12
    :try_start_0
    iget-boolean v3, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->sourceOutput:Z

    if-eqz v3, :cond_6

    .line 13
    invoke-virtual {p0, v1, v0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->printSource(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v3

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    goto :goto_4

    .line 14
    :cond_6
    iget-object v3, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    sget-object v4, Lorg/openjdk/javax/tools/StandardLocation;->NATIVE_HEADER_OUTPUT:Lorg/openjdk/javax/tools/StandardLocation;

    invoke-interface {v3, v4}, Lorg/openjdk/javax/tools/JavaFileManager;->hasLocation(Lorg/openjdk/javax/tools/JavaFileManager$Location;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->jniWriter:Lorg/openjdk/tools/javac/jvm/JNIWriter;

    iget-object v4, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    .line 15
    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/jvm/JNIWriter;->needsHeader(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 16
    iget-object v3, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->jniWriter:Lorg/openjdk/tools/javac/jvm/JNIWriter;

    iget-object v4, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v3, v4}, Lorg/openjdk/tools/javac/jvm/JNIWriter;->write(Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Lorg/openjdk/javax/tools/FileObject;

    .line 17
    :cond_7
    invoke-virtual {p0, v1, v0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->genCode(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v3

    :goto_3
    if-eqz p2, :cond_8

    if-eqz v3, :cond_8

    .line 18
    invoke-interface {p2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :cond_8
    iget-object v3, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v3, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    .line 20
    iget-object v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->taskListener:Lorg/openjdk/tools/javac/api/MultiTaskListener;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 21
    new-instance v2, Lorg/openjdk/source/util/TaskEvent;

    sget-object v3, Lorg/openjdk/source/util/TaskEvent$Kind;->GENERATE:Lorg/openjdk/source/util/TaskEvent$Kind;

    iget-object v1, v1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-direct {v2, v3, v1, v0}, Lorg/openjdk/source/util/TaskEvent;-><init>(Lorg/openjdk/source/util/TaskEvent$Kind;Lorg/openjdk/source/tree/CompilationUnitTree;Lorg/openjdk/javax/lang/model/element/TypeElement;)V

    .line 22
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->taskListener:Lorg/openjdk/tools/javac/api/MultiTaskListener;

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->finished(Lorg/openjdk/source/util/TaskEvent;)V

    goto/16 :goto_0

    .line 23
    :goto_4
    :try_start_1
    iget-object p2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object v1

    const-string v3, "class.cant.write"

    iget-object v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    .line 24
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 25
    invoke-virtual {p2, v1, v3, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    return-void

    :goto_5
    iget-object p2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    .line 27
    throw p1

    :cond_9
    return-void
.end method

.method public initModules(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->modules:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/comp/Modules;->initModules(Lorg/openjdk/tools/javac/util/List;)V

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->enterDone()V

    :cond_0
    return-object p1
.end method

.method public initProcessAnnotations(Ljava/lang/Iterable;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/openjdk/javax/annotation/processing/Processor;",
            ">;",
            "Ljava/util/Collection<",
            "+",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->options:Lorg/openjdk/tools/javac/util/Options;

    sget-object v1, Lorg/openjdk/tools/javac/main/Option;->PROC:Lorg/openjdk/tools/javac/main/Option;

    const-string v2, "none"

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/util/Options;->isSet(Lorg/openjdk/tools/javac/main/Option;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->processAnnotations:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->procEnvImpl:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->context:Lorg/openjdk/tools/javac/util/Context;

    invoke-static {v0}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->procEnvImpl:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->setProcessors(Ljava/lang/Iterable;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->procEnvImpl:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->atLeastOneProcessor()Z

    move-result p1

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->processAnnotations:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->options:Lorg/openjdk/tools/javac/util/Options;

    const-string v0, "parameters"

    invoke-virtual {p1, v0, v0}, Lorg/openjdk/tools/javac/util/Options;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->reader:Lorg/openjdk/tools/javac/jvm/ClassReader;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/openjdk/tools/javac/jvm/ClassReader;->saveParameterNames:Z

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->keepComments:Z

    iput-boolean v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->genEndPos:Z

    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->taskListener:Lorg/openjdk/tools/javac/api/MultiTaskListener;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->taskListener:Lorg/openjdk/tools/javac/api/MultiTaskListener;

    new-instance v0, Lorg/openjdk/source/util/TaskEvent;

    sget-object v1, Lorg/openjdk/source/util/TaskEvent$Kind;->ANNOTATION_PROCESSING:Lorg/openjdk/source/util/TaskEvent$Kind;

    invoke-direct {v0, v1}, Lorg/openjdk/source/util/TaskEvent;-><init>(Lorg/openjdk/source/util/TaskEvent$Kind;)V

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->started(Lorg/openjdk/source/util/TaskEvent;)V

    :cond_1
    new-instance p1, Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-direct {p1, v0}, Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;-><init>(Lorg/openjdk/tools/javac/util/Log;)V

    iput-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->deferredDiagnosticHandler:Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;

    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->procEnvImpl:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->getFiler()Lorg/openjdk/tools/javac/processing/JavacFiler;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lorg/openjdk/tools/javac/processing/JavacFiler;->setInitialState(Ljava/util/Collection;Ljava/util/Collection;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->procEnvImpl:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->close()V

    :cond_3
    :goto_0
    return-void
.end method

.method public isEnterDone()Z
    .locals 1

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->enterDone:Z

    return v0
.end method

.method public keepComments()Z
    .locals 1

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->keepComments:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->sourceOutput:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public newRound()V
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->inputFiles:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->todo:Lorg/openjdk/tools/javac/comp/Todo;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    return-void
.end method

.method public parse(Ljava/lang/String;)Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 20
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    check-cast v0, Lorg/openjdk/tools/javac/file/JavacFileManager;

    .line 21
    invoke-static {p1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/file/JavacFileManager;->getJavaFileObjectsFromStrings(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->parse(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    move-result-object p1

    return-object p1
.end method

.method public parse(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;
    .locals 4

    .line 22
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v0

    .line 23
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->readSource(Lorg/openjdk/javax/tools/JavaFileObject;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->parse(Lorg/openjdk/javax/tools/JavaFileObject;Ljava/lang/CharSequence;)Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    move-result-object v1

    .line 24
    iget-object v2, v1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->endPositions:Lorg/openjdk/tools/javac/tree/EndPosTable;

    if-eqz v2, :cond_0

    .line 25
    iget-object v3, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v3, p1, v2}, Lorg/openjdk/tools/javac/util/Log;->setEndPosTable(Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/tools/javac/tree/EndPosTable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    return-object v1

    :goto_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    .line 27
    throw p1
.end method

.method public parse(Lorg/openjdk/javax/tools/JavaFileObject;Ljava/lang/CharSequence;)Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;
    .locals 9

    .line 1
    invoke-static {}, Lorg/openjdk/tools/javac/main/JavaCompiler;->now()J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TopLevel(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    move-result-object v2

    if-eqz p2, :cond_2

    .line 3
    iget-boolean v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->verbose:Z

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string v3, "parsing.started"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/openjdk/tools/javac/util/Log;->printVerbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 5
    :cond_0
    iget-object v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->taskListener:Lorg/openjdk/tools/javac/api/MultiTaskListener;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    new-instance v2, Lorg/openjdk/source/util/TaskEvent;

    sget-object v3, Lorg/openjdk/source/util/TaskEvent$Kind;->PARSE:Lorg/openjdk/source/util/TaskEvent$Kind;

    invoke-direct {v2, v3, p1}, Lorg/openjdk/source/util/TaskEvent;-><init>(Lorg/openjdk/source/util/TaskEvent$Kind;Lorg/openjdk/javax/tools/JavaFileObject;)V

    .line 7
    iget-object v3, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->taskListener:Lorg/openjdk/tools/javac/api/MultiTaskListener;

    invoke-virtual {v3, v2}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->started(Lorg/openjdk/source/util/TaskEvent;)V

    const/4 v2, 0x1

    .line 8
    iput-boolean v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->keepComments:Z

    .line 9
    iput-boolean v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->genEndPos:Z

    .line 10
    :cond_1
    iget-object v3, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->parserFactory:Lorg/openjdk/tools/javac/parser/ParserFactory;

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->keepComments()Z

    move-result v5

    iget-boolean v6, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->genEndPos:Z

    iget-boolean v7, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->lineDebugInfo:Z

    const-string v2, "module-info"

    sget-object v4, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->SOURCE:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    .line 11
    invoke-interface {p1, v2, v4}, Lorg/openjdk/javax/tools/JavaFileObject;->isNameCompatible(Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Z

    move-result v8

    move-object v4, p2

    .line 12
    invoke-virtual/range {v3 .. v8}, Lorg/openjdk/tools/javac/parser/ParserFactory;->newParser(Ljava/lang/CharSequence;ZZZZ)Lorg/openjdk/tools/javac/parser/JavacParser;

    move-result-object v2

    .line 13
    invoke-interface {v2}, Lorg/openjdk/tools/javac/parser/Parser;->parseCompilationUnit()Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    move-result-object v2

    .line 14
    iget-boolean v3, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->verbose:Z

    if-eqz v3, :cond_2

    .line 15
    iget-object v3, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {v0, v1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->elapsed(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "parsing.done"

    invoke-virtual {v3, v1, v0}, Lorg/openjdk/tools/javac/util/Log;->printVerbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    :cond_2
    iput-object p1, v2, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    if-eqz p2, :cond_3

    .line 17
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->taskListener:Lorg/openjdk/tools/javac/api/MultiTaskListener;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 18
    new-instance p1, Lorg/openjdk/source/util/TaskEvent;

    sget-object p2, Lorg/openjdk/source/util/TaskEvent$Kind;->PARSE:Lorg/openjdk/source/util/TaskEvent$Kind;

    invoke-direct {p1, p2, v2}, Lorg/openjdk/source/util/TaskEvent;-><init>(Lorg/openjdk/source/util/TaskEvent$Kind;Lorg/openjdk/source/tree/CompilationUnitTree;)V

    .line 19
    iget-object p2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->taskListener:Lorg/openjdk/tools/javac/api/MultiTaskListener;

    invoke-virtual {p2, p1}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->finished(Lorg/openjdk/source/util/TaskEvent;)V

    :cond_3
    return-object v2
.end method

.method public parseFiles(Ljava/lang/Iterable;)Lorg/openjdk/tools/javac/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lorg/openjdk/javax/tools/JavaFileObject;",
            ">;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;->PARSE:Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->shouldStop(Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/javax/tools/JavaFileObject;

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v2}, Lorg/openjdk/tools/javac/main/JavaCompiler;->parse(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/ListBuffer;->append(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/ListBuffer;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lorg/openjdk/tools/javac/util/ListBuffer;->toList()Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    return-object p1
.end method

.method public printCount(Ljava/lang/String;I)V
    .locals 2

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    const-string v1, "count."

    if-ne p2, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".plural"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v1, Lorg/openjdk/tools/javac/util/Log$WriterKind;->ERROR:Lorg/openjdk/tools/javac/util/Log$WriterKind;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lorg/openjdk/tools/javac/util/Log;->printLines(Lorg/openjdk/tools/javac/util/Log$WriterKind;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p1, v1}, Lorg/openjdk/tools/javac/util/Log;->flush(Lorg/openjdk/tools/javac/util/Log$WriterKind;)V

    :cond_1
    return-void
.end method

.method public printNote(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    sget-object v1, Lorg/openjdk/tools/javac/util/Log$WriterKind;->NOTICE:Lorg/openjdk/tools/javac/util/Log$WriterKind;

    invoke-virtual {v0, v1, p1}, Lorg/openjdk/tools/javac/util/Log;->printRawLines(Lorg/openjdk/tools/javac/util/Log$WriterKind;Ljava/lang/String;)V

    return-void
.end method

.method public printSource(Lorg/openjdk/tools/javac/comp/Env;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)Lorg/openjdk/javax/tools/JavaFileObject;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/comp/Env<",
            "Lorg/openjdk/tools/javac/comp/AttrContext;",
            ">;",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;",
            ")",
            "Lorg/openjdk/javax/tools/JavaFileObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->fileManager:Lorg/openjdk/javax/tools/JavaFileManager;

    sget-object v1, Lorg/openjdk/javax/tools/StandardLocation;->CLASS_OUTPUT:Lorg/openjdk/javax/tools/StandardLocation;

    iget-object v2, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->sym:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    iget-object v2, v2, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->flatname:Lorg/openjdk/tools/javac/util/Name;

    invoke-virtual {v2}, Lorg/openjdk/tools/javac/util/Name;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->SOURCE:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/openjdk/javax/tools/JavaFileManager;->getJavaFileForOutput(Lorg/openjdk/javax/tools/JavaFileManager$Location;Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;Lorg/openjdk/javax/tools/FileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->inputFiles:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/tree/JCTree;->pos()Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;

    move-result-object p2

    const-string v1, "source.cant.overwrite.input.file"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p2, v1, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$DiagnosticPosition;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v4

    :cond_0
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-interface {v0}, Lorg/openjdk/javax/tools/FileObject;->openWriter()Ljava/io/Writer;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    :try_start_0
    new-instance v2, Lorg/openjdk/tools/javac/tree/Pretty;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lorg/openjdk/tools/javac/tree/Pretty;-><init>(Ljava/io/Writer;Z)V

    iget-object p1, p1, Lorg/openjdk/tools/javac/comp/Env;->toplevel:Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    invoke-virtual {v2, p1, p2}, Lorg/openjdk/tools/javac/tree/Pretty;->printUnit(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)V

    iget-boolean p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->verbose:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string p2, "wrote.file"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Lorg/openjdk/tools/javac/util/Log;->printVerbose(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    return-object v0

    :goto_1
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p2
.end method

.method public processAnnotations(Lorg/openjdk/tools/javac/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->processAnnotations(Lorg/openjdk/tools/javac/util/List;Ljava/util/Collection;)V

    return-void
.end method

.method public processAnnotations(Lorg/openjdk/tools/javac/util/List;Ljava/util/Collection;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;->PROCESS:Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->shouldStop(Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->unrecoverableError()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->deferredDiagnosticHandler:Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;->reportDeferredDiagnostics()V

    .line 5
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object p2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->deferredDiagnosticHandler:Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/util/Log;->popDiagnosticHandler(Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;)V

    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->processAnnotations:Z

    const-string v1, "proc.no.explicit.annotation.processing.requested"

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 7
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->options:Lorg/openjdk/tools/javac/util/Options;

    sget-object v0, Lorg/openjdk/tools/javac/main/Option;->PROC:Lorg/openjdk/tools/javac/main/Option;

    const-string v3, "only"

    invoke-virtual {p1, v0, v3}, Lorg/openjdk/tools/javac/util/Options;->isSet(Lorg/openjdk/tools/javac/main/Option;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string v0, "proc.proc-only.requested.no.procs"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->todo:Lorg/openjdk/tools/javac/comp/Todo;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->clear()V

    .line 10
    :cond_1
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 11
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    :cond_2
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->deferredDiagnosticHandler:Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/Assert;->checkNull(Ljava/lang/Object;)V

    return-void

    .line 13
    :cond_3
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->deferredDiagnosticHandler:Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/Assert;->checkNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :try_start_0
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    .line 15
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    .line 16
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e

    .line 17
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->explicitAnnotationProcessingRequested()Z

    move-result v4

    if-nez v4, :cond_4

    .line 18
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->deferredDiagnosticHandler:Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;->reportDeferredDiagnostics()V

    .line 20
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object p2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->deferredDiagnosticHandler:Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/util/Log;->popDiagnosticHandler(Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;)V

    return-void

    :catch_0
    move-exception p1

    goto/16 :goto_4

    .line 21
    :cond_4
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v1, v2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 22
    invoke-virtual {p0, v4}, Lorg/openjdk/tools/javac/main/JavaCompiler;->resolveBinaryNameOrIdent(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_c

    .line 23
    iget-object v7, v5, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    sget-object v8, Lorg/openjdk/tools/javac/code/Kinds$Kind;->PCK:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v7, v8, :cond_5

    iget-boolean v9, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->processPcks:Z

    if-eqz v9, :cond_c

    :cond_5
    sget-object v9, Lorg/openjdk/tools/javac/code/Kinds$Kind;->ABSENT_TYP:Lorg/openjdk/tools/javac/code/Kinds$Kind;
    :try_end_0
    .catch Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v7, v9, :cond_6

    goto :goto_3

    :cond_6
    if-ne v7, v8, :cond_7

    .line 24
    :try_start_1
    invoke-virtual {v5}, Lorg/openjdk/tools/javac/code/Symbol;->complete()V

    .line 25
    :cond_7
    invoke-virtual {v5}, Lorg/openjdk/tools/javac/code/Symbol;->exists()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 26
    iget-object v7, v5, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v7, v8, :cond_8

    .line 27
    check-cast v5, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    invoke-virtual {v3, v5}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    goto :goto_0

    .line 28
    :cond_8
    check-cast v5, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    invoke-virtual {v0, v5}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    goto :goto_0

    .line 29
    :cond_9
    iget-object v7, v5, Lorg/openjdk/tools/javac/code/Symbol;->kind:Lorg/openjdk/tools/javac/code/Kinds$Kind;

    if-ne v7, v8, :cond_a

    move v7, v6

    goto :goto_1

    :cond_a
    move v7, v2

    :goto_1
    invoke-static {v7}, Lorg/openjdk/tools/javac/util/Assert;->check(Z)V

    .line 30
    iget-object v7, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {v4}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Warnings;->ProcPackageDoesNotExist(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Lorg/openjdk/tools/javac/util/JCDiagnostic$Warning;)V

    .line 31
    check-cast v5, Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    invoke-virtual {v3, v5}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3
    :try_end_1
    .catch Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 32
    :catch_1
    :try_start_2
    iget-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {v4}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->ProcCantFindClass(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    :cond_b
    :goto_2
    move v1, v6

    goto :goto_0

    .line 33
    :cond_c
    :goto_3
    iget-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->silentFail:Lorg/openjdk/tools/javac/code/Symbol;

    if-eq v5, v1, :cond_b

    .line 34
    iget-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {v4}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->ProcCantFindClass(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    goto :goto_2

    :cond_d
    if-eqz v1, :cond_e

    .line 35
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->deferredDiagnosticHandler:Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;->reportDeferredDiagnostics()V

    .line 36
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object p2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->deferredDiagnosticHandler:Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/util/Log;->popDiagnosticHandler(Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;)V
    :try_end_2
    .catch Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    .line 37
    :cond_e
    :try_start_3
    iget-object p2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->procEnvImpl:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    iget-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->deferredDiagnosticHandler:Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;

    .line 38
    invoke-virtual {p2, p1, v0, v3, v1}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->doProcessing(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/util/List;Ljava/lang/Iterable;Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->annotationProcessingOccurred:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 39
    :try_start_4
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->procEnvImpl:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->close()V

    goto :goto_5

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->procEnvImpl:Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;

    invoke-virtual {p2}, Lorg/openjdk/tools/javac/processing/JavacProcessingEnvironment;->close()V

    .line 40
    throw p1
    :try_end_4
    .catch Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure; {:try_start_4 .. :try_end_4} :catch_0

    .line 41
    :goto_4
    iget-object p2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object v0, p1, Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;->sym:Lorg/openjdk/tools/javac/code/Symbol;

    invoke-virtual {p1}, Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;->getDetailValue()Ljava/lang/Object;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "cant.access"

    invoke-virtual {p2, v0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->deferredDiagnosticHandler:Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;

    if-eqz p1, :cond_f

    .line 43
    invoke-virtual {p1}, Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;->reportDeferredDiagnostics()V

    .line 44
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-object p2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->deferredDiagnosticHandler:Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;

    invoke-virtual {p1, p2}, Lorg/openjdk/tools/javac/util/Log;->popDiagnosticHandler(Lorg/openjdk/tools/javac/util/Log$DiagnosticHandler;)V

    :cond_f
    :goto_5
    return-void
.end method

.method public readSource(Lorg/openjdk/javax/tools/JavaFileObject;)Ljava/lang/CharSequence;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->inputFiles:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/openjdk/javax/tools/FileObject;->getCharContent(Z)Ljava/lang/CharSequence;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {v0}, Lorg/openjdk/tools/javac/file/JavacFileManager;->getMessage(Ljava/io/IOException;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "error.reading.file"

    invoke-virtual {v1, v0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public readSourceFile(Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->completionFailureName:Lorg/openjdk/tools/javac/util/Name;

    iget-object v1, p2, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->fullname:Lorg/openjdk/tools/javac/util/Name;

    if-eq v0, v1, :cond_9

    .line 3
    iget-object v0, p2, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->classfile:Lorg/openjdk/javax/tools/JavaFileObject;

    .line 4
    iget-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v1, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 5
    :try_start_0
    invoke-interface {v0, v2}, Lorg/openjdk/javax/tools/FileObject;->getCharContent(Z)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->parse(Lorg/openjdk/javax/tools/JavaFileObject;Ljava/lang/CharSequence;)Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :goto_0
    iget-object v3, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {v3, v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 7
    :try_start_1
    iget-object v3, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string v4, "error.reading.file"

    invoke-static {p1}, Lorg/openjdk/tools/javac/file/JavacFileManager;->getMessage(Ljava/io/IOException;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, v4, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TopLevel(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 9
    :goto_1
    iget-object p2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2, v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    .line 10
    throw p1

    .line 11
    :cond_0
    :goto_2
    iget-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->taskListener:Lorg/openjdk/tools/javac/api/MultiTaskListener;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 12
    new-instance v1, Lorg/openjdk/source/util/TaskEvent;

    sget-object v3, Lorg/openjdk/source/util/TaskEvent$Kind;->ENTER:Lorg/openjdk/source/util/TaskEvent$Kind;

    invoke-direct {v1, v3, p1}, Lorg/openjdk/source/util/TaskEvent;-><init>(Lorg/openjdk/source/util/TaskEvent$Kind;Lorg/openjdk/source/tree/CompilationUnitTree;)V

    .line 13
    iget-object v3, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->taskListener:Lorg/openjdk/tools/javac/api/MultiTaskListener;

    invoke-virtual {v3, v1}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->started(Lorg/openjdk/source/util/TaskEvent;)V

    .line 14
    :cond_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->modules:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v1, v3, p2}, Lorg/openjdk/tools/javac/comp/Modules;->enter(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 15
    iget-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->enter:Lorg/openjdk/tools/javac/comp/Enter;

    invoke-static {p1}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v3

    invoke-virtual {v1, v3, p2}, Lorg/openjdk/tools/javac/comp/Enter;->complete(Lorg/openjdk/tools/javac/util/List;Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;)V

    .line 16
    iget-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->taskListener:Lorg/openjdk/tools/javac/api/MultiTaskListener;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 17
    new-instance v1, Lorg/openjdk/source/util/TaskEvent;

    sget-object v3, Lorg/openjdk/source/util/TaskEvent$Kind;->ENTER:Lorg/openjdk/source/util/TaskEvent$Kind;

    invoke-direct {v1, v3, p1}, Lorg/openjdk/source/util/TaskEvent;-><init>(Lorg/openjdk/source/util/TaskEvent$Kind;Lorg/openjdk/source/tree/CompilationUnitTree;)V

    .line 18
    iget-object v3, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->taskListener:Lorg/openjdk/tools/javac/api/MultiTaskListener;

    invoke-virtual {v3, v1}, Lorg/openjdk/tools/javac/api/MultiTaskListener;->finished(Lorg/openjdk/source/util/TaskEvent;)V

    .line 19
    :cond_2
    iget-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->enter:Lorg/openjdk/tools/javac/comp/Enter;

    invoke-virtual {v1, p2}, Lorg/openjdk/tools/javac/comp/Enter;->getEnv(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object v1

    if-nez v1, :cond_7

    .line 20
    iget-object v1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    sget-object v3, Lorg/openjdk/javax/tools/JavaFileObject$Kind;->SOURCE:Lorg/openjdk/javax/tools/JavaFileObject$Kind;

    .line 21
    const-string v4, "package-info"

    invoke-interface {v1, v4, v3}, Lorg/openjdk/javax/tools/JavaFileObject;->isNameCompatible(Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Z

    move-result v1

    .line 22
    iget-object v4, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->sourcefile:Lorg/openjdk/javax/tools/JavaFileObject;

    const-string v5, "module-info"

    .line 23
    invoke-interface {v4, v5, v3}, Lorg/openjdk/javax/tools/JavaFileObject;->isNameCompatible(Ljava/lang/String;Lorg/openjdk/javax/tools/JavaFileObject$Kind;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 24
    iget-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->enter:Lorg/openjdk/tools/javac/comp/Enter;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/comp/Enter;->getEnv(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_3

    .line 25
    :cond_3
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->diagFactory:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    const-string v1, "file.does.not.contain.module"

    new-array v2, v2, [Ljava/lang/Object;

    .line 26
    invoke-virtual {p1, v1, v2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    .line 27
    new-instance v1, Lorg/openjdk/tools/javac/code/ClassFinder$BadClassFile;

    iget-object v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->diagFactory:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-direct {v1, p2, v0, p1, v2}, Lorg/openjdk/tools/javac/code/ClassFinder$BadClassFile;-><init>(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/tools/javac/util/JCDiagnostic;Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;)V

    throw v1

    :cond_4
    if-eqz v1, :cond_6

    .line 28
    iget-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->enter:Lorg/openjdk/tools/javac/comp/Enter;

    iget-object p1, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/comp/Enter;->getEnv(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;)Lorg/openjdk/tools/javac/comp/Env;

    move-result-object p1

    if-eqz p1, :cond_5

    goto :goto_3

    .line 29
    :cond_5
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->diagFactory:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    .line 30
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol;->location()Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 31
    const-string v2, "file.does.not.contain.package"

    invoke-virtual {p1, v2, v1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    .line 32
    new-instance v1, Lorg/openjdk/tools/javac/code/ClassFinder$BadClassFile;

    iget-object v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->diagFactory:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-direct {v1, p2, v0, p1, v2}, Lorg/openjdk/tools/javac/code/ClassFinder$BadClassFile;-><init>(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/tools/javac/util/JCDiagnostic;Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;)V

    throw v1

    .line 33
    :cond_6
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->diagFactory:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    .line 34
    invoke-virtual {p2}, Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;->getQualifiedName()Lorg/openjdk/tools/javac/util/Name;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 35
    const-string v2, "file.doesnt.contain.class"

    invoke-virtual {p1, v2, v1}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object p1

    .line 36
    new-instance v1, Lorg/openjdk/tools/javac/code/ClassFinder$BadClassFile;

    iget-object v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->diagFactory:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    invoke-direct {v1, p2, v0, p1, v2}, Lorg/openjdk/tools/javac/code/ClassFinder$BadClassFile;-><init>(Lorg/openjdk/tools/javac/code/Symbol$TypeSymbol;Lorg/openjdk/javax/tools/JavaFileObject;Lorg/openjdk/tools/javac/util/JCDiagnostic;Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;)V

    throw v1

    :cond_7
    :goto_3
    const/4 p1, 0x1

    .line 37
    iput-boolean p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->implicitSourceFilesRead:Z

    return-void

    .line 38
    :cond_8
    new-instance p1, Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->diags:Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;

    const-string v1, "cant.resolve.modules"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lorg/openjdk/tools/javac/util/JCDiagnostic$Factory;->fragment(Ljava/lang/String;[Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/JCDiagnostic;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;-><init>(Lorg/openjdk/tools/javac/code/Symbol;Lorg/openjdk/tools/javac/util/JCDiagnostic;)V

    throw p1

    .line 39
    :cond_9
    new-instance p1, Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;

    const-string v0, "user-selected completion failure by class name"

    invoke-direct {p1, p2, v0}, Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure;-><init>(Lorg/openjdk/tools/javac/code/Symbol;Ljava/lang/String;)V

    throw p1
.end method

.method public removeMethodBodies(Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;)Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;
    .locals 4

    iget-object v0, p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;->mods:Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;

    iget-wide v0, v0, Lorg/openjdk/tools/javac/tree/JCTree$JCModifiers;->flags:J

    const-wide/16 v2, 0x200

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Lorg/openjdk/tools/javac/main/JavaCompiler$1MethodBodyRemover;

    invoke-direct {v1, p0, v0}, Lorg/openjdk/tools/javac/main/JavaCompiler$1MethodBodyRemover;-><init>(Lorg/openjdk/tools/javac/main/JavaCompiler;Z)V

    invoke-virtual {v1, p1}, Lorg/openjdk/tools/javac/tree/TreeTranslator;->translate(Lorg/openjdk/tools/javac/tree/JCTree;)Lorg/openjdk/tools/javac/tree/JCTree;

    move-result-object p1

    check-cast p1, Lorg/openjdk/tools/javac/tree/JCTree$JCClassDecl;

    return-object p1
.end method

.method public reportDeferredDiagnostics()V
    .locals 4

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->errorCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->annotationProcessingOccurred:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->implicitSourceFilesRead:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->implicitSourcePolicy:Lorg/openjdk/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

    sget-object v2, Lorg/openjdk/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;->UNSET:Lorg/openjdk/tools/javac/main/JavaCompiler$ImplicitSourcePolicy;

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->explicitAnnotationProcessingRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string v2, "proc.use.implicit"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    const-string v2, "proc.use.proc.or.implicit"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/openjdk/tools/javac/util/AbstractLog;->warning(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->chk:Lorg/openjdk/tools/javac/comp/Check;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/Check;->reportDeferredDiagnostics()V

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    iget-boolean v2, v0, Lorg/openjdk/tools/javac/util/Log;->compressedOutput:Z

    if-eqz v2, :cond_2

    const-string v2, "compressed.diags"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2, v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->mandatoryNote(Lorg/openjdk/javax/tools/JavaFileObject;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public resolveBinaryNameOrIdent(Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 3

    const/16 v0, 0x2f

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->modules:Lorg/openjdk/tools/javac/comp/Modules;

    invoke-virtual {v0}, Lorg/openjdk/tools/javac/comp/Modules;->getDefaultModule()Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->source:Lorg/openjdk/tools/javac/code/Source;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/code/Source;->allowModules()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->names:Lorg/openjdk/tools/javac/util/Names;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->moduleFinder:Lorg/openjdk/tools/javac/code/ModuleFinder;

    invoke-virtual {v2, v1}, Lorg/openjdk/tools/javac/code/ModuleFinder;->findModule(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    move-object v0, v1

    .line 7
    :goto_0
    invoke-virtual {p0, v0, p1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->resolveBinaryNameOrIdent(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    return-object p1

    .line 8
    :cond_1
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-static {p1}, Lorg/openjdk/tools/javac/resources/CompilerProperties$Errors;->InvalidModuleSpecifier(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/AbstractLog;->error(Lorg/openjdk/tools/javac/util/JCDiagnostic$Error;)V

    .line 9
    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->silentFail:Lorg/openjdk/tools/javac/code/Symbol;

    return-object p1
.end method

.method public resolveBinaryNameOrIdent(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 3

    .line 10
    :try_start_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->names:Lorg/openjdk/tools/javac/util/Names;

    const-string v1, "/"

    const-string v2, "."

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v0

    .line 11
    iget-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->finder:Lorg/openjdk/tools/javac/code/ClassFinder;

    invoke-virtual {v1, p1, v0}, Lorg/openjdk/tools/javac/code/ClassFinder;->loadClass(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    move-result-object p1
    :try_end_0
    .catch Lorg/openjdk/tools/javac/code/Symbol$CompletionFailure; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 12
    :catch_0
    invoke-virtual {p0, p1, p2}, Lorg/openjdk/tools/javac/main/JavaCompiler;->resolveIdent(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1

    return-object p1
.end method

.method public resolveIdent(Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;Ljava/lang/String;)Lorg/openjdk/tools/javac/code/Symbol;
    .locals 7

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->errSymbol:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;

    return-object p1

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    move-result-object v0

    :try_start_0
    const-string v2, "\\."

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p2

    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, p2, v3

    invoke-static {v4}, Lorg/openjdk/javax/lang/model/SourceVersion;->isIdentifier(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->syms:Lorg/openjdk/tools/javac/code/Symtab;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symtab;->errSymbol:Lorg/openjdk/tools/javac/code/Symbol$ClassSymbol;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    if-nez v1, :cond_2

    :try_start_1
    iget-object v1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v5, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-virtual {v5, v4}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Ident(Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCIdent;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    iget-object v6, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->names:Lorg/openjdk/tools/javac/util/Names;

    invoke-virtual {v6, v4}, Lorg/openjdk/tools/javac/util/Names;->fromString(Ljava/lang/String;)Lorg/openjdk/tools/javac/util/Name;

    move-result-object v4

    invoke-virtual {v5, v1, v4}, Lorg/openjdk/tools/javac/tree/TreeMaker;->Select(Lorg/openjdk/tools/javac/tree/JCTree$JCExpression;Lorg/openjdk/tools/javac/util/Name;)Lorg/openjdk/tools/javac/tree/JCTree$JCFieldAccess;

    move-result-object v1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->make:Lorg/openjdk/tools/javac/tree/TreeMaker;

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/openjdk/tools/javac/tree/TreeMaker;->TopLevel(Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;

    move-result-object p2

    iput-object p1, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->modle:Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;

    iget-object p1, p1, Lorg/openjdk/tools/javac/code/Symbol$ModuleSymbol;->unnamedPackage:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    iput-object p1, p2, Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;->packge:Lorg/openjdk/tools/javac/code/Symbol$PackageSymbol;

    iget-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->attr:Lorg/openjdk/tools/javac/comp/Attr;

    invoke-virtual {p1, v1, p2}, Lorg/openjdk/tools/javac/comp/Attr;->attribIdent(Lorg/openjdk/tools/javac/tree/JCTree;Lorg/openjdk/tools/javac/tree/JCTree$JCCompilationUnit;)Lorg/openjdk/tools/javac/code/Symbol;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    return-object p1

    :goto_2
    iget-object p2, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    invoke-virtual {p2, v0}, Lorg/openjdk/tools/javac/util/AbstractLog;->useSource(Lorg/openjdk/javax/tools/JavaFileObject;)Lorg/openjdk/javax/tools/JavaFileObject;

    throw p1
.end method

.method public setDeferredDiagnosticHandler(Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->deferredDiagnosticHandler:Lorg/openjdk/tools/javac/util/Log$DeferredDiagnosticHandler;

    return-void
.end method

.method public shouldStop(Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->errorCount()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-direct {p0}, Lorg/openjdk/tools/javac/main/JavaCompiler;->unrecoverableError()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->shouldStopPolicyIfNoError:Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->shouldStopPolicyIfError:Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;

    :goto_1
    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;->isAfter(Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;)Z

    move-result p1

    return p1
.end method

.method public final stopIfError(Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;Ljava/util/Queue;)Ljava/util/Queue;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;",
            "Ljava/util/Queue<",
            "TT;>;)",
            "Ljava/util/Queue<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->shouldStop(Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p2, Lorg/openjdk/tools/javac/util/ListBuffer;

    invoke-direct {p2}, Lorg/openjdk/tools/javac/util/ListBuffer;-><init>()V

    :cond_0
    return-object p2
.end method

.method public final stopIfError(Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;Lorg/openjdk/tools/javac/util/List;)Lorg/openjdk/tools/javac/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;",
            "Lorg/openjdk/tools/javac/util/List<",
            "TT;>;)",
            "Lorg/openjdk/tools/javac/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/main/JavaCompiler;->shouldStop(Lorg/openjdk/tools/javac/comp/CompileStates$CompileState;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public warningCount()I
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/main/JavaCompiler;->log:Lorg/openjdk/tools/javac/util/Log;

    iget v0, v0, Lorg/openjdk/tools/javac/util/Log;->nwarnings:I

    return v0
.end method
